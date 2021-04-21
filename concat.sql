-- concat : 문자열 더하기
SELECT*
, CONCAT(first_name, ', ',last_name, ', ', gender) AS NAME
, CONCAT_WS (', ', first_name, last_name, gender) -- ws하면 문자마다 ','이 들어감
AS NAME2
FROM employees;