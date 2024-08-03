from django.contrib import admin

from recipies.models import FoodgramUser


@admin.register(FoodgramUser)
class UserAdmin(admin.ModelAdmin):
    list_display = (
        'username', 'email', 'first_name', 'last_name', 'role', 'avatar',
    )
    search_fields = ('email', 'username')
