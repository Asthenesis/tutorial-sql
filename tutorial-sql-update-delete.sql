SELECT * FROM student;

UPDATE student
SET major = 'Chemistry'
WHERE student_id = 3;

UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry';


UPDATE student
SET name = 'Tom', major = 'undecided'
WHERE student_id = 1;

-- DELETE FROM student -> delete all data inside student table

DELETE FROM student
WHERE student_id = 5;

DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';

