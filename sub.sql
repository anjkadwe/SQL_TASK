select * from departments
-- select * from employees
select * from employees where deptid in 
( select dept_name from departments where location in ('New York', 'Miami'))