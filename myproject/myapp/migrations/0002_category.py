# Generated by Django 4.2.10 on 2024-03-09 05:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cat_name', models.CharField(max_length=255, verbose_name='Category')),
                ('cat_desc', models.CharField(max_length=255, verbose_name='Category Description')),
            ],
        ),
    ]
