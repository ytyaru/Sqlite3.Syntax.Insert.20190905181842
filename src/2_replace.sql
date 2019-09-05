create table T(A integer primary key, B text);
replace into T(A,B) values(1,'A');
replace into T(A,B) values(1,'B');
select * from T;

