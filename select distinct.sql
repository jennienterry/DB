SELECT DISTINCT

ALL | DISTINCT | DISTINCTROW -- 뒤에 들어갈 수 있는 명령어들
									  -- distinct : 중복제거

컬럼명 | 명령어* 
FROM 테이블명
WHERE 조건식 (무한대)
GROUP BY 컬럼명 (,콤마 사용해서 여러  컬럼명도 줄 수 있다.)
HAVING 그룹바이의 조건식
ORDER BY 레코드의 순서 조정
LIMIT 레코드 수 조정(= ~ 까지만 보여줘)

-- 기본형태
SELECT 열이름
FROM 테이블이름
WHERE 조건