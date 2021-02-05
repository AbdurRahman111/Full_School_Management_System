# Generated by Django 3.1.4 on 2020-12-17 03:48

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0003_auto_20201214_2345'),
    ]

    operations = [
        migrations.CreateModel(
            name='Manager_login_information',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('manager_ID', models.CharField(max_length=50)),
                ('manager_Name', models.CharField(max_length=255)),
                ('manager_pass', models.CharField(max_length=255)),
                ('phone', models.CharField(max_length=255)),
                ('address', models.CharField(max_length=255)),
                ('dob', models.CharField(max_length=255)),
                ('major', models.CharField(max_length=255)),
            ],
        ),
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 17, 9, 48, 58, 372917)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 17, 9, 48, 58, 370920)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 17, 9, 48, 58, 370920)),
        ),
        migrations.AlterField(
            model_name='timeoff_user_all',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 17, 9, 48, 58, 373917)),
        ),
    ]