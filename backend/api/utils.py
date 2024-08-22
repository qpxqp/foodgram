from django.db.models import Sum
from django.db.models.query import QuerySet

from recipies.models import RecipeIngredient


def get_shopping_cart_data(user) -> QuerySet:
    """Подготавливает данные для списка покупок."""
    ingredients = RecipeIngredient.objects.filter(
        recipe__shopping_carts__user=user,
    ).values(
        'ingredient__name',
        'ingredient__measurement_unit',
    ).annotate(
        amount=Sum('amount', distinct=True),
    ).order_by('ingredient__name')
    return ingredients or None


def get_shopping_cart_text(username: str, cart_data: QuerySet) -> str:
    """Подготавливает список покупок в текстовом виде."""
    cart_text = f'FoodGram\n\nСписок покупок пользователя {username}:\n\n'
    cart_text += '\n'.join(
        f'{index}. {ingredient["ingredient__name"]} - '
        f'{ingredient["amount"]} '
        f'{ingredient["ingredient__measurement_unit"]}\n'
        for index, ingredient in enumerate(cart_data, start=1)
    )
    return cart_text
