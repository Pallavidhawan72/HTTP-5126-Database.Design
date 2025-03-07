--  LAB 2 ACCESSING DATA PART 1
--  Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 6; your query for question 1B should go on line 8...

--  1 
-- A 
SELECT *FROM employee;
-- B 
SELECT *FROM Stock_item;

--  2
-- A 
SELECT item,price FROM Stock_item;
-- B
SELECT first_name,last_name,role,phone FROM employee;

--  3
-- A
SELECT item as 'Product', category as 'Animal' FROM stock_item;
-- B
SELECT last_name as 'Pet_store_staff', employee_id as 'Emp.id', sin as SIN FROM employee;

--  4
-- A
SELECT first_name,phone,role FROM employee where role = 'sales';
-- B
SELECT item,stock_item_id,inventory FROM stock_item WHERE inventory <= 12;

--  5
-- A
SELECT item as 'Kitty_Cat', price FROM stock_item;
-- B
SELECT concat(last_name, '', first_name) as 'staff_Member', employee_id FROM employee WHERE employee_id = 115;