select * from employees;


select * from JOBS
where JOB_TITLE='President' or JOB_TITLE='Sales Manager' or JOB_TITLE='Finance Manager';

select * from JOBS
where JOB_TITLE in ('President', 'Sales Manager', 'Finance Manager');

select * from DEPARTMENTS
where MANAGER_ID is null;


select * from LOCATIONS
where COUNTRY_ID not in  ('US', 'UK');

select * from LOCATIONS
where COUNTRY_ID in  ('US', 'UK');

select * from COUNTRIES
where REGION_ID=1 and COUNTRY_NAME != 'Belgium';  /* not equal  <>  */

select * from COUNTRIES
where REGION_ID=1 and COUNTRY_NAME not in ('Belgium');   /* not equal  <>  */

select * from COUNTRIES
where REGION_ID=1 and COUNTRY_NAME <> 'Belgium';    /* not equal  <>  */




