# Generated by Django 3.0 on 2020-01-14 07:23

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ChatApp', '0011_auto_20200114_0921'),
    ]

    operations = [
        migrations.AlterField(
            model_name='hike',
            name='creation_datetime',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 14, 9, 23, 20, 97419)),
        ),
    ]
