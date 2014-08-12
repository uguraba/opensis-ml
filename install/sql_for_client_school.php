<?php
#**************************************************************************
#  openSIS is a free student information system for public and non-public
#  schools from Open Solutions for Education, Inc. web: www.os4ed.com
#
#  openSIS is  web-based, open source, and comes packed with features that
#  include student demographic info, scheduling, grade book, attendance,
#  report cards, eligibility, transcripts, parent portal,
#  student portal and more.
#
#  Visit the openSIS web site at http://www.opensis.com to learn more.
#  If you have question regarding this system or the license, please send
#  an email to info@os4ed.com.
#
#  This program is released under the terms of the GNU General Public License as
#  published by the Free Software Foundation, version 2 of the License.
#  See license.txt.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#***************************************************************************************
/*$_SESSION['sname']=$_REQUEST['sname'];
    $school_beg_date=explode("-",$_REQUEST['beg_date']);
    $school_end_date=explode("-",$_REQUEST['end_date']);
    $_SESSION['user_school_beg_date']=$school_beg_date[2].'-'.$school_beg_date[0].
    '-'.$school_beg_date[1];
    $_SESSION['user_school_end_date']=$school_end_date[2].'-'.$school_end_date[0].
    '-'.$school_end_date[1];
$_SESSION['syear']=$school_beg_date[2];
    $_SESSION['nextyear'] = $school_beg_date[2]+1;
*/
$text = "
--
-- Dumping data for table `app`
--



insert into `app` (name,value)values
('version','5.3'),
('date','December 20, 2013'),
('build','20122013001'),
('update','0'),
('last_updated','December 20, 2013');


--
-- Dumping data for table `address`
--


--
-- Dumping data for table `attendance_calendar`
--


--
-- Dumping data for table `attendance_calendars`
--


--
-- Dumping data for table `attendance_codes`
--



--
-- Dumping data for table `config`
--


--
-- Dumping data for table `courses`
--


--
-- Dumping data for table `course_periods`
--


--
-- Dumping data for table `course_subjects`
--


--
-- Dumping data for table `custom_fields`
--

insert into `custom_fields` (id,type,search,title,sort_order,select_options,category_id,system_field,required,default_selection,hide)values
(1,'text',null,'Ethnicity','3',null,'1','Y',null,null,null),
(2,'text',null,'Common Name','2',null,'1','Y',null,null,null),
(3,'text',null,'Physician','6',null,'2','Y',null,null,null),
(4,'text',null,'Physician Phone','7',null,'2','Y',null,null,null),
(5,'text',null,'Preferred Hospital','8',null,'2','Y',null,null,null),
(6,'text',null,'Gender','5',null,'1','Y',null,null,null),
(7,'text',null,'Email','6',null,'1','Y',null,null,null),
(8,'text',null,'Phone','9',null,'1','Y',null,null,null),
(9,'text',null,'Language','8',null,'1','Y',null,null,null);

--
-- Dumping data for table `eligibility`
--


--
-- Dumping data for table `eligibility_activities`
--


--
-- Dumping data for table `eligibility_completed`
--


--
-- Dumping data for table `gradebook_assignments`
--


--
-- Dumping data for table `gradebook_assignment_types`
--


--
-- Dumping data for table `gradebook_grades`
--


--
-- Dumping data for table `portal_notes`
--


--
-- Dumping data for table `profile_exceptions`
--

