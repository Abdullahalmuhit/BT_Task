import datetime
from rest_framework import generics
import random
from django.contrib.auth.models import User
from django.shortcuts import get_object_or_404
from django.db.models import Q

from bytetrekapp.models import BytetrekUser
from .serializers import (UserSerializer,
                          
                         
                          )
from .pagination import PostPagination, CommentPagination
from django.db.models import Q



class UserList(generics.ListAPIView):
    serializer_class = UserSerializer
    pagination_class = PostPagination

    def get_queryset(self):
        queryset = BytetrekUser.objects.all()
        return queryset
    
class UserDetailsView(generics.RetrieveDestroyAPIView):
    serializer_class = UserSerializer
    pagination_class = PostPagination

    def get_queryset(self):
        queryset = BytetrekUser.objects.all()
        return queryset

class UserDetailsNewView(generics.ListCreateAPIView):
    serializer_class = UserSerializer
    pagination_class = PostPagination

    def get_queryset(self):
        queryset = BytetrekUser.objects.all().order_by("-id")[:1]
        return queryset