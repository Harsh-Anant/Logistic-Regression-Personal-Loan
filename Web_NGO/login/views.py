from django.shortcuts import render,redirect
from django.contrib.auth.models import User
from Data.models import Cloth,Food,Home,PPE,Other_item,Profile
from django.contrib import auth
from django.contrib.auth import login as auth_login
from django.http import JsonResponse,HttpResponse
from django.contrib.auth import logout
from django.contrib.auth.decorators import login_required
from django.views.decorators.cache import cache_control

# Create your views here.
def pro_back(request):
    return render(request,'profile.html')
def update_pro(request):
    if request.method=='POST' and request.is_ajax:
        if request.user.is_authenticated:
            x=User.objects.get(username=request.user.username)
            y=Profile.objects.get(u_name=request.user.username)
            b=0
            d=0
            if request.POST['f_name']:
                x.first_name=request.POST['f_name']
                b=1
            if request.POST['l_name']:
                x.last_name=request.POST['l_name']
                b=1
            if request.POST['email']:
                a=User.objects.filter(email=request.POST['email'])
                if a:
                    return JsonResponse({'Error':'The entered mail already exists'})
                else:
                    x.email=request.POST['email']
                    b=1
            if request.POST['address']:
                y.address=request.POST['address']
                d=1
            if request.POST['ph_no']:
                y.mobile=request.POST['ph_no']
                if Home.objects.filter(u_name=request.user.username).exists():
                    Home.objects.filter(u_name=request.user.username).update(ph_no=request.POST['ph_no'])
                if Cloth.objects.filter(u_name=request.user.username).exists():
                    Cloth.objects.filter(u_name=request.user.username).update(ph_no=request.POST['ph_no'])
                if Food.objects.filter(u_name=request.user.username).exists():
                    Food.objects.filter(u_name=request.user.username).update(ph_no=request.POST['ph_no'])
                if PPE.objects.filter(u_name=request.user.username).exists():
                    PPE.objects.filter(u_name=request.user.username).update(ph_no=request.POST['ph_no'])
                if Other_item.objects.filter(u_name=request.user.username).exists():
                    Other_item.objects.filter(u_name=request.user.username).update(ph_no=request.POST['ph_no'])
                d=1
            if b==0 and d==0:
                return JsonResponse({'Error':'Enter atleast 1 value.'})
            if b==1:
                x.save()
            if d==1:
                y.save()
            return JsonResponse({'Error':'Updated Successfully'})
    else:
        return render(request,'update_pro.html')

@cache_control(no_cache=True,must_revalidate=True,no_store=True)
@login_required(login_url='login')
def profile(request):
    if request.user.is_authenticated:
        a=User.objects.filter(username=request.user.username)
        b=Profile.objects.filter(u_name=request.user.username)
        return render(request,'profile.html',{'User':a,'Profile':b})        
def forgot_pass(request):
    if request.method=='POST' and request.is_ajax():
        if User.objects.filter(username=request.POST['user_name'],email=request.POST['email']).exists():
            if request.POST['password']==request.POST['c_password']:
                u=User.objects.filter(username=request.POST['user_name'])
                user=u[0]
                user.set_password(request.POST['password'])
                user.save()
                return JsonResponse({'name':'login'})
            else:
                return JsonResponse({'name':'The two passwords doesnt match.'})
        else:
            return JsonResponse({'name':'Either username or email is wrong.'})

    else:
        return render(request,'forgot_pass.html')
def back1(request):
    return redirect('after_login')
def back(request):
    return redirect('/')


@cache_control(no_cache=True,must_revalidate=True,no_store=True)
@login_required(login_url='login')
def after_login(request):
    return render(request,'after_login1.html')


def login(request):
    if request.method=='POST' and request.is_ajax():
        username=request.POST['user_name']
        password1=request.POST['password']
        x=auth.authenticate(username=username,password=password1)
        if x is None:
            return JsonResponse({'name':'Not a valid account.'})
        elif request.user.is_authenticated:
            return JsonResponse({'name':request.user.username+' is already logged in.'})
        else:
            auth_login(request,x)
            return JsonResponse({'name':'after_login'})
    else:
        return render(request,'login1.html')

def logout1(request):
    logout(request)
    return redirect('/')


