/* This file contains a list of students and their grade point average (grade) */

SELECT
	s.student_id, s.name, ROUND(AVG(e.grade), 2)
FROM
	students AS s
LEFT JOIN enrollments AS e ON s.student_id = e.student_id
GROUP BY
	s.student_id
ORDER BY
	name ASC;