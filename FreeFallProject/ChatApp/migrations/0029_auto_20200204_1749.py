# Generated by Django 3.0.2 on 2020-02-04 15:49

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ChatApp', '0028_auto_20200204_1713'),
    ]

    operations = [
        migrations.AlterField(
            model_name='hike',
            name='creation_datetime',
            field=models.DateTimeField(default=datetime.datetime(2020, 2, 4, 17, 49, 3, 310334)),
        ),
    ]