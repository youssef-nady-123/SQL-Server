-- SELECT The Database
USE MyDatabase;

/*
    ======================
    == SELECT Statement == 
    ======================
    - SELECT is an SQL command used to fetch data from one or more tables in a database.
    - It returns the result in the form of a result set (table).

    ----------
    - syntax -
    ----------
    SELECT column1, column2, ...
    FROM table_name;
*/

-- select all records on the table 
SELECT * FROM customers;

-- select specific columns from the table 
SELECT id, first_name 
FROM customers;

-- show available databases;
SHOW DATABASES;

-- determine the database
USE salesdb;

SELECT *
FROM orders;

-- select orderid, customerid
SELECT 
    orderid,
    customerid
FROM orders;
