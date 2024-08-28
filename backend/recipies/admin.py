from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.utils.safestring import mark_safe

from recipies.models import (Favorite, Ingredient, Recipe, RecipeIngredient,
                             ShoppingCart, Subscription, Tag, User)

# Дополнительные поля в админку пользователя
ADDITIONAL_USER_FIELDS = ('recipes', 'subscribers')
ADDITIONAL_USER_FIELDSET = (
    (None, {'fields': ('avatar', *ADDITIONAL_USER_FIELDS)}),
)


@admin.register(User)
class FoodgramUserAdmin(BaseUserAdmin):
    """Пользователи."""

    list_display = BaseUserAdmin.list_display + ADDITIONAL_USER_FIELDS
    add_fieldsets = BaseUserAdmin.add_fieldsets + ADDITIONAL_USER_FIELDSET
    fieldsets = BaseUserAdmin.fieldsets + ADDITIONAL_USER_FIELDSET
    search_fields = ADDITIONAL_USER_FIELDS
    readonly_fields = BaseUserAdmin.readonly_fields + ADDITIONAL_USER_FIELDS

    @admin.display(description='Количество рецептов')
    def recipes(self, user):
        return user.recipes.count()

    @admin.display(description='Количество подписчиков')
    def subscribers(self, user):
        return user.following.count()


@admin.register(Subscription)
class SubscriptionAdmin(admin.ModelAdmin):
    """Подписки."""

    list_display = ('subscriber', 'author')
    search_fields = ('subscriber__username',)


@admin.register(Tag)
class TagAdmin(admin.ModelAdmin):
    """Метки."""

    list_display = ('name', 'slug')


@admin.register(Ingredient)
class IngredientAdmin(admin.ModelAdmin):
    """Ингредиенты."""

    list_display = ('name', 'measurement_unit')
    search_fields = ('name',)


class IngredientsInRecipeInline(admin.TabularInline):
    model = Recipe.ingredients.through
    extra = 0
    min_num = 1


@admin.register(Recipe)
class RecipeAdmin(admin.ModelAdmin):
    """Рецепты."""

    inlines = (IngredientsInRecipeInline,)
    list_display = ('id', 'image_display', 'pub_date', 'author', 'name',
                    'text', 'cooking_time', 'is_favorited')
    search_fields = ('name', 'author__username')
    list_filter = ('tags',)
    readonly_fields = ('is_favorited',)

    @admin.display(description='В избранном')
    def is_favorited(self, recipe):
        return recipe.favorites.count()

    @admin.display(description='Изображение')
    def image_display(self, recipe):
        return mark_safe(
            f'<img src={recipe.image.url} width="50" height="50">'
        )


@admin.register(RecipeIngredient)
class RecipeIngredientAdmin(admin.ModelAdmin):
    """Рецепты-ингредиенты."""

    list_display = ('id', 'recipe', 'ingredient', 'amount',)
    search_fields = ('recipe__name', 'ingredient__name')


@admin.register(Favorite)
class FavoriteAdmin(admin.ModelAdmin):
    """Избранное."""

    list_display = ('user', 'recipe')
    search_fields = ('user__username',)


@admin.register(ShoppingCart)
class ShoppingCartAdmin(admin.ModelAdmin):
    """Список покупок."""

    list_display = ('user', 'recipe')
    search_fields = ('user__username',)
