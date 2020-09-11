from django.shortcuts import render,redirect
from Data.models import Cloth,Food,Home,PPE,Other_item
from django.contrib.auth.models import User
from django.http import HttpResponse,JsonResponse
from django.db.models import Q
import datetime
import numpy as np
from datetime import datetime,timedelta
# Create your views here.
def back1(request):
    return redirect('home')

def contact(request):
    return render(request,'contact.html')

def fetch_c(request):
    if request.method=='GET' and request.is_ajax():
        if request.GET.get('view_code')=="#$*%q1a2z3":
            print("hi")
            cloths=Cloth.objects.filter(created_on__lte=datetime.now()-timedelta(days=2)).values()                                                           #~Q(created_on=datetime.date.today()))
            if cloths:
                return JsonResponse({'Clothes':list(cloths)}) 
            else:
                return JsonResponse({'Clothes':'No Data Available'})
        else:
            return JsonResponse({'Clothes':'It seems that u r not authorized by Feedneedy.'})
    else:
        return render(request,"fetch_c.html") 
    
def fetch_f(request):
    if request.method=='GET' and request.is_ajax():
        if request.GET.get('view_code')=="#$*%q1a2z3":
            foods=Food.objects.filter(created_on__lte=datetime.now()-timedelta(days=2)).values()
            if foods:
                return JsonResponse({'Foods':list(foods)})
            else:
                return JsonResponse({'Foods':'No Data Available'})
        else:
            return JsonResponse({'Foods':'It seems that u r not authorized by Feedneedy.'})
    else:                                                    #~Q(created_on=datetime.date.today())
        return render(request,"fetch_f.html") 

def fetch_h(request):
    if request.method=='GET' and request.is_ajax():
        if request.GET.get('view_code')=="#$*%q1a2z3":
            houses=Home.objects.filter(created_on__lte=datetime.now()-timedelta(days=2)).values()
            if houses:
                return JsonResponse({'Items':list(houses)})
            else:
                return JsonResponse({'Items':'No Data Available'})
        else:
            return JsonResponse({'Items':'It seems that u r not authorized by Feedneedy.'})
    else:                                                    #~Q(created_on=datetime.date.today())
        return render(request,"fetch_h.html") 
    

def fetch_c_item(request):
    if request.method=='GET' and request.is_ajax():
        if request.GET.get('view_code')=="#$*%q1a2z3":
            a=request.GET.get('item_name')
            z=request.GET.get('ph_no')
            if a and z:
                return JsonResponse({'Clothes':'Enter atmost 1 field other than view code.'})
            elif a:
                b=Cloth.objects.filter(created_on__lte=datetime.now()-timedelta(days=2))
                c=[]
                j=0
                a=a.lower()
                for i in b:
                    if a in (i.c_name).lower():
                        c.append(i.id)
                        j=1
                if j==1:
                    n=Cloth.objects.filter(pk__in=c).values()
                    return JsonResponse({'Clothes':list(n)})
                else:
                    return JsonResponse({'Clothes':'No Data Available'})
            elif z:
                n=Cloth.objects.filter(ph_no=z).values()
                if n:
                    return JsonResponse({'Clothes':list(n)})
                else:
                    return JsonResponse({'Clothes':'No Data Available'})
            else:
                return JsonResponse({'Clothes':'Enter atmost 1 of the field.'})
        else:
            return JsonResponse({'Clothes':'It seems that u r not authorized by Feedneedy.'})
    else:
        return render(request,"fetch_c_item.html")

def fetch_f_item(request):
    if request.method=='GET' and request.is_ajax():
        if request.GET.get('view_code')=="#$*%q1a2z3":
            a=request.GET.get('item_name')
            z=request.GET.get('ph_no')
            if a and z:
                return JsonResponse({'Foods':'Enter atmost 1 field other than view code.'})
            elif a:
                b=Food.objects.filter(created_on__lte=datetime.now()-timedelta(days=2))
                c=[]
                j=0
                a=a.lower()
                for i in b:
                    if a in (i.item_name).lower():
                        c.append(i.id)
                        j=1
                if j==1:
                    n=Food.objects.filter(pk__in=c).values()
                    return JsonResponse({'Foods':list(n)})
                else:
                    return JsonResponse({'Foods':'No Data Available'})
            elif z:
                n=Food.objects.filter(ph_no=z).values()
                if n:
                    return JsonResponse({'Foods':list(n)})
                else:
                    return JsonResponse({'Foods':'No Data Available'})
            else:
                return JsonResponse({'Foods':'Enter atmost 1 of the field.'})
        else:
            return JsonResponse({'Foods':'It seems that u r not authorized by Feedneedy.'})
        
    else:
        return render(request,"fetch_f_item.html")




