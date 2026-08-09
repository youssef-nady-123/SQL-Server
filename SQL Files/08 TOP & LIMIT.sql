/*
    =================
    == TOP & LIMIT ==
    =================   
    - used to return the first n rows on the table 

    TOP: used in the SQL Server 
    LIMIT: used in the MySQL

    ------------
    -- syntax -- 
    ------------
        SELECT column1, column2, ...
        FROM table_name 
        LIMIT n;
*/

USE MyDatabase;

-- retrieve only 3 customers 
SELECT *
FROM customers
LIMIT 2;

-- retrieve the top 3 customers with the highest score
SELECT *
FROM customers
ORDER BY score DESC
LIMIT 3;


-- get the two most recent orders 

-- determine the database
USE salesdb;

-- write the query 
SELECT *
FROM orders
ORDER BY orderdate DESC
LIMIT 2;