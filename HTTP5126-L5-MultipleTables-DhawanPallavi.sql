--  LAB 5 MULTIPLE TABLES

--  Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
--  1 
-- A 
SELECT * FROM sale WHERE stock_item_id = 1014;
-- B 
SELECT s.date, st.stock_item_id
FROM sale s
JOIN stock_item st ON s.stock_item_id = st.stock_item_id
WHERE st.stock_item_id = 1014;

--  2
-- A 
SELECT * FROM sale WHERE employee_id = 111;
-- B
SELECT s.date, e.first_name, e.last_name, s.stock_item_id
FROM sale s
JOIN employee e ON s.employee_id = e.employee_id
WHERE e.employee_id = 111;

--  3
-- A
SELECT s.date, st.name
FROM sale s
JOIN stock_item st ON s.stock_item_id = st.stock_item_id
ORDER BY s.date DESC LIMIT 5;

-- B
SELECT e.first_name, e.last_name, s.date
FROM sale s
JOIN employee e ON s.employee_id = e.employee_id
ORDER BY s.date DESC LIMIT 5;

--  4
-- A
SELECT s.date, st.name, e.first_name
FROM sale s
JOIN stock_item st ON s.stock_item_id = st.stock_item_id
JOIN employee e ON s.employee_id = e.employee_id WHERE s.date BETWEEN '2025-01-12' AND '2025-01-18';
-- B
SELECT e.first_name, e.last_name, COUNT(s.sale_id) AS Total_Sales
FROM sale s
JOIN employee e ON s.employee_id = e.employee_id
GROUP BY e.employee_id ORDER BY Total_Sales DESC;

--  5
-- A
SELECT s.date, st.name, st.price, st.category, e.first_name
FROM sale s
JOIN stock_item st ON s.stock_item_id = st.stock_item_id
JOIN employee e ON s.employee_id = e.employee_id
WHERE e.employee_id = (SELECT employee_id FROM sale GROUP BY employee_id ORDER BY COUNT(sale_id) DESC LIMIT 1);
-- B
SELECT st.stock_item_id, st.name, st.price, st.category, COUNT(s.sale_id) AS "Times Sold"
FROM stock_item st
LEFT JOIN sale s ON st.stock_item_id = s.stock_item_id
GROUP BY st.stock_item_id
ORDER BY st.stock_item_id;

--  6
-- A  As a stock person, I want to know which stock items were sold the most on January 12, 2025, and how many times each was sold, so I can prioritize restocking. Can you provide me with that information?
-- B
SELECT st.name AS item_sold, COUNT(s.sale_id) AS times_sold
FROM sale s
JOIN stock_item st ON s.stock_item_id = st.stock_item_id
WHERE s.date = '2025-01-12'
GROUP BY st.stock_item_id
ORDER BY times_sold DESC, st.name;