def addc1(request):
    if request.method=='POST' and request.is_ajax():
        i=0
        if request.user.is_authenticated:
            x=Profile.objects.get(u_name=request.user.username)
        
            while(1):
                C_name=''
                C_quantity=''
                Category=''
                Size=''
                address=''
                if 'c_name'+str(i) in request.POST:
                    C_name=request.POST['c_name'+str(i)]
                    if 'c_quantity'+str(i) in request.POST:
                        C_quantity=request.POST['c_quantity'+str(i)]
                    if 'category'+str(i) in request.POST:
                        Category=request.POST['category'+str(i)]
                    if 'size'+str(i) in request.POST:
                        Size=request.POST['size'+str(i)]
                    if 'address'+str(i) in request.POST:
                        address=request.POST['address'+str(i)]
                    Cloth.objects.create(u_name_id=request.user.username,c_name=C_name,c_quantity=C_quantity,category=Category,size=Size,address=address,ph_no=x.mobile,status='Available')
                    i+=1
                else:
                    break
            if i!=0:
                return JsonResponse({'message':'Thanku '+request.user.username+' for ur help, ur added items will be available publicly soon.'})
            else:
                return JsonResponse({'message':'Please enter some values.'})
        else:
            return JsonResponse({'message':'U are not logged in.'})

    
    
    else :
        return render(request,'add_cloth.html',{'Error':request.user.username})

def addf(request):
    if request.method=='POST' and request.is_ajax():
        i=0
        if request.user.is_authenticated:
            x=Profile.objects.get(u_name=request.user.username)
            while(1):
                F_name=''
                F_quantity=''
                Expiry=''
                Type=''
                address=''
                Per=''
                if 'f_name'+str(i) in request.POST:
                    F_name=request.POST['f_name'+str(i)]
                    if 'f_quantity'+str(i) in request.POST:
                        F_quantity=request.POST['f_quantity'+str(i)]
                    if 'perishable'+str(i) in request.POST:
                        Per=request.POST['perishable'+str(i)]
                    if 'expiry'+str(i) in request.POST:
                        Expiry=request.POST['expiry'+str(i)]
                    if 'type'+str(i) in request.POST:
                        Type=request.POST['type'+str(i)]
                    if 'address'+str(i) in request.POST:
                        address=request.POST['address'+str(i)]
                    Food.objects.create(u_name_id=request.user.username,item_name=F_name,item_quamntity=F_quantity,perishable=Per,expiry_date=Expiry,typ=Type,ph_no=x.mobile,address=address,status='Available')
                    i+=1
                else:
                    break
            if i!=0:
                return JsonResponse({'message':'Thanku '+request.user.username+' for ur help, ur added items will be available publicly soon.'})
            else:
                return JsonResponse({'message':'Please enter some values.'})
        else:
            return JsonResponse({'message':'U are not logged in.'})
   
    else :
        return render(request,'add_food.html',{'Error':request.user.username})

def addh(request):
    if request.method=='POST' and request.is_ajax():
        address=request.POST['address']
        i=0
        if request.user.is_authenticated:
            x=Profile.objects.get(u_name=request.user.username)
            while(1):
                Location=''
                Size=''
                Des=''
                Rent=0
                if 'h_location'+str(i) in request.POST:
                    Location=request.POST['h_location'+str(i)]
                    if 'size'+str(i) in request.POST:
                        Size=request.POST['size'+str(i)]
                    if 'description'+str(i) in request.POST:
                        Des=request.POST['description'+str(i)]
                    if 'rent'+str(i) in request.POST:
                        Rent=request.POST['rent'+str(i)]
                    Home.objects.create(u_name_id=request.user.username,house_location=Location,size=Size,rent=Rent,ph_no=x.mobile,address=address,description=Des,status='Available')
                    i+=1
                else:
                    break
            if i!=0:
                return JsonResponse({'message':'Thanku '+request.user.username+' for ur help, ur added items will be available publicly soon.'})
            else:
                return JsonResponse({'message':'Please enter some values.'})
        else:
            return JsonResponse({'message':'U are not logged in.'})
    
    
    else :
        return render(request,'add_house.html',{'Error':request.user.username})

#def fetch_c(request):
#       cloths=Cloth.objects.all()
#      return render(request,"fetch_c.html",{'Clothes':cloths}) 
    
