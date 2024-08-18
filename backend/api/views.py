from django.conf import settings
from django.http import FileResponse
from django.shortcuts import get_object_or_404, redirect
from django.utils.timezone import localtime, now
from django_filters.rest_framework import DjangoFilterBackend
from djoser.views import UserViewSet
from rest_framework import mixins, permissions, status, viewsets
from rest_framework.decorators import action
from rest_framework.exceptions import ValidationError
from rest_framework.generics import RetrieveAPIView
from rest_framework.response import Response
from rest_framework.reverse import reverse

from api.filters import IngredientFilter, RecipeFilter
from api.permissions import ReadOnlyOrIsAuthorOrIsAdmin
from api.serializers import (FavoriteSerializer, IngredientSerializer,
                             RecipeGetSerializer, RecipeSerializer,
                             ShoppingCartSerializer, ShortLinkRecipeSerializer,
                             SubscribeSerializer, SubscriptionsSerializer,
                             TagSerializer, UserAvatarSerializer)
from api.utils import get_shopping_cart_data, get_shopping_cart_text
from recipies.config import Config
from recipies.models import (Favorite, Ingredient, Recipe, ShoppingCart,
                             Subscription, Tag, User)


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
            self.paginate_queryset(
                User.objects.filter(following__subscriber=request.user),
            ),
            many=True,
        )
        return self.get_paginated_response(serializer.data)

    @action(['post', 'delete'], detail=True,
            serializer_class=SubscribeSerializer)
    def subscribe(self, request, id=None):
        subscriber = request.user
        author = self.get_object()
        if request.method == 'POST':
            serializer = self.get_serializer(data={'author': author.username})
            serializer.is_valid(raise_exception=True)
            serializer.save(subscriber=subscriber)
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        instance = Subscription.objects.filter(subscriber=subscriber,
                                               author=author)
        if not instance.exists():
            raise ValidationError(Config.SUBSCRIPTION_NOT_EXISTS.format(
                subscriber=subscriber.username,
                author=author.username
            ))
        instance.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)


class TagViewSet(mixins.ListModelMixin,
                 mixins.RetrieveModelMixin,
                 viewsets.GenericViewSet):

    serializer_class = TagSerializer
    queryset = Tag.objects.all()
    permission_classes = (permissions.AllowAny,)
    pagination_class = None


class IngredientViewSet(mixins.ListModelMixin,
                        mixins.RetrieveModelMixin,
                        viewsets.GenericViewSet):

    serializer_class = IngredientSerializer
    queryset = Ingredient.objects.all()
    permission_classes = (permissions.AllowAny,)
    filter_backends = (DjangoFilterBackend,)
    filterset_class = IngredientFilter
    pagination_class = None


class RecipeViewSet(viewsets.ModelViewSet):

    queryset = Recipe.objects.all()
    serializer_class = RecipeSerializer
    permission_classes = (permissions.IsAuthenticatedOrReadOnly,
                          ReadOnlyOrIsAuthorOrIsAdmin,)
    filter_backends = (DjangoFilterBackend,)
    filterset_class = RecipeFilter
    http_method_names = ['get', 'post', 'patch', 'delete']

    def get_permissions(self):
        if self.action == 'update':
            self.permission_classes = (ReadOnlyOrIsAuthorOrIsAdmin,)
        return super().get_permissions()

    def get_serializer_class(self):
        if self.action == 'short_link':
            return ShortLinkRecipeSerializer
        if self.action == 'favorite':
            return FavoriteSerializer
        if self.action == 'shopping_cart':
            return ShoppingCartSerializer
        if self.action in ('list', 'retrieve'):
            return RecipeGetSerializer
        return super().get_serializer_class()

    @action(['get'], detail=True, url_path='get-link',
            permission_classes=(permissions.AllowAny,))
    def short_link(self, request, pk=None):
        serializer = self.get_serializer(
            get_object_or_404(Recipe, pk=pk),
            data=request.data,
        )
        serializer.is_valid(raise_exception=True)
        return Response(serializer.data)

    @staticmethod
    def favorite_and_shopping_cart_post(user, recipe, serializer) -> Response:
        serializer.is_valid(raise_exception=True)
        serializer.save(user=user, recipe=recipe)
        return Response(serializer.data, status=status.HTTP_201_CREATED)

    @staticmethod
    def favorite_and_shopping_cart_delete(user, recipe,
                                          listname, instance) -> Response:
        if not instance.exists():
            raise ValidationError(
                {'errors': Config.FAVORITE_SHOPPINGCART_NOT_EXISTS.format(
                    listname=listname,
                    id=recipe.id,
                    user=user.username,
                )},
            )
        instance.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

    @action(['post', 'delete'], detail=True,
            permission_classes=(permissions.IsAuthenticated,))
    def favorite(self, request, pk=None):
        user = request.user
        recipe = self.get_object()
        if request.method == 'POST':
            return self.favorite_and_shopping_cart_post(
                user, recipe,
                self.get_serializer(data={'recipe': pk})
            )
        return self.favorite_and_shopping_cart_delete(
            user, recipe, 'избранном',
            Favorite.objects.filter(user=user, recipe=recipe)
        )

    @action(['post', 'delete'], detail=True,
            permission_classes=(permissions.IsAuthenticated,))
    def shopping_cart(self, request, pk=None):
        user = request.user
        recipe = self.get_object()
        if request.method == 'POST':
            return self.favorite_and_shopping_cart_post(
                user, recipe,
                self.get_serializer(data={'recipe': pk})
            )
        return self.favorite_and_shopping_cart_delete(
            user, recipe, 'списке покупок',
            ShoppingCart.objects.filter(user=user, recipe=recipe)
        )

    @action(['get'], detail=False,
            permission_classes=(permissions.IsAuthenticated,))
    def download_shopping_cart(self, request):
        user = request.user
        cart_data = get_shopping_cart_data(user)
        if not cart_data:
            return Response(
                {'detail': 'Список покупок пуст.'},
                status=status.HTTP_404_NOT_FOUND,
            )
        file_name = Config.SHOPPING_CART_FILE_NAME.format(
            datetime=localtime(now()).strftime('%Y%m%d%H%M%S'),
        )
        cart_text = get_shopping_cart_text(user.username, cart_data)
        return FileResponse(
            cart_text,
            content_type='text/plain',
            filename=file_name,
            as_attachment=True,
        )


class ShortLinkRecipeDetail(RetrieveAPIView):

    permission_classes = (permissions.AllowAny,)

    def get(self, request, pk=None):
        return redirect(
            reverse('api:recipes-detail', kwargs={'pk': pk}, request=request)
            if settings.USE_BACKEND_ONLY else
            request.build_absolute_uri(f'/recipes/{pk}'),
            permanent=True,
        )
