-- programs stored that you can store in the database to execute later (like functions)
use customer_database;
--  STORED FUNCTION

-- add a credit_limit column to the customer table
alter table customer
add credit_limit INT;

-- check if changes are made
select * from customer;

-- add data to the credit limit column
update customer
set credit_limit = '2000'
where customer_id = 'C000000001';

update customer
set credit_limit = '5000'
where customer_id = 'C000000002';
	
-- delete from customer where customer_id = '5000';




---------------------------------------------------------    
-- Create a procedure that selects the credit_limit for a specified customer id
DELIMITER $$

CREATE PROCEDURE check_credit (
	requesting_customer_id CHAR(10))
BEGIN

	-- TODO --
	-- write an SQL to select the credit_limit
	-- from table customer
	-- for customer_id matching requesting_customer_id
    select credit_limit
    from customer
    where customer_id = requesting_customer_id;
END $$

DELIMITER ;

-- call the procedure
call check_credit("C000000002");

-- insert data into the customer table
insert into customer (customer_id, customer_name, credit_limit)
Values ("C000000003", "George Washington", 5000),
("C000000004", "Maya Dakota", 6000),
("C000000005", "Nadia Raman", 7000);

select*from customer;

DROP PROCEDURE check_credit;
-- Create a procedure that select customers that have more than specified credit limit

DELIMITER $$
CREATE PROCEDURE check_limit_procedure (p_check_limit INT)
BEGIN
	select *
    from customer
    where credit_limit > p_check_limit;
END $$ 

DELIMITER ;

-- call the function
call check_limit_procedure(1000);

 