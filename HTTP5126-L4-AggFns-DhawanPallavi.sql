-- LAB 4 AGGREGATE FUNCTIONS
-- Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 6; your query for question 1B should go on line 8...

--  1 
-- A
SELECT MIN(price) FROM stock_item;
-- B
SELECT MAX(inventory) FROM stock_item;
-- C
SELECT AVG(price) FROM stock_item;
-- D
SELECT SUM(inventory) FROM stock_item;

--  2
-- A
SELECT role, COUNT(*) AS "Count of Employees" FROM employee GROUP BY role;
-- B
SELECT COUNT(*), category AS 'Mammals' FROM stock_item GROUP BY category HAVING category != "piscine";
-- C
SELECT AVG (price), category FROM stock_item GROUP BY inventory != 0;

--  3
-- A
SELECT inventory AS "In Stock", category AS "Species" FROM stock_item GROUP BY category ORDER BY inventory DESC;
-- B
SELECT category, SUM(inventory), AVG(price) AS average_price FROM stock_item GROUP BY category HAVING SUM(inventory) < 100 AND AVG(price) < 100;

--  4
-- A
SELECT item AS "Product", CONCAT('$', price) AS "Price", inventory AS "Stock Remaining", category AS "Species" FROM stock_item ORDER BY (price * inventory) DESC;