insert into `profile_exceptions` (profile_id,modname,can_use,can_edit)values
('1','Students/Student.php&category_id=6','Y','Y'),
('2','Students/Student.php&category_id=6','Y',null),
('0','Students/Student.php&category_id=6','Y',null),
('3','Students/Student.php&category_id=6','Y',null),
('1','Users/User.php&category_id=5','Y','Y'),
('2','Users/User.php&category_id=5','Y',null),
('0','School_Setup/Schools.php','Y',null),
('0','School_Setup/Calendar.php','Y',null),
('0','Students/Student.php','Y',null),
('0','Students/Student.php&category_id=1','Y',null),
('0','Students/Student.php&category_id=3','Y',null),
('0','Students/ChangePassword.php','Y',null),
('0','Scheduling/ViewSchedule.php','Y',null),
('0','Scheduling/PrintSchedules.php','Y',null),
('0','Scheduling/Requests.php','Y','Y'),
('0','Grades/StudentGrades.php','Y',null),
('0','Grades/FinalGrades.php','Y',null),
('0','Grades/ReportCards.php','Y',null),
('0','Grades/Transcripts.php','Y',null),
('0','Grades/GPARankList.php','Y',null),
('0','Attendance/StudentSummary.php','Y',null),
('0','Attendance/DailySummary.php','Y',null),
('0','Eligibility/Student.php','Y',null),
('0','Eligibility/StudentList.php','Y',null),
('1','School_Setup/PortalNotes.php','Y','Y'),
('1','School_Setup/Schools.php','Y','Y'),
('1','School_Setup/Schools.php?new_school=true','Y','Y'),
('1','School_Setup/CopySchool.php','Y','Y'),
('1','School_Setup/MarkingPeriods.php','Y','Y'),
('1','School_Setup/Calendar.php','Y','Y'),
('1','School_Setup/Periods.php','Y','Y'),
('1','School_Setup/GradeLevels.php','Y','Y'),
('1','School_Setup/Rollover.php','Y','Y'),
('1','School_Setup/Courses.php','Y','Y'),
('1','School_Setup/CourseCatalog.php','Y','Y'),
('1','School_Setup/PrintCatalog.php','Y','Y'),
('1','School_Setup/PrintCatalogGradeLevel.php','Y','Y'),
('1','School_Setup/PrintAllCourses.php','Y','Y'),
('1','School_Setup/UploadLogo.php','Y','Y'),
('1','School_Setup/TeacherReassignment.php','Y','Y'),
('1','Students/Student.php','Y','Y'),
('1','Students/Student.php&include=General_Info&student_id=new','Y','Y'),
('1','Students/AssignOtherInfo.php','Y','Y'),
('1','Students/AddUsers.php','Y','Y'),
('1','Students/AdvancedReport.php','Y','Y'),
('1','Students/AddDrop.php','Y','Y'),
('1','Students/Letters.php','Y','Y'),
('1','Students/MailingLabels.php','Y','Y'),
('1','Students/StudentLabels.php','Y','Y'),
('1','Students/PrintStudentInfo.php','Y','Y'),
('1','Students/PrintStudentContactInfo.php','Y','Y'),
('1','Students/GoalReport.php','Y','Y'),
('1','Students/StudentFields.php','Y','Y'),
('1','Students/AddressFields.php','Y','Y'),
('1','Students/PeopleFields.php','Y','Y'),
('1','Students/EnrollmentCodes.php','Y','Y'),
('1','Students/Upload.php?modfunc=edit','Y','Y'),
('1','Students/Upload.php','Y','Y'),
('1','Students/Student.php&category_id=1','Y','Y'),
('1','Students/Student.php&category_id=3','Y','Y'),
('1','Students/Student.php&category_id=2','Y','Y'),
('1','Students/Student.php&category_id=4','Y','Y'),
('1','Students/StudentReenroll.php','Y','Y'),
('1','Students/EnrollmentReport.php','Y','Y'),
('1','Users/User.php','Y','Y'),
('1','Users/User.php&category_id=1','Y','Y'),
('1','Users/User.php&category_id=2','Y','Y'),
('1','Users/User.php&staff_id=new','Y','Y'),
('1','Users/AddStudents.php','Y','Y'),
('1','Users/Preferences.php','Y','Y'),
('1','Users/Profiles.php','Y','Y'),
('1','Users/Exceptions.php','Y','Y'),
('1','Users/UserFields.php','Y','Y'),
('1','Users/TeacherPrograms.php?include=Grades/InputFinalGrades.php','Y','Y'),
('1','Users/TeacherPrograms.php?include=Grades/Grades.php','Y','Y'),
('1','Users/TeacherPrograms.php?include=Attendance/TakeAttendance.php','Y','Y'),
('1','Users/TeacherPrograms.php?include=Attendance/Missing_Attendance.php','Y','Y'),
('1','Users/TeacherPrograms.php?include=Eligibility/EnterEligibility.php','Y','Y'),
('1','Users/UploadUserPhoto.php','Y','Y'),
('1','Users/UploadUserPhoto.php?modfunc=edit','Y','Y'),
('1','Users/UserAdvancedReport.php','Y','Y'),
('1','Scheduling/Schedule.php','Y','Y'),
('1','Scheduling/Requests.php','Y','Y'),
('1','Scheduling/MassSchedule.php','Y','Y'),
('1','Scheduling/MassRequests.php','Y','Y'),
('1','Scheduling/MassDrops.php','Y','Y'),
('1','Scheduling/ScheduleReport.php','Y','Y'),
('1','Scheduling/RequestsReport.php','Y','Y'),
('1','Scheduling/UnfilledRequests.php','Y','Y'),
('1','Scheduling/IncompleteSchedules.php','Y','Y'),
('1','Scheduling/AddDrop.php','Y','Y'),
('1','Scheduling/PrintSchedules.php','Y','Y'),
('1','Scheduling/PrintRequests.php','Y','Y'),
('1','Scheduling/PrintClassLists.php','Y','Y'),
('1','Scheduling/PrintClassPictures.php','Y','Y'),
('1','Scheduling/Courses.php','Y','Y'),
('1','Scheduling/Scheduler.php','Y','Y'),
('1','Scheduling/ViewSchedule.php','Y','Y'),
('1','Grades/ReportCards.php','Y','Y'),
('1','Grades/CalcGPA.php','Y','Y'),
('1','Grades/Transcripts.php','Y','Y'),
('1','Grades/TeacherCompletion.php','Y','Y'),
('1','Grades/GradeBreakdown.php','Y','Y'),
('1','Grades/FinalGrades.php','Y','Y'),
('1','Grades/GPARankList.php','Y','Y'),
('1','Grades/ReportCardGrades.php','Y','Y'),
('1','Grades/ReportCardComments.php','Y','Y'),
('1','Grades/FixGPA.php','Y','Y'),
('1','Grades/EditReportCardGrades.php','Y','Y'),
('1','Grades/EditHistoryMarkingPeriods.php','Y','Y'),
('1','Grades/HistoricalReportCardGrades.php','Y','Y'),
('1','Attendance/Administration.php','Y','Y'),
('1','Attendance/AddAbsences.php','Y','Y'),
('1','Attendance/AttendanceData.php?list_by_day=true','Y','Y'),
('1','Attendance/Percent.php','Y','Y'),
('1','Attendance/Percent.php?list_by_day=true','Y','Y'),
('1','Attendance/DailySummary.php','Y','Y'),
('1','Attendance/StudentSummary.php','Y','Y'),
('1','Attendance/TeacherCompletion.php','Y','Y'),
('1','Attendance/DuplicateAttendance.php','Y','Y'),
('1','Attendance/AttendanceCodes.php','Y','Y'),
('1','Attendance/FixDailyAttendance.php','Y','Y'),
('1','Eligibility/Student.php','Y','Y'),
('1','Eligibility/AddActivity.php','Y','Y'),
('1','Eligibility/StudentList.php','Y','Y'),
('1','Eligibility/TeacherCompletion.php','Y','Y'),
('1','Eligibility/Activities.php','Y','Y'),
('1','Eligibility/EntryTimes.php','Y','Y'),
('1','Tools/LogDetails.php','Y','Y'),
('1','Tools/DeleteLog.php','Y','Y'),
('1','Tools/Backup.php','Y','Y'),
('1','Tools/Rollover.php','Y','Y'),
('1','Students/Upload.php','Y','Y'),
('1','Students/Upload.php?modfunc=edit','Y','Y'),
('2','School_Setup/Schools.php','Y',null),
('2','School_Setup/MarkingPeriods.php','Y',null),
('2','School_Setup/Calendar.php','Y',null),
('2','Students/Student.php','Y',null),
('2','Students/AddUsers.php','Y',null),
('2','Students/AdvancedReport.php','Y',null),
('2','Students/Student.php&category_id=1','Y',null),
('2','Students/Student.php&category_id=3','Y',null),
('2','Students/Student.php&category_id=4','Y','Y'),
('2','Users/User.php','Y',null),
('2','Users/User.php&category_id=1','Y',null),
('2','Users/User.php&category_id=2','Y',null),
('2','Users/Preferences.php','Y',null),
('2','Scheduling/Schedule.php','Y',null),
('2','Scheduling/PrintSchedules.php','Y',null),
('2','Scheduling/PrintClassLists.php','Y',null),
('2','Scheduling/PrintClassPictures.php','Y',null),
('2','Grades/InputFinalGrades.php','Y',null),
('2','Grades/ReportCards.php','Y',null),
('2','Grades/Grades.php','Y',null),
('2','Grades/Assignments.php','Y',null),
('2','Grades/AnomalousGrades.php','Y',null),
('2','Grades/Configuration.php','Y',null),
('2','Grades/ProgressReports.php','Y',null),
('2','Grades/StudentGrades.php','Y',null),
('2','Grades/FinalGrades.php','Y',null),
('2','Grades/ReportCardGrades.php','Y',null),
('2','Grades/ReportCardComments.php','Y',null),
('2','Attendance/TakeAttendance.php','Y',null),
('2','Attendance/DailySummary.php','Y',null),
('2','Attendance/StudentSummary.php','Y',null),
('2','Eligibility/EnterEligibility.php','Y',null),
('2','Scheduling/ViewSchedule.php','Y',null),
('3','Attendance/StudentSummary.php','Y',null),
('3','Attendance/DailySummary.php','Y',null),
('3','Eligibility/Student.php','Y',null),
('3','Eligibility/StudentList.php','Y',null),
('3','School_Setup/Schools.php','Y',null),
('3','School_Setup/Calendar.php','Y',null),
('3','Students/Student.php','Y',null),
('3','Students/Student.php&category_id=1','Y',null),
('3','Students/Student.php&category_id=3','Y','Y'),
('3','Users/User.php','Y',null),
('3','Users/User.php&category_id=1','Y','Y'),
('3','Users/Preferences.php','Y',null),
('3','Scheduling/ViewSchedule.php','Y',null),
('3','Scheduling/Requests.php','Y','Y'),
('3','Grades/StudentGrades.php','Y',null),
('3','Grades/FinalGrades.php','Y',null),
('3','Grades/ReportCards.php','Y',null),
('3','Grades/Transcripts.php','Y',null),
('3','Grades/GPARankList.php','Y',null),
('3','Users/User.php&category_id=2','Y',null),
('3','Users/User.php&category_id=3','Y',null),
('1','School_Setup/system_preference.php','Y','Y'),
('1','Students/Student.php&category_id=5','Y','Y'),
('1','Grades/HonorRoll.php','Y','Y'),
('1','Users/TeacherPrograms.php?include=Grades/ProgressReports.php','Y','Y'),
('1','Grades/HonorRollSetup.php','Y','Y'),
('2','School_Setup/Courses.php','Y',null),
('2','School_Setup/CourseCatalog.php','Y',null),
('2','School_Setup/PrintCatalog.php','Y',null),
('2','School_Setup/PrintAllCourses.php','Y',null),
('2','Students/Student.php&category_id=5','Y','Y'),
('3','Students/ChangePassword.php','Y',null),
('3','Scheduling/StudentScheduleReport.php','Y',null),
('0','Users/User.php','Y',null),
('0','Users/Preferences.php','Y',null),
('0','Users/User.php&category_id=1','Y',null),
('0','Users/User.php&category_id=2','Y',null),
('0','Scheduling/StudentScheduleReport.php','Y',null),
('1','Grades/AdminProgressReports.php','Y','Y'),
('1','Billing/LedgerCard.php','Y','Y'),
('1','Billing/Balance_Report.php','Y','Y'),
('1','Billing/DailyTransactions.php','Y','Y'),
('1','Billing/PaymentHistory.php','Y','Y'),
('1','Billing/Fee.php','Y','Y'),
('1','Billing/StudentPayments.php','Y','Y'),
('1','Billing/MassAssignFees.php','Y','Y'),
('1','Billing/MassAssignPayments.php','Y','Y'),
('1','Billing/SetUp.php','Y','Y'),
('1','Billing/SetUp_FeeType.php','Y','Y'),
('1','Billing/SetUp_PayPal.php','Y','Y'),
('0','Billing/Fee.php','Y',null),
('0','Billing/Balance_Report.php','Y',null),
('0','Billing/DailyTransactions.php','Y',null),
('3','Billing/Fee.php','Y',null),
('3','Billing/Balance_Report.php','Y',null),
('3','Billing/DailyTransactions.php','Y',null),
('4','School_Setup/PortalNotes.php','Y','Y'),
('4','School_Setup/MarkingPeriods.php','Y',null),
('4','School_Setup/Calendar.php','Y','Y'),
('4','School_Setup/Periods.php','Y',null),
('4','School_Setup/GradeLevels.php','Y',null),
('4','School_Setup/Schools.php','Y',null),
('4','School_Setup/UploadLogo.php','Y',null),
('4','School_Setup/Schools.php?new_school=true','Y',null),
('4','School_Setup/CopySchool.php','Y',null),
('4','School_Setup/system_preference.php','Y',null),
('4','School_Setup/Courses.php','Y',null),
('4','School_Setup/CourseCatalog.php','Y',null),
('4','School_Setup/PrintCatalog.php','Y',null),
('4','School_Setup/PrintCatalogGradeLevel.php','Y',null),
('4','School_Setup/PrintAllCourses.php','Y',null),
('4','School_Setup/TeacherReassignment.php','Y',null),
('4','Students/Student.php','Y','Y'),
('4','Students/Student.php&include=General_Info&student_id=new','Y','Y'),
('4','Students/AssignOtherInfo.php','Y','Y'),
('4','Students/AddUsers.php','Y','Y'),
('4','Students/AdvancedReport.php','Y','Y'),
('4','Students/AddDrop.php','Y','Y'),
('4','Students/Letters.php','Y','Y'),
('4','Students/MailingLabels.php','Y','Y'),
('4','Students/StudentLabels.php','Y','Y'),
('4','Students/PrintStudentInfo.php','Y','Y'),
('4','Students/PrintStudentContactInfo.php','Y','Y'),
('4','Students/GoalReport.php','Y','Y'),
('4','Students/StudentFields.php','Y',null),
('4','Students/EnrollmentCodes.php','Y','Y'),
('4','Students/Upload.php','Y','Y'),
('4','Students/Upload.php?modfunc=edit','Y','Y'),
('4','Students/Student.php&category_id=1','Y','Y'),
('4','Students/Student.php&category_id=2','Y','Y'),
('4','Students/Student.php&category_id=3','Y','Y'),
('4','Students/Student.php&category_id=4','Y','Y'),
('4','Students/Student.php&category_id=5','Y','Y'),
('4','Users/User.php','Y','Y'),
('4','Users/User.php&staff_id=new','Y',null),
('4','Users/AddStudents.php','Y',null),
('4','Users/Preferences.php','Y',null),
('4','Users/Profiles.php','Y',null),
('4','Users/Exceptions.php','Y',null),
('4','Users/UserFields.php','Y',null),
('4','Users/TeacherPrograms.php?include=Grades/InputFinalGrades.php','Y',null),
('4','Users/TeacherPrograms.php?include=Grades/Grades.php','Y',null),
('4','Users/TeacherPrograms.php?include=Grades/ProgressReports.php','Y','Y'),
('4','Users/TeacherPrograms.php?include=Attendance/TakeAttendance.php','Y','Y'),
('4','Users/TeacherPrograms.php?include=Attendance/Missing_Attendance.php','Y','Y'),
('4','Users/TeacherPrograms.php?include=Eligibility/EnterEligibility.php','Y',null),
('4','Users/User.php&category_id=1','Y','Y'),
('4','Users/User.php&category_id=2','Y','Y'),
('4','Scheduling/Schedule.php','Y',null),
('4','Scheduling/ViewSchedule.php','Y',null),
('4','Scheduling/Requests.php','Y',null),
('4','Scheduling/MassSchedule.php','Y',null),
('4','Scheduling/MassRequests.php','Y',null),
('4','Scheduling/MassDrops.php','Y',null),
('4','Scheduling/PrintSchedules.php','Y','Y'),
('4','Scheduling/PrintClassLists.php','Y','Y'),
('4','Scheduling/PrintClassPictures.php','Y',null),
('4','Scheduling/PrintRequests.php','Y',null),
('4','Scheduling/ScheduleReport.php','Y',null),
('4','Scheduling/RequestsReport.php','Y',null),
('4','Scheduling/UnfilledRequests.php','Y',null),
('4','Scheduling/IncompleteSchedules.php','Y',null),
('4','Scheduling/AddDrop.php','Y',null),
('4','Scheduling/Scheduler.php','Y',null),
('4','Grades/ReportCards.php','Y','Y'),
('4','Grades/CalcGPA.php','Y','Y'),
('4','Grades/Transcripts.php','Y','Y'),
('4','Grades/TeacherCompletion.php','Y',null),
('4','Grades/GradeBreakdown.php','Y',null),
('4','Grades/FinalGrades.php','Y',null),
('4','Grades/GPARankList.php','Y',null),
('4','Grades/AdminProgressReports.php','Y',null),
('4','Grades/HonorRoll.php','Y',null),
('4','Grades/ReportCardGrades.php','Y','Y'),
('4','Grades/ReportCardComments.php','Y','Y'),
('4','Grades/HonorRollSetup.php','Y','Y'),
('4','Grades/FixGPA.php','Y',null),
('4','Grades/EditReportCardGrades.php','Y',null),
('4','Grades/EditHistoryMarkingPeriods.php','Y',null),
('4','Attendance/Administration.php','Y','Y'),
('4','Attendance/AddAbsences.php','Y','Y'),
('4','Attendance/AttendanceData.php?list_by_day=true','Y','Y'),
('4','Attendance/Percent.php','Y','Y'),
('4','Attendance/Percent.php?list_by_day=true','Y','Y'),
('4','Attendance/DailySummary.php','Y','Y'),
('4','Attendance/StudentSummary.php','Y','Y'),
('4','Attendance/TeacherCompletion.php','Y','Y'),
('4','Attendance/FixDailyAttendance.php','Y','Y'),
('4','Attendance/DuplicateAttendance.php','Y','Y'),
('4','Attendance/AttendanceCodes.php','Y','Y'),
('4','Eligibility/Student.php','Y',null),
('4','Eligibility/AddActivity.php','Y',null),
('4','Eligibility/StudentList.php','Y',null),
('4','Eligibility/TeacherCompletion.php','Y',null),
('4','Eligibility/Activities.php','Y',null),
('4','Eligibility/EntryTimes.php','Y',null),
('4','Billing/LedgerCard.php','Y','Y'),
('4','Billing/Balance_Report.php','Y','Y'),
('4','Billing/DailyTransactions.php','Y','Y'),
('4','Billing/PaymentHistory.php','Y','Y'),
('4','Billing/Fee.php','Y','Y'),
('4','Billing/StudentPayments.php','Y','Y'),
('4','Billing/MassAssignFees.php','Y','Y'),
('4','Billing/MassAssignPayments.php','Y','Y'),
('4','Billing/SetUp.php','Y','Y'),
('4','Billing/SetUp_FeeType.php','Y','Y'),
('4','Billing/SetUp_PayPal.php','Y','Y'),
('4','Tools/LogDetails.php','Y','Y'),
('4','Tools/DeleteLog.php','Y','Y'),
('4','Tools/Rollover.php','Y','Y'),
('4','Tools/Backup.php','Y','Y');


