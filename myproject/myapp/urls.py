from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home-page'),
    path('about', views.about, name='about-page'),
    path('contact', views.contact, name='contact-page'),
    path('update/<int:id>', views.updateData, name='update-page'),
    path('delete/<int:id>', views.deleteData, name='delete-page'),
    path('reg', views.userReg, name='reg-page'),
]
