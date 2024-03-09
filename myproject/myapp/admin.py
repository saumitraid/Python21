from django.contrib import admin
from django.utils.html import format_html
from . models import Category, Product

# Register your models here.
@admin.register(Category)
class AdminCategory(admin.ModelAdmin):
    list_display=('cat_name', 'cat_desc')

@admin.register(Product)
class AdminProduct(admin.ModelAdmin):
    def product_img(self, obj):
        return format_html('<img src="{}" width="100" height="100">'.format(obj.image.url))
    
    list_display=('name', 'description', 'price', 'category', 'product_img')
