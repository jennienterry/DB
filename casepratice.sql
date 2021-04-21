SELECT *,
case salary -- 수로 나타낼 때는 case salary when 이 아니라 case when salary
when >= 70000 then '고급인력'
ELSE '저급인력'
END
FROM salaries;

SELECT *,
	case
		when salary >= 80000 then '최고급인력'
		when salary  >= 70000 then '고급인력'
	ELSE '저급인력'
	END AS title
FROM salaries;