# Generated by Django 3.1.4 on 2020-12-17 18:16

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0015_auto_20201218_0015'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 18, 0, 16, 20, 107865)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 18, 0, 16, 20, 106866)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 18, 0, 16, 20, 106866)),
        ),
        migrations.AlterField(
            model_name='timeoff_user_all',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 18, 0, 16, 20, 108864)),
        ),
        migrations.DeleteModel(
            name='assign_student_to_courses',
        ),
    ]
