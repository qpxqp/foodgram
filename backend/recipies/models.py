from django.contrib.auth import get_user_model
from django.contrib.auth.models import AbstractUser
from django.core.exceptions import ValidationError
from django.core.validators import MinValueValidator
from django.db import models

from recipies.validators import username_validator
from recipies.config import Config


class FoodgramUser(AbstractUser):
    """Модель пользователя."""

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ('username', 'first_name', 'last_name')

    username = models.CharField(
        verbose_name='Имя пользователя',
        max_length=Config.USERNAME_MAX_LENGTH,
        unique=True,
        validators=(username_validator,),
    )
    email = models.EmailField(
        verbose_name='Электронная почта',
        max_length=Config.EMAIL_MAX_LENGTH,
        unique=True,
    )
    avatar = models.ImageField(
        verbose_name='Аватарка',
        upload_to='users/',
        blank=True,
        null=True,
        default=None,
    )

    class Meta:
        verbose_name = 'Пользователь'
        verbose_name_plural = 'Пользователи'
        ordering = ('username',)

    def __str__(self):
        return (f'username: {self.username[:Config.LENGTH_ON_STR]}, '
                f'email: {self.email[:Config.LENGTH_ON_STR]}')


User = get_user_model()


class Subscription(models.Model):
    """Модель подписок."""

    subscriber = models.ForeignKey(
        User,
        verbose_name='Подписчик',
        on_delete=models.CASCADE,
        related_name='follower',  # кто подписан
    )
    author = models.ForeignKey(
        User,
        verbose_name='Автор',
        on_delete=models.CASCADE,
        related_name='following',  # на кого подписан
    )

    class Meta:
        verbose_name = 'Подписка'
        verbose_name_plural = 'Подписки'
        ordering = ('subscriber',)
        constraints = (
            models.UniqueConstraint(
                fields=('subscriber', 'author'),
                name='unique_user_following',
            ),
            models.CheckConstraint(
                check=~models.Q(author=models.F('subscriber')),
                name='dont_subscribe_to_yourself',
            ),
        )

    def __str__(self):
        return (
            f'subscriber: {self.subscriber.username[:Config.LENGTH_ON_STR]}, '
            f'author: {self.author.username[:Config.LENGTH_ON_STR]}'
        )

    def clean(self):
        if self.subscriber == self.author:
            raise ValidationError(Config.SUBSCRIPTION_ERROR)


class Tag(models.Model):
    """Модель метки."""

    name = models.CharField(
        verbose_name='Название',
        max_length=Config.TAG_NAME_MAX_LENGTH,
        unique=True,
    )
    slug = models.SlugField(
        verbose_name='Слаг',
        max_length=Config.TAG_SLUG_MAX_LENGTH,
        unique=True,
    )

    class Meta:
        verbose_name = 'Метка'
        verbose_name_plural = 'Метки'
        ordering = ('name',)

    def __str__(self):
        return (f'name: {self.name[:Config.LENGTH_ON_STR]}, '
                f'slug: {self.slug[:Config.LENGTH_ON_STR]}')


class Ingredient(models.Model):
    """Модель ингредиента."""

    name = models.CharField(
        verbose_name='Ингредиент',
        max_length=Config.INGREDIENT_NAME_MAX_LENGTH,
        unique=True,
        db_index=True,
    )
    measurement_unit = models.CharField(
        verbose_name='Единица измерения',
        max_length=Config.MEASURE_UNIT_MAX_LENGTH,
    )

    class Meta:
        verbose_name = 'Ингредиент'
        verbose_name_plural = 'Ингредиенты'
        ordering = ('name',)
        constraints = (
            models.UniqueConstraint(
                fields=('name', 'measurement_unit'),
                name='unique_name_measurement_unit'
            ),
        )

    def __str__(self):
        return (
            f'name: {self.name[:Config.LENGTH_ON_STR]}, '
            f'measurement_unit: {self.measurement_unit[:Config.LENGTH_ON_STR]}'
        )


