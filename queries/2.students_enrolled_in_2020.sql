/* This file contains a list of students who enrolled in 2020 and their courses */

SELECT
	s.student_id, s.name, s.admission_year, c.course_name
FROM
	students AS s
LEFT JOIN enrollments AS e ON s.student_id = e.student_id
LEFT JOIN courses AS c ON e.course_id = c.course_id
WHERE
	admission_year = 2020
ORDER BY
	name ASC;