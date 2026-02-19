
-- select * from Employee_d

-- select department, fullname ,
-- count(*) over (partition by department) as c_dep from Employee_d 


-- select department, fullname ,annual_salary,
-- row_number() over (partition by department order by annual_salary desc) as c_dep from Employee_d

-- select department, fullname ,annual_salary,
-- dense_rank() over (partition by department order by annual_salary desc) as c_dep from 

-- select department, fullname ,annual_salary,
-- max(annual_salary) over (partition by department ) as c_dep from Employee_d 

-- select * from(
-- select department , fullname ,annual_salary,
-- dense_rank() over (partition by department order by annual_salary desc  ) as dense
-- from Employee_d 

-- ) t where dense = 3

-- select department, fullname , annual_salary ,
-- max(annual_salary) over (partition by annual_salary order by annual_salary desc) from Employee_d


-- select * from (
-- select department, fullname , annual_salary ,
-- dense_rank () over (partition by department order by annual_salary desc) as den
-- from Employee_d

-- )t 
-- where den <= 3

-- select * from (
-- select department , fullname , annual_salary,
-- dense_rank() over (partition by department order by annual_salary) as d
-- from Employee_d
-- ) t
-- where d <= 3

-- select * from (
-- select department , fullname , annual_salary ,
-- rank() over (partition by department order by annual_salary desc) as d
-- from Employee_d
-- )t where d <= 3
-- select departnet , fullname,

-- select department , fullname , annual_salary ,
-- row_num() over (partition by department order by annual_salary desc) as d
-- from Employee_d
-- ==========================================
-- select * from  (
-- select department , fullname,
-- dense_rank () over (partition by department order by  annual_salary desc) as d 
--  from Employee_d 
-- )t where d = 2 

-- select * from (
-- select department , fullname , annual_salary ,
-- dense_rank () over (partition by department order by annual_salary desc) as dense
-- from Employee_d

-- )t where dense <= 3







-- select department, fullname , annual_salary from Employee_d  order by annual_salary desc limit 1 offset 1


-- select department, fullname , annual_salary from Employee_d e 
-- where annual_salary = 
-- (select max( annual_salary) from Employee_d where department = e.department 
-- and annual_salary < ( select department, max( annual_salary) from Employee_d 
-- where department = e.department )
-- )


-- (( select department, max( annual_salary) from Employee_d group by department ) and
-- ( select department, max( annual_salary) from Employee_d group by department  and
-- annual_salary < ( select department, max( annual_salary) from Employee_d group by department )
-- ))



-- select distinct annual from(
-- select 
-- max(annual_salary) over() as annual from Employee_d
-- )t 


-- SELECT DISTINCT max_salary
-- FROM (
--     SELECT MAX(annual_salary) OVER () AS max_salary
--     FROM Employee_d
-- ) t;

-- select * from(
-- select  annual_salary ,
-- dense_rank () over (order by annual_salary desc ) as a from Employee_d
-- ) t where a = 2


select * from(
select department , fullname , annual_salary,
dense_rank () over (partition by department order by annual_salary desc) as high_paid from Employee_d
) t where high_paid <= 3