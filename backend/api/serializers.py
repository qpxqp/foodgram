import base64

from django.core.files.base import ContentFile
from djoser.serializers import (
    UserCreateSerializer as BaseUserCreateSerializer,
    UserSerializer as BaseUserSerializer,
)
from rest_framework import serializers
from rest_framework.exceptions import ValidationError
from rest_framework.relations import SlugRelatedField

from recipies.config import Config
from recipies.models import Ingredient, Recipe, RecipeIngredient, Tag, User


class Base64ImageField(serializers.ImageField):

    def to_internal_value(self, data):
        if isinstance(data, str) and data.startswith('data:image'):
            format, imgstr = data.split(';base64,')
            ext = format.split('/')[-1]
            data = ContentFile(base64.b64decode(imgstr), name='temp.' + ext)
        return super().to_internal_value(data)


class UserCreateSerializer(BaseUserCreateSerializer):

    class Meta(BaseUserCreateSerializer.Meta):
        fields = (
            'email', 'id', 'username', 'first_name', 'last_name', 'password',
        )


class UserSerializer(BaseUserSerializer):

    avatar = Base64ImageField(required=False, allow_null=True)

    class Meta(BaseUserSerializer.Meta):
        fields = (
            'email', 'id', 'username', 'first_name', 'last_name',
            # 'is_subscriber',
            'avatar',
        )
        # extra_kwargs = {'password': {'write_only': True}}


# class UserSerializer(serializers.ModelSerializer):

#     avatar = Base64ImageField(required=False, allow_null=True)

#     class Meta:
#         model = User
#         fields = (
#             'email', 'id', 'username', 'first_name', 'last_name', 'avatar',
#             # 'is_subscribed',
#         )


class UserAvatarSerializer(serializers.ModelSerializer):

    avatar = Base64ImageField(required=True)

    class Meta:
        model = User
        fields = ('avatar',)

    def update(self, instance, validated_data):
        instance.avatar = validated_data.get('avatar', instance.avatar)
        instance.save()
        return instance


class TagSerializer(serializers.ModelSerializer):

    class Meta:
        model = Tag
        fields = ('id', 'name', 'slug')


class IngredientSerializer(serializers.ModelSerializer):

    # measurement_unit = serializers.SlugRelatedField(
    #     queryset=Measurement.objects.all(),
    #     slug_field='unit',
    # )
    # measurement_unit = MeasurementSerializer()

    class Meta:
        model = Ingredient
        fields = ('id', 'name', 'measurement_unit')
        # fields = ('id',)


class RecipeIngredientSerializer(serializers.ModelSerializer):

    # id = serializers.ReadOnlyField(
    id = serializers.PrimaryKeyRelatedField(
        queryset=Ingredient.objects.all(),
    )
    amount = serializers.IntegerField(
        min_value=Config.RECIPE_MIN_COOKING_TIME
    )

    class Meta:
        model = RecipeIngredient
        fields = ('id', 'amount')


class RecipeIngredientListSerializer(serializers.ModelSerializer):

    id = serializers.ReadOnlyField(
        source='ingredient.id')
    name = serializers.ReadOnlyField(
        source='ingredient.name')
    measurement_unit = serializers.ReadOnlyField(
        source='ingredient.measurement_unit')

    class Meta:
        model = RecipeIngredient
        fields = ('id', 'name', 'measurement_unit', 'amount')


class GetRecipeSerializer(serializers.ModelSerializer):
    ingredients = RecipeIngredientListSerializer(
        many=True,
        source='recipeingredients',
        read_only=True,
    )
    tags = TagSerializer(many=True)
    author = UserSerializer()
    image = Base64ImageField(use_url=True)

    class Meta:
        model = Recipe
        fields = (
            'id', 'tags', 'author', 'ingredients',
            # 'is_favorited', 'is_in_shopping_cart',
            'name', 'image', 'text', 'cooking_time',
        )
        read_only_fields = fields


class RecipeSerializer(serializers.ModelSerializer):

    ingredients = RecipeIngredientSerializer(many=True)
    tags = serializers.PrimaryKeyRelatedField(
        many=True,
        queryset=Tag.objects.all(),
    )
    author = UserSerializer(
        read_only=True,
        default=serializers.CurrentUserDefault()
    )
    image = Base64ImageField()
    cooking_time = serializers.IntegerField(
        min_value=Config.RECIPE_MIN_COOKING_TIME
    )

    class Meta:
        model = Recipe
        fields = (
            'id', 'tags', 'author', 'ingredients',
            # 'is_favorited', 'is_in_shopping_cart',
            'name', 'image', 'text', 'cooking_time',
        )
        read_only_fields = ('author',)

    def to_representation(self, recipe):
        return GetRecipeSerializer(recipe).data

    # def create(self, validated_data):
    #     return super().create(validated_data)

    def create(self, validated_data):
        ingredients_data = validated_data.pop('ingredients')
        tags_data = validated_data.pop('tags')
        recipe = Recipe.objects.create(**validated_data)
        recipe.tags.set(tags_data)
        RecipeIngredient.objects.bulk_create(
            RecipeIngredient(recipe=recipe,
                             ingredient=ingredient['id'],
                             amount=ingredient['amount'])
            for ingredient in ingredients_data
        )
        return recipe

    def update(self, instance, validated_data):
        ingredients_data = validated_data.pop('ingredients')
        tags_data = validated_data.pop('tags')
        instance.tags.clear()
        instance.tags.set(tags_data)
        instance.ingredients.clear()
        [RecipeIngredient.objects.update_or_create(
            recipe=instance,
            ingredient=ingredient['id'],
            amount=ingredient['amount']
        ) for ingredient in ingredients_data]
        return super().update(instance, validated_data)

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


class RecipeListSerializer(serializers.ModelSerializer):
    pass



    # News.objects.bulk_create(
    #     News(title=NEWS_TITLE + f'{index}',
    #          text=NEWS_TEXT,
    #          date=datetime.today() - timedelta(days=index))
    #     for index in range(settings.NEWS_COUNT_ON_HOME_PAGE + 1)
    # )