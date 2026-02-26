/*
    =====================
    == ORDER BY Clause == 
    =====================
    - It sorts the rows returned by a SQL query in ascending (ASC) or descending (DESC) order based on one or more columns.

    ------------
    -- syntax -- 
    ------------
        SELECT column1, column2
        FROM table_name
        ORDER BY column1 [ASC | DESC];
*/

USE MyDatabase;

-- sort the customers based on its 'id' from the bigest number to smallest number
SELECT *
FROM customers 
ORDER BY id DESC;

-- retrieve all customers and sort the results by the heighest score first 
SELECT *
FROM customers
ORDER BY score DESC;

-- retrieve all customers and sort the customers name from a-z
SELECT *
FROM customers
ORDER BY first_name ASC;

