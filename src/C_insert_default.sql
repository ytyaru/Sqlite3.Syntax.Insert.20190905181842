create table T(A integer primary key, B text default 'DEF');
insert into T default values;
select * from T;

create table T(A integer primary key, B text default 'DEF', C text);
insert into T default values;
select * from T;

create table T(A integer primary key, B text default 'DEF', C text unique);
insert into T default values;
insert into T default values;
select * from T;

create table T(A integer primary key, B text default 'DEF');
insert into T default values on conflict do nothing;
select * from T;

