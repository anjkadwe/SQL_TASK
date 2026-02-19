
-- CREATE TABLE employee (
--     emp_id INT,
--     emp_name VARCHAR(50),
--     department VARCHAR(30),
--     gender VARCHAR(10),
--     salary INT,
--     joining_date DATE
-- );
-- INSERT INTO employee VALUES
-- (1,'Rahul','HR','Male',50000,'2018-01-10'),
-- (2,'Neha','HR','Female',60000,'2019-03-15'),
-- (3,'Amit','HR','Male',60000,'2020-06-20'),

-- (4,'Rohan','IT','Male',70000,'2017-02-11'),
-- (5,'Pooja','IT','Female',70000,'2018-09-25'),
-- (6,'Ankit','IT','Male',80000,'2016-05-05'),

-- (7,'Kiran','Finance','Female',55000,'2019-07-12'),
-- (8,'Suresh','Finance','Male',65000,'2018-11-30'),
-- (9,'Meena','Finance','Female',65000,'2020-01-01'),

-- (10,'Arjun','Sales','Male',40000,'2021-04-10'),
-- (11,'Sneha','Sales','Female',45000,'2021-06-18'),
-- (12,'Vikas','Sales','Male',50000,'2019-12-01');

-- select salary,
-- lag (salary) over (order by salary desc)from employee
-- select salary,
-- FIRST_VALUE(salary) OVER (PARTITION BY department ORDER BY salary DESC) from employee

-- select salary,department,
-- NTH_VALUE(salary, 3) OVER (
-- PARTITION BY department ORDER BY salary DESC)
-- from employee

-- CUME_DIST() OVER (ORDER BY salary)
-- PERCENT_RANK() OVER (ORDER BY salary) 
-- FIRST_VALUE(salary) OVER (ORDER BY salary DESC) from employee

-- lead(salary) over (order by salary desc)from employee
-- SELECT  salary,
-- SUM(salary) OVER (
--   ORDER BY salary
--   ROWS BETWEEN CURRENT ROW AND CURRENT ROW
-- ) AS total
-- FROM employee;

-- select  salary,
-- sum(salary) over (order by salary desc
--     rows between  current row and current row
-- ) as tot from employee


-- select  emp_name ,salary,
-- max(salary) over (order by salary desc rows between 1 preceding and current row)
-- as preci
-- from employee
-- select  emp_name ,salary,
-- max(salary) over (order by salary desc rows between  current row and 1 following )
-- as preci
-- from employee


-- select department, emp_name , salary,
-- sum(salary) over (order by salary desc rows between unbounded preceding  and current row)
-- as un_pre
-- from employee
-- select department, emp_name , salary,
-- sum(salary) over (order by salary desc rows between  current row and unbounded following)
-- as un_pre
-- from employee





-- select * from(
-- select department,emp_name, salary,
-- dense_rank () over 
-- (partition by department order by salary desc) as high
-- from employee
-- ) t 
-- where high = 1


select department, salary,
salary - lag(salary) over () from employee
select department, salary,
salary - lag(salary) over (partition by department order by salary desc) from employee

-- select department , salary ,
-- lead(salary) over (partition by department ) - salary as hi
-- from employee

-- select department , emp_name ,salary,
-- first_value(salary) over() from employee 
-- select department , emp_name ,salary,
-- first_value(salary) over (partition by department order by salary desc) from employee



-- select department , salary,
-- avg(salary) over (partition by department order by salary desc) from employee


-- select emp_id ,salary,
-- row_number () over (order by salary desc)
-- from employee

-- select salary , 
-- rank () over (order by salary desc) from employee

-- select salary , 
-- dense_rank () over (order by salary desc) from employee

-- select emp_name , emp_id,salary ,
-- lag(salary) over (order by salary ) from employee
-- select emp_name , emp_id,salary ,
-- lead(salary) over (order by salary ) from employee

-- select department , salary,
-- dense_rank () over(partition by department order by salary desc)
-- as high
-- from employee

-- select * from(
-- select department , salary,
-- dense_rank () over(partition by department order by salary desc)
-- as high
-- from employee 
-- )t where high = 2


-- select emp_id , emp_name ,salary,
-- lag(salary) over ( partition by department order by salary ) from employee

-- select department, salary ,
-- lead(salary) over (partition by department order by salary) from employee


-- select  * from(
-- select department, salary,
-- dense_rank() over(partition by department order by salary desc) as high
-- from employee
-- )t where high <= 3


-- select salary,
-- sum(salary) over (order by salary desc rows between current row and unbounded following  ) as fo
-- from employee
-- SELECT emp_id,
--        emp_name,
--        salary,
--        SUM(salary) OVER (ORDER BY salary ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total
-- FROM employee;

-- select*from employee

