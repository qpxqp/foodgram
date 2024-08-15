# from django.conf import settings
from django.contrib.auth import get_user_model
from django.contrib.auth.models import AbstractUser
from django.core.validators import MinValueValidator
from django.db import models

from .validators import username_validator
from recipies.config import Config, UserRoles


class FoodgramUser(AbstractUser):
    """Модель пользователя."""

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
    first_name = models.CharField(
        verbose_name='Имя',
        max_length=Config.FIRST_NAME_MAX_LENGTH,
    )
    last_name = models.CharField(
        verbose_name='Фамилия',
        max_length=Config.LAST_NAME_MAX_LENGTH,
    )
    role = models.CharField(
        verbose_name='Роль',
        max_length=max(len(role) for role, _ in Config.USER_ROLES_CHOICE),
        choices=Config.USER_ROLES_CHOICE,
        default=UserRoles.USER,
    )
    avatar = models.ImageField(
        verbose_name='Аватарка',
        upload_to='users/',
        blank=True,
        null=True,
        default=None,
    )
    subscriptions = models.ManyToManyField(
        'self',
        verbose_name='Подписка',
        through='Subscription',
        through_fields=('subscriber', 'author'),
        symmetrical=False,
        related_name='subscribers',
    )

    @property
    def is_admin(self):
        return (
            self.role == UserRoles.ADMIN or self.is_staff
        )

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ('username', 'first_name', 'last_name')

    def __str__(self):
        return (f'username: {self.username[:Config.LENGTH_ON_STR]}, '
                f'email: {self.email[:Config.LENGTH_ON_STR]}, '
                f'role: {self.role}')

    class Meta:
        verbose_name = 'Пользователь'
        verbose_name_plural = 'Пользователи'
        default_related_name = 'users'
        ordering = ('username',)


User = get_user_model()


class Subscription(models.Model):
    """Модель подписок."""

    subscriber = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='follower',  # кто подписан
    )
    author = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='following',  # на кого подписан
    )

    def __str__(self):
        return (f'subscriber: {self.subscriber.username[:Config.LENGTH_ON_STR]}, '
                f'author: {self.author.username[:Config.LENGTH_ON_STR]}')

    class Meta:
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

    def __str__(self):
        return (f'name: {self.name[:Config.LENGTH_ON_STR]}, '
                f'slug: {self.slug[:Config.LENGTH_ON_STR]}')

    class Meta:
        verbose_name = 'Метка'
        verbose_name_plural = 'Метки'
        default_related_name = 'tags'
        ordering = ('name',)


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

    def __str__(self):
        return (
            f'name: {self.name[:Config.LENGTH_ON_STR]}, '
            f'measurement_unit: {self.measurement_unit[:Config.LENGTH_ON_STR]}'
        )

    class Meta:
        verbose_name = 'Ингредиент'
        verbose_name_plural = 'Ингредиенты'
        default_related_name = 'ingredients'
        ordering = ('name',)


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
    # short_link = models.SlugField(
    #     verbose_name='Прямая ссылка',
    #     max_length=Config.SHORT_LINK_LENGTH,
    #     unique=True,
    # )

    def __str__(self):
        return (
            f'name: {self.name[:Config.LENGTH_ON_STR]}, '
            f'author: {self.author.username[:Config.LENGTH_ON_STR]}'
        )

    class Meta:
        verbose_name = 'Рецепт'
        verbose_name_plural = 'Рецепты'
        default_related_name = 'recipes'
        ordering = ('-pub_date', 'name')


class RecipeIngredient(models.Model):
    recipe = models.ForeignKey(
        Recipe,
        on_delete=models.CASCADE
    )
    ingredient = models.ForeignKey(
        Ingredient,
        on_delete=models.CASCADE
    )
    amount = models.PositiveSmallIntegerField(
        validators=(
            MinValueValidator(
                Config.INGREDIENT_MIN_AMOUNT,
                Config.MIN_VALUE_ERROR.format(
                    Config.INGREDIENT_MIN_AMOUNT
                ),
            ),
        ),
    )

    def __str__(self):
        return (
            f'recipe: {self.recipe.name[:Config.LENGTH_ON_STR]}, '
            f'ingredient: {self.ingredient.name[:Config.LENGTH_ON_STR]}, '
            f'amount: {self.amount}'
        )

    class Meta:
        default_related_name = 'recipeingredients'
        constraints = (
            models.UniqueConstraint(
                fields=('recipe', 'ingredient'),
                name='unique_recipe_ingredient'
            ),
        )


class Favorite(models.Model):
    """Модель избранных рецептов."""
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

    def __str__(self):
        return (
            f'user: {self.user.username[:Config.LENGTH_ON_STR]}, '
            f'recipe: {self.recipe.name[:Config.LENGTH_ON_STR]}'
        )

    class Meta:
        default_related_name = 'favorites'
        constraints = (
            models.UniqueConstraint(
                fields=('user', 'recipe'),
                name='unique_user_recipe_favorite'
            ),
        )


class ShoppingCart(models.Model):
    """Модель избранных рецептов."""
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

    def __str__(self):
        return (
            f'user: {self.user.username[:Config.LENGTH_ON_STR]}, '
            f'recipe: {self.recipe.name[:Config.LENGTH_ON_STR]}'
        )

    class Meta:
        default_related_name = 'shoppingcarts'
        constraints = (
            models.UniqueConstraint(
                fields=('user', 'recipe'),
                name='unique_user_recipe_shoppingcart'
            ),
        )
