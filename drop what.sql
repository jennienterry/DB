-- create, alter, drop
-- ctrl + z 안되니까 항상 백업하고 시작하기

DROP TABLE t_exam;

-- index : 전수조사를 안하기 위한 것
-- where절에서 index 보통 들어간다.




CREATE TABLE indexTBL (
	first_name VARCHAR(14),
	last_name VARCHAR(16),
	hire_date date
);

SELECT first_name, LAST_name, hire_date
FROM employees.employees; -- 데이터베이스명.테이블명


INSERT INTO java.indextbl
(first_name,last_name,hire_date)
SELECT first_name, last_name, hire_date
FROM employees.employees
LIMIT 1000;


EXPLAIN SELECT * FROM indextbl -- explain : 코드가 작동하는 방식..? 설명?
WHERE first_name = 'Mary';

CREATE INDEX idx_indexTBL_firstname -- 레이블네임 설정 / reference로 변경하는 방법
ON indextbl (first_name); -- 테이블명(컬럼명)