use company_db;

select * from employees;

create index idx_employee_name on employees (last_name);
create unique index idx_unique_email on employees (email);
create fulltext index idx_fulltext_bio on employees (first_name);

drop index idx_employee_name on employees;