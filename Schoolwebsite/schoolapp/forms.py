from django.forms import ModelForm
from django import forms
from .models import add_teacher_by_manager, add_students_by_manager, add_staffs_by_manager, Manager_login_information, Assign_students_to_courses, Assign_teacher_to_courses, Timeoff_staffs_teachers, Dean_login_information, IT_Service_login_Information, Manager_login_information, list_of_issue, dean_supervisor, manager_supervisor, manager_supervisor


class chg_pass(ModelForm):
    class Meta:
        model = add_teacher_by_manager
        fields = ['password']

class chg_pass_stu(ModelForm):
    class Meta:
        model = add_students_by_manager
        fields = ['password']


class chg_pass_staff(ModelForm):
    class Meta:
        model = add_staffs_by_manager
        fields = ['password']


class chg_pass_information(ModelForm):
    class Meta:
        model = Manager_login_information
        fields = ['manager_pass']


class chg_pass_it_service(ModelForm):
    class Meta:
        model = IT_Service_login_Information
        fields = ['IT_Service_password']

class chg_pass_dean(ModelForm):
    class Meta:
        model = Dean_login_information
        fields = ['Dean_pass']


class assign_stu_course(ModelForm):
    class Meta:
        model = Assign_students_to_courses
        fields = '__all__'


class assign_teach_course(ModelForm):
    class Meta:
        model = Assign_teacher_to_courses
        fields = '__all__'


class time_off_status(ModelForm):
    class Meta:
        model = Timeoff_staffs_teachers
        fields = ['status']

class ticket_status(ModelForm):
    class Meta:
        model = list_of_issue
        fields = ['status']

class transfer_ticket(ModelForm):
    class Meta:
        model = list_of_issue
        fields = ['IT_Service_info']

class transfer_vacation_request(ModelForm):
    class Meta:
        model = Timeoff_staffs_teachers
        fields = ['Manager_id']

class edit_dean_profile_by_it(ModelForm):
    class Meta:
        model = Dean_login_information
        fields = ['Dean_ID', 'Dean_Name', 'Dean_pass', 'phone', 'address', 'dob', 'major']



class edit_manager_profile_by_it(ModelForm):
    class Meta:
        model = Manager_login_information
        fields = ['manager_ID', 'manager_Name', 'manager_pass', 'phone', 'address', 'dob', 'major']



class edit_stu_profile_by_it(ModelForm):
    class Meta:
        model = add_students_by_manager
        fields = ['student_ID', 'student_name', 'phone_number', 'address', 'dob', 'major', 'password']


class edit_teach_profile_by_it(ModelForm):
    class Meta:
        model = add_teacher_by_manager
        fields = ['teacher_ID', 'teacher_name', 'phone_number', 'address', 'dob', 'major', 'password']


class edit_staff_profile_by_it(ModelForm):
    class Meta:
        model = add_staffs_by_manager
        fields = ['staff_ID', 'staff_name', 'phone_number', 'address', 'dob', 'major', 'password']



class add_supervisor(ModelForm):
    class Meta:
        model = dean_supervisor
        fields = '__all__'


class add_manager_supervisor(ModelForm):
    class Meta:
        model = manager_supervisor
        fields = '__all__'

class edit_dean_supervisor(ModelForm):
    class Meta:
        model = dean_supervisor
        fields = ['Supervisor']

class edit_manager_supervisor(ModelForm):
    class Meta:
        model = manager_supervisor
        fields = ['Supervisor']

