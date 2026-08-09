/*
    =====================
    == GROUP BY Clause == 
    =====================
    - The GROUP BY clause is used to group rows that have the same values in one or more columns.
    - used to combine rows with the same values, aggregate a column by another column
    - COUNT(), MIN(), MMAX(), AVG(), SUM()

    - note that: the none aggregated columns that written in the select must be written in the GROUP BY clause

    ------------
    -- syntax -- 
    ------------
        SELECT column_name, aggregate_function(column_name)
        FROM table_name
        GROUP BY column_name;
*/

USE MyDatabase;

-- find total score for each country 
SELECT 
    country,
    SUM(score) AS total_score
FROM customers
GROUP BY country;


-- find number of customers for each country 
SELECT 
    country,
    COUNT(first_name) AS number_of_customers
FROM customers
GROUP BY country;


-- find the total score and total number of customers for each country 
SELECT 
    country,
    SUM(score) AS total_score,
    COUNT(first_name) AS total_customers
FROM customers
GROUP BY country;