/*
	==============
	== 27 UNION == 
	==============
	- used to combine the results of two or more SELECT queries into single result set
	- it removes duplicate rows by default
	- all SELECT queries must have the same number of columns and compatible data types
	- ORDER BY is allowed only once at the end of the query 
	- data types of columns in each query must be compatible 

	-- union returns distinct rows from both queries
	-- removes duplicate rows from the result

	------------
	-- syntax -- 
	------------
		SELECT column1, column2, ...
		FROM table1
		WHERE condition1

		UNION

		SELECT column1, column2, ...
		FROM table2
		WHERE condition2;

*/


USE SalesDB;


-- the number of columns in the first table must be equal to the number of columns in the second table
-- the column names in the result set are determined by the column names specified in the first query 
SELECT 
	FirstName AS first_name,
	LastName AS last_name
FROM Sales.Customers
UNION
SELECT 
	FirstName,
	LastName
FROM Sales.Employees;


-- combine the data from employees and customers into one table 
SELECT 
	CustomerID AS id,
	FirstName AS first_name,
	LastName AS last_name
FROM Sales.Customers
UNION
SELECT
	EmployeeID,
	FirstName,
	LastName
FROM Sales.Employees;


/*
	---------------
	-- UNION ALL -- 
	---------------
	- is used to combine results from multiple SELECT queries and keep all rows, including duplicates 
	- it is faster than UNION because it does not remove duplicates 

	------------
	-- syntax -- 
	------------
		SELECT column1, column2
		FROM table1

		UNION ALL

		SELECT column1, column2
		FROM table2;

*/
-- combine the data from employees and customers into one table 
SELECT 
	CustomerID AS id,
	FirstName AS first_name,
	LastName AS last_name
FROM Sales.Customers
UNION ALL
SELECT
	EmployeeID,
	FirstName,
	LastName
FROM Sales.Employees;