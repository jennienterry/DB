SELECT
	CASE 11 -- 이 값이
		WHEN 1 THEN '일' -- 1이면 일이 찍히도록
		WHEN 5 THEN '오' -- 5면 오가 찍히도록
		WHEN 10 THEN '십' -- 10이면 십이 찍히도록
		ELSE '뭐지' -- 나머지는 뭐지로 찍히도록
	END AS c_case;
	
/* 미션
 producttbl 에 company 컬럼값이 '대우'> 탱크대우,'LG'> 사랑해요LG, '삼성'> 또하나의 가족,
 나머지는 바보*/
SELECT
productName,cost,
 case company -- ~가
 when '대우'  then '탱크대우'
 when 'LG' then '사랑해요 LG'
 when '삼성' then '또 하나의 가족'
 ELSE '바보'
 END AS product_case -- 여기까지가 컬럼 한줄임!
 -- end as company,company
 FROM producttbl;