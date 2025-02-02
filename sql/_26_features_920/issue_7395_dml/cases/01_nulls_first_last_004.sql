--01_nulls_first_last_004.sql

--Test function
drop table if exists t1;
create table t1(id int primary key not null auto_increment,e enum('a', 'b', 'c', 'xyz'));
insert into t1(e) values (1), ('b'), (3), ('xyz');
insert into t1(e) values (1), ('b'), (null), (null);

select * from t1 order by 2 nulls first;
select group_concat(e order by e asc) from t1 order by 1 nulls first;
select max(e) from t1 order by 1 nulls first;
select min(e) from t1 order by 1 nulls first;
select sum(e) from t1 order by 1 nulls first;
select avg(e) from t1 order by 1 nulls first;
select count(e) from t1 order by 1 nulls first;
select stddev(e) from t1 order by 1 nulls first;
select stddev_pop(e) from t1 order by 1 nulls first;
select var_pop(e) from t1 order by 1 nulls first;
select var_samp(e) from t1 order by 1 nulls first;
select variance(e) from t1 order by 1 nulls first;

select ascii(e) from t1 order by 1 nulls first;
select bin(e) from t1 order by 1 nulls first;
select bit_length(e) from t1 order by 1 nulls first;
select char_length(e) from t1 order by 1 nulls first;
select character_length(e) from t1 order by 1 nulls first;
select chr(e) from t1 order by 1 nulls first;
select concat(e, e) from t1 order by 1 nulls first;
select concat_ws(e, e, e) from t1 order by 1 nulls first;
select elt(1, e) from t1 order by 1 nulls first;
select field(e, 'a', 'b', 'c', 'd', 'xyz') from t1 order by 1 nulls first;
select find_in_set(e, 'a, b, c, d, e, f, g, h') from t1 order by 1 nulls first;
select insert(e, 1, 2, 'xx') from t1 order by 1 nulls first;
select instr('abcdefgh', e) from t1 order by 1 nulls first;
select lcase(e) from t1 order by 1 nulls first;
select left(e, 1) from t1 order by 1 nulls first;
select length(e) from t1 order by 1 nulls first;
select lengthb(e) from t1 order by 1 nulls first;
select locate(e, 'abcdefgh') from t1 order by 1 nulls first;
select lower(e) from t1 order by 1 nulls first;
select lpad(e, e, e) from t1 order by 1 nulls first;
select ltrim(e, 'x') from t1 order by 1 nulls first;
select mid(e, e, e) from t1 order by 1 nulls first;
select octet_length(e) from t1 order by 1 nulls first;
select position(e in e) from t1 order by 1 nulls first;
select repeat(e, e) from t1 order by 1 nulls first;
select replace(e, e, e) from t1 order by 1 nulls first;
select reverse(e) from t1 order by 1 nulls first;
select right(e, e) from t1 order by 1 nulls first;
select rpad(e, e, e) from t1 order by 1 nulls first;
select rtrim(e, 'b'), rtrim('abcxyz', e) from t1 order by 1 nulls first, 2;
select '''' + space(e)  + '''' from t1 order by 1 nulls first;
select strcmp(e, e) from t1 order by 1 nulls first;
select substr(e, e, e) from t1 order by 1 nulls first;
select substring(e, e, e), substring(e from e for e) from t1 order by 1 nulls first, 2;
select substring_index(e, e, e) from t1 order by 1 nulls first;
select translate(e, e, e) from t1 order by 1 nulls first;
select '''' + trim(e from e) + '''' from t1 order by 1 nulls first;
select ucase(e) from t1 order by 1 nulls first;
select upper(e) from t1 order by 1 nulls first;

