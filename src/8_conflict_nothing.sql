create table T(A integer primary key, B text);
insert into T(A,B) values(0,'a') on conflict do nothing;
begin;
insert into T(A,B) values(1,'A') on conflict do nothing;
insert into T(A,B) values(1,'B') on conflict do nothing;
insert into T(A,B) values(2,'C') on conflict do nothing;
end;
insert into T(A,B) values(9,'z') on conflict do nothing;
select * from T;