--
-- Dumping data for table `program_config`
--

insert into `program_config` (syear,school_id,program,title,value)values
(null,null,'Currency','US Dollar (USD)','1'),
(null,null,'Currency','British Pound (GBP)','2'),
(null,null,'Currency','Euro (EUR)','3'),
(null,null,'Currency','Canadian Dollar (CAD)','4'),
(null,null,'Currency','Australian Dollar (AUD)','5'),
(null,null,'Currency','Brazilian Real (BRL)','6'),
(null,null,'Currency','Chinese Yuan Renminbi (CNY)','7'),
(null,null,'Currency','Danish Krone (DKK)','8'),
(null,null,'Currency','Japanese Yen (JPY)','9'),
(null,null,'Currency','Indian Rupee (INR)','10'),
(null,null,'Currency','Indonesian Rupiah (IDR)','11'),
(null,null,'Currency','Korean Won  (KRW)','12'),
(null,null,'Currency','Malaysian Ringit (MYR)','13'),
(null,null,'Currency','Mexican Peso (MXN)','14'),
(null,null,'Currency','New Zealand Dollar (NZD)','15'),
(null,null,'Currency','Norwegian Krone  (NOK)','16'),
(null,null,'Currency','Pakistan Rupee  (PKR)','17'),
(null,null,'Currency','Philippino Peso (PHP)','18'),
(null,null,'Currency','Saudi Riyal (SAR)','19'),
(null,null,'Currency','Singapore Dollar (SGD)','20'),
(null,null,'Currency','South African Rand  (ZAR)','21'),
(null,null,'Currency','Swedish Krona  (SEK)','22'),
(null,null,'Currency','Swiss Franc  (CHF)','23'),
(null,null,'Currency','Thai Bhat  (THB)','24'),
(null,null,'Currency','Turkish Lira  (TRY)','25'),
(null,null,'Currency','United Arab Emirates Dirham (AED)','26'),
('".$_SESSION['syear']."',1, 'MissingAttendance', 'LAST_UPDATE','".date('Y-m-d',  strtotime($_SESSION['user_school_beg_date']))."'),
('".$_SESSION['syear']."', 1, 'eligibility', 'START_DAY', '1'),
('".$_SESSION['syear']."', 1, 'eligibility', 'START_HOUR', '8'),
('".$_SESSION['syear']."', 1, 'eligibility', 'START_MINUTE', '00'),
('".$_SESSION['syear']."', 1, 'eligibility', 'START_M', 'AM'),
('".$_SESSION['syear']."', 1, 'eligibility', 'END_DAY', '5'),
('".$_SESSION['syear']."', 1, 'eligibility', 'END_HOUR', '16'),
('".$_SESSION['syear']."', 1, 'eligibility', 'END_MINUTE', '00'),
('".$_SESSION['syear']."', 1, 'eligibility', 'END_M', 'PM');


