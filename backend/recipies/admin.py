from django.contrib import admin

from recipies.models import Ingredient, Recipe, Tag, User


@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    list_display = ('username', 'email', 'first_name', 'last_name', 'role',
                    'avatar',)
    search_fields = ('email', 'username')


@admin.register(Tag)
class TagAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug')


@admin.register(Ingredient)
class IngredientAdmin(admin.ModelAdmin):
    list_display = ('name', 'measurement_unit')


@admin.register(Recipe)
class RecipeAdmin(admin.ModelAdmin):
    list_display = ('pub_date', 'author', 'name', 'image', 'text',
                    'cooking_time')

# ПРОВЕРИТЬ ВСЕ ЛИ НЕОБХОДИМЫЕ ПОЛЯ СОГЛАСНО МОДЕЛЯМ
