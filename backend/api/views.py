from django.shortcuts import get_object_or_404
from rest_framework import viewsets, mixins, status
from rest_framework.exceptions import ValidationError, PermissionDenied, MethodNotAllowed
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework.response import Response

from recipies.config import Config
from .permissions import AdminOrReadOnly
from .serializers import (
    IngredientSerializer, RecipeSerializer, TagSerializer,
    UserAvatarSerializer, UserSerializer,
)
from recipies.models import Ingredient, Recipe, Tag, User


# class UsersViewSet(viewsets.ModelViewSet):
#     """Пользователи."""

#     serializer_class = UserSerializer
#     queryset = User.objects.all()
#     # lookup_field = 'username'
#     permission_classes = (AllowAny,)
#     # permission_classes = (IsAdmin,)


class UserAvatarViewSet(mixins.UpdateModelMixin,
                        mixins.DestroyModelMixin,
                        viewsets.GenericViewSet):

    serializer_class = UserSerializer
    queryset = User.objects.all()
    lookup_field = 'username'

    def update(self, request, *args, **kwargs):
        if not request.data.get('avatar', None):
            raise ValidationError({"avatar": "Обязательное поле."},
                                  status.HTTP_400_BAD_REQUEST)
        serializer = UserAvatarSerializer(
            self.request.user, data=request.data, partial=True
        )
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    def destroy(self, request, pk=None):
        user = self.request.user
        if user.avatar:
            user.avatar.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)
        return Response(status=status.HTTP_400_BAD_REQUEST)


class TagViewSet(viewsets.ModelViewSet):

    serializer_class = TagSerializer
    queryset = Tag.objects.all()
    permission_classes = (AdminOrReadOnly,)
    pagination_class = None


class IngredientViewSet(viewsets.ModelViewSet):

    serializer_class = IngredientSerializer
    queryset = Ingredient.objects.all()
    permission_classes = (AdminOrReadOnly,)
    pagination_class = None  # без фильтров с пагинацией не работает поиск


class RecipeViewSet(viewsets.ModelViewSet):

    serializer_class = RecipeSerializer
    queryset = Recipe.objects.all()
    permission_classes = (IsAuthenticated,)  # поправить
    # pagination_class = None

    def get_serializer_class(self):
        # if self.action == 'list':
        #     return RecipeListSerializer
        return RecipeSerializer

    # def list(self, request, *args, **kwargs):
    #     queryset = 
    #     return super().list(request, *args, **kwargs)

    # def create(self, request, *args, **kwargs):
    #     return super().create(request, *args, **kwargs)

    def perform_create(self, serializer):
        serializer.save(author=self.request.user)

    def update(self, request, *args, **kwargs):
        if request.method in 'PUT':
            raise MethodNotAllowed('PUT')
        return super().update(request, *args, **kwargs)

    def perform_update(self, serializer):
        if serializer.instance.author != self.request.user:
            raise PermissionDenied(Config.PERMISSION_DENIED)
        serializer.save(author=self.request.user)
        return super().perform_update(serializer)
