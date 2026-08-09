/*
    ======================
    == BETWEEN Operator == 
    ======================
    - check if a value is within a range 
*/
USE MyDatabase;

-- get the first 4 customers 
SELECT *
FROM customers
WHERE id BETWEEN 1 AND 4;

-- find all customers that have score between 200 to 750
SELECT *
FROM customers
WHERE score BETWEEN 200 AND 750;