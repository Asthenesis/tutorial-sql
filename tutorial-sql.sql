CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided'
    -- PRIMARY KEY (student_id)
);

DESCRIBE student;

ALTER TABLE student ADD gpa DECIMAL(3,2);

CREATE DATABASE FakeDatabase;

USE fakedatabase;

INSERT INTO countries(countryName, population) VALUES('Brazil',2000000);
INSERT INTO countries(countryName, population) VALUES('Bulgaria',69000000);

SELECT * FROM countries;

-- ALTER TABLE student DROP COLUMN gpa; //for drop column in a table
-- DROP TABLE student; //drop table or delete table