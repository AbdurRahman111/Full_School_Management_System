from django.db import models
from datetime import datetime
# Create your models here.


class User_Information(models.Model):
    Role=models.CharField(max_length=255)
    Supervisor = models.CharField(max_length=255)
    User_ID = models.CharField(max_length=50)
    User_Name = models.CharField(max_length=255)
    User_pass = models.CharField(max_length=255)
    phone = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    dob = models.CharField(max_length=255)
    major = models.CharField(max_length=255)

    def __str__(self):
        return self.Role+" - "+self.User_Name


class IT_Service_login_Information(models.Model):
    IT_Service_id = models.CharField(max_length=200)
    IT_Service_Name = models.CharField(max_length=200)
    IT_Service_password = models.CharField(max_length=200)

    def __str__(self):
        return self.IT_Service_id+" - "+self.IT_Service_Name

    @staticmethod
    def matching_loging_IT(userID):
        try:
            return IT_Service_login_Information.objects.get(IT_Service_id=userID)
        except:
            return False


class School(models.Model):
    Class =models.CharField(max_length=200)
    Plan=models.CharField(max_length=200)
    Enrollment=models.CharField(max_length=200)

    def __str__(self):
        return self.Class+" - "+self.Plan+" - "+self.Enrollment


class Dean_login_information(models.Model):
    IT_Service_info = models.ForeignKey(IT_Service_login_Information, on_delete=models.CASCADE)
    Dean_ID=models.CharField(max_length=50)
    Dean_Name = models.CharField(max_length=255)
    Dean_pass=models.CharField(max_length=255)
    phone = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    dob = models.CharField(max_length=255)
    major = models.CharField(max_length=255)

    def __str__(self):
        return self.Dean_ID+" - "+self.Dean_Name

    @staticmethod
    def matching_loging_dean(userID):
        try:
            return Dean_login_information.objects.get(Dean_ID=userID)
        except:
            return False


class dean_supervisor(models.Model):
    dean_id = models.CharField(max_length=1000)
    Supervisor = models.ForeignKey(Dean_login_information, on_delete=models.CASCADE, blank=True, null=True)

    def __str__(self):
        return self.dean_id




class Manager_login_information(models.Model):
    IT_Service_info = models.ForeignKey(IT_Service_login_Information, on_delete=models.CASCADE)
    manager_ID=models.CharField(max_length=50)
    manager_Name = models.CharField(max_length=255)
    manager_pass=models.CharField(max_length=255)
    phone = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    dob = models.CharField(max_length=255)
    major = models.CharField(max_length=255)

    def __str__(self):
        return self.manager_ID+" - "+self.manager_Name

    @staticmethod
    def matching_loging_manager(userID):
        try:
            return Manager_login_information.objects.get(manager_ID=userID)
        except:
            return False


class manager_supervisor(models.Model):
    manager_id = models.CharField(max_length=1000)
    Supervisor = models.ForeignKey(Dean_login_information, on_delete=models.CASCADE, default='')

    def __str__(self):
        return self.manager_id

class manager_super_details(models.Model):
    Supervisor = models.ForeignKey(Dean_login_information, on_delete=models.CASCADE, default='')
    manager_id = models.ForeignKey(Manager_login_information, on_delete=models.CASCADE, default='')

    def __str__(self):
        return self.manager_id.manager_ID

class add_teacher_by_manager(models.Model):
    manager_ID = models.ForeignKey(Manager_login_information, on_delete=models.CASCADE)
    teacher_ID = models.CharField(max_length=200)
    teacher_name = models.CharField(max_length=200)
    phone_number = models.CharField(max_length=200)
    address = models.CharField(max_length=200)
    dob = models.CharField(max_length=200)
    major = models.CharField(max_length=200)
    password = models.CharField(max_length=200)

    def __str__(self):
        return self.teacher_ID +" - "+self.teacher_name

    @staticmethod
    def matching_loging_teacher(userID):
        try:
            return add_teacher_by_manager.objects.get(teacher_ID=userID)
        except:
            return False


