-- --- 1번
CREATE TABLE T_ORDER(
	o_no INT PRIMARY KEY,
	cus_no INT,
	o_date DATETIME DEFAULT NOW(),
	o_price INT DEFAULT 0,
	FOREIGN KEY(cus_no) REFERENCES T_CUSTOMER(cus_no)
);


CREATE TABLE T_CUSTOMER(
	cus_no INT PRIMARY KEY,
	nm CHAR(10) NOT NULL
);


SELECT*FROM T_ORDER;
SELECT*FROM T_CUSTOMER;


-- --- 2번
SELECT*FROM t_order;

SELECT *
FROM t_order
WHERE cus_no = 3;

SELECT o_no,o_price
FROM t_order
WHERE cus_no = 3;

SELECT*FROM T_CUSTOMER;

INSERT INTO t_order
(o_no,cus_no,o_price)
VALUE
(1,3,55000),
(2,5,70000),
(3,3,60000);

DELETE FROM t_order WHERE o_no=2;

INSERT INTO t_customer
(cus_no, nm)
VALUE
(3,'홍길동'),
(5,'이순신');

UPDATE t_customer SET nm = '장보고' WHERE cus_no =5;


-- --- 3번
SHOW FULL TABLES;
SHOW INDEX FROM T_ORDER;
SHOW FULL TABLES WHERE table_type LIKE 'view';



-- --- 서술1번 index
CREATE INDEX idx_customer_nm ON t_customer(nm);
SHOW INDEX FROM t_customer;
ALTER TABLE t_customer DROP INDEX idx_customer_nm;



-- --- 서술2번 join
CREATE VIEW view_order_info AS
SELECT A.o_no,A.o_date,A.o_price,B.nm
FROM t_order A
INNER JOIN t_customer B
ON A.cus_no = B.cus_no;

SELECT*
FROM view_order_info;

DROP VIEW view_order_info;

