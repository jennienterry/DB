SHOW (FULL) TABLES; -- 가지고 있는 테이블 다 보여줌 (전체 테이블 조회)

SHOW INDEX FROM 테이블명; -- 어떤 테이블의 index 조회

SHOW FULL TABLES WHERE TABLE_TYPE LIKE 'view'; -- (view는 눈모양으로 나옴)
-- 테이블type이 view인거 보여줘

-- index : 목차 만드는 것, 보기 좋게 정리 (그러면 전수조사 안해도 됨)

SELECT 'bbc'  = 'bbd'; -- int나 char, varchar에 index 걸 수 있음 / true면 1 false면 0

CREATE INDEX 인덱스이름 ON  테이블명 (컬럼명); -- index생성
CREATE INDEX idx_abcd ON  membertbl(memberName);

ALTER TABLE 테이블명 DROP INDEX 인덱스명; -- index 삭제
DROP INDEX 인덱스명 ON 테이블명; -- index 삭제


CREATE VIEW view_abcd AS -- 가상테이블
SELECT *FROM membertbl
WHERE memberName LIKE '%이%';
SELECT*FROM view_abcd -- 위에 view를 지정해놓았기 때문에 이렇게 하면 view 설정해놓은 테이블을 보여줌
WHERE memberID = 'Dang'; -- view 걸어도 조건식 추가로 더 달 수 있다.