--
-- Dumping data for table `program_user_config`
--
insert into `program_user_config` (user_id,school_id,program,title,value)values
('1',null,'Preferences','THEME','Blue'),
('1',null,'Preferences','MONTH','M'),
('1',null,'Preferences','DAY','j'),
('1',null,'Preferences','YEAR','Y'),
('1',null,'Preferences','HIDDEN','Y'),
('1',null,'Preferences','CURRENCY','1'),
('16','3','Gradebook','FY-27','10'),
('19','1','Gradebook','FY-15',null),
('19','1','Gradebook','FY-17','25'),
('19','1','Gradebook','FY-16','25'),
('19','1','Gradebook','FY-12',null),
('19','1','Gradebook','FY-14','25'),
('19','1','Gradebook','FY-13','25'),
('19','1','Gradebook','SEM-17','50'),
('19','1','Gradebook','SEM-16','50'),
('19','1','Gradebook','SEM-14','50'),
('19','1','Gradebook','SEM-13','50'),
('19','1','Gradebook','COMMENT_A',null),
('19','1','Gradebook','LATENCY','0'),
('19','1','Gradebook','ASSIGNMENT_SORTING','ASSIGNMENT_ID'),
('19','1','Gradebook','DEFAULT_ASSIGNED','Y'),
('19','1','Gradebook','ANOMALOUS_MAX','100'),
('16','3','Gradebook','FY-31','10'),
('16','3','Gradebook','FY-30','20'),
('16','3','Gradebook','FY-26','20'),
('16','3','Gradebook','FY-29','20'),
('16','3','Gradebook','FY-28','20'),
('16','3','Gradebook','SEM-31','50'),
('16','3','Gradebook','SEM-30','50'),
('16','3','Gradebook','SEM-29','50'),
('16','3','Gradebook','SEM-28','50'),
('16','3','Gradebook','COMMENT_A',null),
('16','3','Gradebook','LATENCY','0'),
('20','1','Gradebook','ASSIGNMENT_SORTING','ASSIGNMENT_ID'),
('20','1','Gradebook','WEIGHT','Y'),
('20','1','Gradebook','ANOMALOUS_MAX','100'),
('20','1','Gradebook','LATENCY','0'),
('20','1','Gradebook','COMMENT_A',null),
('20','1','Gradebook','SEM-13','50'),
('20','1','Gradebook','SEM-14','50'),
('20','1','Gradebook','SEM-16','50'),
('20','1','Gradebook','SEM-17','50'),
('20','1','Gradebook','FY-13','25'),
('20','1','Gradebook','FY-14','25'),
('20','1','Gradebook','FY-12',null),
('20','1','Gradebook','FY-16','25'),
('20','1','Gradebook','FY-17','25'),
('20','1','Gradebook','FY-15',null),
('15','2','Gradebook','ASSIGNMENT_SORTING','ASSIGNMENT_ID'),
('15','2','Gradebook','WEIGHT','Y'),
('15','2','Gradebook','ANOMALOUS_MAX','100'),
('15','2','Gradebook','LATENCY','0'),
('15','2','Gradebook','COMMENT_A',null),
('15','2','Gradebook','SEM-20','50'),
('15','2','Gradebook','SEM-21','50'),
('15','2','Gradebook','SEM-23','50'),
('15','2','Gradebook','SEM-24','50'),
('15','2','Gradebook','FY-20',null),
('15','2','Gradebook','FY-21',null),
('15','2','Gradebook','FY-19','50'),
('15','2','Gradebook','FY-23',null),
('15','2','Gradebook','FY-24',null),
('15','2','Gradebook','FY-22','50'),
('18','3','Gradebook','FY-27','50'),
('18','3','Gradebook','FY-31',null),
('18','3','Gradebook','FY-30',null),
('18','3','Gradebook','FY-26','50'),
('18','3','Gradebook','FY-29',null),
('18','3','Gradebook','FY-28',null),
('18','3','Gradebook','SEM-31','50'),
('18','3','Gradebook','SEM-30','50'),
('18','3','Gradebook','SEM-29','50'),
('18','3','Gradebook','SEM-28','50'),
('18','3','Gradebook','COMMENT_A',null),
('18','3','Gradebook','LATENCY','0'),
('18','3','Gradebook','ANOMALOUS_MAX','100'),
('18','3','Gradebook','WEIGHT','Y'),
('18','3','Gradebook','ASSIGNMENT_SORTING','ASSIGNMENT_ID'),
('14','2','Gradebook','FY-19','50'),
('14','2','Gradebook','FY-21',null),
('14','2','Gradebook','FY-20',null),
('14','2','Gradebook','SEM-24','50'),
('14','2','Gradebook','SEM-23','50'),
('14','2','Gradebook','SEM-21','50'),
('14','2','Gradebook','SEM-20','50'),
('14','2','Gradebook','COMMENT_A',null),
('14','2','Gradebook','LATENCY','0'),
('14','2','Gradebook','ANOMALOUS_MAX','100'),
('14','2','Gradebook','WEIGHT','Y'),
('14','2','Gradebook','ASSIGNMENT_SORTING','ASSIGNMENT_ID'),
('14','2','Gradebook','FY-23',null),
('14','2','Gradebook','FY-24',null),
('14','2','Gradebook','FY-22','50'),
('12','1','Gradebook','ASSIGNMENT_SORTING','ASSIGNMENT_ID'),
('12','1','Gradebook','WEIGHT','Y'),
('12','1','Gradebook','ANOMALOUS_MAX','100'),
('12','1','Gradebook','LATENCY','0'),
('12','1','Gradebook','COMMENT_A',null),
('12','1','Gradebook','SEM-13','50'),
('12','1','Gradebook','SEM-14','50'),
('12','1','Gradebook','SEM-16','50'),
('12','1','Gradebook','SEM-17','50'),
('12','1','Gradebook','FY-13',null),
('12','1','Gradebook','FY-14',null),
('12','1','Gradebook','FY-12','50'),
('12','1','Gradebook','FY-16',null),
('12','1','Gradebook','FY-17',null),
('12','1','Gradebook','FY-15','50'),
('98','3','Gradebook','ASSIGNMENT_SORTING','ASSIGNMENT_ID'),
('98','3','Gradebook','WEIGHT','Y'),
('98','3','Gradebook','ANOMALOUS_MAX','100'),
('98','3','Gradebook','LATENCY','0'),
('98','3','Gradebook','COMMENT_A',null),
('98','3','Gradebook','SEM-28','50'),
('98','3','Gradebook','SEM-29','50'),
('98','3','Gradebook','SEM-30','50'),
('98','3','Gradebook','SEM-31','50'),
('98','3','Gradebook','FY-28',null),
('98','3','Gradebook','FY-29',null),
('98','3','Gradebook','FY-26','50'),
('98','3','Gradebook','FY-30',null),
('98','3','Gradebook','FY-31',null),
('98','3','Gradebook','FY-27','50'),
('86',null,'Preferences','THEME','Black'),
('86',null,'Preferences','HIGHLIGHT','#f396a7'),
('86',null,'Preferences','MONTH','M'),
('86',null,'Preferences','DAY','j'),
('86',null,'Preferences','YEAR','Y'),
('86',null,'Preferences','HIDDEN','Y'),
('86',null,'Preferences','HIDE_ALERTS','N'),
('15',null,'Preferences','THEME','Blue'),
('15',null,'Preferences','HIGHLIGHT','#f396a7'),
('15',null,'Preferences','MONTH','M'),
('15',null,'Preferences','DAY','j'),
('15',null,'Preferences','YEAR','Y'),
('15',null,'Preferences','HIDDEN','Y'),
('15',null,'Preferences','HIDE_ALERTS','N'),
('26','1','Gradebook','ASSIGNMENT_SORTING','ASSIGNMENT_ID'),
('26','1','Gradebook','ANOMALOUS_MAX','100'),
('26','1','Gradebook','LATENCY','0'),
('26','1','Gradebook','COMMENT_A',null),
('26','1','Gradebook','SEM-13','25'),
('26','1','Gradebook','SEM-14','25'),
('26','1','Gradebook','SEM-16','25'),
('26','1','Gradebook','SEM-17','25'),
('26','1','Gradebook','FY-13',null),
('26','1','Gradebook','FY-14',null),
('26','1','Gradebook','FY-12',null),
('26','1','Gradebook','FY-16',null),
('26','1','Gradebook','FY-17',null),
('26','1','Gradebook','FY-15',null),
('16','3','Gradebook','ASSIGNMENT_SORTING','ASSIGNMENT_ID'),
('16','3','Gradebook','ANOMALOUS_MAX','100');


