from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Teacher_login_informa, store_email_teach_new, store_email_stu_new, Student_courses_with_Teacher_name, Grade_Student, Teacher_Assignment_upload_File, Student_Submit_Assignment_pro, Assignment_Comments_all, user_staff, store_email_staff_new, Project, status_vacation, Student_Login_informations, Student_Course, Manager_login_information, add_teacher_by_manager, add_students_by_manager, store_email_managers, add_courses, Assign_students_to_courses, Assign_teacher_to_courses, add_staffs_by_manager, store_email_staffs_by_manager, add_Project_by_manager, Timeoff_staffs_teachers, IT_Service_login_Information, Dean_login_information, store_email_It_service, store_email_dean, list_of_issue, User_Information, dean_supervisor, manager_supervisor, manager_super_details
from django.contrib.auth.models import User
from django.contrib import messages
from django.contrib.auth.hashers import check_password, make_password
from django.contrib.auth import authenticate, login, logout
from .forms import chg_pass, chg_pass_stu, chg_pass_staff, chg_pass_information, assign_stu_course, assign_teach_course, time_off_status, edit_dean_profile_by_it, chg_pass_it_service, chg_pass_dean, edit_manager_profile_by_it, edit_stu_profile_by_it, edit_teach_profile_by_it, edit_staff_profile_by_it, ticket_status, transfer_ticket, transfer_vacation_request, add_supervisor, add_manager_supervisor, edit_dean_supervisor, edit_manager_supervisor
from django.core.files.storage import FileSystemStorage
from .templatetags import get_dict
from django.db.models import Q



def index(request):

    return render(request, 'index.html')


def login_func(request):
    if request.method == 'POST':
        log_ID = request.POST['log_ID']
        log_password = request.POST['log_password']

        stu_matching= add_students_by_manager.matching_loging_stu(log_ID)
        teacher_matching= add_teacher_by_manager.matching_loging_teacher(log_ID)
        staff_matching = user_staff.matching_loging_staff(log_ID)
        manager_matching = Manager_login_information.matching_loging_manager(log_ID)
        dean_matching = Dean_login_information.matching_loging_dean(log_ID)
        # print(manager_matching)

        # manager staff, student, teacher login system
        staff_matching_manager = add_staffs_by_manager.matching_loging_staff(log_ID)

        # IT-Service
        It_matching = IT_Service_login_Information.matching_loging_IT(log_ID)

        if stu_matching:

            if stu_matching.password == log_password:
                request.session['Stu_id'] = stu_matching.student_ID
                request.session['Stu_name'] = stu_matching.student_name

                return redirect('index')

            else:
                messages.error(request, "Password is incorrect")
                return render(request, 'login.html')

        elif teacher_matching:
            if teacher_matching.password == log_password:
                request.session['Teacher_id'] = teacher_matching.teacher_ID
                request.session['Teacher_name'] = teacher_matching.teacher_name
                request.session['Teacher_pass'] = teacher_matching.password

                return redirect('index')

            else:
                messages.error(request, "Password is incorrect")
                return render(request, 'login.html')

        elif staff_matching:
            if staff_matching.user_staff_pass == log_password:

                request.session['Staff_id'] = staff_matching.user_staff_ID
                request.session['Staff_name'] = staff_matching.user_staffuser_Name
                request.session['Staff_pass'] = staff_matching.user_staff_pass

                return redirect('index')

            else:
                messages.error(request, "Password is incorrect")
                return render(request, 'login.html')


        elif manager_matching:
            if manager_matching.manager_pass == log_password:
                request.session['manager_id'] = manager_matching.manager_ID
                request.session['manager_name'] = manager_matching.manager_Name
                request.session['manager_pass'] = manager_matching.manager_pass

                return redirect('index')

            else:
                messages.error(request, "Password is incorrect")
                return render(request, 'login.html')


            #manager's staff, teacher, student
        elif staff_matching_manager:
            if staff_matching_manager.password == log_password:
                request.session['Staff_id'] = staff_matching_manager.staff_ID
                request.session['Staff_name'] = staff_matching_manager.staff_name
                request.session['Staff_pass'] = staff_matching_manager.password

                return redirect('index')

            else:
                messages.error(request, "Password is incorrect")
                return render(request, 'login.html')

        elif It_matching:
            if It_matching.IT_Service_password == log_password:
                request.session['IT_id'] = It_matching.IT_Service_id
                request.session['IT_name'] = It_matching.IT_Service_Name
                request.session['IT_pass'] = It_matching.IT_Service_password

                return redirect('index')

            else:
                messages.error(request, "Password is incorrect")
                return render(request, 'login.html')

        elif dean_matching:
            if dean_matching.Dean_pass == log_password:
                request.session['Dean_id'] = dean_matching.Dean_ID
                request.session['Dean_name'] = dean_matching.Dean_Name
                request.session['Dean_pass'] = dean_matching.Dean_pass

                return redirect('index')

            else:
                messages.error(request, "Password is incorrect")
                return render(request, 'login.html')

        else:
            messages.error(request, "User ID is incorrect")
            return render(request, 'login.html')

    else:
        return render(request, 'login.html')

def staff_page(request):
    if request.method=="POST":

        staff_id = request.POST.get('staff_id')
        staff_name = request.POST.get('staff_name')
        # print(staff_name)

        add_staffs_by_manager_let_get = add_staffs_by_manager.objects.get(staff_ID=staff_id)
        # print(add_staffs_by_manager_let_get.manager_ID)

        staff_usid = add_staffs_by_manager_let_get.staff_ID
        staff_usname = add_staffs_by_manager_let_get.staff_name

        id_name = staff_usid + ' - ' + staff_usname

        get_issue = list_of_issue.objects.filter(user=id_name).order_by('-id')

        add_staffs_by_manager_let_get_manager_ID = add_staffs_by_manager_let_get.manager_ID
        add_staffs_by_manager_let_get_manager_ID22 = add_staffs_by_manager_let_get.manager_ID.manager_ID
        # print(add_staffs_by_manager_let_get_manager_ID.manager_ID)
        abc =add_staffs_by_manager_let_get_manager_ID.manager_ID

        get_it_mana=Manager_login_information.objects.get(manager_ID=abc)

        get_project = add_Project_by_manager.objects.filter(manager_ID=add_staffs_by_manager_let_get_manager_ID)
        # print(get_project)

        request_user = staff_id + " - " + staff_name

        Timeoff_user_sdata = Timeoff_staffs_teachers.objects.filter(user_id=request_user)
        # print(Timeoff_user_sdata)

        store_email_staff_new_gd = store_email_staff_new.objects.filter(Staff_ID=staff_id)

        context = {'get_project': get_project, 'Timeoff_user_sdata':Timeoff_user_sdata, 'add_staffs_by_manager_let_get':add_staffs_by_manager_let_get, 'add_staffs_by_manager_let_get_manager_ID22':add_staffs_by_manager_let_get_manager_ID22, 'store_email_staff_new_gd':store_email_staff_new_gd, 'get_it_mana':get_it_mana, 'get_issue':get_issue}

        return render(request, 'staff_page.html', context)
    else:
        return redirect('/')


def profile(request):
    if request.method == "POST":
        get_id_show= request.POST.get('get_id_show')

        check_user_id = store_email_teach_new.matching_show_teacher(get_id_show)
        check_user_id_stu = store_email_stu_new.matching_show_stu(get_id_show)
        check_user_id_staff = store_email_staff_new.matching_show_staff(get_id_show)
        check_user_id_manager = store_email_managers.matching_show_manager(get_id_show)
        # print(check_user_id_staff)

        # for manager's added students, teachers, staffs
        # add_staffs_by_managerr_get_data =add_staffs_by_manager.objects.get(staff_ID=get_id_show)
        # print(add_staffs_by_managerr_get_data)
        #
        # check_user_id_staff_of_manager = store_email_staffs_by_manager.objects.filter(Staff_ID=add_staffs_by_managerr_get_data)
        # print(check_user_id_staff_of_manager)

        if check_user_id:
            profile_email = check_user_id.Teacher_email
            d1 = {'profile_email': profile_email}
            return render(request, 'profile.html', d1)

        elif check_user_id_stu:
            profile_email = check_user_id_stu.Student_email
            d1 = {'profile_email': profile_email}
            return render(request, 'profile.html', d1)

        elif check_user_id_staff:
            profile_email = check_user_id_staff.Staff_email
            d1 = {'profile_email': profile_email}
            return render(request, 'profile.html', d1)

        elif check_user_id_manager:
            profile_email = check_user_id_manager.manager_email
            d1 = {'profile_email': profile_email}
            return render(request, 'profile.html', d1)

        # manager's part
        # elif check_user_id_staff_of_manager:
        #
        #     d1 = {'check_user_id_staff_of_manager': check_user_id_staff_of_manager}
        #     return render(request, 'profile.html', d1)

        else:

            no_email="No Email Added !! Go to Settings to add email or click here."
            d2 = {'no_email': no_email}
            return render(request, 'profile.html', d2)
    else:
        # add_staffs_by_manager_get_ad = add_staffs_by_manager.objects.get()
        return render(request, 'profile.html')


