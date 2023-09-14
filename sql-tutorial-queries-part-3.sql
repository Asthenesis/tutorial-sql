--find a list of employee and branch names
--rule is to have a same number of columns, same datatypes
SELECT first_name
FROM employee
UNION   
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;

--find a list of all client and branch suppliers name
SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

--find a list of all money spent or earned by the company
SELECT salary, employee.emp_id
FROM employee
UNION
SELECT total_sales, works_with.emp_id
FROM works_with;



--JOINS
--getting started
-- INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);
SELECT employee.emp_id, employee.first_name, employee.last_name, branch.branch_name
FROM employee
JOIN branch   
ON employee.emp_id = branch.mgr_id;

-- Left join combine same data from both tables and the first table or Left Table
SELECT employee.emp_id, employee.first_name, employee.last_name, branch.branch_name
FROM employee
LEFT JOIN branch   
ON employee.emp_id = branch.mgr_id ORDER BY branch.branch_name DESC;

-- Right Join combine same data from both tables and the second table or right table
SELECT employee.emp_id, employee.first_name, employee.last_name, branch.branch_name
FROM employee
RIGHT JOIN branch   
ON employee.emp_id = branch.mgr_id;


-- Full outer join
SELECT employee.emp_id, employee.first_name, employee.last_name, branch.branch_name
FROM employee
LEFT JOIN branch   
ON employee.emp_id = branch.mgr_id
UNION
SELECT employee.emp_id, employee.first_name, employee.last_name, branch.branch_name
FROM employee
RIGHT JOIN branch   
ON employee.emp_id = branch.mgr_id;



