-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2021 at 07:30 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_schol_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add admission', 7, 'add_admission'),
(26, 'Can change admission', 7, 'change_admission'),
(27, 'Can delete admission', 7, 'delete_admission'),
(28, 'Can view admission', 7, 'view_admission'),
(29, 'Can add contractor', 8, 'add_contractor'),
(30, 'Can change contractor', 8, 'change_contractor'),
(31, 'Can delete contractor', 8, 'delete_contractor'),
(32, 'Can view contractor', 8, 'view_contractor'),
(33, 'Can add faculties', 9, 'add_faculties'),
(34, 'Can change faculties', 9, 'change_faculties'),
(35, 'Can delete faculties', 9, 'delete_faculties'),
(36, 'Can view faculties', 9, 'view_faculties'),
(37, 'Can add grade_ student', 10, 'add_grade_student'),
(38, 'Can change grade_ student', 10, 'change_grade_student'),
(39, 'Can delete grade_ student', 10, 'delete_grade_student'),
(40, 'Can view grade_ student', 10, 'view_grade_student'),
(41, 'Can add project', 11, 'add_project'),
(42, 'Can change project', 11, 'change_project'),
(43, 'Can delete project', 11, 'delete_project'),
(44, 'Can view project', 11, 'view_project'),
(45, 'Can add school', 12, 'add_school'),
(46, 'Can change school', 12, 'change_school'),
(47, 'Can delete school', 12, 'delete_school'),
(48, 'Can view school', 12, 'view_school'),
(49, 'Can add status_vacation', 13, 'add_status_vacation'),
(50, 'Can change status_vacation', 13, 'change_status_vacation'),
(51, 'Can delete status_vacation', 13, 'delete_status_vacation'),
(52, 'Can view status_vacation', 13, 'view_status_vacation'),
(53, 'Can add store_email_staff_new', 14, 'add_store_email_staff_new'),
(54, 'Can change store_email_staff_new', 14, 'change_store_email_staff_new'),
(55, 'Can delete store_email_staff_new', 14, 'delete_store_email_staff_new'),
(56, 'Can view store_email_staff_new', 14, 'view_store_email_staff_new'),
(57, 'Can add store_email_stu_new', 15, 'add_store_email_stu_new'),
(58, 'Can change store_email_stu_new', 15, 'change_store_email_stu_new'),
(59, 'Can delete store_email_stu_new', 15, 'delete_store_email_stu_new'),
(60, 'Can view store_email_stu_new', 15, 'view_store_email_stu_new'),
(61, 'Can add store_email_teach_new', 16, 'add_store_email_teach_new'),
(62, 'Can change store_email_teach_new', 16, 'change_store_email_teach_new'),
(63, 'Can delete store_email_teach_new', 16, 'delete_store_email_teach_new'),
(64, 'Can view store_email_teach_new', 16, 'view_store_email_teach_new'),
(65, 'Can add student_courses_with_ teacher_name', 17, 'add_student_courses_with_teacher_name'),
(66, 'Can change student_courses_with_ teacher_name', 17, 'change_student_courses_with_teacher_name'),
(67, 'Can delete student_courses_with_ teacher_name', 17, 'delete_student_courses_with_teacher_name'),
(68, 'Can view student_courses_with_ teacher_name', 17, 'view_student_courses_with_teacher_name'),
(69, 'Can add student_ login_informations', 18, 'add_student_login_informations'),
(70, 'Can change student_ login_informations', 18, 'change_student_login_informations'),
(71, 'Can delete student_ login_informations', 18, 'delete_student_login_informations'),
(72, 'Can view student_ login_informations', 18, 'view_student_login_informations'),
(73, 'Can add student_ submit_ assignment_pro', 19, 'add_student_submit_assignment_pro'),
(74, 'Can change student_ submit_ assignment_pro', 19, 'change_student_submit_assignment_pro'),
(75, 'Can delete student_ submit_ assignment_pro', 19, 'delete_student_submit_assignment_pro'),
(76, 'Can view student_ submit_ assignment_pro', 19, 'view_student_submit_assignment_pro'),
(77, 'Can add teacher_ assignment_upload_ file', 20, 'add_teacher_assignment_upload_file'),
(78, 'Can change teacher_ assignment_upload_ file', 20, 'change_teacher_assignment_upload_file'),
(79, 'Can delete teacher_ assignment_upload_ file', 20, 'delete_teacher_assignment_upload_file'),
(80, 'Can view teacher_ assignment_upload_ file', 20, 'view_teacher_assignment_upload_file'),
(81, 'Can add teacher_login_informa', 21, 'add_teacher_login_informa'),
(82, 'Can change teacher_login_informa', 21, 'change_teacher_login_informa'),
(83, 'Can delete teacher_login_informa', 21, 'delete_teacher_login_informa'),
(84, 'Can view teacher_login_informa', 21, 'view_teacher_login_informa'),
(85, 'Can add user_staff', 22, 'add_user_staff'),
(86, 'Can change user_staff', 22, 'change_user_staff'),
(87, 'Can delete user_staff', 22, 'delete_user_staff'),
(88, 'Can view user_staff', 22, 'view_user_staff'),
(89, 'Can add timeoff_user_all', 23, 'add_timeoff_user_all'),
(90, 'Can change timeoff_user_all', 23, 'change_timeoff_user_all'),
(91, 'Can delete timeoff_user_all', 23, 'delete_timeoff_user_all'),
(92, 'Can view timeoff_user_all', 23, 'view_timeoff_user_all'),
(93, 'Can add students', 24, 'add_students'),
(94, 'Can change students', 24, 'change_students'),
(95, 'Can delete students', 24, 'delete_students'),
(96, 'Can view students', 24, 'view_students'),
(97, 'Can add student_ course', 25, 'add_student_course'),
(98, 'Can change student_ course', 25, 'change_student_course'),
(99, 'Can delete student_ course', 25, 'delete_student_course'),
(100, 'Can view student_ course', 25, 'view_student_course'),
(101, 'Can add department', 26, 'add_department'),
(102, 'Can change department', 26, 'change_department'),
(103, 'Can delete department', 26, 'delete_department'),
(104, 'Can view department', 26, 'view_department'),
(105, 'Can add assignment_ comments_all', 27, 'add_assignment_comments_all'),
(106, 'Can change assignment_ comments_all', 27, 'change_assignment_comments_all'),
(107, 'Can delete assignment_ comments_all', 27, 'delete_assignment_comments_all'),
(108, 'Can view assignment_ comments_all', 27, 'view_assignment_comments_all'),
(109, 'Can add manager_login_information', 28, 'add_manager_login_information'),
(110, 'Can change manager_login_information', 28, 'change_manager_login_information'),
(111, 'Can delete manager_login_information', 28, 'delete_manager_login_information'),
(112, 'Can view manager_login_information', 28, 'view_manager_login_information'),
(113, 'Can add add_teacher_by_manager', 29, 'add_add_teacher_by_manager'),
(114, 'Can change add_teacher_by_manager', 29, 'change_add_teacher_by_manager'),
(115, 'Can delete add_teacher_by_manager', 29, 'delete_add_teacher_by_manager'),
(116, 'Can view add_teacher_by_manager', 29, 'view_add_teacher_by_manager'),
(117, 'Can add add_students_by_manager', 30, 'add_add_students_by_manager'),
(118, 'Can change add_students_by_manager', 30, 'change_add_students_by_manager'),
(119, 'Can delete add_students_by_manager', 30, 'delete_add_students_by_manager'),
(120, 'Can view add_students_by_manager', 30, 'view_add_students_by_manager'),
(121, 'Can add store_email_manager', 31, 'add_store_email_manager'),
(122, 'Can change store_email_manager', 31, 'change_store_email_manager'),
(123, 'Can delete store_email_manager', 31, 'delete_store_email_manager'),
(124, 'Can view store_email_manager', 31, 'view_store_email_manager'),
(125, 'Can add store_email_managers', 32, 'add_store_email_managers'),
(126, 'Can change store_email_managers', 32, 'change_store_email_managers'),
(127, 'Can delete store_email_managers', 32, 'delete_store_email_managers'),
(128, 'Can view store_email_managers', 32, 'view_store_email_managers'),
(129, 'Can add add_ student_ course_by_manager', 33, 'add_add_student_course_by_manager'),
(130, 'Can change add_ student_ course_by_manager', 33, 'change_add_student_course_by_manager'),
(131, 'Can delete add_ student_ course_by_manager', 33, 'delete_add_student_course_by_manager'),
(132, 'Can view add_ student_ course_by_manager', 33, 'view_add_student_course_by_manager'),
(133, 'Can add add_course', 34, 'add_add_course'),
(134, 'Can change add_course', 34, 'change_add_course'),
(135, 'Can delete add_course', 34, 'delete_add_course'),
(136, 'Can view add_course', 34, 'view_add_course'),
(137, 'Can add add_courses', 35, 'add_add_courses'),
(138, 'Can change add_courses', 35, 'change_add_courses'),
(139, 'Can delete add_courses', 35, 'delete_add_courses'),
(140, 'Can view add_courses', 35, 'view_add_courses'),
(141, 'Can add assign_student_to_courses', 36, 'add_assign_student_to_courses'),
(142, 'Can change assign_student_to_courses', 36, 'change_assign_student_to_courses'),
(143, 'Can delete assign_student_to_courses', 36, 'delete_assign_student_to_courses'),
(144, 'Can view assign_student_to_courses', 36, 'view_assign_student_to_courses'),
(145, 'Can add assign_students_to_courses', 37, 'add_assign_students_to_courses'),
(146, 'Can change assign_students_to_courses', 37, 'change_assign_students_to_courses'),
(147, 'Can delete assign_students_to_courses', 37, 'delete_assign_students_to_courses'),
(148, 'Can view assign_students_to_courses', 37, 'view_assign_students_to_courses'),
(149, 'Can add assign_teacher_to_courses', 38, 'add_assign_teacher_to_courses'),
(150, 'Can change assign_teacher_to_courses', 38, 'change_assign_teacher_to_courses'),
(151, 'Can delete assign_teacher_to_courses', 38, 'delete_assign_teacher_to_courses'),
(152, 'Can view assign_teacher_to_courses', 38, 'view_assign_teacher_to_courses'),
(153, 'Can add add_staffs_by_manager', 39, 'add_add_staffs_by_manager'),
(154, 'Can change add_staffs_by_manager', 39, 'change_add_staffs_by_manager'),
(155, 'Can delete add_staffs_by_manager', 39, 'delete_add_staffs_by_manager'),
(156, 'Can view add_staffs_by_manager', 39, 'view_add_staffs_by_manager'),
(157, 'Can add store_email_staffs_by_manager', 40, 'add_store_email_staffs_by_manager'),
(158, 'Can change store_email_staffs_by_manager', 40, 'change_store_email_staffs_by_manager'),
(159, 'Can delete store_email_staffs_by_manager', 40, 'delete_store_email_staffs_by_manager'),
(160, 'Can view store_email_staffs_by_manager', 40, 'view_store_email_staffs_by_manager'),
(161, 'Can add add_ projects_by_manager', 41, 'add_add_projects_by_manager'),
(162, 'Can change add_ projects_by_manager', 41, 'change_add_projects_by_manager'),
(163, 'Can delete add_ projects_by_manager', 41, 'delete_add_projects_by_manager'),
(164, 'Can view add_ projects_by_manager', 41, 'view_add_projects_by_manager'),
(165, 'Can add add_ project_by_manager', 42, 'add_add_project_by_manager'),
(166, 'Can change add_ project_by_manager', 42, 'change_add_project_by_manager'),
(167, 'Can delete add_ project_by_manager', 42, 'delete_add_project_by_manager'),
(168, 'Can view add_ project_by_manager', 42, 'view_add_project_by_manager'),
(169, 'Can add timeoff_staff_teacher', 43, 'add_timeoff_staff_teacher'),
(170, 'Can change timeoff_staff_teacher', 43, 'change_timeoff_staff_teacher'),
(171, 'Can delete timeoff_staff_teacher', 43, 'delete_timeoff_staff_teacher'),
(172, 'Can view timeoff_staff_teacher', 43, 'view_timeoff_staff_teacher'),
(173, 'Can add timeoff_staffs_teachers', 44, 'add_timeoff_staffs_teachers'),
(174, 'Can change timeoff_staffs_teachers', 44, 'change_timeoff_staffs_teachers'),
(175, 'Can delete timeoff_staffs_teachers', 44, 'delete_timeoff_staffs_teachers'),
(176, 'Can view timeoff_staffs_teachers', 44, 'view_timeoff_staffs_teachers'),
(177, 'Can add i t_ service_login_ information', 45, 'add_it_service_login_information'),
(178, 'Can change i t_ service_login_ information', 45, 'change_it_service_login_information'),
(179, 'Can delete i t_ service_login_ information', 45, 'delete_it_service_login_information'),
(180, 'Can view i t_ service_login_ information', 45, 'view_it_service_login_information'),
(181, 'Can add dean_login_information', 46, 'add_dean_login_information'),
(182, 'Can change dean_login_information', 46, 'change_dean_login_information'),
(183, 'Can delete dean_login_information', 46, 'delete_dean_login_information'),
(184, 'Can view dean_login_information', 46, 'view_dean_login_information'),
(185, 'Can add add_ manager_by_it_service', 47, 'add_add_manager_by_it_service'),
(186, 'Can change add_ manager_by_it_service', 47, 'change_add_manager_by_it_service'),
(187, 'Can delete add_ manager_by_it_service', 47, 'delete_add_manager_by_it_service'),
(188, 'Can view add_ manager_by_it_service', 47, 'view_add_manager_by_it_service'),
(189, 'Can add store_email_ it_service', 48, 'add_store_email_it_service'),
(190, 'Can change store_email_ it_service', 48, 'change_store_email_it_service'),
(191, 'Can delete store_email_ it_service', 48, 'delete_store_email_it_service'),
(192, 'Can view store_email_ it_service', 48, 'view_store_email_it_service'),
(193, 'Can add store_email_dean', 49, 'add_store_email_dean'),
(194, 'Can change store_email_dean', 49, 'change_store_email_dean'),
(195, 'Can delete store_email_dean', 49, 'delete_store_email_dean'),
(196, 'Can view store_email_dean', 49, 'view_store_email_dean'),
(197, 'Can add list_of_issue', 50, 'add_list_of_issue'),
(198, 'Can change list_of_issue', 50, 'change_list_of_issue'),
(199, 'Can delete list_of_issue', 50, 'delete_list_of_issue'),
(200, 'Can view list_of_issue', 50, 'view_list_of_issue'),
(201, 'Can add user_ information', 51, 'add_user_information'),
(202, 'Can change user_ information', 51, 'change_user_information'),
(203, 'Can delete user_ information', 51, 'delete_user_information'),
(204, 'Can view user_ information', 51, 'view_user_information'),
(205, 'Can add dean_supervisor', 52, 'add_dean_supervisor'),
(206, 'Can change dean_supervisor', 52, 'change_dean_supervisor'),
(207, 'Can delete dean_supervisor', 52, 'delete_dean_supervisor'),
(208, 'Can view dean_supervisor', 52, 'view_dean_supervisor'),
(209, 'Can add manager_supervisor', 53, 'add_manager_supervisor'),
(210, 'Can change manager_supervisor', 53, 'change_manager_supervisor'),
(211, 'Can delete manager_supervisor', 53, 'delete_manager_supervisor'),
(212, 'Can view manager_supervisor', 53, 'view_manager_supervisor'),
(213, 'Can add manager_super_details', 54, 'add_manager_super_details'),
(214, 'Can change manager_super_details', 54, 'change_manager_super_details'),
(215, 'Can delete manager_super_details', 54, 'delete_manager_super_details'),
(216, 'Can view manager_super_details', 54, 'view_manager_super_details');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$LaNUXXambUUp$dd2izyoSZiFHZJxNazm78fteBh8jkRuW9vRxn0g+740=', '2021-01-13 04:27:16.538083', 1, 'admin', '', '', '', 1, 1, '2020-12-14 17:42:12.679876');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-12-14 17:45:45.493195', '1', '432101', 1, '[{\"added\": {}}]', 21, 1),
(2, '2020-12-14 17:45:59.027154', '2', '432102', 1, '[{\"added\": {}}]', 21, 1),
(3, '2020-12-14 17:47:02.031097', '1', '202001 - Abdur Rahman', 1, '[{\"added\": {}}]', 18, 1),
(4, '2020-12-14 17:47:12.666635', '2', '202002 - Abdulla', 1, '[{\"added\": {}}]', 18, 1),
(5, '2020-12-14 17:47:22.715694', '3', '202003 - kali khan', 1, '[{\"added\": {}}]', 18, 1),
(6, '2020-12-14 17:47:34.347348', '4', '202004 - jubayer khan', 1, '[{\"added\": {}}]', 18, 1),
(7, '2020-12-14 17:51:50.581006', '1', 'Course 1-Computer', 1, '[{\"added\": {}}]', 17, 1),
(8, '2020-12-14 17:51:55.345767', '2', 'Course 2-Electric', 1, '[{\"added\": {}}]', 17, 1),
(9, '2020-12-14 17:51:59.189348', '3', 'Course 3-software', 1, '[{\"added\": {}}]', 17, 1),
(10, '2020-12-14 17:52:07.595870', '4', 'Course 4-technology', 1, '[{\"added\": {}}]', 17, 1),
(11, '2020-12-14 17:52:13.693445', '5', 'Course 5-English', 1, '[{\"added\": {}}]', 17, 1),
(12, '2020-12-14 17:52:19.877940', '6', 'Course 6-math', 1, '[{\"added\": {}}]', 17, 1),
(13, '2020-12-14 18:00:39.284461', '1', '202001 - Abdur Rahman - Course 1-Computer', 1, '[{\"added\": {}}]', 25, 1),
(14, '2020-12-14 18:00:43.501710', '2', '202001 - Abdur Rahman - Course 2-Electric', 1, '[{\"added\": {}}]', 25, 1),
(15, '2020-12-14 18:00:48.355393', '3', '202001 - Abdur Rahman - Course 3-software', 1, '[{\"added\": {}}]', 25, 1),
(16, '2020-12-14 18:00:52.877367', '4', '202003 - kali khan - Course 2-Electric', 1, '[{\"added\": {}}]', 25, 1),
(17, '2020-12-14 18:03:22.283667', '5', '202003 - kali khan - Course 3-software', 1, '[{\"added\": {}}]', 25, 1),
(18, '2020-12-14 18:03:29.766010', '6', '202004 - jubayer khan - Course 1-Computer', 1, '[{\"added\": {}}]', 25, 1),
(19, '2020-12-14 18:03:34.011233', '7', '202002 - Abdulla - Course 1-Computer', 1, '[{\"added\": {}}]', 25, 1),
(20, '2020-12-14 18:03:56.749003', '8', '202004 - jubayer khan - Course 5-English', 1, '[{\"added\": {}}]', 25, 1),
(21, '2020-12-14 18:12:31.948291', '1', 'In-progress', 1, '[{\"added\": {}}]', 13, 1),
(22, '2020-12-14 18:12:40.892333', '2', 'Rejected', 1, '[{\"added\": {}}]', 13, 1),
(23, '2020-12-14 18:12:45.589155', '3', 'Approved', 1, '[{\"added\": {}}]', 13, 1),
(24, '2020-12-14 18:13:18.857698', '1', '432101 - Abdus Sobahan - Approved', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 23, 1),
(25, '2020-12-17 03:59:14.337168', '1', '99001 - manager1', 1, '[{\"added\": {}}]', 28, 1),
(26, '2020-12-17 06:28:14.668751', '3', '90909008 - shanto lal', 3, '', 29, 1),
(27, '2020-12-17 06:28:14.671750', '2', '90909008 - shanto lal', 3, '', 29, 1),
(28, '2020-12-17 18:01:45.910591', '1', 'Course-1 Math - 99001 - manager1', 3, '', 35, 1),
(29, '2020-12-18 05:31:00.741724', '1', '9902977866485654 - siful islam', 1, '[{\"added\": {}}]', 40, 1),
(30, '2020-12-18 05:34:41.904335', '1', '9902977866485654 - siful islam', 3, '', 40, 1),
(31, '2020-12-18 05:51:28.440997', '2', '9902977866485654 - siful islam', 3, '', 40, 1),
(32, '2020-12-18 12:42:44.126978', '3', '232323', 3, '', 10, 1),
(33, '2020-12-18 12:42:48.133403', '2', '202002', 3, '', 10, 1),
(34, '2020-12-18 12:42:48.136401', '1', '202001', 3, '', 10, 1),
(35, '2020-12-18 13:13:35.527598', '3', '9902977866485654 - siful islam', 3, '', 40, 1),
(36, '2020-12-18 13:19:24.983707', '1', '99001', 3, '', 32, 1),
(37, '2020-12-18 13:35:03.294262', '2', '99001', 3, '', 32, 1),
(38, '2020-12-18 13:50:23.763741', '1', '90909009', 3, '', 16, 1),
(39, '2020-12-18 14:06:35.299642', '1', '232323', 3, '', 15, 1),
(40, '2020-12-18 14:21:13.823148', '2', '2030001 - Kalik Khan', 1, '[{\"added\": {}}]', 28, 1),
(41, '2020-12-18 14:32:55.033578', '5', 'Course-2 English - 232323 - monnnanaaa', 3, '', 37, 1),
(42, '2020-12-18 14:32:55.040572', '4', 'Course-1 Math - 099339331 - habib ali', 3, '', 37, 1),
(43, '2020-12-18 14:42:31.837155', '3', 'Something Day', 3, '', 42, 1),
(44, '2020-12-18 14:42:31.839154', '2', 'party day', 3, '', 42, 1),
(45, '2020-12-18 14:42:31.841151', '1', 'indipendent day', 3, '', 42, 1),
(46, '2020-12-18 14:42:37.421285', '5', 'Course-2 pycixs', 3, '', 35, 1),
(47, '2020-12-18 14:42:37.423283', '4', 'Course-1 Math', 3, '', 35, 1),
(48, '2020-12-18 14:42:37.424283', '3', 'Course-2 English', 3, '', 35, 1),
(49, '2020-12-18 14:42:37.426282', '2', 'Course-1 Math', 3, '', 35, 1),
(50, '2020-12-18 14:42:44.028513', '3', '09991291 - haji mohammad', 3, '', 39, 1),
(51, '2020-12-18 14:42:44.030512', '2', '9902977866485654 - siful islam', 3, '', 39, 1),
(52, '2020-12-18 14:42:44.031512', '1', '9902977866485653 - shumon sorkar', 3, '', 39, 1),
(53, '2020-12-18 14:42:50.506359', '3', '099339331 - habib ali', 3, '', 30, 1),
(54, '2020-12-18 14:42:50.508356', '2', '232323323 - jinda hu me', 3, '', 30, 1),
(55, '2020-12-18 14:42:50.510355', '1', '232323 - monnnanaaa', 3, '', 30, 1),
(56, '2020-12-18 14:42:56.412191', '7', '662736441 - taj ami', 3, '', 29, 1),
(57, '2020-12-18 14:42:56.414191', '6', '88288282882 - kali lalio', 3, '', 29, 1),
(58, '2020-12-18 14:42:56.416188', '5', '222222222 - kali laki', 3, '', 29, 1),
(59, '2020-12-18 14:42:56.417189', '4', '90909008 - shanto lal', 3, '', 29, 1),
(60, '2020-12-18 14:42:56.419186', '1', '90909009 - Shaffan', 3, '', 29, 1),
(61, '2020-12-18 14:43:06.107216', '7', 'ssfrgrg....  by monnnanaaa', 3, '', 27, 1),
(62, '2020-12-18 14:43:06.110212', '6', 'sss....  by ', 3, '', 27, 1),
(63, '2020-12-18 14:43:06.112209', '5', 'ok sir i wil....  by Abdur Rahman', 3, '', 27, 1),
(64, '2020-12-18 14:43:06.114207', '4', 'ok sir i wil....  by Abdulla', 3, '', 27, 1),
(65, '2020-12-18 14:43:06.117205', '3', 'your assignm....  by Abdus Sobahan', 3, '', 27, 1),
(66, '2020-12-18 14:43:06.119203', '2', 'what is this....  by Abdur Rahman', 3, '', 27, 1),
(67, '2020-12-18 14:43:06.121201', '1', 'this assinme....  by Abdus Sobahan', 3, '', 27, 1),
(68, '2020-12-18 14:43:15.942141', '2', '2030001 - Kalik Khan', 3, '', 28, 1),
(69, '2020-12-18 14:43:15.944140', '1', '99001 - manager1', 3, '', 28, 1),
(70, '2020-12-18 14:43:51.441080', '3', '99001', 3, '', 32, 1),
(71, '2020-12-18 14:43:57.611175', '1', '9902977866485654', 3, '', 14, 1),
(72, '2020-12-18 14:44:27.784255', '2', '232323', 3, '', 15, 1),
(73, '2020-12-18 14:44:34.842070', '2', '90909009', 3, '', 16, 1),
(74, '2020-12-18 14:46:01.733034', '8', '202004 - jubayer khan - Course 5-English', 3, '', 25, 1),
(75, '2020-12-18 14:46:01.735033', '7', '202002 - Abdulla - Course 1-Computer', 3, '', 25, 1),
(76, '2020-12-18 14:46:01.736030', '6', '202004 - jubayer khan - Course 1-Computer', 3, '', 25, 1),
(77, '2020-12-18 14:46:01.738029', '5', '202003 - kali khan - Course 3-software', 3, '', 25, 1),
(78, '2020-12-18 14:46:01.739029', '4', '202003 - kali khan - Course 2-Electric', 3, '', 25, 1),
(79, '2020-12-18 14:46:01.740029', '3', '202001 - Abdur Rahman - Course 3-software', 3, '', 25, 1),
(80, '2020-12-18 14:46:01.743025', '2', '202001 - Abdur Rahman - Course 2-Electric', 3, '', 25, 1),
(81, '2020-12-18 14:46:01.744025', '1', '202001 - Abdur Rahman - Course 1-Computer', 3, '', 25, 1),
(82, '2020-12-18 14:46:13.122096', '4', '202004 - jubayer khan', 3, '', 18, 1),
(83, '2020-12-18 14:46:13.123094', '3', '202003 - kali khan', 3, '', 18, 1),
(84, '2020-12-18 14:46:13.124094', '2', '202002 - Abdulla', 3, '', 18, 1),
(85, '2020-12-18 14:46:13.126093', '1', '202001 - Abdur Rahman', 3, '', 18, 1),
(86, '2020-12-18 14:46:25.215010', '3', 'Student_Submit_Assignment_pro object (3)', 3, '', 19, 1),
(87, '2020-12-18 14:46:25.217008', '2', 'Student_Submit_Assignment_pro object (2)', 3, '', 19, 1),
(88, '2020-12-18 14:46:25.218006', '1', 'Student_Submit_Assignment_pro object (1)', 3, '', 19, 1),
(89, '2020-12-18 14:46:34.110725', '6', 'Course 6-math', 3, '', 17, 1),
(90, '2020-12-18 14:46:34.112725', '5', 'Course 5-English', 3, '', 17, 1),
(91, '2020-12-18 14:46:34.113722', '4', 'Course 4-technology', 3, '', 17, 1),
(92, '2020-12-18 14:46:34.115721', '3', 'Course 3-software', 3, '', 17, 1),
(93, '2020-12-18 14:46:34.116721', '2', 'Course 2-Electric', 3, '', 17, 1),
(94, '2020-12-18 14:46:34.117718', '1', 'Course 1-Computer', 3, '', 17, 1),
(95, '2020-12-18 14:46:43.782761', '2', 'jaka naka', 3, '', 20, 1),
(96, '2020-12-18 14:46:43.784757', '1', 'Assignment Computer', 3, '', 20, 1),
(97, '2020-12-18 14:46:53.818986', '2', '432102 - Sohel Chowdhury', 3, '', 21, 1),
(98, '2020-12-18 14:46:53.820985', '1', '432101 - Abdus Sobahan', 3, '', 21, 1),
(99, '2020-12-18 14:50:11.115286', '3', '0909001 - Kalik Khan', 1, '[{\"added\": {}}]', 28, 1),
(100, '2020-12-18 15:18:58.001649', '8', 'You have to ....  by ', 3, '', 27, 1),
(101, '2020-12-18 15:19:52.094833', '10', 'av....  by habib ali', 3, '', 27, 1),
(102, '2020-12-18 15:19:52.095832', '9', 'ssss....  by Sohel Chowdhury', 3, '', 27, 1),
(103, '2020-12-18 16:29:32.623004', '4', '0909002 - Abdul jabbar', 1, '[{\"added\": {}}]', 28, 1),
(104, '2020-12-20 03:45:54.529445', '3', '87878701 - shumon ali - In-progress', 3, '', 43, 1),
(105, '2020-12-20 05:54:57.596974', '23', 'asfsef....  by habib ali', 3, '', 27, 1),
(106, '2020-12-20 05:54:57.603969', '22', 'avsde....  by 432101', 3, '', 27, 1),
(107, '2020-12-20 05:54:57.605967', '21', 'drhhdrh....  by Sohel Chowdhury', 3, '', 27, 1),
(108, '2020-12-20 05:54:57.607967', '20', 'afesfg....  by ', 3, '', 27, 1),
(109, '2020-12-20 05:54:57.609965', '19', 'ok....  by ', 3, '', 27, 1),
(110, '2020-12-20 05:54:57.610964', '18', 'hwy....  by Sohel Chowdhury', 3, '', 27, 1),
(111, '2020-12-20 05:54:57.612962', '17', 'do you know?....  by Sohel Chowdhury', 3, '', 27, 1),
(112, '2020-12-20 05:54:57.614960', '16', 'hey....  by Sohel Chowdhury', 3, '', 27, 1),
(113, '2020-12-20 05:54:57.615958', '15', 'this osnia ....  by Sohel Chowdhury', 3, '', 27, 1),
(114, '2020-12-20 05:54:57.617958', '14', 'asvav....  by ', 3, '', 27, 1),
(115, '2020-12-20 05:54:57.618957', '13', 'asv....  by Sohel Chowdhury', 3, '', 27, 1),
(116, '2020-12-20 05:54:57.620953', '12', 'ss....  by Sohel Chowdhury', 3, '', 27, 1),
(117, '2020-12-20 05:54:57.622952', '11', 'You have to ....  by Sohel Chowdhury', 3, '', 27, 1),
(118, '2020-12-20 08:04:53.136338', '7', 'Student_Submit_Assignment_pro object (7)', 3, '', 19, 1),
(119, '2020-12-20 08:04:53.139337', '6', 'Student_Submit_Assignment_pro object (6)', 3, '', 19, 1),
(120, '2020-12-20 08:04:53.140335', '5', 'Student_Submit_Assignment_pro object (5)', 3, '', 19, 1),
(121, '2020-12-20 08:04:53.141334', '4', 'Student_Submit_Assignment_pro object (4)', 3, '', 19, 1),
(122, '2020-12-20 08:14:25.598809', '8', 'Student_Submit_Assignment_pro object (8)', 3, '', 19, 1),
(123, '2020-12-20 08:16:13.835281', '9', 'Student_Submit_Assignment_pro object (9)', 3, '', 19, 1),
(124, '2020-12-20 08:18:04.491596', '5', '432101', 3, '', 10, 1),
(125, '2020-12-20 08:18:04.493594', '4', '232323', 3, '', 10, 1),
(126, '2020-12-20 08:21:28.340801', '4', 'com2', 3, '', 20, 1),
(127, '2020-12-20 08:21:28.342801', '3', 'Computer Assign', 3, '', 20, 1),
(128, '2020-12-20 08:21:43.006722', '10', 'Student_Submit_Assignment_pro object (10)', 3, '', 19, 1),
(129, '2020-12-20 09:23:20.067832', '6', '432101', 3, '', 10, 1),
(130, '2020-12-20 09:34:41.544830', '7', '432101', 3, '', 10, 1),
(131, '2020-12-20 11:54:55.932577', '5', '99003 - Hasan Mahmud', 1, '[{\"added\": {}}]', 28, 1),
(132, '2020-12-20 17:06:54.116623', '4', '8837576536733854993 - Emon Ali - Rejected', 3, '', 44, 1),
(133, '2020-12-20 17:06:54.118623', '3', '7888864375474 - Abdur Rohim - Approved', 3, '', 44, 1),
(134, '2020-12-20 17:06:54.120620', '2', '5454001 - Sohel Chowdhury - Reject', 3, '', 44, 1),
(135, '2020-12-20 17:06:54.121618', '1', '87878701 - shumon ali - Rejected', 3, '', 44, 1),
(136, '2020-12-20 17:16:44.073273', '11', '77828437234982109', 3, '', 10, 1),
(137, '2020-12-20 17:16:44.075272', '10', '77828437234982109', 3, '', 10, 1),
(138, '2020-12-20 17:16:44.077270', '9', '432101', 3, '', 10, 1),
(139, '2020-12-20 17:16:44.078268', '8', '432101', 3, '', 10, 1),
(140, '2020-12-20 18:04:33.934867', '13', '778284372349821010', 1, '[{\"added\": {}}]', 10, 1),
(141, '2020-12-23 04:40:40.406037', '1', '7389837623623542388383 - Jhohir Khan', 1, '[{\"added\": {}}]', 45, 1),
(142, '2020-12-23 13:21:52.959376', '5', '99003 - Hasan Mahmud', 3, '', 28, 1),
(143, '2020-12-23 13:21:52.968369', '4', '0909002 - Abdul jabbar', 3, '', 28, 1),
(144, '2020-12-23 13:21:52.970368', '3', '0909001 - Kalik Khan', 3, '', 28, 1),
(145, '2020-12-24 14:27:15.823945', '1', '7389837623623542388383', 3, '', 48, 1),
(146, '2020-12-24 16:29:09.420379', '1', '7389837623623542388383 - Jhohir Khan', 2, '[{\"changed\": {\"fields\": [\"IT Service password\"]}}]', 45, 1),
(147, '2020-12-25 09:32:48.960609', '5', '453543654643564356435 - Abdur Rahman', 1, '[{\"added\": {}}]', 18, 1),
(148, '2020-12-25 09:33:43.747718', '7', '44564365654 - hrtgewg', 1, '[{\"added\": {}}]', 30, 1),
(149, '2020-12-25 09:50:16.704643', '11', 'Course 1 - Math', 1, '[{\"added\": {}}]', 35, 1),
(150, '2020-12-25 09:50:26.926521', '13', 'Course 1 - Math - 44564365654 - hrtgewg', 1, '[{\"added\": {}}]', 37, 1),
(151, '2020-12-25 09:50:50.815204', '12', 'Course 2-EEE', 1, '[{\"added\": {}}]', 35, 1),
(152, '2020-12-25 09:51:00.430625', '14', 'Course 2-EEE - 44564365654 - hrtgewg', 1, '[{\"added\": {}}]', 37, 1),
(153, '2020-12-25 09:57:13.773467', '3', '44564365654', 1, '[{\"added\": {}}]', 15, 1),
(154, '2021-01-03 02:51:44.334875', '2', '1212132321321344 - minhaj', 1, '[{\"added\": {}}]', 45, 1),
(155, '2021-01-03 02:52:21.483772', '7', '9900133434543 - lilabali', 1, '[{\"added\": {}}]', 28, 1),
(156, '2021-01-03 02:52:56.699392', '8', '990023432434543 - kalam', 1, '[{\"added\": {}}]', 28, 1),
(157, '2021-01-03 03:48:58.799636', '10', '8828828288243434 - mukbul hasan', 1, '[{\"added\": {}}]', 29, 1),
(158, '2021-01-03 10:02:33.521919', '1', '', 3, '', 50, 1),
(159, '2021-01-03 10:09:44.613941', '4', '4535435436 - denar', 3, '', 50, 1),
(160, '2021-01-03 10:09:44.615939', '3', '4535435436denar', 3, '', 50, 1),
(161, '2021-01-03 10:09:44.616940', '2', '4535435436', 3, '', 50, 1),
(162, '2021-01-03 12:02:47.488302', '9', 'Course 1 - Math - 8828828288243434 - mukbul hasan', 1, '[{\"added\": {}}]', 38, 1),
(163, '2021-01-03 12:22:55.505309', '7', '9902977866485653233 - shumon sorkar', 1, '[{\"added\": {}}]', 39, 1),
(164, '2021-01-03 12:23:09.114188', '7', '9902977866485653233 - shumon sorkar', 2, '[{\"changed\": {\"fields\": [\"Password\"]}}]', 39, 1),
(165, '2021-01-10 05:16:49.252689', '15', '990032431 - asfvsaf', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 50, 1),
(166, '2021-01-10 05:17:06.857996', '14', '4535435436 - denar', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 50, 1),
(167, '2021-01-10 05:17:10.283944', '13', '9902977866485653233 - shumon sorkar', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 50, 1),
(168, '2021-01-10 05:17:13.535045', '12', '44564365654 - hrtgewg', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 50, 1),
(169, '2021-01-10 05:17:16.544362', '11', '990032431 - asfvsaf', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 50, 1),
(170, '2021-01-10 05:17:19.641602', '10', '990032431 - asfvsaf', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 50, 1),
(171, '2021-01-10 05:17:23.377273', '9', '44564365654 - hrtgewg', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 50, 1),
(172, '2021-01-10 05:17:26.192762', '8', '9902977866485653233 - shumon sorkar', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 50, 1),
(173, '2021-01-10 05:17:28.988270', '7', '99003243 - asfvsaf', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 50, 1),
(174, '2021-01-10 05:17:31.713841', '6', '8828828288243434 - mukbul hasan', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 50, 1),
(175, '2021-01-10 05:17:34.664211', '5', '4535435436 - denar', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 50, 1),
(176, '2021-01-10 07:48:42.278547', '1', 'Manager - ononto sorkar', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 51, 1),
(177, '2021-01-11 17:54:20.433255', '7', 'dean12121212safasf - Shakil', 2, '[]', 46, 1),
(178, '2021-01-11 17:54:25.498746', '4', 'dean12121212safasf', 2, '[{\"changed\": {\"fields\": [\"Dean id\"]}}]', 52, 1),
(179, '2021-01-11 18:09:24.979679', '7', 'dean12121212safasf - Shakil', 3, '', 46, 1),
(180, '2021-01-11 18:09:24.981677', '6', 'a234234234234234 - Shawon', 3, '', 46, 1),
(181, '2021-01-11 18:09:24.984676', '5', '435345435435435435 - khairul alom', 3, '', 46, 1),
(182, '2021-01-11 18:09:24.986674', '4', '8837438478374873 - jahangir alom', 3, '', 46, 1),
(183, '2021-01-11 18:09:24.987673', '3', '46377744884635884 - ononto sorkar', 3, '', 46, 1),
(184, '2021-01-11 18:09:24.989671', '2', '4535435436 - denar', 3, '', 46, 1),
(185, '2021-01-11 18:09:24.991669', '1', '4535435435 - Asgor', 3, '', 46, 1),
(186, '2021-01-11 18:09:33.095453', '12', '32y363673673 - lkkllklk', 3, '', 28, 1),
(187, '2021-01-11 18:09:33.097453', '11', '737322324342388 - Abdul Karim', 3, '', 28, 1),
(188, '2021-01-11 18:09:33.099450', '10', '73737373737388 - Abdus Subahan Chpoooo', 3, '', 28, 1),
(189, '2021-01-11 18:09:33.100450', '9', '234352363453344 - sagor', 3, '', 28, 1),
(190, '2021-01-11 18:09:33.104447', '8', '990023432434543 - kalam', 3, '', 28, 1),
(191, '2021-01-11 18:09:33.106444', '7', '9900133434543 - lilabali', 3, '', 28, 1),
(192, '2021-01-11 18:09:33.107443', '6', '990032431 - asfvsaf', 3, '', 28, 1),
(193, '2021-01-13 04:31:02.518623', '3', '747774677273733 - Shadat', 1, '[{\"added\": {}}]', 45, 1),
(194, '2021-01-13 05:34:17.981911', '1', '23dfsdfsdf434343', 3, '', 54, 1),
(195, '2021-01-13 05:53:43.233251', '21', '22321253444444 - smoan21222', 2, '[{\"changed\": {\"fields\": [\"Manager ID\"]}}]', 28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(34, 'schoolapp', 'add_course'),
(35, 'schoolapp', 'add_courses'),
(47, 'schoolapp', 'add_manager_by_it_service'),
(41, 'schoolapp', 'add_projects_by_manager'),
(42, 'schoolapp', 'add_project_by_manager'),
(39, 'schoolapp', 'add_staffs_by_manager'),
(30, 'schoolapp', 'add_students_by_manager'),
(33, 'schoolapp', 'add_student_course_by_manager'),
(29, 'schoolapp', 'add_teacher_by_manager'),
(7, 'schoolapp', 'admission'),
(27, 'schoolapp', 'assignment_comments_all'),
(37, 'schoolapp', 'assign_students_to_courses'),
(36, 'schoolapp', 'assign_student_to_courses'),
(38, 'schoolapp', 'assign_teacher_to_courses'),
(8, 'schoolapp', 'contractor'),
(46, 'schoolapp', 'dean_login_information'),
(52, 'schoolapp', 'dean_supervisor'),
(26, 'schoolapp', 'department'),
(9, 'schoolapp', 'faculties'),
(10, 'schoolapp', 'grade_student'),
(45, 'schoolapp', 'it_service_login_information'),
(50, 'schoolapp', 'list_of_issue'),
(28, 'schoolapp', 'manager_login_information'),
(53, 'schoolapp', 'manager_supervisor'),
(54, 'schoolapp', 'manager_super_details'),
(11, 'schoolapp', 'project'),
(12, 'schoolapp', 'school'),
(13, 'schoolapp', 'status_vacation'),
(49, 'schoolapp', 'store_email_dean'),
(48, 'schoolapp', 'store_email_it_service'),
(31, 'schoolapp', 'store_email_manager'),
(32, 'schoolapp', 'store_email_managers'),
(40, 'schoolapp', 'store_email_staffs_by_manager'),
(14, 'schoolapp', 'store_email_staff_new'),
(15, 'schoolapp', 'store_email_stu_new'),
(16, 'schoolapp', 'store_email_teach_new'),
(24, 'schoolapp', 'students'),
(25, 'schoolapp', 'student_course'),
(17, 'schoolapp', 'student_courses_with_teacher_name'),
(18, 'schoolapp', 'student_login_informations'),
(19, 'schoolapp', 'student_submit_assignment_pro'),
(20, 'schoolapp', 'teacher_assignment_upload_file'),
(21, 'schoolapp', 'teacher_login_informa'),
(44, 'schoolapp', 'timeoff_staffs_teachers'),
(43, 'schoolapp', 'timeoff_staff_teacher'),
(23, 'schoolapp', 'timeoff_user_all'),
(51, 'schoolapp', 'user_information'),
(22, 'schoolapp', 'user_staff'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-12-14 17:41:42.770489'),
(2, 'auth', '0001_initial', '2020-12-14 17:41:43.191114'),
(3, 'admin', '0001_initial', '2020-12-14 17:41:44.002392'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-12-14 17:41:44.139270'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-12-14 17:41:44.150260'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-12-14 17:41:44.241180'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-12-14 17:41:44.326103'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-12-14 17:41:44.349084'),
(9, 'auth', '0004_alter_user_username_opts', '2020-12-14 17:41:44.361072'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-12-14 17:41:44.432009'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-12-14 17:41:44.434008'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-12-14 17:41:44.444998'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-12-14 17:41:44.466978'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-12-14 17:41:44.488959'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-12-14 17:41:44.514936'),
(16, 'auth', '0011_update_proxy_permissions', '2020-12-14 17:41:44.527924'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-12-14 17:41:44.549904'),
(18, 'schoolapp', '0001_initial', '2020-12-14 17:41:45.869730'),
(19, 'sessions', '0001_initial', '2020-12-14 17:41:46.755942'),
(20, 'schoolapp', '0002_auto_20201214_2344', '2020-12-14 17:45:00.187504'),
(21, 'schoolapp', '0003_auto_20201214_2345', '2020-12-14 17:45:21.836243'),
(22, 'schoolapp', '0004_auto_20201217_0948', '2020-12-17 03:49:05.854241'),
(23, 'schoolapp', '0005_auto_20201217_1111', '2020-12-17 05:11:21.471860'),
(24, 'schoolapp', '0006_auto_20201217_1456', '2020-12-17 08:56:14.630618'),
(25, 'schoolapp', '0007_auto_20201217_1535', '2020-12-17 09:35:43.811360'),
(26, 'schoolapp', '0008_auto_20201217_1539', '2020-12-17 09:39:54.630504'),
(27, 'schoolapp', '0009_auto_20201217_1540', '2020-12-17 09:40:51.355002'),
(28, 'schoolapp', '0010_auto_20201217_1900', '2020-12-17 13:00:58.497346'),
(29, 'schoolapp', '0011_auto_20201217_1916', '2020-12-17 13:16:08.033765'),
(30, 'schoolapp', '0012_auto_20201217_1952', '2020-12-17 13:52:17.245639'),
(31, 'schoolapp', '0013_auto_20201217_2347', '2020-12-17 17:47:03.048621'),
(32, 'schoolapp', '0014_auto_20201218_0012', '2020-12-17 18:12:56.270789'),
(33, 'schoolapp', '0015_auto_20201218_0015', '2020-12-17 18:15:58.228392'),
(34, 'schoolapp', '0016_auto_20201218_0016', '2020-12-17 18:16:23.291024'),
(35, 'schoolapp', '0017_auto_20201218_1003', '2020-12-18 04:03:59.017127'),
(36, 'schoolapp', '0018_auto_20201218_1044', '2020-12-18 04:44:30.748799'),
(37, 'schoolapp', '0019_auto_20201218_1130', '2020-12-18 05:30:11.035086'),
(38, 'schoolapp', '0020_auto_20201218_1422', '2020-12-18 08:22:17.127360'),
(39, 'schoolapp', '0021_auto_20201218_1440', '2020-12-18 08:40:58.856213'),
(40, 'schoolapp', '0022_auto_20201218_1441', '2020-12-18 08:41:15.621251'),
(41, 'schoolapp', '0023_auto_20201218_1514', '2020-12-18 09:14:41.436056'),
(42, 'schoolapp', '0024_auto_20201218_1534', '2020-12-18 09:34:46.220396'),
(43, 'schoolapp', '0025_auto_20201220_0950', '2020-12-20 03:50:32.876662'),
(44, 'schoolapp', '0026_auto_20201220_1001', '2020-12-20 04:01:22.958966'),
(45, 'schoolapp', '0027_auto_20201220_2223', '2020-12-23 04:05:03.620549'),
(46, 'schoolapp', '0028_auto_20201223_1004', '2020-12-23 04:05:03.657516'),
(47, 'schoolapp', '0029_auto_20201223_1031', '2020-12-23 04:31:48.867662'),
(48, 'schoolapp', '0030_auto_20201223_1852', '2020-12-23 12:52:05.147442'),
(49, 'schoolapp', '0031_auto_20201223_1918', '2020-12-23 13:18:48.361843'),
(50, 'schoolapp', '0032_auto_20201223_1922', '2020-12-23 13:22:44.631338'),
(51, 'schoolapp', '0033_auto_20201223_1924', '2020-12-23 13:24:04.239412'),
(52, 'schoolapp', '0034_auto_20201223_1924', '2020-12-23 13:24:25.275670'),
(53, 'schoolapp', '0035_auto_20201223_1926', '2020-12-23 13:26:10.471097'),
(54, 'schoolapp', '0036_auto_20201224_2020', '2020-12-24 14:20:22.630662'),
(55, 'schoolapp', '0037_auto_20201225_1140', '2020-12-25 05:40:14.240388'),
(56, 'schoolapp', '0038_auto_20210103_1555', '2021-01-03 09:56:02.768966'),
(57, 'schoolapp', '0039_auto_20210103_1556', '2021-01-03 10:10:54.419766'),
(58, 'schoolapp', '0040_auto_20210103_1610', '2021-01-03 10:10:54.543654'),
(59, 'schoolapp', '0041_auto_20210110_1102', '2021-01-10 05:03:02.810343'),
(60, 'schoolapp', '0042_auto_20210110_1116', '2021-01-10 05:16:44.018354'),
(61, 'schoolapp', '0043_auto_20210110_1338', '2021-01-10 07:38:05.914775'),
(62, 'schoolapp', '0044_auto_20210110_1339', '2021-01-10 07:39:24.263937'),
(63, 'schoolapp', '0045_auto_20210111_2031', '2021-01-11 14:32:41.697613'),
(64, 'schoolapp', '0046_auto_20210111_2032', '2021-01-11 14:32:41.798524'),
(65, 'schoolapp', '0047_auto_20210111_2054', '2021-01-11 14:54:46.943927'),
(66, 'schoolapp', '0048_auto_20210111_2110', '2021-01-11 15:10:59.139350'),
(67, 'schoolapp', '0049_auto_20210111_2325', '2021-01-11 17:25:10.617464'),
(68, 'schoolapp', '0050_auto_20210112_0012', '2021-01-11 18:12:57.417539'),
(69, 'schoolapp', '0051_auto_20210112_0013', '2021-01-11 18:13:58.652019'),
(70, 'schoolapp', '0052_auto_20210113_1040', '2021-01-13 04:41:10.346006'),
(71, 'schoolapp', '0053_auto_20210113_1041', '2021-01-13 04:41:10.409949'),
(72, 'schoolapp', '0054_auto_20210113_1041', '2021-01-13 05:17:16.949149'),
(73, 'schoolapp', '0055_auto_20210113_1117', '2021-01-13 05:17:17.036072'),
(74, 'schoolapp', '0056_auto_20210113_1134', '2021-01-13 05:34:29.708457'),
(75, 'schoolapp', '0057_auto_20210113_1135', '2021-01-13 05:35:15.230874'),
(76, 'schoolapp', '0058_auto_20210113_1147', '2021-01-13 05:48:02.152321');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3jrjx9wbrwya6xzf9g8m1fapms5qvswb', '.eJyrVgpJTUzOSC2Kz0xRslIyNTE1MTAwVNKBC-cl5qYCJYLzM1JzFJwz8stTMkqLKpEUFCQWFwMVGBoZm5iamVso1QIATPoZ7A:1kqHJD:1GKXzizhP8M3bECFy_HQ8_8bSph98h5_ti90fFpVaMo', '2021-01-01 15:04:43.527392'),
('4paldgwpqgruso1m9flj15s98nghrxot', '.eJxVjjsOwjAQRK-CXCPL9sY4pqSn4gDROrvG5uNI-VSIu-OIFNBs8ebNaF-iw2VO3TLx2GUSR6HF_pcF7O9c1oBuWK6D7IcyjznIVZFbOsnzQPw4be7fQMIp1bZj7QJ7cHgwbaTIStvGI2pTL_ROUwDjQ-OrpTwQE1BEiGxQ2dbaOnqZl--LDRit9EYKPrmyhCGHHT6yeH8A1V5ELA:1kqHQU:sCZ_etJS5BNUqlvlzFLRynpTa_JOmWOyCBYVKMfOas0', '2021-01-01 15:12:14.114611'),
('74id9z9leacb4iqvnak027x5tvp0x4o0', '.eJxVjMEOwiAQRP-FsyHAFikevfsNZGEXqRqalPZk_Hdp0oNe5jDvzbxFwG0tYWu8hInERWhx-u0ipifXHdAD632Waa7rMkW5K_KgTd5m4tf1cP8OCrbS1461i-zB4dmMmTIrbQePqE1PSE5TBOPj4LulPBATUEbIbFDZ0Vrx-QLrwjg1:1kyy2g:rKrPcjh6ea1qbO72oZZLmfIWtFBsBi3xWIZQpyob4ms', '2021-01-25 14:19:34.430543'),
('aysf5b5y22zyr70roatynkxgjgw9rves', '.eJyrVvIMic9MUbJSMje2sLQwNjczMgYiUxMjYwsLYwtjJR2QgrzE3FSgEq-M_IzMIgXvjMQ8iHhBYnExUNzQyNjE1MzcQqkWADFaFOk:1kzLTN:hhDdlROonSd9lhkQ5S5rYP6cGe_vEusATBVVxrgfjy4', '2021-01-26 15:20:41.004707'),
('b8xfi1535vjpr78p2u1w3q0s2w7squ0q', '.eJxVj7sOwjAMRX8FZUZR82oaNtiZYK-c2iW8EtS0E-LfSaUilcXDOddX9pu1MI2hnTIN7RXZjgm2XTMP3Z3iLPAG8ZJ4l-I4XD2fI3yxmR8T0uOwZP8KAuRQti0J68kpC7VseuypEkY7ACHLVJ0V6JV0XruSqpxCQoU9qJ4kVKYxppSeCbrwO1MrKSqxohGeVPje45Q3p-QhQFzpF-Q8fyeVNrVt2OcL_PhQDw:1korwk:VihzJgU1xJ3_RzXdw6UqBHrIA3R1YzQISqBI_CKb8ro', '2020-12-28 17:47:42.192364'),
('bkynm204f4bj9iknwvw6oiopvdk7ub1h', '.eJyrVnJJTcyLz0xRslIyMTU2NQEhMyUdiHBeYm4qUCIlNS-xCCZWkFhcDBQzNDI2MTUztzBRqgUAnJITLQ:1kw7Qh:b4hEy7G3whlYe6chZMwoF2QC7WIr5gzxPO_XVNENIgE', '2021-01-17 17:44:35.538166'),
('hhst98a3joiv6rus5ze0bdxr476yiii3', '.eJyrVnJJTcyLz0xRslIyMTY1NjEFknCkpAORzkvMTQUqyErMSMxLzyxSSMzJz4XJFSQWFwPlDI2AepVqAYmYFvU:1kzZ3B:BFx89-hr0678sOgZc_yXj6QXFmUGD_jVdpNQJGI0hy0', '2021-01-27 05:50:33.542360'),
('hxk3naubaekg9w4286d58weqkneld7gk', '.eJxVjMEOwiAQRP-FsyHAFikevfsNZGEXqRqalPZk_Hdp0oNe5jDvzbxFwG0tYWu8hInERWhx-u0ipifXHdAD632Waa7rMkW5K_KgTd5m4tf1cP8OCrbS1461i-zB4dmMmTIrbQePqE1PSE5TBOPj4LulPBATUEbIbFDZ0Vrx-QLrwjg1:1kzLS8:TtJdsyvmbNklA60WDV_Gpp52cr60FUboGEKew2OKtIY', '2021-01-26 15:19:24.969426'),
('l71ucxx83liubhy43axc5c2apsw6dttx', '.eJyrVvIMic9MUbJSMje2sLQwNjczMgYiUxMjYwsLYwtjJR2QgrzE3FSgEq-M_IzMIgXvjMQ8iHhBYnExUNzQyNjE1MzcQqkWADFaFOk:1kw0J3:jZkEc-nfEkhcSPjVn8D5g6y-V3fy7wUtI6tTR87_fis', '2021-01-17 10:08:13.807823'),
('n44xyaaswcg9t03d4uurgr0bvmrt1b4z', '.eJyrVgouSUxLi89MUbJSsrQ0MLI0N7cwMzOxMDUzNTYyNlbSgSrIS8xNBSopzijNzc9TKM4vyk4sgksWJBYXAyUNjYxNEpVqAQ0yGSI:1kw2jU:VeYrAxmXYBnRtT_ABt1FDbmciXNvVuvDJ55ZFsXAmMc', '2021-01-17 12:43:40.413460'),
('optjnn0eelgjq6ythqs502s82vah89mv', '.eJxVjMEOwiAQRP-FsyHAFikevfsNZGEXqRqalPZk_Hdp0oNe5jDvzbxFwG0tYWu8hInERWhx-u0ipifXHdAD632Waa7rMkW5K_KgTd5m4tf1cP8OCrbS1461i-zB4dmMmTIrbQePqE1PSE5TBOPj4LulPBATUEbIbFDZ0Vrx-QLrwjg1:1kzXka:S6VBjFcESuFMUeCnsht6G7wDs1bksp1bCp9HISIzeXA', '2021-01-27 04:27:16.543078'),
('q7jkrcj5q0t5460vjt25nlg7cghf2gdt', '.eJxVjssOgjAQRX_FdG0I7VDaunSnxp17MqWDxUdrKKyM_24JbEgmd3Huyc182enW9I4dmAJtNKhaQD5ZCdAaNLD9LAR8U1bOPvp-2F08hoV_MKXMuYBK1kpn2OA0-mZKNCyrfMsstk8Kc-EeGO6xaGMYh94Ws1KsbSqu0dHruLqbAY_Jz88SV5YMKKyF7lxHJZeVQeQiJ7SKOwvC2MpkqzTgyIHrEDoSWEotJfv9AXe5TFE:1ksV3Z:_rGGlM5LeK0t-LLfreu0HCvD4c6goMk00rQ3SJ96xj0', '2021-01-07 18:09:45.953536'),
('q8udiqn7hwdp8iia1w271smec9e77uo9', '.eJyrVnJJTcyLz0xRslIyMTU2NQEhMyUdiHBeYm4qUCIlNS-xCCZWkFhcDBQzNDI2MTUztzBRqgUAnJITLQ:1kslqf:tPNA95LAK-M9imoBHYBkobknzDkPyWvjTgNj7P4KQ5Q', '2021-01-08 12:05:33.679673'),
('qj0yiqi7w562h8maxmkjoc7li9v66ysu', '.eJyrVnJJTcyLz0xRslIyMTY1NjEFknCkpAORzkvMTQUqyErMSMxLzyxSSMzJz4XJFSQWFwPlDI2AepVqAYmYFvU:1kzE3z:Zu3Q4Q7eewfVl-PRZJcPmwLCjJTcwFKYVxQGxK-4_58', '2021-01-26 07:25:59.871613'),
('qww2tmnvz4kecbtw3nn5d124ikr0yofa', '.eJyrVvIMic9MUbJSMje2sLQwNjczMgYiUxMjYwsLYwtjJR2QgrzE3FSgEq-M_IzMIgXvjMQ8iHhBYnExUNzQyNjE1MzcQqkWADFaFOk:1kzZdI:1dwIdfnNJheX1h__upo8buxwNt_JRHuxT7kJoZwLcGM', '2021-01-27 06:27:52.298535'),
('rj4k335kbco06umsybscq0nl3gqi3ozw', '.eJyrVvIMic9MUbJSMje2sLQwNjczMgYiUxMjYwsLYwtjJR2QgrzE3FSgEq-M_IzMIgXvjMQ8iHhBYnExUNzQyNjE1MzcQqkWADFaFOk:1kz14U:DI3BQOULg1CS3Fb4K5pWV_vkmhVW4cb0geAWoaVKQuM', '2021-01-25 17:33:38.314571'),
('sxjdtitlpuxb7j1n67oolmw06zuxnmz2', '.eJxVjDsOwjAQBe_iGlnxP6akp-IA0Tq7jsPHkRJHFIi74wBNmi1m5u2LXcrajciOTGtjtbLGGs0OX5zhQVWkuQz0HCrsYC2pWxeafxOxZwH6G-VN4BXyMPF-ymUeA98S_rcLP09I99O_3T1IsKS6diRcIK8cWNlGjNQIoz2AkPWq3gkMSvqgfa0ar5BQYQQVSUJjWmPY-wOHu0Tx:1kySMC:tjjpVVk9qPnQWKFSFdFRzKpw1cSDfSmrZNprtpo8lcQ', '2021-01-24 04:29:36.499680'),
('v201hzdwf0l16ibzczwsmo8wvox6f05f', '.eJyrVgpJTUzOSC2Kz0xRslKysDA2NzU3MzU2Mzc2tjA1sbQ0VtKBK8lLzE0FKnLNzc9TcMzJRJIpSCwuBsoYGhmbmJqZWyjVAgBtPBlz:1kqxRX:DZeLNaoTCbq37e2BiFX5NgSu8ipRAJSMT5f15dNswPA', '2021-01-03 12:04:07.615041'),
('v46j6w6xevgys862o7i82j8loflhmrej', '.eJxVjMEOwiAQRP-FsyHAFikevfsNZGEXqRqalPZk_Hdp0oNe5jDvzbxFwG0tYWu8hInERWhx-u0ipifXHdAD632Waa7rMkW5K_KgTd5m4tf1cP8OCrbS1461i-zB4dmMmTIrbQePqE1PSE5TBOPj4LulPBATUEbIbFDZ0Vrx-QLrwjg1:1kzE2y:Rlf9EyNMLSMjzaZtfOBovL1xbc8BMPGr_u0PlYdSx6E', '2021-01-26 07:24:56.890687'),
('v53f3s6unbk5fb2czjk7a50z6jhfiweu', '.eJyrVspNzEtMTy2Kz0xRslIyMjYxNjUyNjM2MTU2NjFR0oFL5yXmpgIVFCem5xchCRckFhcDhQ2BGk2VagGeYxeL:1kyVTj:O2Vb2sxZAd6k4CpvU5gmPnk8wLc69Sokv7m_4_RHS6k', '2021-01-24 07:49:35.875774'),
('w79nrgjl8faf6ej1bj7dde7l01xv79j5', 'eyJTdHVfaWQiOiIyMDIwMDIiLCJTdHVfbmFtZSI6IkFiZHVsbGEifQ:1kosFv:0sFJgYUgMSCtFP4dat9jtl9OGUIs9UVg-qCEKdNq2oY', '2020-12-28 18:07:31.717739'),
('z4r0lknqa6wog3omn69je14plmmkt6cn', '.eJyrVgouSUxLi89MUbJSsrQ0MLI0N7cwMzOxMDUzNTYyNlbSgSrIS8xNBSopzijNzc9TKM4vyk4sgksWJBYXAyUNjYxNEpVqAQ0yGSI:1kyBZe:FC5LptmSPd-0CEmXs1M6EU-zKYbsVcsOG3CNy5PscRI', '2021-01-23 10:34:22.769531');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_add_courses`
--

CREATE TABLE `schoolapp_add_courses` (
  `id` int(11) NOT NULL,
  `Course_Name` varchar(200) NOT NULL,
  `Manager_Name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_add_project_by_manager`
--

CREATE TABLE `schoolapp_add_project_by_manager` (
  `id` int(11) NOT NULL,
  `event` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `details` longtext NOT NULL,
  `attachment` varchar(200) NOT NULL,
  `manager_ID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_add_staffs_by_manager`
--

CREATE TABLE `schoolapp_add_staffs_by_manager` (
  `id` int(11) NOT NULL,
  `staff_ID` varchar(200) NOT NULL,
  `staff_name` varchar(200) NOT NULL,
  `phone_number` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `major` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `manager_ID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_add_students_by_manager`
--

CREATE TABLE `schoolapp_add_students_by_manager` (
  `id` int(11) NOT NULL,
  `student_ID` varchar(200) NOT NULL,
  `student_name` varchar(200) NOT NULL,
  `phone_number` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `major` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `manager_ID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_add_students_by_manager`
--

INSERT INTO `schoolapp_add_students_by_manager` (`id`, `student_ID`, `student_name`, `phone_number`, `address`, `dob`, `major`, `password`, `manager_ID_id`) VALUES
(9, '213232333333333', 'szfsdfsfsd121211212', '23243234234', 'sfsafdsaf', '2021-01-20', '231321321', '12345', 17),
(10, 'm324324', 'monna asli khna', '435435435435', '34234324', '2021-01-04', 'monna21432432423423', '12345', 21);

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_add_teacher_by_manager`
--

CREATE TABLE `schoolapp_add_teacher_by_manager` (
  `id` int(11) NOT NULL,
  `teacher_ID` varchar(200) NOT NULL,
  `teacher_name` varchar(200) NOT NULL,
  `phone_number` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `major` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `manager_ID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_admission`
--

CREATE TABLE `schoolapp_admission` (
  `id` int(11) NOT NULL,
  `plan` varchar(500) NOT NULL,
  `year` varchar(200) NOT NULL,
  `ID_course_id` int(11) NOT NULL,
  `ID_school_id` int(11) NOT NULL,
  `ID_student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_assignment_comments_all`
--

CREATE TABLE `schoolapp_assignment_comments_all` (
  `serial_no` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `user` varchar(1000) NOT NULL,
  `postID` mediumtext NOT NULL,
  `time_comment` datetime(6) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_assignment_comments_all`
--

INSERT INTO `schoolapp_assignment_comments_all` (`serial_no`, `comment`, `user`, `postID`, `time_comment`, `parent_id`, `post_id`) VALUES
(29, 'This is part-1, All Student listen care fully. ', 'Sohel Chowdhury', '5', '2020-12-20 14:22:43.859451', NULL, 5),
(30, 'sir i done your job :)', 'habib ali', '5', '2020-12-20 14:22:43.859451', 29, 5),
(31, 'this is important assignment for all student. ', 'Emon Ali', '7', '2020-12-20 15:42:16.613827', NULL, 7),
(32, 'ok sir', 'idoy Khan', '7', '2020-12-20 15:42:16.613827', 31, 7),
(33, 'This is also important', 'Emon Ali', '8', '2020-12-20 15:42:16.613827', NULL, 8),
(34, 'ok sir', 'idoy Khan', '8', '2020-12-20 15:42:16.613827', 33, 8);

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_assign_students_to_courses`
--

CREATE TABLE `schoolapp_assign_students_to_courses` (
  `id` int(11) NOT NULL,
  `Course_Name_id` int(11) NOT NULL,
  `Student_Name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_assign_teacher_to_courses`
--

CREATE TABLE `schoolapp_assign_teacher_to_courses` (
  `id` int(11) NOT NULL,
  `Course_Name_id` int(11) NOT NULL,
  `Teacher_Name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_contractor`
--

CREATE TABLE `schoolapp_contractor` (
  `id` int(11) NOT NULL,
  `contractor_ID` varchar(50) NOT NULL,
  `contractor_Name` varchar(255) NOT NULL,
  `contractor_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_dean_login_information`
--

CREATE TABLE `schoolapp_dean_login_information` (
  `id` int(11) NOT NULL,
  `Dean_ID` varchar(50) NOT NULL,
  `Dean_Name` varchar(255) NOT NULL,
  `Dean_pass` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `IT_Service_info_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_dean_login_information`
--

INSERT INTO `schoolapp_dean_login_information` (`id`, `Dean_ID`, `Dean_Name`, `Dean_pass`, `phone`, `address`, `dob`, `major`, `IT_Service_info_id`) VALUES
(8, '435345435435435435', 'jahangir alom', '12345', '012234455666767', 'adddadsad', '2021-01-28', 'adsdsd', 1),
(9, '435345435435435435234234', 'laupata', '12345', '012234455666767', 'adddadsad', '2021-01-06', 'adsdsd', 1),
(10, '3523543543544554', 'chowdhury', '12345', '012234455666767', 'adddadsad', '2021-01-13', 'adsdsd', 1),
(11, '7377376376723323', 'hjhasjhjaj', '12345', '11223132321', 'sadsd', '2021-01-06', '231321321', 3);

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_dean_supervisor`
--

CREATE TABLE `schoolapp_dean_supervisor` (
  `id` int(11) NOT NULL,
  `dean_id` varchar(1000) NOT NULL,
  `Supervisor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_dean_supervisor`
--

INSERT INTO `schoolapp_dean_supervisor` (`id`, `dean_id`, `Supervisor_id`) VALUES
(5, '435345435435435435', 8),
(6, '435345435435435435234234', 9),
(7, '3523543543544554', NULL),
(8, '7377376376723323', 8);

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_department`
--

CREATE TABLE `schoolapp_department` (
  `id` int(11) NOT NULL,
  `ID_School_id` int(11) NOT NULL,
  `ID_faculties_id` int(11) NOT NULL,
  `ID_student_id` int(11) NOT NULL,
  `ID_user_staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_faculties`
--

CREATE TABLE `schoolapp_faculties` (
  `id` int(11) NOT NULL,
  `biography` varchar(50) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `specialties` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_grade_student`
--

CREATE TABLE `schoolapp_grade_student` (
  `id` int(11) NOT NULL,
  `Student_ID` varchar(200) NOT NULL,
  `course` varchar(2000) NOT NULL,
  `Assignment_name` varchar(200) NOT NULL,
  `Grade` varchar(200) NOT NULL,
  `Out_Of_Grade` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_grade_student`
--

INSERT INTO `schoolapp_grade_student` (`id`, `Student_ID`, `course`, `Assignment_name`, `Grade`, `Out_Of_Grade`) VALUES
(12, '77828437234982109', 'Course-1 EEE', 'EEE Assignment part-1', '78', '100'),
(13, '778284372349821010', 'Course-1 EEE', 'EEE Assignment part-1', '37', '100');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_it_service_login_information`
--

CREATE TABLE `schoolapp_it_service_login_information` (
  `id` int(11) NOT NULL,
  `IT_Service_id` varchar(200) NOT NULL,
  `IT_Service_Name` varchar(200) NOT NULL,
  `IT_Service_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_it_service_login_information`
--

INSERT INTO `schoolapp_it_service_login_information` (`id`, `IT_Service_id`, `IT_Service_Name`, `IT_Service_password`) VALUES
(1, '7389837623623542388383', 'Jhohir Khan', '12345678'),
(2, '1212132321321344', 'minhaj', '12345678'),
(3, '747774677273733', 'Shadat', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_list_of_issue`
--

CREATE TABLE `schoolapp_list_of_issue` (
  `id` int(11) NOT NULL,
  `user` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `issue` varchar(1000) NOT NULL,
  `details` longtext NOT NULL,
  `Assignment_name` varchar(1000) NOT NULL,
  `IT_Service_info_id` int(11) NOT NULL,
  `status` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_list_of_issue`
--

INSERT INTO `schoolapp_list_of_issue` (`id`, `user`, `date`, `issue`, `details`, `Assignment_name`, `IT_Service_info_id`, `status`) VALUES
(5, '4535435436 - denar', '2021-01-03', 'not uploading', 'get_it_infoget_it_infoget_it_info', '/media/assignment%20computer_javChU8.txt', 1, 'Open'),
(6, '8828828288243434 - mukbul hasan', '2021-01-03', 'ami teacher', 'ami teacher', '/media/assignment%20computer_Bj0ho2o.txt', 1, 'Open'),
(7, '99003243 - asfvsaf', '2021-01-03', 'admi manager', 'admi manager', '/media/submit%20assignment_OI6E4lk.txt', 1, 'Open'),
(8, '9902977866485653233 - shumon sorkar', '2021-01-03', 'ami staff', 'ami staff', '/media/assignment%20computer_Igb1S8L.txt', 1, 'Open'),
(9, '44564365654 - hrtgewg', '2021-01-03', 'ami studenta', 'ami studenta', '/media/assignment%20computer_7WBfuTc.txt', 1, 'Open'),
(10, '990032431 - asfvsaf', '2021-01-09', 'amar nam as', 'amar nam as', 'No File Upoloaded', 1, 'Open'),
(11, '990032431 - asfvsaf', '2021-01-09', 'amar nam asamar nam as', 'amar nam asamar nam asamar nam asamar nam as', '', 1, 'Open'),
(12, '44564365654 - hrtgewg', '2021-01-10', 'not uploading', 'not uploading', '', 1, 'Open'),
(13, '9902977866485653233 - shumon sorkar', '2021-01-10', 'not uploading', 'not uploading', '', 1, 'Open'),
(14, '4535435436 - denar', '2021-01-10', 'not uploading', 'not uploading', '', 1, 'Open'),
(15, '990032431 - asfvsaf', '2021-01-10', 'not uploading', 'not uploading', '', 1, 'Open'),
(16, '44564365654 - hrtgewg', '2021-01-10', 'janin a', 'janin a', '', 2, 'Resolved'),
(17, '882882828824343411 - mukbul hasan', '2021-01-10', 'ami techer', 'ami techer', '', 2, 'Open'),
(18, '882882828824343411 - mukbul hasan', '2021-01-10', 'amar nam asamar nam as', 'amar nam asamar nam as', '/media/submit%20assignment_cc41aFR.txt', 2, 'Open'),
(19, '990032431 - asfvsaf', '2021-01-10', 'manager kala', 'manager kala', '/media/assignment%20computer_jdSG9o1.txt', 2, 'Resolved');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_manager_login_information`
--

CREATE TABLE `schoolapp_manager_login_information` (
  `id` int(11) NOT NULL,
  `manager_ID` varchar(50) NOT NULL,
  `manager_Name` varchar(255) NOT NULL,
  `manager_pass` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `IT_Service_info_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_manager_login_information`
--

INSERT INTO `schoolapp_manager_login_information` (`id`, `manager_ID`, `manager_Name`, `manager_pass`, `phone`, `address`, `dob`, `major`, `IT_Service_info_id`) VALUES
(13, '73737373737388sass', 'Abdul Karim', '12345', '012234455666767', 'adddadsad', '2021-01-15', 'adsdsd', 1),
(14, '223244fff656456', 'slam uddin', '12345', '012234455666767', 'adddadsad', '2021-01-21', 'adsdsd', 1),
(15, 'mera342', 'mera', '12345', '12321321', 'mera', '2021-01-08', '231321321', 3),
(16, '2342343sdfwsdfsdf', 'asfsadsad', '12345', '24234234', 'safsadf', '2020-12-29', '231321321', 3),
(17, '8sssss3842349832848234', 'safsdfsdfsdfsdf', '1234567', '23423423423', 'asdsadsadsad', '2021-01-21', '231321321', 3),
(18, '234234234234', 'sdfdsfsdfsdfsdf', '12345', '34234234234234234', 'werewrwerwer', '2021-01-14', '231321321', 1),
(19, '23dfsdfsdf434343', 'sadsadscewgtjtf', '12345', 'sadasda324423', 'safsadf', '2021-01-14', '231321321', 1),
(20, 'monna21432432423423', 'monnna', '12345', 'monna21432432423423', 'monna21432432423423', '2020-12-29', 'monna21432432423423', 1),
(21, '22321253444444', 'smoan21222', '12345', 'smoan21222', 'smoan21222', '2021-01-21', 'smoan21222', 1);

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_manager_supervisor`
--

CREATE TABLE `schoolapp_manager_supervisor` (
  `id` int(11) NOT NULL,
  `manager_id` varchar(1000) NOT NULL,
  `Supervisor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_manager_supervisor`
--

INSERT INTO `schoolapp_manager_supervisor` (`id`, `manager_id`, `Supervisor_id`) VALUES
(2, '73737373737388sass', 8),
(3, '223244fff656456', 8),
(4, 'mera', 0),
(5, '2342343sdfwsdfsdf', 11),
(6, '8sssss3842349832848234', 11),
(7, '234234234234', 10),
(8, '23dfsdfsdf434343', 10),
(9, 'monna21432432423423', 10),
(10, 'smoan21222', 8);

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_manager_super_details`
--

CREATE TABLE `schoolapp_manager_super_details` (
  `id` int(11) NOT NULL,
  `manager_id_id` int(11) NOT NULL,
  `Supervisor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_manager_super_details`
--

INSERT INTO `schoolapp_manager_super_details` (`id`, `manager_id_id`, `Supervisor_id`) VALUES
(2, 20, 9),
(3, 21, 8);

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_project`
--

CREATE TABLE `schoolapp_project` (
  `id` int(11) NOT NULL,
  `event` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `details` longtext NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_school`
--

CREATE TABLE `schoolapp_school` (
  `id` int(11) NOT NULL,
  `Class` varchar(200) NOT NULL,
  `Plan` varchar(200) NOT NULL,
  `Enrollment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_status_vacation`
--

CREATE TABLE `schoolapp_status_vacation` (
  `id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_status_vacation`
--

INSERT INTO `schoolapp_status_vacation` (`id`, `status`) VALUES
(1, 'In-progress'),
(2, 'Rejected'),
(3, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_store_email_dean`
--

CREATE TABLE `schoolapp_store_email_dean` (
  `id` int(11) NOT NULL,
  `dean_id` varchar(30) NOT NULL,
  `dean_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_store_email_dean`
--

INSERT INTO `schoolapp_store_email_dean` (`id`, `dean_id`, `dean_email`) VALUES
(1, '4535435436', 'kygebfgjk@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_store_email_it_service`
--

CREATE TABLE `schoolapp_store_email_it_service` (
  `id` int(11) NOT NULL,
  `It_ID` varchar(30) NOT NULL,
  `It_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_store_email_it_service`
--

INSERT INTO `schoolapp_store_email_it_service` (`id`, `It_ID`, `It_email`) VALUES
(2, '7389837623623542388383', 'kygebfgjk@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_store_email_managers`
--

CREATE TABLE `schoolapp_store_email_managers` (
  `id` int(11) NOT NULL,
  `manager_ID` varchar(30) NOT NULL,
  `manager_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_store_email_managers`
--

INSERT INTO `schoolapp_store_email_managers` (`id`, `manager_ID`, `manager_email`) VALUES
(4, '99003', 'hasanmahmud@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_store_email_staffs_by_manager`
--

CREATE TABLE `schoolapp_store_email_staffs_by_manager` (
  `id` int(11) NOT NULL,
  `Staff_email` varchar(30) NOT NULL,
  `Staff_ID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_store_email_staff_new`
--

CREATE TABLE `schoolapp_store_email_staff_new` (
  `id` int(11) NOT NULL,
  `Staff_ID` varchar(100) NOT NULL,
  `Staff_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_store_email_staff_new`
--

INSERT INTO `schoolapp_store_email_staff_new` (`id`, `Staff_ID`, `Staff_email`) VALUES
(2, '9902977866485653233', 'sumon@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_store_email_stu_new`
--

CREATE TABLE `schoolapp_store_email_stu_new` (
  `id` int(11) NOT NULL,
  `Student_ID` varchar(100) NOT NULL,
  `Student_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_store_email_stu_new`
--

INSERT INTO `schoolapp_store_email_stu_new` (`id`, `Student_ID`, `Student_email`) VALUES
(3, '44564365654', 'kalak@jkshd.com');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_store_email_teach_new`
--

CREATE TABLE `schoolapp_store_email_teach_new` (
  `id` int(11) NOT NULL,
  `Teacher_ID` varchar(100) NOT NULL,
  `Teacher_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_store_email_teach_new`
--

INSERT INTO `schoolapp_store_email_teach_new` (`id`, `Teacher_ID`, `Teacher_email`) VALUES
(3, '8828828288243434', 'makbul@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_students`
--

CREATE TABLE `schoolapp_students` (
  `id` int(11) NOT NULL,
  `biography` varchar(500) NOT NULL,
  `ID_admission_id` int(11) NOT NULL,
  `ID_courses_id` int(11) NOT NULL,
  `ID_school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_student_course`
--

CREATE TABLE `schoolapp_student_course` (
  `id` int(11) NOT NULL,
  `Student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_student_courses_with_teacher_name`
--

CREATE TABLE `schoolapp_student_courses_with_teacher_name` (
  `id` int(11) NOT NULL,
  `course` varchar(200) NOT NULL,
  `Teacher_ID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_student_login_informations`
--

CREATE TABLE `schoolapp_student_login_informations` (
  `id` int(11) NOT NULL,
  `Student_ID` varchar(50) NOT NULL,
  `Student_Name` varchar(255) NOT NULL,
  `Student_pass` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_student_login_informations`
--

INSERT INTO `schoolapp_student_login_informations` (`id`, `Student_ID`, `Student_Name`, `Student_pass`, `phone`, `address`, `dob`, `major`) VALUES
(5, '453543654643564356435', 'Abdur Rahman', '12345678', '76554744854', 'UttarKhan', 'dob', 'majoer');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_student_submit_assignment_pro`
--

CREATE TABLE `schoolapp_student_submit_assignment_pro` (
  `id` int(11) NOT NULL,
  `attachment` varchar(1000) NOT NULL,
  `course` varchar(1000) NOT NULL,
  `Student_ID` varchar(1000) NOT NULL,
  `Assignment_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_student_submit_assignment_pro`
--

INSERT INTO `schoolapp_student_submit_assignment_pro` (`id`, `attachment`, `course`, `Student_ID`, `Assignment_name`) VALUES
(11, '/media/submit%20assignment_Dqt9Pb8.txt', 'Course-1 Computer', '432101', 'Computer Assignment'),
(12, '/media/submit%20assignment_YaLBfTN.txt', 'Course-1 Computer', '432101', 'Computer Assignment part-2'),
(13, '/media/submit%20assignment_FUwUMlX.txt', 'Course-1 EEE', '77828437234982109', 'EEE Assignment part-1'),
(14, '/media/submit%20assignment_etFTsbw.txt', 'Course-1 EEE', '77828437234982109', 'EEE Assignment part-2'),
(15, '/media/submit%20assignment_LJYKutH.txt', 'Course 1 - Math', '44564365654', 'Assignment Calculation');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_teacher_assignment_upload_file`
--

CREATE TABLE `schoolapp_teacher_assignment_upload_file` (
  `id` int(11) NOT NULL,
  `Assignment_name` varchar(500) NOT NULL,
  `course` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `due_date` date NOT NULL,
  `title` varchar(500) NOT NULL,
  `Details` longtext NOT NULL,
  `attachment` mediumtext NOT NULL,
  `resource` varchar(500) NOT NULL,
  `posts` varchar(500) NOT NULL,
  `Out_Of_Grade` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_teacher_assignment_upload_file`
--

INSERT INTO `schoolapp_teacher_assignment_upload_file` (`id`, `Assignment_name`, `course`, `date`, `due_date`, `title`, `Details`, `attachment`, `resource`, `posts`, `Out_Of_Grade`) VALUES
(5, 'Computer Assignment', 'Course-1 Computer', '2020-12-20', '2020-12-23', 'jaka naka title', 'This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. \r\n\r\n\r\nThis is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. \r\n\r\nThis is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. ', '/media/assignment%20computer.txt', 'kuchbi', 'kuchbi', '100'),
(6, 'Computer Assignment part-2', 'Course-1 Computer', '2020-12-20', '2020-12-24', 'jaka naka title', 'This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. \r\n\r\nThis is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. \r\n\r\nThis is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. \r\nThis is Computer Assignment. All Student listen care fully. \r\nThis is Computer Assignment. All Student listen care fully. This is Computer Assignment. All Student listen care fully. ', '/media/assignment%20computer_j2W0wBO.txt', 'kuchbi', 'kuchbi', '100'),
(7, 'EEE Assignment part-1', 'Course-1 EEE', '2020-12-20', '2020-12-24', 'jaka naka title', 'this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. \r\n\r\nthis is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. \r\nthis is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. \r\n\r\nthis is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. \r\n\r\nthis is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. ', '/media/assignment%20computer_dZjbE0f.txt', 'kuchbi', 'kuchbi', '100'),
(8, 'EEE Assignment part-2', 'Course-1 EEE', '2020-12-20', '2020-12-24', 'jaka naka title2', 'this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. \r\n\r\nthis is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. \r\n\r\nthis is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. this is important assignment for all student. \r\nthis is important assignment for all student. \r\n\r\nthis is important assignment for all student. this is important assignment for all student. this is important assignment for all student. ', '/media/assignment%20computer_6lVz9zI.txt', 'kuchbi', 'kuchbi', '100'),
(9, 'Assignment Calculation', 'Course 1 - Math', '2021-01-07', '2021-01-04', 'copmuter intro', 'deatefe', '/media/submit%20assignment_AmQtN37.txt', 'Google', 'post', '100'),
(10, 'Computer Assignment', 'Course 1 - Math', '2021-01-12', '2021-01-27', 'jaka naka title', 'Computer Assignment', '', 'kuchbi', 'kuchbi', '100');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_teacher_login_informa`
--

CREATE TABLE `schoolapp_teacher_login_informa` (
  `id` int(11) NOT NULL,
  `Teacher_ID` varchar(50) NOT NULL,
  `Teacher_Name` varchar(255) NOT NULL,
  `Teacher_pass` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_timeoff_staffs_teachers`
--

CREATE TABLE `schoolapp_timeoff_staffs_teachers` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `requested_days` varchar(150) NOT NULL,
  `reason` longtext NOT NULL,
  `status` varchar(1500) NOT NULL,
  `Manager_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_user_information`
--

CREATE TABLE `schoolapp_user_information` (
  `id` int(11) NOT NULL,
  `Supervisor` varchar(255) NOT NULL,
  `User_ID` varchar(50) NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `User_pass` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `Role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_user_information`
--

INSERT INTO `schoolapp_user_information` (`id`, `Supervisor`, `User_ID`, `User_Name`, `User_pass`, `phone`, `address`, `dob`, `major`, `Role`) VALUES
(1, '7389837623623542388383 - Jhohir Khan', '46377744884635884', 'ononto sorkar', '12345', '+8803245434435', 'Uttara', '2021-01-20', 'Major', 'Manager'),
(2, '7389837623623542388383 - Jhohir Khan', '234352363453344', 'sagor', '12345', '+8803245434435', 'Uttara', '2021-01-27', 'Major', 'Dean'),
(3, 'Manager : 234352363453344 - sagor', '65367452346236', 'jamay kondokar', '12345', '+8803245434435', 'Uttara', '2021-01-07', 'Major', 'Staff'),
(4, 'Manager : 234352363453344 - sagor', '2365654555556', 'sjamsul haque', '12345', '+8803245434435', 'Uttara', '2021-01-20', 'Major', 'Teacher'),
(5, 'Manager : 234352363453344 - sagor', '77744488467733', 'julfukur kak', '12345', '+8803245434435', 'Uttara', '2021-01-09', 'Major', 'Student'),
(6, 'It-Service : 7389837623623542388383 - Jhohir Khan', '8837438478374873', 'jahangir alom', '12345', '012234455666767', 'adddadsad', '2021-01-06', 'adsdsd', 'Dean'),
(7, 'It-Service : 7389837623623542388383 - Jhohir Khan', '435345435435435435', 'khairul alom', '12345', '012234455666767', 'adddadsad', '2021-01-22', 'adsdsd', 'Dean'),
(8, 'It-Service : 7389837623623542388383 - Jhohir Khan', 'a234234234234234', 'Shawon', '12345', '012234455666767', 'adddadsad', '2021-01-14', 'adsdsd', 'Dean'),
(9, 'It-Service : 7389837623623542388383 - Jhohir Khan', 'dean12121212', 'Shakil', '12345', '012234455666767', 'adddadsad', '2021-01-06', 'adsdsd', 'Dean'),
(10, 'It-service : 7389837623623542388383 - Jhohir Khan', '73737373737388', 'Abdus Subahan Chpoooo', '12345', '012234455666767', 'adddadsad', '2021-01-28', 'adsdsd', 'Manager'),
(11, 'It-service : 7389837623623542388383 - Jhohir Khan', '737322324342388', 'Abdul Karim', '12345', '012234455666767', 'adddadsad', '2021-01-13', 'adsdsd', 'Manager'),
(12, 'It-service : 7389837623623542388383 - Jhohir Khan', '32y363673673', 'lkkllklk', '12345', '012234455666767', 'adddadsad', '2021-01-20', 'adsdsd', 'Manager'),
(13, 'It-Service : 7389837623623542388383 - Jhohir Khan', '435345435435435435', 'jahangir alom', '12345', '012234455666767', 'adddadsad', '2021-01-28', 'adsdsd', 'Dean'),
(14, 'It-service : 7389837623623542388383 - Jhohir Khan', '73737373737388sass', 'Abdul Karim', '12345', '012234455666767', 'adddadsad', '2021-01-15', 'adsdsd', 'Manager'),
(15, 'It-Service : 7389837623623542388383 - Jhohir Khan', '435345435435435435234234', 'laupata', '12345', '012234455666767', 'adddadsad', '2021-01-06', 'adsdsd', 'Dean'),
(16, 'It-Service : 7389837623623542388383 - Jhohir Khan', '3523543543544554', 'chowdhury', '12345', '012234455666767', 'adddadsad', '2021-01-13', 'adsdsd', 'Dean'),
(17, 'It-service : 7389837623623542388383 - Jhohir Khan', '223244fff656456', 'slam uddin', '12345', '012234455666767', 'adddadsad', '2021-01-21', 'adsdsd', 'Manager'),
(18, 'It-Service : 747774677273733 - Shadat', '7377376376723323', 'hjhasjhjaj', '12345', '11223132321', 'sadsd', '2021-01-06', '231321321', 'Dean'),
(19, 'It-service : 747774677273733 - Shadat', 'mera342', 'mera', '12345', '12321321', 'mera', '2021-01-08', '231321321', 'Manager'),
(20, 'It-service : 747774677273733 - Shadat', '2342343sdfwsdfsdf', 'asfsadsad', '12345', '24234234', 'safsadf', '2020-12-29', '231321321', 'Manager'),
(21, 'It-service : 747774677273733 - Shadat', '8sssss3842349832848234', 'safsdfsdfsdfsdf', '1234567', '23423423423', 'asdsadsadsad', '2021-01-21', '231321321', 'Manager'),
(22, 'Manager : 8sssss3842349832848234 - safsdfsdfsdfsdf', '213232333333333', 'szfsdfsfsd121211212', '12345', '23243234234', 'sfsafdsaf', '2021-01-20', '231321321', 'Student'),
(23, 'It-service : 7389837623623542388383 - Jhohir Khan', '234234234234', 'sdfdsfsdfsdfsdf', '12345', '34234234234234234', 'werewrwerwer', '2021-01-14', '231321321', 'Manager'),
(24, 'It-service : 7389837623623542388383 - Jhohir Khan', '23dfsdfsdf434343', 'sadsadscewgtjtf', '12345', 'sadasda324423', 'safsadf', '2021-01-14', '231321321', 'Manager'),
(25, 'It-service : 7389837623623542388383 - Jhohir Khan', 'monna21432432423423', 'monnna', '12345', 'monna21432432423423', 'monna21432432423423', '2020-12-29', 'monna21432432423423', 'Manager'),
(26, 'It-service : 7389837623623542388383 - Jhohir Khan', 'smoan21222', 'smoan21222', '12345', 'smoan21222', 'smoan21222', '2021-01-21', 'smoan21222', 'Manager'),
(27, 'Manager : 22321253444444 - smoan21222', 'm324324', 'monna asli khna', '12345', '435435435435', '34234324', '2021-01-04', 'monna21432432423423', 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_user_staff`
--

CREATE TABLE `schoolapp_user_staff` (
  `id` int(11) NOT NULL,
  `user_staff_ID` varchar(50) NOT NULL,
  `user_staffuser_Name` varchar(255) NOT NULL,
  `user_staff_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `schoolapp_add_courses`
--
ALTER TABLE `schoolapp_add_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_add_course_Manager_Name_id_6ccc4a5a_fk_schoolapp` (`Manager_Name_id`);

--
-- Indexes for table `schoolapp_add_project_by_manager`
--
ALTER TABLE `schoolapp_add_project_by_manager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_add_projec_manager_ID_id_31968c78_fk_schoolapp` (`manager_ID_id`);

--
-- Indexes for table `schoolapp_add_staffs_by_manager`
--
ALTER TABLE `schoolapp_add_staffs_by_manager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_add_staffs_manager_ID_id_2df8b036_fk_schoolapp` (`manager_ID_id`);

--
-- Indexes for table `schoolapp_add_students_by_manager`
--
ALTER TABLE `schoolapp_add_students_by_manager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_add_studen_manager_ID_id_39e614cb_fk_schoolapp` (`manager_ID_id`);

--
-- Indexes for table `schoolapp_add_teacher_by_manager`
--
ALTER TABLE `schoolapp_add_teacher_by_manager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_add_teache_manager_ID_id_cacc30af_fk_schoolapp` (`manager_ID_id`);

--
-- Indexes for table `schoolapp_admission`
--
ALTER TABLE `schoolapp_admission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_admission_ID_course_id_5a1ea0c6_fk_schoolapp` (`ID_course_id`),
  ADD KEY `schoolapp_admission_ID_school_id_c879d8c8_fk_schoolapp_school_id` (`ID_school_id`),
  ADD KEY `schoolapp_admission_ID_student_id_e8d5f7c6_fk_schoolapp` (`ID_student_id`);

--
-- Indexes for table `schoolapp_assignment_comments_all`
--
ALTER TABLE `schoolapp_assignment_comments_all`
  ADD PRIMARY KEY (`serial_no`),
  ADD KEY `schoolapp_assignment_parent_id_9a8fd711_fk_schoolapp` (`parent_id`),
  ADD KEY `schoolapp_assignment_post_id_20bcbd69_fk_schoolapp` (`post_id`);

--
-- Indexes for table `schoolapp_assign_students_to_courses`
--
ALTER TABLE `schoolapp_assign_students_to_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_assign_stu_Course_Name_id_de141fcb_fk_schoolapp` (`Course_Name_id`),
  ADD KEY `schoolapp_assign_stu_Student_Name_id_1227f972_fk_schoolapp` (`Student_Name_id`);

--
-- Indexes for table `schoolapp_assign_teacher_to_courses`
--
ALTER TABLE `schoolapp_assign_teacher_to_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_assign_tea_Course_Name_id_15ab34ff_fk_schoolapp` (`Course_Name_id`),
  ADD KEY `schoolapp_assign_tea_Teacher_Name_id_2c0fe72f_fk_schoolapp` (`Teacher_Name_id`);

--
-- Indexes for table `schoolapp_contractor`
--
ALTER TABLE `schoolapp_contractor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_dean_login_information`
--
ALTER TABLE `schoolapp_dean_login_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_dean_login_IT_Service_info_id_0f0f7905_fk_schoolapp` (`IT_Service_info_id`);

--
-- Indexes for table `schoolapp_dean_supervisor`
--
ALTER TABLE `schoolapp_dean_supervisor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_dean_super_Supervisor_id_6d4fe677_fk_schoolapp` (`Supervisor_id`);

--
-- Indexes for table `schoolapp_department`
--
ALTER TABLE `schoolapp_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_department_ID_School_id_5f3e1457_fk_schoolapp` (`ID_School_id`),
  ADD KEY `schoolapp_department_ID_faculties_id_d2a18f59_fk_schoolapp` (`ID_faculties_id`),
  ADD KEY `schoolapp_department_ID_student_id_67ba13d2_fk_schoolapp` (`ID_student_id`),
  ADD KEY `schoolapp_department_ID_user_staff_id_6b60999e_fk_schoolapp` (`ID_user_staff_id`);

--
-- Indexes for table `schoolapp_faculties`
--
ALTER TABLE `schoolapp_faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_grade_student`
--
ALTER TABLE `schoolapp_grade_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_it_service_login_information`
--
ALTER TABLE `schoolapp_it_service_login_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_list_of_issue`
--
ALTER TABLE `schoolapp_list_of_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_list_of_is_IT_Service_info_id_a21049b5_fk_schoolapp` (`IT_Service_info_id`);

--
-- Indexes for table `schoolapp_manager_login_information`
--
ALTER TABLE `schoolapp_manager_login_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_manager_lo_IT_Service_info_id_44fbcc4d_fk_schoolapp` (`IT_Service_info_id`);

--
-- Indexes for table `schoolapp_manager_supervisor`
--
ALTER TABLE `schoolapp_manager_supervisor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_manager_su_Supervisor_id_37ae9f1f_fk_schoolapp` (`Supervisor_id`);

--
-- Indexes for table `schoolapp_manager_super_details`
--
ALTER TABLE `schoolapp_manager_super_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_manager_super_details_manager_id_id_8d83a805` (`manager_id_id`),
  ADD KEY `schoolapp_manager_su_Supervisor_id_02c44d8f_fk_schoolapp` (`Supervisor_id`);

--
-- Indexes for table `schoolapp_project`
--
ALTER TABLE `schoolapp_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_school`
--
ALTER TABLE `schoolapp_school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_status_vacation`
--
ALTER TABLE `schoolapp_status_vacation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_store_email_dean`
--
ALTER TABLE `schoolapp_store_email_dean`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_store_email_it_service`
--
ALTER TABLE `schoolapp_store_email_it_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_store_email_managers`
--
ALTER TABLE `schoolapp_store_email_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_store_email_staffs_by_manager`
--
ALTER TABLE `schoolapp_store_email_staffs_by_manager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_store_emai_Staff_ID_id_cc29f77e_fk_schoolapp` (`Staff_ID_id`);

--
-- Indexes for table `schoolapp_store_email_staff_new`
--
ALTER TABLE `schoolapp_store_email_staff_new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_store_email_stu_new`
--
ALTER TABLE `schoolapp_store_email_stu_new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_store_email_teach_new`
--
ALTER TABLE `schoolapp_store_email_teach_new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_students`
--
ALTER TABLE `schoolapp_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_students_ID_admission_id_7ac544f0_fk_schoolapp` (`ID_admission_id`),
  ADD KEY `schoolapp_students_ID_courses_id_aa4678b2_fk_schoolapp` (`ID_courses_id`),
  ADD KEY `schoolapp_students_ID_school_id_a66f8d45_fk_schoolapp_school_id` (`ID_school_id`);

--
-- Indexes for table `schoolapp_student_course`
--
ALTER TABLE `schoolapp_student_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_student_co_Student_id_86fe5ac4_fk_schoolapp` (`Student_id`),
  ADD KEY `schoolapp_student_co_course_id_fce51f35_fk_schoolapp` (`course_id`);

--
-- Indexes for table `schoolapp_student_courses_with_teacher_name`
--
ALTER TABLE `schoolapp_student_courses_with_teacher_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_student_co_Teacher_ID_id_5e41227d_fk_schoolapp` (`Teacher_ID_id`);

--
-- Indexes for table `schoolapp_student_login_informations`
--
ALTER TABLE `schoolapp_student_login_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_student_submit_assignment_pro`
--
ALTER TABLE `schoolapp_student_submit_assignment_pro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_teacher_assignment_upload_file`
--
ALTER TABLE `schoolapp_teacher_assignment_upload_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_teacher_login_informa`
--
ALTER TABLE `schoolapp_teacher_login_informa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_timeoff_staffs_teachers`
--
ALTER TABLE `schoolapp_timeoff_staffs_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_timeoff_st_Manager_id_id_7e23c884_fk_schoolapp` (`Manager_id_id`);

--
-- Indexes for table `schoolapp_user_information`
--
ALTER TABLE `schoolapp_user_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_user_staff`
--
ALTER TABLE `schoolapp_user_staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `schoolapp_add_courses`
--
ALTER TABLE `schoolapp_add_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `schoolapp_add_project_by_manager`
--
ALTER TABLE `schoolapp_add_project_by_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schoolapp_add_staffs_by_manager`
--
ALTER TABLE `schoolapp_add_staffs_by_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `schoolapp_add_students_by_manager`
--
ALTER TABLE `schoolapp_add_students_by_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schoolapp_add_teacher_by_manager`
--
ALTER TABLE `schoolapp_add_teacher_by_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `schoolapp_admission`
--
ALTER TABLE `schoolapp_admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoolapp_assignment_comments_all`
--
ALTER TABLE `schoolapp_assignment_comments_all`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `schoolapp_assign_students_to_courses`
--
ALTER TABLE `schoolapp_assign_students_to_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `schoolapp_assign_teacher_to_courses`
--
ALTER TABLE `schoolapp_assign_teacher_to_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `schoolapp_contractor`
--
ALTER TABLE `schoolapp_contractor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoolapp_dean_login_information`
--
ALTER TABLE `schoolapp_dean_login_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `schoolapp_dean_supervisor`
--
ALTER TABLE `schoolapp_dean_supervisor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `schoolapp_department`
--
ALTER TABLE `schoolapp_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoolapp_faculties`
--
ALTER TABLE `schoolapp_faculties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoolapp_grade_student`
--
ALTER TABLE `schoolapp_grade_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `schoolapp_it_service_login_information`
--
ALTER TABLE `schoolapp_it_service_login_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schoolapp_list_of_issue`
--
ALTER TABLE `schoolapp_list_of_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `schoolapp_manager_login_information`
--
ALTER TABLE `schoolapp_manager_login_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `schoolapp_manager_supervisor`
--
ALTER TABLE `schoolapp_manager_supervisor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schoolapp_manager_super_details`
--
ALTER TABLE `schoolapp_manager_super_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schoolapp_project`
--
ALTER TABLE `schoolapp_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoolapp_school`
--
ALTER TABLE `schoolapp_school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoolapp_status_vacation`
--
ALTER TABLE `schoolapp_status_vacation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schoolapp_store_email_dean`
--
ALTER TABLE `schoolapp_store_email_dean`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schoolapp_store_email_it_service`
--
ALTER TABLE `schoolapp_store_email_it_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schoolapp_store_email_managers`
--
ALTER TABLE `schoolapp_store_email_managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schoolapp_store_email_staffs_by_manager`
--
ALTER TABLE `schoolapp_store_email_staffs_by_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schoolapp_store_email_staff_new`
--
ALTER TABLE `schoolapp_store_email_staff_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schoolapp_store_email_stu_new`
--
ALTER TABLE `schoolapp_store_email_stu_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schoolapp_store_email_teach_new`
--
ALTER TABLE `schoolapp_store_email_teach_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schoolapp_students`
--
ALTER TABLE `schoolapp_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoolapp_student_course`
--
ALTER TABLE `schoolapp_student_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `schoolapp_student_courses_with_teacher_name`
--
ALTER TABLE `schoolapp_student_courses_with_teacher_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schoolapp_student_login_informations`
--
ALTER TABLE `schoolapp_student_login_informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schoolapp_student_submit_assignment_pro`
--
ALTER TABLE `schoolapp_student_submit_assignment_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `schoolapp_teacher_assignment_upload_file`
--
ALTER TABLE `schoolapp_teacher_assignment_upload_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schoolapp_teacher_login_informa`
--
ALTER TABLE `schoolapp_teacher_login_informa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schoolapp_timeoff_staffs_teachers`
--
ALTER TABLE `schoolapp_timeoff_staffs_teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schoolapp_user_information`
--
ALTER TABLE `schoolapp_user_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `schoolapp_user_staff`
--
ALTER TABLE `schoolapp_user_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `schoolapp_add_courses`
--
ALTER TABLE `schoolapp_add_courses`
  ADD CONSTRAINT `schoolapp_add_course_Manager_Name_id_6ccc4a5a_fk_schoolapp` FOREIGN KEY (`Manager_Name_id`) REFERENCES `schoolapp_manager_login_information` (`id`);

--
-- Constraints for table `schoolapp_add_project_by_manager`
--
ALTER TABLE `schoolapp_add_project_by_manager`
  ADD CONSTRAINT `schoolapp_add_projec_manager_ID_id_31968c78_fk_schoolapp` FOREIGN KEY (`manager_ID_id`) REFERENCES `schoolapp_manager_login_information` (`id`);

--
-- Constraints for table `schoolapp_add_staffs_by_manager`
--
ALTER TABLE `schoolapp_add_staffs_by_manager`
  ADD CONSTRAINT `schoolapp_add_staffs_manager_ID_id_2df8b036_fk_schoolapp` FOREIGN KEY (`manager_ID_id`) REFERENCES `schoolapp_manager_login_information` (`id`);

--
-- Constraints for table `schoolapp_add_students_by_manager`
--
ALTER TABLE `schoolapp_add_students_by_manager`
  ADD CONSTRAINT `schoolapp_add_studen_manager_ID_id_39e614cb_fk_schoolapp` FOREIGN KEY (`manager_ID_id`) REFERENCES `schoolapp_manager_login_information` (`id`);

--
-- Constraints for table `schoolapp_add_teacher_by_manager`
--
ALTER TABLE `schoolapp_add_teacher_by_manager`
  ADD CONSTRAINT `schoolapp_add_teache_manager_ID_id_cacc30af_fk_schoolapp` FOREIGN KEY (`manager_ID_id`) REFERENCES `schoolapp_manager_login_information` (`id`);

--
-- Constraints for table `schoolapp_admission`
--
ALTER TABLE `schoolapp_admission`
  ADD CONSTRAINT `schoolapp_admission_ID_course_id_5a1ea0c6_fk_schoolapp` FOREIGN KEY (`ID_course_id`) REFERENCES `schoolapp_student_courses_with_teacher_name` (`id`),
  ADD CONSTRAINT `schoolapp_admission_ID_school_id_c879d8c8_fk_schoolapp_school_id` FOREIGN KEY (`ID_school_id`) REFERENCES `schoolapp_school` (`id`),
  ADD CONSTRAINT `schoolapp_admission_ID_student_id_e8d5f7c6_fk_schoolapp` FOREIGN KEY (`ID_student_id`) REFERENCES `schoolapp_student_login_informations` (`id`);

--
-- Constraints for table `schoolapp_assignment_comments_all`
--
ALTER TABLE `schoolapp_assignment_comments_all`
  ADD CONSTRAINT `schoolapp_assignment_parent_id_9a8fd711_fk_schoolapp` FOREIGN KEY (`parent_id`) REFERENCES `schoolapp_assignment_comments_all` (`serial_no`),
  ADD CONSTRAINT `schoolapp_assignment_post_id_20bcbd69_fk_schoolapp` FOREIGN KEY (`post_id`) REFERENCES `schoolapp_teacher_assignment_upload_file` (`id`);

--
-- Constraints for table `schoolapp_assign_students_to_courses`
--
ALTER TABLE `schoolapp_assign_students_to_courses`
  ADD CONSTRAINT `schoolapp_assign_stu_Course_Name_id_de141fcb_fk_schoolapp` FOREIGN KEY (`Course_Name_id`) REFERENCES `schoolapp_add_courses` (`id`),
  ADD CONSTRAINT `schoolapp_assign_stu_Student_Name_id_1227f972_fk_schoolapp` FOREIGN KEY (`Student_Name_id`) REFERENCES `schoolapp_add_students_by_manager` (`id`);

--
-- Constraints for table `schoolapp_assign_teacher_to_courses`
--
ALTER TABLE `schoolapp_assign_teacher_to_courses`
  ADD CONSTRAINT `schoolapp_assign_tea_Course_Name_id_15ab34ff_fk_schoolapp` FOREIGN KEY (`Course_Name_id`) REFERENCES `schoolapp_add_courses` (`id`),
  ADD CONSTRAINT `schoolapp_assign_tea_Teacher_Name_id_2c0fe72f_fk_schoolapp` FOREIGN KEY (`Teacher_Name_id`) REFERENCES `schoolapp_add_teacher_by_manager` (`id`);

--
-- Constraints for table `schoolapp_dean_login_information`
--
ALTER TABLE `schoolapp_dean_login_information`
  ADD CONSTRAINT `schoolapp_dean_login_IT_Service_info_id_0f0f7905_fk_schoolapp` FOREIGN KEY (`IT_Service_info_id`) REFERENCES `schoolapp_it_service_login_information` (`id`);

--
-- Constraints for table `schoolapp_dean_supervisor`
--
ALTER TABLE `schoolapp_dean_supervisor`
  ADD CONSTRAINT `schoolapp_dean_super_Supervisor_id_6d4fe677_fk_schoolapp` FOREIGN KEY (`Supervisor_id`) REFERENCES `schoolapp_dean_login_information` (`id`);

--
-- Constraints for table `schoolapp_department`
--
ALTER TABLE `schoolapp_department`
  ADD CONSTRAINT `schoolapp_department_ID_School_id_5f3e1457_fk_schoolapp` FOREIGN KEY (`ID_School_id`) REFERENCES `schoolapp_school` (`id`),
  ADD CONSTRAINT `schoolapp_department_ID_faculties_id_d2a18f59_fk_schoolapp` FOREIGN KEY (`ID_faculties_id`) REFERENCES `schoolapp_faculties` (`id`),
  ADD CONSTRAINT `schoolapp_department_ID_student_id_67ba13d2_fk_schoolapp` FOREIGN KEY (`ID_student_id`) REFERENCES `schoolapp_students` (`id`),
  ADD CONSTRAINT `schoolapp_department_ID_user_staff_id_6b60999e_fk_schoolapp` FOREIGN KEY (`ID_user_staff_id`) REFERENCES `schoolapp_user_staff` (`id`);

--
-- Constraints for table `schoolapp_list_of_issue`
--
ALTER TABLE `schoolapp_list_of_issue`
  ADD CONSTRAINT `schoolapp_list_of_is_IT_Service_info_id_a21049b5_fk_schoolapp` FOREIGN KEY (`IT_Service_info_id`) REFERENCES `schoolapp_it_service_login_information` (`id`);

--
-- Constraints for table `schoolapp_manager_login_information`
--
ALTER TABLE `schoolapp_manager_login_information`
  ADD CONSTRAINT `schoolapp_manager_lo_IT_Service_info_id_44fbcc4d_fk_schoolapp` FOREIGN KEY (`IT_Service_info_id`) REFERENCES `schoolapp_it_service_login_information` (`id`);

--
-- Constraints for table `schoolapp_manager_super_details`
--
ALTER TABLE `schoolapp_manager_super_details`
  ADD CONSTRAINT `schoolapp_manager_su_Supervisor_id_02c44d8f_fk_schoolapp` FOREIGN KEY (`Supervisor_id`) REFERENCES `schoolapp_dean_login_information` (`id`),
  ADD CONSTRAINT `schoolapp_manager_su_manager_id_id_8d83a805_fk_schoolapp` FOREIGN KEY (`manager_id_id`) REFERENCES `schoolapp_manager_login_information` (`id`);

--
-- Constraints for table `schoolapp_store_email_staffs_by_manager`
--
ALTER TABLE `schoolapp_store_email_staffs_by_manager`
  ADD CONSTRAINT `schoolapp_store_emai_Staff_ID_id_cc29f77e_fk_schoolapp` FOREIGN KEY (`Staff_ID_id`) REFERENCES `schoolapp_add_staffs_by_manager` (`id`);

--
-- Constraints for table `schoolapp_students`
--
ALTER TABLE `schoolapp_students`
  ADD CONSTRAINT `schoolapp_students_ID_admission_id_7ac544f0_fk_schoolapp` FOREIGN KEY (`ID_admission_id`) REFERENCES `schoolapp_admission` (`id`),
  ADD CONSTRAINT `schoolapp_students_ID_courses_id_aa4678b2_fk_schoolapp` FOREIGN KEY (`ID_courses_id`) REFERENCES `schoolapp_student_courses_with_teacher_name` (`id`),
  ADD CONSTRAINT `schoolapp_students_ID_school_id_a66f8d45_fk_schoolapp_school_id` FOREIGN KEY (`ID_school_id`) REFERENCES `schoolapp_school` (`id`);

--
-- Constraints for table `schoolapp_student_course`
--
ALTER TABLE `schoolapp_student_course`
  ADD CONSTRAINT `schoolapp_student_co_Student_id_86fe5ac4_fk_schoolapp` FOREIGN KEY (`Student_id`) REFERENCES `schoolapp_student_login_informations` (`id`),
  ADD CONSTRAINT `schoolapp_student_co_course_id_fce51f35_fk_schoolapp` FOREIGN KEY (`course_id`) REFERENCES `schoolapp_student_courses_with_teacher_name` (`id`);

--
-- Constraints for table `schoolapp_student_courses_with_teacher_name`
--
ALTER TABLE `schoolapp_student_courses_with_teacher_name`
  ADD CONSTRAINT `schoolapp_student_co_Teacher_ID_id_5e41227d_fk_schoolapp` FOREIGN KEY (`Teacher_ID_id`) REFERENCES `schoolapp_teacher_login_informa` (`id`);

--
-- Constraints for table `schoolapp_timeoff_staffs_teachers`
--
ALTER TABLE `schoolapp_timeoff_staffs_teachers`
  ADD CONSTRAINT `schoolapp_timeoff_st_Manager_id_id_7e23c884_fk_schoolapp` FOREIGN KEY (`Manager_id_id`) REFERENCES `schoolapp_manager_login_information` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