--
-- Dumping data for table `report_card_comments`
--


--
-- Dumping data for table `report_card_grades`
--


--
-- Dumping data for table `report_card_grade_scales`
--


--
-- Dumping data for table `schedule`
--


--
-- Dumping data for table `schools`
--



INSERT INTO `schools` (`syear`, `title`, `address`, `city`, `state`, `zipcode`, `area_code`, `phone`, `principal`, `www_address`, `e_mail`, `ceeb`, `reporting_gp_scale`) VALUES
(".$_SESSION['syear'].", '".$_SESSION['sname']."', '', '', '', '', NULL, NULL, '', '', NULL, NULL, NULL);


--
-- Dumping data for table `system_preference`
--

insert into `system_preference` (id,school_id,full_day_minute,half_day_minute)values (1,1,10,5);

--
-- Dumping data for table `login_message`
--

insert into `login_message` (id,message,display)values
(1,'This is a restricted network. Use of this network, its equipment, and resources is monitored at all times and requires explicit permission from the network administrator. If you do not have this permission in writing, you are violating the regulations of this network and can and will be prosecuted to the fullest extent of law. By continuing into this system, you are acknowledging that you are aware of and agree to these terms.','Y');

--
-- Dumping data for table `school_gradelevels`
--


--
-- Dumping data for table `school_periods`
--




