from django.conf import settings
from django.urls import include, path, re_path
from rest_framework.routers import DefaultRouter, SimpleRouter

from .views import UserAvatarViewSet

app_name = 'api'

router_v1 = DefaultRouter() if settings.DEBUG else SimpleRouter()
# router_v1.register(r'users', UsersViewSet, basename='users')

auth_patterns = [
    # re_path(r'^users/$', UsersViewSet.as_view({'get': 'list'})),
    path('auth/', include('djoser.urls.authtoken')),
    path('users/me/avatar/', UserAvatarViewSet.as_view(
        {'put': 'update', 'delete': 'destroy'}
    ), name='avatar'),
    path('', include('djoser.urls')),
]

urlpatterns = [
    path('', include(router_v1.urls)),
    path('', include(auth_patterns)),
]
