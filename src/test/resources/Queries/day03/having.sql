select JOB_ID, avg(SALARY) from employees
group by JOB_ID
having avg(SALARY)>5000
order by 2;


select JOB_ID, avg(SALARY) from employees
group by JOB_ID
having avg(SALARY)<5500
order by 2;

select DEPARTMENT_ID, count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*)>5
order by 2 desc;


select FIRST_NAME, count(*) from EMPLOYEES
group by FIRST_NAME
having count(*)>1
order by 2;

select LAST_NAME, count(*) from  EMPLOYEES
group by LAST_NAME
having count(*)>1;





