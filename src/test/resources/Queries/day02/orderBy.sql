select * from EMPLOYEES
order by SALARY;     --from lower to high

select * from EMPLOYEES
order by SALARY asc;    --from lower to high

select * from EMPLOYEES
order by SALARY desc;    --from high to  lower

select * from  EMPLOYEES
order by 8;

select EMAIL, FIRST_NAME from EMPLOYEES
order by 2;

select  * from EMPLOYEES
where EMPLOYEE_ID < 120
order by FIRST_NAME;


select  * from EMPLOYEES
order by FIRST_NAME , LAST_NAME desc ;
