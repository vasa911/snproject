# Generated by Django 2.2.6 on 2020-01-08 16:11

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('FreeFallApp', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='hike',
            name='creation_datetime',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 8, 18, 11, 18, 140919)),
        ),
    ]
