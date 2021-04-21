-- 그룹함수 (집계함수)
        -- 컬럼명
SELECT COUNT(emp_no) FROM salaries; --행 갯수 세아리기
SELECT MAX(salary) FROM salaries;
SELECT MIN(salary) FROM salaries;
SELECT SUM(salary) FROM salaries;

SELECT (sum(salary) / COUNT(salary)) AS avg_salary
FROM salaries;

SELECT AVG(salary) AS avg_salary
FROM salaries;



SELECT emp_no
,MAX(salary), MIN(salary)
,SUM(salary), avg(salary), COUNT(salary)
FROM salaries
GROUP BY emp_no -- 얘네가 같은애들 별 로 select값 구하는 것
ORDER BY AVG(salary) DESC;


-- 가장 많이다닌 순서대로 (내림차순) 개월수가 같다면 평균급여가 높은순대로 (내림차순)
SELECT emp_no, AVG(salary), COUNT(salary) -- (=AS avg_salary)
FROM salaries
GROUP BY emp_no
HAVING COUNT(salary)=10 -- 옵션이라서 group by 뒤에 위치시키기, group by 없이 having 존재 못함
ORDER BY COUNT(salary) DESC, AVG(salary) DESC;


-- 미션
-- salaries 테이블, emp_no별 평균 급여가 90,000 이상인 emp_no,평균 급여값 찍기, 평균급여값 오름차순
SELECT emp_no, AVG(salary) -- 값을 추출한다.
FROM salaries -- 근데 이 테이블 안에서
GROUP BY emp_no -- ~별, 평균 나오면 group by, group by나오면having절
HAVING AVG(salary) >= 90000
ORDER BY AVG(salary);


-- 미션
-- titles 테이블, 가장 많은 인원이 있는 title이 무엇인지 표시
SELECT title
FROM titles
GROUP BY title
ORDER BY COUNT(title) DESC
LIMIT 1;
-- 방법 두가지
SELECT title FROM titles
GROUP BY title
HAVING COUNT(title) =(
	SELECT max(A.cnt) FROM (
	SELECT COUNT (title) AS cnt
	FROM titles
	GROUP BY title
	) A
);



-- employees 테이블에서 여성이면서 이름이 's'로 시작하고 고용일이 1980년 이상인 사람 표시
SELECT * 
FROM employees
WHERE gender = 'F'
AND hire_date >= '1990-01-01'
AND first_name = LIKE 'S%';