#def fetch_f(request):
#       foods=Food.objects.all()
#        return render(request,"fetch_f.html",{'Foods':foods}) 

#def fetch_h(request):
#        houses=Home.objects.all()
#        return render(request,"fetch_h.html",{'Houses':houses}) 
    
def fetch_h_user(request):
    if request.user.is_authenticated:
        houses=Home.objects.filter(u_name=request.user.username)
        if houses:
            return render(request,"fetch_h.html",{'Houses':houses}) 
        else:
            return render(request,'fetch_h.html',{'Error':request.user.username+' have no added data'})
    else:
        return render(request,'fetch_h.html',{'Error':'U are not logged in.'})


def fetch_f_user(request):
    if request.user.is_authenticated:
        foods=Food.objects.filter(u_name=request.user.username)
        if foods:
            return render(request,"fetch_f.html",{'Foods':foods}) 
        else:
            return render(request,'fetch_f.html',{'Error':request.user.username+' have no data added'})


    else:
        return render(request,'fetch_f.html',{'Error':'U are not logged in.'})

def fetch_c_user(request):
    if request.user.is_authenticated:
        cloths=Cloth.objects.filter(u_name=request.user.username)
        if cloths:
            return render(request,"fetch_c.html",{'Clothes':cloths})
        else:
            return render(request,'fetch_c.html',{'Error':request.user.username+' have no data added.'})
    else:
        return render(request,"fetch_c.html",{'Error':'U are not logged in.'})
        



def delete_f(request):
    if request.method=='POST' and request.is_ajax():
        a=request.POST['id']
        if request.user.is_authenticated:
            if (Food.objects.filter(u_name=request.user.username,id=a).exists())==False:
                return JsonResponse({'name':request.user.username+' have no record with this id.'})
            else:
                Food.objects.filter(id=a).delete()
                return JsonResponse({'name':'Successfully Deleted.'})
        else:
            return JsonResponse({'name':'U are not logged in.'})
    
    if  request.user.is_authenticated:
        cloths=Food.objects.filter(u_name=request.user.username)
        if cloths:
            return render(request,"delete_f.html",{'Foods':cloths})
        else:
            return render(request,'delete_f.html',{'Error':request.user.username+' have no data added.'})
    else:
        return render(request,'delete_f.html',{'Error':'U r not logged in.'})


def delete_h(request):
    if request.method=='POST' and request.is_ajax():
        a=request.POST['id']
        if request.user.is_authenticated:
            if (Home.objects.filter(u_name=request.user.username,id=a).exists())==False:
                return JsonResponse({'name':request.user.username+' have no record with this id.'})
            else:
                Home.objects.filter(id=a).delete()
                return JsonResponse({'name':'Successfully Deleted.'})
        else:
            return JsonResponse({'name':'U are not logged in.'})
    
    if  request.user.is_authenticated:
        cloths=Home.objects.filter(u_name=request.user.username)
        if cloths:
            return render(request,"delete_h.html",{'Houses':cloths})
        else:
            return render(request,'delete_h.html',{'Error':request.user.username+' have no data added.'})
    else:
        return render(request,'delete_h.html',{'Error':'U r not logged in.'})

def delete_c(request):
    if request.method=='POST' and request.is_ajax():
        a=request.POST['id']
        if request.user.is_authenticated:
            if (Cloth.objects.filter(u_name=request.user.username,id=a).exists())==False:
                return JsonResponse({'name':request.user.username+' have no record with this id.'})
            else:
                Cloth.objects.filter(id=a).delete()
                return JsonResponse({'name':'Successfully Deleted.'})
        else:
            return JsonResponse({'name':'U are not logged in.'})
    
    if  request.user.is_authenticated:
        cloths=Cloth.objects.filter(u_name=request.user.username)
        if cloths:
            return render(request,"delete_c.html",{'Clothes':cloths})
        else:
            return render(request,'delete_c.html',{'Error':request.user.username+' have no data added.'})
    else:
        return render(request,'delete_c.html',{'Error':'U r not logged in.'})