def settings(request):
    if request.method == "POST":
        # get some values
        add_email_user_id = request.POST.get('add_email_user_id')
        add_email_user_pass = request.POST.get('add_email_user_pass')
        add_email_user_email = request.POST.get('add_email_user_email')

        # get login userID
        user_id_uniq = request.POST.get('user_id_uniq')

        # print(add_email_user_id,add_email_user_pass, add_email_user_email, user_id_uniq)

        # if main password and given passwords are same
        if user_id_uniq==add_email_user_id:
            # chech if already added a email
            check_email = store_email_teach_new.matching_show_teacher(add_email_user_id)

            check_email_stu = store_email_stu_new.matching_show_stu(add_email_user_id)

            check_email_staff = store_email_staff_new.matching_show_staff(add_email_user_id)

            check_email_manager = store_email_managers.matching_show_manager(add_email_user_id)

            check_email_it = store_email_It_service.matching_show_it(add_email_user_id)

            check_email_dean = store_email_dean.matching_show_dean(add_email_user_id)

            # manager's staff, student, teacher

            # add_staffs_by_manager_get_dtta = add_staffs_by_manager.objects.get(staff_ID=user_id_uniq)
            # print(add_staffs_by_manager_get_dtta)

            # store_email_staffs_by_manager_k_data = store_email_staffs_by_manager.objects.filter(Staff_ID=add_staffs_by_manager_get_dtta)
            # print(store_email_staffs_by_manager_k_data)

            if check_email:
                messages.error(request, "Oh !! You Already Added your Email !! No need to add email. Go to your Profile. ")
                return redirect('settings')

            elif check_email_stu:
                messages.error(request,"Oh !! You Already Added your Email !! No need to add email. Go to your Profile. ")
                return redirect('settings')

            elif check_email_staff:
                messages.error(request,"Oh !! You Already Added your Email !! No need to add email. Go to your Profile. ")
                return redirect('settings')

            elif check_email_manager:
                messages.error(request,"Oh !! You Already Added your Email !! No need to add email. Go to your Profile. ")
                return redirect('settings')

            elif check_email_it:
                messages.error(request,"Oh !! You Already Added your Email !! No need to add email. Go to your Profile. ")
                return redirect('settings')


            elif check_email_dean:
                messages.error(request,"Oh !! You Already Added your Email !! No need to add email. Go to your Profile. ")
                return redirect('settings')



            # elif store_email_staffs_by_manager_k_data:
            #     messages.error(request,"Oh !! You Already Added your Email !! No need to add email. Go to your Profile. ")
            #     return redirect('settings')

            else:
                # matching user id to login informations
                teacher_matching_add_email = add_teacher_by_manager.matching_loging_teacher(add_email_user_id)
                stu_matching_ID = add_students_by_manager.matching_loging_stu(add_email_user_id)
                staff_matching_id= add_staffs_by_manager.matching_loging_staff(add_email_user_id)
                manager_matching_id= Manager_login_information.matching_loging_manager(add_email_user_id)
                it_service_matching_id= IT_Service_login_Information.matching_loging_IT(add_email_user_id)
                dean_matching_id= Dean_login_information.matching_loging_dean(add_email_user_id)

                # manager's staff, student, teacher
                staff_matching_id_manager= add_staffs_by_manager.matching_loging_staff(add_email_user_id)

                if teacher_matching_add_email:
                    # matching email to login info
                    if teacher_matching_add_email.password == add_email_user_pass:

                        storing_email_teach = store_email_teach_new(Teacher_ID=add_email_user_id,
                                                                    Teacher_email=add_email_user_email)
                        storing_email_teach.save()
                        messages.success(request, "Weldone, Your Email has been successfully added to your profile !!")
                        return redirect('settings')

                    else:
                        messages.error(request, "Password is incorrect")
                        return render(request, 'settings.html')

                elif stu_matching_ID:
                    if stu_matching_ID.password == add_email_user_pass:

                        storing_email_stud = store_email_stu_new(Student_ID=add_email_user_id,
                                                                    Student_email=add_email_user_email)
                        storing_email_stud.save()
                        messages.success(request, "Weldone, Your Email has been successfully added to your profile !!")
                        return redirect('settings')

                    else:
                        messages.error(request, "Password is incorrect")
                        return render(request, 'settings.html')

                elif staff_matching_id:
                    if staff_matching_id.password == add_email_user_pass:

                        storing_email_staff = store_email_staff_new(Staff_ID=add_email_user_id,
                                                                    Staff_email=add_email_user_email)
                        storing_email_staff.save()
                        messages.success(request, "Weldone, Your Email has been successfully added to your profile !!")
                        return redirect('settings')

                elif manager_matching_id:
                    if manager_matching_id.manager_pass == add_email_user_pass:

                        storing_email_manager = store_email_managers(manager_ID=add_email_user_id,
                                                                    manager_email=add_email_user_email)
                        storing_email_manager.save()
                        messages.success(request, "Weldone, Your Email has been successfully added to your profile !!")
                        return redirect('settings')

                    else:
                        messages.error(request, "Password is incorrect")
                        return render(request, 'settings.html')

                elif it_service_matching_id:
                    if it_service_matching_id.IT_Service_password == add_email_user_pass:

                        storing_email_it = store_email_It_service(It_ID=add_email_user_id,
                                                                    It_email=add_email_user_email)
                        storing_email_it.save()
                        messages.success(request, "Weldone, Your Email has been successfully added to your profile !!")
                        return redirect('settings')

                    else:
                        messages.error(request, "Password is incorrect")
                        return render(request, 'settings.html')

                elif dean_matching_id:
                    if dean_matching_id.Dean_pass == add_email_user_pass:

                        storing_email_dean = store_email_dean(dean_id=add_email_user_id,
                                                                    dean_email=add_email_user_email)
                        storing_email_dean.save()
                        messages.success(request, "Weldone, Your Email has been successfully added to your profile !!")
                        return redirect('settings')

                    else:
                        messages.error(request, "Password is incorrect")
                        return render(request, 'settings.html')



                # elif staff_matching_id_manager:
                #     if staff_matching_id_manager.password == add_email_user_pass:
                #         store_email_staffs_by_manager_save_data = store_email_staffs_by_manager(Staff_ID=add_staffs_by_manager_get_dtta,
                #                                                     Staff_email=add_email_user_email)
                #         store_email_staffs_by_manager_save_data.save()
                #         messages.success(request, "Weldone, Your Email has been successfully added to your profile !!")
                #         return redirect('settings')
                #
                #     else:
                #         messages.error(request, "Password is incorrect")
                #         return render(request, 'settings.html')

                else:
                    messages.error(request, "Your User ID is Invalid !! ")
                    return render(request, 'settings.html')

        else:
            messages.error(request, "This is not Your ID !! ")
            return render(request, 'settings.html')

    else:
        return render(request, 'settings.html')


def check_user(request):
    if request.method=="POST":
        get_id_teach= request.POST.get('get_id_teach')
        context = {'get_id_teach':get_id_teach}
        return render(request, 'check_user.html', context)
    else:
        return redirect('/')


def check_user_password(request):
    if request.method=="POST":
        check_id=request.POST.get('check_id')
        check_pass=request.POST.get('check_pass')

        get_id_teacher=request.POST.get('get_id_teacher')
        # get_id_student=request.POST.get('get_id_student')


        get_pass_teach = add_teacher_by_manager.objects.get(teacher_ID=get_id_teacher)
        teacher_pass_match = get_pass_teach.password

        if get_id_teacher==check_id:
            if check_pass==teacher_pass_match:
                return render(request, 'change_pass.html')
            else:
                messages.error(request, "Your Password is Incorrect !!")
                return redirect('/')

        else:
            messages.error(request, "It is not Your User ID or Valid User ID !!")
            return redirect('/')

    else:
        return redirect('/')


def check_user_student(request):
    if request.method=="POST":
        get_id_stu= request.POST.get('get_id_stu')
        print(get_id_stu)
        context = {'get_id_stu':get_id_stu}
        return render(request, 'check_user_stu.html', context)
    else:
        return redirect('/')


def check_user_password_student(request):
    if request.method=="POST":
        check_id=request.POST.get('check_id')
        check_pass=request.POST.get('check_pass')

        get_id_student=request.POST.get('get_id_student')
        print(check_id, check_pass, get_id_student)

        get_pass_stu = add_students_by_manager.objects.get(student_ID=get_id_student)
        teacher_pass_match = get_pass_stu.password

        if get_id_student==check_id:
            if check_pass==teacher_pass_match:
                return render(request, 'change_pass_student.html')
            else:
                messages.error(request, "Your Password is Incorrect !!")
                return redirect('/')

        else:
            messages.error(request, "It is not Your User ID or Valid User ID !!")
            return redirect('/')

    else:
        return redirect('/')


def check_user_staff(request):
    if request.method=="POST":
        get_id_staff= request.POST.get('get_id_staff')
        # print(get_id_staff)
        context = {'get_id_staff':get_id_staff}
        return render(request, 'check_user_staff.html', context)
    else:
        return redirect('/')


def check_user_staff_password(request):
    if request.method=="POST":
        check_id=request.POST.get('check_id')
        check_pass=request.POST.get('check_pass')

        get_id_staff=request.POST.get('get_id_staff')
        # print(check_id, check_pass, get_id_staff)

        get_pass_staff = add_staffs_by_manager.objects.get(staff_ID=get_id_staff)
        staff_pass_match = get_pass_staff.password
        # print(staff_pass_match)

        if get_id_staff==check_id:
            if check_pass==staff_pass_match:
                return render(request, 'change_pass_staff.html')
            else:
                messages.error(request, "Your Password is Incorrect !!")
                return redirect('/')

        else:
            messages.error(request, "It is not Your User ID or Valid User ID !!")
            return redirect('/')

    else:
        return redirect('/')


def update_change_password(request, pk):
    teach = add_teacher_by_manager.objects.get(teacher_ID=pk)

    form = chg_pass(instance=teach)

    if request.method == 'POST':
        form = chg_pass(request.POST, instance=teach)
        if form.is_valid():
            form.save()
            return redirect('/')
    context = {'form':form}
    return render(request, 'change_password.html', context)


