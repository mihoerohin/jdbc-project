select * from employees;


create view EmployeesInfo as
select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.'as initials,
       FIRST_NAME||' makes ' || SALARY as employees_salary from EMPLOYEES;


select * from EMPLOYEESINFO;

select initials from EMPLOYEESINFO;

select employees_salary from EMPLOYEESINFO;
