SELECT * FROM salaries
ORDER BY salary ASC; -- ASC 오름차순 키워드 (ascending) / DESC 내림차순


SELECT * FROM salaries
ORDER BY emp_no, salary DESC -- 같은 번호에서 salary중에서 내림차순정렬

-- dept_emp 테이블에서 dept_no 컬럼 내림차순, emp_no 오름차순으로 정렬

SELECT * FROM dept_emp
ORDER BY emp_no ASC
ORDER BY dept_no DESC;

SELECT * FROM dept_emp
ORDER BY dept_no DESC, emp_no; -- 없으면 ASC생략된 거



SELECT dept_no FROM dept_emp;
SELECT distinct dept_no FROM dept_emp; -- 중복 제거할 때 쓰는거 / null이 나올 수도 있음 (null도 종류에 포함시킴)
SELECT distinct emp_no, dept_no FROM dept_emp; -- 둘다 프라이머리키라서 중복될 수가 없음 = 전체를 다 보여줌




UPDATE salaries -- update : 수정
SET salary = NULL
WHERE emp_no = 17169
AND from_date = '1990-11-07'; -- 빈칸으로 만드는 것

SELECT DISTINCT salary FROM salaries
ORDER BY salary ;


SELECT * FROM salaries
ORDER BY salary DESC
LIMIT 5, 5; -- 값이 하나면 처음부터 몇개, 위에서 순차적으로 다섯 레코드만 나온다, 만약 쓴다면 제일 마지막에 나오게
            -- 값을 두개 넣으면 n번째부터(index) 몇개 
            -- index 0부터 시작

SELECT * FROM dept_emp
ORDER BY emp_no;
