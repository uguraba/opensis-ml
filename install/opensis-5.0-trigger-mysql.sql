DROP TRIGGER IF EXISTS `td_student_report_card_grades`;
DELIMITER $$
CREATE TRIGGER `td_student_report_card_grades` AFTER DELETE ON `student_report_card_grades`
 FOR EACH ROW SELECT CALC_GPA_MP(OLD.student_id, OLD.marking_period_id) INTO @return$$
DELIMITER ;

DROP TRIGGER IF EXISTS `ti_student_report_card_grades`;
DELIMITER $$
CREATE TRIGGER `ti_student_report_card_grades` AFTER INSERT ON `student_report_card_grades`
 FOR EACH ROW SELECT CALC_GPA_MP(NEW.student_id, NEW.marking_period_id) INTO @return$$
DELIMITER ;

DROP TRIGGER IF EXISTS `tu_student_report_card_grades`;
DELIMITER $$
CREATE TRIGGER `tu_student_report_card_grades` AFTER UPDATE ON `student_report_card_grades`
 FOR EACH ROW SELECT CALC_GPA_MP(NEW.student_id, NEW.marking_period_id) INTO @return$$
DELIMITER ;



DROP TRIGGER IF EXISTS `tu_cp_missing_attendance`;
DELIMITER $$
CREATE TRIGGER `tu_cp_missing_attendance`
    AFTER UPDATE ON course_periods
    FOR EACH ROW
	CALL ATTENDANCE_CALC(NEW.course_period_id, NEW.syear,NEW.school_id);
DELIMITER ;

DROP TRIGGER IF EXISTS `td_cp_missing_attendance`;
CREATE TRIGGER `td_cp_missing_attendance`
    AFTER DELETE ON course_periods
    FOR EACH ROW
	CALL ATTENDANCE_CALC(OLD.course_period_id, OLD.syear,OLD.school_id);


DROP TRIGGER IF EXISTS `ti_sch_missing_attendance`;
DELIMITER $$
CREATE TRIGGER `ti_sch_missing_attendance`
    AFTER INSERT ON `schedule`
    FOR EACH ROW
    BEGIN
    DECLARE schedule_id INT;
    SET schedule_id = (SELECT COUNT(id) FROM `schedule` WHERE course_period_id=NEW.course_period_id AND start_date=NEW.start_date AND end_date IS NULL);
    IF schedule_id<2 THEN
	CALL ATTENDANCE_CALC(NEW.course_period_id, NEW.syear,NEW.school_id);
    END IF;
    END$$
DELIMITER ;

DROP TRIGGER IF EXISTS `tu_sch_missing_attendance`;
CREATE TRIGGER `tu_sch_missing_attendance`
    AFTER UPDATE ON schedule
    FOR EACH ROW
	CALL ATTENDANCE_CALC(NEW.course_period_id, NEW.syear,NEW.school_id);

DROP TRIGGER IF EXISTS `td_sch_missing_attendance`;
CREATE TRIGGER `td_sch_missing_attendance`
    AFTER DELETE ON schedule
    FOR EACH ROW
	CALL ATTENDANCE_CALC(OLD.course_period_id, OLD.syear,OLD.school_id);

DROP TRIGGER IF EXISTS `ti_cal_missing_attendance`;
DELIMITER $$
CREATE TRIGGER `ti_cal_missing_attendance`
    AFTER INSERT ON attendance_calendar
    FOR EACH ROW
	CALL ATTENDANCE_CALC_BY_DATE(NEW.school_date, NEW.syear,NEW.school_id);
DELIMITER ;

DROP TRIGGER IF EXISTS `td_cal_missing_attendance`;
CREATE TRIGGER `td_cal_missing_attendance`
    AFTER DELETE ON attendance_calendar
    FOR EACH ROW
	DELETE mi.* FROM missing_attendance mi,course_periods cp WHERE mi.course_period_id=cp.course_period_id and cp.calendar_id=OLD.calendar_id AND mi.SCHOOL_DATE=OLD.school_date;

