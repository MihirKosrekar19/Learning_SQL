use company_db;

-- LIMIT: Restrict the number of rows returned.
select * from employees limit 3;

-- OFFSET: Skip a specified number of rows.
select * from employees limit 3 offset 2;