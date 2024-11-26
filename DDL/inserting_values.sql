use company_db;

describe departments;
describe employees;
describe projects;
describe employee_projects;

insert into departments (department_name) values
('HR'),
('IT'),
('Sales'),
('Finance');

insert into employees (first_name, last_name, email, hiring_date, salary, department_id) values
('John', 'Doe', 'john.doe@example.com', '2021-01-15', 6000, 2),
('Jane', 'Smith', 'jane.smith@example.com', '2022-02-10', 4500, 1),
('Michael', 'Brown', 'michael.brown@example.com', '2020-06-25', 7500, 3),
('Emily', 'Davis', 'emily.davis@example.com', '2023-03-05', 5000, 2),
('Robert', 'Wilson', 'robert.wilson@example.com', '2019-11-12', 8000, 4);

insert into projects (project_name, start_date, end_date) values
('Project Alpha', '2022-01-01', '2022-12-31'),
('Project Beta', '2023-03-01', NULL),
('Project Gamma', '2022-06-01', '2023-05-31');

insert employee_projects (employee_id, project_id, role) values
(1, 1, 'Developer'),
(2, 1, 'HR Manager'),
(3, 2, 'Sales Lead'),
(1, 2, 'Developer'),
(4, 3, 'Developer'),
(5, 3, 'Finance Lead');

select * from departments;
select * from employees;
select * from projects;
select * from employee_projects;