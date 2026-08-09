/* 
	================
	== CROSS JOIN ==
	================
	- combines every row from the left with every row from the right
	- all possible combination 

	------------
	-- syntax --
	------------ 
	SELECT * 
	FROM A CROSS JOIN B;
*/

USE MyDatabase;

-- generate all possible combinations of customers and orders 
SELECT * FROM customers CROSS JOIN orders;