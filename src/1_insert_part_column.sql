create table T(A integer primary key, B text);
insert into T(B) values('A');
select * from T;

create table T(A integer primary key, B text, C text default '');
insert into T(B) values('A');
select * from T;

create table T(A integer primary key, B text default '', C text default '');
insert into T() values();
insert into T() values;
insert into T();
insert into T values();
insert into T values;
insert into T;
