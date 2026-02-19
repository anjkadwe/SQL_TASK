-- select * from Employee_d

-- select fullname ,annual_salary from Employee_d where annual_salary = (select max(annual_salary) from Employee_d)
-- select fullname ,annual_salary from Employee_d order by annual_salary desc limit 1 

-- select fullname ,annual_salary from Employee_d order by annual_salary desc limit 1 offset 1


-- select fullname , annual_salary from Employee_d where annual_salary = 
-- (select distinct annual_salary from Employee_d order by annual_salary desc limit 1 offset 1)

-- select fullname , annual_salary from Employee_d where annual_salary = 
-- (select distinct annual_salary from Employee_d order by annual_salary limit 1)


-- select department , max(annual_salary) from Employee_d group by department
-- select department , fullname , annual_salary from Employee_d where annual_salary =
-- (select avg(annual_salary) from Employee_d)

-- select department , annual_salary from Employee_d e where annual_salary =
-- (select max (annual_salary) from Employee_d where empid = e.empid)

-- select department , annual_salary from Employee_d where( empid , annual_salary ) in 
-- (select empid , max(annual_salary) from Employee_d group by empid)


-- select distinct annual_salary from Employee_d order by annual_salary desc  offset 1 limit 1
-- where annual_salary = (select distinct annual)



-- select department , fullname , annual_salary from Employee_d e
-- where annual_salary = (select max(annual_salary) from Employee_d where department = e.department)
-- select department , fullname , annual_salary from Employee_d e
-- where (department ,annual_salary) in (select department, max(annual_salary) from Employee_d group by department)

-- select department , fullname , annual_salary from Employee_d e
-- where annual_salary =(select max (annual_salary) from Employee_d where department = e.department)
-- select department , fullname , annual_salary from Employee_d e
-- where annual_salary =
-- (select max (annual_salary) from Employee_d where department = e.department and
-- annual_salary < (select max (annual_salary) from Employee_d where department = e.department)
-- )
-- order by annual_salary desc limit 1 offset 1
-- select * from Employee_d




-- select department , fullname  from Employee_d 
-- where annual_salary = (select max(annual_salary) from Employee_d)

-- select department ,fullname , annual_salary  from Employee_d where annual_salary =
-- (select max(annual_salary) from Employee_d ) 



-- select max(annual_salary) from Employee_d
-- highest salary

-- select department ,annual_salary, fullname from Employee_d where annual_salary =(select max(annual_salary)from Employee_d)
-- highest salary employee

-- select department , fullname ,annual_salary from Employee_d order by annual_salary desc limit 1 offset 1
-- highet salary 2 employee

 -- select department , fullname , annual_salary from Employee_d e
 -- where annual_salary = (select max(annual_salary )from Employee_d  where department = e.department)
 -- select department , fullname , annual_salary from Employee_d
 -- where (department , annual_salary) in (select department , max(annual_salary) from Employee_d  group by department)
-- department wise highest sal emp


-- select department , fullname , annual_salary from Employee_d e
-- where annual_salary = (select max(annual_salary) from Employee_d where department = e.department
-- and annual_salary < (select max(annual_salary) from Employee_d where department = e.department)
-- )
-- department wise 2 highest sal emp

-- select department , fullname , annual_salary from Employee_d 
-- where annual_salary = (select distinct annual_salary from Employee_d order by annual_salary desc limit 1 offset 1)



-- order by annual_salary desc limit 1 offset 1
-- sec high sal but dublicate are avilable

-- select department, fullname, annual_salary
-- from Employee_d
-- where annual_salary = (
--     select distinct annual_salary
--     from Employee_d
--     order by annual_salary desc
--     limit 1 offset 1
-- );


-- select department , count(empid) from Employee_d group by department having count(empid) = 96
select department , fullname  from Employee_d where department in
(select count(empid) from Employee_d  
group by department 
having count(empid) = 96
)
-- select department  from Employee_d 

