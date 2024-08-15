from django.db.models import Sum

from recipies.models import RecipeIngredient


def shopping_cart(user):
    """Подготавливает данные для списка покупок."""
    ingredients = RecipeIngredient.objects.filter(
        recipe__shoppingcarts__user=user,
    ).values(
        'ingredient__name',
        'ingredient__measurement_unit',
    ).annotate(
        amount=Sum('amount', distinct=True),
    ).order_by('ingredient__name')
    if not ingredients:
        return None
    cart_data = f'FoodGram\n\nСписок покупок пользователя {user.username}:\n\n'
    cart_data += '\n'.join(
        f'{index}. {ingredient["ingredient__name"]} - '
        f'{ingredient["amount"]} '
        f'{ingredient["ingredient__measurement_unit"]}\n'
        for index, ingredient in enumerate(ingredients, start=1)
    )
    return cart_data
