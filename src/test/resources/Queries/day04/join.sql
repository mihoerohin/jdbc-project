select *
from EMPLOYEES;

select *
from CUSTOMER;
select *
from ADDRESS;

select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER
         inner join ADDRESS
                    on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;


select FIRST_NAME, LAST_NAME, ADDRESS.ADDRESS_ID, ADDRESS, PHONE
from CUSTOMER
         inner join ADDRESS
                    on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;


select FIRST_NAME, LAST_NAME, ADDRESS.ADDRESS_ID, CUSTOMER.ADDRESS_ID, PHONE
from CUSTOMER
         inner join ADDRESS
                    on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, ADDRESS, PHONE, ADDRESS
from CUSTOMER
         inner join ADDRESS
                    on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;


select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, C.ADDRESS_ID, PHONE, ADDRESS
from CUSTOMER A
         left outer join ADDRESS C
                         on A.ADDRESS_ID = C.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, C.ADDRESS_ID, PHONE, ADDRESS
from CUSTOMER A
         left join ADDRESS C
                   on A.ADDRESS_ID = C.ADDRESS_ID;


select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, C.ADDRESS_ID, PHONE, ADDRESS
from CUSTOMER A
         right outer join ADDRESS C
                          on A.ADDRESS_ID = C.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, C.ADDRESS_ID, PHONE, ADDRESS
from CUSTOMER A
         right outer join ADDRESS C
                          on C.ADDRESS_ID = A.ADDRESS_ID;



select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, C.ADDRESS_ID, PHONE, ADDRESS
from CUSTOMER A
         right join ADDRESS C
                    on A.ADDRESS_ID = C.ADDRESS_ID;


select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, C.ADDRESS_ID, PHONE, ADDRESS
from CUSTOMER A
         full join ADDRESS C
                   on A.ADDRESS_ID = C.ADDRESS_ID;

