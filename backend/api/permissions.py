from rest_framework import permissions


class ReadOnlyOrIsAuthorOrIsAdmin(permissions.BasePermission):
    """
    Разрешает неавторизованному пользователю только Safe запросы.
    Автор, модератор, админ и суперпользователь могут всё.
    """
    def has_permission(self, request, view):
        return (
            request.method in permissions.SAFE_METHODS
            or request.user.is_authenticated
        )

    def has_object_permission(self, request, view, obj):
        return (
            request.method in permissions.SAFE_METHODS
            or request.user == obj.author
            or request.user.is_admin
        )
