from django.conf import settings
from rest_framework import permissions


# class IsAdmin(permissions.BasePermission):
#     """Доступ для пользователя с ролью администратора."""
#     def has_permission(self, request, view):
#         if request.user.is_authenticated:
#             return request.user.is_admin


class IsUsersPathOrIsAuthenticated(permissions.BasePermission):
    def has_permission(self, request, view):
        if settings.USER_ACCOUNT_URL not in request.path:
            return True
        return request.user.is_authenticated
