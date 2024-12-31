/* This file contains a list of faculty members whose courses have a grade point average below 60 */

SELECT
	c.instructor_id, CONCAT(i.title, ', ', i.first_name, ' ', i.last_name) AS instructor_name, AVG(e.grade) AS avg_grade
FROM
	instructors as i
LEFT JOIN courses AS c ON i.instructor_id = c.instructor_id
LEFT JOIN enrollments as e ON c.course_id = e.course_id
GROUP BY
	c.instructor_id, i.title, i.first_name, i.last_name
HAVING
	avg_grade < 60
ORDER BY
	i.first_name ASC,
	i.last_name DESC;