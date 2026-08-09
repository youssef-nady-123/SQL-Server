/*
    ===================
    == HAVING Clause == 
    ===================
    - used to filter aggregated data 
    - filter data after aggregation 
    
    ----------
    - syntax -
    ----------

*/

USE MyDatabase;

SELECT 
    country,
    SUM(score) AS total_score
FROM customers
GROUP BY country 
HAVING SUM(score) > 750;

/*
    find the average score for each country considering only customers with a score not equal 0
    and return only those countries with an average score greater than 430
*/
SELECT 
    country,
    AVG(score) AS average_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430;