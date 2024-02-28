from django.db import models

# Create your models here.
class Student(models.Model):
    name=models.CharField(max_length=255)
    email_id=models.CharField(max_length=255)
    city=models.CharField(max_length=100)