from django.conf import settings
from rest_framework import permissions


class IsAdmin(permissions.BasePermission):
    """Доступ для пользователя с ролью администратора."""
    def has_permission(self, request, view):
        if request.user.is_authenticated:
            return request.user.is_admin


class AdminOrReadOnly(IsAdmin, permissions.BasePermission):
    """
    Полный доступ для пользователя с ролью администратора.
    Безопасные методы для всех пользователей.
    """
    def has_permission(self, request, view):
        return (
            request.method in permissions.SAFE_METHODS
            or super().has_permission(request, view)
        )


# class IsUsersPathOrIsAuthenticated(permissions.BasePermission):
#     """
#     Полный доступ к /users/
#     Атутентифицированный достум к /users/me/
#     """
#     def has_permission(self, request, view):
#         if settings.USER_ACCOUNT_URL not in request.path:
#             return True
#         return request.user.is_authenticated
