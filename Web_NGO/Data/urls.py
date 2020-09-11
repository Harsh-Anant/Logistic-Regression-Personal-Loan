"""PRONgo URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include
from . import views

urlpatterns = [
    path('fetch_p',views.fetch_p,name='fetch_p'),
    path('fetch_o',views.fetch_o,name='fetch_o'),
    path('fetch_o_item',views.fetch_o_item,name='fetch_o_item'),
    path('fetch_p_item',views.fetch_p_item,name='fetch_p_item'),
    path('fetch_c/',views.fetch_c,name='fetch_c'),
    path('fetch_h/back1',views.back1,name='back1'),
    path('fetch_c/back1',views.back1,name='back1'),
    path('fetch_f/back1',views.back1,name='back1'),
     path('fetch_h/',views.fetch_h,name='fetch_h'),
    path('fetch_f/',views.fetch_f,name='fetch_f'),
    path('fetch_c_item',views.fetch_c_item,name='fetch_c_item'),
    path('fetch_f_item',views.fetch_f_item,name='fetch_f_item'),
    path('back1',views.back1,name='back1'),
    path('contact',views.contact,name='contact'),
    path('fetch_h_rent',views.fetch_h_rent,name='fetch_h_rent'),

]
