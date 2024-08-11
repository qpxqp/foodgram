import base64

from django.core.files.base import ContentFile

from djoser.serializers import (
    UserCreateSerializer as BaseUserCreateSerializer,
    UserSerializer as BaseUserSerializer,
)
from rest_framework import serializers
from rest_framework.exceptions import ValidationError
from rest_framework.validators import UniqueTogetherValidator
# from rest_framework.relations import SlugRelatedField

from recipies.config import Config
from recipies.models import (
    Ingredient, Recipe, RecipeIngredient, Subscription, Tag, User,
)


class Base64ImageField(serializers.ImageField):

    def to_internal_value(self, data):
        if isinstance(data, str) and data.startswith('data:image'):
            format, imgstr = data.split(';base64,')
            ext = format.split('/')[-1]
            data = ContentFile(base64.b64decode(imgstr), name='temp.' + ext)
        return super().to_internal_value(data)


class IsSubscribedMixin(serializers.Serializer):

    is_subscribed = serializers.SerializerMethodField()

    def get_is_subscribed(self, author):
        user = self.context['request'].user if self.context.get('request') else None
        # print(user, author)
        if user and not user.is_authenticated:
            return False
        return bool(Subscription.objects.filter(
            subscriber=user,
            author=author
        ).exists())


class UserCreateSerializer(BaseUserCreateSerializer):

    class Meta(BaseUserCreateSerializer.Meta):
        fields = (
            'email', 'id', 'username', 'first_name', 'last_name', 'password',
        )


class UserSerializer(IsSubscribedMixin, BaseUserSerializer):

    avatar = Base64ImageField(required=False, allow_null=True)

    class Meta(BaseUserSerializer.Meta):
        fields = (
            'email', 'id', 'username', 'first_name', 'last_name',
            'is_subscribed', 'avatar',
        )


class UserAvatarSerializer(serializers.ModelSerializer):

    avatar = Base64ImageField(required=True)

    class Meta:
        model = User
        fields = ('avatar',)


class RecipeSmallSerializer(serializers.ModelSerializer):
    """Упрощенный вывод рецепта."""

    class Meta:
        model = Recipe
        fields = ('id', 'name', 'image', 'cooking_time')
        read_only_fields = fields


class UserRecipesSerializer(UserSerializer):
    """Пользователь и его рецепты в упрощенном виде."""

    recipes = RecipeSmallSerializer(many=True)
    recipes_count = serializers.SerializerMethodField()

    class Meta:
        model = User
        fields = (
            'email', 'id', 'username', 'first_name', 'last_name',
            'is_subscribed', 'recipes', 'recipes_count', 'avatar',
        )
        read_only_fields = fields

    def get_recipes_count(self, author):
        return Recipe.objects.filter(author=author).count()


class SubscriptionsSerializer(UserRecipesSerializer):
    """Подписки пользователя."""

    class Meta:
        model = User
        fields = (
            'email', 'id', 'username', 'first_name', 'last_name',
            'is_subscribed', 'recipes', 'recipes_count', 'avatar',
        )


class SubscribeSerializer(serializers.ModelSerializer):
    """Подписаться на пользователя."""

    subscriber = serializers.SlugRelatedField(
        slug_field='username',
        read_only=True,
        default=serializers.CurrentUserDefault(),
    )
    author = serializers.SlugRelatedField(
        slug_field='username',
        queryset=User.objects.all()
    )

    class Meta:
        model = Subscription
        fields = ('subscriber', 'author')
        validators = (
            UniqueTogetherValidator(
                queryset=model.objects.all(),
                fields=('subscriber', 'author'),
                message='Вы уже подписаны на автора.',
            ),
        )

    def validate_author(self, author):
        if self.context['request'].user == author:
            raise serializers.ValidationError(Config.SUBSCRIPTION_ERROR)
        return author

    def to_representation(self, instance):
        return UserRecipesSerializer(instance.author, context={
            'request': self.context['request'],
            'subscriber': instance.subscriber,
        }).data


class TagSerializer(serializers.ModelSerializer):

    class Meta:
        model = Tag
        fields = ('id', 'name', 'slug')


class IngredientSerializer(serializers.ModelSerializer):

    class Meta:
        model = Ingredient
        fields = ('id', 'name', 'measurement_unit')


