# Generated by Django 3.1.4 on 2021-01-11 14:31

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0044_auto_20210110_1339'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2021, 1, 11, 20, 31, 42, 725118)),
        ),
        migrations.AlterField(
            model_name='list_of_issue',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 11, 20, 31, 42, 726117)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 11, 20, 31, 42, 724118)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 11, 20, 31, 42, 724118)),
        ),
        migrations.AlterField(
            model_name='timeoff_staffs_teachers',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 11, 20, 31, 42, 727116)),
        ),
    ]
