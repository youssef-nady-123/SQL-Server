/*
    ================
    == INNER JOIN == 
    ================
    - we need a column that exists on the left table and right table 
    - return only matches rows from both tables

    ------------
    -- syntax -- 
    ------------
        SELECT column1, column2, ...
        FROM table1
        INNER JOIN table2
        ON table1.common_column = table2.common_column;

*/

USE salesdb;
SHOW TABLES;

SELECT * FROM customers;
SELECT * FROM orders;

-- get all customers along with their orders, but only for customers who have placed orde
SELECT 
    c.firstname,
    c.country,
    o.orderid,
    o.orderdate,
    o.shipaddress
FROM customers AS c
INNER JOIN orders as o
ON o.orderid = c.customerid;


-- get all customers name, order id, order date and the sales of the orders, but only the customers who have placed on 
SELECT 
    c.firstname,
    o.orderid,
    o.orderdate,
    o.sales
FROM customers AS c
INNER JOIN orders AS o
ON o.orderid = c.customerid;