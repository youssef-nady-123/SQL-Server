/*
    ===============
    == LEFT JOIN == 
    ===============
    - LEFT JOIN (also called LEFT OUTER JOIN) combines rows from two tables.
        It keeps every row from the left table.
    - the left table is the primary source of your data

    ------------
    -- syntax -- 
    ------------
        SELECT column1, column2, ...
        FROM table1
        LEFT JOIN table2
        ON table1.common_column = table2.common_column;

*/

    ----------------------------------------------------------
    -- note that the orders of the table is very important -- 
    ----------------------------------------------------------
USE salesdb;

SELECT 
    c.firstname,
    c.country,
    o.orderid,
    o.orderdate,
    o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON o.orderid = c.customerid;


SELECT 
    c.firstname,
    c.country,
    o.orderid,
    o.orderdate,
    o.sales
FROM orders AS o
LEFT JOIN customers AS c
ON o.orderid = c.customerid;