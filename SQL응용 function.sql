DROP FUNCTION if EXISTS fn_GET_AGE;
DELIMITER $$ -- 종료문자를 이걸로 해라
CREATE FUNCTION fn_GET_AGE (
	V_BIRTH_DATE CHAR(8) -- 파라미터 부분
)	RETURNS INT -- 리턴타입은 여기
BEGIN
	DECLARE V_CURRENT_YEAR CHAR(4); -- declare변수 선언
	DECLARE V_BIRTH_YEAR CHAR(4);
	DECLARE V_AGE INT;

	SELECT DATE_FORMAT(NOW(), '%Y'), LEFT(V_BIRTH_DATE, 4)
	INTO V_CURRENT_YEAR, V_BIRTH_YEAR;

	SELECT CAST(V_CURRENT_YEAR AS INT) - CAST(V_BIRTH_YEAR AS INT) + 1
	INTO V_AGE;
	
	RETURN V_AGE;
END $$
DELIMITER ; -- 계속 $$로 사용해야하기 때문에 ;로 다시 바꿔주기

-- ----------------------------------------------------

SELECT DATE_FORMAT(NOW(), '%Y - %m'); -- now()중에 현재 년도와 달을 담겠다

SELECT LEFT('22334455', 4); -- 앞에서 4개까지 보겠다

SELECT fn_GET_AGE('19960101') FROM DUAL;