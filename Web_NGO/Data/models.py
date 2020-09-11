from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone
# Create your models here.

class Profile(models.Model):
    u_name=models.CharField(max_length=10, primary_key=True, serialize=False)
    mobile=models.CharField(blank='True', max_length=10)
    address=models.TextField()
 


class Home(models.Model):
    u_name=models.ForeignKey(Profile,on_delete=models.CASCADE)
    house_location=models.TextField()
    size=models.TextField()
    description=models.TextField()
    rent=models.IntegerField()
    ph_no=models.CharField(max_length=10,default='0000000000')
    address=models.TextField(default='abcde')
    status=models.TextField(default='Available')
    created_on=models.DateField(auto_now_add=True)
    updated_on=models.DateTimeField(auto_now=True,null=True)

class Food(models.Model):
    u_name=models.ForeignKey(Profile,on_delete=models.CASCADE)
    item_name=models.TextField()
    item_quamntity=models.TextField()
    perishable=models.TextField(default='')
    expiry_date=models.DateField()
    typ=models.CharField(max_length=8)
    ph_no=models.CharField(max_length=10,default='0000000000')
    address=models.TextField(default='abcde')
    status=models.TextField(default='Available')
    created_on=models.DateField(auto_now_add=True)
    updated_on=models.DateTimeField(auto_now=True,null=True)



class Cloth(models.Model):
    u_name=models.ForeignKey(Profile,on_delete=models.CASCADE)
    c_name=models.TextField()
    c_quantity=models.TextField()
    category=models.TextField()
    size=models.TextField()
    ph_no=models.CharField(max_length=10,default='0000000000')
    address=models.TextField(default='abcde')
    status=models.TextField(default='Available')
    created_on=models.DateField(auto_now_add=True)
    updated_on=models.DateTimeField(auto_now=True,null=True)



class PPE(models.Model):
    u_name=models.ForeignKey(Profile,on_delete=models.CASCADE)
    kiit_name=models.TextField()
    kiit_quantity=models.TextField()
    ph_no=models.CharField(max_length=10,default='0000000000')
    address=models.TextField(default='abcde')
    status=models.TextField(default='Available')
    created_on=models.DateField(auto_now_add=True)
    updated_on=models.DateTimeField(auto_now=True,null=True)



class Other_item(models.Model):
    u_name=models.ForeignKey(Profile,on_delete=models.CASCADE)
    item_name=models.TextField()
    item_quantity=models.TextField()
    ph_no=models.CharField(max_length=10,default='0000000000')
    address=models.TextField(default='abcde')
    status=models.TextField(default='Available')
    created_on=models.DateField(auto_now_add=True)
    updated_on=models.DateTimeField(auto_now=True,null=True)



