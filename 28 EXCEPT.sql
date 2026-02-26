/*
	===============
	== 28 EXCEPT == 
	===============
	- is a SET operator that returns rows from the first query that do NOT exist in the second query 
	------------
	-- syntax -- 
	------------
		SELECT column1, column2
		FROM table1
		EXCEPT
		SELECT column1, column2
		FROM table2;
*/

USE SalesDB;

-- find the employees who are not customers at the same time 
SELECT 
	FirstName,
	LastName
FROM Sales.Customers
EXCEPT 
SELECT 
	FirstName,
	LastName
FROM Sales.Employees;

-- the order of queries in a EXCEPT does affect the result 
SELECT 
	FirstName,
	LastName
FROM Sales.Employees
EXCEPT 
SELECT 
	FirstName,
	LastName
FROM Sales.Customers;

