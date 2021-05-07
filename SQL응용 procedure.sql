DROP PROCEDURE IF EXISTS proc_INSERT_ORDER;
DELIMITER $$
CREATE PROCEDURE proc_INSERT_ORDER (
	in param_o_no INT(10),
	in param_cus_no INT(10),
	in param_o_price INT(10)
)
BEGIN
	DECLARE param_o_date DATETIME DEFAULT NOW();
	START TRANSACTION;
	INSERT INTO t_order 
	(o_no, cus_no, o_date, o_price)
	VALUES 
	(param_o_no, param_cus_no, param_o_date, param_o_price);
	COMMIT;
END $$
DELIMITER ;

CALL proc_INSERT_ORDER(200, 3, 50);