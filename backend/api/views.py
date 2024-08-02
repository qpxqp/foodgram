from django.shortcuts import render
from rest_framework import viewsets, mixins
from rest_framework.permissions import AllowAny

# from .permissions import IsAdmin
from .serializers import AvatarSertializer, UserSerializer
from recipies.models import User


# class UsersViewSet(viewsets.ModelViewSet):
#     """Пользователи."""

#     serializer_class = UserSerializer
#     queryset = User.objects.all()
#     # lookup_field = 'username'
#     permission_classes = (AllowAny,)
#     # permission_classes = (IsAdmin,)


class AvatarViewSet(mixins.UpdateModelMixin,
                    mixins.DestroyModelMixin,
                    viewsets.GenericViewSet):

    serializer_class = AvatarSertializer
    queryset = User.objects.all()
    # permission_classes = (AllowAny,)
    lookup_field = 'username'

    # def get_queryset(self):
    #     return User.objects.filter(username=self.request.user.username)
