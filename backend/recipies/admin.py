from django.contrib import admin

from recipies.models import (
    Favorite, Ingredient, Recipe, RecipeIngredient,
    ShoppingCart, Subscription, Tag, User
)


@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    """Пользователи."""

    list_display = ('id', 'username', 'email', 'first_name', 'last_name',
                    'role', 'avatar',)
    search_fields = ('email', 'username')
    list_filter = ('role',)


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


@admin.register(Recipe)
class RecipeAdmin(admin.ModelAdmin):
    """Рецепты."""

    list_display = ('id','pub_date', 'author', 'name', 'image', 'text',
                    'cooking_time')
    search_fields = ('name', 'author__username')
    list_filter = ('tags',)
    readonly_fields = ('is_favorited',)

    def is_favorited(self, recipe):
        return recipe.favorites.count()


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
