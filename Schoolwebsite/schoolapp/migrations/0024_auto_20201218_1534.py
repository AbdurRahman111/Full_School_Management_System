# Generated by Django 3.1.4 on 2020-12-18 09:34

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0023_auto_20201218_1514'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 18, 15, 34, 44, 112278)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 18, 15, 34, 44, 111279)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 18, 15, 34, 44, 111279)),
        ),
        migrations.AlterField(
            model_name='timeoff_staff_teacher',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 18, 15, 34, 44, 113277)),
        ),
        migrations.DeleteModel(
            name='Timeoff_user_all',
        ),
    ]
