# Generated by Django 3.1.4 on 2020-12-17 18:15

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0014_auto_20201218_0012'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 18, 0, 15, 55, 926447)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 18, 0, 15, 55, 925447)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 18, 0, 15, 55, 925447)),
        ),
        migrations.AlterField(
            model_name='timeoff_user_all',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 18, 0, 15, 55, 927446)),
        ),
        migrations.CreateModel(
            name='Assign_students_to_courses',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Course_Name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='schoolapp.add_courses')),
                ('Student_Name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='schoolapp.add_students_by_manager')),
            ],
        ),
    ]