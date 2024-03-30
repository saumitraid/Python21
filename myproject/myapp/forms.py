from django import forms
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm, UserChangeForm
from . models import CustomUser

class MyRegFrm(UserCreationForm):
    username=forms.CharField(
        label=("Username"),
        widget=forms.TextInput(attrs={'class':'form-control border-primary'})
    )
    first_name=forms.CharField(
        label=("First Name"),
        widget=forms.TextInput(attrs={'class':'form-control border-primary'})
    )
    last_name=forms.CharField(
        label=("Last Name"),
        widget=forms.TextInput(attrs={'class':'form-control border-primary'})
    )
    email=forms.CharField(
        label=("Email-ID"),
        widget=forms.EmailInput(attrs={'class':'form-control border-primary'})
    )
    mobile=forms.CharField(
        label=("Contact Number"),
        widget=forms.NumberInput(attrs={'class':'form-control border-primary'})
    )
    password1=forms.CharField(
        label=("Password"),
        widget=forms.PasswordInput(attrs={'class':'form-control border-primary'})
    )
    password2=forms.CharField(
        label=("Confirm Password"),
        widget=forms.PasswordInput(attrs={'class':'form-control border-primary'})
    )
    class Meta:
        model = CustomUser
        fields = ("username", "first_name", "last_name", "email", "mobile")

class MyLogFrm(AuthenticationForm):
    username=forms.CharField(
        label=("Username"),
        widget=forms.TextInput(attrs={'class':'form-control border-primary'})
    )
    password=forms.CharField(
        label=("Password"),
        widget=forms.PasswordInput(attrs={'class':'form-control border-primary'})
    )

class MyChngFrm(UserChangeForm):
    password=None
    username=None
    first_name=forms.CharField(
        label=("First Name"),
        widget=forms.TextInput(attrs={'class':'form-control border-primary'})
    )
    last_name=forms.CharField(
        label=("Last Name"),
        widget=forms.TextInput(attrs={'class':'form-control border-primary'})
    )
    email=forms.CharField(
        label=("Email-ID"),
        widget=forms.EmailInput(attrs={'class':'form-control border-primary'})
    )
    mobile=forms.CharField(
        label=("Contact Number"),
        widget=forms.NumberInput(attrs={'class':'form-control border-primary'})
    )

    class Meta:
        model = CustomUser
        fields = ("first_name", "last_name","email","mobile")