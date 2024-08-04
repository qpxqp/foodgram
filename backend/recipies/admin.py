from django.contrib import admin

from recipies.models import Ingredient, Measurement, Tag, User


@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    list_display = (
        'username', 'email', 'first_name', 'last_name', 'role', 'avatar',
    )
    search_fields = ('email', 'username')


@admin.register(Tag)
class TagAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug')


@admin.register(Measurement)
class MeasurementAdmin(admin.ModelAdmin):
    list_display = ('unit',)


@admin.display()
@admin.register(Ingredient)
class IngredientAdmin(admin.ModelAdmin):
    list_display = ('name', 'measurement_unit')
