/*
	============
	== ISDATE == 
	============
	- ISDATE() is a SQL Server function that checks whether a given expression can be converted to a valid date.
	It’s useful for validating data before doing date operations.	
	
	------------
	-- syntax -- 
	------------
	ISDATE(expression)

*/	

SELECT 
    ISDATE('2026-01-31'),
    ISDATE('31-01-2026'),
    ISDATE('hello');
