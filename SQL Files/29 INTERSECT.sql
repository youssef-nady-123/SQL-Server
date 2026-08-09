/*
	===============
	== INTERSECT == 
	===============
	- is a SET operator that returns only rows that exists in BOTH queries
	------------
	-- syntax -- 
	------------
		SELECT col1, col2 FROM table1
		INTERSECT
		SELECT col1, col2 FROM table2;
*/

USE SalesDB;

-- find the employees that are also customers
SELECT 
	FirstName,
	LastName
FROM Sales.Employees
INTERSECT 
SELECT
	FirstName,
	LastName
FROM Sales.Customers;


/*
	| Operator    | What it does                                |
	| ----------- | ------------------------------------------- |
	| `UNION`     | Combines results and removes duplicates     |
	| `UNION ALL` | Combines results and keeps duplicates       |
	| `INTERSECT` | Returns only common rows in both queries    |
	| `EXCEPT`    | Returns rows from first query not in second |
*/
