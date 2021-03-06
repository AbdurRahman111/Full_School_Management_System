# Generated by Django 3.1.4 on 2020-12-17 13:00

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0009_auto_20201217_1540'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assignment_comments_all',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 17, 19, 0, 55, 596387)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 17, 19, 0, 55, 594389)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 17, 19, 0, 55, 594389)),
        ),
        migrations.AlterField(
            model_name='timeoff_user_all',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 17, 19, 0, 55, 597385)),
        ),
        migrations.CreateModel(
            name='add_Student_Course_by_manager',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Student', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='schoolapp.add_students_by_manager')),
                ('course', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='schoolapp.student_courses_with_teacher_name')),
            ],
        ),
    ]
