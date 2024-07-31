from django.shortcuts import render
from rest_framework import viewsets

from .serializers import UserSerializer
from recipies.models import User


class UsersViewSet(viewsets.ModelViewSet):
    """Пользователи."""

    serializer_class = UserSerializer
    # lookup_field = 'username'
    queryset = User.objects.all()
