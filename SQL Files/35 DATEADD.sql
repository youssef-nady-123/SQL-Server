/*
	================
	== 35 DATEADD == 
	================
	- DATEADD(): is a SQL function used to add or subtract a time interval (days, months, years, etc.) to/from a date.

	------------
	-- syntax -- 
	------------
	DATEADD(datepart, interval, date)

	Parameters:
		datepart: the unit of time (year, month, day, etc.)
		number: how many units tWo add (use a negative number to subtract)
		date: the original date


	| datepart    | Meaning |
	| ----------- | ------- |
	| year / yy   | Year    |
	| month / mm  | Month   |
	| day / dd    | Day     |
	| hour / hh   | Hour    |
	| minute / mi | Minute  |
	| second / ss | Second  |

*/

USE SalesDB;

-- add 10 days to 2026-01-29
SELECT 
'2026-01-29',
DATEADD(day, 10, '2026-01-29');


-- subtract two months from 2026-01-29
SELECT 
'2026-01-29',
DATEADD(month, -2, '2026-01-29');


-- add one year to 2026-01-29
SELECT 
	'2026-01-29',
	DATEADD(year, 1, '2026-01-29');


-- Date after 30 days from today
SELECT 
	GETDATE(),
	DATEADD(day, 30, GETDATE());


-- Calculates the delivery date 7 days after the order date.
USE MyDatabase;

SELECT
    order_date,
    DATEADD(day, 7, order_date) AS DeliveryDate
FROM Orders;


-- add one year to the CreationTime
USE SalesDB;
SELECT
	CreationTime,
	DATEADD(YEAR, 1, CreationTime) AS [Add One Year]
FROM Sales.Orders;
