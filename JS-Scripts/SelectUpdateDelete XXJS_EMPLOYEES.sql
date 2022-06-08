select * from xxjs_employees;

select upper(name) employee_name, hourly_rate, date_created 
from xxjs_employees order by hourly_rate desc;



update xxjs_employees
   set hourly_rate = 17,
       date_updated = sysdate
   where UPPER(name) = 'JOHN DOE';
   
   
delete from xxjs_employees
where employee_id = 1;


commit;