DML : INSERT, SELECT, UPDATE, DELETE -- p.205

-- 미션 : Kang 강성헌 대구 달서구 용산동
SELECT * from membertbl;

INSERT INTO membertbl
(memberId,memberName,memberAddress)
VALUES
('Kang','강성헌','대구 달서구 용산동');


-- p.207
CREATE TABLE testTBL2(
	id INT AUTO_INCREMENT, -- id: 컬럼명 / auto_increment 자동으로 늘어난다/ pk와 정수형에만 줄 수 있음
	userName CHAR(3),
	age INT,
	PRIMARY KEY(id) -- 컬럼 두개 이상에 줄 때 이렇게 적는다.
);
DROP TABLE testtbl2;

INSERT INTO testTBL2
(userName,age)
VALUES
('지민', 25),
('유나',22),
('유경', 21);

SELECT * FROM testtbl2;

INSERT INTO testtbl2
(userName, age) -- 컬럼을 지정하여 쓰면 null 이어도 오류가 나지 않는다.
SELECT userName, age -- 나이 설정 가능 but 전체로 할지 특정인물만 바꿀지 잘 적기
FROM testtbl2;

SELECT * FROM testtbl2;

SELECT age,age + 10 AS agePlus10 FROM testtbl2;

