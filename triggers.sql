use customer_database;

DELIMITER $$

CREATE TRIGGER decrease_inventory_tgr
	AFTER INSERT ON customer_order_line_item
    FOR EACH ROW
    BEGIN 
		UPDATE merchandise_item
        SET qoh = qoh - new.quantity
        WHERE merchandise_item_id = new.merchandise_item_id;
	
    END $$

DELIMITER ;


update merchandise_item
set qoh = 10
where merchandise_item_id = "ITALYPASTA";




-- create another trigger
CREATE TRIGGER inventory_check_tgr
	BEFORE INSERT ON customer_order_line_item
    FOR EACH ROW


select * from merchandise_item;



