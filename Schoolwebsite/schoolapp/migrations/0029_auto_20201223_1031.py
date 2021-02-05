# Generated by Django 3.1.4 on 2020-12-23 04:31

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0028_auto_20201223_1004'),
    ]

    operations = [
        migrations.CreateModel(
            name='IT_Service_login_Information',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('IT_Service_id', models.CharField(max_length=200)),
                ('IT_Service_Name', models.CharField(max_length=200)),
                ('IT_Service_password', models.CharField(max_length=200)),
            ],
        ),
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 23, 10, 31, 46, 403859)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 23, 10, 31, 46, 402860)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 23, 10, 31, 46, 402860)),
        ),
        migrations.AlterField(
            model_name='timeoff_staffs_teachers',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 23, 10, 31, 46, 404858)),
        ),
    ]