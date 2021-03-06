# Generated by Django 3.1.4 on 2020-12-17 17:47

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0012_auto_20201217_1952'),
    ]

    operations = [
        migrations.DeleteModel(
            name='add_course',
        ),
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 17, 23, 47, 0, 691724)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 17, 23, 47, 0, 689726)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 17, 23, 47, 0, 689726)),
        ),
        migrations.AlterField(
            model_name='timeoff_user_all',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 17, 23, 47, 0, 692723)),
        ),
        migrations.DeleteModel(
            name='add_Student_Course_by_manager',
        ),
    ]
