/*
    ==========================
    == Comparison Operators == 
    ==========================
*/

USE MyDatabase;

SELECT * FROM customers;

-- find customer with id = 1
SELECT *
FROM customers
WHERE id = 1;


-- find customers with score > 700
SELECT * 
FROM customers
WHERE score > 700;


-- find all customers with score < 700
SELECT *
FROM customers 
WHERE score < 700;


-- find all customers that are not from USA
SELECT *
FROM customers
WHERE country <> 'USA';

-- find all customers that are not from USA
SELECT *
FROM customers
WHERE country != 'USA';