def update_change_password_stu(request, pk):
    stu_pas_ch = add_students_by_manager.objects.get(student_ID=pk)

    form = chg_pass_stu(instance=stu_pas_ch)

    if request.method == 'POST':
        form = chg_pass_stu(request.POST, instance=stu_pas_ch)
        if form.is_valid():
            form.save()
            return redirect('/')
    context = {'form':form}
    return render(request, 'change_password.html', context)


def update_change_password_staff(request, pk):
    staff_pas_ch = add_staffs_by_manager.objects.get(staff_ID=pk)

    form = chg_pass_staff(instance=staff_pas_ch)

    if request.method == 'POST':
        form = chg_pass_staff(request.POST, instance=staff_pas_ch)
        if form.is_valid():
            form.save()
            messages.success(request, "You Have Successfully Changed youre Password !")
            return redirect('/')
    context = {'form':form}
    return render(request, 'change_password.html', context)


def update_change_password_manager(request, pk):
    manager_pas_ch = Manager_login_information.objects.get(manager_ID=pk)
    print(manager_pas_ch)

    form = chg_pass_information(instance=manager_pas_ch)

    if request.method == 'POST':
        form = chg_pass_information(request.POST, instance=manager_pas_ch)
        if form.is_valid():
            form.save()
            return redirect('/')
    context = {'form':form}
    return render(request, 'change_password.html', context)


def update_change_password_it(request, pk):
    it_pas_ch = IT_Service_login_Information.objects.get(IT_Service_id=pk)
    print(it_pas_ch)

    form = chg_pass_it_service(instance=it_pas_ch)

    if request.method == 'POST':
        form = chg_pass_it_service(request.POST, instance=it_pas_ch)
        if form.is_valid():
            form.save()
            return redirect('/')
    context = {'form':form}
    return render(request, 'change_password.html', context)

def update_change_password_dean(request, pk):
    dean_pas_ch = Dean_login_information.objects.get(Dean_ID=pk)
    print(dean_pas_ch)

    form = chg_pass_dean(instance=dean_pas_ch)

    if request.method == 'POST':
        form = chg_pass_dean(request.POST, instance=dean_pas_ch)
        if form.is_valid():
            form.save()
            return redirect('/')
    context = {'form':form}
    return render(request, 'change_password.html', context)


def check_user_manager(request):
    if request.method=="POST":
        get_id_manager= request.POST.get('get_id_manager')
        # print(get_id_manager)
        context = {'get_id_manager':get_id_manager}
        return render(request, 'check_manager.html', context)
    else:
        return redirect('/')

def check_user_it(request):
    if request.method=="POST":
        get_id_it = request.POST.get('get_id_it')
        # print(get_id_manager)
        context = {'get_id_it':get_id_it}
        return render(request, 'check_it.html', context)
    else:
        return redirect('/')

def check_user_dean(request):
    if request.method=="POST":
        get_id_dean = request.POST.get('get_id_dean')
        # print(get_id_manager)
        context = {'get_id_dean':get_id_dean}
        return render(request, 'check_user_dean.html', context)
    else:
        return redirect('/')


def check_it_password(request):
    if request.method=="POST":
        check_id=request.POST.get('check_id')
        check_pass=request.POST.get('check_pass')

        get_id_it=request.POST.get('get_id_it')
        # get_id_student=request.POST.get('get_id_student')


        get_it_service = IT_Service_login_Information.objects.get(IT_Service_id=get_id_it)
        get_it_service_pass = get_it_service.IT_Service_password

        if get_id_it==check_id:
            if check_pass==get_it_service_pass:
                return render(request, 'change_pass_it.html')
            else:
                messages.error(request, "Your Password is Incorrect !!")
                return redirect('/')

        else:
            messages.error(request, "It is not Your User ID or Valid User ID !!")
            return redirect('/')

    else:
        return redirect('/')


def check_dean_password(request):
    if request.method=="POST":
        check_id=request.POST.get('check_id')
        check_pass=request.POST.get('check_pass')

        get_id_dean=request.POST.get('get_id_dean')
        # get_id_student=request.POST.get('get_id_student')


        get_it_service = Dean_login_information.objects.get(Dean_ID=get_id_dean)
        get_it_service_pass = get_it_service.Dean_pass

        if get_id_dean==check_id:
            if check_pass==get_it_service_pass:
                return render(request, 'change_pass_dean.html')
            else:
                messages.error(request, "Your Password is Incorrect !!")
                return redirect('/')

        else:
            messages.error(request, "It is not Your User ID or Valid User ID !!")
            return redirect('/')

    else:
        return redirect('/')



def check_manager_password(request):
    if request.method=="POST":
        check_id=request.POST.get('check_id')
        check_pass=request.POST.get('check_pass')

        get_id_teacher=request.POST.get('get_id_manager')
        # get_id_student=request.POST.get('get_id_student')


        get_pass_teach = Manager_login_information.objects.get(manager_ID=get_id_teacher)
        manager_pass_match = get_pass_teach.manager_pass

        if get_id_teacher==check_id:
            if check_pass==manager_pass_match:
                return render(request, 'change_pass_manager.html')
            else:
                messages.error(request, "Your Password is Incorrect !!")
                return redirect('/')

        else:
            messages.error(request, "It is not Your User ID or Valid User ID !!")
            return redirect('/')

    else:
        return redirect('/')


def it_service_page(request):
    if request.method=="POST":
        it_sevice_id = request.POST.get('it_sevice_id')
        it_sevice_name = request.POST.get('it_sevice_name')

        IT_Service_login_Information_get_data = IT_Service_login_Information.objects.get(IT_Service_id=it_sevice_id)
        # print(IT_Service_login_Information_get_data)

        it_id_get = IT_Service_login_Information_get_data.IT_Service_id
        print(it_id_get)

        Manager_get_by_it = Manager_login_information.objects.filter(IT_Service_info=IT_Service_login_Information_get_data)
        # print(Manager_get_by_it)

        get_manager_all = Manager_login_information.objects.all()

        Dean_get_by_it = Dean_login_information.objects.filter(
            IT_Service_info=IT_Service_login_Information_get_data)

        get_all_dean = Dean_login_information.objects.all()

        # print(Dean_get_by_it)

        email_It_service = store_email_It_service.objects.filter(It_ID=it_id_get)

        filter_list_of_issue= list_of_issue.objects.filter(IT_Service_info=IT_Service_login_Information_get_data).order_by('-id')


        form9 = add_supervisor()
        form10 = add_manager_supervisor()

        context1 = {'IT_Service_login_Information_get_data':IT_Service_login_Information_get_data, 'Manager_get_by_it':Manager_get_by_it, 'Dean_get_by_it':Dean_get_by_it, 'email_It_service':email_It_service, 'filter_list_of_issue':filter_list_of_issue, 'get_all_dean':get_all_dean, 'get_manager_all':get_manager_all, 'form9':form9, 'form10':form10}

        return render(request, 'it_service_page.html', context1)
    else:
        return redirect('/')

def details_issue(request):
    if request.method=="POST":
        get_issue_id=request.POST.get('get_issue_id')
        get_issue_full = list_of_issue.objects.get(id=get_issue_id)
        print(get_issue_full)


        form3 = ticket_status(instance=get_issue_full)


        form4 = transfer_ticket(instance=get_issue_full)

        if request.method == 'POST':
            get_issue_id = request.POST.get('get_issue_id')
            print(get_issue_id)
            get_issue_full = list_of_issue.objects.get(id=get_issue_id)

            form3 = ticket_status(request.POST, instance=get_issue_full)
            if form3.is_valid():
                form3.save()
                return redirect('/')

            form4 = transfer_ticket(request.POST, instance=get_issue_full)
            if form4.is_valid():
                form4.save()
                return redirect('/')

        no_file = get_issue_full.Assignment_name
        # print(no_file)

        if no_file=='':
            context23={'get_issue_full':get_issue_full, 'form3':form3, 'form4':form4}
        else:
            abc = get_issue_full.Assignment_name
            context23={'get_issue_full':get_issue_full, 'abc':abc, 'form3':form3, 'form4':form4}

        return render(request, 'details_issue.html', context23)



def details_issue_user(request):
    if request.method=="POST":
        get_issue_id_user=request.POST.get('get_issue_id_user')

        get_details_issue = list_of_issue.objects.get(id=get_issue_id_user)

        no_file = get_details_issue.Assignment_name
        # print(no_file)

        if no_file == '':
            context23={'get_details_issue':get_details_issue}
        else:
            abc2 = get_details_issue.Assignment_name
            context23={'get_details_issue':get_details_issue, 'abc2':abc2}

        return render(request, 'details_issue_user.html', context23)



def details_dean_by_it(request):
    if request.method=="POST":
        get_dean_id = request.POST.get('get_dean_id')
        # print(get_dean_id)

        Dean_details_by_id = Dean_login_information.objects.get(id=get_dean_id)
        # print(Dean_details_by_id)
        context = {'Dean_details_by_id':Dean_details_by_id}

        return render(request, 'details_dean_by_it.html', context)
    else:
        return redirect('/')


def details_manager_by_it(request):
    if request.method=="POST":
        get_manager_id = request.POST.get('get_manager_id')
        # print(get_dean_id)

        manager_details_by_id = Manager_login_information.objects.get(id=get_manager_id)
        # print(Dean_details_by_id)
        context = {'manager_details_by_id':manager_details_by_id}

        return render(request, 'details_manager_by_it.html', context)
    else:
        return redirect('/')


