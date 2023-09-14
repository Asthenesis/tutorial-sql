-- find the numbers of employees and alias
SELECT COUNT(emp_id) AS emp_count FROM employee;

--
SELECT COUNT (super_id) FROM employee;

--
SELECT COUNT(emp_id) FROM employee
WHERE sex = 'F' AND birth_day > '1971-01-01';


--FInd the average salary of employee
SELECT AVG(salary) FROM employee
WHERE sex = 'M';

SELECT SUM(salary) FROM employee;

-- find out how many males and females are there
SELECT COUNT(sex), sex FROM employee
GROUP BY sex;

--find the total sales of each salesman
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

SELECT sum(total_sales)
FROM works_with
GROUP BY emp_id;

SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id;



--wildcards

-- % = any # characters, _ = one character

--find any clients who are an LLC
SELECT * FROM client
WHERE client_name LIKE '%LLC';

-- find any branch suppliers who are in label business
SELECT * FROM branch_supplier
WHERE supplier_name LIKE '% Label%';

--Find any employee born in october
SELECT * FROM employee
WHERE birth_day LIKE '____-10%';
--february
SELECT * FROM employee
WHERE birth_day LIKE '____-02%';

--find clients who are school
SELECT * FROM client
WHERE client_name LIKE '%School%';



