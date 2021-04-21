CREATE TABLE productTBL(
	productName CHAR(4) PRIMARY KEY,
	cost INT NOT NULL,
	makeDate DATE, -- 컬럼 용어로 안쓰는 것이 좋음 _나 `` 사용하기
	company CHAR(5),
	amount INT NOT NULL
);

SELECT * FROM productTBL;
INSERT INTO productTBL
(productName,cost,makeDate,company,amount)
VALUES
('컴퓨터',10,'2017-01-01','삼성',17), -- 문자열에 '' 잊지말기
('세탁기',20,'2018-09-01','LG',3),
('냉장고',5,'2019-02-01','대우',22);

