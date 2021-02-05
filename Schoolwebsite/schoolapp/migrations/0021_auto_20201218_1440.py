# Generated by Django 3.1.4 on 2020-12-18 08:40

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0020_auto_20201218_1422'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 18, 14, 40, 56, 493321)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 18, 14, 40, 56, 491323)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 18, 14, 40, 56, 492322)),
        ),
        migrations.AlterField(
            model_name='timeoff_user_all',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 18, 14, 40, 56, 494320)),
        ),
        migrations.CreateModel(
            name='add_Project_by_manager',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('event', models.CharField(max_length=200)),
                ('status', models.CharField(max_length=200)),
                ('date', models.DateField(max_length=200)),
                ('details', models.TextField(max_length=200)),
                ('attachment', models.CharField(max_length=200)),
                ('manager_ID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='schoolapp.manager_login_information')),
            ],
        ),
    ]
