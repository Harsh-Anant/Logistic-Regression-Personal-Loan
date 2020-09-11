from django.contrib import admin
from django.urls import path,include
from . import views

urlpatterns = [
    path('index',views.index,name='index'),
    path('register1',views.register1,name='register1'),
    path('back',views.back,name='back'),

    ]
