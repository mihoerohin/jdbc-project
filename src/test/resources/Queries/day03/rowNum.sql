select * from employees     -- show me first 10 rows
where ROWNUM<=10;


select * from employees    -- show me first 5 biggest salary
where ROWNUM<6
order by SALARY desc;

select * from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM<6;


select * from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<6;


select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<6;

select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<214; -- min salary

