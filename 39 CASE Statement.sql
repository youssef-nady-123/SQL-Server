/*
	====================
	== CASE Statement == 
	====================
	- It lets you add conditions inside a query and return different values based on those conditions.
    - evaluates a list of conditions and returns a value when the first condition is met
    - the main purpose of CASE statement is "data transformation"
    - drive new information [create new columns based on existing data]
    - CATEGORIZING THE DATA -> group the data into different categorizes based on certain conditions 
	

	------------
	-- syntax -- 
	------------
	CASE
		WHEN condition1 THEN result1
		WHEN condition2 THEN result2
		WHEN condition3 THEN result3
		ELSE default_result
	

*/

USE MyDatabase;


-- Categorize Customers by Score
SELECT
    first_name,
    score,
    CASE
        WHEN score >= 80 THEN 'High Score'
        WHEN score >= 50 THEN 'Medium Score'
        ELSE 'Low Score'
    END AS score_category
FROM customers;


-- Label Local vs Foreign Customers
SELECT
    first_name,
    country,
    CASE
        WHEN country = 'Egypt' THEN 'Local'
        ELSE 'Foreign'
    END AS customer_type
FROM customers;


-- Replace NULL Scores
SELECT
    first_name,
    CASE
        WHEN score IS NULL THEN 0
        ELSE score
    END AS cleaned_score
FROM customers;


-- Create Customer Rank Levels
SELECT
    first_name,
    score,
    CASE
        WHEN score >= 90 THEN 'VIP'
        WHEN score >= 70 THEN 'Gold'
        WHEN score >= 50 THEN 'Silver'
        ELSE 'Bronze'
    END AS customer_rank
FROM customers;


-- Conditional Aggregation - Count customers by score level:
SELECT
    COUNT(CASE WHEN score >= 80 THEN 1 END) AS high_score_customers,
    COUNT(CASE WHEN score BETWEEN 50 AND 79 THEN 1 END) AS medium_score_customers,
    COUNT(CASE WHEN score < 50 THEN 1 END) AS low_score_customers
FROM customers;



-- Create Pass/Fail Flag
SELECT
    first_name,
    score,
    CASE
        WHEN score >= 50 THEN 'Passed'
        ELSE 'Failed'
    END AS result
FROM customers;


-- Handle Multiple Countries with Labels
SELECT
    first_name,
    country,
    CASE
        WHEN country IN ('Egypt', 'Saudi Arabia', 'UAE') THEN 'Middle East'
        WHEN country IN ('USA', 'Canada') THEN 'North America'
        ELSE 'Other Region'
    END AS region
FROM customers;

--------------------------------------------------------------------
--------------------------------------------------------------------

USE SalesDB;

/*
    generate a report showing the total sales for each category
        - High: if the sales higher than 50
        - Medium: if the sales between 20 and 50
        - Low: if the sales equal or lower than 20 
    and sort the result from lowest to highest 
*/
SELECT
    Category,
    SUM(sales) AS [total sales]
FROM (
    SELECT
        OrderID,
        Sales,
    CASE 
        WHEN Sales > 50 THEN 'High'
        WHEN Sales BETWEEN 20 AND 50 THEN 'Medium'
        WHEN Sales <= 20 THEN 'Low'
    END 'Category'
    FROM Sales.Orders
)t
GROUP BY Category
ORDER BY [total sales] ASC


--------------------------------------------------------------------
-----------------------------
-- Rules of CASE statement -- 
-----------------------------
-- the data type of the results must be matching, means the results must be string, numbers, dates, ... 
-- CASE statement can be used anywhere in the 
--------------------------------------------------------------------


/*
    ====================
    == Mapping Values == 
    ====================
    - transform the values from one form to another in order to make it more readable and re-usable for analytics
*/

-- retrieve employee details with gender displayed as full text 
SELECT
    EmployeeID,
    FirstName,
    LastName,
    Gender,
CASE 
    WHEN Gender = 'M' THEN 'Male' 
    WHEN Gender = 'F' THEN 'Female'
    
    -- if there are NULL values 
    ELSE 'Not Available'
END [Gender Info]
FROM Sales.Employees;



-- retrieve customer details with abbreviated country code 
SELECT
    CUstomerID,
    FirstName,
    LastName,
    Country,
CASE 
    WHEN Country = 'Germany' THEN 'DE'
    WHEN Country = 'USA' THEN 'US'
    ELSE 'n/a'
END 'Country Abbreviation'
FROM Sales.Customers;



/*
    ==================
    == Handle NULLs == 
    ==================
    - replace NULLs with a specific values
    - NULLs can lead to inaccurate results 
    - which can lead to wrong decision-making 
*/


-- find the average scores of customers and treat NULLs as 0 
SELECT
    CustomerID,
    FirstName,
    LastName,
    Score,
CASE 
    WHEN Score IS NULL THEN 0
    ELSE Score
END [Clean Score],
AVG(Score) OVER () AS [AverageScore],
AVG(CASE 
        WHEN Score IS NULL THEN 0
        ELSE Score
    END) OVER() AvgCustomerClean
FROM Sales.Customers;


/*
    =============================
    == Conditional Aggregation == 
    =============================
    - apply aggrgate functions only on subsets of data that fulfill certain conditions 
*/


-- count how many times each customer has made an order with sales greater than 30 
SELECT 
    CustomerID,
    SUM(CASE 
        WHEN Sales > 30 THEN 1
        ELSE 0
    END) AS TotalOrdersHighSales,
    COUNT(*) AS TotalOrders
FROM Sales.Orders
GROUP BY CustomerID 
ORDER BY CustomerID;