--
-- Dumping data for table `school_progress_periods`
--


--
-- Dumping data for table `school_quarters`
--



--
-- Dumping data for table `school_semesters`
--



--
-- Dumping data for table `school_years`
--

INSERT INTO `school_years` (`marking_period_id`, `syear`, `school_id`, `title`, `short_name`, `sort_order`, `start_date`, `end_date`, `post_start_date`, `post_end_date`, `does_grades`, `does_exam`, `does_comments`, `rollover_id`) VALUES
('1', '".$_SESSION['syear']."', '1', 'Full Year', 'FY', '1', '".$_SESSION['user_school_beg_date']."', '".$_SESSION['user_school_end_date']."', 'Y', NULL, NULL, NULL, NULL, NULL);

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `current_school_id`, `first_name`, `last_name`, `middle_name`, `username`, `password`, `profile`, `profile_id`) VALUES
(1, 1, 'Admin', 'Administrator', 'A', 'admin', md5('admin'), 'admin', 1);


--
-- Dumping data for table `staff_school_relationship`
--

INSERT INTO `staff_school_relationship` (`staff_id`, `school_id`, `syear`) VALUES
(1, 1, ".$_SESSION['syear'].");

--
-- Dumping data for table `staff_exceptions`
--

insert into `staff_exceptions` (user_id,modname,can_use,can_edit)values
('1','School_Setup/PortalNotes.php','Y','Y'),
('1','School_Setup/Schools.php','Y','Y'),
('1','School_Setup/Schools.php?new_school=true','Y','Y'),
('1','School_Setup/CopySchool.php','Y','Y'),
('1','School_Setup/MarkingPeriods.php','Y','Y'),
('1','School_Setup/Calendar.php','Y','Y'),
('1','School_Setup/Periods.php','Y','Y'),
('1','School_Setup/GradeLevels.php','Y','Y'),
('1','School_Setup/Rollover.php','Y','Y'),
('1','Students/Student.php','Y','Y'),
('1','Students/Student.php&include=General_Info&student_id=new','Y','Y'),
('1','Students/AssignOtherInfo.php','Y','Y'),
('1','Students/AddUsers.php','Y','Y'),
('1','Students/AdvancedReport.php','Y','Y'),
('1','Students/AddDrop.php','Y','Y'),
('1','Students/Letters.php','Y','Y'),
('1','Students/MailingLabels.php','Y','Y'),
('1','Students/StudentLabels.php','Y','Y'),
('1','Students/PrintStudentInfo.php','Y','Y'),
('1','Students/StudentFields.php','Y','Y'),
('1','Students/AddressFields.php','Y','Y'),
('1','Students/PeopleFields.php','Y','Y'),
('1','Students/EnrollmentCodes.php','Y','Y'),
('1','Students/Student.php&category_id=1','Y','Y'),
('1','Students/Student.php&category_id=3','Y','Y'),
('1','Students/Student.php&category_id=2','Y','Y'),
('1','Users/User.php','Y','Y'),
('1','Users/User.php&category_id=1','Y','Y'),
('1','Users/User.php&staff_id=new','Y','Y'),
('1','Users/AddStudents.php','Y','Y'),
('1','Users/Preferences.php','Y','Y'),
('1','Users/Profiles.php','Y','Y'),
('1','Users/Exceptions.php','Y','Y'),
('1','Users/UserFields.php','Y','Y'),
('1','Users/TeacherPrograms.php?include=Grades/InputFinalGrades.php','Y','Y'),
('1','Users/TeacherPrograms.php?include=Grades/Grades.php','Y','Y'),
('1','Users/TeacherPrograms.php?include=Attendance/TakeAttendance.php','Y','Y'),
('1','Users/TeacherPrograms.php?include=Eligibility/EnterEligibility.php','Y','Y'),
('1','Scheduling/Schedule.php','Y','Y'),
('1','Scheduling/Requests.php','Y','Y'),
('1','Scheduling/MassSchedule.php','Y','Y'),
('1','Scheduling/MassRequests.php','Y','Y'),
('1','Scheduling/MassDrops.php','Y','Y'),
('1','Scheduling/ScheduleReport.php','Y','Y'),
('1','Scheduling/RequestsReport.php','Y','Y'),
('1','Scheduling/UnfilledRequests.php','Y','Y'),
('1','Scheduling/IncompleteSchedules.php','Y','Y'),
('1','Scheduling/AddDrop.php','Y','Y'),
('1','Scheduling/PrintSchedules.php','Y','Y'),
('1','Scheduling/PrintRequests.php','Y','Y'),
('1','Scheduling/PrintClassLists.php','Y','Y'),
('1','Scheduling/PrintClassPictures.php','Y','Y'),
('1','Scheduling/Courses.php','Y','Y'),
('1','Scheduling/Scheduler.php','Y','Y'),
('1','Grades/ReportCards.php','Y','Y'),
('1','Grades/CalcGPA.php','Y','Y'),
('1','Grades/Transcripts.php','Y','Y'),
('1','Grades/TeacherCompletion.php','Y','Y'),
('1','Grades/GradeBreakdown.php','Y','Y'),
('1','Grades/FinalGrades.php','Y','Y'),
('1','Grades/GPARankList.php','Y','Y'),
('1','Grades/FixGPA.php','Y','Y'),
('1','Attendance/Administration.php','Y','Y'),
('1','Attendance/AddAbsences.php','Y','Y'),
('1','Attendance/Percent.php','Y','Y'),
('1','Attendance/Percent.php?list_by_day=true','Y','Y'),
('1','Attendance/DailySummary.php','Y','Y'),
('1','Attendance/StudentSummary.php','Y','Y'),
('1','Attendance/TeacherCompletion.php','Y','Y'),
('1','Attendance/DuplicateAttendance.php','Y','Y'),
('1','Attendance/AttendanceCodes.php','Y','Y'),
('1','Attendance/FixDailyAttendance.php','Y','Y'),
('1','Eligibility/Student.php','Y','Y'),
('1','Eligibility/AddActivity.php','Y','Y'),
('1','Eligibility/StudentList.php','Y','Y'),
('1','Eligibility/TeacherCompletion.php','Y','Y'),
('1','Eligibility/Activities.php','Y','Y'),
('1','Eligibility/EntryTimes.php','Y','Y'),
('1','Grades/ReportCardComments.php','Y','Y'),
('1','Grades/ReportCardGrades.php','Y','Y'),
('1','Grades/EditReportCardGrades.php','Y','Y'),
('1','Grades/EditHistoryMarkingPeriods.php','Y','Y'),
('1','Grades/EditReportCardGrades.php','Y','Y'),
('1','Grades/EditHistoryMarkingPeriods.php','Y','Y'),
('1','Tools/Update.php','Y','Y'),
('1','Tools/InstallModule.php','Y','Y'),
('1','Tools/Backup.php','Y','Y'),
('1','Tools/Restore.php','Y','Y'),
('1','Tools/LogDetails.php','Y','Y'),
('1','Tools/DeleteLog.php','Y','Y');


