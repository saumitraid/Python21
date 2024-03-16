from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from . models import Student
from . forms import MyRegFrm, MyLogFrm

# Create your views here.

def home(request):
    if request.user.is_authenticated:
        return render(request, 'myapp/home.html')
    else:
        return redirect('/login/')

def about(request):
    allStudent=Student.objects.all()
    return render(request, 'myapp/about.html',{'allStudent':allStudent})

# def contact(request):
#     if request.GET:
#         name=request.GET.get('name')
#         email_id=request.GET.get('email_id')
#         context={'name':name, 'email_id':email_id}
#         return render(request, 'myapp/contact.html', context)
#         # return HttpResponse('<h1>Your name and email is {} {}</h1>'.format(name,email_id))
#     else:
#         return render(request, 'myapp/contact.html')

def contact(request):
    if request.POST:
        obj=Student()
        obj.name=request.POST.get('name')
        obj.email_id=request.POST.get('email_id')
        obj.city=request.POST.get('city')
        try:
            obj.save()
            messages.success(request, 'Student data save successfully')
        except Exception as e:
            messages.error(request, e)
        return render(request, 'myapp/contact.html')
    else:
        return render(request, 'myapp/contact.html')

def updateData(request, id):
    if request.POST:
        name=request.POST.get('name')
        email_id=request.POST.get('email_id')
        city=request.POST.get('city')
        try:
            Student.objects.filter(id=id).update(name=name, email_id=email_id, city=city)
            messages.success(request, 'Student data update successfully')
            return redirect('/about')
        except Exception as e:
            messages.error(request, 'Student data not update successfully')
            return redirect('/about')
    else:
        # Select * FROM student WHERE id=id
        std=Student.objects.filter(id=id).get()
        return render(request, 'myapp/update.html', {'std':std})

def deleteData(request, id):
    try:
        Student.objects.filter(id=id).delete()
        messages.success(request, 'Student data delete successfully')
    except Exception as e:
        messages.error(request, 'Student data not delete successfully')
    return redirect('/about')

def userReg(request):
    if request.POST:
        form=MyRegFrm(request.POST)
        if form.is_valid():
            try:
                form.save()
                messages.success(request, 'Registration is successfull')
            except Exception :
                messages.error(request, 'Registration is unsuccessfull')
    else:
        form=MyRegFrm()
    return render(request, 'myapp/reg.html',{'form':form})


def userLog(request):
    if request.POST:
        form=MyLogFrm(request=request, data=request.POST)
        if form.is_valid():
            uname=form.cleaned_data['username']
            upass=form.cleaned_data['password']
            user=authenticate(username=uname, password=upass)
            if user is not None:
                login(request, user)
                return redirect('/')
        
    else:
        form=MyLogFrm()
    return render(request, 'myapp/log.html', {'form':form})

def userLogout(request):
    logout(request)
    return redirect('/login/')