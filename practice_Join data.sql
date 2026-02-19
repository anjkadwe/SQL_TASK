-- create table Employees(
-- emp_id serial primary key,
-- firstname varchar,
-- lastname varchar,
-- dept_id int references Departments(deptid),
-- manager_id int,
-- hire_date date,
-- job_title varchar,
-- salary int
-- )

-- create table Salaries(
-- emp_id int references Employees(emp_id),
-- salary_date date,
-- salary int ,
-- bonus int,
-- performance_rating varchar
-- )

-- create table Departments(
-- deptid serial primary key ,
-- dept_name varchar,
-- location varchar,
-- budget int
-- )

-- create table Projects(
-- project_id serial primary key ,
-- project_name varchar ,
-- dept_id int references Departments( deptid),
-- start_date date,
-- end_date date ,
-- budget int
-- )

-- create table Project_Assignments(
-- emp_id int references Employees(emp_id),
-- project_id int references Projects (project_id),
-- assigned_date date,
-- role varchar,
-- hours_per_week int
-- )

-- -- copy Employees from 'D:\Data for Joins\Employees Table.csv' delimiter ',' csv header
-- copy Salaries from 'D:\Data for Joins\Salaries Table.csv' delimiter ',' csv header
-- copy Departments from 'D:\Data for Joins\Departments Table.csv' delimiter ','csv header
-- copy Projects from 'D:\Data for Joins\Projects Table.csv' delimiter ',' csv header
-- copy Project_Assignments from 'D:\Data for Joins\Project_Assignments Table.csv' delimiter',' csv header
-- select * from Project_Assignments
-- select * from Projects

-- select * from Departments
-- select * from Salaries


-- select * from Departments d join Employees e on d.deptid = e.dept_id
-- join Salaries s on s.emp_id = e.emp_id
-- join Projects p on p.dept_id  = d.deptid 
-- join Project_Assignments pa on p.project_id = pa.project_id

 

-- select * from Departments d  Natural join Employees e 
-- select * from Departments d  cross join Employees e 
-- on d.deptid = e.dept_id



