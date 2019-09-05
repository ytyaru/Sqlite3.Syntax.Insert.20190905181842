create table T(A integer primary key, B text);
insert or replace into T(A,B) values(1,'A');
insert or replace into T(A,B) values(1,'B');
select * from T;

