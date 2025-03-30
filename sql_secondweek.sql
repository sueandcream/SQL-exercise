mysql -uroot -p

use sample

SELECT * FROM sample31 ORDER BY age;
SELECT * FROM sample31 ORDER BY address;

SELECT * FROM sample31 ORDER BY address DESC;
SELECT * FROM sample31 ORDER BY age ASC;
SELECT * FROM sample31 ORDER BY a;

SELECT * FROM sample32 ORDER BY a;
SELECT * FROM sample32 ORDER BY a, b;
SELECT * FROM sample32 ORDER BY b, a;
SELECT * FROM sample32 ORDER BY a ASC, b DESC;

SELECT * FROM sample33 LIMIT 3;
SELECT * FROM sample33 ORDER BY no DESC LIMIT 3;
SELECT * FROM sample33 LIMIT 3 OFFSET 0;
SELECT * FROM sample33 LIMIT 3 OFFSET 3;

SELECT *, price * quantity FROM sample34;
SELECT *, price * quantity AS amount FROM sample34;
SELECT price * quantity "금액" FROM sample34;
SELECT *, price * quantity AS amount FROM sample34 WHERE price * quantity >= 2000;
SELECT *, price * quantity AS amount FROM sample34 ORDER BY price * quantity DESC;
SELECT *, price * quantity AS amount FROM sample34 ORDER BY amount DESC;

SELECT amount, ROUND(amount) FROM sample341;
SELECT amount, ROUND(amount, 1) FROM sample341;
SELECT amount, ROUND(amount, -2) FROM sample341;

SELECT CONCAT(quantity, unit) FROM sample35;

SELECT CURRENT_TIMESTAMP;
SELECT CURRENT_DATE + INTERVAL 1 DAY;

SELECT a, CASE WHEN a IS NULL THEN 0 ELSE a END "a(null=0)" FROM sample37;
SELECT a, COALESCE(a,0) FROM sample37;

SELECT a AS "코드",
CASE
	WHEN a=1 THEN '남자'
  WHEN a=2 THEN '여자'
  ELSE '미지정'
END AS "성별" FROM sample37;

SELECT a AS "코드",
CASE a
	WHEN 1 THEN '남자'
  WHEN 2 THEN '여자'
  ELSE '미지정'
END AS "성별" FROM sample37;

SELECT a AS "코드",
CASE a
	WHEN 1 THEN '남자'
  WHEN 2 THEN '여자'
  WHEN a IS NULL THEN '데이터 없음'
  ELSE '미지정'
END AS "성별" FROM sample37;

INSERT INTO sample41 VALUES(1, 'ABC', '2014-01-25');
INSERT INTO sample41(a, no) VALUES('XZY', 2);
INSERT INTO sample41(no, a, b) VALUES(3, NULL, NULL);
INSERT INTO sample411(no, d) VALUES(1, 1);
INSERT INTO sample411(no, d) VALUES(2, DEFAULT);
INSERT INTO sample411(no) VALUES(3);

DELETE FROM sample41 WHERE no = 3;

UPDATE sample41 SET b = '2014-09-07' WHERE no = 2;
UPDATE sample41 SET no = no + 1;
UPDATE sample41 SET no = no + 1, a = no;
UPDATE sample41 SET a = no, no = no + 1;
UPDATE sample41 SET a = NULL;
