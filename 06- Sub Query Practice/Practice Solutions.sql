use dummydb;

-- Determine the third highest salary and which employee receives it?
SELECT salary AS MaxSalary, first_name  AS ReceivePerson
FROM employees
WHERE salary = (	SELECT DISTINCT salary
					FROM employees
					ORDER BY salary DESC
					LIMIT 2, 1
                );
                


-- Determine the third lowest salary and which employee receives it?
SELECT salary AS MinSalary, first_name  AS ReceivePerson
FROM employees
WHERE salary = (	SELECT DISTINCT salary
					FROM employees
					ORDER BY salary
					LIMIT 2, 1
                );
                
                
                
--  Which employee has been hired after Steven?
SELECT *
FROM employees
WHERE hire_date = (	SELECT hire_date
					FROM employees
                    WHERE hire_date > (	SELECT MIN(hire_date)
											FROM employees
                                            WHERE first_name = 'Steven')
                    ORDER BY hire_date
                    LIMIT 1
                    );
                    
                    
                    
-- With CTE solve the question 1 and 2
WITH salary_desc AS
(
	SELECT DISTINCT salary AS maxSalary
	FROM employees
	ORDER BY salary DESC
	LIMIT 2, 1
),
salary_asc AS
(
	SELECT DISTINCT salary AS minSalary
	FROM employees
	ORDER BY salary
	LIMIT 2, 1
)

-- 3rd max salary
-- SELECT first_name AS ReceivedPerson, salary
-- FROM employees
-- WHERE salary = (SELECT maxSalary FROM salary_desc);

-- 3rd lowest salary
SELECT first_name AS ReceivedPerson, salary
FROM employees
WHERE salary = (SELECT minSalary FROM salary_asc);