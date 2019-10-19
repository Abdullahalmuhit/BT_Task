from rest_framework import serializers

from bytetrekapp.models import BytetrekUser

import django_filters



class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = BytetrekUser
        fields = ['id', 'name', 'email', 'phone', 'address']


