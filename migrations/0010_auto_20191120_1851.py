# Generated by Django 2.2.2 on 2019-11-20 16:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ChatApp', '0009_auto_20191120_1849'),
    ]

    operations = [
        migrations.AlterField(
            model_name='hike',
            name='members',
            field=models.ManyToManyField(default=None, null=True, to='ChatApp.StandartUser'),
        ),
    ]
