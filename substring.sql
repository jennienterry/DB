SELECT FORMAT(9123456.123456789, 1); -- ~,~ 뒤에 나오는 수는 실수의 자릿수 나타냄

SELECT FORMAT(36500,2); -- ,콤마가 있으면 정수가 아니게 됨 / jsp안에서 찍기

SELECT*, INSERT(dept_no,2,2,'i') -- 
FROM dept_emp;


-- p.237
SELECT*
, LEFT(first_name, 2)
, RIGHT(first_name, 3)
FROM employees;

SELECT*
, lower(LEFT(first_name, 2))
, upper(RIGHT(first_name, 3))
FROM employees;



SELECT
first_name
, LPAD(first_name, 10, '*')
, RPAD(first_name,10, '*')
FROM employees;

-- 빈칸 없애기
SELECT TRIM('    안녕   ') AS hi -- 양쪽에 있는 공백만 없애줌
, TRIM('     하하    하   ')
, REPLACE('  하하  하  하    ', ' ', '') -- 마지막에 있는''로 표현해주는 것 = 공백x
;



-- p.239
-- substring
SELECT
	birth_date,
	LEFT(birth_date, 4) AS YEAR, --  cast(birth_date AS CHAR) 형변환?????
	SUBSTRING(birth_date, 6, 2) AS mon,
	MID(birth_date, 6, 2) as mon2,
	SUBSTR(birth_date, 3) as mon3,
	RIGHT(birth_date, 2) AS day,
	CAST(RIGHT(birth_date, 2) AS INT) AS day_int
FROM employees;

