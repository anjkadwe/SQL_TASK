-- -- -- 1️⃣ Find employees whose salary is greater than the average salary.
 -- select emp_name from employees where salary >(select avg(salary) from employees)

-- -- -- 2️⃣ Find the employee with the highest salary.
-- --  select * from employees where salary = (select max(salary) from employees)
 
-- -- -- 3️⃣ Find customers who never placed any order.
 -- select * from customers where customer_id not in (select customer_id from orders)
 
-- -- -- 4️⃣ Find employees who work in the IT department.
  -- select * from employees where dept_id in  (select dept_id from departments where dept = 'IT')

-- -- -- 5️⃣ Find employees whose salary is equal to the minimum salary.
-- --  select * from employees where salary = (select min( salary) from employees)

-- -- -- 6️⃣ Find employees who do not belong to any department listed in the department table.
 -- select * from employees where dept_id not in  (select dept from department )

-- -- -- 7️⃣ Find employees who earn more than their department’s average salary.
-- -- select * from employees where dept_id > in (select avg(salary) from department where c.dept_id = d.dept_id )

-- -- -- 8️⃣ Find the second highest salary.

-- -- -- 9️⃣ Find employees who are working on any project.

-- -- -- -- 🔟 Find departments that have more than 5 employees.

-- -- Multi-Row Subquery – One-Line Questions

-- -- 1️⃣ Find employees who work in departments located in Mumbai.

-- -- select * from employees where dept_id in (select dep_id from department where location = 'Mumbai')

-- -- 2️⃣ Find employees whose salary is equal to any salary of employees in the IT department.
--  -- select * from employees where salary = any  (select dept_id  from department where dept = 'IT')

-- -- select * from employee where salary any 
-- -- ( select salary from employees where dept_id in 
-- -- ( select dept_id from department where dep = 'IT'))

-- -- 3️⃣ Find customers who belong to cities where salary is greater than 60000.
-- -- select * from customers where city in (select city from customers where salary > 60000)

-- -- 4️⃣ Find employees who are working on any project.
--  -- select * from employees where emp_id in (select emp_id from projects)

-- -- 5️⃣ Find employees who do not work on any project.
--  -- select * from employees where emp_id not in (select emp_id from projects)

-- -- 6️⃣ Find employees whose department is in the list of departments having more than 3 employees.
-- -- select * from employees where dep_id in 
-- -- (select dep_id  from employees group by dep_id having count(emp_id)>3)

-- Multi-Column Subquery – One-Line Questions

-- 1️⃣ Find employees who have the same department and salary as any employee in the IT department.
-- select * from employees e1 where (dep_id , salary) in
-- ( select dep_id ,salary from employees e2 where dep_id = ( select dep_id from department where dep = 'IT'))

-- 2️⃣ Find customers who live in the same city and have the same salary as another customer.

-- 3️⃣ Find employees whose department and salary match the highest salary per department.

-- 4️⃣ Find products that have the same category and price as another product.

-- 5️⃣ Find employees whose department and join_date match employees who joined in 2022.
