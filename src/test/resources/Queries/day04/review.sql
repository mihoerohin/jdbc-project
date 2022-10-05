select distinct salary from Employees order by salary desc;

select min(SALARY) from (select distinct SALARY
                         from EMPLOYEES
                         order by SALARY desc )
where ROWNUM<4;



select distinct  SALARY
from EMPLOYEES
order by SALARY asc ;



select * from (select distinct  SALARY
               from EMPLOYEES
               order by SALARY asc )
         where ROWNUM<4;



select max(SALARY) from (select distinct  SALARY
               from EMPLOYEES
               order by SALARY asc )
where ROWNUM<4;


select * from EMPLOYEES
where  SALARY=(select  max(SALARY) from
(select distinct SALARY from EMPLOYEES order by SALARY asc) where ROWNUM<4);






