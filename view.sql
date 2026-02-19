 -- create view empview as select emp_id , firstname , lastname , job_title ,salary from employees

 -- select * from empview
 -- select * from employees

-- delete from  empview where lastname = 'Lee' =========not sucess on join because column me reference without ref sucess
-- update employees 
-- set salary = 40500
-- where emp_id = 3

-- update empview 
-- set salary = 400000
-- where emp_id = 4


-- create view vie as (select * from triger)
-- insert into triger values ( 1,'naman') ,( 2,'man') 
-- delete from vie where id = 1 returning *
-- select * from vie

-- create materialized view emp as select emp_id , firstname , lastname , job_title ,salary from employees

 select * from emp
select * from employees

-- update employees
-- set salary = 80000
-- where emp_id = 8
-- refresh materialized view emp 

-- update emp
-- set salary = 200000
-- where emp_id = 4 =============not change materialized view



create view dep as select * from employees e join departments d on e.dept_id = d.deptid

-- select * from dep

-- update dep set salary = 40000 where emp_id = 2

-- create view lim as select * from employees limit 10 










-- select * from lim

-- update lim set salary = 4000 where emp_id = 2


-- create temp table tem ( id int , name varchar)
-- insert into tem values (1, 'hema')

-- select *from tem

-- create temp table highsalary as select * from employees where salary >65000
-- select * from highsalary

-- select * from highsalary h join departments d on h.dept_id = d.deptid


 -- with emp_cte as ( select * from employees e join departments d on e.dept_id = d.deptid  
 -- join salaries s on e.emp_id = s.emp_id
 -- )
 -- select * from emp_cte where .salary > 65000 and bonus= 1500
