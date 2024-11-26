use company_db;

select * from employees;

select concat(first_name, ' ', last_name) as full_name from employees;
select substring(first_name, 1, 3) as short_name from employees;
select length(first_name) as name_length from employees;
select upper(first_name) as upper_name from employees;
select lower(first_name) as lower_name from employees;
select trim(' john ') as trimmed_name;