# Generated by Django 3.0 on 2020-01-14 07:36

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('FreeFallApp', '0013_auto_20200114_0929'),
    ]

    operations = [
        migrations.AlterField(
            model_name='hike',
            name='creation_datetime',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 14, 9, 36, 50, 873385)),
        ),
    ]
