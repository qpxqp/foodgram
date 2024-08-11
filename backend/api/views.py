from django.shortcuts import get_object_or_404
from djoser.views import UserViewSet
from rest_framework import viewsets, mixins, status
from rest_framework.decorators import action
from rest_framework.exceptions import ValidationError, PermissionDenied, MethodNotAllowed
from rest_framework.generics import RetrieveAPIView
from rest_framework import permissions
from rest_framework.response import Response

from recipies.config import Config
from .permissions import AdminOrReadOnly
from .serializers import (
    RecipeGetSerializer,
    IngredientSerializer, RecipeSerializer, SubscribeSerializer,
    SubscriptionsSerializer, TagSerializer,
    UserAvatarSerializer, UserSerializer,
    ShortLinkRecipeSerializer
)
from recipies.models import Ingredient, Recipe, Subscription, Tag, User


class FoodgramUserViewSet(UserViewSet):

    def get_permissions(self):
        if self.action == 'retrieve':
            self.permission_classes = (permissions.AllowAny,)
        elif self.action == 'subscribe':
            self.permission_classes = (permissions.IsAuthenticated,)
        return super().get_permissions()

    @action(['put', 'delete'], detail=False, url_path='me/avatar',
            serializer_class=UserAvatarSerializer)
    def avatar(self, request):
        user = request.user
        if user.avatar:
            user.avatar.delete()
        if request.method == 'DELETE':
            return Response(status=status.HTTP_204_NO_CONTENT)
        serializer = self.get_serializer(user, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    @action(['get'], detail=False, serializer_class=SubscriptionsSerializer)
    def subscriptions(self, request):
        serializer = self.get_serializer(
            User.objects.filter(following__subscriber=request.user),
            many=True,
        )
        return Response(serializer.data)

    @action(['post', 'delete'], detail=True,
            serializer_class=SubscribeSerializer)
    def subscribe(self, request, id=None):
        subscriber = request.user
        author = self.get_object()
        if request.method == 'POST':
            serializer = self.get_serializer(data={'author': author.username})
            serializer.is_valid(raise_exception=True)
            serializer.save(subscriber=subscriber)
            return Response(serializer.data)
        instance = Subscription.objects.filter(subscriber=subscriber,
                                               author=author)
        if not instance.exists():
            raise ValidationError(Config.SUBSCRIPTION_NOT_EXISTS.format(
                subscriber=subscriber.username,
                author=author.username
            ))
        instance.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)


class TagViewSet(viewsets.ModelViewSet):

    serializer_class = TagSerializer
    queryset = Tag.objects.all()
    permission_classes = (AdminOrReadOnly,)
    pagination_class = None


class IngredientViewSet(viewsets.ModelViewSet):

    serializer_class = IngredientSerializer
    queryset = Ingredient.objects.all()
    permission_classes = (AdminOrReadOnly,)
    # pagination_class = None  # без фильтров с пагинацией не работает поиск на сайте


class RecipeViewSet(viewsets.ModelViewSet):

    serializer_class = RecipeSerializer
    queryset = Recipe.objects.all()
    permission_classes = (permissions.IsAuthenticated,)
    # pagination_class = None

    def get_serializer_class(self):
        # print(self.action)
        if self.action == 'short_link':
            return ShortLinkRecipeSerializer
        if self.action in ('list', 'retrieve'):
            return RecipeGetSerializer
        return super().get_serializer_class()

    def get_permissions(self):
        # print(self.action)
        if self.action in ('list', 'retrieve', 'short_link'):
            self.permission_classes = (permissions.AllowAny,)
        return super().get_permissions()

    @action(['get'], detail=True,
            serializer_class=ShortLinkRecipeSerializer,
            url_path='get-link',
            queryset=Recipe.objects.all(),
            )
    def short_link(self, request, pk=None):
        serializer = self.get_serializer(
            get_object_or_404(Recipe, pk=pk),
            data=request.data,
        )
        serializer.is_valid(raise_exception=True)
        return Response(serializer.data)

    def perform_create(self, serializer):
        serializer.save(author=self.request.user)

    def update(self, request, *args, **kwargs):
        if request.method in 'PUT':
            raise MethodNotAllowed('PUT')
        return super().update(request, *args, **kwargs)

    def patch(self, request, *args, **kwargs):
        return self.partial_update(request, *args, **kwargs)

    def perform_update(self, serializer):
        if serializer.instance.author != self.request.user:
            raise PermissionDenied(Config.PERMISSION_DENIED)
        serializer.save(author=self.request.user)
        return super().perform_update(serializer)


class ShortLinkRecipeDetail(RetrieveAPIView):

    serializer_class = RecipeGetSerializer
    queryset = Recipe.objects.all()
    permission_classes = (permissions.AllowAny,)
