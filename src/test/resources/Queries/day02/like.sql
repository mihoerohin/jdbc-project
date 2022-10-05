select * from employees;


select * from employees
where FIRST_NAME like 'M%';

select * from employees
where FIRST_NAME like 'M_____';

select * from EMPLOYEES
where FIRST_NAME like '__z__';

select * from EMPLOYEES
where FIRST_NAME like '%z%';

select * from EMPLOYEES
where FIRST_NAME like '_a%';

select * from EMPLOYEES
where FIRST_NAME like '%r';

select * from JOBS
where JOB_TITLE like '%Manager';

select count(*) from JOBS
where JOB_TITLE like '%Manager';

