-- programs stored that you can store in the database to execute later (like functions)

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


create function to check if credit limit is greater than a specified number
create function check_credit(
	requesting_customer_id CHAR(10),
    request_amount INT
    )
returns boolean
deterministic

begin
	return
    (
    -- write a query to select the credit_limit from the customer table
    -- for customer_id matching request_customer_id
    select credit_limit
    from customer
    where customer_id = requesting_customer_id
    )
    

    
    
    ;
-- check to see if the function works
set @approved = check_credit("C000000001");
select @approved

select * from customer;