def fetch_p(request):
    if request.method=='GET' and request.is_ajax():
        if request.GET.get('view_code')=="#$*%q1a2z3":
            cloths=PPE.objects.filter(created_on__lte=datetime.now()-timedelta(days=2)).values()
            if cloths:
                return JsonResponse({'Kits':list(cloths)})
            else:
                return JsonResponse({'Kits':'No Data Available'}) 
        else:
            return JsonResponse({'Kits':'It seems that u r not authorized by Feedneedy.'})
    else:                                                    #~Q(created_on=datetime.date.today())
        return render(request,"fetch_p.html") 

def fetch_o(request):
    if request.method=='GET' and request.is_ajax():
        if request.GET.get('view_code')=="#$*%q1a2z3":
            cloths=Other_item.objects.filter(created_on__lte=datetime.now()-timedelta(days=2)).values()
            if cloths:
                return JsonResponse({'Items':list(cloths)})
            else:
                return JsonResponse({'Items':'No Data Available'})
        else:
            return JsonResponse({'Items':'It seems that u r not authorized by Feedneedy.'})
    else:                                                    #~Q(created_on=datetime.date.today())
        return render(request,"fetch_o.html") 


def fetch_p_item(request):
    if request.method=='GET' and request.is_ajax():
        if request.GET.get('view_code')=="#$*%q1a2z3":
            a=request.GET.get('item_name')
            z=request.GET.get('ph_no')
            if a and z:
                return JsonResponse({'Kits':'Enter atmost 1 field other than view code.'})
            elif a:
                b=PPE.objects.filter(created_on__lte=datetime.now()-timedelta(days=2))
                c=[]
                j=0
                a=a.lower()
                for i in b:
                    if a in (i.kiit_name).lower():
                        c.append(i.id)
                        j=1
                if j==1:
                    n=PPE.objects.filter(pk__in=c).values()
                    return JsonResponse({'Kits':list(n)})
                else:
                    return JsonResponse({'Kits':'No Data Available'})
            elif z:
                n=PPE.objects.filter(ph_no=z).values()
                if n:
                    return JsonResponse({'Kits':list(n)})
                else:
                    return JsonResponse({'Kits':'No Data Available'})
            else:
                return JsonResponse({'Kits':'Enter atmost 1 of the field.'})
        else:
            return JsonResponse({'Kits':'It seems that u r not authorized by Feedneedy.'})
    else:
        return render(request,"fetch_p_item.html")

def fetch_o_item(request):
    if request.method=='GET' and request.is_ajax():
        if request.GET.get('view_code')=="#$*%q1a2z3":
            a=request.GET.get('item_name')
            z=request.GET.get('ph_no')
            if request.GET['item_name'] and request.GET['ph_no']:
                print("i")
                return JsonResponse({'Items':'Enter atmost 1 field other than view code.'})
            elif a:
                b=Other_item.objects.filter(created_on__lte=datetime.now()-timedelta(days=2))
                c=[]
                j=0
                a=a.lower()
                for i in b:
                    if a in (i.item_name).lower():
                        c.append(i.id)
                        j=1
                if j==1:
                    n=Other_item.objects.filter(pk__in=c).values()
                    return JsonResponse({'Items':list(n)})
                else:
                    return JsonResponse({'Items':'No Data Available'})
            elif z:
                n=Other_item.objects.filter(ph_no=z).values()
                if n:
                    return JsonResponse({'Items':list(n)})
                else:
                    return JsonResponse({'Items':'No Data Available'})
            else:
                return JsonResponse({'Items':'Enter atmost 1 of the field.'})
        else:
            return JsonResponse({'Items':'It seems that u r not authorized by Feedneedy.'})
    else:
        return render(request,"fetch_o_item.html")
def fetch_h_rent(request):
    if request.method=='GET' and request.is_ajax():
        if request.GET.get('view_code')=="#$*%q1a2z3":
            a=request.GET.get('rent')
            z=request.GET.get('ph_no')
            if a and z:
                return JsonResponse({'Items':'Enter atmost 1 field other than view code.'})
            elif a:
                b=Home.objects.filter(created_on__lte=datetime.now()-timedelta(days=2),rent__range=[0,int(a)]).values()
                if b:
                    return JsonResponse({'Items':list(b)})
                else:
                    return JsonResponse({'Items':'No Data Available'})
                
            elif z:
                n=Home.objects.filter(ph_no=z).values()
                if n:
                    return JsonResponse({'Items':list(n)})
                else:
                    return JsonResponse({'Items':'No Data Available'})
            else:
                return JsonResponse({'Items':'Enter atmost 1 of the field.'})
            
        else:
            return JsonResponse({'Items':'It seems that u r not authorized by Feedneedy.'})
    else:
        return render(request,"fetch_h_rent.html")
