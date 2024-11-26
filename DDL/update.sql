use company_db;

select * from employees;

-- SET: Define new values for the specified columns.
update employees
set salary= salary*1.5
where department_id=2;

select * from employees;

alter table employees add salary_new int;

update employees
set salary_new= salary*2;

-- WHERE: Specify the condition to update only certain records.

alter table employees
rename column surname to last_name;
update employees
set last_name= 'Black'
where employee_id=3;

select* from employees;