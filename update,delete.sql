SELECT * FROM testtbl2;

--* 수정하기
UPDATE testtbl2
SET userName = '지민'
, age = 27
WHERE id = 4; -- id가 4인 사람만

-- where이나 from 앞에 ,가 있으면 안된다 !

-- * 수정하는 방법  *
/* UPDATE 테이블명
SET 컬럼명 = 수정값,
컬럼명 = 수정값,
컬럼명 = 수정값
WHERE 조건식(레코드 지정) */


-- * 삭제하기
DELETE FROM 테이블명
WHERE 조건식

DELETE FROM testtbl2
WHERE id = 6; -- 실행 왜안되냐

-- 복사하는 두가지 방법, pk값을 제외하고 그대로 복사가 됨
CREATE TABLE testtbl3 AS
SELECT * FROM testtbl2;

CREATE TABLE testtbl4 ( SELECT * FROM testtbl2);
SELECT * FROM testtbl2;


/* 질문
Q. 만약에 10번을 지우고 11번에 있는 값을 땡겨오고 싶으면 UPDATE를 써야하나요?
A. pk값은 주민번호 같은거기 때문에 그렇게 하면 안된다.
*/


-- 지우기
DROP TABLE testtbl2; -- 테이블까지 다 사라짐 파괴
DELETE FROM testtbl2; -- 테이블 안 내용만 지우기
TRUNCATE testtbl4; -- 테이블 안 내용만 지우기 (더 빠름)

SELECT*FROM testtbl2;
-- p.214
INSERT INTO testTBL2
(id, userName, age) VALUES (1,'지민' ,25);

INSERT INTO testTBL2
(id, userName, age) VALUES (2,'유나' ,22);

INSERT INTO testTBL2
(id, userName, age) VALUES (3,'유경' ,21);
 -- 이렇게 값 들어갔다가 pk가 겹칠경우 
 
 INSERT IGNORE INTO testTBL2
(id, userName, age) VALUES (1,'지민' ,25);

INSERT IGNORE INTO testTBL2
(id, userName, age) VALUES (1,'유나' ,22);

INSERT IGNORE INTO testTBL2
(id, userName, age) VALUES (3,'유경' ,21);   -- 무시하고 실행되기 때문에 에러는 안남


DROP TABLE if EXISTS testtbl2; -- 오류없이 drop하기
