create table T(A integer primary key, B text);
insert or abort into T(A,B) values(0,'a');
begin;
insert or abort into T(A,B) values(1,'A');
insert or abort into T(A,B) values(1,'B');
insert or abort into T(A,B) values(2,'C');
end;
insert or abort into T(A,B) values(9,'z');
select * from T;

