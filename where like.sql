-- p.177
SHOW DATABASES;
USE employees;
SHOW TABLES;
SHOW TABLE STATUS; -- status가 더 자세하게 보여줌

-- p.179 별칭
SELECT
emp_no, emp_no AS '사원번호' -- 헷갈리니까 이름 바꿔서 불러오기
FROM titles;

-- p.187 관계연산자
SELECT *
FROM titles
WHERE emp_no >=10600
AND title = 'Staff';

SELECT *
FROM titles
WHERE emp_no >= 10500
AND emp_no<=20000;

-- between 사용하여 똑같은 식 만들기
SELECT*
FROM titles
WHERE emp_no BETWEEN 10500 AND 20000;

SELECT*
FROM titles
WHERE title = 'Engineer'
OR title = 'Staff';

SELECT*
FROM titles
WHERE title
IN ('Engineer','Staff', 'Senior Staff'); -- title을 한번 쓴 경우


SELECT * FROM employees
WHERE first_name LIKE 'G%'; -- G로 시작하는 사람 다나와 !
-- * first_name = 'G' 하면 G인 사람만 찾음

SELECT * FROM employees
WHERE last_name LIKE '%M'; -- M으로 끝나는 사람 다나와 !

 SELECT*FROM employees
 WHERE first_name LIKE '%MA%'; -- 어디에 있든 이름에 MA 드가는 사람 다나와!
 -- 전수조사 해야해서 느림
 
 SELECT*FROM employees
 WHERE first_name LIKE '%__MA_%'; -- _언더바는 앞에 와야하는 글자 수와 같음, 자리와 관련 
  
 
 p.189 SubQuery
 -- 스칼라값 : 행과 열이 한개인 것 (걍 하나)
 SELECT * FROM employees
 WHERE gender = (
 SELECT gender FROM employees
 WHERE emp_no = 10066
 );
 
 SELECT * FROM employees
 WHERE gender = 'M';
 
 SELECT 'M' AS gender;