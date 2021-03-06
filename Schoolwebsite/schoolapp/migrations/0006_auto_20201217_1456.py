# Generated by Django 3.1.4 on 2020-12-17 08:56

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0005_auto_20201217_1111'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 17, 14, 56, 12, 401607)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 17, 14, 56, 12, 399608)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 17, 14, 56, 12, 399608)),
        ),
        migrations.AlterField(
            model_name='timeoff_user_all',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 17, 14, 56, 12, 402607)),
        ),
        migrations.CreateModel(
            name='add_students_by_manager',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('student_ID', models.CharField(max_length=200)),
                ('student_name', models.CharField(max_length=200)),
                ('phone_number', models.CharField(max_length=200)),
                ('address', models.CharField(max_length=200)),
                ('dob', models.CharField(max_length=200)),
                ('major', models.CharField(max_length=200)),
                ('password', models.CharField(max_length=200)),
                ('manager_ID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='schoolapp.manager_login_information')),
            ],
        ),
    ]
