# Generated by Django 2.2.7 on 2019-11-29 03:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0002_auto_20191129_0352'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='cats',
            field=models.ManyToManyField(blank=True, related_name='products', to='shop.Category'),
        ),
    ]
