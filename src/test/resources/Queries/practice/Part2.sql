select * from employees;

-- 1. display full addresses from locations table in a single column
select STREET_ADDRESS||', '||POSTAL_CODE||' '||CITY||' '||COUNTRY_ID
as Full_Addresses from  LOCATIONS;

-- 2. display all informations of the employee who has the minimum salary in employees table
select * from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES);

-- 3. display the second minimum salary from the employees
select min(SALARY) from EMPLOYEES
where SALARY>(select min(SALARY) from EMPLOYEES);

-- 4. display all informations of the employee who has the second minimum  salary
select * from EMPLOYEES
where SALARY=(select min(SALARY) from EMPLOYEES
                                 where SALARY>(select min(SALARY) from EMPLOYEES));

-- 5. list all the employees who are making above the average salary;
select * from EMPLOYEES
where SALARY>(select avg(SALARY) from EMPLOYEES)
order by SALARY asc;

-- 6. list all the employees who are making less than the average salary
select * from EMPLOYEES
where SALARY<(select avg(SALARY) from EMPLOYEES)
order by SALARY desc;

-- 7. display manager name of 'Neena'
select * from EMPLOYEES
where EMPLOYEE_ID in(select MANAGER_ID from EMPLOYEES
                                       where FIRST_NAME='Neena');


-- 8. find the 3rd maximum salary from the employees table (do not include duplicates)
select * from EMPLOYEES
where SALARY=(select min(SALARY) from (select distinct SALARY from EMPLOYEES
                                                              order by SALARY desc)
                                where ROWNUM <= 3);

-- 9. find the 5th maximum salary from the employees table (do not include  duplicates)
select * from EMPLOYEES
where SALARY = (select min(SALARY) from(select distinct SALARY from EMPLOYEES
                                                               order by SALARY desc )
                                  where rownum <= 5);


-- 10. find the 7th maximum salary from the employees table (do not include duplicates)
select * from EMPLOYEES
where SALARY=(select min(SALARY) from(select distinct SALARY from EMPLOYEES
                                                             order by SALARY desc)
                                 where ROWNUM <= 7);

-- 11. find the 10th maximum salary from the employees table (do not include duplicates)
select *
from EMPLOYEES
where SALARY=(
    select min(SALARY)
    from (
        select distinct SALARY
        from EMPLOYEES
        order by SALARY
        desc
         )
    where ROWNUM <= 10
    );

select * from EMPLOYEES;

-- 12. find the 3rd minimum salary from the employees table (do not include duplicates)
select * from EMPLOYEES
where SALARY=(select max(SALARY) from(select distinct SALARY from EMPLOYEES
                                                             order by SALARY asc )
                                 where ROWNUM <= 3);






-- 13. find the 5th minimum salary from the employees table (do not include duplicates)
select * from EMPLOYEES
where SALARY=(select max(SALARY) from(select distinct SALARY from EMPLOYEES
                                                             order by SALARY asc )
                                 where ROWNUM <=5);


-- 14. find the 7th maximum salary from the employees table (do not include duplicates)
select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY) where ROWNUM <=5;


-- 15. find the 10th maximum salary from the employees table (do not include duplicates)