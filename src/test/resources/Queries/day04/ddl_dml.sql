select  * from employees;

create table scrumteam(
    employee_ID INTEGER primary key ,      --empid is Employees --> not null and unique
    firstname varchar(30) not null,  --can't be null
    jobtitle varchar(20) not null,   --can't be null
    age integer,                     --there is no constraints
    salary integer                   --there is no constraints
    );

insert into scrumteam(employee_ID, firstname, jobtitle, age, salary)
values (1, 'Mike', 'Tester', 34, 100000);

insert into scrumteam(employee_ID, firstname, jobtitle, age, salary)
values (2, 'Janna', 'PO', 31, 160000);

insert into scrumteam(employee_ID, firstname, jobtitle, age, salary)
values (3, 'Alex', 'Developer', 33, 160000);

select * from scrumteam;

update scrumteam
set salary = salary+111
where jobtitle='Tester';

update scrumteam
set age=34, salary=130000
where firstname='Mike';

update scrumteam
set salary=100000
where firstname='Alex';

select * from scrumteam;

delete scrumteam
where firstname='Alex';

commit;



alter table scrumteam
ADD gender varchar(20);


select * from scrumteam;

update scrumteam
set gender = 'male'
where firstname='Mike';

update scrumteam
set gender = 'female'
where firstname='Janna';

alter table  scrumteam
rename column salary to annual_salary;

alter table scrumteam
drop column gender;

alter table scrumteam
rename to ajileteam;

select * from ajileteam;

truncate table ajileteam;  --delete all content/data

drop table  ajileteam;    --delete table

commit ;
















