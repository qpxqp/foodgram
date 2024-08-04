from django.shortcuts import render
from rest_framework import viewsets, mixins, status
from rest_framework.exceptions import ValidationError
from rest_framework.permissions import AllowAny
from rest_framework.response import Response

# from .permissions import IsAdmin
from .serializers import (
    IngredientSerializer, MeasurementSerializer, TagSerializer, UserAvatarSerializer, UserSerializer
)
from recipies.models import Ingredient, Measurement, Tag, User


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


class TagViewSet(viewsets.ReadOnlyModelViewSet):

    serializer_class = TagSerializer
    queryset = Tag.objects.all()
    permission_classes = (AllowAny,)
    pagination_class = None


class MeasurementViewSet(viewsets.ModelViewSet):
    serializer_class = MeasurementSerializer
    queryset = Measurement.objects.all()


class IngredientViewSet(viewsets.ModelViewSet):

    serializer_class = IngredientSerializer
    queryset = Ingredient.objects.all()
    permission_classes = (AllowAny,)
    pagination_class = None

    def create(self, request, *args, **kwargs):
        unit, _ = Measurement.objects.get_or_create(
            unit=request.data.get('measurement_unit')
        )
        return super().create(request, *args, **kwargs)
