-- select * from employees
-- select * from departments
-- select * from projects
-- select * from project_assignments

-- select * from employees e where exists (select 1 from project_assignments pa where pa.emp_id = e.emp_id )
-- select * from employees e where (hire_date , job_title) in (select assigned_date , role from project_assignments)
-- select * from employees e where  exists
-- (select 1 from project_assignments pa where e.hire_date = pa.assigned_date and e.job_title = pa.role )

-- select * from employees where salary > (select avg(salary) from employees)
-- Find employees working in the same department as ‘Amit’.
-- select * from employees where  in
-- (select * from departments where deptid in (select dept_id from employees where firstname = 'Robert'))

-- select * from employees where salary > all
-- -- (select salary from employees where dept_id = 10)
-- (select salary from employees where dept_id in (select deptid from departments where dept_name = 'Development'))


 -- select * from employees where dept_id in(select deptid from departments where dept_name in ( 'Development' , 'Marketing'))
 -- select * from employees where salary in (select max(salary) from employees)
 
-- select * from employees where (dept_id , salary )in (select dept_id ,max(salary) from employees group by dept_id)
-- select * from employees e1 where salary = (select max(salary) from employees e2 where e1.dept_id = e2.dept_id)

-- select * from employees where salary > (select avg(salary) from employees)
 -- select * from employees where dept_id in (select deptid from departments where dept_name = 'Sales')