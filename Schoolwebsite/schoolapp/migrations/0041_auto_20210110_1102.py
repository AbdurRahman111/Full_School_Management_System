# Generated by Django 3.1.4 on 2021-01-10 05:02

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0040_auto_20210103_1610'),
    ]

    operations = [
        migrations.AddField(
            model_name='list_of_issue',
            name='status',
            field=models.CharField(default='', max_length=1000),
        ),
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2021, 1, 10, 11, 2, 56, 226211)),
        ),
        migrations.AlterField(
            model_name='list_of_issue',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 10, 11, 2, 56, 227210)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 10, 11, 2, 56, 224212)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 10, 11, 2, 56, 224212)),
        ),
        migrations.AlterField(
            model_name='timeoff_staffs_teachers',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 10, 11, 2, 56, 227210)),
        ),
    ]
