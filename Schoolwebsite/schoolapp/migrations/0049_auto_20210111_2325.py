# Generated by Django 3.1.4 on 2021-01-11 17:25

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0048_auto_20210111_2110'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2021, 1, 11, 23, 25, 2, 207951)),
        ),
        migrations.AlterField(
            model_name='list_of_issue',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 11, 23, 25, 2, 208952)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 11, 23, 25, 2, 206953)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 11, 23, 25, 2, 206953)),
        ),
        migrations.AlterField(
            model_name='timeoff_staffs_teachers',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2021, 1, 11, 23, 25, 2, 209950)),
        ),
        migrations.CreateModel(
            name='manager_supervisor',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('manager_id', models.CharField(max_length=1000)),
                ('Supervisor', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='schoolapp.dean_login_information')),
            ],
        ),
    ]
