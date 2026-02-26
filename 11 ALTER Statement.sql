/*
    =====================
    == ALTER Statement == 
    =====================
    - ALTER TABLE is used to modify an existing table in a database.
    - used to add, delete, modify the columns and data types 

    ------------
    -- syntax -- 
    ------------
        ALTER TABLE table_name
        ALTER COLUMN column_name new_data_type [NULL | NOT NULL];
*/

USE NTI;

CREATE TABLE courses (id INT, name VARCHAR(100), price DECIMAL(10, 2));

SELECT * FROM courses;

-- add new column
ALTER TABLE courses
ADD description VARCHAR(255);

-- modify the column data type 
ALTER TABLE courses
ALTER COLUMN price DECIMAL(12, 2);

-- drop a column 
ALTER TABLE courses
DROP COLUMN description;

-- add primary key constraints
ALTER TABLE courses
ADD CONSTRAINT PK_courses_id PRIMARY KEY (id);


-- add unique constraints
ALTER TABLE courses
ADD CONSTRAINT UQ_courses_name UNIQUE (name);


INSERT INTO courses (id, name, price, description)
VALUES
(1, 'Python', 10.50, 'Learn Python programming'),
(2, 'C++', 25.00, 'Learn C++ programming'),
(3, 'C', 15.75, 'Learn C programming'),
(4, 'PHP', 30.20, 'Learn PHP programming'),
(5, 'MySQL', 8.99, 'Learn MySQL database');
