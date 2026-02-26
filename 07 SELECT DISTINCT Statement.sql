/*
    ===============================
    == SELECT DISTINCT Statement == 
    ===============================
    - used to removes the duplicates

    ------------
    -- syntax --
    ------------
        SELECT DICTINCT 
            column1, column2, ..
        FROM table_name;
*/

USE MyDatabase;

-- removes duplicates names from the customers table 
SELECT DISTINCT first_name 
FROM customers;

-- return unique list of all countries
SELECT DISTINCT country 
FROM customers;