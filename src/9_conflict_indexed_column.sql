create table T(A integer primary key, B text);
insert into T(A,B) values(0,'a');
begin;
insert into T(A,B) values(1,'A') on conflict(A) where A=1 do nothing;
insert into T(A,B) values(1,'B') on conflict(A) where A=1 do nothing;
insert into T(A,B) values(2,'C');
end;
insert into T(A,B) values(9,'z');
select * from T;

create table T(A integer primary key, B text);
insert into T(A,B) values(0,'a');
begin;
insert into T(A,B) values(1,'A') on conflict(A) where A=3 do nothing;
insert into T(A,B) values(1,'B') on conflict(A) where A=3 do nothing;
insert into T(A,B) values(2,'C');
end;
insert into T(A,B) values(9,'z');
select * from T;