def change_dean_profile_by_it(request, pk):
    dean_details_by_id = Dean_login_information.objects.get(id=pk)
    print(dean_details_by_id)

    form1 = edit_dean_profile_by_it(instance=dean_details_by_id)

    if request.method == "POST":

        form1 = edit_dean_profile_by_it(request.POST, instance=dean_details_by_id)
        if form1.is_valid():
            form1.save()
            return redirect('/')

    context = {'dean_details_by_id': dean_details_by_id, 'form1': form1}

    return render(request, 'edit_dean_profile_by_it.html', context)


def changing_supervisor_dean(request, pk):
    dean_supervisor_by_id = dean_supervisor.objects.get(dean_id=pk)
    print(dean_supervisor_by_id)

    form12 = edit_dean_supervisor(instance=dean_supervisor_by_id)

    if request.method == "POST":

        form12 = edit_dean_supervisor(request.POST, instance=dean_supervisor_by_id)
        if form12.is_valid():
            form12.save()
            return redirect('/')

    context = {'form12': form12}

    return render(request, 'edit_supervisor_dean_by_it.html', context)


def changing_supervisor_manager(request, pk):
    mana_supervisor_by_id = manager_supervisor.objects.get(manager_id=pk)
    print(mana_supervisor_by_id)

    form13 = edit_manager_supervisor(instance=mana_supervisor_by_id)

    if request.method == "POST":

        form13 = edit_manager_supervisor(request.POST, instance=mana_supervisor_by_id)
        if form13.is_valid():
            form13.save()
            return redirect('/')

    context = {'form12': form13}

    return render(request, 'edit_supervisor_dean_by_it.html', context)


def change_manager_profile_by_it(request, pk):

    man_details_by_id = Manager_login_information.objects.get(id=pk)
    # print(man_details_by_id)

    form1 = edit_manager_profile_by_it(instance=man_details_by_id)

    if request.method == "POST":

        form1 = edit_manager_profile_by_it(request.POST, instance=man_details_by_id)
        if form1.is_valid():
            form1.save()
            return redirect('/')

    context = {'man_details_by_id': man_details_by_id, 'form1': form1}

    return render(request, 'edit_dean_profile_by_it.html', context)



def change_stu_profile_by_it_service(request, pk):
    stu_details_by_id = add_students_by_manager.objects.get(id=pk)
    # print(man_details_by_id)

    form1 = edit_stu_profile_by_it(instance=stu_details_by_id)
    if request.method == "POST":
        form1 = edit_stu_profile_by_it(request.POST, instance=stu_details_by_id)
        if form1.is_valid():
            form1.save()
            return redirect('/')

    context = {'man_details_by_id': stu_details_by_id, 'form1': form1}

    return render(request, 'edit_dean_profile_by_it.html', context)


def change_teach_profile_by_it_service(request, pk):
    teach_details_by_id = add_teacher_by_manager.objects.get(id=pk)
    # print(man_details_by_id)

    form1 = edit_teach_profile_by_it(instance=teach_details_by_id)
    if request.method == "POST":
        form1 = edit_teach_profile_by_it(request.POST, instance=teach_details_by_id)
        if form1.is_valid():
            form1.save()
            return redirect('/')

    context = {'teach_details_by_id': teach_details_by_id, 'form1': form1}

    return render(request, 'edit_dean_profile_by_it.html', context)


def change_staff_profile_by_it_service(request, pk):
    staff_details_by_id = add_staffs_by_manager.objects.get(id=pk)
    # print(man_details_by_id)

    form1 = edit_staff_profile_by_it(instance=staff_details_by_id)
    if request.method == "POST":
        form1 = edit_staff_profile_by_it(request.POST, instance=staff_details_by_id)
        if form1.is_valid():
            form1.save()
            return redirect('/')

    context = {'staff_details_by_id': staff_details_by_id, 'form1': form1}

    return render(request, 'edit_dean_profile_by_it.html', context)


def add_dean_by_it_service(request):
    if request.method=="POST":

        if request.method == "POST":
            # print(request.POST)
            form9 = add_supervisor(request.POST)
            if form9.is_valid():
                form9.save()

        it_service_ID = request.POST.get('it_service_ID')
        it_service_name = request.POST.get('it_service_name')

        Supervisor = 'It-Service : '+ it_service_ID+' - '+it_service_name
        Role='Dean'
        # print(it_service_ID)

        dean_ID = request.POST.get('dean_ID')
        dean_name = request.POST.get('dean_name')
        phone_number = request.POST.get('phone_number')
        address = request.POST.get('address')
        dob = request.POST.get('dob')
        major = request.POST.get('major')
        password = request.POST.get('password')

        it_service_login_information_get = IT_Service_login_Information.objects.get(IT_Service_id=it_service_ID)
        # print(it_service_login_information_get)

        add_dean_by_it_data2 = User_Information(Role=Role, Supervisor=Supervisor, User_ID=dean_ID, User_Name=dean_name, User_pass=password, phone=phone_number, address=address, dob=dob, major=major)
        add_dean_by_it_data2.save()

        add_dean_by_it_data = Dean_login_information(IT_Service_info=it_service_login_information_get, Dean_ID=dean_ID, Dean_Name=dean_name, Dean_pass=password, phone=phone_number, address=address, dob=dob, major=major)
        add_dean_by_it_data.save()
        messages.success(request, "You Have Successfully Add A Dean !!")

        return redirect('/')
    else:
        return redirect('/')


def add_manager_by_it_service(request):
    if request.method=="POST":

        if request.method == "POST":
            # print(request.POST)
            form10 = add_manager_supervisor(request.POST)
            if form10.is_valid():
                form10.save()

        it_service_ID = request.POST.get('it_service_ID')
        it_service_name = request.POST.get('it_service_name')
        # print(it_service_ID)
        Supervisor = 'It-service : '+ it_service_ID + ' - ' + it_service_name
        Role = 'Manager'

        manager_ID = request.POST.get('manager_ID')
        manager_name = request.POST.get('manager_name')
        phone_number = request.POST.get('phone_number')
        address = request.POST.get('address')
        dob = request.POST.get('dob')
        major = request.POST.get('major')
        password = request.POST.get('password')

        it_service_login_information_get = IT_Service_login_Information.objects.get(IT_Service_id=it_service_ID)
        print(it_service_login_information_get)

        add_manager_by_it_data = Manager_login_information(IT_Service_info=it_service_login_information_get, manager_ID=manager_ID, manager_Name=manager_name, manager_pass=password, phone=phone_number, address=address, dob=dob, major=major)
        add_manager_by_it_data.save()

        add_manager_by_it_data2 = User_Information(Role=Role, Supervisor=Supervisor, User_ID=manager_ID, User_Name=manager_name, User_pass=password, phone=phone_number, address=address, dob=dob, major=major)
        add_manager_by_it_data2.save()


        # supervisor
        get_manager_supervisor=manager_supervisor.objects.get(manager_id=manager_ID)
        get_dean=get_manager_supervisor.Supervisor

        save_manager_super_details=manager_super_details(Supervisor=get_dean, manager_id=add_manager_by_it_data)
        save_manager_super_details.save()

        messages.success(request, "You Have Successfully Add A Manager !!")

        return redirect('/')
    else:
        return redirect('/')

def see_list_student_it(request):
    if request.method=="POST":
        manager_ddet=request.POST.get('manager_ddet')
        manager_ddet1=request.POST.get('manager_ddet1')
        manager_ddet2=request.POST.get('manager_ddet2')
        print(manager_ddet)

        all_stu_manager = add_students_by_manager.objects.filter(manager_ID=manager_ddet)
        all_teach_manager = add_teacher_by_manager.objects.filter(manager_ID=manager_ddet1)
        all_staff_manager = add_staffs_by_manager.objects.filter(manager_ID=manager_ddet2)
        # print(all_stu_manager)

        context19 = {'all_stu_manager':all_stu_manager, 'all_teach_manager':all_teach_manager, 'all_staff_manager':all_staff_manager, 'manager_ddet':manager_ddet, 'manager_ddet1':manager_ddet1, 'manager_ddet2':manager_ddet2}

        return render(request, 'it_all_user_details.html', context19)


def manager_page(request):
    if request.method=="POST":
        manager_id = request.POST.get('manager_id')
        manager_name = request.POST.get('manager_name')

        form1 = assign_stu_course()
        if request.method == "POST":
            form1 = assign_stu_course(request.POST)
            if form1.is_valid():
                form1.save()
                return redirect("/")

        form2 = assign_teach_course()
        if request.method == "POST":
            form2 = assign_teach_course(request.POST)
            if form2.is_valid():
                form2.save()
                return redirect("/")

        # get_course_details = add_course.objects.all()

        get_supervisor_man=manager_supervisor.objects.filter(manager_id=manager_id)

        Manager_login_information_get1 = Manager_login_information.objects.get(manager_ID=manager_id)
        # print(Manager_login_information_get1)

        manager_usid = Manager_login_information_get1.manager_ID
        manager_usname = Manager_login_information_get1.manager_Name

        id_name = manager_usid + ' - ' + manager_usname

        get_issue = list_of_issue.objects.filter(user=id_name).order_by('-id')

        add_teacher_by_manager_all_data = add_teacher_by_manager.objects.filter(manager_ID=Manager_login_information_get1)
        # print(add_teacher_by_manager_all_data)

        add_students_by_manager_all_data = add_students_by_manager.objects.filter(
            manager_ID=Manager_login_information_get1)
        # print(add_students_by_manager_all_data)

        get_projects_details = add_Project_by_manager.objects.filter(manager_ID=Manager_login_information_get1)

        add_staffs_by_manager_all_dta = add_staffs_by_manager.objects.filter(manager_ID=Manager_login_information_get1)
        # print(add_staffs_by_manager_all_dta)

        get_course_by_manager = add_courses.objects.filter(Manager_Name=Manager_login_information_get1)
        # print(get_course_by_manager)

        Timeoff_staff_teacher_get_vacaday = Timeoff_staffs_teachers.objects.filter(Manager_id=Manager_login_information_get1).order_by('-id')

        store_email_managers_dtta = store_email_managers.objects.filter(manager_ID=manager_id)
        # print(store_email_managers_dtta)

        context9 = {'manager_id':manager_id, 'manager_name':manager_name, 'add_teacher_by_manager_all_data':add_teacher_by_manager_all_data, 'add_students_by_manager_all_data':add_students_by_manager_all_data, 'get_course_by_manager':get_course_by_manager, 'form1':form1, 'form2':form2, 'add_staffs_by_manager_all_dta':add_staffs_by_manager_all_dta, 'get_projects_details':get_projects_details, 'Timeoff_staff_teacher_get_vacaday':Timeoff_staff_teacher_get_vacaday, 'Manager_login_information_get1':Manager_login_information_get1, 'store_email_managers_dtta':store_email_managers_dtta, 'get_issue':get_issue, 'get_supervisor_man':get_supervisor_man}
        return render(request, 'manager_page.html', context9)
    else:
        return redirect('/')


