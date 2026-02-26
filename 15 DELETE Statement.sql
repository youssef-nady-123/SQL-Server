/*
    ======================
    == DELETE Statement == 
    ======================
    - used to delete specific rows from the table 

    ------------
    -- syntax -- 
    ------------
        DELETE FROM customers 
        WHERE condition;

    -- note that: do not forget the WHERE condition 
    -- if not determine the WHERE condition will delete all rows like TRUNCATE Statement
*/

USE MyDatabase;

SELECT * FROM customers;

-- remove all customers from Egypt
DELETE FROM customers
WHERE country = 'Egypt';

/*
    --------------
    -- TRUNCATE -- 
    --------------
    -- exactly like 'DELETE FROM table_name' without any conditions
    -- used to delete all rows from the table 

    ------------
    -- syntax -- 
    ------------
        TRUNCATE TABLE table_name;
*/

TRUNCATE TABLE customers;