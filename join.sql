SELECT
B.*, A. *
FROM t_score A
INNER JOIN t_student B
ON A.s_id = B.s_id; -- pk로 하는 것이 안전함

SELECT B.nm, A.c_id,A.score, c.*
FROM t_score A
INNER JOIN t_student B
ON A.s_id = B.s_id
INNER JOIN t_class C
ON A.c_id = C.c_id;

SELECT
B.ph,B.nm,B.s_id
,A.s_id, A.score, A.c_id
,C.c_id,C.cls,C.teacher
,B.ph, B.nm, A.score, C.cls, C.teacher
FROM t_score A
INNER JOIN t_student B -- inner join : 니도 있고 나도 있는값만 나타낼 때 쓰는거 (교집합)/ 외래키는 상관x
ON A.s_id = B.s_id -- left join : 일단 아는거 다 
INNER JOIN t_class C
ON A.c_id = C.c_id;