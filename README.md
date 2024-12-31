# Student managment system
The project contains SQL scripts to create and manage a database of university students.

## Features
- Creating database tables.
- Examples of filling tables with data.
- Examples of student data queries.
- Examples of responses to requests.

## Database SchemeThe database includes the following tables:
1. Students - Basic information about students.
2. Groups - Information about groupsand faculties.
3. Courses - Information about courses and instructors.
4. Enrollments - The table for connecting enrolled students and their courses.

## Queries included:
- 1: The list of all students and their faculties.
- 2: The list of students who enrolled in 2020 and their courses.
- 3: The list of students and their grade point average.
- 4: The list of faculty members whose courses have a grade point average below 60.
- 5: The list of the most successful students.
- 6: The list of groups with an average score below 70.
- 7: The list of students who have not yet enrolled in any courses.

## How to use:
0. You must have a database created and selected.
1. Create the scheme from 'database-schema.sql'.
2. Import data from 'input-data.sql'.
3. Run one of queries from 'queries/*.sql'.

## Getting results
You can find the answer to each request in the 'resuls/'. The answers are numbered in the same order as the queries (from 1 to 7).