-- Module-06: Sub Query, Advanced Query, CTE


-- Show the 2nd highest Salary.
SELECT MAX(salary)
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);
-- 2nd Way
-- SELECT salary
-- FROM employees
-- ORDER BY salary DESC
-- LIMIT 1, 1;


-- Select those Employees whose salary > than his/her Manager.
SELECT *
FROM employees AS emp
WHERE salary > (SELECT salary
				FROM employees
                WHERE employee_id = Emp.manager_id);
                
                
-- Common Tabe Expression(CTE): it can be say CodeTemplate[own think], it provides you a table
WITH itAverageSalary AS
(
	SELECT AVG(salary) AS sal_it
	FROM employees
	WHERE department_id = 60	-- IT Department
),

marketingMaxSalary AS
(
	SELECT MAX(salary) AS sal_mk
    FROM employees
    WHERE department_id = 20	-- Marketing Department
)

-- Show them whose salary > avg_marketing_salary and salary < max_it_salary
SELECT *
FROM employees
WHERE salary > (SELECT sal_it FROM itAverageSalary) AND salary < (SELECT sal_mk FROM marketingMaxSalary);