def dean_page(request):
    if request.method=="POST":
        dean_id=request.POST.get('dean_id')
        dean_name=request.POST.get('dean_name')


        Dean_get_info = Dean_login_information.objects.get(Dean_ID=dean_id)
        # print(Dean_get_info)

        filter_dean_supervisor = dean_supervisor.objects.get(dean_id=dean_id)

        # get_manager_it11 = manager_supervisor.objects.filter(Supervisor=Dean_get_info)

        get_manager_it = manager_super_details.objects.filter(Supervisor=Dean_get_info)
        print(get_manager_it)


        # filter_dean_supervisor=dean_supervisor.objects.get(dean_id=dean_id)
        #
        # print(filter_dean_supervisor.Supervisor)
        #
        # filter_dean_supervisor_supervisor1111=filter_dean_supervisor.Supervisor
        #
        # if not filter_dean_supervisor_supervisor1111:
        #     filter_dean_supervisor_supervisor='No Supervisor Added From It-service'
        #     get_manager_it = ''
        # else:
        #     filter_dean_supervisor_supervisor=filter_dean_supervisor.Supervisor.Dean_ID
        #     Dean_get_info_super = Dean_login_information.objects.get(Dean_ID=filter_dean_supervisor_supervisor)
        #     details_it_ser = Dean_get_info_super.IT_Service_info
        #     get_manager_it = Manager_login_information.objects.filter(IT_Service_info=details_it_ser)

        dean_usid = Dean_get_info.Dean_ID
        dean_usname = Dean_get_info.Dean_Name

        id_name = dean_usid + ' - ' + dean_usname

        get_issue = list_of_issue.objects.filter(user=id_name).order_by('-id')


        # print(details_it_ser)
        # print(get_manager_it)

        get_email_dean = store_email_dean.objects.filter(dean_id=dean_id)

        context = {'Dean_get_info':Dean_get_info, 'get_email_dean':get_email_dean, 'get_manager_it':get_manager_it, 'get_issue':get_issue, 'filter_dean_supervisor':filter_dean_supervisor}
        return render(request, 'dean_page.html', context)
    else:
        return redirect('/')


def details_all_in_manager(request):
    if request.method=="POST":
        get_manager_id = request.POST.get('get_manager_id')
        get_manager_id2 = request.POST.get('get_manager_id')
        get_it_id = request.POST.get('get_it_id')

        student_list = add_students_by_manager.objects.filter(manager_ID=get_manager_id)
        teacher_list = add_teacher_by_manager.objects.filter(manager_ID=get_manager_id)
        courses_list = add_courses.objects.filter(Manager_Name=get_manager_id)
        # print(student_list)
        context = {'student_list':student_list, 'teacher_list':teacher_list, 'courses_list':courses_list, 'get_manager_id':get_manager_id, 'get_manager_id2':get_manager_id2}
        return render(request, 'details_stu_teacher_course.html', context)
    else:
        return redirect('/')



def submit_issue(request):
    if request.method=="POST":
        issue_name = request.POST.get('issue_name')
        user_info1 = request.POST.get('user_info1')
        user_info2 = request.POST.get('user_info2')
        user_info=user_info1+' - '+user_info2

        IT_Service_info = request.POST.get('IT_Service_info')
        get_it_info=IT_Service_login_Information.objects.get(IT_Service_id=IT_Service_info)
        # print(get_it_info)

        details_issue = request.POST.get('details_issue')

        attachment_issue = request.FILES.get('attachment_issue')
        # print(attachment_ass_up.name)
        # print(attachment_ass_up.size)
        fs = FileSystemStorage()
        if attachment_issue:
            filename = fs.save(attachment_issue.name, attachment_issue)
            url_file = fs.url(filename)

        else:
            url_file = ''

        status='Open'

        issue_data = list_of_issue(IT_Service_info=get_it_info, user=user_info, issue=issue_name, details=details_issue, Assignment_name=url_file, status=status)
        issue_data.save()
        messages.success(request, 'Your Issue is Submitted to It-service !!')

        return redirect('/')
    else:
        return redirect('/')


def search_by_dean(request):
    if request.method=="POST":
        #searching part
        search_by_dean = request.POST.get('search_by_dean')
        get_manager_id = request.POST.get('get_manager_id')
        seach_type = request.POST.get('seach_type')
        # print(seach_type)

        if seach_type=='Student':
            search_student = add_students_by_manager.objects.filter(
                Q(student_ID__icontains=search_by_dean) | Q(student_name__icontains=search_by_dean) | Q(
                    phone_number__icontains=search_by_dean)).filter(manager_ID=get_manager_id)

            search_student_count = add_students_by_manager.objects.filter(
                Q(student_ID__icontains=search_by_dean) | Q(student_name__icontains=search_by_dean) | Q(
                    phone_number__icontains=search_by_dean)).filter(manager_ID=get_manager_id).count()
            # print(search_student)

            context = {'search_student': search_student, 'search_student_count': search_student_count,
                       'search_by_dean': search_by_dean, 'get_manager_id': get_manager_id}
            return render(request, 'details_stu_teacher_course.html', context)

        elif seach_type=='Teacher':
            search_teacher = add_teacher_by_manager.objects.filter(
                Q(teacher_ID__icontains=search_by_dean) | Q(teacher_name__icontains=search_by_dean) | Q(
                    phone_number__icontains=search_by_dean)).filter(manager_ID=get_manager_id)
            search_teacher_count = add_teacher_by_manager.objects.filter(
                Q(teacher_ID__icontains=search_by_dean) | Q(teacher_name__icontains=search_by_dean) | Q(
                    phone_number__icontains=search_by_dean)).filter(manager_ID=get_manager_id).count()
            # print(search_teacher)

            context = {'search_teacher': search_teacher, 'search_teacher_count': search_teacher_count,
                       'search_by_dean': search_by_dean, 'get_manager_id': get_manager_id}
            return render(request, 'details_stu_teacher_course.html', context)
    else:
        return redirect('/')



def details_info_students(request):
    if request.method=="POST":

        get_stu_id = request.POST.get('get_stu_id')

        student_details = add_students_by_manager.objects.get(id=get_stu_id)
        student_details_usrid = student_details.student_ID

        Assign_students_to_c = Assign_students_to_courses.objects.filter(Student_Name=student_details)

        get_email = store_email_stu_new.objects.filter(Student_ID=student_details_usrid)
        # print(get_email)

        context = {'student_details':student_details, 'Assign_students_to_c':Assign_students_to_c, 'get_email':get_email}
        return render(request, 'details_info_students.html', context)
    else:
        return redirect('/')


def add_course(request):
    if request.method == "POST":
        add_course_name=request.POST.get('add_course_name')
        manager_id_name=request.POST.get('manager_id_name')

        get_manager_data = Manager_login_information.objects.get(manager_ID=manager_id_name)
        # print(get_manager_data)

        add_courses_data = add_courses(Course_Name=add_course_name, Manager_Name=get_manager_data)
        add_courses_data.save()
        return redirect('/')
    else:
        return redirect('/')


def add_teach_by_manager(request):
    if request.method=="POST":
        manager_ID = request.POST.get('manager_ID')
        manager_name = request.POST.get('manager_name')

        Supervisor = 'Manager : '+ manager_ID + ' - ' + manager_name
        Role = 'Teacher'

        teacher_ID = request.POST.get('teacher_ID')
        teacher_name = request.POST.get('teacher_name')
        phone_number = request.POST.get('phone_number')
        address = request.POST.get('address')
        dob = request.POST.get('dob')
        major = request.POST.get('major')
        password = request.POST.get('password')

        Manager_login_information_get = Manager_login_information.objects.get(manager_ID=manager_ID)
        print(Manager_login_information_get)

        add_teacher_by_manager_data = add_teacher_by_manager(manager_ID=Manager_login_information_get, teacher_ID=teacher_ID, teacher_name=teacher_name, phone_number=phone_number, address=address, dob=dob, major=major, password=password)
        add_teacher_by_manager_data.save()

        add_teacher_by_manager_data2 = User_Information(Role=Role, Supervisor=Supervisor, User_ID=teacher_ID, User_Name=teacher_name, User_pass=password, phone=phone_number, address=address, dob=dob, major=major)
        add_teacher_by_manager_data2.save()

        messages.success(request, "You Have Successfully Add A Teacher !!")

        return redirect('/')
    else:
        return redirect('/')


