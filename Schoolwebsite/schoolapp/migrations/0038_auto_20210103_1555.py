# Generated by Django 3.1.4 on 2021-01-03 09:55

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0037_auto_20201225_1140'),
    ]

    operations = [
        migrations.CreateModel(
            name='list_of_issue',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user', models.CharField(max_length=1000)),
                ('date', models.DateField(blank=True, default=datetime.datetime(2021, 1, 3, 15, 55, 52, 620006))),
                ('issue', models.CharField(max_length=1000)),
                ('details', models.TextField()),
                ('Assignment_name', models.CharField(max_length=1000)),
            ],
        ),
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2021, 1, 3, 15, 55, 52, 619007)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 3, 15, 55, 52, 618008)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 3, 15, 55, 52, 618008)),
        ),
        migrations.AlterField(
            model_name='timeoff_staffs_teachers',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 3, 15, 55, 52, 621006)),
        ),
    ]
