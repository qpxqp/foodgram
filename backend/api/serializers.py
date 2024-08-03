import base64

from django.core.files.base import ContentFile
from djoser.serializers import (
    # UserCreateSerializer as BaseUserCreateSerializer,
    UserSerializer as BaseUserSerializer,
)
from rest_framework import serializers

from recipies.models import User


class Base64ImageField(serializers.ImageField):

    def to_internal_value(self, data):
        if isinstance(data, str) and data.startswith('data:image'):
            format, imgstr = data.split(';base64,')
            ext = format.split('/')[-1]
            data = ContentFile(base64.b64decode(imgstr), name='temp.' + ext)
        return super().to_internal_value(data)


class UserSerializer(BaseUserSerializer):

    avatar = Base64ImageField(required=False, allow_null=True)

    class Meta(BaseUserSerializer.Meta):
        fields = (
            'email', 'id', 'username', 'first_name', 'last_name', 'avatar',
            # 'is_subscribed',
        )
        # extra_kwargs = {'password': {'write_only': True}}


# class UserSerializer(serializers.ModelSerializer):

#     avatar = Base64ImageField(required=False, allow_null=True)

#     class Meta:
#         model = User
#         fields = (
#             'email', 'id', 'username', 'first_name', 'last_name', 'avatar',
#             # 'is_subscribed',
#         )


class UserAvatarSerializer(serializers.ModelSerializer):

    avatar = Base64ImageField(required=True)

    class Meta:
        model = User
        fields = ('avatar',)

    def update(self, instance, validated_data):
        instance.avatar = validated_data.get('avatar', instance.avatar)
        instance.save()
        return instance
