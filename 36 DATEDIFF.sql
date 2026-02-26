/*
	=================
	== 36 DATEDIFF == 
	=================
	- DATEDIFF() is a SQL function used to calculate the difference between two dates.
	It returns the difference as an integer, based on the date part you specify (days, months, years, etc.).

	allow us to find the differences between two dates 

	------------
	-- syntax -- 
	------------
	- DATEDIFF(part, start_date, end_date)
*/

USE SalesDB;

SELECT 
	DATEDIFF(month, '2025-01-15', '2026-01-15') AS MonthsDifference;

-- how many days 
SELECT 
	DATEDIFF(DAY, '2025-01-15', '2026-01-15') AS MonthsDifference;


-- calculate the age of employees
SELECT 
	BirthDate,
	DATEDIFF(YEAR, BirthDate, GETDATE()) AS [Employee Age]
FROM Sales.Employees

/*
	LAG() is a window (analytic) function in SQL that lets you look at a previous row’s
	value in the same result set without using a self-join.

	LAG(column_name, offset, default_value) OVER (PARTITION BY partition_column ORDER BY order_column)
*/


/*
	find the average shipping duration in days for each month 
	shipping duration = OrderDate - ShipDate
*/
SELECT 
	MONTH(OrderDate) AS [Order Date],
	AVG(DATEDIFF(DAY, OrderDate, ShipDate)) AS [Day to Ship]
FROM Sales.Orders
GROUP BY MONTH(OrderDate);		


/*
	find the number of days between each order and previous order 
	this question called -> 'time gap analysis'
*/	
SELECT 
	OrderID, 
	OrderDate AS [Current Order Date],
	LAG(OrderDate) OVER (ORDER BY OrderDate) AS [Previous Order Date],
	DATEDIFF(DAY, LAG(OrderDate) OVER (ORDER BY OrderDate), OrderDate) AS [Number of Days]
FROM Sales.Orders;