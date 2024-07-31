from django.conf import settings
from django.urls import include, path
from rest_framework.routers import DefaultRouter, SimpleRouter

from api.views import UsersViewSet

app_name = 'api'

router_v1 = DefaultRouter() if settings.DEBUG else SimpleRouter()
# router_v1.register(r'users', UsersViewSet, basename='users')

auth_patterns = [
    path('auth/', include('djoser.urls.authtoken')),  # Работа с токенами
    path('', include('djoser.urls')),                 # Работа с пользователями
]

urlpatterns = [
    path('', include(router_v1.urls)),
    path('', include(auth_patterns)),
]
