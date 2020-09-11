from django.contrib import admin
from .models import Food,Home,Cloth,PPE,Other_item,Profile
#admin.site.register(Food)
#admin.site.register(Home)
#admin.site.register(Cloth)
#admin.site.register(PPE)
#admin.site.register(Other_item)

class FoodAdmin(admin.ModelAdmin):
    list_display=('u_name','item_name','item_quamntity','perishable','expiry_date','typ','ph_no','address','created_on','updated_on')
admin.site.register(Food,FoodAdmin)

class ClothAdmin(admin.ModelAdmin):
    list_display=('u_name','c_name','c_quantity','category','size','ph_no','address','created_on','updated_on')
admin.site.register(Cloth,ClothAdmin)

class HomeAdmin(admin.ModelAdmin):
    list_display=('u_name','house_location','size','description','rent','ph_no','address','created_on','updated_on')
admin.site.register(Home,HomeAdmin)

class PPEAdmin(admin.ModelAdmin):
    list_display=('u_name','kiit_name','kiit_quantity','ph_no','address','created_on','updated_on')
admin.site.register(PPE,PPEAdmin)

class Other_itemAdmin(admin.ModelAdmin):
    list_display=('u_name','item_name','item_quantity','ph_no','address','created_on','updated_on')
admin.site.register(Other_item,Other_itemAdmin)

class ProfileAdmin(admin.ModelAdmin):
    list_display=('u_name','mobile','address')
admin.site.register(Profile,ProfileAdmin)