--
-- Dumping data for table `staff_field_categories`
--

insert into `staff_field_categories` (id,title,sort_order,include,admin,teacher,parent,none)values
(1,'General Info','1',null,'Y','Y','Y','Y'),
(2,'Schedule','2',null,null,'Y',null,null);

--
-- Dumping data for table `students`
--




--
-- Dumping data for table `students_join_users`
--


--
-- Dumping data for table `student_eligibility_activities`
--


--
-- Dumping data for table `student_enrollment`
--



--
-- Dumping data for table `student_enrollment_codes`
--

INSERT INTO student_enrollment_codes(syear,title,short_name,type)VALUES
(".$_SESSION['syear'].",'Transferred out','TRAN','TrnD'),
(".$_SESSION['syear'].",'Transferred in','TRAN','TrnE'),
(".$_SESSION['syear'].",'Rolled over','ROLL','Roll'),
(".$_SESSION['syear'].",'Dropped Out','DROP','Drop'),
(".$_SESSION['syear'].",'New', 'NEW', 'Add');
--
-- Dumping data for table `student_field_categories`
--

insert into `student_field_categories` (id,title,sort_order,include)values
(1,'General Info','1',null),
(2,'Medical','3',null),
(3,'Addresses & Contacts','2',null),
(4,'Comments','4',null),
(5,'Goals','6',null);


--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`profile`, `title`) VALUES
('student', 'Student');
UPDATE `user_profiles` SET `id`=0;
ALTER TABLE `user_profiles` AUTO_INCREMENT=1;
INSERT INTO `user_profiles` (`profile`, `title`) VALUES
('admin', 'Administrator'),
('teacher', 'Teacher'),
('parent', 'Parent'),
('admin', 'Admin Asst');



";

	$sqllines = split("\n",$text);
	$cmd = '';
	foreach($sqllines as $l)
	{
		if(preg_match('/^\s*--/',$l) == 0)
		{
			$cmd .= ' ' . $l . "\n";
			if(preg_match('/.+;/',$l) != 0)
			{
				$result = mysql_query($cmd);
				$cmd = '';
			}
		}
	}

?>
