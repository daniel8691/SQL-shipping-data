Use customer_database;
select * from customer;
select * from merchandise_item;

-- AGGREGATE FUNCTIONS
select count(*) from customer;
--  Find the maximum price from the merchandise_item table
select max(unit_price) from merchandise_item;

select min(unit_price)/100 from merchandise_item;
select avg(unit_price)/100 as average_price
from merchandise_item;

--  find the same of the column quantity in the customer_order_line_item table
select*from customer_order_line_item;
select sum(quantity) as units_sold from customer_order_line_item;

--  NON AGGREGATE FUNCTIONS (only return one value)
select format(unit_price / 100, 2, "es_US")
as unit_price_decimal
from merchandise_item;

select concat(char_length(description), " chars")
from merchandise_item;

--  Find the average of the unit price in the merchandise_item table
--  format it to 2 decimal places and use country code "es_US" for US english

select concat("$",format(avg(unit_price)/100, 2, "es_US"))
as average_unit_price
from merchandise_item;
