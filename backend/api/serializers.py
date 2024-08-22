from django.db.transaction import atomic
from djoser.serializers import UserCreateSerializer as BaseUserCreateSerializer
from djoser.serializers import UserSerializer as BaseUserSerializer
from drf_extra_fields.fields import Base64ImageField
from rest_framework import serializers
from rest_framework.exceptions import ValidationError
from rest_framework.validators import UniqueTogetherValidator

from recipies.config import Config
from recipies.models import (Favorite, Ingredient, Recipe, RecipeIngredient,
                             ShoppingCart, Subscription, Tag, User)


class IsSubscribedMixin(serializers.Serializer):

    is_subscribed = serializers.SerializerMethodField()

    def get_is_subscribed(self, author):
        user = self.context['request'].user
        return (
            user.is_authenticated
            and user.follower.filter(author=author).exists()
        )


class UserCreateSerializer(BaseUserCreateSerializer):

    class Meta(BaseUserCreateSerializer.Meta):
        fields = (
            'email', 'id', 'username', 'first_name', 'last_name', 'password',
        )
        extra_kwargs = {
            'first_name': {'required': True},
            'last_name': {'required': True},
        }


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

    recipes = serializers.SerializerMethodField()
    recipes_count = serializers.ReadOnlyField(source='recipes.count')

    class Meta:
        model = User
        fields = UserSerializer.Meta.fields + ('recipes', 'recipes_count')
        read_only_fields = fields

    def get_recipes(self, author):
        """Возвращает все/частично рецепты пользователя."""
        recipes_limit = self.context['request'].GET.get('recipes_limit')
        queryset = author.recipes.all()
        if recipes_limit and recipes_limit.isdigit():
            queryset = queryset[:int(recipes_limit)]
        return RecipeSmallSerializer(
            queryset,
            many=True,
            context=self.context,
        ).data


class SubscriptionsSerializer(UserRecipesSerializer):
    """Подписки пользователя."""

    class Meta:
        model = User
        fields = UserRecipesSerializer.Meta.fields


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
                message=Config.ALREADY_SUBSCRIBED_ERROR,
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


class IsFavoritedIsInShoppingCartSerializer(serializers.Serializer):

    is_favorited = serializers.SerializerMethodField()
    is_in_shopping_cart = serializers.SerializerMethodField()

    def check_exists(self, user, recipe, model) -> bool:
        """Проверяет существование объекта."""
        return (
            user.is_authenticated
            and model.objects.filter(user=user, recipe=recipe,).exists()
        )

    def get_is_favorited(self, recipe):
        return self.check_exists(self.context['request'].user,
                                 recipe, Favorite)

    def get_is_in_shopping_cart(self, recipe):
        return self.check_exists(self.context['request'].user,
                                 recipe, ShoppingCart)


class RecipeGetSerializer(IsFavoritedIsInShoppingCartSerializer,
                          serializers.ModelSerializer):
    """Вернуть рецепт в таком виде."""

    ingredients = RecipeIngredientSerializer(
        many=True,
        source='recipe_ingredients',
        read_only=True,
    )
    tags = TagSerializer(many=True)
    author = UserSerializer()
    image = Base64ImageField()

    class Meta:
        model = Recipe
        fields = (
            'id', 'tags', 'author', 'ingredients',
            'is_favorited',
            'is_in_shopping_cart',
            'name', 'image', 'text', 'cooking_time'
        )
        read_only_fields = fields


