/*
	===================
	== Like Operator == 
	===================
	- LIKE: used to search about sub-string, number, ... on the field
	- There are two wildcards often used in conjunction with the LIKE operator:
		1- The percent sign % represents zero, one, or multiple characters
		2- The underscore sign _ represents one, single character
*/

USE MyDatabase;


-- search about customers from usa or USA
SELECT *
FROM customers
WHERE country LIKE 'USA';


-- search about counties that start with G
SELECT *
FROM customers 
WHERE country LIKE 'G%';


-- Find customers whose names start with "A":
SELECT first_name, country, score
FROM customers
WHERE first_name LIKE 'A%';


-- Find customers whose names contain the letter "o"
SELECT first_name, country, score
FROM customers
WHERE first_name LIKE '%o%';



-- Find customers whose names end with "a"
SELECT first_name, country, score
FROM customers
WHERE first_name LIKE '%a';


-- Find customers whose names have exactly 4 characters
SELECT first_name, country, score
FROM customers
WHERE first_name LIKE '____';  -- Four underscores represent four characters


-- Find customers from countries whose name starts with "E"
SELECT first_name, country, score
FROM customers
WHERE country LIKE 'E%';


-- Find customers whose names have "a" as the second lette
SELECT first_name, country, score
FROM customers
WHERE first_name LIKE '_a%';


-- Find customers whose names have "a" as the second-to-last letter:
SELECT first_name, country, score
FROM customers
WHERE first_name LIKE '%a_';


-- Find customers whose names start with any letter between "A" and "D"
SELECT first_name, country, score
FROM customers
WHERE first_name LIKE '[A-D]%';


-- Find customers whose names contain either "a" or "e" and are from a country starting with "E":
SELECT first_name, country, score
FROM customers
WHERE (first_name LIKE '%a%' OR first_name LIKE '%e%')
AND country LIKE 'E%';


-- Find customers whose names start with "A" or "B" and their score is greater than 750
SELECT first_name, country, score
FROM customers
WHERE (first_name LIKE 'A%' OR first_name LIKE 'B%')
AND score > 750;


-- Find customers whose names start with "S" or "N" and their country ends with "a" or "e":
SELECT first_name, country, score
FROM customers
WHERE (first_name LIKE 'S%' OR first_name LIKE 'N%')
AND (country LIKE '%a' OR country LIKE '%e');


-- Find customers whose name contains "i" or "o" and their score is between 700 and 900:
SELECT first_name, country, score
FROM customers
WHERE (first_name LIKE '%i%' OR first_name LIKE '%o%')
AND score BETWEEN 700 AND 900;


-- Find customers from "Egypt" or "USA" whose names contain the letter "a" at any position:
SELECT first_name, country, score
FROM customers
WHERE (country LIKE 'Egypt' OR country LIKE 'USA')
AND first_name LIKE '%a%';


-- Find customers whose names start with "E", "F", or "G" and score is greater than 750
SELECT first_name, country, score
FROM customers
WHERE (first_name LIKE 'E%' OR first_name LIKE 'F%' OR first_name LIKE 'G%')
AND score > 750;


-- Find customers whose names start with a vowel ("A", "E", "I", "O", or "U") and are from the USA or Canada:
SELECT first_name, country, score
FROM customers
WHERE (first_name LIKE 'A%' OR first_name LIKE 'E%' OR first_name LIKE 'I%' 
    OR first_name LIKE 'O%' OR first_name LIKE 'U%')
AND (country LIKE 'USA' OR country LIKE 'Canada');


-- Find customers whose names contain "a" or "o", their country contains "a", and their score is between 700 and 900:
SELECT first_name, country, score
FROM customers
WHERE (first_name LIKE '%a%' OR first_name LIKE '%o%')
AND country LIKE '%a%'
AND score BETWEEN 700 AND 900;


-- Find customers whose names contain "o" in the second or second-to-last position:
SELECT first_name, country, score
FROM customers
WHERE first_name LIKE '_o%' OR first_name LIKE '%o_';