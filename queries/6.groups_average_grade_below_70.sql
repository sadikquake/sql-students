/* This file contains groups with an average score below 70 */

SELECT
	g.group_id, g.group_name, s.student_id, AVG(e.grade) as avg_grade
FROM
	`groups` AS g
LEFT JOIN students AS s ON g.group_id = s.group_id
LEFT JOIN enrollments AS e ON s.student_id = e.student_id
GROUP BY
	g.group_id, g.group_name
HAVING
	avg_grade < 70
ORDER BY
	g.group_id ASC;