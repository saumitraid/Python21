import razorpay
from django.conf import settings
from django.http import JsonResponse
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from . models import Student, Product, CartItem, Order
from . forms import MyRegFrm, MyLogFrm, MyChngFrm


# Create your views here.

def home(request):
    products=Product.objects.all()
    return render(request, 'myapp/home.html', {'products':products})
    

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

def add_to_cart(request, product_id):
	if request.user.is_authenticated:
		product = Product.objects.get(id=product_id)
		cart_item, created = CartItem.objects.get_or_create(product=product, 
                                                        user=request.user)
		cart_item.quantity += 1
		cart_item.save()
		return redirect('/cart')
	else:
		return redirect('/login')

def view_cart(request):
	if request.user.is_authenticated:
		cart_items = CartItem.objects.filter(user=request.user)
		total_price = sum(item.product.price * item.quantity for item in cart_items)
		total_price=int(total_price)
		return render(request, 'myapp/cart.html', {'cart_items': cart_items, 'total_price': total_price})
	else:
		return redirect('/login')
     
def remove_cart(request,id):
    if request.user.is_authenticated:
        cart_item = CartItem.objects.get(id=id, user=request.user)
        cart_item.delete()
        return redirect('/cart')
    else:
        return redirect('/login')


def chngPro(request):
    if request.user.is_authenticated:
        if request.POST:
            form = MyChngFrm(request.POST, instance=request.user)
            if form.is_valid():
                try:
                    form.save()
                    messages.success(request,'Profile Update successfully')
                except Exception as e:
                    messages.error(request, 'Profile Could Not Update successfully')
        else:
            form=MyChngFrm(instance=request.user)
        return render(request, 'myapp/changePro.html', {'form':form})
    else:
        return redirect('/login')


def initiate_payment(request):
    if request.method == "POST":
        amount = int(request.POST["amount"]) * 100  # Amount in paise
        address=request.POST['address']
        client = razorpay.Client(auth=(settings.RAZORPAY_API_KEY, settings.RAZORPAY_API_SECRET))

        payment_data = {
            "amount": amount,
            "currency": "INR",
            "receipt": "order_receipt",
            "notes": {
                "email": "user_email@example.com",
            },
        }

        order = client.order.create(data=payment_data)
        
        # Include key, name, description, and image in the JSON response
        response_data = {
            "id": order["id"],
            "amount": order["amount"],
            "currency": order["currency"],
            "key": settings.RAZORPAY_API_KEY,
            "name": "My Project",
            "description": "Payment for Your Product",
            "image": "https://yourwebsite.com/logo.png",  # Replace with your logo URL
        }
        cart_items=CartItem.objects.filter(user=request.user)
        # payment_id=response_data.id
        for cart in cart_items:
            Order.objects.get_or_create(user=request.user, product= cart.product, quantity=cart.quantity, payment_status='success', address=address)
        
        CartItem.objects.filter(user=request.user).delete()

        return JsonResponse(response_data)
    return redirect('myapp:viewCart.html')

def payment_success(request):
    return render(request, "myapp/payment_success.html")

def payment_failed(request):
    return render(request, "myapp/payment_failed.html")


def myOrders(request):
    if request.user.is_authenticated:
        allord=Order.objects.filter(user=request.user)
        return render(request, 'myapp/viewOrders.html',{'orderItems':allord})
    else:
        return redirect('/login')