USE MyDatabase;
/*
    ===============
    == FULL JOIN == 
    ===============
    - A FULL JOIN (or FULL OUTER JOIN) is a type of SQL join that returns all rows from both tables, whether they have matching records or not.
    -- If a row in Table A has a matching row in Table B, the result shows a single combined row.
    -- If a row in Table A does not have a match in Table B, the Table B columns are filled with NULL.
    -- If a row in Table B does not have a match in Table A, the Table A columns are filled with NULL.
    
    What happens in a FULL JOIN:
    - LEFT JOIN part: All customers appear; if they have no orders, the order columns are NULL.
        Carol has no order → orderid, orderdate, sales = NULL
    - RIGHT JOIN part: All orders appear; if the customer doesn’t exist, the customer columns are NULL.
        Order 103 has customerid = 4 → firstname, country = NULL
*/  


USE MyDatabase;

/*
    What This Does
        - Returns all customers and all orders.
        - If a customer has no orders, OrderID, OrderDate, and sales will be NULL.
        -   If an order has no matching customer (like customer_id = 6 in your orders table), 
            CustomerID, CustomerName, etc. will be NULL.
*/
SELECT
    c.id AS CustomerID,
    c.first_name AS CustomerName,
    c.country,
    c.score,
    o.order_id AS OrderID,
    o.order_date AS OrderDate,
    o.sales
FROM customers AS c
FULL OUTER JOIN orders AS o
ON c.id = o.customer_id;