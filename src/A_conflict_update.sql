create table T(A integer primary key, B text);
insert into T(A,B) values(0,'a');
begin;
insert into T(A,B) values(1,'A') on conflict(A) do update set B='AAA';
insert into T(A,B) values(1,'B') on conflict(A) do update set B='BBB';
insert into T(A,B) values(2,'C');
end;
insert into T(A,B) values(9,'z');
select * from T;

create table T(A integer primary key, B text);
begin;
insert into T(B) values('A') on conflict(B) do update set B='AAA';
insert into T(B) values('A') on conflict(B) do update set B='BBB';
end;
select * from T;

create table T(A integer primary key, B text unique);
begin;
insert into T(B) values('A') on conflict(B) do update set B='AAA';
insert into T(B) values('A') on conflict(B) do update set B='BBB';
end;
select * from T;

create table T(A integer primary key, B text unique);
begin;
insert into T(A,B) values(1,'A') on conflict(A,B) do update set A=10, B='AAA';
insert into T(A,B) values(1,'A') on conflict(A,B) do update set A=10, B='BBB';
end;
select * from T;

create table T(A integer primary key, B text unique);
begin;
insert into T(A,B) values(1,'A') on conflict(A,B) do update set (A,B)=(10, 'AAA');
insert into T(A,B) values(1,'A') on conflict(A,B) do update set (A,B)=(10, 'BBB');
end;
select * from T;