select abs(e) from t1 order by 1 nulls first;
select acos(e) from t1 where e <= 1 order by 1 nulls first;
select asin(e) from t1 where e <= 1 order by 1 nulls first;
select atan(e), atan(e, e) from t1 order by 1 nulls first, 2;
select atan2(e, e) from t1 order by 1 nulls first;
select ceil(e) from t1 order by 1 nulls first;
select conv(e, 10, e) from t1 order by 1 nulls first;
select cos(e) from t1 order by 1 nulls first;
select substr(to_char(cot(e)),1,15) from t1 order by 1 nulls first;
--select cot(e) from t1 order by 1 nulls first;
select degrees(e) from t1 order by 1 nulls first;
--select exp(e) from t1 order by 1 nulls first;
select substr(to_char(exp(e)),1,15) from t1 order by 1 nulls first;
select format(e, e) from t1 order by 1 nulls first;
select greatest(e, e, e, 2), greatest(e, e, e, 'x') from t1 order by 1 nulls first, 2;
select greatest(e, e, e, cast(e as int)) from t1 order by 1 nulls first;
select hex(e) from t1 order by 1 nulls first;
select least(e, e, e, 2), least(e, e, e, 'x') from t1 order by 1 nulls first, 2;
select least(e, e, e, cast(e as int)) from t1 order by 1 nulls first;
select ln(e) from t1 order by 1 nulls first;
select log2(e) from t1 order by 1 nulls first;
select log10(e) from t1 order by 1 nulls first;
select mod(e, e) from t1 order by 1 nulls first;
select pow(e, e) from t1 order by 1 nulls first;
select power(e, e) from t1 order by 1 nulls first;
select radians(e) from t1 order by 1 nulls first;
select round(e) from t1 order by 1 nulls first;
select sign(e) from t1 order by 1 nulls first;
select sin(e) from t1 order by 1 nulls first;
select sqrt(e) from t1 order by 1 nulls first;
select tan(e) from t1 order by 1 nulls first;
select trunc(e, 1), trunc(12345, e) from t1 order by 1 nulls first, 2;
select truncate(e, 1), truncate(12345, e) from t1 order by 1 nulls first, 2;

select if (e=1, 0, e), if(e>1, e, 0) from t1 order by 1 nulls first, 2;
select coalesce(e, e, e, 2) from t1 order by 1 nulls first;
select decode(e, e, e, 2) from t1 order by 1 nulls first;
select e, case e when 1 then 10 when 2 then e when 3 then e else e end from t1 order by 1 nulls first, 2;
select e, case when e=1 then 10 when e=2 then e when e=3 then e else e end from t1 order by 1 nulls first, 2;
select ifnull(e, null), ifnull(null, e) from t1 order by 1 nulls first, 2;
select nullif(e, null), nullif(e, e) from t1 order by 1 nulls first, 2;
select nvl(e, null), nvl(null, e) from t1 order by 1 nulls first, 2;
select nvl2(e, e, e), nvl2(null, e, e) from t1 order by 1 nulls first, 2;

select isnull(e) from t1 order by 1 nulls first;
select * from t1 where e like e order by 1 nulls first;

select e, md5(e), md5(cast(e as varchar)) from t1 order by 1 nulls first, 2, 3;

drop table if exists t1;


--Test function
drop table if exists t1;
create table t1(id int primary key not null auto_increment,e enum('a', 'b', 'c', 'xyz'));
insert into t1(e) values (1), ('b'), (3), ('xyz');
insert into t1(e) values (1), ('b'), (null), (null);

select * from t1 order by 2 nulls last;
select group_concat(e order by e asc) from t1 order by 1 nulls last;
select max(e) from t1 order by 1 nulls last;
select min(e) from t1 order by 1 nulls last;
select sum(e) from t1 order by 1 nulls last;
select avg(e) from t1 order by 1 nulls last;
select count(e) from t1 order by 1 nulls last;
select stddev(e) from t1 order by 1 nulls last;
select stddev_pop(e) from t1 order by 1 nulls last;
select var_pop(e) from t1 order by 1 nulls last;
select var_samp(e) from t1 order by 1 nulls last;
select variance(e) from t1 order by 1 nulls last;

