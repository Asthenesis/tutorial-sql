SELECT * FROM student;

SELECT name, major
FROM student;

SELECT student.name, student.major
FROM student
ORDER BY name DESC;

SELECT * FROM student
ORDER BY name DESC;

SELECT * FROM student
ORDER BY major, student_id;

SELECT * FROM student
ORDER BY major, student_id DESC;

SELECT * FROM student
LIMIT 2;   --show data from student table and limit by 2 

SELECT * FROM student
WHERE major = 'Biochemistry' OR major = 'Sociology';

SELECT * FROM student
WHERE major = 'Biochemistry' OR name = 'Mike';

-- symbol <> is 'not equal'

SELECT * FROM student
WHERE student_id <= 3;

SELECT * FROM student
WHERE student_id <> 3;

SELECT * FROM student
WHERE name IN('Claire', 'Kate', 'Mike');

SELECT * FROM student
WHERE name IN('Claire', 'Kate', 'Mike') AND student_id >= 2;
