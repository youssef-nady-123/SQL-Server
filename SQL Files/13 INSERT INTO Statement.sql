/*
    ===========================
    == INSERT INTO Statement == 
    ===========================
    - used to append new data to the table 

    ------------
    -- syntax -- 
    ------------
        INSERT INTO table_name (c1, c2, c3, ...) VALUES (v1, v2, v3, ...);
*/

SELECT * FROM users;

-- insert one record into the table 
INSERT INTO users (id, name, address, email)
    VALUES (1, 'osama', 'cairo', 'osama@gmail.com');

-- insert multiple records into the table 
INSERT INTO users (id, name, address, email)
    VALUES
    (2, 'ahmed', 'cairo', 'ahmed@gmail.com'),
    (3, 'khaled', 'giza', 'khaled@gmail.com'),
    (4, 'ali', 'ayat', 'ali@gmail.com');

/*
    =========================
    == INSERT using SELECT ==
    =========================
    - must the output of the SELECT statement equal to the INSERT statement
    - means number of columns must be equal in both tables
*/