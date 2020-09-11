from django.contrib import admin
from django.urls import path,include
from . import views
from django.contrib.auth.views import PasswordResetView, PasswordResetDoneView, PasswordResetConfirmView

urlpatterns = [
    path('login',views.login,name='login'),
    path('after_login',views.after_login,name='after_login'),
    path('addp',views.addp,name='addp'),
    path('addo',views.addo,name='addo'),
    path('fetch_p_user',views.fetch_p_user,name='fetch_p_user'),
    path('fetch_o_user',views.fetch_o_user,name='fetch_o_user'),
    path('delete_f',views.delete_f,name='delete_f'),
    path('delete_h',views.delete_h,name='delete_h'),
    path('delete_c',views.delete_c,name='delete_c'),
    path('delete_p',views.delete_p,name='delete_p'),
    path('delete_o',views.delete_o,name='delete_o'),
    path('update_c',views.update_c,name='update_c'),
    path('update_f',views.update_f,name='update_f'),
    path('update_h',views.update_h,name='update_h'),
    path('update_p',views.update_p,name='update_p'),
    path('update_o',views.update_o,name='update_o'),
    path('addc1',views.addc1,name='addc1'),
    path('addf',views.addf,name='addf'),
    path('addh',views.addh,name='addh'),
    path('fetch_h_user',views.fetch_h_user,name='fetch_h_user'),
    path('fetch_f_user',views.fetch_f_user,name='fetch_f_user'),
    path('fetch_c_user',views.fetch_c_user,name='fetch_c_user'),
    path('logout1',views.logout1,name='logout1'),
    path('forgot_pass',views.forgot_pass,name='forgot_pass'),
    path('back1',views.back1,name='back1'),
    path('back',views.back,name='back'),
    path('profile',views.profile,name='profile'),
    path('update_pro',views.update_pro,name='update_pro'),
    path('pro_back',views.pro_back,name='pro_back'),
    path('deactivate',views.deactivate,name='deactivate')

#path('password_reset_complete',auth_views.password_reset_complete,name='password_reset_complete')


]
