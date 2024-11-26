use company_db;

alter table employees add date_of_birth date;	-- add column
select * from employees;

alter table employees drop column date_of_birth;	-- drop column
select * from employees;

alter table employees rename column last_name to surname;	-- rename column
select * from employees;

alter table employees add constraint chk_salary check (salary>1000);
select * from employees;

alter table employees drop constraint chk_salary;
select * from employees;

-- truncate table employees; -- Error Code: 1701. Cannot truncate a table referenced in a foreign key constraint (`company_db`.`employee_projects`, CONSTRAINT `employee_projects_ibfk_1`)
select * from employees;