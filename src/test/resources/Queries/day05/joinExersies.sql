select * from employees;

select * from employees;
select * from DEPARTMENTS;

select FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES e inner join DEPARTMENTS d
     on e.DEPARTMENT_ID = d.DEPARTMENT_ID;


select FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES e right join DEPARTMENTS d
  on e.DEPARTMENT_ID = d.DEPARTMENT_ID;


select FIRST_NAME, DEPARTMENT_NAME from DEPARTMENTS d right join EMPLOYEES E
    on d.DEPARTMENT_ID = E.DEPARTMENT_ID;


select FIRST_NAME, DEPARTMENT_NAME from  EMPLOYEES E left join DEPARTMENTS d
on d.DEPARTMENT_ID = E.DEPARTMENT_ID;


select FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES e  full join DEPARTMENTS d
on e.EMPLOYEE_ID = d.MANAGER_ID;



select * from COUNTRIES;
select * from LOCATIONS;

select  CITY,  COUNTRY_NAME
from LOCATIONS l inner join COUNTRIES c
 on l.COUNTRY_ID = c.COUNTRY_ID;

select  CITY,  COUNTRY_NAME
from LOCATIONS l left join COUNTRIES c
       on l.COUNTRY_ID = c.COUNTRY_ID;


select  COUNTRY_NAME, CITY
from COUNTRIES c left join LOCATIONS l
      on c.COUNTRY_ID = l.COUNTRY_ID;



select * from DEPARTMENTS;
select * from LOCATIONS;

select DEPARTMENT_NAME, STREET_ADDRESS
from DEPARTMENTS d inner join LOCATIONS e
on d.LOCATION_ID = e.LOCATION_ID;

select DEPARTMENT_NAME, STREET_ADDRESS
from DEPARTMENTS d full join LOCATIONS e
on d.LOCATION_ID = e.LOCATION_ID;



select * from DEPARTMENTS;
select * from EMPLOYEES;
select * from LOCATIONS;

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, city
from EMPLOYEES e inner join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
inner join LOCATIONS l
on d.LOCATION_ID  = l.LOCATION_ID;


select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, city
from EMPLOYEES e left join DEPARTMENTS d
                            on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                 left join LOCATIONS l
                            on d.LOCATION_ID = l.LOCATION_ID;


select * from DEPARTMENTS;
select * from EMPLOYEES;
select * from LOCATIONS;
select * from COUNTRIES;

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, city, COUNTRY_name
from EMPLOYEES e inner join DEPARTMENTS d
   on e.DEPARTMENT_ID = d.DEPARTMENT_ID
inner join LOCATIONS l
   on d.LOCATION_ID = l.LOCATION_ID
inner join COUNTRIES s
   on l.COUNTRY_ID = s.COUNTRY_ID;



select * from DEPARTMENTS;
select * from EMPLOYEES;
select * from LOCATIONS;
select * from COUNTRIES;

select CUSTOMER_ID, FIRST_NAME, LAST_NAME, customer.ADDRESS_ID, ADDRESS.ADDRESS_ID, PHONE
from CUSTOMER left join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where CUSTOMER.ADDRESS_ID is null;


select CUSTOMER_ID, FIRST_NAME, LAST_NAME, customer.ADDRESS_ID, ADDRESS.ADDRESS_ID, PHONE
from CUSTOMER full join ADDRESS
                        on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where CUSTOMER.ADDRESS_ID is null or CUSTOMER.ADDRESS_ID is null ;



select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, city, COUNTRY_name
from EMPLOYEES e inner join DEPARTMENTS d
                            on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                 inner join LOCATIONS l
                            on d.LOCATION_ID = l.LOCATION_ID
                 inner join COUNTRIES s
                            on l.COUNTRY_ID = s.COUNTRY_ID
where COUNTRY_NAME='United Kingdom';


select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, city, COUNTRY_name
from EMPLOYEES e inner join DEPARTMENTS d
                            on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                 inner join LOCATIONS l
                            on d.LOCATION_ID = l.LOCATION_ID
                 inner join COUNTRIES s
                            on l.COUNTRY_ID = s.COUNTRY_ID
where FIRST_NAME='Lisa';

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, city, COUNTRY_name
from EMPLOYEES e inner join DEPARTMENTS d
                            on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                 inner join LOCATIONS l
                            on d.LOCATION_ID = l.LOCATION_ID
                 inner join COUNTRIES s
                            on l.COUNTRY_ID = s.COUNTRY_ID
where LAST_NAME='Lee';

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, city, COUNTRY_name
from EMPLOYEES e inner join DEPARTMENTS d
                            on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                 inner join LOCATIONS l
                            on d.LOCATION_ID = l.LOCATION_ID
                 inner join COUNTRIES s
                            on l.COUNTRY_ID = s.COUNTRY_ID
where DEPARTMENT_NAME='IT';

select COUNTRY_name, count(*)
from EMPLOYEES e inner join DEPARTMENTS d
                            on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                 inner join LOCATIONS l
                            on d.LOCATION_ID = l.LOCATION_ID
                 inner join COUNTRIES s
                            on l.COUNTRY_ID = s.COUNTRY_ID
group by COUNTRY_NAME
order by 2;


