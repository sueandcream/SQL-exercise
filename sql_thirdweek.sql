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

