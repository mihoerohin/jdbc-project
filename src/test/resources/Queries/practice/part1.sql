select * from employees;

-- 1. List all the employees first and last name with their salary in employees table
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES;

-- 2. How many employees have salary less than 5000?
select * from EMPLOYEES
where SALARY<5000;

-- 3. How many employees have salary between 6000 and 7000?
select * from employees
where SALARY between 6000 and 7000;

-- 4. List all the different region_ids in countries table
select REGION_ID from COUNTRIES;

-- 5. display the salary of the employee Grant Douglas (lastName: Grant, firstName: Douglas)
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME='Douglas' and LAST_NAME='Grant';

-- 6. display all department information from departments table
-- if the department name values are as below
-- IT , Public Relations , Sales , Executive
select * from DEPARTMENTS
where DEPARTMENT_NAME in ('IT','Public Relations', 'Sales', 'Executive');

-- 7. display the maximum salary in employees table
select * from employees
where SALARY = (select max(SALARY) from EMPLOYEES);

select max(SALARY) from EMPLOYEES;

-- 8. display the the minimum salary in employees table
select  * from EMPLOYEES
where SALARY=(select min(SALARY) from EMPLOYEES);

select min(salary) from EMPLOYEES;

-- 9. display the average salary of the employees;
select avg(SALARY) from EMPLOYEES;

-- 10. count the total numbers of the departments in departs table
select count(*) from EMPLOYEES; --107

-- 11. sort the start_date in ascending order in job_history's table
select * from JOB_HISTORY
order by START_DATE asc;

select * from JOB_HISTORY
order by END_DATE asc ;

-- 12. sort the start_date in descending order in job_history's table
select * from JOB_HISTORY
order by START_DATE desc ;

select * from JOB_HISTORY
order by END_DATE desc ;

-- 13. display all records whose last name contains 2 lowercase 'a's
select LAST_NAME from EMPLOYEES
where LAST_NAME like '%a%a%';  --contains 2'a' in last name

select LAST_NAME from EMPLOYEES
where LAST_NAME like '%a%a%a%'; --contains 3'a' in last name


-- 14. display all the employees whose first name starts with 'A'
select * from EMPLOYEES
where LAST_NAME like 'A%';

-- 15. display all the employees whose job_ID contains 'IT'
select * from EMPLOYEES
where JOB_ID like '%IT%';

-- 16. display all  unique job_id that end with CLERK in employee table
select * from JOBS
where JOB_ID like '%CLERK';

-- 17.display all  employees first name starts with A and have exactly 4 characters Total
select * from EMPLOYEES
where FIRST_NAME like 'A___';

-- 18. display all the employees whose department id in 50, 80, 100
select * from EMPLOYEES
where DEPARTMENT_ID in (50, 80, 100);

-- 19. display all employees who does not work in any one of these department id 90, 60,  100, 130, 120
select * from EMPLOYEES
where DEPARTMENT_ID is null;

select * from EMPLOYEES
where DEPARTMENT_ID is not null ;

-- 20. divide employees into groups by using thier job id

-- 1 display the maximum salaries in each groups
-- 2 display the minium salaries in each groups
-- 3 display the average salary of each group
-- 4 how many employees are there in each group that have minimum salary of 5000 ?
-- 5 display the total budgests of each groups

-- 21. display all job_id and average salary who work as any of these jobs IT_PROG,SA_REP, FI_ACCOUNT, AD_VP


-- 22.display max salary  for each department


-- 23. display total salary for each department except department_id 50, and where  total salary >30000