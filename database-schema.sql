/* This file contains structures of all used tables (without data filling themselves) */

-- The table 'groups'
CREATE TABLE IF NOT EXISTS `groups` (
	group_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    group_name VARCHAR(100) NOT NULL,
    faculty VARCHAR(100) NOT NULL
) ENGINE=InnoDb;

-- The table 'students'
CREATE TABLE IF NOT EXISTS `students` (
	student_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    admission_year YEAR NOT NULL,
    group_id MEDIUMINT UNSIGNED NULL,
    FOREIGN KEY (group_id) REFERENCES `groups`(group_id)
	ON DELETE SET NULL
) ENGINE=InnoDb;

-- The table 'instructors'
CREATE TABLE IF NOT EXISTS `instructors` (
	instructor_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(60) NOT NULL,
    last_name VARCHAR(60) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    birthday DATE NOT NULL,
    hire_date DATE NOT NULL,
    title VARCHAR(50)
) ENGINE=InnoDb;

-- The table 'courses'
CREATE TABLE IF NOT EXISTS `courses` (
	course_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
	ON DELETE RESTRICT
) ENGINE=InnoDb;

-- The table 'enrollments'
CREATE TABLE IF NOT EXISTS `enrollments` (
	enrollment_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_id INT UNSIGNED NOT NULL,
    course_id INT UNSIGNED NOT NULL,
    grade TINYINT(1) UNSIGNED NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
	ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
	ON DELETE CASCADE
) ENGINE=InnoDb;