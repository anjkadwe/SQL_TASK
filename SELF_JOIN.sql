
-- with recursive sub_heir as (
-- select  emp_id , firstname , manager_id, 1 as level from employees where manager_id is null

-- union all

-- select  e.emp_id , e.firstname , e.manager_id, level + 1 from employees e join sub_heir s on e.manager_id = s.emp_id 

-- )
-- select * from sub_heir


-- select distinct e2.firstname as manager_name from 
-- employees e join employees e2 on e.manager_id = e2.emp_id

-- select * from 
-- employees e1 join employees e2 on e1.dept_id = e2.dept_id 

-- select * from 
-- employees e1 join employees e2 on e1.dept_id = e2.dept_id where e1.emp_id <> e2.emp_id

-- select * from 
-- employees e1 join employees e2 on e1.dept_id = e2.dept_id where not e1.emp_id = e2.emp_id


-- with recursive nur as(

-- select 1 as num

-- union all

-- select  num + 1  from nur where nur < 10
-- )

-- select * from nur 


-- with ctc as(
-- select emp_id ,firstname, manager_id ,array[1]  as path from employees where manager_id is null 

-- union all

-- select e.emp_id , e.firstname , e.manager_id  ,path + 1 from employees e join ctc c on c.emp_id = e.manager_id
-- )

-- select * from ctc

