from django.shortcuts import render
from django.http import HttpResponse
from django.contrib import messages
from . models import Student

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