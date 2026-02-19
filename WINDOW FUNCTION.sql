-- select emp_id , firstname , lastname , hire_date ,job_title, salary,
-- -- avg(salary) over ()
-- avg(salary) over (partition by job_title)
-- from employees 

-- select emp_id , firstname , lastname , hire_date ,job_title, salary,
-- count(salary) over ()
-- from employees 

-- select emp_id , firstname , lastname , hire_date ,job_title, salary,
-- cume_dist() over (order by salary)
-- from employees 
-- select emp_id , firstname , lastname , hire_date ,job_title, salary,
-- percent_rank() over (order by salary)
-- from employees 

-- select emp_id , firstname , lastname , hire_date ,job_title, salary,
-- -- sum(salary) over ()
-- sum(salary) over (partition by job_title)
-- from employees 

-- select emp_id , firstname , lastname , hire_date ,job_title, salary,
-- -- min(salary) over ()
-- min(salary) over (partition by job_title)
-- from employees 

-- select emp_id , firstname , lastname , hire_date , salary,
-- max(salary) over ()
-- from employees 

-- select emp_id , firstname , lastname , hire_date , salary,
-- (select avg(salary) from employees  )
-- from employees 

-- select emp_id , firstname , lastname , hire_date , job_title , salary,
-- row_number() over(partition by job_title order by salary) from employees

-- select emp_id , firstname , lastname , hire_date , job_title , salary,
-- rank() over( order by salary) from employees 

-- select emp_id , firstname , lastname , hire_date , job_title , salary,
-- dense_rank() over( order by salary) from employees 

-- select emp_id , firstname , lastname , hire_date , job_title , salary,
-- ntile(3) over()
--  from employees
-- select * from 
-- (select emp_id , firstname , lastname , hire_date , job_title , salary,
-- ntile(3) over() as sec
--  from employees
-- )t where sec = 1


-- select* from
-- (select emp_id , firstname , lastname , hire_date , job_title , salary,
-- dense_rank() over( order by salary desc )as sec from employees 
-- ) t where sec <= 3

-- select* from
-- (select emp_id , firstname , lastname , hire_date , job_title , salary,
-- row_number() over( order by salary desc )as sec from employees 
-- ) t where sec <=3

-- select emp_id , firstname , lastname , hire_date , job_title , salary ,
-- first_value (salary) over( partition by hire_date order by hire_date)
-- from employees

-- select emp_id , firstname , lastname , hire_date , job_title , salary ,
-- last_value (salary) over( order by hire_date desc )
-- from employees

-- select emp_id , firstname , lastname , hire_date , job_title , salary ,
-- lead(salary) over()
-- from employees

-- select emp_id , firstname , lastname , hire_date , job_title , salary ,
-- lag(salary) over(order by hire_date )
-- from employees

-- select emp_id , firstname , lastname , hire_date , job_title , salary ,
-- lag(salary,2 ) over(order by hire_date )
-- from employees
-- select emp_id , firstname , lastname , hire_date , job_title , salary ,
-- lead(salary,2 ) over(order by hire_date )
-- from employees

-- select emp_id , firstname , lastname , hire_date , job_title , salary ,
-- avg(salary) over(rows between unbounded preceding and current row )
-- -- from employees
-- select emp_id , firstname , lastname , hire_date , job_title , salary ,
-- sum(salary) over(rows between unbounded preceding and current row )
-- from employees
-- select emp_id , firstname , lastname , hire_date , job_title , salary ,
-- min(salary) over(rows between unbounded preceding and current row )
-- from employees


-- select salary,job_title,
-- NTH_VALUE(salary, 2) OVER (
-- PARTITION BY job_title ORDER BY salary DESC)
-- from employees

-- select job_title ,salary,
-- salary - lead (salary) over(partition by job_title order by salary desc) from employees

-- select job_title , salary,lag(salary) over ( partition by job_title order by salary desc) - salary from employees


