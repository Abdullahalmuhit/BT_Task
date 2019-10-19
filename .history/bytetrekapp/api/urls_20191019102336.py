from django.urls import path
from .views import (
    UserList,       
    UserDetailsView,
    UserDetailsNewView


  
)

urlpatterns = [
    path('', UserList.as_view()),
    path('list_detailsview/<int:pk>/', UserDetailsView.as_view()),
     path('list_detailsview/new', UserDetailsNewView.as_view()),
   
]
