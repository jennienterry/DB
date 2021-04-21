SELECT date_format(NOW(), '%y년%m월%d일 %h:%i:%s');-- 대문자로쓰면 13시로 나옴

SELECT CAST('2020-10-19 12:35:29'AS DATE) AS D_DATE;
SELECT CAST('2020-10-19 12:35:29'AS DATETIME)AS D_DATETIME;

SELECT CAST('10' AS INT), 'a10' + '10',
CONCAT('10','10', '안녕'), 'aaa' + 'bbbb';