def update_c(request):
    if request.method=='POST' and request.is_ajax():
        a=request.POST['id']
        if request.user.is_authenticated:
            if (Cloth.objects.filter(u_name=request.user.username,id=a).exists())==False:
                return JsonResponse({'name':request.user.username+' have no data with this id.'})
            else:
                b=0
                a=Cloth.objects.get(id=request.POST['id'])
                if request.POST['c_name']:
                    b=1
                    a.c_name=request.POST['c_name']
                if request.POST['c_quantity']:
                    b=1
                    a.c_quantity=request.POST['c_quantity']
                if request.POST['category']:
                    b=1
                    a.category=request.POST['category']
                if request.POST['size']:
                    b=1
                    a.size=request.POST['size']
                if request.POST['address']:
                    b=1
                    a.address=request.POST['address']
                if request.POST['status']:
                    b=1
                    a.status=request.POST['status']
                if b==1:
                    a.save()
                    return JsonResponse({'name':'Updated Successfully.'})
                else:
                    return JsonResponse({'name':'Enter atleast 1 value.'})
            
        else:
            return JsonResponse({'name':'U are not logged in.'})
    if  request.user.is_authenticated:
        cloths=Cloth.objects.filter(u_name=request.user.username)
        if cloths:
            return render(request,"update_c.html",{'Clothes':cloths})
        else:
            return render(request,'update_c.html',{'Error':request.user.username+' have no data added.'})
    else:
        return render(request,'update_c',{'Error':'U r not logged in.'})

def update_h(request):
    if request.method=='POST' and request.is_ajax():
        a=request.POST['id']
        if request.user.is_authenticated:
            if (Home.objects.filter(u_name=request.user.username,id=a).exists())==False:
                return JsonResponse({'name':request.user.username+' have no data with this id.'})
            else:
                b=0
                a=Home.objects.get(id=request.POST['id'])
                if request.POST['house_location']:
                    b=1
                    a.house_location=request.POST['house_location']
                if request.POST['size']:
                    b=1
                    a.size=request.POST['size']
                if request.POST['description']:
                    b=1
                    a.description=request.POST['description']
                if request.POST['rent']:
                    b=1
                    a.rent=request.POST['rent']
                if request.POST['address']:
                    b=1
                    a.address=request.POST['address']
                if request.POST['status']:
                    b=1
                    a.status=request.POST['status']
                if b==1:
                    a.save()
                    return JsonResponse({'name':'Updated Successfully.'})
                else:
                    return JsonResponse({'name':'Enter atleast 1 value.'})
        else:
            return JsonResponse({'name':'U are not logged in.'})
    
    if  request.user.is_authenticated:
        cloths=Home.objects.filter(u_name=request.user.username)
        if cloths:
            return render(request,"update_h.html",{'Houses':cloths})
        else:
            return render(request,'update_h.html',{'Error':request.user.username+' have no data added.'})
    else:
        return render(request,'update_h.html',{'Error':'U r not logged in.'})

def update_f(request):
    if request.method=='POST' and request.is_ajax():
        a=request.POST['id']
        if request.user.is_authenticated:
            if (Food.objects.filter(u_name=request.user.username,id=a).exists())==False:
                return JsonResponse({'name':request.user.username+' have no data with this id.'})
            else:
                b=0
                a=Food.objects.get(id=request.POST['id'])
                if request.POST['item_name']:
                    b=1
                    a.item_name=request.POST['item_name']
                if request.POST['item_quamntity']:
                    b=1
                    a.item_quamntity=request.POST['item_quamntity']
                if request.POST['perishable']:
                    b=1
                    a.perishable=request.POST['perishable']
                if request.POST['expiry_date']:
                    b=1
                    a.expiry_date=request.POST['expiry_date']
                if request.POST['typ']:
                    b=1
                    a.typ=request.POST['typ']
                if request.POST['address']:
                    b=1
                    a.address=request.POST['address']
                if request.POST['status']:
                    b=1
                    a.status=request.POST['status']
                if b==1:
                    a.save()
                    return JsonResponse({'name':'Updated Successfully.'})
                else:
                   return JsonResponse({'name':'Enter atleast 1 value.'})
            
        else:
            return JsonResponse({'name':'U are not logged in.'})
    
    if  request.user.is_authenticated:
        cloths=Food.objects.filter(u_name=request.user.username)
        if cloths:
            return render(request,"update_f.html",{'Foods':cloths})
        else:
            return render(request,'update_f.html',{'Error':request.user.username+' have no data added.'})
    else:
        return render(request,'update_f.html',{'Error':'U r not logged in.'})

