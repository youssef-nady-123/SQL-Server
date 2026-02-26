/*
	==========================
	== SubQueries Explained == 
	==========================
	- SubQuery is a query inside another query 
	- SQL executes the subquery first, then uses its result to execute the main query.
	
	--------------------------
	-- why we need subQuery -- 
	--------------------------
	- We need subqueries because they help us get data step by step inside one query.
	

	----------------
	-- Categories -- 
	----------------
	- Non-correlated SubQuery
		the subQuery independent for subQuery 
	- Correlated SubQuery 
		the subQuery depend on the main query 
	
	------------------
	-- Result Types -- 
	------------------
	- Scalar: single value 
	- Row: multiple rows & single column
	- Table: return multiple rows and multiple columns 

	----------------------
	-- Location/Clauses -- 
	----------------------
	- SELECT
	- FROM
	- JOIN
	- WHERE 
*/

USE SalesDB;

SELECT * FROM sales.Orders;


-- scalar query 
SELECT 
	AVG(Sales) AS [average score]
FROM sales.Orders;


-- row query  
SELECT
	CustomerID
FROM sales.Orders;


-- table query 
SELECT *
FROM Sales.Orders;


/*
	----------------------------------------------------------------
	-- how to use the subQuery in differnt locations in our query -- 
	----------------------------------------------------------------
	-- subquery in the FROM clause -- 
	- used as temporary table for the main query 

	------------
	-- syntax -- 
	------------
	SELECT column_name(s)
	FROM (
			SELECT column_name(s)
			FROM table_name
			WHERE condition
		 ) AS alias_name;

*/

-- find the products that have a price higher than the average price of all products
-- give the subQuery an alias
SELECT *
FROM 
	(SELECT 
	ProductID,
	Price,
	AVG(Price) OVER() AvgPrice
	FROM Sales.Products) t
WHERE price > AvgPrice



-- rank the customers based on their total amount of sales
-- main query 
SELECT *
FROM (
	-- subQuery 
	SELECT
		CustomerID,
		SUM(Sales) AS [Total Sales]
	FROM Sales.Orders
	GROUP BY CustomerID) AS t



	