class RecipeSerializer(IsFavoritedIsInShoppingCartSerializer,
                       serializers.ModelSerializer):

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
    image = Base64ImageField(required=True)
    cooking_time = serializers.IntegerField(
        min_value=Config.RECIPE_MIN_COOKING_TIME,
    )

    class Meta:
        model = Recipe
        fields = (
            'ingredients', 'tags', 'author',
            'is_favorited',
            'is_in_shopping_cart',
            'name', 'image', 'text', 'cooking_time',
        )
        read_only_fields = ('author',)

    def to_representation(self, recipe):
        return RecipeGetSerializer(recipe, context=self.context).data

    def recipe_tags_and_ingredients_update_or_create(
        self, recipe, tags, ingredients,
    ) -> Recipe:
        recipe.tags.set(tags)
        [RecipeIngredient.objects.update_or_create(
            recipe=recipe,
            ingredient=ingredient['id'],
            amount=ingredient['amount'],
        ) for ingredient in ingredients]
        return recipe

    @atomic
    def create(self, validated_data):
        tags = validated_data.pop('tags')
        ingredients = validated_data.pop('ingredients')
        recipe = Recipe.objects.create(**validated_data,
                                       author=self.context['request'].user)
        recipe = self.recipe_tags_and_ingredients_update_or_create(
            recipe=recipe,
            tags=tags,
            ingredients=ingredients,
        )
        return recipe

    @atomic
    def update(self, recipe, validated_data):
        tags = validated_data.pop('tags')
        ingredients = validated_data.pop('ingredients')
        recipe.tags.clear()
        recipe.ingredients.clear()
        recipe = self.recipe_tags_and_ingredients_update_or_create(
            recipe=recipe,
            tags=tags,
            ingredients=ingredients,
        )
        return super().update(recipe, validated_data)

    def value_validator(self, name: str, value: list) -> None:
        """Проверяет список на наличие значений и их уникальность."""
        if not value:
            raise ValidationError(Config.FIELD_EMPTY_ERROR.format(name))
        if len(value) != len(set(value)):
            raise ValidationError(Config.FIELDS_UNIQUE_ERROR.format(name))

    def validate(self, attrs):
        error_fields = [
            attr for attr in ('tags', 'ingredients', 'image')
            if not attrs.get(attr, None)
        ]
        if error_fields:
            raise ValidationError(
                Config.FIELD_EMPTY_ERROR.format(error_fields)
            )
        self.value_validator(
            'ingredients',
            [ingredient['id'] for ingredient in attrs['ingredients']]
        )
        return super().validate(attrs)

    def validate_tags(self, tags):
        self.value_validator('tags', tags)
        return tags


class ShortLinkRecipeSerializer(serializers.HyperlinkedModelSerializer):
    """Возвращает короткую ссылку на рецепт."""

    class Meta:
        model = Recipe
        extra_kwargs = {
            'short-link': {'view_name': 'shortlink'},
        }
        fields = ('short-link',)
        read_only_fields = fields


class FavoriteShoppingCartBaseSerializer(serializers.Serializer):

    user = serializers.SlugRelatedField(
        slug_field='username',
        read_only=True,
        default=serializers.CurrentUserDefault(),
    )
    recipe = serializers.PrimaryKeyRelatedField(
        queryset=Recipe.objects.all(),
    )

    class Meta:
        fields = ('user', 'recipe')

    def to_representation(self, instance):
        return RecipeSmallSerializer(
            instance.recipe, context=self.context
        ).data


class FavoriteSerializer(FavoriteShoppingCartBaseSerializer,
                         serializers.ModelSerializer):
    """Избранное."""

    class Meta(FavoriteShoppingCartBaseSerializer.Meta):
        model = Favorite
        validators = (
            UniqueTogetherValidator(
                queryset=model.objects.all(),
                fields=('user', 'recipe'),
                message=Config.FAVORITE_SHOPPINGCART_ERROR.format(
                    listname='избранное',
                ),
            ),
        )


class ShoppingCartSerializer(FavoriteShoppingCartBaseSerializer,
                             serializers.ModelSerializer):
    """Список покупок."""

    class Meta(FavoriteShoppingCartBaseSerializer.Meta):
        model = ShoppingCart
        validators = (
            UniqueTogetherValidator(
                queryset=model.objects.all(),
                fields=('user', 'recipe'),
                message=Config.FAVORITE_SHOPPINGCART_ERROR.format(
                    listname='список покупок',
                ),
            ),
        )
