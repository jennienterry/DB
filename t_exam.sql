CREATE DATABASE java;
-- /**/, # 주석

CREATE TABLE t_exam ( 
	i_exam INT PRIMARY KEY, -- pk는 중복x, 비어있어도x, 각 테이블 당 기본 pk는 하나만 존재
	title VARCHAR(100),
	jumin CHAR(13),
	age INT(3) NOT NULL
);
	
	
	DROP TABLE t_exam; -- drop : 삭제하는 것
	DROP DATABASE java;
	
	
	SELECT * FROM t_exam; -- t_exam 실행
	USE java; -- java를 사용하겠다는 의미
	
	INSERT INTO t_exam -- t_exam에 이 정보들을 넣어라
	( I_EXAM, TITLE, JUMIN, AGE )
	VALUES
	( 1, '안녕하세요', '9601312345678', 25);

	INSERT INTO t_exam
	( TITLE, I_EXAM, JUMIN, AGE ) -- 순서는 처음과 바뀌어도 상관없음, 값과 맞으면 된다.
	VALUES
	( '닷닷닷닷닷', 2, '9601342345678', 25),
	( '있지이이', 3, '9501012345678', 29);


	UPDATE t_exam -- 컬럼  수정하기
	SET age = 27 -- 나이를 27로 수정해줘
	WHERE i_exam = 2; -- i_exam이 2번인 사람을
	-- where 조건설정 안해주면 모든 age컬럼의 값이 25로 바뀜.
	-- ctrl + z 없어서 데이터 다 날아가니까 주의하기

	DELETE FROM t_exam -- 컬럼 삭제하기
	WHERE i_exam = 3;