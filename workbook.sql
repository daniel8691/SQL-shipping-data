
show databases;

-- Create the database
create Database customer_database;
-- drop database some_database;




-- create tables
use customer_database;

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


INSERT INTO merchandise_item
SET
merchandise_item_id = "BAMBOOBOOK",
description = "Bamboo Notebook",
unit_price = 200;

INSERT INTO merchandise_item
SET
merchandise_item_id = "BAMBOOBOOK",
description = "Dragon Painting",
unit_price = 300;

select * from merchandise_item;

--  change the data within the table before adding primary key contraint because we have duplicate values
update merchandise_item
set merchandise_item_id = "DRAGONPTNG"
where unit_price = 300;

-- add a primary key for the merchandise_item table
alter table merchandise_item
add primary key (merchandise_item_id);


---------------------------------------------
-- CREATE INDEXES

-- add an index to the description column from the merchandise_item table
create index description_inx
on merchandise_item(description);

-- Drop index
drop index description_inx
on merchandise_item;

-- create unique index
create unique index description_idx
on merchandise_item(description);

select * from merchandise_item;

-- this one wont work because we have a unique index
-- insert into merchandise_item
-- set 
-- merchandise_item_id = "THORSTATUE",
-- description = "Dragon Painting",
-- unit_price = 2500;

insert into merchandise_item
set 
merchandise_item_id = "THORSTATUE",
description = "Thor Statue",
unit_price = 2500;


-----------------------------------------

-- create a customer_order table
create table customer_order (
customer_order_id  CHAR(10) PRIMARY KEY,
customer_id char(10),
FOREIGN KEY (customer_id)
REFERENCES customer(customer_id)
);

-- insert into customer_order
-- set customer_order_id = "

create table customer_order_line_item (
	customer_order_id CHAR(10),
    customer_id char(10),
    merchandise_item_id char(10),
    quantity int,
    primary key (customer_order_id, merchandise_item_id),
    foreign key (customer_order_id)
    references
    customer_order(customer_order_id)
    );

--  add foreign key referencing merchandise_item_id from the merchandise_item table
alter table customer_order_line_item
add constraint item_id_fk
foreign key (merchandise_item_id)
references merchandise_item(merchandise_item_id);

-- Database > Reverse Engineer > click next > select your database > create erd diagram










