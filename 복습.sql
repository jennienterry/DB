SELECT * FROM titles
WHERE title != 'Staff'; -- staff가 아닌것들만 출력 !=과 <>똑같지만 헷갈리니까 !=써라

SELECT * FROM salaries
WHERE salary between 70000 AND 79041; -- between 하면 70000과 79041 포함되어서 나옴 (이상이하개념)

-- group by는 select가 끝나고 실행


-- having 절에서는 AS 사용가능
SELECT emp_no, AVG(salary) AS 'avg_salary' -- 별칭 한글도 가능은 함
FROM salaries
GROUP BY emp_no
HAVING avg_salary >= 90000
ORDER BY avg_salary;


-- * 서브쿼리 (소괄호만 해주면 됨) *
SELECT * FROM employees
WHERE gender = 'M';

SELECT gender FROM employees
WHERE emp_no =  10110;

-- =
SELECT * FROM employees
WHERE gender = (
	SELECT gender FROM employees
	WHERE emp_no =  10110
);

(SELECT gender FROM employees
WHERE emp_no =  10110);


SELECT * FROM titles
WHERE title IN ('Senior Staff', 'Staff');


SELECT*FROM titles
WHERE title IN( -- = 아니고 in !!
	SELECT title FROM titles
   WHERE emp_no = 10007
);


-- * order by *
SELECT * FROM salaries
ORDER BY emp_no DESC, salary;


-- * 중복제거 *
SELECT DISTINCT title FROM titles;


SELECT emp_no, title FROM titles;  -- emp_no와 title 둘다 합쳐서


SELECT emp_no, title
FROM titles A
LEFT JOIN (
	SELECT DISTINCT emp_no, title FROM titles
) B
ON A.emp_no = B.emp_no
AND A.title = B.title;
WHERE B.title IS NULL; -- ??????


SELECT emp_no, title
FROM titles
GROUP BY emp_no,title
HAVING COUNT(emp_no) >1;

SELECT*FROM titles
WHERE emp_no = 110765
AND title = 'Technique Leader';   -- 해석하고 실행해보기
-- 프라이머리 키 들이 다 합쳐서 중복일 때는 사용할 수 없음



-- * limit *
SELECT * FROM dept_emp
ORDER BY emp_no DESC
LIMIT 5;