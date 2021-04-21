CREATE TABLE t_student(
	s_id INT UNSIGNED PRIMARY KEY,
	nm VARCHAR(3) NOT NULL,
	ph char(13)
);

INSERT INTO t_student (s_id, nm) -- ph는 null허용가능해서 옵션이라 뺄 수 있는 것
VALUES (1111, '갑');

INSERT INTO t_student (s_id, nm, ph) -- not null인데 빼면 에러
VALUES
(1112, '을', '010-1111-1111'),
(1113, '병','010-2222-2222');

INSERT INTO t_student (s_id, nm)
VALUES (1114, '정');

SELECT * FROM t_student; 


CREATE TABLE t_class(
	c_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	cls VARCHAR(5) NOT NULL,
	teacher VARCHAR(5) NOT NULL
);

INSERT INTO t_class
VALUES
(1,'수학', '김하나'), -- auto_increment 해서 1,2,3 안줘도됨
(2,'과학', '판테온'),
(3,'국어', '오징어');

INSERT INTO t_class (cls, teacher)
VALUES
('영어','제임스');

SELECT * FROM t_class;

DROP TABLE t_score;
CREATE TABLE t_score(
	s_id INT unsigned,
	c_id INT unsigned,
	score INT,
	PRIMARY KEY (s_id, c_id), -- pk중복으로 줄 때 표기법
	FOREIGN KEY (s_id) REFERENCES t_student(s_id), -- 원래 constraint 이름 foreign key 적어야함
	FOREIGN KEY (c_id) REFERENCES t_class(c_id)
);

INSERT INTO t_score
(s_id,c_id,score)
VALUES
(1114,4,80);

SELECT * FROM t_score;