class add_staffs_by_manager(models.Model):
    manager_ID = models.ForeignKey(Manager_login_information, on_delete=models.CASCADE)
    staff_ID = models.CharField(max_length=200)
    staff_name = models.CharField(max_length=200)
    phone_number = models.CharField(max_length=200)
    address = models.CharField(max_length=200)
    dob = models.CharField(max_length=200)
    major = models.CharField(max_length=200)
    password = models.CharField(max_length=200)

    def __str__(self):
        return self.staff_ID +" - "+self.staff_name

    @staticmethod
    def matching_loging_staff(userID):
        try:
            return add_staffs_by_manager.objects.get(staff_ID=userID)
        except:
            return False

class add_Project_by_manager(models.Model):
    manager_ID = models.ForeignKey(Manager_login_information, on_delete=models.CASCADE)
    event = models.CharField(max_length=200)
    status = models.CharField(max_length=200)
    date = models.DateField(max_length=200)
    details = models.TextField(max_length=200)
    attachment = models.CharField(max_length=200)

    def __str__(self):
        return self.event


class store_email_staffs_by_manager(models.Model):
    Staff_ID = models.ForeignKey(add_staffs_by_manager, on_delete=models.CASCADE)
    Staff_email = models.CharField(max_length=30)

    def __str__(self):
        return self.Staff_ID.staff_ID + " - " +self.Staff_ID.staff_name

    @staticmethod
    def matching_show_staff(userID):
        try:
            return store_email_staffs_by_manager.objects.get(Staff_ID=userID)
        except:
            return False



class add_students_by_manager(models.Model):
    manager_ID = models.ForeignKey(Manager_login_information, on_delete=models.CASCADE)
    student_ID = models.CharField(max_length=200)
    student_name = models.CharField(max_length=200)
    phone_number = models.CharField(max_length=200)
    address = models.CharField(max_length=200)
    dob = models.CharField(max_length=200)
    major = models.CharField(max_length=200)
    password = models.CharField(max_length=200)

    def __str__(self):
        return self.student_ID +" - "+self.student_name

    @staticmethod
    def matching_loging_stu(userID):
        try:
            return add_students_by_manager.objects.get(student_ID=userID)
        except:
            return False


class add_courses(models.Model):
    Course_Name = models.CharField(max_length=200)
    Manager_Name = models.ForeignKey(Manager_login_information, on_delete=models.CASCADE)

    def __str__(self):
        return self.Course_Name

class Assign_students_to_courses(models.Model):
    Course_Name = models.ForeignKey(add_courses, on_delete=models.CASCADE)
    Student_Name = models.ForeignKey(add_students_by_manager, on_delete=models.CASCADE)

    def __str__(self):
        return self.Course_Name.Course_Name+" - "+self.Student_Name.student_ID+" - "+self.Student_Name.student_name

class Assign_teacher_to_courses(models.Model):
    Course_Name = models.ForeignKey(add_courses, on_delete=models.CASCADE)
    Teacher_Name = models.ForeignKey(add_teacher_by_manager, on_delete=models.CASCADE)

    def __str__(self):
        return self.Course_Name.Course_Name+" - "+self.Teacher_Name.teacher_ID+" - "+self.Teacher_Name.teacher_name


class user_staff(models.Model):
    user_staff_ID = models.CharField(max_length=50)
    user_staffuser_Name = models.CharField(max_length=255)
    user_staff_pass = models.CharField(max_length=255)

    def __str__(self):
        return self.user_staff_ID+" - "+ self.user_staffuser_Name

    @staticmethod
    def matching_loging_staff(userID):
        try:
            return user_staff.objects.get(user_staff_ID=userID)
        except:
            return False


class Project(models.Model):
    event = models.CharField(max_length=200)
    status = models.CharField(max_length=200)
    date = models.DateField(max_length=200)
    details = models.TextField(max_length=200)
    attachment = models.FileField(max_length=200)

    def __str__(self):
        return self.event



class contractor(models.Model):
    contractor_ID = models.CharField(max_length=50)
    contractor_Name = models.CharField(max_length=255)
    contractor_pass = models.CharField(max_length=255)

    def __str__(self):
        return self.contractor_ID+" - "+ self.contractor_Name


