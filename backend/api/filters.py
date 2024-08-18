from django.db.models import Case, Q, Value, When
from django_filters.rest_framework import FilterSet, filters

from recipies.models import Ingredient, Recipe


class IngredientFilter(FilterSet):

    name = filters.CharFilter(method='ingredient_filter')

    class Meta:
        model = Ingredient
        fields = ('name',)

    def ingredient_filter(self, queryset, name, value):
        return queryset.filter(
            Q(**{'name__icontains': value})
        ).order_by(
            Case(
                When(Q(**{'name__istartswith': value}), then=Value(1)),
                When(Q(**{'name__icontains': value}), then=Value(2)),
            ),
        )


# from recipies.models import Tag
class RecipeFilter(FilterSet):

    tags = filters.AllValuesMultipleFilter(field_name='tags__slug')
    # tags = filters.ModelMultipleChoiceFilter(
    #     queryset=Tag.objects.all(),
    #     field_name='tags__slug',
    #     to_field_name='slug',
    # )
    is_favorited = filters.BooleanFilter(method='is_favorited_filter')
    is_in_shopping_cart = filters.BooleanFilter(
        method='is_in_shopping_cart_filter'
    )

    class Meta:
        model = Recipe
        fields = ('author', 'tags', 'is_favorited', 'is_in_shopping_cart')

    def is_favorited_filter(self, queryset, name, value):
        if value and self.request.user.is_authenticated:
            return queryset.filter(favorites__user=self.request.user)
        return queryset

    def is_in_shopping_cart_filter(self, queryset, name, value):
        if value and self.request.user.is_authenticated:
            return queryset.filter(shopping_carts__user=self.request.user)
        return queryset