def addp(request):
    if request.method=='POST' and request.is_ajax():
        i=0
        if request.user.is_authenticated:
            x=Profile.objects.get(u_name=request.user.username)        
            while(1):
                C_name=''
                C_quantity=''
                address=''
                if 'p_name'+str(i) in request.POST:
                    C_name=request.POST['p_name'+str(i)]
                    if 'p_quantity'+str(i) in request.POST:
                        C_quantity=request.POST['p_quantity'+str(i)]
                    if 'address'+str(i) in request.POST:
                        address=request.POST['address'+str(i)]
                    PPE.objects.create(u_name_id=request.user.username,kiit_name=C_name,kiit_quantity=C_quantity,address=address,ph_no=x.mobile,status='Available')
                    i+=1
                else:
                    break
            if i!=0:
                return JsonResponse({'message':'Thanku '+request.user.username+' for ur help, ur added items will be available publically soon.'})
            else:
                return JsonResponse({'message':'Please enter some values.'})
        else:
            return JsonResponse({'message':'U are not logged in.'})

    
    
    else :
        return render(request,'add_ppe.html',{'Error':request.user.username})

def addo(request):
    if request.method=='POST' and request.is_ajax():
        i=0
        if request.user.is_authenticated:
            
            x=Profile.objects.get(u_name=request.user.username)
            while(1):
                C_name=''
                C_quantity=''
                address=''
                if 'o_name'+str(i) in request.POST:
                    C_name=request.POST['o_name'+str(i)]
                    if 'o_quantity'+str(i) in request.POST:
                        C_quantity=request.POST['o_quantity'+str(i)]
                    if 'address'+str(i) in request.POST:
                        address=request.POST['address'+str(i)]
                    Other_item.objects.create(u_name_id=request.user.username,item_name=C_name,item_quantity=C_quantity,address=address,ph_no=x.mobile,status='Available')
                    i+=1
                else:
                    break
            if i!=0:
                return JsonResponse({'message':'Thanku '+request.user.username+' for ur help, ur added items will be available publically soon.'})
            else:
                return JsonResponse({'message':'Please enter some values.'})
        else:
            return JsonResponse({'message':'U are not logged in.'})

    
    
    else :
        return render(request,'add_other.html',{'Error':request.user.username})


def fetch_p_user(request):
    if request.user.is_authenticated:
        cloths=PPE.objects.filter(u_name=request.user.username)
        if cloths:
            return render(request,"fetch_p.html",{'Kits':cloths})
        else:
            return render(request,'fetch_p.html',{'Error':request.user.username+' have no data added.'})
    
    else:
        return render(request,'fetch_p.html',{'Error':'U r not logged in.'})
        
def fetch_o_user(request):
    if request.user.is_authenticated:
        cloths=Other_item.objects.filter(u_name=request.user.username)
        if cloths:
            return render(request,"fetch_o.html",{'Items':cloths})
        else:
            return render(request,'fetch_o.html',{'Error':request.user.username+' have no data added.'})
    
    else:
        return render(request,'fetch_o.html',{'Error':'U r not logged in.'})
    

        


def delete_p(request):
    if request.method=='POST' and request.is_ajax():
        a=request.POST['id']
        if request.user.is_authenticated:
            if (PPE.objects.filter(u_name=request.user.username,id=a).exists())==False:
                return JsonResponse({'name':request.user.username+' have no record with this id.'})
            else:
                PPE.objects.filter(id=a).delete()
                return JsonResponse({'name':'Successfully Deleted.'})
        else:
            return JsonResponse({'name':'U are not logged in.'})
    
    if  request.user.is_authenticated:
        cloths=PPE.objects.filter(u_name=request.user.username)
        if cloths:
            return render(request,"delete_p.html",{'Kits':cloths})
        else:
            return render(request,'delete_p.html',{'Error':request.user.username+' have no data added.'})
    else:
        return render(request,'delete_p.html',{'Error':'U r not logged in.'})

