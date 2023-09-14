-- Select * from employee;

-- select * from works_with;

-- Find all employees
SELECT * FROM employee;

--Find all client
SELECT * FROM client;

--FInd all employees ordered by salary
SELECT * FROM employee
ORDER BY salary DESC;

-- find all employees ordered by sex then name
SELECT * FROM employee
ORDER BY sex, first_name, last_name;

SELECT * FROM employee
order by first_name, last_name, sex;


--Find the first 5 employee
SELECT * FROM employee
LIMIT 5;

-- Find the last 5 employee
(SELECT * FROM employee
ORDER BY emp_id DESC
LIMIT 5) ORDER BY emp_id ASC;

-- FInd first and last name of all employees
SELECT first_name, last_name FROM employee;

-- Find forename and surname of all employees
SELECT first_name AS forename, last_name AS username
FROM employee;


--find all the different genders
SELECT DISTINCT sex FROM employee;

--find all the different branch
select distinct branch_id FROM employee;

