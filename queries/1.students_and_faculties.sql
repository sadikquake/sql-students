/* This file contains a list of all students and their faculties */

SELECT
	s.student_id, s.name, s.admission_year, g.group_name, g.faculty
FROM
	students AS s
LEFT JOIN `groups` AS g ON s.group_id = g.group_id
ORDER BY
	name ASC;