# Generated by Django 2.2.6 on 2019-12-15 14:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ChatApp', '0021_auto_20191215_1603'),
    ]

    operations = [
        migrations.AlterField(
            model_name='hike',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='C:/FreeFallImages/hikes/'),
        ),
    ]