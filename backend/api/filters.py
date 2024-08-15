from django.db.models import Q, Case, Value, When
from django_filters.rest_framework import FilterSet, filters

from recipies.models import Ingredient, Recipe, Tag, User


class IngredientFilter(FilterSet):

    # Для тестов postman
    # name = filters.CharFilter(field_name='name', lookup_expr='istartswith')

    # Двойная фильтрация ингредиентов
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


class RecipeFilter(FilterSet):

    author = filters.ModelChoiceFilter(queryset=User.objects.all())
    tags = filters.ModelMultipleChoiceFilter(
        field_name='tags__slug',
        to_field_name='slug',
        queryset=Tag.objects.all(),
    )
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
            return queryset.filter(shoppingcarts__user=self.request.user)
        return queryset
