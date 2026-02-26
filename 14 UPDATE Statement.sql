/*
    ======================
    == UPDATE Statement == 
    ======================
    - used to update exist rows from the table 

    ------------
    -- syntax -- 
    ------------
        UPDATE table_name
        SET column_name new_value;
        WHERE condition;

    -- note that: do not forget to write the WHERE condition
    -- if not determined the WHERE condition will change all rows
*/

USE MyDatabase;

SELECT * FROM customers;

INSERT INTO customers VALUES (6, 'youssef', 'cairo', 450);


-- change the country of youssef to Egypt
UPDATE customers
SET country = 'Egypt'
WHERE first_name = 'youssef' AND country = 'cairo';


-- change the name of youssef to Ali
UPDATE customers
SET first_name = 'Ali'
WHERE first_name = 'youssef';


-- update all customers with a NULL score by setting their score = 0
UPDATE customers
SET score = 0
WHERE score IS NULL;