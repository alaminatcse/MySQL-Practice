-- show the Manager Name and His Employee Name

SELECT emp.first_name AS EmpName, mng.first_name AS MngName
FROM employees AS emp JOIN employees AS mng
	ON emp.manager_id = mng.employee_id;