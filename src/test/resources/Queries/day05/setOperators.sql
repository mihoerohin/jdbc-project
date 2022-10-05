select *
from employees;

create table Developers
(
    Id_Number Integer primary key,
    Names     varchar(30),
    Salary    Integer
);

create table Testers
(
    Id_Number Integer primary key,
    Names     varchar(30),
    Salary    Integer
);

insert into developers
values (1, 'Mike', 155000);
insert into developers
values (2, 'John', 142000);
insert into developers
values (3, 'Steven', 850000);
insert into developers
values (5, 'Steven', 860000);
insert into developers
values (6, 'John', 870000);

insert into developers
values (4, 'Maria', 120000);
insert into testers
values (1, 'Steven', 110000);
insert into testers
values (2, 'Adam', 105000);
insert into testers
values (3, 'Lex', 100000);

commit work;

select *
from developers;
select *
from TESTERS;

-------------------------------------
select *
from developers
union
select *
from TESTERS;

select *
from developers
union all
select *
from TESTERS;
-----------------------------------------

select NAMES
from TESTERS
union
select NAMES
from DEVELOPERS;

select NAMES
from TESTERS
union all
select NAMES
from DEVELOPERS;

---------minus-----------------------
select *
from developers
minus
select *
from TESTERS;

select NAMES
from TESTERS
union all
select NAMES
from DEVELOPERS;

-----------------------------------

select *
from developers
intersect
select *
from TESTERS;

select NAMES
from TESTERS
intersect
select NAMES
from DEVELOPERS;

