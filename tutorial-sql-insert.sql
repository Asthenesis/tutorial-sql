-- USE girrafe;

-- Inserting to table student
INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(name) VALUES('Claire');
INSERT INTO student(student_id, name) VALUES(4, 'Claire');
INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Mike', 'Computer Science');

-- Show student table including rows and columns
SELECT * FROM student;

DROP TABLE student;