# News.objects.bulk_create(
#     News(title=NEWS_TITLE + f'{index}',
#          text=NEWS_TEXT,
#          date=datetime.today() - timedelta(days=index))
#     for index in range(settings.NEWS_COUNT_ON_HOME_PAGE + 1)
# )


class AddIngredientToRecipeSerializer(serializers.ModelSerializer):
    """Добавление ингредиента в рецепт."""

    id = serializers.PrimaryKeyRelatedField(
        queryset=Ingredient.objects.all(),
    )
    amount = serializers.IntegerField(
        min_value=Config.INGREDIENT_MIN_AMOUNT,
    )

    class Meta:
        model = RecipeIngredient
        fields = ('id', 'amount')


class RecipeIngredientSerializer(serializers.ModelSerializer):
    """Ингредиент с количеством для рецепта."""

    id = serializers.ReadOnlyField(
        source='ingredient.id',
    )
    name = serializers.ReadOnlyField(
        source='ingredient.name',
    )
    measurement_unit = serializers.ReadOnlyField(
        source='ingredient.measurement_unit',
    )

    class Meta:
        model = RecipeIngredient
        fields = ('id', 'name', 'measurement_unit', 'amount')
        read_only_fields = fields


class RecipeGetSerializer(serializers.ModelSerializer):
    """Вернуть рецепт в таком виде."""

    ingredients = RecipeIngredientSerializer(
        many=True,
        source='recipeingredients',
        read_only=True,
    )
    tags = TagSerializer(many=True)
    author = UserSerializer()
    image = Base64ImageField()

    class Meta:
        model = Recipe
        fields = (
            'id', 'tags', 'author', 'ingredients',
            # 'is_favorited', 'is_in_shopping_cart',
            'name', 'image', 'text', 'cooking_time'
        )
        read_only_fields = fields


class RecipeSerializer(serializers.ModelSerializer):

    ingredients = AddIngredientToRecipeSerializer(
        many=True,
    )
    tags = serializers.PrimaryKeyRelatedField(
        queryset=Tag.objects.all(),
        many=True,
    )
    author = UserSerializer(
        read_only=True,
        default=serializers.CurrentUserDefault(),
    )
    image = Base64ImageField()

    class Meta:
        model = Recipe
        fields = (
            'ingredients', 'tags', 'author',
            # 'is_favorited',
            # 'is_in_shopping_cart',
            'name', 'image', 'text', 'cooking_time',
        )
        read_only_fields = ('author',)

    def to_representation(self, recipe):
        return RecipeGetSerializer(recipe).data

    def recipe_tags_and_ingredients_update_or_create(
        self, validated_data, recipe=None
    ) -> Recipe:
        tags = validated_data.pop('tags')
        ingredients = validated_data.pop('ingredients')
        if recipe:
            recipe.tags.clear()
            recipe.ingredients.clear()
        else:
            recipe = Recipe.objects.create(**validated_data)
        recipe.tags.set(tags)
        [RecipeIngredient.objects.update_or_create(
            recipe=recipe,
            ingredient=ingredient['id'],
            amount=ingredient['amount']
        ) for ingredient in ingredients]
        return recipe

    def create(self, validated_data):
        recipe = self.recipe_tags_and_ingredients_update_or_create(
            validated_data=validated_data,
        )
        return recipe

    def update(self, instance, validated_data):
        recipe = self.recipe_tags_and_ingredients_update_or_create(
            validated_data=validated_data,
            recipe=instance,
        )
        return super().update(recipe, validated_data)

    def value_validator(self, name: str, value: list) -> None:
        """Проверяет список на наличие значений и их уникальность."""
        if not value:
            raise ValidationError(Config.FIELD_EMPTY_ERROR.format(name))
        if len(value) != len(set(value)):
            raise ValidationError(Config.FIELDS_UNIQUE_ERROR.format(name))

    def validate_tags(self, tags):
        self.value_validator('tags', tags)
        return tags

    def validate_ingredients(self, ingredients):
        self.value_validator('ingredients',
                             [ingredient['id'] for ingredient in ingredients])
        return ingredients


class ShortLinkRecipeSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Recipe
        extra_kwargs = {
            'short-link': {'view_name': 'shortlink'},
        }
        fields = ('short-link',)
        read_only_fields = fields
