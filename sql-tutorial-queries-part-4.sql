-- Find names of all employees who have 
--sold over 30,000 to a single client

SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (SELECT ww.emp_id FROM 
works_with AS ww WHERE ww.total_sales > 30000);


--find all clients who are handled by the branch 
--that michael scott manages
--assume you know Michael's ID


SELECT client.client_id, client.client_name
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id 
    FROM branch 
    WHERE branch.mgr_id = 102
    LIMIT 1
);

