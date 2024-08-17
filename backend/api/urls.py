from django.conf import settings
from django.urls import include, path
from rest_framework.routers import DefaultRouter, SimpleRouter

from .views import (
    FoodgramUserViewSet, IngredientViewSet,
    RecipeViewSet, TagViewSet,
)

app_name = 'api'

router_v1 = DefaultRouter() if settings.DEBUG else SimpleRouter()
router_v1.register('users', FoodgramUserViewSet, basename='users')
router_v1.register('tags', TagViewSet, basename='tags')
router_v1.register('ingredients', IngredientViewSet, basename='ingredients')
router_v1.register('recipes', RecipeViewSet, basename='recipes')


auth_patterns = [
    path('auth/', include('djoser.urls.authtoken')),
]

urlpatterns = [
    path('', include(router_v1.urls)),
    path('', include(auth_patterns)),
]
