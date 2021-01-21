-- students with the highest marks in Unit 4
SELECT student_id, unit4 FROM student_marks ORDER BY unit4 DESC LIMIT 42;
---- students scored between 89 and 100 unit4 
SELECT student_id, unit4 FROM student_marks WHERE unit4 BETWEEN 89 AND 100;
-- Take a closer look at the tables that you created 
---and come up with 10 different scenarios/ questions and form SQL
---Name of ten students 
SELECT first_name,last_name FROM student LIMIT 10;
--Name of students in alphabetic order
SELECT first_name,last_name FROM student ORDER BY last_name ASC;
--Gender
SELECT gender FROM student;
---count male
SELECT COUNT(gender) FROM student WHERE gender = 'Male';
---count female
SELECT COUNT(gender) FROM student WHERE gender = 'Female';
---count non binary
SELECT COUNT(gender) FROM student WHERE gender = 'Non binary';
---name of students starting by J
SELECT first_name FROM student WHERE first_name LIKE 'J%'
--student with a unit2 mark over 90
SELECT student_reg_id,unit2 FROM student_marks WHERE unit2 > 90 ORDER BY unit2 ASC;
--10 student with lowest mark in unit 2
SELECT student_reg_id,unit2 FROM student_marks ORDER BY unit2 ASC LIMIT 10;
--Student name, email where the id is between 1 and 20
SELECT id,first_name, email FROM student WHERE id BETWEEN 1 AND 20;
