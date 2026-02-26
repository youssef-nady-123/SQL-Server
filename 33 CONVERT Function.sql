USE SalesDB;

/*
	CONVERT(): converts a data or time value to a different data type & formats the value 
	------------
	-- syntax -- 
	------------
	CONVERT(data_type, value, style[optional])
	style in CONVERT() controls how date/time or some numbers are formatted when converted to text 
	style is a number code that tells SQL server which data formats to use when converting date/time to string

	-- data_type: usually VARCHAR or CHAR
	-- value: date or time
	-- style: format code
*/
SELECT
	CONVERT(VARCHAR, '123') AS [String to Int CONVERT],
	CONVERT(DATE, '2025-08-20') AS [DateTime to Date CONVERT],
	CreationTime,
	CONVERT(DATE, CreationTime) AS [DateTime To Date CONVERT],
	CONVERT(VARCHAR, CreationTime, 32) AS [USA Std. Style: 32],
	CONVERT(VARCHAR, CreationTime, 34) AS [EURO Std. Style: 34]
FROM Sales.Orders;