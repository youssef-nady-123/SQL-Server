/*
    ======================
    == CREATE Statement == 
    ======================
    - used to create databases, tables 

    ----------
    - syntax - 
    ----------
        CREATE TABLE table_name 
        (column1 DATA_TYPE CONSTRAINTS, column2 DATA_TYPE CONSTRAINTS, ..);
*/

USE MyDatabase;

-- create a new table called persons with columns: id, person_name, birth_date, and phone
CREATE TABLE persons (
    id INT NOT NULL,
    person_name VARCHAR(100),
    birth_date DATE,
    phone VARCHAR(50),
    CONSTRAINT pk_persons PRIMARY KEY (id)
);

