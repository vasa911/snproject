# Generated by Django 2.2.2 on 2019-11-25 19:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ChatApp', '0015_auto_20191125_1901'),
    ]

    operations = [
        migrations.CreateModel(
            name='Landmark',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
                ('description', models.CharField(default='desc', max_length=200000)),
            ],
        ),
        migrations.AddField(
            model_name='hike',
            name='landmarks',
            field=models.ManyToManyField(to='ChatApp.Landmark'),
        ),
    ]
