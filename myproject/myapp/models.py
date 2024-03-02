from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.

class CustomUser(AbstractUser):
    mobile=models.CharField(max_length=15)

class Student(models.Model):
    name=models.CharField(max_length=255)
    email_id=models.CharField(max_length=255)
    city=models.CharField(max_length=100)