create table T(A integer primary key, B text);
insert into T(B) select 'A' union select 'B';
select * from T;

create table T(A integer primary key, B text);
insert into T(A,B) select 1,'A' union select 1,'B' on conflict(A) do update set B='AAA';
select * from T;

