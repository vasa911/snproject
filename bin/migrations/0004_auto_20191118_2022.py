# Generated by Django 2.2.6 on 2019-11-18 18:22

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('ChatApp', '0003_hike'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='hike',
            name='user',
        ),
        migrations.AddField(
            model_name='hike',
            name='creator',
            field=models.ForeignKey(default=None, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='creator', to='ChatApp.StandartUser'),
        ),
        migrations.AddField(
            model_name='hike',
            name='end_date',
            field=models.DateField(default='2020-01-02'),
        ),
        migrations.AddField(
            model_name='hike',
            name='image',
            field=models.ImageField(null=True, upload_to=''),
        ),
        migrations.AddField(
            model_name='hike',
            name='members',
            field=models.ManyToManyField(limit_choices_to=200, to='ChatApp.StandartUser'),
        ),
        migrations.AddField(
            model_name='hike',
            name='start_date',
            field=models.DateField(default='2020-01-02'),
        ),
    ]
