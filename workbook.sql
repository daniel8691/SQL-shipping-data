-- Task 3 -----------------------------------
show databases;

-- Create the database
create Database some_database;
-- drop database some_database;



-- Task 4 -----------------------------------
-- create tables
use some_database;

create table customer (
customer_id char(10) primary key,
customer_name varchar(50));


create table merchandise_item (
merchandise_item_id char(10),
description varchar(50),
unit_price int);

-- Task 5 -----------------------------------

insert into customer
set customer_id = "C000000001",
customer_name = "Harrison Kong";

insert into customer
set customer_id = "C000000002",
customer_name = "John Doe";



-- INSERT INTO merchandise_item
-- SET
-- merchandise_item_id = "BAMBOOBOOK",
-- description = "Bamboo Notebook",
-- unit_price = 200;

-- INSERT INTO merchandise_item
-- SET
-- merchandise_item_id = "BAMBOOBOOK",
-- description = "Dragon Painting",
-- unit_price = 300;

-- Task 6 -----------------------------------

-- Task 7 -----------------------------------