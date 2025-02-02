--update DATETIMELTZ columns, with orderby and limit clause

autocommit off;

drop table if exists tz_test;
create table tz_test(id int auto_increment, col1 datetime with local time zone primary key default datetimetz'2014-09-01 2:00:20.369 Asia/Shanghai', col2 datetime with local time zone unique);

set timezone '+14:00';
insert into tz_test(col1, col2) values(datetime'2011-05-12 14:12:10.369', datetimeltz'2011-05-12 00:12:57.369 Pacific/Niue');
set timezone '+12:00';
insert into tz_test(col1, col2) values(datetime'2011-05-12 12:12:12.369', datetimeltz'2011-05-12 1:12:55.369 Pacific/Tahiti');
set timezone '+10:00';
insert into tz_test(col1, col2) values(datetime'2011-05-12 10:12:14.369', datetimeltz'2011-05-12 4:12:53.369 America/Vancouver');
set timezone '+08:00';
insert into tz_test(col1, col2) values(datetime'2011-05-12 8:12:16.369', datetimeltz'2011-05-12 5:12:51.369 Pacific/Galapagos');
set timezone '+06:00';
insert into tz_test(col1, col2) values(datetime'2011-05-12 6:12:18.369', datetimeltz'2011-05-12 7:12:49.369 America/Port_of_Spain');
set timezone '+04:00';
insert into tz_test(col1, col2) values(datetime'2011-05-12 4:12:20.369', datetimeltz'2011-05-12 9:12:47.369 America/Noronha FNT');
set timezone '+02:00';
insert into tz_test(col1, col2) values(datetime'2011-05-12 2:12:22.369', datetimeltz'2011-05-12 13:12:45.369 PM CET');
set timezone '-00:00';
insert into tz_test(col1, col2) values(datetime'2011-05-12 0:12:24.369', datetimeltz'2011-05-12 2:12:43.369 PM Indian/Comoro');
set timezone '-1:00';
insert into tz_test(col1, col2) values(datetime'2011-05-11 23:12:26.369', datetimeltz'2011-05-12 4:12:41.369 PM Asia/Aqtobe');
set timezone '-3:00';
insert into tz_test(col1, col2) values(datetime'2011-05-11 21:12:28.369', datetimeltz'2011-05-12 6:12:39.369 PM Asia/Vientiane');
set timezone '-5:00';
insert into tz_test(col1, col2) values(datetime'2011-05-11 19:12:30.369', datetimeltz'2011-05-12 8:12:37.369 PM Asia/Dili TLT');
set timezone '-7:00';
insert into tz_test(col1, col2) values(datetime'2011-05-11 17:12:32.369', datetimeltz'2011-05-12 10:12:35.369 PM Asia/Vladivostok');
set timezone '-9:00';
insert into tz_test(col1, col2) values(datetime'2011-05-11 15:12:34.369', datetimeltz'2011-05-12 12:12:33.369 AM Pacific/Fakaofo TKT');
set timezone '-11:00';
insert into tz_test(col1, col2) values(datetime'2011-05-11 13:12:36.369', datetimeltz'2011-05-13 1:12:31.369 AM Pacific/Kiritimati');

commit;

--test: [er] update with default, pk violation
update tz_test set col1=default;
select id, col1 from tz_test order by col1;
--test: update with default
update tz_test set col2=default(col1) order by col1 limit 1;
select id, col2 from tz_test order by col2;
rollback;

--test: update without order by
update tz_test set col1=col1+2000, col2=col2-2000;
select * from tz_test order by 1;
rollback;

--test: update with order by
update tz_test set col1=col1+2000 order by col1 desc;
select * from tz_test order by 1;
update tz_test set col2=col2-2000 order by col2 asc;
select * from tz_test order by 1;
rollback;
--test: [er] update with order by, unique violation
update tz_test set col1=col1+2000 order by col1 asc;
select * from tz_test order by 1;
update tz_test set col2=col2-2000 order by col2 desc;
select * from tz_test order by 1;

--test: update with order by + limit
update tz_test set col1=col1+2000 order by col1 desc limit 10;
select * from tz_test order by 1;
update tz_test set col1=col1+2000, col2=col2-2000 order by col1 desc, col2 desc limit 5;
select * from tz_test order by 1;
rollback;

--test: update 2 columns with order by
update tz_test set col1=col1+2000, col2=col2-2000 order by col1 desc, col2 asc;
select * from tz_test order by 1;


drop table tz_test;

commit;


set timezone 'Asia/Seoul';
autocommit on;

 
