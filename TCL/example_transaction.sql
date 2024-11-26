use company_db;

select * from employees;

start transaction;

update employees
set salary= salary-100 where employee_id= 1;

update employees
set salary= salary+100 where employee_id= 2;

select * from employees;

rollback;

select * from employees;

commit;

select * from employees;

rollback;

select * from employees;