# Generated by Django 3.1.4 on 2021-01-13 04:41

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0053_auto_20210113_1041'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2021, 1, 13, 10, 41, 12, 203350)),
        ),
        migrations.AlterField(
            model_name='list_of_issue',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 13, 10, 41, 12, 204349)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 13, 10, 41, 12, 202351)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 13, 10, 41, 12, 202351)),
        ),
        migrations.AlterField(
            model_name='timeoff_staffs_teachers',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 13, 10, 41, 12, 205348)),
        ),
    ]
