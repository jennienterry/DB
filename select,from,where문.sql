-- SELECT 컬럼명 FROM 테이블명
-- * : 모든컬럼의 모든 레코드
SELECT amount, cost, company -- 사이에 있는 컬럼명들만 나오게 됨
FROM producttbl;

SELECT *
FROM producttbl
WHERE company = 'LG';


SELECT * FROM membertbl;
-- membertbl에서 membername이 '지운이'인 레코드만 나타나도록, 모든 컬럼 나타나게

SELECT * FROM membertbl -- 컬럼조종
WHERE membername = '지운이'; -- 레코드 조종

SELECT * FROM producttbl
WHERE cost <= 10 AND company = 'LG'; -- AND는 둘 다 만족(true)하는 것만 출력
												 -- OR은 true인 것 다 출력
												 
-- 띄어쓰기 있는 테이블명 만들 때 `member tbl`



-- select 내가 보고싶은값 (~ 나타내라, 출력해라, 보여줘야되는거)
-- from 어디에 있는 데이터를 가져올지
-- where 조건


-- * 연습
CREATE TABLE producttbl(
	productname CHAR(5),
	amount INT,
	company CHAR (10),
	cost INT 
);

INSERT INTO producttbl
(productname, amount, company, cost)
VALUE
('세탁기',3,'LG',10),
('냉장고',4,'DW',20),
('티비',6,'SS',30);

