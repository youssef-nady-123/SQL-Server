/*
	======================
	== String Functions ==
	======================
	- CONCAT(string1, string2, ...): combines multiple strings into one
	- UPPER(text): convert all letters into upper case
	- LOWER(text): convert all letters into lower case
	- TRIM(text): remove the leading and trailling spaces from the left and right side
	- REPLACE(text, old, new): replaces specific character with a new character
	- LEN(text): get the length of the characters 
	- LEFT(string, length): extracts specific number of characters from the start 
	- RIGHT(string, length):extracts specific number of characters from the end  
	- SUBSTRING(value, start, final_length): extracts a part of string at a specified position 
*/

USE MyDatabase;

-- concatenate first name and country into one column
SELECT 
	first_name,
	country,
	CONCAT(first_name,'-', country) AS name_with_country
FROM customers;

-- you can write separator between columns 
SELECT 
	first_name,
	country,
	CONCAT(first_name, ' - ', country) AS name_with_country
FROM customers;


-- convert the first name to upper case 
SELECT
	first_name,
	UPPER(first_name) AS upper_case
FROM customers;

-- convert the first name to lower case
SELECT
	first_name,
	LOWER(first_name)
FROM customers;

-- remove the spaces from the text
SELECT
	TRIM(' john ') AS trimed_data
FROM customers;

-- remove the special characters from the text
SELECT 
	TRIM('-' FROM '--osama--') AS trimed_data
FROM customers;

-- replace word to another word
SELECT REPLACE('Hello World', 'World', 'SQL') AS Result;

-- replace the old phone syntax number to another syntax
SELECT 
	'123-456-789' AS phone_number,
	REPLACE('123-456-789', '-', ' ') AS formatted_phone_number
FROM customers;

-- replace file extence from txt to csv
SELECT
	'file.txt' AS old_file,
	REPLACE('file.txt', '.txt', '.csv') AS new_file;

-- get the length of the text
SELECT
	first_name,
	LEN(first_name) AS text_length,
	LEN(TRIM(first_name)) AS text_after_trim
FROM customers;


-- extract the first 2 characters from the first name at the start
SELECT 
	first_name,
	LEFT(first_name, 2) AS first_two_characters
FROM customers;


-- get the last character from the first name 
SELECT 
	first_name,
	RIGHT(first_name, 1) AS last_character
FROM customers;


-- get the first two characters after trim 
SELECT
	first_name,
	LEFT(TRIM(first_name), 2) AS first_two_characters
FROM customers;

-- get the first two characters before trim
SELECT
	first_name,
	LEFT(first_name, 2) AS first_two_characters
FROM customers;

-- retrieve a list of customers'first names after removing the first character 
SELECT
	first_name,
	SUBSTRING(first_name, 2, 4) AS new_string
FROM customers;

-- retrieve a list of customers's first name after removing the first character
SELECT
	first_name,
	SUBSTRING(first_name, 2, LEN(first_name))
FROM customers;

-- make the first letter from the first_name capital, and the other letters small 
SELECT 
	UPPER(LEFT(first_name, 1)) + LOWER(SUBSTRING(first_name, 2, LEN(first_name))) AS formatted_name
FROM customers;

SELECT
	first_name,
	LEN(first_name) AS 'length',
	LEN(TRIM(first_name)) AS 'length after trim',
	LEN(first_name) - LEN(TRIM(first_name)) AS 'flag'
FROM customers 
WHERE LEN(first_name) != LEN(TRIM(first_name));