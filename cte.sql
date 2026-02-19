-- with empcts as 
-- (select e.emp_id ,d.deptid , hire_date ,firstname , lastname , bonus , e.salary , salary_date from employees e 
-- join departments d on e.dept_id = d.deptid 
-- join salaries s on s.emp_id = e.emp_id
-- join projects p on p.dept_id = d. deptid
-- join project_assignments pa on pa.project_id = p.project_id)
-- select * from empcts where salary > 100000

-- update  empcts
-- set e.salary = 10000
-- where e.emp_id = 2 ============no

-- select * from empcts where salary > 65000


-- with dept_avg as (select dept_id , avg(salary) as avg_salary from employees group by dept_id),
-- emp_diff as
-- ( select emp_id , firstname , lastname , job_title , salary - avg_salary as diff_salary from employees e join dept_avg d on e.dept_id = d.dept_id)

-- select firstname, lastname , diff_salary ,
-- case
-- when diff_salary < 0 then 'below salary'
-- when diff_salary > 0 then 'above salary'
-- else 'same' end

-- from emp_diff
