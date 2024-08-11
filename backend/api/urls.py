from django.conf import settings
from django.urls import include, path, re_path
from rest_framework.routers import DefaultRouter, SimpleRouter

from .views import (
    FoodgramUserViewSet,
    IngredientViewSet, RecipeViewSet, ShortLinkRecipeViewSet,
    TagViewSet, ShortLinkRecipeDetail,  # UserAvatarViewSet,
    # SubscribeViewSet,  # SubscriptionViewSet,
)

app_name = 'api'

router_v1 = DefaultRouter() if settings.DEBUG else SimpleRouter()
router_v1.register(r'tags', TagViewSet, basename='tags')
router_v1.register(r'ingredients', IngredientViewSet, basename='ingredients')
router_v1.register(r'recipes', RecipeViewSet, basename='recipes')
router_v1.register('users', FoodgramUserViewSet, basename='users')
# router_v1.register(r'users/subscriptions', SubscriptionViewSet,
#                    basename='subscriptions')
# router_v1.register('users/<int:author_id>/subscribe', SubscribeViewSet,
#                    basename='users-subscribe')
# router_v1.register(r'users/(?P<author_id>\d+)/subscribe', SubscribeViewSet,
#                    basename='users-subscribe')

auth_patterns = [
    # re_path(r'^users/$', UsersViewSet.as_view({'get': 'list'})),
    path('auth/', include('djoser.urls.authtoken')),
    # path('users/me/avatar/', UserAvatarViewSet.as_view(
    #     {'put': 'update', 'delete': 'destroy'}
    # ), name='avatar'),
    path('', include('djoser.urls')),
]

urlpatterns = [
    path('', include(router_v1.urls)),
    path('', include(auth_patterns)),
]
