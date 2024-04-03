from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home-page'),
    path('about', views.about, name='about-page'),
    path('contact', views.contact, name='contact-page'),
    path('update/<int:id>', views.updateData, name='update-page'),
    path('delete/<int:id>', views.deleteData, name='delete-page'),
    path('reg/', views.userReg, name='reg-page'),
    path('login/', views.userLog, name='log-page'),
    path('logout/', views.userLogout, name='log-out-page'),
    path('add/<int:product_id>/', views.add_to_cart, name='add_to_cart'),
    path('cart', views.view_cart, name='view_cart'),
    path('remove/<int:id>', views.remove_cart, name='remove_cart'),
    path('chngpro', views.chngPro, name='chng-pro'),
    path("initiate-payment/", views.initiate_payment, name="initiate_payment"),
    path("payment-success/", views.payment_success, name="payment_success"),
    path("payment-failed/", views.payment_failed, name="payment_failed"),
    path("myorder/", views.myOrders, name="my-orders"),
]