def add_staff_by_manager(request):
    if request.method=="POST":
        manager_ID = request.POST.get('manager_ID')
        manager_name = request.POST.get('manager_name')

        Supervisor = 'Manager : '+manager_ID + ' - ' + manager_name
        Role = 'Staff'

        staff_ID = request.POST.get('staff_ID')
        staff_name = request.POST.get('staff_name')
        phone_number = request.POST.get('phone_number')
        address = request.POST.get('address')
        dob = request.POST.get('dob')
        major = request.POST.get('major')
        password = request.POST.get('password')

        Manager_login_information_get = Manager_login_information.objects.get(manager_ID=manager_ID)
        print(Manager_login_information_get)

        add_staffs_by_manager_data = add_staffs_by_manager(manager_ID=Manager_login_information_get, staff_ID=staff_ID, staff_name=staff_name, phone_number=phone_number, address=address, dob=dob, major=major, password=password)
        add_staffs_by_manager_data.save()

        add_staffs_by_manager_data2 = User_Information(Role=Role, Supervisor=Supervisor, User_ID=staff_ID, User_Name=staff_name, User_pass=password, phone=phone_number, address=address, dob=dob, major=major)
        add_staffs_by_manager_data2.save()

        messages.success(request, "You Have Successfully Add A Staff !!")

        return redirect('/')
    else:
        return redirect('/')


def add_project_by_manager(request):
    if request.method=="POST":
        event_name = request.POST.get('event_name')
        manager_id = request.POST.get('manager_id')

        get_manager = Manager_login_information.objects.get(manager_ID=manager_id)
        # print(get_manager)

        status = request.POST.get('status')
        date_ass_up = request.POST.get('date_ass_up')
        details_ass_up = request.POST.get('details_ass_up')

        attachment_ass_up = request.FILES.get('attachment_ass_up')

        # print(attachment_ass_up.name)
        # print(attachment_ass_up.size)
        fs = FileSystemStorage()
        if attachment_ass_up:
            filename = fs.save(attachment_ass_up.name, attachment_ass_up)
            url_file = fs.url(filename)
        else:
            url_file = ''
        # print(url_file)

        add_Projects_by_manager_dtsave = add_Project_by_manager(manager_ID=get_manager, event=event_name, status=status, date=date_ass_up, details=details_ass_up, attachment=url_file)
        add_Projects_by_manager_dtsave.save()

        return redirect('/')
    else:
        return redirect('/')


def details_teach_by_manager(request):
    if request.method=="POST":
        get_teach_name = request.POST.get('get_teach_name')
        # print(get_teach_name)

        get_all_techer_by_manger = add_teacher_by_manager.objects.get(id=get_teach_name)
        # print(get_all_techer_by_manger)

        Assign_teacher_to_courses_filter = Assign_teacher_to_courses.objects.filter(Teacher_Name=get_all_techer_by_manger)
        # print(Assign_teacher_to_courses_filter)
        context10 = {'get_all_techer_by_manger':get_all_techer_by_manger, 'Assign_teacher_to_courses_filter':Assign_teacher_to_courses_filter}

        return render(request, 'details_teach_by_manager.html', context10)
    else:
        return redirect('/')



def details_student_by_it(request):
    if request.method=="POST":
        get_stud_id = request.POST.get('get_stud_id')
        # print(get_stud_id)

        get_details_student = add_students_by_manager.objects.get(id=get_stud_id)
        # print(get_all_techer_by_manger)

        Student_id=get_details_student.student_ID

        Assign_student_to_courses_filter = Assign_students_to_courses.objects.filter(Student_Name=get_details_student)
        # print(Assign_teacher_to_courses_filter)
        get_student_email = store_email_stu_new.objects.filter(Student_ID=Student_id)

        context10 = {'get_details_student':get_details_student, 'Assign_student_to_courses_filter':Assign_student_to_courses_filter, 'get_student_email':get_student_email}
        return render(request, 'details_student_by_it.html', context10)
    else:
        return redirect('/')


def details_teacher_by_it(request):
    if request.method=="POST":
        get_teach_id = request.POST.get('get_teach_id')
        # print(get_stud_id)

        get_details_teach = add_teacher_by_manager.objects.get(id=get_teach_id)
        # print(get_all_techer_by_manger)

        Teacher_ID=get_details_teach.teacher_ID

        Assign_teach_to_courses_filter = Assign_teacher_to_courses.objects.filter(Teacher_Name=get_details_teach)
        # print(Assign_teacher_to_courses_filter)
        get_teacher_email = store_email_teach_new.objects.filter(Teacher_ID=Teacher_ID)

        context10 = {'get_details_teach':get_details_teach, 'Assign_teach_to_courses_filter':Assign_teach_to_courses_filter, 'get_teacher_email':get_teacher_email}
        return render(request, 'details_teacher_by_it.html', context10)
    else:
        return redirect('/')


def details_staff_by_it(request):
    if request.method=="POST":
        get_staff_id = request.POST.get('get_staff_id')
        # print(get_stud_id)

        get_details_staff = add_staffs_by_manager.objects.get(id=get_staff_id)
        # print(get_all_techer_by_manger)

        Staff_ID=get_details_staff.staff_ID

        get_staff_email = store_email_staff_new.objects.filter(Staff_ID=Staff_ID)

        context10 = {'get_details_staff':get_details_staff, 'get_staff_email':get_staff_email}
        return render(request, 'details_staff_by_it.html', context10)
    else:
        return redirect('/')


def add_stu_by_manager(request):
    if request.method=="POST":
        manager_ID = request.POST.get('manager_ID')
        manager_name = request.POST.get('manager_name')

        Supervisor = 'Manager : '+manager_ID + ' - ' + manager_name
        Role = 'Student'

        stu_ID = request.POST.get('stu_ID')
        stu_name = request.POST.get('stu_name')
        phone_number = request.POST.get('phone_number')
        address = request.POST.get('address')
        dob = request.POST.get('dob')
        major = request.POST.get('major')
        password = request.POST.get('password')

        Manager_login_information_get = Manager_login_information.objects.get(manager_ID=manager_ID)
        print(Manager_login_information_get)

        add_students_by_manager_data = add_students_by_manager(manager_ID=Manager_login_information_get, student_ID=stu_ID, student_name=stu_name, phone_number=phone_number, address=address, dob=dob, major=major, password=password)
        add_students_by_manager_data.save()

        add_students_by_manager_data2 = User_Information(Role=Role, Supervisor=Supervisor, User_ID=stu_ID, User_Name=stu_name, User_pass=password, phone=phone_number, address=address, dob=dob, major=major)
        add_students_by_manager_data2.save()

        messages.success(request, "You Have Successfully Add A Student !!")

        return redirect('/')

    else:
        return redirect('/')


def student_id_details(request):
    if request.method=="POST":
        get_students_id = request.POST.get('get_students_id')
        # print(get_students_id)

        add_students_by_manager_all_data = add_students_by_manager.objects.get(
            id=get_students_id)
        # print(add_students_by_manager_all_data)

        add_students_by_manager_data22 = Assign_students_to_courses.objects.filter(
            Student_Name=add_students_by_manager_all_data)
        # print(add_students_by_manager_data22)

        context11= {'add_students_by_manager_all_data':add_students_by_manager_all_data, 'add_students_by_manager_data22':add_students_by_manager_data22}

        return render(request, 'student_id_details.html', context11)

    else:
        return redirect('/')


def staff_id_details(request):
    if request.method=="POST":
        get_staff_id = request.POST.get('get_staff_id')
        # print(get_students_id)

        add_staffs_by_manager_all_data = add_staffs_by_manager.objects.get(
            id=get_staff_id)
        # print(add_students_by_manager_all_data)

        context21= {'add_staffs_by_manager_all_data':add_staffs_by_manager_all_data}

        return render(request, 'staff_details.html', context21)

    else:
        return redirect('/')


def student_course_list(request):
    if request.method=="POST":
        stu_course_id = request.POST.get('stu_course_id')
        # print(stu_course_id)

        stu_course_id_get =  add_students_by_manager.objects.get(student_ID=stu_course_id)
        # print(stu_course_id_get)

        student_usid = stu_course_id_get.student_ID
        student_usname = stu_course_id_get.student_name

        id_name = student_usid+' - '+student_usname

        get_issue = list_of_issue.objects.filter(user=id_name).order_by('-id')

        abc = stu_course_id_get.manager_ID.manager_ID
        print(abc)

        get_it_manag=Manager_login_information.objects.get(manager_ID=abc)

        Student_Course_all_name = Assign_students_to_courses.objects.filter(Student_Name=stu_course_id_get)
        # print(Student_Course_all_name)

        store_email_stu_new_ha = store_email_stu_new.objects.filter(Student_ID=stu_course_id)

        context = {'Student_Course_all_name':Student_Course_all_name, 'stu_course_id':stu_course_id, 'stu_course_id_get':stu_course_id_get, 'store_email_stu_new_ha':store_email_stu_new_ha, 'get_it_manag':get_it_manag, 'get_issue':get_issue}

        return render(request, 'student_course_list.html', context)
    else:
        return redirect('/')


