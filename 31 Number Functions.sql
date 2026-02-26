/*
	=========================
	== 31 Number Functions == 
	=========================
	- ROUND(): used to round a number to a specific number of decimal places
	- ABS(): returns the absolute value of a number, removing any negative sign
	- FLOOR() function rounds a number DOWN to the nearest integer.
	- SQRT() function is used to calculate the square root of a number.
	- CEILING() function rounds a number UP to the nearest integer. 
	- POWER() function is used to raise a number to a specific power (exponent).
	- RAND(): Random number (0–1)
	- PI(): PI() function returns the mathematical constant (pi).
*/

USE MyDatabase;

SELECT 
	12.4567 AS 'number',
	ROUND(12.4567, 2) AS result;

-- 
SELECT 
	12.6 AS 'number',
	ROUND(12.6, 0) AS result;


-- get the positive number 
SELECT
	-120 AS 'number',
	ABS(-120) AS 'positive number';


-- get the positive number 
SELECT
	-120.52 AS 'number',
	ABS(-120.52) AS 'positive number';


-- round the number up, and down
SELECT 
    CEILING(9.1) AS up,
    FLOOR(9.9) AS down;


SELECT POWER(10, 2);

-- get the the square root of 10
SELECT SQRT(10) as 'square root';


-- get the nearest number 
SELECT CEILING(12.1);


-- (2 × 2 × 2)
SELECT POWER(2, 3);


-- (5 x 5)
SELECT POWER(5, 2);