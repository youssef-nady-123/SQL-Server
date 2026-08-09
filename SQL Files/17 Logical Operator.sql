/*
    ======================
    == Logical Opeearor ==
    ======================
    - AND: all coniditons must be true 
    - OR: one of the conditions must be true
    - NOT: get the opposite of the condition 
*/ 

Use MyDatabase;

-- find all customers that from USA and have an ID smaller than 3
SELECT * 
FROM customers
WHERE country = 'USA' AND id < 3;

-- find all customers that from USA or have an ID smaller than 3
SELECT *
FROM customers
WHERE country = 'USA' OR id < 3;

-- find all customers that are not from USA
SELECT *
FROM customers
WHERE NOT country = 'USA';