def stu_course(request):
    if request.method == "POST":
        stu_course_id=request.POST.get('get_course_course_details')

        get_course_name_all_data=request.POST.get('get_course_name_all_data')
        # print(get_course_name_all_data)

        add_courses_deatils = add_courses.objects.get(Course_Name=get_course_name_all_data)

        get_course_name = add_students_by_manager.objects.get(student_ID=stu_course_id)
        # print(get_course_name)
        get_course_name_id = get_course_name.id
        get_student_name = get_course_name.student_name

        get_student_course = Assign_students_to_courses.objects.filter(Student_Name=get_course_name)
        # print(get_student_course)

        get_grade_of_my_grade = Grade_Student.objects.filter(Student_ID=stu_course_id)
        # print(get_grade_of_my_grade)

        get_submit_assignment_stu = Student_Submit_Assignment_pro.objects.filter(Student_ID=stu_course_id, course=get_course_name_all_data)
        print(get_submit_assignment_stu)

        # stu_id_page_username = get_student_course
        # print(stu_id_page_username)

        teacher_id_course = Assign_teacher_to_courses.objects.filter(Course_Name=add_courses_deatils)
        print(teacher_id_course)

        get_assignmet_for_stu = Teacher_Assignment_upload_File.objects.filter(course=get_course_name_all_data)
        # print(get_assignmet_for_stu)

        #comments
        get_assignment12 = Teacher_Assignment_upload_File.objects.filter(course=get_course_name_all_data).first()
        print(get_assignment12)

        get_all_comments = Assignment_Comments_all.objects.filter(post=get_assignment12, parent=None)
        replies = Assignment_Comments_all.objects.filter(post=get_assignment12).exclude(parent=None)
        print(get_all_comments, replies)

        repDict = {}
        for reply in replies:
            if reply.parent.serial_no not in repDict.keys():
                repDict[reply.parent.serial_no] = [reply]

            else:
                repDict[reply.parent.serial_no].append(reply)

        context = {'stu_id_page_username':get_course_name_all_data, 'teacher_id_course':teacher_id_course, 'get_assignmet_for_stu': get_assignmet_for_stu, 'get_submit_assignment_stu': get_submit_assignment_stu, 'get_grade_of_my_grade':get_grade_of_my_grade, 'stu_course_id':stu_course_id, 'get_student_name':get_student_name, 'get_all_comments':get_all_comments, 'get_assignment12':get_assignment12, 'repDict':repDict, 'add_courses_deatils':add_courses_deatils}

        return render(request, 'stu_course.html', context)

    else:
        return redirect('/')


def sir_course(request):
    if request.method == "POST":
        teach_course_id=request.POST.get('teach_course_id')
        # print(teach_course_id)

        get_id_teach = add_teacher_by_manager.objects.get(teacher_ID=teach_course_id)
        # print(get_id_teach.id)

        get_id_teach_id = get_id_teach.id

        teacher_usid = get_id_teach.teacher_ID
        teacher_usname = get_id_teach.teacher_name

        id_name = teacher_usid + ' - ' + teacher_usname

        get_issue = list_of_issue.objects.filter(user=id_name).order_by('-id')

        get_id_teach_manager_ID = get_id_teach.manager_ID.manager_ID
        print(get_id_teach_manager_ID)

        get_it_manager = Manager_login_information.objects.get(manager_ID=get_id_teach_manager_ID)

        get_id_teach_Teacher_ID = get_id_teach.teacher_ID
        get_id_teach_name = get_id_teach.teacher_name
        # print(get_id_teach_name, get_id_teach_Teacher_ID)

        request_user = get_id_teach_Teacher_ID + " - " + get_id_teach_name
        Timeoff_user_sdata = Timeoff_staffs_teachers.objects.filter(user_id=request_user)
        # print(Timeoff_user_sdata)

        get_course_name_th = Assign_teacher_to_courses.objects.filter(Teacher_Name=get_id_teach)
        # print(get_course_name_th)

        store_email_teacher_dtta = store_email_teach_new.objects.filter(Teacher_ID=teach_course_id)

        context1 = {'get_course_name_t_cours':get_course_name_th, 'Timeoff_user_sdata':Timeoff_user_sdata, 'get_id_teach_manager_ID':get_id_teach_manager_ID, 'get_id_teach':get_id_teach, 'teach_course_id':teach_course_id,'get_it_manager':get_it_manager, 'store_email_teacher_dtta':store_email_teacher_dtta, 'get_issue':get_issue}

        return render(request, 'teacher_page.html', context1)

    else:
        return redirect('/')


def assignment_page(request):
    if request.method == "POST":
        get_course_name = request.POST.get('get_course_name')
        get_teacher_identi = request.POST.get('get_teacher_identi')
        # print(get_teacher_identi)

        add_courses_get = add_courses.objects.get(Course_Name=get_course_name)
        # print(add_courses_get)

        get_id_course = Assign_students_to_courses.objects.filter(Course_Name=add_courses_get)
        # print(get_id_course)


        # get_id_course_id_teach_id = get_id_course.Teacher_ID.Teacher_ID
        # print(get_id_course_id_teach_id)

        get_id_course_id_teach_name = add_teacher_by_manager.objects.get(teacher_ID=get_teacher_identi)
        # print(get_id_course_id_teach_name)

        get_grade_all_stu_course = Grade_Student.objects.filter(course=get_course_name)
        print(get_grade_all_stu_course)


        get_id_course_course_name = get_course_name
        # print(get_id_course_course_name)

        stu_course_all_stu = Assign_students_to_courses.objects.filter(Course_Name=add_courses_get)
        # print(stu_course_all_stu)

        get_assignment = Teacher_Assignment_upload_File.objects.filter(course=get_course_name)
        # print(get_assignment)

        get_submit_ass_fs_tt = Student_Submit_Assignment_pro.objects.filter(course=get_course_name)
        # print(get_submit_ass_fs_tt)


        get_assignment12 = Teacher_Assignment_upload_File.objects.filter(course=get_course_name).first()
        # print(get_assignment12)

        # get_assignment12_total_grade=get_assignment12.Out_Of_Grade

        get_all_comments = Assignment_Comments_all.objects.filter(post=get_assignment12, parent=None)
        replies = Assignment_Comments_all.objects.filter(post=get_assignment12).exclude(parent=None)
        # print(get_all_comments, replies)

        repDict = {}
        for reply in replies:
            if reply.parent.serial_no not in repDict.keys():
                repDict[reply.parent.serial_no] = [reply]

            else:
                repDict[reply.parent.serial_no].append(reply)


        context3 = {'stu_course_all_stu':stu_course_all_stu, 'get_assignment':get_assignment, 'get_id_course_course_name': get_id_course_course_name, 'get_submit_ass_fs_tt':get_submit_ass_fs_tt, 'get_grade_all_stu_course':get_grade_all_stu_course, 'get_course_name':get_course_name, 'get_id_course_id_teach_name':get_id_course_id_teach_name, 'get_all_comments':get_all_comments, 'get_assignment12':get_assignment12, 'repDict':repDict}

        return render(request, 'assignment_page.html', context3)

    else:
        return redirect('/')


def details_submitted_students(request):
    if request.method=="POST":
        get_assignment_mname = request.POST.get('get_assignment_mname')
        stu_total_grade1 = request.POST.get('stu_total_grade')
        # print(get_assignment_mname)

        get_submit_ass_fs_tt11 = Student_Submit_Assignment_pro.objects.filter(Assignment_name=get_assignment_mname)
        # print(get_submit_ass_fs_tt11)
        context23 = {'get_submit_ass_fs_tt11':get_submit_ass_fs_tt11, 'stu_total_grade1':stu_total_grade1}
        return render(request, 'details_submitted_students.html', context23)
    else:
        return redirect('/')


def details_assignment_comments(request):
    if request.method=="POST":
        get_assignment_id = request.POST.get('get_assignment_id')
        get_stu_id = request.POST.get('get_stu_id')
        get_course_main_name = request.POST.get('get_course_main_name')
        # print(get_course_main_name)

        Teacher_Ass_uplod_File_get_info= Teacher_Assignment_upload_File.objects.get(id=get_assignment_id)
        # print(Teacher_Ass_uplod_File_get_info)

        get_assignment12 = Teacher_Assignment_upload_File.objects.get(id=get_assignment_id)
        print(get_assignment12)

        get_submit_assignment_stu = Student_Submit_Assignment_pro.objects.filter(Student_ID=get_stu_id, Assignment_name=get_course_main_name)

        get_all_comments = Assignment_Comments_all.objects.filter(postID=get_assignment_id, parent=None)
        replies = Assignment_Comments_all.objects.filter(postID=get_assignment_id).exclude(parent=None)
        # print(get_all_comments, replies)

        no_file = Teacher_Ass_uplod_File_get_info.attachment
        # print(no_file)



        repDict = {}
        for reply in replies:
            if reply.parent.serial_no not in repDict.keys():
                repDict[reply.parent.serial_no] = [reply]

            else:
                repDict[reply.parent.serial_no].append(reply)

        if no_file == '':
            context15={'Teacher_Ass_uplod_File_get_info':Teacher_Ass_uplod_File_get_info, 'get_all_comments':get_all_comments, 'repDict':repDict, 'get_assignment_id':get_assignment_id, 'get_submit_assignment_stu':get_submit_assignment_stu}
        else:
            abc2 = Teacher_Ass_uplod_File_get_info.attachment
            context15={'Teacher_Ass_uplod_File_get_info':Teacher_Ass_uplod_File_get_info, 'get_all_comments':get_all_comments, 'repDict':repDict, 'get_assignment_id':get_assignment_id, 'get_submit_assignment_stu':get_submit_assignment_stu, 'abc2':abc2}

        return render(request, 'details_assignment_comments.html', context15)
    else:
        return redirect('/')


