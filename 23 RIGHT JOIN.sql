/*
    ================
    == RIGHT JOIN == 
    ================
    - RIGHT JOIN (or RIGHT OUTER JOIN) combines two tables such that:
        Every row from the right table appears.
        Only matching rows from the left table appear; unmatched ones show NULL.
        
    ------------
    -- syntax -- 
    ------------
        SELECT column1, column2, ...
        FROM table1
        RIGHT JOIN table2
        ON table1.common_column = table2.common_column;

*/

USE salesdb;

SELECT * FROM customers;
SELECT * FROM orders;
SELECT
    c.firstname,
    c.score,
    o.orderid,
    o.orderdate
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customerid = o.orderid;