def delete_o(request):
    if request.method=='POST' and request.is_ajax():
        a=request.POST['id']
        if request.user.is_authenticated:
            if (Other_item.objects.filter(u_name=request.user.username,id=a).exists())==False:
                return JsonResponse({'name':request.user.username+' have no record with this id.'})
            else:
                Other_item.objects.filter(id=a).delete()
                return JsonResponse({'name':'Successfully Deleted.'})
        else:
            return JsonResponse({'name':'U are not logged in.'})
    
    if  request.user.is_authenticated:
        cloths=Other_item.objects.filter(u_name=request.user.username)
        if cloths:
            return render(request,"delete_o.html",{'Items':cloths})
        else:
            return render(request,'delete_o.html',{'Error':request.user.username+' have no data added.'})
    else:
        return render(request,'delete_o.html',{'Error':'U r not logged in.'})

def update_p(request):
    if request.method=='POST' and request.is_ajax():
        a=request.POST['id']
        if request.user.is_authenticated:
            if (PPE.objects.filter(u_name=request.user.username,id=a).exists())==False:
                return JsonResponse({'name':request.user.username+' have no data with this id.'})
            else:
                b=0
                a=PPE.objects.get(id=request.POST['id'])
                if request.POST['c_name']:
                    b=1
                    a.kiit_name=request.POST['c_name']
                if request.POST['c_quantity']:
                    b=1
                    a.kiit_quantity=request.POST['c_quantity']
                if request.POST['address']:
                    b=1
                    a.address=request.POST['address']
                if request.POST['status']:
                    b=1
                    a.status=request.POST['status']
                if b==1:
                    a.save()
                    return JsonResponse({'name':'Updated Successfully.'})
                else:
                    return JsonResponse({'name':'Enter atleast 1 value.'})
            
        else:
            return JsonResponse({'name':'U r not logged in.'})
    
    if  request.user.is_authenticated:
        cloths=PPE.objects.filter(u_name=request.user.username)
        if cloths:
            return render(request,"update_p.html",{'Kits':cloths})
        else:
            return render(request,'update_p.html',{'Error':request.user.username+' have no data added.'})
    else:
        return render(request,'update_p.html',{'Error':'U r not logged in.'})

    
    
def update_o(request):
    if request.method=='POST' and request.is_ajax():
        a=request.POST['id']
        if request.user.is_authenticated:
            if (Other_item.objects.filter(u_name=request.user.username,id=a).exists())==False:
                return JsonResponse({'name':request.user.username+' have no data with this id.'})
            else:
                b=0
                a=Other_item.objects.get(id=request.POST['id'])
                if request.POST['c_name']:
                    b=1
                    a.item_name=request.POST['c_name']
                if request.POST['c_quantity']:
                    b=1
                    a.item_quantity=request.POST['c_quantity']
                if request.POST['address']:
                    b=1
                    a.address=request.POST['address']
                if request.POST['status']:
                    b=1
                    a.status=request.POST['status']
                if b==1:
                    a.save()
                    return JsonResponse({'name':'Updated Successfully.'})
                else:
                    return JsonResponse({'name':'Enter atleast 1 value.'})
            
        else:
            return JsonResponse({'name':'U are not logged in.'})
    
    if  request.user.is_authenticated:
        cloths=Other_item.objects.filter(u_name=request.user.username)
        if cloths:
            return render(request,"update_o.html",{'Items':cloths})
        else:
            return render(request,'update_o.html',{'Error':request.user.username+' have no data added.'})
    else:
        return render(request,'update_o.html',{'Error':'U r not logged in.'})

def deactivate(request):
    if request.method=='POST' and request.user.is_authenticated:
        a=request.user.username
        if Home.objects.filter(u_name=request.user.username).exists():
            Home.objects.filter(u_name=request.user.username).delete()
        if Food.objects.filter(u_name=request.user.username).exists():
            Food.objects.filter(u_name=request.user.username).delete()
        if Cloth.objects.filter(u_name=request.user.username).exists():
            Cloth.objects.filter(u_name=request.user.username).delete()
        if PPE.objects.filter(u_name=request.user.username).exists():
            PPE.objects.filter(u_name=request.user.username).delete()
        if Other_item.objects.filter(u_name=request.user.username).exists():
            Other_item.objects.filter(u_name=request.user.username).delete()
        logout(request)
        Profile.objects.filter(u_name=a).delete()
        User.objects.filter(username=a).delete()
        return redirect('/')
    else:
        return render(request,"deactivate.html")



