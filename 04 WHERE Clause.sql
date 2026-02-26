/*
    ==================
    == WHERE Clause ==
    ==================
    - The WHERE clause in SQL is used to filter rows in a table based on a specific condition.

    ------------
    -- syntax -- 
    ------------
        SELECT column1, column2
        FROM table_name
        WHERE condition;
*/

-- determine the database
USE MyDatabase;

-- select first 3 rows from the table 
SELECT *
FROM customers
WHERE id <= 3;

-- select all customers from Germany
SELECT *
FROM customers
WHERE country = 'Germany';

-- select all customers that their score not equal 0
SELECT *
FROM customers
WHERE score != 0;