def grading_page(request):
    if request.method == "POST":
        stu_id_grade = request.POST.get('stu_id_grade')
        stu_course_grade = request.POST.get('stu_course_grade')
        stu_ass_name_grade = request.POST.get('stu_ass_name_grade')
        # print(stu_id_grade, stu_course_grade, stu_ass_name_grade)
        stu_total_grade=request.POST.get('stu_total_grade12')
        # print(stu_total_grade)

        dict1122 = {'stu_id_grade':stu_id_grade, 'stu_course_grade': stu_course_grade, 'stu_ass_name_grade':stu_ass_name_grade, 'stu_total_grade':stu_total_grade}

        return render(request, 'grading_page.html', dict1122)
    else:
        return redirect('/')


def grading_submit(request):
    if request.method=="POST":

        grade_field_stu_id = request.POST.get('grade_field_stu_id')
        grade_field_course_name = request.POST.get('grade_field_course_name')
        grade_field_assignment_name = request.POST.get('grade_field_assignment_name')
        grade_field = request.POST.get('grade_field')
        out_grade_filed = request.POST.get('out_grade_filed')

        print(grade_field, grade_field_stu_id, grade_field_course_name, grade_field_assignment_name, out_grade_filed)

        Grade_Student_data= Grade_Student (Student_ID = grade_field_stu_id,course = grade_field_course_name, Assignment_name = grade_field_assignment_name, Grade = grade_field, Out_Of_Grade = out_grade_filed)

        Grade_Student_data.save()

        messages.success(request, "You Successfully Grade a student!")

        return redirect('assignment_page')
    else:
        return redirect('/')


def add_assignment(request):
    if request.method=="POST":

        get_course_name_cors = request.POST.get('get_course_name_cors')
        print(get_course_name_cors)

        context2 = {'get_course_name_cors': get_course_name_cors}
        return render(request, 'add_assignment.html', context2)

    else:
        return redirect('/')


def add_assignment_up_page(request):
    if request.method=="POST":
        attachment_ass_up = request.FILES.get('attachment_ass_up')
        # print(attachment_ass_up.name)
        # print(attachment_ass_up.size)
        fs = FileSystemStorage()
        if attachment_ass_up:
            filename = fs.save(attachment_ass_up.name, attachment_ass_up)
            url_file = fs.url(filename)
        else:
            url_file=''
        # print(url_file)

        ass_name = request.POST.get('ass_name')
        course_ass_up = request.POST.get('course_ass_up')
        date_ass_up = request.POST.get('date_ass_up')
        due_date_ass_up = request.POST.get('due_date_ass_up')
        title_ass_up = request.POST.get('title_ass_up')
        details_ass_up = request.POST.get('details_ass_up')

        resource_ass_up = request.POST.get('resource_ass_up')
        posts_ass_up = request.POST.get('posts_ass_up')
        grade_ass_up = request.POST.get('grade_ass_up')


        print(ass_name, course_ass_up, date_ass_up, due_date_ass_up, title_ass_up,  details_ass_up, attachment_ass_up, resource_ass_up, posts_ass_up)

        Teacher_Assignment_upload_file_data = Teacher_Assignment_upload_File(Assignment_name=ass_name, course=course_ass_up, date=date_ass_up, due_date=due_date_ass_up, title=title_ass_up, Details=details_ass_up, attachment=url_file, resource=resource_ass_up, posts=posts_ass_up, Out_Of_Grade=grade_ass_up)

        Teacher_Assignment_upload_file_data.save()
        messages.success(request, "Successfully added Assignment")


        return redirect('/')


def submit_assignment_student(request):
    if request.method == "POST":
        ass_name_stu_submit1 = request.POST.get('ass_name_stu_submit1')
        cor_name_stu_submit1 = request.POST.get('cor_name_stu_submit1')
        stu_id_stu_submit1 = request.POST.get('stu_id_stu_submit1')
        print(ass_name_stu_submit1, cor_name_stu_submit1, stu_id_stu_submit1)

        attachment_ass_sub = request.FILES.get('attachment_ass_sub')
        print(attachment_ass_sub.name)

        fss = FileSystemStorage()
        if attachment_ass_sub:
            filename1 = fss.save(attachment_ass_sub.name, attachment_ass_sub)
            url_file1 = fss.url(filename1)
        else:
            url_file1 = ''
        # print(url_file1)

        Student_Submit_Assignment_pro_data = Student_Submit_Assignment_pro(attachment =url_file1, course=cor_name_stu_submit1, Student_ID=stu_id_stu_submit1, Assignment_name=ass_name_stu_submit1)

        Student_Submit_Assignment_pro_data.save()
        messages.success(request, "You have Successfully submit your Assignment")


        return redirect('/')

    else:
        return redirect('/')


def stu_id_details(request):
    if request.method=="POST":
        get_id_stu_details = request.POST.get('get_id_stu_details')
        # print(get_id_stu_details)

        get_details_stu = add_students_by_manager.objects.get(student_ID=get_id_stu_details)
        # print(get_details_stu)

        get_name_course_stu = Assign_students_to_courses.objects.filter(Student_Name=get_details_stu)
        # print(get_name_course_stu)

        context3= {'get_details_stu':get_details_stu, 'get_name_course_stu':get_name_course_stu}

        return render(request, 'stu_id_details.html', context3)

    else:
        return redirect('/')


def submit_assignment(request):
    if request.method=="POST":

        ass_name_stu_submit = request.POST.get('ass_name_stu_submit')
        cor_name_stu_submit = request.POST.get('cor_name_stu_submit')
        stu_id_stu_submit = request.POST.get('stu_id_stu_submit')
        # print(ass_name_stu_submit, cor_name_stu_submit, stu_id_stu_submit)

        dictnary12 = {'ass_name_stu_submit':ass_name_stu_submit, 'cor_name_stu_submit':cor_name_stu_submit, 'stu_id_stu_submit':stu_id_stu_submit}

        return render(request, 'submit_assignment.html', dictnary12)

    else:
        return redirect('/')


def postComments(request):
    if request.method == "POST":
        comment_ass = request.POST.get('comment_ass')
        comment_username = request.POST.get('comment_username')
        user = comment_username
        ass_id = request.POST.get('ass_id')
        postId = ass_id
        # print(comment_username)

        post = Teacher_Assignment_upload_File.objects.get(id=postId)
        print(post)

        serial_no= request.POST.get('serial_no')
        print(serial_no)

        if serial_no == "":
            Assignment_Comments_data = Assignment_Comments_all(comment=comment_ass, user=user, postID=postId, post=post)
            Assignment_Comments_data.save()

            messages.success(request, "Your Comment is Successfully Posted !!")

        else:
            parent = Assignment_Comments_all.objects.get(serial_no=serial_no)
            Assignment_Comments_data = Assignment_Comments_all(comment=comment_ass, user=user, postID=postId, post=post , parent=parent)
            Assignment_Comments_data.save()

            messages.success(request, "Your Reply is Successfully Posted !!")

    return redirect(f'/')


def project_page(request):
    get_project_name=request.POST.get('get_project_name')
    # print(get_project_name)

    get_project_detail = add_Project_by_manager.objects.get(id=get_project_name)
    # print(get_project_detail)

    no_file = get_project_detail.attachment
    # print(no_file)

    if no_file == '':
        dictionary2 = {'get_project_detail':get_project_detail}
    else:
        abc2 = get_project_detail.attachment
        dictionary2 = {'get_project_detail':get_project_detail, 'abc2':abc2}

    return render(request, "project_page.html", dictionary2)


def vacation_day(request):
    if request.method =="POST":

        req_date=request.POST.get('req_date')
        req_days_date=request.POST.get('req_days_date')
        req_reason=request.POST.get('req_reason')

        req_userid=request.POST.get('req_userid')
        req_username=request.POST.get('req_username')
        print("data")
        print(req_date,req_days_date, req_reason, req_userid, req_username,sep=",")

        req_status = request.POST.get('req_status')
        # print(req_status)

        req_managername = request.POST.get('req_managername')
        print(req_managername)

        get_our_manager = Manager_login_information.objects.get(manager_ID=req_managername)
        print("manager")
        print(get_our_manager)


        request_user = req_userid+" - "+req_username
        print(request_user)


        Timeoff_data = Timeoff_staffs_teachers(Manager_id=get_our_manager, user_id=request_user, date=req_date, requested_days=req_days_date, reason=req_reason, status=req_status)
        Timeoff_data.save()

        messages.success(request, "You Request Has been Sent To The Manager.")
        return redirect('/')
    else:
        return redirect('/')


def details_vacations_by_manager(request):
    if request.method =="POST":
        get_vaca_id=request.POST.get('get_vaca_id')
        # print(get_vaca_id)

        Timeoff_staff_teacher_get_by_id = Timeoff_staffs_teachers.objects.get(id=get_vaca_id)

        form3 = time_off_status(instance=Timeoff_staff_teacher_get_by_id)

        form4 = transfer_vacation_request(instance=Timeoff_staff_teacher_get_by_id)

        if request.method == 'POST':
            get_vaca_id= request.POST.get('get_vaca_id')
            Timeoff_staff_teacher_get_by_id = Timeoff_staffs_teachers.objects.get(id=get_vaca_id)

            form3 = time_off_status(request.POST, instance=Timeoff_staff_teacher_get_by_id)
            if form3.is_valid():
                form3.save()
                return redirect('/')

            form4 = transfer_vacation_request(request.POST, instance=Timeoff_staff_teacher_get_by_id)
            if form4.is_valid():
                form4.save()
                return redirect('/')



        contaxt19 = {'Timeoff_staff_teacher_get_by_id':Timeoff_staff_teacher_get_by_id, 'form3':form3, 'form4':form4}

        return render(request,'details_vacations_by_manager.html', contaxt19)
    else:
        return redirect('/')


def logout_func(request):
    request.session.clear()
    return redirect('login')


