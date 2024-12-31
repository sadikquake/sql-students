/* This file contains a list of students who have not yet enrolled in any courses */

SELECT
	student_id, name
FROM
	students AS s
    WHERE NOT EXISTS(
		SELECT
			1
		FROM
			enrollments AS e
		WHERE
			e.student_id = s.student_id);