select ascii(e) from t1 order by 1 nulls last;
select bin(e) from t1 order by 1 nulls last;
select bit_length(e) from t1 order by 1 nulls last;
select char_length(e) from t1 order by 1 nulls last;
select character_length(e) from t1 order by 1 nulls last;
select chr(e) from t1 order by 1 nulls last;
select concat(e, e) from t1 order by 1 nulls last;
select concat_ws(e, e, e) from t1 order by 1 nulls last;
select elt(1, e) from t1 order by 1 nulls last;
select field(e, 'a', 'b', 'c', 'd', 'xyz') from t1 order by 1 nulls last;
select find_in_set(e, 'a, b, c, d, e, f, g, h') from t1 order by 1 nulls last;
select insert(e, 1, 2, 'xx') from t1 order by 1 nulls last;
select instr('abcdefgh', e) from t1 order by 1 nulls last;
select lcase(e) from t1 order by 1 nulls last;
select left(e, 1) from t1 order by 1 nulls last;
select length(e) from t1 order by 1 nulls last;
select lengthb(e) from t1 order by 1 nulls last;
select locate(e, 'abcdefgh') from t1 order by 1 nulls last;
select lower(e) from t1 order by 1 nulls last;
select lpad(e, e, e) from t1 order by 1 nulls last;
select ltrim(e, 'x') from t1 order by 1 nulls last;
select mid(e, e, e) from t1 order by 1 nulls last;
select octet_length(e) from t1 order by 1 nulls last;
select position(e in e) from t1 order by 1 nulls last;
select repeat(e, e) from t1 order by 1 nulls last;
select replace(e, e, e) from t1 order by 1 nulls last;
select reverse(e) from t1 order by 1 nulls last;
select right(e, e) from t1 order by 1 nulls last;
select rpad(e, e, e) from t1 order by 1 nulls last;
select rtrim(e, 'b'), rtrim('abcxyz', e) from t1 order by 1 nulls last, 2;
select '''' + space(e)  + '''' from t1 order by 1 nulls last;
select strcmp(e, e) from t1 order by 1 nulls last;
select substr(e, e, e) from t1 order by 1 nulls last;
select substring(e, e, e), substring(e from e for e) from t1 order by 1 nulls last, 2;
select substring_index(e, e, e) from t1 order by 1 nulls last;
select translate(e, e, e) from t1 order by 1 nulls last;
select '''' + trim(e from e) + '''' from t1 order by 1 nulls last;
select ucase(e) from t1 order by 1 nulls last;
select upper(e) from t1 order by 1 nulls last;

select abs(e) from t1 order by 1 nulls last;
select acos(e) from t1 where e <= 1 order by 1 nulls last;
select asin(e) from t1 where e <= 1 order by 1 nulls last;
select atan(e), atan(e, e) from t1 order by 1 nulls last, 2;
select atan2(e, e) from t1 order by 1 nulls last;
select ceil(e) from t1 order by 1 nulls last;
select conv(e, 10, e) from t1 order by 1 nulls last;
select cos(e) from t1 order by 1 nulls last;
select substr(to_char(cot(e)),1,15) from t1 order by 1 nulls last;
--select cot(e) from t1 order by 1 nulls last;
select degrees(e) from t1 order by 1 nulls last;
--select exp(e) from t1 order by 1 nulls last;
select substr(to_char(exp(e)),1,15) from t1 order by 1 nulls last;
select format(e, e) from t1 order by 1 nulls last;
select greatest(e, e, e, 2), greatest(e, e, e, 'x') from t1 order by 1 nulls last, 2;
select greatest(e, e, e, cast(e as int)) from t1 order by 1 nulls last;
select hex(e) from t1 order by 1 nulls last;
select least(e, e, e, 2), least(e, e, e, 'x') from t1 order by 1 nulls last, 2;
select least(e, e, e, cast(e as int)) from t1 order by 1 nulls last;
select ln(e) from t1 order by 1 nulls last;
select log2(e) from t1 order by 1 nulls last;
select log10(e) from t1 order by 1 nulls last;
select mod(e, e) from t1 order by 1 nulls last;
select pow(e, e) from t1 order by 1 nulls last;
select power(e, e) from t1 order by 1 nulls last;
select radians(e) from t1 order by 1 nulls last;
select round(e) from t1 order by 1 nulls last;
select sign(e) from t1 order by 1 nulls last;
select sin(e) from t1 order by 1 nulls last;
select sqrt(e) from t1 order by 1 nulls last;
select tan(e) from t1 order by 1 nulls last;
select trunc(e, 1), trunc(12345, e) from t1 order by 1 nulls last, 2;
select truncate(e, 1), truncate(12345, e) from t1 order by 1 nulls last, 2;

select if (e=1, 0, e), if(e>1, e, 0) from t1 order by 1 nulls last, 2;
select coalesce(e, e, e, 2) from t1 order by 1 nulls last;
select decode(e, e, e, 2) from t1 order by 1 nulls last;
select e, case e when 1 then 10 when 2 then e when 3 then e else e end from t1 order by 1 nulls last, 2;
select e, case when e=1 then 10 when e=2 then e when e=3 then e else e end from t1 order by 1 nulls last, 2;
select ifnull(e, null), ifnull(null, e) from t1 order by 1 nulls last, 2;
select nullif(e, null), nullif(e, e) from t1 order by 1 nulls last, 2;
select nvl(e, null), nvl(null, e) from t1 order by 1 nulls last, 2;
select nvl2(e, e, e), nvl2(null, e, e) from t1 order by 1 nulls last, 2;

select isnull(e) from t1 order by 1 nulls last;
select * from t1 where e like e order by 1 nulls last;

select e, md5(e), md5(cast(e as varchar)) from t1 order by 1 nulls last, 2, 3;

drop table if exists t1;
