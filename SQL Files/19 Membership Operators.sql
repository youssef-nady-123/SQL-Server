/*
    ==========================
    == Membership Operators == 
    ==========================
*/

USE MyDatabase;

-- find all customers that from USA and UK
SELECT *
FROM customers
WHERE country IN ("USA", 'UK');

-- find all customers that have specific score 500, and 750
SELECT *
FROM customers
WHERE score IN (500, 750);

-- find all customers that are not from USA and UK
SELECT *
FROM customers
WHERE country NOT IN ('USA', 'UK');