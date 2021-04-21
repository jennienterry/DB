CREATE TABLE memberTBL (
	memberId CHAR(8) PRIMARY KEY, -- 컬럼명,타입, 길이, 옵션
	memberName CHAR (5) NOT NULL, -- null 허용ㄴㄴ(값을 무조건 넣어야 한다)
	memberAddress CHAR(20) -- null 허용할 때는 안적어주면 된다
);

-- insert, select, update, delete
SELECT * FROM membertbl;
DESC membertbl; -- ------------확린하기 
INSERT INTO membertbl
(memberId, memberName, memberAddress) -- 컬럼명 작성 (생략가능하지만 그냥 적어라)
VALUES
('Dang','당탕이','경기 부천시 중동'),
('Jee', '지운이', '서울 은평구 증산동'),
('Han','한주연','인천 남구 주안동'),
('Sang', '상길이', '경기 성남구 분당구');

