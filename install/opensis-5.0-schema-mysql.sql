--
--
--

--SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `opensis`
--

CREATE TABLE `address` (
  `address_id` int(8) NOT NULL AUTO_INCREMENT,
  `house_no` decimal(5,0) DEFAULT NULL,
  `fraction` varchar(3) DEFAULT NULL,
  `letter` varchar(2) DEFAULT NULL,
  `direction` varchar(2) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `apt` varchar(5) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL,
  `plus4` varchar(4) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `mail_street` varchar(30) DEFAULT NULL,
  `mail_city` varchar(60) DEFAULT NULL,
  `mail_state` varchar(50) DEFAULT NULL,
  `mail_zipcode` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mail_address` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `student_id` decimal(10,0) DEFAULT NULL,
  `bus_no` varchar(20) DEFAULT NULL,
  `bus_pickup` varchar(2) DEFAULT NULL,
  `bus_dropoff` varchar(2) DEFAULT NULL,
  `prim_student_relation` varchar(100) DEFAULT NULL,
  `pri_first_name` varchar(100) DEFAULT NULL,
  `pri_last_name` varchar(100) DEFAULT NULL,
  `home_phone` varchar(100) DEFAULT NULL,
  `work_phone` varchar(100) DEFAULT NULL,
  `mobile_phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `prim_custody` varchar(2) DEFAULT NULL,
  `prim_address` varchar(100) DEFAULT NULL,
  `prim_street` varchar(100) DEFAULT NULL,
  `prim_city` varchar(100) DEFAULT NULL,
  `prim_state` varchar(100) DEFAULT NULL,
  `prim_zipcode` varchar(20) DEFAULT NULL,
  `sec_student_relation` varchar(100) DEFAULT NULL,
  `sec_first_name` varchar(100) DEFAULT NULL,
  `sec_last_name` varchar(100) DEFAULT NULL,
  `sec_home_phone` varchar(100) DEFAULT NULL,
  `sec_work_phone` varchar(100) DEFAULT NULL,
  `sec_mobile_phone` varchar(100) DEFAULT NULL,
  `sec_email` varchar(100) DEFAULT NULL,
  `sec_custody` varchar(2) DEFAULT NULL,
  `sec_address` varchar(100) DEFAULT NULL,
  `sec_street` varchar(100) DEFAULT NULL,
  `sec_city` varchar(60) DEFAULT NULL,
  `sec_state` varchar(100) DEFAULT NULL,
  `sec_zipcode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE address AUTO_INCREMENT=1;


CREATE TABLE `address_field_categories` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `residence` char(1) DEFAULT NULL,
  `mailing` char(1) DEFAULT NULL,
  `bus` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE address_field_categories AUTO_INCREMENT=1;


CREATE TABLE `address_fields` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `search` varchar(1) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `select_options` varchar(10000) DEFAULT NULL,
  `category_id` decimal(10,0) DEFAULT NULL,
  `system_field` char(1) DEFAULT NULL,
  `required` varchar(1) DEFAULT NULL,
  `default_selection` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE address_fields AUTO_INCREMENT=1;


CREATE TABLE `app` (
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `attendance_calendar` (
  `syear` decimal(4,0) NOT NULL,
  `school_id` decimal(10,0) NOT NULL,
  `school_date` date NOT NULL,
  `minutes` decimal(10,0) DEFAULT NULL,
  `block` varchar(10) DEFAULT NULL,
  `calendar_id` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `attendance_calendars` (
  `school_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `calendar_id` int(8) NOT NULL AUTO_INCREMENT,
  `default_calendar` varchar(1) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`calendar_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `calendar_events_visibility` (
  `calendar_id` int(11) NOT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `profile` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `attendance_code_categories` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE attendance_code_categories AUTO_INCREMENT=1;


CREATE TABLE `attendance_codes` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `state_code` varchar(1) DEFAULT NULL,
  `default_code` varchar(1) DEFAULT NULL,
  `table_name` decimal(10,0) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;


ALTER TABLE attendance_codes AUTO_INCREMENT=1;


CREATE TABLE `attendance_completed` (
  `staff_id` decimal(10,0) NOT NULL,
  `school_date` date NOT NULL,
  `period_id` decimal(10,0) NOT NULL,
  `course_period_id` int(11) NOT NULL,
  `substitute_staff_id` decimal(10,0) DEFAULT NULL,
  `is_taken_by_substitute_staff` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `attendance_day` (
  `student_id` decimal(10,0) NOT NULL,
  `school_date` date NOT NULL,
  `minutes_present` decimal(10,0) DEFAULT NULL,
  `state_value` decimal(2,1) DEFAULT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `attendance_period` (
  `student_id` decimal(10,0) NOT NULL,
  `school_date` date NOT NULL,
  `period_id` decimal(10,0) NOT NULL,
  `attendance_code` decimal(10,0) DEFAULT NULL,
  `attendance_teacher_code` decimal(10,0) DEFAULT NULL,
  `attendance_reason` varchar(100) DEFAULT NULL,
  `admin` varchar(1) DEFAULT NULL,
  `course_period_id` decimal(10,0) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `calendar_events` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `calendar_id` decimal(10,0) DEFAULT NULL,
  `school_date` date DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;


ALTER TABLE calendar_events AUTO_INCREMENT=1;


CREATE TABLE `config` (
  `title` varchar(100) DEFAULT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `login` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `course_periods` (
  `syear` decimal(4,0) NOT NULL,
  `school_id` decimal(10,0) NOT NULL,
  `course_period_id` int(8) NOT NULL AUTO_INCREMENT,
  `course_id` decimal(10,0) NOT NULL,
  `course_weight` varchar(10) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `short_name` text,
  `period_id` decimal(10,0) DEFAULT NULL,
  `mp` varchar(3) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `teacher_id` decimal(10,0) DEFAULT NULL,
  `secondary_teacher_id` decimal(10,0) DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL,
  `total_seats` decimal(10,0) DEFAULT NULL,
  `filled_seats` decimal(10,0) DEFAULT '0',
  `does_attendance` varchar(1) DEFAULT NULL,
  `does_honor_roll` varchar(1) DEFAULT NULL,
  `does_class_rank` varchar(1) DEFAULT NULL,
  `gender_restriction` varchar(1) DEFAULT NULL,
  `house_restriction` varchar(1) DEFAULT NULL,
  `availability` decimal(10,0) DEFAULT NULL,
  `parent_id` decimal(10,0) DEFAULT NULL,
  `days` varchar(7) DEFAULT NULL,
  `calendar_id` decimal(10,0) DEFAULT NULL,
  `half_day` varchar(1) DEFAULT NULL,
  `does_breakoff` varchar(1) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  `grade_scale_id` decimal(10,0) DEFAULT NULL,
  `credits` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`course_period_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;


CREATE TABLE `courses` (
  `syear` decimal(4,0) NOT NULL,
  `course_id` int(8) NOT NULL AUTO_INCREMENT,
  `subject_id` decimal(10,0) NOT NULL,
  `school_id` decimal(10,0) NOT NULL,
  `grade_level` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `short_name` varchar(25) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE courses AUTO_INCREMENT=1;


CREATE TABLE `course_subjects` (
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `subject_id` int(8) NOT NULL AUTO_INCREMENT,
  `title` text,
  `short_name` text,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



ALTER TABLE course_subjects AUTO_INCREMENT=1;

CREATE TABLE `custom_fields` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `search` varchar(1) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `select_options` varchar(10000) DEFAULT NULL,
  `category_id` decimal(10,0) DEFAULT NULL,
  `system_field` char(1) DEFAULT NULL,
  `required` varchar(1) DEFAULT NULL,
  `default_selection` varchar(255) DEFAULT NULL,
  `hide` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE custom_fields AUTO_INCREMENT=1;


CREATE TABLE `eligibility` (
  `student_id` decimal(10,0) DEFAULT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_date` date DEFAULT NULL,
  `period_id` decimal(10,0) DEFAULT NULL,
  `eligibility_code` varchar(20) DEFAULT NULL,
  `course_period_id` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `eligibility_activities` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



ALTER TABLE eligibility_activities AUTO_INCREMENT=1;


CREATE TABLE `eligibility_completed` (
  `staff_id` decimal(10,0) NOT NULL,
  `school_date` date NOT NULL,
  `period_id` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `school_gradelevels` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `school_id` decimal(10,0) DEFAULT NULL,
  `short_name` varchar(5) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `next_grade_id` decimal(10,0) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `student_enrollment` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `student_id` decimal(10,0) DEFAULT NULL,
  `grade_id` decimal(10,0) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `enrollment_code` decimal(10,0) DEFAULT NULL,
  `drop_code` decimal(10,0) DEFAULT NULL,
  `next_school` decimal(10,0) DEFAULT NULL,
  `calendar_id` decimal(10,0) DEFAULT NULL,
  `last_school` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE student_enrollment AUTO_INCREMENT=1;


CREATE TABLE `gradebook_assignment_types` (
  `assignment_type_id` int(8) NOT NULL AUTO_INCREMENT,
  `staff_id` decimal(10,0) DEFAULT NULL,
  `course_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `final_grade_percent` decimal(6,5) DEFAULT NULL,
  `course_period_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`assignment_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE gradebook_assignment_types AUTO_INCREMENT=1;


CREATE TABLE `gradebook_assignments` (
  `assignment_id` int(8) NOT NULL AUTO_INCREMENT,
  `staff_id` decimal(10,0) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `course_period_id` decimal(10,0) DEFAULT NULL,
  `course_id` decimal(10,0) DEFAULT NULL,
  `assignment_type_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `assigned_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `points` decimal(10,0) DEFAULT NULL,
  `description` longtext,
  `ungraded` int(8) NOT NULL DEFAULT '1',
  PRIMARY KEY (`assignment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4948 DEFAULT CHARSET=utf8;


ALTER TABLE gradebook_assignments AUTO_INCREMENT=1;


CREATE TABLE `gradebook_grades` (
  `student_id` decimal(10,0) NOT NULL,
  `period_id` decimal(10,0) DEFAULT NULL,
  `course_period_id` decimal(10,0) NOT NULL,
  `assignment_id` decimal(10,0) NOT NULL,
  `points` decimal(6,2) DEFAULT NULL,
  `comment` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `grades_completed` (
  `staff_id` decimal(10,0) NOT NULL,
  `marking_period_id` int(11) NOT NULL,
  `period_id` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `history_marking_periods` (
  `parent_id` int(11) DEFAULT NULL,
  `mp_type` char(20) DEFAULT NULL,
  `name` char(30) DEFAULT NULL,
  `post_end_date` date DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `syear` int(11) DEFAULT NULL,
  `marking_period_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `honor_roll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `syear` int(4) NOT NULL,
  `title` varchar(100) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `lunch_period` (
  `student_id` decimal(10,0) DEFAULT NULL,
  `school_date` date DEFAULT NULL,
  `period_id` decimal(10,0) DEFAULT NULL,
  `attendance_code` decimal(10,0) DEFAULT NULL,
  `attendance_teacher_code` decimal(10,0) DEFAULT NULL,
  `attendance_reason` varchar(100) DEFAULT NULL,
  `admin` varchar(1) DEFAULT NULL,
  `course_period_id` decimal(10,0) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `lunch_period` varchar(100) DEFAULT NULL,
  `table_name` decimal(10,0) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `missing_attendance` (
  `school_id` int(11) NOT NULL,
  `syear` varchar(6) NOT NULL,
  `school_date` date NOT NULL,
  `course_period_id` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `secondary_teacher_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `school_quarters` (
  `marking_period_id` int(11) NOT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `semester_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `post_start_date` date DEFAULT NULL,
  `post_end_date` date DEFAULT NULL,
  `does_grades` varchar(1) DEFAULT NULL,
  `does_exam` varchar(1) DEFAULT NULL,
  `does_comments` varchar(1) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `school_semesters` (
  `marking_period_id` int(11) NOT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `year_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `post_start_date` date DEFAULT NULL,
  `post_end_date` date DEFAULT NULL,
  `does_grades` varchar(1) DEFAULT NULL,
  `does_exam` varchar(1) DEFAULT NULL,
  `does_comments` varchar(1) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `school_years` (
  `marking_period_id` int(11) NOT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `post_start_date` date DEFAULT NULL,
  `post_end_date` date DEFAULT NULL,
  `does_grades` varchar(1) DEFAULT NULL,
  `does_exam` varchar(1) DEFAULT NULL,
  `does_comments` varchar(1) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE VIEW marking_periods AS
            SELECT q.marking_period_id, 'openSIS' AS mp_source, q.syear,
            q.school_id, 'quarter' AS mp_type, q.title, q.short_name,
            q.sort_order, q.semester_id AS parent_id,
            s.year_id AS grandparent_id, q.start_date,
            q.end_date, q.post_start_date,
            q.post_end_date, q.does_grades,
            q.does_exam, q.does_comments
           FROM school_quarters q
           JOIN school_semesters s ON q.semester_id = s.marking_period_id
           UNION
            SELECT marking_period_id, 'openSIS' AS mp_source, syear,
            school_id, 'semester' AS mp_type, title, short_name,
            sort_order, year_id AS parent_id,
            -1 AS grandparent_id, start_date,
            end_date, post_start_date,
            post_end_date, does_grades,
            does_exam, does_comments
           FROM school_semesters
           UNION
            SELECT marking_period_id, 'openSIS' AS mp_source, syear,
            school_id, 'year' AS mp_type, title, short_name,
            sort_order, -1 AS parent_id,
            -1 AS grandparent_id, start_date,
            end_date, post_start_date,
            post_end_date, does_grades,
            does_exam, does_comments
            FROM school_years
           UNION
           SELECT marking_period_id, 'History' AS mp_source, syear,
	   school_id, mp_type, name AS title, NULL AS short_name,
	   NULL AS sort_order, parent_id,
	   -1 AS grandparent_id, NULL AS start_date,
	   post_end_date AS end_date, NULL AS post_start_date,
	   post_end_date, 'Y' AS does_grades,
	   NULL AS does_exam, NULL AS does_comments
           FROM history_marking_periods;




CREATE TABLE `marking_period_id_generator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

DROP FUNCTION IF EXISTS `fn_marking_period_seq`;
DELIMITER $$
CREATE FUNCTION `fn_marking_period_seq`() RETURNS int(11)
BEGIN
   INSERT INTO marking_period_id_generator VALUES(NULL);
 RETURN LAST_INSERT_ID();
 END$$
DELIMITER ;

ALTER TABLE marking_period_id_generator AUTO_INCREMENT=12;

-- ALTER TABLE `marking_periods` ADD PRIMARY KEY(`marking_period_id`);
 --ALTER TABLE `marking_periods` CHANGE `marking_period_id` `marking_period_id` INT(8) NOT NULL AUTO_INCREMENT ;


CREATE TABLE `old_course_weights` (
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `course_id` decimal(10,0) DEFAULT NULL,
  `course_weight` varchar(10) DEFAULT NULL,
  `gpa_multiplier` decimal(10,0) DEFAULT NULL,
  `year_fraction` decimal(10,0) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `people` (
  `person_id` int(8) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(25) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `middle_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `people_field_categories` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `custody` char(1) DEFAULT NULL,
  `emergency` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE people_field_categories AUTO_INCREMENT=1;


CREATE TABLE `people_fields` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `search` varchar(1) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `select_options` varchar(10000) DEFAULT NULL,
  `category_id` decimal(10,0) DEFAULT NULL,
  `system_field` char(1) DEFAULT NULL,
  `required` varchar(1) DEFAULT NULL,
  `default_selection` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;





ALTER TABLE people_fields AUTO_INCREMENT=1;


CREATE TABLE `people_join_contacts` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `person_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE people_join_contacts AUTO_INCREMENT=1;




ALTER TABLE people AUTO_INCREMENT=1;


CREATE TABLE `portal_notes` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `school_id` decimal(10,0) DEFAULT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `published_user` decimal(10,0) DEFAULT NULL,
  `published_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `published_profiles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE portal_notes AUTO_INCREMENT=1;


CREATE TABLE `profile_exceptions` (
  `profile_id` decimal(10,0) DEFAULT NULL,
  `modname` varchar(255) DEFAULT NULL,
  `can_use` varchar(1) DEFAULT NULL,
  `can_edit` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `program_config` (
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `program_user_config` (
  `user_id` decimal(10,0) NOT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `report_card_comments` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `course_id` decimal(10,0) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE report_card_comments AUTO_INCREMENT=1;


CREATE TABLE `report_card_grade_scales` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) NOT NULL,
  `title` varchar(25) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  `gp_scale` decimal(10,3) DEFAULT NULL,
  `gpa_cal` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




ALTER TABLE report_card_grade_scales AUTO_INCREMENT=1;


CREATE TABLE `report_card_grades` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(15) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `gpa_value` decimal(4,2) DEFAULT NULL,
  `break_off` decimal(10,0) DEFAULT NULL,
  `comment` longtext,
  `grade_scale_id` decimal(10,0) DEFAULT NULL,
  `unweighted_gp` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE report_card_grades AUTO_INCREMENT=1;


CREATE TABLE `schedule` (
  `syear` decimal(4,0) NOT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `student_id` decimal(10,0) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `course_id` decimal(10,0) NOT NULL,
  `course_weight` varchar(10) DEFAULT NULL,
  `course_period_id` decimal(10,0) NOT NULL,
  `mp` varchar(3) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `scheduler_lock` varchar(1) DEFAULT NULL,
  `dropped` varchar(1) DEFAULT 'N',
  `id` int(8) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `schedule_requests` (
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `request_id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) DEFAULT NULL,
  `subject_id` decimal(10,0) DEFAULT NULL,
  `course_id` decimal(10,0) DEFAULT NULL,
  `course_weight` varchar(10) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `priority` decimal(10,0) DEFAULT NULL,
  `with_teacher_id` decimal(10,0) DEFAULT NULL,
  `not_teacher_id` decimal(10,0) DEFAULT NULL,
  `with_period_id` decimal(10,0) DEFAULT NULL,
  `not_period_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



ALTER TABLE schedule_requests AUTO_INCREMENT=1;


ALTER TABLE schedule AUTO_INCREMENT=1;


ALTER TABLE school_gradelevels AUTO_INCREMENT=1;


CREATE TABLE `school_periods` (
  `period_id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `length` decimal(10,0) DEFAULT NULL,
  `block` varchar(10) DEFAULT NULL,
  `ignore_scheduling` varchar(10) DEFAULT NULL,
  `attendance` varchar(1) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL,
  `start_time` varchar(15) DEFAULT NULL,
  `end_time` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`period_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE school_periods AUTO_INCREMENT=1;


CREATE TABLE `school_progress_periods` (
  `marking_period_id` int(11) NOT NULL,
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `quarter_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `post_start_date` date DEFAULT NULL,
  `post_end_date` date DEFAULT NULL,
  `does_grades` varchar(1) DEFAULT NULL,
  `does_exam` varchar(1) DEFAULT NULL,
  `does_comments` varchar(1) DEFAULT NULL,
  `rollover_id` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `schools` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `area_code` decimal(3,0) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `principal` varchar(100) DEFAULT NULL,
  `www_address` varchar(100) DEFAULT NULL,
  `e_mail` varchar(100) DEFAULT NULL,
  `ceeb` varchar(100) DEFAULT NULL,
  `reporting_gp_scale` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `system_preference` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `school_id` int(8) NOT NULL,
  `full_day_minute` int(8) DEFAULT NULL,
  `half_day_minute` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `staff` (
  `staff_id` int(8) NOT NULL AUTO_INCREMENT,
  `current_school_id` decimal(10,0) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `profile` varchar(30) DEFAULT NULL,
  `homeroom` varchar(5) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `failed_login` int(3) NOT NULL DEFAULT '0',
  `profile_id` decimal(10,0) DEFAULT NULL,
  `is_disable` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `staff_exceptions` (
  `user_id` decimal(10,0) NOT NULL,
  `modname` varchar(255) DEFAULT NULL,
  `can_use` varchar(1) DEFAULT NULL,
  `can_edit` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `staff_field_categories` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `include` varchar(100) DEFAULT NULL,
  `admin` char(1) DEFAULT NULL,
  `teacher` char(1) DEFAULT NULL,
  `parent` char(1) DEFAULT NULL,
  `none` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE staff_field_categories AUTO_INCREMENT=1;


CREATE TABLE `staff_fields` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `search` varchar(1) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `select_options` varchar(10000) DEFAULT NULL,
  `category_id` decimal(10,0) DEFAULT NULL,
  `system_field` char(1) DEFAULT NULL,
  `required` varchar(1) DEFAULT NULL,
  `default_selection` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



ALTER TABLE staff_fields AUTO_INCREMENT=1;


CREATE TABLE `student_eligibility_activities` (
  `syear` decimal(4,0) DEFAULT NULL,
  `student_id` decimal(10,0) DEFAULT NULL,
  `activity_id` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `student_enrollment_codes` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `syear` decimal(4,0) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE student_enrollment_codes AUTO_INCREMENT=1;


CREATE TABLE `student_field_categories` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `sort_order` decimal(10,0) DEFAULT NULL,
  `include` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE student_field_categories AUTO_INCREMENT=1;


CREATE TABLE `student_gpa_calculated` (
  `student_id` decimal(10,0) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `mp` varchar(4) DEFAULT NULL,
  `gpa` decimal(10,2) DEFAULT NULL,
  `weighted_gpa` decimal(10,2) DEFAULT NULL,
  `unweighted_gpa` decimal(10,2) DEFAULT NULL,
  `class_rank` decimal(10,0) DEFAULT NULL,
  `grade_level_short` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `student_gpa_running` (
  `student_id` decimal(10,0) DEFAULT NULL,
  `marking_period_id` int(11) DEFAULT NULL,
  `gpa_points` decimal(10,2) DEFAULT NULL,
  `gpa_points_weighted` decimal(10,2) DEFAULT NULL,
  `divisor` decimal(10,2) DEFAULT NULL,
  `credit_earned` decimal(10,2) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `student_medical` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `medical_date` date DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `student_medical_alerts` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) DEFAULT NULL,
  `title` text,
  `alert_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE student_medical_alerts AUTO_INCREMENT=1;


ALTER TABLE student_medical AUTO_INCREMENT=1;


CREATE TABLE `student_medical_visits` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) DEFAULT NULL,
  `school_date` date DEFAULT NULL,
  `time_in` varchar(20) DEFAULT NULL,
  `time_out` varchar(20) DEFAULT NULL,
  `reason` text,
  `result` text,
  `comments` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE student_medical_visits AUTO_INCREMENT=1;

CREATE TABLE `student_medical_notes` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) NOT NULL,
  `doctors_note_date` date DEFAULT NULL,
  `doctors_note_comments` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `student_mp_comments` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) NOT NULL,
  `syear` decimal(4,0) NOT NULL,
  `marking_period_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `comment` longtext,
  `comment_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `student_mp_stats` (
  `student_id` int(11) NOT NULL,
  `marking_period_id` int(11) NOT NULL,
  `cum_weighted_factor` decimal(10,6) DEFAULT NULL,
  `cum_unweighted_factor` decimal(10,6) DEFAULT NULL,
  `cum_rank` int(11) DEFAULT NULL,
  `mp_rank` int(11) DEFAULT NULL,
  `sum_weighted_factors` decimal(10,6) DEFAULT NULL,
  `sum_unweighted_factors` decimal(10,6) DEFAULT NULL,
  `count_weighted_factors` int(11) DEFAULT NULL,
  `count_unweighted_factors` int(11) DEFAULT NULL,
  `grade_level_short` varchar(3) DEFAULT NULL,
  `class_size` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `student_report_card_comments` (
  `syear` decimal(4,0) NOT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `student_id` decimal(10,0) NOT NULL,
  `course_period_id` decimal(10,0) NOT NULL,
  `report_card_comment_id` decimal(10,0) NOT NULL,
  `comment` varchar(1) DEFAULT NULL,
  `marking_period_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `student_report_card_grades` (
  `syear` decimal(4,0) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  `student_id` decimal(10,0) NOT NULL,
  `course_period_id` decimal(10,0) DEFAULT NULL,
  `report_card_grade_id` decimal(10,0) DEFAULT NULL,
  `report_card_comment_id` decimal(10,0) DEFAULT NULL,
  `comment` longtext,
  `grade_percent` decimal(5,2) DEFAULT NULL,
  `marking_period_id` varchar(10) NOT NULL,
  `grade_letter` varchar(5) DEFAULT NULL,
  `weighted_gp` decimal(10,3) DEFAULT NULL,
  `unweighted_gp` decimal(10,3) DEFAULT NULL,
  `gp_scale` decimal(10,3) DEFAULT NULL,
  `gpa_cal` varchar(2) DEFAULT NULL,
  `credit_attempted` decimal(10,3) DEFAULT NULL,
  `credit_earned` decimal(10,3) DEFAULT NULL,
  `credit_category` varchar(10) DEFAULT NULL,
  `course_code` varchar(100) DEFAULT NULL,
  `course_title` text,
  `id` int(8) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE student_report_card_grades AUTO_INCREMENT=1;

CREATE TABLE `students` (
  `student_id` int(8) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `name_suffix` varchar(3) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `last_login` date DEFAULT NULL,
  `failed_login` int(3) NOT NULL DEFAULT '0',
  `gender` varchar(255) DEFAULT NULL,
  `ethnicity` varchar(255) DEFAULT NULL,
  `common_name` varchar(255) DEFAULT NULL,
  `social_security` varchar(255) DEFAULT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `physician` varchar(255) DEFAULT NULL,
  `physician_phone` varchar(255) DEFAULT NULL,
  `preferred_hospital` varchar(255) DEFAULT NULL,
  `estimated_grad_date` varchar(255) DEFAULT NULL,
  `alt_id` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `is_disable` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE students AUTO_INCREMENT=1;


CREATE TABLE `students_join_address` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) NOT NULL,
  `address_id` decimal(10,0) NOT NULL,
  `contact_seq` decimal(10,0) DEFAULT NULL,
  `gets_mail` varchar(1) DEFAULT NULL,
  `primary_residence` varchar(1) DEFAULT NULL,
  `legal_residence` varchar(1) DEFAULT NULL,
  `am_bus` varchar(1) DEFAULT NULL,
  `pm_bus` varchar(1) DEFAULT NULL,
  `mailing` varchar(1) DEFAULT NULL,
  `residence` varchar(1) DEFAULT NULL,
  `bus` varchar(1) DEFAULT NULL,
  `bus_pickup` varchar(1) DEFAULT NULL,
  `bus_dropoff` varchar(1) DEFAULT NULL,
  `bus_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE students_join_address AUTO_INCREMENT=1;


CREATE TABLE `students_join_people` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) NOT NULL,
  `person_id` decimal(10,0) NOT NULL,
  `address_id` decimal(10,0) DEFAULT NULL,
  `custody` varchar(1) DEFAULT NULL,
  `emergency` varchar(1) DEFAULT NULL,
  `student_relation` varchar(100) DEFAULT NULL,
  `addn_bus_pickup` varchar(2) DEFAULT NULL,
  `addn_bus_dropoff` varchar(2) DEFAULT NULL,
  `addn_busno` varchar(50) DEFAULT NULL,
  `addn_home_phone` varchar(100) DEFAULT NULL,
  `addn_work_phone` varchar(100) DEFAULT NULL,
  `addn_mobile_phone` varchar(100) DEFAULT NULL,
  `addn_email` varchar(100) DEFAULT NULL,
  `addn_address` varchar(100) DEFAULT NULL,
  `addn_street` varchar(100) DEFAULT NULL,
  `addn_city` varchar(100) DEFAULT NULL,
  `addn_state` varchar(100) DEFAULT NULL,
  `addn_zipcode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE students_join_people AUTO_INCREMENT=1;


CREATE TABLE `students_join_users` (
  `student_id` decimal(10,0) NOT NULL,
  `staff_id` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `user_profiles` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `profile` varchar(30) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE user_profiles AUTO_INCREMENT=1;


CREATE TABLE `hacking_log` (
  `host_name` varchar(20) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `login_date` date DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `php_self` varchar(20) DEFAULT NULL,
  `document_root` varchar(100) DEFAULT NULL,
  `script_name` varchar(100) DEFAULT NULL,
  `modname` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `teacher_reassignment` (
  `course_period_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `assign_date` date NOT NULL,
  `modified_date` date NOT NULL,
  `pre_teacher_id` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `updated` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `staff_school_relationship` (
  `staff_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `syear` int(4) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`staff_id`,`school_id`,`syear`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
--
--

ALTER TABLE attendance_calendars AUTO_INCREMENT=1;



ALTER TABLE course_periods AUTO_INCREMENT=1;


-- ALTER TABLE marking_periods AUTO_INCREMENT=1;

--
--
--






ALTER TABLE attendance_calendar
    ADD CONSTRAINT attendance_calendar_pkey PRIMARY KEY (syear, school_id, school_date, calendar_id);


--ALTER TABLE attendance_completed
  -- ADD CONSTRAINT attendance_completed_pkey PRIMARY KEY (staff_id, school_date, period_id);


ALTER TABLE attendance_day
    ADD CONSTRAINT attendance_day_pkey PRIMARY KEY (student_id, school_date);


--ALTER TABLE attendance_period
    --ADD CONSTRAINT attendance_period_pkey PRIMARY KEY (student_id, school_date, course_period_id);


-- ALTER TABLE calendar_events
  --  ADD CONSTRAINT calendar_events_pkey PRIMARY KEY (id);


-- ALTER TABLE course_periods
 --   ADD CONSTRAINT course_periods_pkey PRIMARY KEY (course_period_id);


-- ALTER TABLE course_subjects
 --   ADD CONSTRAINT course_subjects_pkey PRIMARY KEY (subject_id);


-- ALTER TABLE courses
   --  ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


-- ALTER TABLE custom_fields
 --   ADD CONSTRAINT custom_fields_pkey PRIMARY KEY (id);

-- ALTER TABLE eligibility_activities
 --   ADD CONSTRAINT eligibility_activities_pkey PRIMARY KEY (id);


ALTER TABLE eligibility_completed
    ADD CONSTRAINT eligibility_completed_pkey PRIMARY KEY (staff_id, school_date, period_id);


-- ALTER TABLE gradebook_assignment_types
 --   ADD CONSTRAINT gradebook_assignment_types_pkey PRIMARY KEY (assignment_type_id);


-- ALTER TABLE gradebook_assignments
--    ADD CONSTRAINT gradebook_assignments_pkey PRIMARY KEY (assignment_id);


ALTER TABLE gradebook_grades
    ADD CONSTRAINT gradebook_grades_pkey PRIMARY KEY (student_id, assignment_id, course_period_id);


ALTER TABLE grades_completed
    ADD CONSTRAINT grades_completed_pkey PRIMARY KEY (staff_id, marking_period_id, period_id);


ALTER TABLE history_marking_periods
    ADD CONSTRAINT history_marking_periods_pkey PRIMARY KEY (marking_period_id);


-- ALTER TABLE people_field_categories
 --   ADD CONSTRAINT people_field_categories_pkey PRIMARY KEY (id);


-- ALTER TABLE people_fields
--    ADD CONSTRAINT people_fields_pkey PRIMARY KEY (id);


-- ALTER TABLE people_join_contacts
 --   ADD CONSTRAINT people_join_contacts_pkey PRIMARY KEY (id);


-- ALTER TABLE people
  --  ADD CONSTRAINT people_pkey PRIMARY KEY (person_id);



-- ALTER TABLE report_card_comments
 --   ADD CONSTRAINT report_card_comments_pkey PRIMARY KEY (id);


-- ALTER TABLE report_card_grade_scales
  --  ADD CONSTRAINT report_card_grade_scales_pkey PRIMARY KEY (id);


-- ALTER TABLE report_card_grades
 --   ADD CONSTRAINT report_card_grades_pkey PRIMARY KEY (id);


-- ALTER TABLE schedule
 --   ADD CONSTRAINT schedule_pkey PRIMARY KEY (syear, student_id, course_id, course_period_id, start_date);


-- ALTER TABLE schedule_requests
 --   ADD CONSTRAINT schedule_requests_pkey PRIMARY KEY (request_id);


-- ALTER TABLE school_gradelevels
  --  ADD CONSTRAINT school_gradelevels_pkey PRIMARY KEY (id);



ALTER TABLE school_progress_periods
    ADD CONSTRAINT school_progress_periods_pkey PRIMARY KEY (marking_period_id);

--ALTER TABLE `school_progress_periods` CHANGE `marking_period_id` `marking_period_id` INT( 8 ) NOT NULL AUTO_INCREMENT ;

--ALTER TABLE school_progress_periods AUTO_INCREMENT=1;

ALTER TABLE school_quarters
    ADD CONSTRAINT school_quarters_pkey PRIMARY KEY (marking_period_id);

--ALTER TABLE `school_quarters` CHANGE `marking_period_id` `marking_period_id` INT( 8 ) NOT NULL AUTO_INCREMENT ;

--ALTER TABLE school_quarters AUTO_INCREMENT=1;

ALTER TABLE school_semesters
    ADD CONSTRAINT school_semesters_pkey PRIMARY KEY (marking_period_id);

--ALTER TABLE `school_semesters` CHANGE `marking_period_id` `marking_period_id` INT( 8 ) NOT NULL AUTO_INCREMENT ;

--ALTER TABLE school_semesters AUTO_INCREMENT=1;

ALTER TABLE school_years
    ADD CONSTRAINT school_years_pkey PRIMARY KEY (marking_period_id);

--ALTER TABLE `school_years` CHANGE `marking_period_id` `marking_period_id` INT( 8 ) NOT NULL AUTO_INCREMENT ;

--ALTER TABLE school_years AUTO_INCREMENT=1;



-- ALTER TABLE staff_field_categories
 --   ADD CONSTRAINT staff_field_categories_pkey PRIMARY KEY (id);


--ALTER TABLE staff_fields
 --   ADD CONSTRAINT staff_fields_pkey PRIMARY KEY (id);



-- ALTER TABLE student_enrollment
 --   ADD CONSTRAINT student_enrollment_pkey PRIMARY KEY (id);


-- ALTER TABLE student_field_categories
 --   ADD CONSTRAINT student_field_categories_pkey PRIMARY KEY (id);


-- ALTER TABLE student_medical_alerts
 --   ADD CONSTRAINT student_medical_alerts_pkey PRIMARY KEY (id);


-- ALTER TABLE student_medical
 --  ADD CONSTRAINT student_medical_pkey PRIMARY KEY (id);


--ALTER TABLE student_medical_visits
 --   ADD CONSTRAINT student_medical_visits_pkey PRIMARY KEY (id);


--ALTER TABLE student_mp_comments
 --   ADD CONSTRAINT student_mp_comments_pkey PRIMARY KEY (student_id, syear, marking_period_id);


ALTER TABLE student_mp_stats
    ADD CONSTRAINT student_mp_stats_pkey PRIMARY KEY (student_id, marking_period_id);


ALTER TABLE student_report_card_comments
    ADD CONSTRAINT student_report_card_comments_pkey PRIMARY KEY (syear, student_id, course_period_id, marking_period_id, report_card_comment_id);


-- ALTER TABLE student_report_card_grades
 --   ADD CONSTRAINT student_report_card_grades_id_key UNIQUE (id);


-- ALTER TABLE student_report_card_grades
 --   ADD CONSTRAINT student_report_card_grades_pkey PRIMARY KEY (id);


-- ALTER TABLE students_join_address
 --   ADD CONSTRAINT students_join_address_pkey PRIMARY KEY (id);


-- ALTER TABLE students_join_people
 --   ADD CONSTRAINT students_join_people_pkey PRIMARY KEY (id);


ALTER TABLE students_join_users
    ADD CONSTRAINT students_join_users_pkey PRIMARY KEY (student_id, staff_id);


-- ALTER TABLE students
 --   ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);
-- ALTER TABLE `staff_school_relationship` ADD `start_date` DATE NOT NULL ,
-- ADD `end_date` DATE NOT NULL ;
--
--
--

CREATE INDEX address_3  USING btree ON address(zipcode, plus4);


CREATE INDEX address_4  USING btree ON address(street);


CREATE INDEX address_desc_ind  USING btree ON address_fields(id);


CREATE INDEX address_desc_ind2  USING btree ON custom_fields(type);


CREATE INDEX address_fields_ind3  USING btree ON custom_fields(category_id);


CREATE INDEX attendance_code_categories_ind1  USING btree ON attendance_code_categories(id);


CREATE INDEX attendance_code_categories_ind2  USING btree ON attendance_code_categories(syear, school_id);


CREATE INDEX attendance_codes_ind2  USING btree ON attendance_codes(syear, school_id);


CREATE INDEX attendance_codes_ind3  USING btree ON attendance_codes(short_name);


CREATE INDEX attendance_period_ind1  USING btree ON attendance_period(student_id);


CREATE INDEX attendance_period_ind2  USING btree ON attendance_period(period_id);


CREATE INDEX attendance_period_ind3  USING btree ON attendance_period(attendance_code);


CREATE INDEX attendance_period_ind4  USING btree ON attendance_period(school_date);


CREATE INDEX attendance_period_ind5  USING btree ON attendance_period(attendance_code);


CREATE INDEX course_periods_ind1  USING btree ON course_periods(syear);


CREATE INDEX course_periods_ind2  USING btree ON course_periods(course_id, course_weight, syear, school_id);


CREATE INDEX course_periods_ind3  USING btree ON course_periods(course_period_id);


CREATE INDEX course_periods_ind4  USING btree ON course_periods(period_id);


CREATE INDEX course_periods_ind5  USING btree ON course_periods(parent_id);


CREATE INDEX course_subjects_ind1  USING btree ON course_subjects(syear, school_id, subject_id);


CREATE INDEX courses_ind1  USING btree ON courses(course_id, syear);


CREATE INDEX courses_ind2  USING btree ON courses(subject_id);


CREATE INDEX custom_desc_ind  USING btree ON custom_fields(id);


CREATE INDEX custom_desc_ind2  USING btree ON custom_fields(type);


CREATE INDEX custom_fields_ind3  USING btree ON custom_fields(category_id);


CREATE INDEX eligibility_activities_ind1  USING btree ON eligibility_activities(school_id, syear);


CREATE INDEX eligibility_ind1  USING btree ON eligibility(student_id, course_period_id, school_date);


CREATE INDEX gradebook_assignment_types_ind1  USING btree ON gradebook_assignments(staff_id, course_id);


CREATE INDEX gradebook_assignments_ind1  USING btree ON gradebook_assignments(staff_id, marking_period_id);


CREATE INDEX gradebook_assignments_ind2  USING btree ON gradebook_assignments(course_id, course_period_id);


CREATE INDEX gradebook_assignments_ind3  USING btree ON gradebook_assignments(assignment_type_id);


CREATE INDEX gradebook_grades_ind1  USING btree ON gradebook_grades(assignment_id);


CREATE INDEX history_marking_period_ind1  USING btree ON history_marking_periods(school_id);


CREATE INDEX history_marking_period_ind2  USING btree ON history_marking_periods(syear);


CREATE INDEX history_marking_period_ind3  USING btree ON history_marking_periods(mp_type);


CREATE INDEX name  USING btree ON students(last_name, first_name, middle_name);


CREATE INDEX people_1  USING btree ON people(last_name, first_name);


CREATE INDEX people_3  USING btree ON people(person_id, last_name, first_name, middle_name);


CREATE INDEX people_desc_ind  USING btree ON people_fields(id);


CREATE INDEX people_desc_ind2  USING btree ON custom_fields(type);


CREATE INDEX people_fields_ind3  USING btree ON custom_fields(category_id);


CREATE INDEX people_join_contacts_ind1  USING btree ON people_join_contacts(person_id);


CREATE INDEX program_config_ind1  USING btree ON program_config(program, school_id, syear);


CREATE INDEX program_user_config_ind1  USING btree ON program_user_config(user_id, program);


CREATE INDEX relations_meets_2  USING btree ON students_join_people(person_id);


CREATE INDEX relations_meets_5  USING btree ON students_join_people(id);


CREATE INDEX relations_meets_6  USING btree ON students_join_people(custody, emergency);


CREATE INDEX report_card_comments_ind1  USING btree ON report_card_comments(syear, school_id);


CREATE INDEX report_card_grades_ind1  USING btree ON report_card_grades(syear, school_id);


CREATE INDEX schedule_ind1  USING btree ON schedule(course_id, course_weight);


CREATE INDEX schedule_ind2  USING btree ON schedule(course_period_id);


CREATE INDEX schedule_ind3  USING btree ON schedule(student_id, marking_period_id, start_date, end_date);


CREATE INDEX schedule_ind4  USING btree ON schedule(syear, school_id);


CREATE INDEX schedule_requests_ind1  USING btree ON schedule_requests(student_id, course_id, course_weight, syear, school_id);


CREATE INDEX schedule_requests_ind2  USING btree ON schedule_requests(syear, school_id);


CREATE INDEX schedule_requests_ind3  USING btree ON schedule_requests(course_id, course_weight, syear, school_id);


CREATE INDEX schedule_requests_ind4  USING btree ON schedule_requests(with_teacher_id);


CREATE INDEX schedule_requests_ind5  USING btree ON schedule_requests(not_teacher_id);


CREATE INDEX schedule_requests_ind6  USING btree ON schedule_requests(with_period_id);


CREATE INDEX schedule_requests_ind7  USING btree ON schedule_requests(not_period_id);


CREATE INDEX schedule_requests_ind8  USING btree ON schedule_requests(request_id);


CREATE INDEX school_gradelevels_ind1  USING btree ON school_gradelevels(school_id);


CREATE INDEX school_periods_ind1  USING btree ON school_periods(period_id, syear);


CREATE INDEX school_progress_periods_ind1  USING btree ON school_progress_periods(quarter_id);


CREATE INDEX school_progress_periods_ind2  USING btree ON school_progress_periods(syear, school_id, start_date, end_date);


CREATE INDEX school_quarters_ind1  USING btree ON school_quarters(semester_id);


CREATE INDEX school_quarters_ind2  USING btree ON school_quarters(syear, school_id, start_date, end_date);


CREATE INDEX school_semesters_ind1  USING btree ON school_semesters(year_id);


CREATE INDEX school_semesters_ind2  USING btree ON school_semesters(syear, school_id, start_date, end_date);


CREATE INDEX school_years_ind2  USING btree ON school_years(syear, school_id, start_date, end_date);


CREATE INDEX schools_ind1  USING btree ON schools(syear);

CREATE INDEX staff_desc_ind1  USING btree ON staff_fields(id);


CREATE INDEX staff_desc_ind2  USING btree ON staff_fields(type);


CREATE INDEX staff_fields_ind3  USING btree ON staff_fields(category_id);


CREATE INDEX staff_ind2  USING btree ON staff(last_name, first_name);


CREATE INDEX stu_addr_meets_2  USING btree ON students_join_address(address_id);


CREATE INDEX stu_addr_meets_3  USING btree ON students_join_address(primary_residence);


CREATE INDEX stu_addr_meets_4  USING btree ON students_join_address(legal_residence);


CREATE INDEX student_eligibility_activities_ind1  USING btree ON student_eligibility_activities(student_id);


CREATE INDEX student_enrollment_1  USING btree ON student_enrollment(student_id, enrollment_code);


CREATE INDEX student_enrollment_2  USING btree ON student_enrollment(grade_id);


CREATE INDEX student_enrollment_3  USING btree ON student_enrollment(syear, student_id, school_id, grade_id);


CREATE INDEX student_enrollment_6  USING btree ON student_enrollment(syear, student_id,start_date, end_date);


CREATE INDEX student_enrollment_7  USING btree ON student_enrollment(school_id);


CREATE INDEX student_gpa_calculated_ind1  USING btree ON student_gpa_calculated(marking_period_id, student_id);


CREATE INDEX student_gpa_running_ind1  USING btree ON student_gpa_running(marking_period_id, student_id);


CREATE INDEX student_medical_alerts_ind1  USING btree ON student_medical_alerts(student_id);


CREATE INDEX student_medical_ind1  USING btree ON student_medical(student_id);


CREATE INDEX student_medical_visits_ind1  USING btree ON student_medical_visits(student_id);


CREATE INDEX student_report_card_comments_ind1  USING btree ON student_report_card_comments(school_id);


CREATE INDEX student_report_card_grades_ind1  USING btree ON student_report_card_grades(school_id);


CREATE INDEX student_report_card_grades_ind2  USING btree ON student_report_card_grades(student_id);


CREATE INDEX student_report_card_grades_ind3  USING btree ON student_report_card_grades(course_period_id);


CREATE INDEX student_report_card_grades_ind4  USING btree ON student_report_card_grades(marking_period_id);


CREATE INDEX students_join_address_ind1  USING btree ON students_join_address(student_id);


CREATE INDEX students_join_people_ind1  USING btree ON students_join_people(student_id);


CREATE INDEX sys_c007322  USING btree ON students_join_address(id, student_id, address_id);

--
-- TABLE STRUCTURE FOR TABLE history_school
--
CREATE TABLE `history_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `marking_period_id` int(11) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
--
--

CREATE VIEW course_details AS
             SELECT cp.school_id, cp.syear, cp.marking_period_id, cp.period_id, c.subject_id,
	     cp.course_id, cp.course_period_id, cp.teacher_id, cp.secondary_teacher_id, c.title AS course_title,
	     cp.title AS cp_title, cp.grade_scale_id, cp.mp, cp.credits
             FROM course_periods cp, courses c WHERE (cp.course_id = c.course_id);

 CREATE VIEW enroll_grade AS
            SELECT e.id, e.syear, e.school_id, e.student_id, e.start_date, e.end_date, sg.short_name, sg.title
            FROM student_enrollment e, school_gradelevels sg WHERE (e.grade_id = sg.id);


    CREATE VIEW transcript_grades AS
    SELECT s.id AS school_id, IF(mp.mp_source='history',(SELECT school_name FROM history_school WHERE student_id=rcg.student_id and marking_period_id=mp.marking_period_id),s.title) AS school_name,mp_source, mp.marking_period_id AS mp_id,
 mp.title AS mp_name, mp.syear, mp.end_date AS posted, rcg.student_id,
 sgc.grade_level_short AS gradelevel, rcg.grade_letter, rcg.unweighted_gp AS gp_value,
 rcg.weighted_gp AS weighting, rcg.gp_scale, rcg.credit_attempted, rcg.credit_earned,
 rcg.credit_category,rcg.course_period_id AS course_period_id, rcg.course_title AS course_name,
        (SELECT courses.short_name FROM course_periods,courses  WHERE course_periods.course_id=courses.course_id and course_periods.course_period_id=rcg.course_period_id) AS course_short_name,rcg.gpa_cal AS gpa_cal,
 sgc.weighted_gpa,
 sgc.unweighted_gpa,
                  sgc.gpa,
 sgc.class_rank,mp.sort_order
    FROM student_report_card_grades rcg
    INNER JOIN marking_periods mp ON mp.marking_period_id = rcg.marking_period_id AND mp.mp_type IN ('year','semester','quarter')
    INNER JOIN student_gpa_calculated sgc ON sgc.student_id = rcg.student_id AND sgc.marking_period_id = rcg.marking_period_id
    INNER JOIN schools s ON s.id = mp.school_id;



-- ****************** For storing all log details ***************************
CREATE TABLE `login_records` (
  `syear` decimal(5,0) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `profile` varchar(50) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `faillog_count` decimal(4,0) DEFAULT NULL,
  `staff_id` decimal(10,0) DEFAULT NULL,
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `faillog_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `school_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- ******************** For Creating Login Seq **************************

ALTER TABLE login_records AUTO_INCREMENT=1;
-- ********************* Log Maintain Table *****************************
CREATE TABLE `log_maintain` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `value` decimal(30,0) DEFAULT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- *********************** Log Maintain Sequence ************************


ALTER TABLE log_maintain AUTO_INCREMENT=1;

--
-- Table structure for table  system_preference_misc
--

CREATE TABLE `system_preference_misc` (
  `fail_count` decimal(5,0) NOT NULL DEFAULT '3',
  `activity_days` decimal(5,0) NOT NULL DEFAULT '30',
  `system_maintenance_switch` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `goal` (
  `goal_id` int(8) NOT NULL AUTO_INCREMENT,
  `student_id` decimal(10,0) NOT NULL,
  `goal_title` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `goal_description` text,
  `school_id` decimal(10,0) DEFAULT NULL,
  `syear` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`goal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `progress` (
  `progress_id` int(8) NOT NULL AUTO_INCREMENT,
  `goal_id` decimal(10,0) NOT NULL,
  `student_id` decimal(10,0) NOT NULL,
  `start_date` date DEFAULT NULL,
  `progress_name` text NOT NULL,
  `proficiency` varchar(100) NOT NULL,
  `progress_description` text NOT NULL,
  `course_period_id` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`progress_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




ALTER TABLE goal AUTO_INCREMENT=1;





ALTER TABLE progress AUTO_INCREMENT=1;

--
-- TABLE STRUCTURE FOR TABLE login_message
--

CREATE TABLE `login_message` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `message` longtext,
  `display` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



CREATE VIEW student_contacts AS
            SELECT DISTINCT sta.student_id AS student_id,st.alt_id,CONCAT( st.first_name, ' ', st.last_name )AS student_name,'Primary' AS contact_type,
                    prim_student_relation AS relation, 
                    pri_first_name AS relation_first_name,  pri_last_name AS relation_last_name,prim_address AS address1, prim_street AS address2,city AS city,state AS state,zipcode AS zip,work_phone AS work_phone,home_phone AS home_phone,mobile_phone AS cell_phone,
                    address.email AS email_id,'1' AS sort
            FROM students_join_address sta,address,students st WHERE   address.address_id=sta.address_id AND   st.student_id=sta.student_id 
            UNION
            SELECT DISTINCT sta.student_id AS student_id,st.alt_id,CONCAT( st.first_name, ' ', st.last_name )AS student_name,'Secondary' AS contact_type,
                    sec_student_relation AS relation,
                    sec_first_name AS relation_first_name, sec_last_name AS relation_last_name,sec_address AS address1, sec_street AS address2,city AS city,state AS state,zipcode AS zip, sec_work_phone AS work_phone,sec_home_phone AS home_phone,sec_mobile_phone AS cell_phone,
                    address.email AS email_id,'2' AS sort
            FROM students_join_address sta,address,students st WHERE   address.address_id=sta.address_id AND   st.student_id=sta.student_id 
            UNION
            SELECT DISTINCT  stp.student_id AS student_id,st.alt_id, CONCAT( st.first_name, ' ', st.last_name )AS student_name,'Other' AS contact_type,
                    stp.student_relation AS relation,
                    people.first_name AS relation_first_name,  people.last_name AS relation_last_name,stp.addn_address AS address1, stp.addn_street AS address2,addn_city AS city,addn_state AS state,addn_zipcode AS zip,addn_work_phone AS work_phone,addn_home_phone AS home_phone,addn_mobile_phone AS cell_phone,
                    stp.addn_email AS email_id,'3' AS sort
            FROM people,students_join_people stp ,students st  WHERE   people.person_id=stp.person_id  AND   st.student_id=stp.student_id;
