select * from employees;


select max(SALARY)from EMPLOYEES;

select * from EMPLOYEES
where SALARY=(select  max(SALARY) from EMPLOYEES);

select max(SALARY) from EMPLOYEES;

select max (Salary) from EMPLOYEES
where SALARY<24000;

select max(SALARY) from EMPLOYEES
where SALARY<(select max(SALARY) from EMPLOYEES);


select * from EMPLOYEES
where SALARY=(select max(SALARY)from EMPLOYEES
              where SALARY<(select max(SALARY) from EMPLOYEES));



select round(avg(SALARY)) from EMPLOYEES;   -- arg salary 6462

select * from EMPLOYEES
where SALARY>6462;

select * from EMPLOYEES                                   -- get more arg salary
where  SALARY>(select round(avg(SALARY)) from EMPLOYEES)
order by SALARY asc ;




