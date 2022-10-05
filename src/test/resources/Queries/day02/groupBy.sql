select * from employees;

select  LOCATION_ID, count(*) from DEPARTMENTS
group by LOCATION_ID;

select COUNTRY_ID, count(*) from LOCATIONS
group by COUNTRY_ID
order by 2 asc;


select  REGION_ID, count(*) from COUNTRIES
group by REGION_ID
order by REGION_ID;


select MANAGER_ID, count(*) from EMPLOYEES
                            where MANAGER_ID is not null
group by MANAGER_ID
having count(*)>=8
order by MANAGER_ID;


