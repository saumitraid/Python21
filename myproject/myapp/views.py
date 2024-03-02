from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from . models import Student
from . forms import MyRegFrm

# Create your views here.

def home(request):
    return render(request, 'myapp/home.html')

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
    form=MyRegFrm()
    return(request, 'myapp/reg.html')