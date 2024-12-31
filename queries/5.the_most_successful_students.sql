/* This file contains a list of the most successful students */

SELECT
	s.student_id, s.name, g.group_name, g.faculty, COALESCE(SUM(e.grade)) AS sum_grade
FROM
	students AS s
LEFT JOIN enrollments AS e ON s.student_id = e.student_id
LEFT JOIN `groups` AS g ON s.group_id = g.group_id
GROUP BY
	s.student_id, s.name, g.group_name, g.faculty
HAVING
	sum_grade >= 20
ORDER BY
	s.student_id ASC;