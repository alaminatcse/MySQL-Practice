CREATE DATABASE practice3_assignment;
USE practice3_assignment;

-- a) Student Table with Constraint:
CREATE TABLE Student (
	Name VARCHAR(20) NOT NULL,
	Id INT,
	Department VARCHAR(20) NOT NULL,
	Section VARCHAR(20) NOT NULL,
	CONSTRAINT id_rule PRIMARY KEY(Id)
);

-- b) Library Table with Constraint:
CREATE TABLE Library (
	BookName VARCHAR(20),
	IdWhoHired INT,
	CONSTRAINT book_name PRIMARY KEY(BookName),
	CONSTRAINT id_rule FOREIGN KEY(IdWhoHired) REFERENCES Student(Id)
);

-- a) Fees Table with Constraint:
CREATE TABLE Fees (
	AccountNo INT,
	IdWhoPaid INT,
	PaidAmount FLOAT,
	CONSTRAINT acc_no PRIMARY KEY(AccountNo),
	CONSTRAINT who_hired FOREIGN KEY(IdWhoPaid) REFERENCES Student(Id)
);

-- to show the distinct department names:
SELECT DISTINCT Department
FROM Employee;

-- to show the LastNames of the employees sorted by descending ages
SELECT LastName
FROM Employee
ORDER BY Age DESC;

-- to show the employee LastName whose age is greater than 30 and works in Marketing department.
SELECT LastName
FROM Employee
WHERE Age>30 AND Department='Marketing';

--  to select all the employees
SELECT *
FROM Employee;

-- to get employees whose names includes ‘son’:
SELECT *
FROM Employee
WHERE FirstName LIKE '%son%' OR LastName LIKE '%son%';

-- to get the engineers:
SELECT *
FROM Employee
WHERE Department = 'Engineering';