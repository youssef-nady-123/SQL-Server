/*
	====================================
	== Execution Order VS Coding Order =
	====================================

	------------------
	-- Coding Order -- 
	------------------
	- syntax
		SELECT DISTINCT TOP <num>
		column1, column2, ...
		FROM table_name
		WHERE condition 
		GROUP BY <column name>
		ORDER BY column_name ASC|DESC

	---------------------
	-- Execution Order --
	---------------------
	1- FROM Clause
	2- WHERE Clause
	3- GROUP BY Statement 
	4- HAVING Clause
	5- SELECT DISTINCT Statement 
	6- ORDER BY Keyword 
	7- TOP Statement 
*/