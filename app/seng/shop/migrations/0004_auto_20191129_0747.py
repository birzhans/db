# Generated by Django 2.2.7 on 2019-11-29 07:47

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0003_product_cats'),
    ]

    operations = [
        migrations.RenameField(
            model_name='product',
            old_name='cats',
            new_name='categories',
        ),
    ]
