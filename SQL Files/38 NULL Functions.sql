/*
	====================
	== NULL Functions == 
	====================
	- NULL means no value / unknown / missing value.
	- NULL is not equal to anything
	- It does NOT mean: 0, empty string '', space ' ', It literally means “there is nothing here”.

	--------------
	-- ISNULL() --
	--------------
	- ISNULL() is a SQL Server function used to replace NULL with a value you choose.


	----------------
	-- COALESCE() --
	----------------
	- COALESCE() returns the first NON-NULL value from a list of expressions.

	syntax 
	 COALESCE(value1, value2, value3, ...)
*/

USE SalesDB;

SELECT ISNULL(NULL, 0) AS [Result];      -- Result: 0
SELECT ISNULL(NULL, 'N/A') AS [Result];  -- Result: N/A
SELECT ISNULL(NULL, NULL) AS [Result];  -- Result: NULL


SELECT COALESCE(NULL, NULL, 10) AS [Result];   -- Result: 10
SELECT COALESCE(NULL, 'A', 'B') AS [Result];   -- Result: A


SELECT COALESCE(NULL, NULL, 0) AS [Result];       -- INT
SELECT COALESCE(NULL, NULL, 'text') AS [Result];  -- VARCHAR


-- Show customer name and score. If score is NULL, show 0.
SELECT
    first_name,
    ISNULL(score, 0) AS score
FROM customers;


-- Missing country, If country is NULL, show 'Unknown'.
SELECT
    first_name,
    ISNULL(country, 'Unknown') AS country
FROM customers;


-- Fix messy names. Trim the name and replace NULL with 'No Name'.
SELECT
    ISNULL(LTRIM(RTRIM(first_name)), 'No Name') AS first_name,
    country,
    score
FROM customers;


-- Math with ISNULL(). Add 50 bonus points. If score is NULL treat it as 0.
SELECT
    first_name,
    score,
    ISNULL(score, 0) + 50 AS score_with_bonus
FROM customers;


-- Filtering with ISNULL. Show customers with score < 500. (Treat NULL score as 0).
SELECT
    first_name,
    country,
    score
FROM customers
WHERE ISNULL(score, 0) < 500;



-- Grouping + ISNULL (important!). Show average score per country
SELECT
    country,
    AVG(ISNULL(score, 0)) AS avg_score
FROM customers
GROUP BY country;


-- Replace NULL score. If score is NULL, show 0.
SELECT
    first_name,
    COALESCE(score, 0) AS score
FROM customers;



-- Multiple fallbacks (very realistic). If first_name is NULL -> use 'Unknown'.
SELECT
    COALESCE(first_name, 'Unknown') AS first_name,
    country,
    score
FROM customers;



-- Clean names + COALESCE. Some names have spaces (' John', ' hassan ').
SELECT
    COALESCE(NULLIF(LTRIM(RTRIM(first_name)), ''), 'No Name') AS clean_name,
    country,
    score
FROM customers;


-- COALESCE in math
SELECT
    first_name,
    score,
    COALESCE(score, 0) + 100 AS bonus_score
FROM customers;


-- Filtering with COALESCE. Show customers with score < 500 (NULL = 0).
SELECT
    first_name,
    country,
    score
FROM customers
WHERE COALESCE(score, 0) < 500;


-- Grouping + COALESCE. Average score per country (NULL = 0).
SELECT
    country,
    AVG(COALESCE(score, 0)) AS avg_score
FROM customers
GROUP BY country;

/*
    Why COALESCE is better here
        - Works in all databases
        - Handles multiple options
        - Safer data types than ISNULL
*/


-- find the average scores of the customers 
USE MyDatabase;

SELECT 
    id AS [customer id],
    score,
    COALESCE(score, 0) AS [score 2],
    AVG(score) OVER() AS [Average Score],
    AVG(COALESCE(score, 0)) OVER() AS [Average Score 2]
FROM customers;
    

-- handle the NULL befoe doing any mathematical operations 
SELECT 
    5 + NULL, -- Result = NULL
    5 + 5, -- Result = 10
    'A' + 'B', -- Result = AB
    'A' + NULL -- Result = NULL

/*
    display the full name of customers in a single filed by merging their first and last name
    and add 10 bonus points to each customer's score 
*/
USE SalesDB;

SELECT 
    CustomerID,
    FirstName,
    LastName,
    FirstName + ' ' + COALESCE(LastName, '') AS [Full Name],
    score as [score],
    COALESCE(score, 0) + 10 AS [score with bonus]
FROM sales.Customers;


/*
    --------------------------------------------
    -- handle the NULL before doing any JOINS --
    --------------------------------------------
    if there are any NULL values inside any table, will loss the record at the output
    therefore must handle the NULL before doing any JOINS 
*/