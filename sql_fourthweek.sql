select * from sample71_a;
select * from sample71_b;
select * from sample71_a
  union
  select * from sample71_b;

select a as c from sample71_a
  union
  select b as c from sample71_b order by c;

select * from sample71_a
  union all
  select * from sample71_b;

select * from sample72_x;
select * from sample72_y;
select * from sample72_x, sample72_y;

CREATE TABLE 상품(
  상품코드 CHAR(4) NOT NULL,
  상품명 VARCHAR(30),
  메이커명 VARCHAR(30),
  가격 INTEGER,
  상품분류 VARCHAR(30),
  PRIMARY KEY (상품코드)
);
create table 재고수(
  상품코드 CHAR(4),
  입고날짜 DATE,
  재고수 INTEGER
);

select * from 상품, 재고수;
select * from 상품, 재고수
  where 상품.상품코드 = 재고수.상품코드;
select 상품.상품명, 재고수.재고수 from 상품, 재고수
  where 상품.상품코드 = 재고수.상품코드
  and 상품.상품분류 = '식료품';
select 상품.상품명, 재고수.재고수
  from 상품 inner join 재고수
  on 상품.상품코드 = 재고수.상품코드
  where 상품.상품분류 = '식료품';

SELECT S.상품명, M.메이커명
	FROM 상품2 S INNER JOIN 메이커 M
    ON S.메이커코드=M.메이커코드;
