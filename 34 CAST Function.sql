/*
	========================
	== 34 CAST() Function == 
	========================
	- CAST(): converts a value to a specified data type 

	------------
	-- syntax -- 
	------------
	CAST(value AS data_type)
*/

USE SalesDB;

SELECT
	CAST('123' AS INT) AS [String To Integer],
	CAST(123 AS VARCHAR) AS [Integer To VARCHAR],
	CAST('2025-08-20' AS DATE) AS [String To Date],
	CAST('2025-08-20' AS DATETIME) AS [String To DateTime],
	CAST('2025-08-20' AS DATETIME2) AS [String To DateTime2],
	CAST(CreationTime AS DATE) AS [Datetime to DATE],
	CAST(CreationTime AS VARCHAR) AS [Datetime to Varchar]
FROM Sales.Orders;


/*
	============
	== FORMAT == 
	============
*/

USE SalesDB;

-- format the date 
SELECT 
	FORMAT(GETDATE(), 'dd/MM/yyyy', 'en-GB') AS [Date];


-- format numbers -> add comma
SELECT 
	FORMAT(1234567, 'N') AS [Number];


-- decimal places
SELECT 
	FORMAT(1234.567, 'N2') AS [Number];


-- Simple date format
SELECT 
	FORMAT(GETDATE(), 'yyyy-MM-dd') AS [Date];


-- custom format 
SELECT 
	FORMAT(GETDATE(), 'dd/MM/yyyy') AS [Date];


-- get the month name 
SELECT 
	FORMAT(GETDATE(), 'MMMM') AS [Month];
