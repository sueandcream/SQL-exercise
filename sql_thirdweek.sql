select * from sample51;
select count(*) from sample51;

select * from sample51 where name = 'A';
select count(*) from sample51 where name = 'A';

select * from sample51;
select count(no), count(name) from sample51;

select all name from sample51;
select distinct name from sample51;
select count(all name), count(distinct name) from sample51;

select * from sample51;
select sum(quantity) from sample51;

select avg(case when quantity is null then 0 else quantity end) as avgnull0 from sample51;

select min(quantity), max(quantity), min(name), max(name) from sample51;

select name, count(name), sum(quantity) from sample51 group by name;

select name, count(name) from sample51 group by name;
select name, count(name) from sample51 group by name having count(name) = 1;

select name, count(name), sum(quantity) from sample51 group by name order by sum(quantity) desc;

select * from sample54;
select min(a) from sample54;

delete from sample54 where a = (select a from (select min(a) as a from sample54) as x);
select *from sample54;

select min(a) from sample54;
select no from sample54;
select min(a), max(no) from sample54;
select no, a from sample54;

SELECT
	(SELECT COUNT(*) FROM sample51) AS sq1,
  (SELECT COUNT(*) FROM sample54) AS sq2;

update sample54 set a = (select max(a) from sample54);
SELECT * FROM (SELECT * FROM (SELECT * FROM sample54) sq1) sq2;

mysql> insert into sample541 values (
  (select count(*) from sample51),
  (select count(*) from sample54)
  );
select * from sample541;

select * from sample551;
select * from sample552;
update sample551 set a = '있음' where
	exists (select * from sample552 where no2 = no);
select * from sample551;
update sample551 set a = '없음' WHERE
	NOT exists(select * from sample552 where no2 = no);
select * from sample551;

select * from sample551 where no in(3, 5);
select * from sample551 where no in(select no2 from sample552);

CREATE TABLE sample62(
	no INTEGER NOT NULL,
    a VARCHAR(30),
    b DATE);

DESC sample62;

alter table sample62 add newcol integer;
desc sample62;

alter table sample62 modify newcol varchar(20);
desc sample62;

alter table sample62 change newcol c varchar(20);
desc sample62;

alter table sample62 drop c;
desc sample62;

ALTER TABLE sample631 MODIFY c VARCHAR (30) NOT NULL;
ALTER TABLE sample631 MODIFY c VARCHAR(30);
ALTER TABLE sample631 DROP CONSTRAINT pkey_sample631;
ALTER TABLE sample631 DROP PRIMARY KEY;

create table sample634(
	p integer not null,
	a varchar(30),
	constraint pkey_sample634 primary key(p)
	);

insert into sample634 values (1, '첫째줄');
insert into sample634 values (2, '둘째줄');
insert into sample634 values (3, '셋째줄');
insert into sample634 values (2, '넷째줄');

create index isample65 on sample62(no);
DROP INDEX isample65 ON sample62;

create view sample_view_67 as select * from sample54;
select * from sample_view_67;

create view sample_view_672(n, v, v2) AS
	SELECT no, a, a*2 FROM sample54;
select * from sample_view_672 where n = 1;

drop view sample_view_67;
