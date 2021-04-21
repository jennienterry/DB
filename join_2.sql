DROP TABLE t_board;
CREATE TABLE t_board (
	iboard INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL, -- SQL, 자동형변환 잘함
	ctnt VARCHAR(500) NOT NULL,
	r_dt DATETIME DEFAULT NOW() -- 아무것도 안넣으면 지금시간이 자동으로 들어감
);

DROP TABLE t_cmt;
CREATE TABLE t_cmt (
	icmt INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	iboard INT UNSIGNED,
	ctnt VARCHAR(100) NOT NULL,
	r_dt DATETIME DEFAULT NOW()
);

INSERT INTO t_board
(title, ctnt)
VALUES
('MariaDB 사용법','1도 모르겠다');

INSERT INTO t_cmt
(iboard, ctnt)
VALUES
(1, '저도 그랬습니다.');

SELECT * FROM t_board;
SELECT * FROM t_cmt;

SELECT A.*, B.*, ifnull(B.ctnt, '댓글없음')
FROM t_board A
LEFT JOIN t_cmt B -- t_cmt기준 left는 t_board이므로 t_board위주로(순서보장) !
ON A.iboard = B.iboard; -- inner join이면 A와 B가 아는 것만 출력함


SELECT A.*,B.* -- 댓글없는 2줄만 출력할 때
FROM t_board A
LEFT JOIN t_cmt B
ON A.iboard = B.iboard
WHERE B.icmt IS NULL;