SELECT emp_no, gender
,if(gender = 'M','남성', '여성') AS gender2 -- 삼항식
, case when gender = 'M'
   	 then '남성'
   	 ELSE '여성'
  END AS gender3
FROM employees;



SELECT * ifnull(salary,0)
FROM salaries
WHERE salary is NULL -- null 찾을 때는 = 아니고 is로
OR emp_no = 17170;
