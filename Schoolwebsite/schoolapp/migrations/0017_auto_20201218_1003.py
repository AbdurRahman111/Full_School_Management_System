# Generated by Django 3.1.4 on 2020-12-18 04:03

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0016_auto_20201218_0016'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 18, 10, 3, 53, 301229)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 18, 10, 3, 53, 299231)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 18, 10, 3, 53, 299231)),
        ),
        migrations.AlterField(
            model_name='timeoff_user_all',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 18, 10, 3, 53, 302228)),
        ),
        migrations.CreateModel(
            name='Assign_teacher_to_courses',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Course_Name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='schoolapp.add_courses')),
                ('Teacher_Name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='schoolapp.add_teacher_by_manager')),
            ],
        ),
    ]
