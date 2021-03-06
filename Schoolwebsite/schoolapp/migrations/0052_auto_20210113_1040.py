# Generated by Django 3.1.4 on 2021-01-13 04:40

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0051_auto_20210112_0013'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2021, 1, 13, 10, 40, 32, 850432)),
        ),
        migrations.AlterField(
            model_name='list_of_issue',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 13, 10, 40, 32, 851431)),
        ),
        migrations.AlterField(
            model_name='manager_supervisor',
            name='Supervisor',
            field=models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to='schoolapp.dean_login_information'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 13, 10, 40, 32, 849433)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 13, 10, 40, 32, 849433)),
        ),
        migrations.AlterField(
            model_name='timeoff_staffs_teachers',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 13, 10, 40, 32, 852431)),
        ),
    ]
