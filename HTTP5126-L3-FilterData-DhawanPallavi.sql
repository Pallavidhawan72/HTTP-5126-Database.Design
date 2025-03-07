-- LAB 3 FILTER DATA
-- Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 6; your query for question 1B should go on line 8...

--  1 
-- A
SELECT * FROM employee WHERE ROLE ='manager' OR ROLE = 'assistant';
-- B
SELECT * FROM stock_item WHERE category ='piscine' AND inventory < 24;

--  2
-- A
SELECT * FROM stock_item WHERE item LIKE '%cage%';
-- B
SELECT * FROM employee WHERE first_name LIKE 'f%';

--  3
-- A
SELECT * FROM stock_item WHERE stock_item_id BETWEEN 1010 AND 1015;
-- B
SELECT * FROM stock_item WHERE price BETWEEN 10 AND 20;

--  4
-- A
SELECT CONCAT(last_name,'',first_name) as name, phone FROM employee WHERE NOT (ROLE ='manager' OR ROLE='assistant');
-- B
SELECT item, price, inventory FROM  stock_item WHERE NOT(item LIKE '%cat' or item LIKE '%dog') AND inventory <= 20;

--  5
-- A
SELECT first_name, last_name, role, phone FROM employee ORDER BY last_name;
-- B
SELECT stock_item_id, item, price, inventory FROM stock_item WHERE inventory > 20 ORDER BY price DESC;