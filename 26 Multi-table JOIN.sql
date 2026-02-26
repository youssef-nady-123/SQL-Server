/*
	=========================
	== 26 Multi-table JOIN == 
	=========================
	- join more than two tables together
	- LEFT JOIN keeps everything from the first (left) table.
	- You can chain multiple LEFT JOINs.
	- 
	- example:
		SELECT
			c.name,
			o.order_id,
			o.amount,
			p.method AS payment_method
		FROM customers c
		LEFT JOIN orders o 
			ON c.customer_id = o.customer_id
		LEFT JOIN payments p
			ON o.order_id = p.order_id;
*/


/*
	using SalesDB, retrieve a list of all orders, along with the related customer,
	product, and employee details. for each order display:
		order id, customer's name,	product name, sales, price, sale's person name
*/

-- to solve complex query like this, you should explore the 'ERD'
USE SalesDB;
SELECT * FROM Sales.Orders;
SELECT * FROM Sales.OrdersArchive;
SELECT * FROM Sales.Employees;
SELECT * FROM Sales.Products;

SELECT 
	o.OrderID,
	o.Sales,
	c.FirstName AS CustomerFirstName,
	c.LastName AS CustomerLastName,
	p.Product,
	p.Price,
	e.FirstName AS EmployeeFirstName,
	e.LastName AS EmployeeLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON c.CustomerID = o.CustomerID
LEFT JOIN Sales.Products AS p 
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON e.EmployeeID = o.SalesPersonID;
