use company_db;

set transaction isolation level serializable;

select * from employees;

start transaction;

update employees
set salary= salary+1000
where department_id= 2;

commit;

select * from employees;