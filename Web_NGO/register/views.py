from django.shortcuts import render
from Data.models import Cloth,Food,Home,Profile
from django.contrib.auth.models import User,auth
from django.contrib import messages
from django.http import JsonResponse,HttpResponse
import json
from django.shortcuts import render,redirect

# Create your views here.
def index(request):
    return render(request,'register1.html')

def back(request):
    return redirect('/')

def register1(request):
    if request.is_ajax() and request.method=='POST':
        f_name=request.POST['f_name']
        l_name=request.POST['l_name']
        u_name=request.POST['user_name']
        password=request.POST['password']
        email=request.POST['email']
        c_pass=request.POST['c_password']
        address=request.POST['address']
        ph=request.POST['phone']


        
        if User.objects.filter(username=u_name).exists():
            #return render(request,'register.html',{'Error':'The above username already exists'})
            return  JsonResponse({'name':'The above username already exists'})
        elif User.objects.filter(email=email).exists():
            #return render(request,'register.html',{'Error':'The above email already exists'})
            return  JsonResponse({'name':'The above email already exists'})
        elif c_pass!=password:
            #return render(request,'register.html',{'Error':'The password and confirm password are not same'})
            return  JsonResponse({"name":"The passwords don't match"})
        else:
            x=User.objects.create_user(username=u_name,password=password,email=email,first_name=f_name,last_name=l_name)
            y=Profile.objects.create(u_name=u_name,address=address,mobile=ph)
            x.save()
            y.save()
            return  JsonResponse({'name':'Successfully Registered'})

