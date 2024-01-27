--  Show the employee names and corresponding job_titles without using JOIN query
SELECT employees.first_name, jobs.job_title
FROM employees, jobs
WHERE employees.job_id = jobs.job_id;

-- using JOIN
SELECT employees.first_name, jobs.job_title
FROM employees JOIN jobs
				ON employees.job_id = jobs.job_id;
                
                
--  Show the name of the employee and the job_title who receives the maximum salary
SELECT employees.first_name AS EmpName, jobs.job_title AS Job
FROM employees JOIN jobs
				ON employees.job_id = jobs.job_id
WHERE employees.salary = (SELECT MAX(salary) FROM employees);


--  Show the list of employee name and corresponding manager names.
SELECT emp.first_name AS Employee, mng.first_name AS Manager
FROM employees AS emp JOIN employees AS mng
					ON emp.manager_id = mng.employee_id;