class Recipe(models.Model):
    """Модель рецепта."""

    pub_date = models.DateTimeField(
        verbose_name='Дата публикации',
        auto_now_add=True,
        db_index=True,
    )
    author = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        verbose_name='Автор',
    )
    name = models.CharField(
        verbose_name='Название',
        max_length=Config.RECIPE_NAME_MAX_LENGTH,
        db_index=True,
    )
    image = models.ImageField(
        upload_to='recipes/images/',
        verbose_name='Изображение',
    )
    text = models.TextField(verbose_name='Описание')
    ingredients = models.ManyToManyField(
        Ingredient,
        through="RecipeIngredient",
        verbose_name='Ингредиенты',
    )
    tags = models.ManyToManyField(
        Tag,
        verbose_name='Метки',
    )
    cooking_time = models.PositiveSmallIntegerField(
        verbose_name='Время приготовления (в минутах)',
        validators=(
            MinValueValidator(
                Config.RECIPE_MIN_COOKING_TIME,
                Config.MIN_VALUE_ERROR.format(
                    Config.RECIPE_MIN_COOKING_TIME
                ),
            ),
        ),
    )

    class Meta:
        verbose_name = 'Рецепт'
        verbose_name_plural = 'Рецепты'
        default_related_name = 'recipes'
        ordering = ('-pub_date', 'name')

    def __str__(self):
        return (
            f'name: {self.name[:Config.LENGTH_ON_STR]}, '
            f'author: {self.author.username[:Config.LENGTH_ON_STR]}'
        )


class RecipeIngredient(models.Model):
    """Рецепт-ингредиент."""

    recipe = models.ForeignKey(
        Recipe,
        on_delete=models.CASCADE,
        verbose_name='Рецепт',
    )
    ingredient = models.ForeignKey(
        Ingredient,
        on_delete=models.CASCADE,
        verbose_name='Ингредиент',
    )
    amount = models.PositiveSmallIntegerField(
        verbose_name='Количество',
        validators=(
            MinValueValidator(
                Config.INGREDIENT_MIN_AMOUNT,
                Config.MIN_VALUE_ERROR.format(
                    Config.INGREDIENT_MIN_AMOUNT
                ),
            ),
        ),
    )

    class Meta:
        verbose_name = 'Рецепт-ингредиенты'
        verbose_name_plural = 'Рецепты-ингредиенты'
        default_related_name = 'recipe_ingredients'
        ordering = ('recipe',)
        constraints = (
            models.UniqueConstraint(
                fields=('recipe', 'ingredient'),
                name='unique_recipe_ingredient'
            ),
        )

    def __str__(self):
        return (
            f'recipe: {self.recipe.name[:Config.LENGTH_ON_STR]}, '
            f'ingredient: {self.ingredient.name[:Config.LENGTH_ON_STR]}, '
            f'amount: {self.amount}'
        )


class UserRecipeAbstractModel(models.Model):

    user = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        verbose_name='Пользователь',
    )
    recipe = models.ForeignKey(
        Recipe,
        on_delete=models.CASCADE,
        verbose_name='Рецепт',
    )

    class Meta:
        abstract = True
        ordering = ('user',)
        constraints = (
            models.UniqueConstraint(
                fields=('user', 'recipe'),
                name='%(class)s_unique_user_recipe'
            ),
        )

    def __str__(self):
        return (
            f'user: {self.user.username[:Config.LENGTH_ON_STR]}, '
            f'recipe: {self.recipe.name[:Config.LENGTH_ON_STR]}'
        )


class Favorite(UserRecipeAbstractModel):
    """Модель избранных рецептов."""

    class Meta(UserRecipeAbstractModel.Meta):
        verbose_name = 'Избранное'
        verbose_name_plural = 'Избранное'
        default_related_name = 'favorites'


class ShoppingCart(UserRecipeAbstractModel):
    """Модель покупок."""

    class Meta(UserRecipeAbstractModel.Meta):
        verbose_name = 'Покупка'
        verbose_name_plural = 'Покупки'
        default_related_name = 'shopping_carts'