class Faculties(models.Model):
    biography = models.CharField(max_length=50)
    Type = models.CharField(max_length=255)
    specialties = models.CharField(max_length=255)

    def __str__(self):
        return self.Type+" - "+ self.biography




class Teacher_login_informa(models.Model):
    Teacher_ID=models.CharField(max_length=50)
    Teacher_Name = models.CharField(max_length=255)
    Teacher_pass=models.CharField(max_length=255)
    phone = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    dob = models.CharField(max_length=255)
    major = models.CharField(max_length=255)

    def __str__(self):
        return self.Teacher_ID+" - "+self.Teacher_Name

    @staticmethod
    def matching_loging_teacher(userID):
        try:
            return Teacher_login_informa.objects.get(Teacher_ID=userID)
        except:
            return False



class store_email_teach_new(models.Model):
    Teacher_ID = models.CharField(max_length=100)
    Teacher_email = models.CharField(max_length=30)

    def __str__(self):
        return self.Teacher_ID

    @staticmethod
    def matching_show_teacher(userID):
        try:
            return store_email_teach_new.objects.get(Teacher_ID=userID)
        except:
            return False


class store_email_staff_new(models.Model):
    Staff_ID = models.CharField(max_length=100)
    Staff_email = models.CharField(max_length=30)

    def __str__(self):
        return self.Staff_ID

    @staticmethod
    def matching_show_staff(userID):
        try:
            return store_email_staff_new.objects.get(Staff_ID=userID)
        except:
            return False


class store_email_managers(models.Model):
    manager_ID = models.CharField(max_length=30)
    manager_email = models.CharField(max_length=30)

    def __str__(self):
        return self.manager_ID

    @staticmethod
    def matching_show_manager(userID):
        try:
            return store_email_managers.objects.get(manager_ID=userID)
        except:
            return False



class store_email_It_service(models.Model):
    It_ID = models.CharField(max_length=30)
    It_email = models.CharField(max_length=30)

    def __str__(self):
        return self.It_ID

    @staticmethod
    def matching_show_it(userID):
        try:
            return store_email_It_service.objects.get(It_ID=userID)
        except:
            return False



class store_email_dean(models.Model):
    dean_id = models.CharField(max_length=30)
    dean_email = models.CharField(max_length=30)

    def __str__(self):
        return self.dean_id

    @staticmethod
    def matching_show_dean(userID):
        try:
            return store_email_dean.objects.get(dean_id=userID)
        except:
            return False


class Student_courses_with_Teacher_name(models.Model):
    course = models.CharField(max_length=200)
    Teacher_ID =models.ForeignKey(Teacher_login_informa, on_delete=models.CASCADE)

    def __str__(self):
        return self.course


class Student_Login_informations(models.Model):
    Student_ID = models.CharField(max_length=50)
    Student_Name = models.CharField(max_length=255)
    Student_pass = models.CharField(max_length=255)
    phone= models.CharField(max_length=255)
    address= models.CharField(max_length=255)
    dob= models.CharField(max_length=255)
    major= models.CharField(max_length=255)

    def __str__(self):
        return self.Student_ID + " - " + self.Student_Name

    @staticmethod
    def matching_loging_stu(userID):
        try:
            return Student_Login_informations.objects.get(Student_ID=userID)
        except:
            return False


class Student_Course(models.Model):
    Student = models.ForeignKey(Student_Login_informations, on_delete=models.CASCADE)
    course = models.ForeignKey(Student_courses_with_Teacher_name, on_delete=models.CASCADE)

    def __str__(self):
        return self.Student.Student_ID+" - "+self.Student.Student_Name+" - "+self.course.course



class Admission(models.Model):
    plan = models.CharField(max_length=500)
    year = models.CharField(max_length=200)
    ID_student = models.ForeignKey(Student_Login_informations, on_delete=models.CASCADE)
    ID_course = models.ForeignKey(Student_courses_with_Teacher_name, on_delete=models.CASCADE)
    ID_school = models.ForeignKey(School, on_delete=models.CASCADE)

    def __str__(self):
        return self.plan+" - "+self.year+" - "+self.ID_student.Student_ID+"-"+self.ID_student.Student_Name+" - "+self.ID_course.course


class Students(models.Model):
    biography = models.CharField(max_length=500)
    ID_school = models.ForeignKey(School, on_delete=models.CASCADE)
    ID_courses = models.ForeignKey(Student_courses_with_Teacher_name, on_delete=models.CASCADE)
    ID_admission = models.ForeignKey(Admission, on_delete=models.CASCADE)

    def __str__(self):
        return self.biography+" - "+self.ID_school.Plan+" - "+ self.ID_courses.course



class Department(models.Model):
    ID_School = models.ForeignKey(School, on_delete=models.CASCADE)
    ID_user_staff = models.ForeignKey(user_staff, on_delete=models.CASCADE)
    ID_student = models.ForeignKey(Students, on_delete=models.CASCADE)
    ID_faculties = models.ForeignKey(Faculties, on_delete=models.CASCADE)

    def __str__(self):
        return self.ID_School.Class + " - " + self.ID_user_staff.user_staff_ID+"-"+self.ID_user_staff.user_staffuser_Name


class store_email_stu_new(models.Model):
    Student_ID = models.CharField(max_length=100)
    Student_email = models.CharField(max_length=30)

    def __str__(self):
        return self.Student_ID

    @staticmethod
    def matching_show_stu(userID):
        try:
            return store_email_stu_new.objects.get(Student_ID=userID)
        except:
            return False




class Teacher_Assignment_upload_File(models.Model):
    Assignment_name = models.CharField(max_length=500)
    course = models.CharField(max_length=500)
    date = models.DateField(default=datetime.now(), blank=True)
    due_date = models.DateField(default=datetime.now(), blank=True)
    title = models.CharField(max_length=500)
    Details = models.TextField()
    attachment = models.CharField(max_length=1000000)
    resource = models.CharField(max_length=500)
    posts = models.CharField(max_length=500)
    Out_Of_Grade = models.CharField(max_length=500)

    def __str__(self):
        return self.Assignment_name



class Student_Submit_Assignment_pro(models.Model):
    attachment = models.CharField(max_length=1000)
    course = models.CharField(max_length=1000)
    Student_ID = models.CharField(max_length=1000)
    Assignment_name = models.CharField(max_length=1000)

    def __str__(self):
        return self.Student_ID+" - "+self.Assignment_name+" - "+self.course



class Grade_Student(models.Model):
    Student_ID = models.CharField(max_length=200)
    course = models.CharField(max_length=2000)
    Assignment_name = models.CharField(max_length=200)
    Grade = models.CharField(max_length=200)
    Out_Of_Grade = models.CharField(max_length=200)

    def __str__(self):
        return self.Student_ID


class Assignment_Comments_all(models.Model):
    serial_no = models.AutoField(primary_key=True)
    comment   = models.TextField()
    user      = models.CharField(max_length=1000)
    post      = models.ForeignKey(Teacher_Assignment_upload_File, on_delete=models.CASCADE)
    postID    = models.CharField(max_length=25500)
    parent    = models.ForeignKey('self', on_delete=models.CASCADE, null=True)
    time_comment = models.DateTimeField(default=datetime.now(), blank=True)

    def __str__(self):
        return self.comment[0:12] + ".... " + " by " + self.user



class status_vacation(models.Model):
    status = models.CharField(max_length=200)

    def __str__(self):
        return self.status


class list_of_issue(models.Model):
    IT_Service_info = models.ForeignKey(IT_Service_login_Information, on_delete=models.CASCADE)
    user = models.CharField(max_length=1000)
    date = models.DateField(default=datetime.now(), blank=True)
    issue = models.CharField(max_length=1000)
    details = models.TextField()
    Assignment_name = models.CharField(max_length=1000, blank=True)
    status=models.CharField(max_length=1000, default='')

    def __str__(self):
        return self.user + " - " + self.status


class Timeoff_staffs_teachers(models.Model):
    Manager_id = models.ForeignKey(Manager_login_information, on_delete=models.CASCADE)
    user_id = models.CharField(max_length=200)
    date = models.DateField(default=datetime.now(), blank=True)
    requested_days = models.CharField(max_length=150)
    reason = models.TextField()
    status = models.CharField(max_length=1500)

    def __str__(self):
        return self.user_id + " - " + self.status