-- select * from employees

-- create or replace function emp_data()
-- returns table (empid int , firstn varchar, lastn varchar , hire date , dep varchar)
-- as $$ 
-- begin
-- return query
-- select emp_id , firstname , lastname ,hire_date , job_title from employees ;
-- end ;
-- $$ language plpgsql ;

-- select * from emp_data()


-- create or replace function use_where (id int)
-- returns table (empid int, firstME varchar, las varchar ,dep int , job varchar)
-- as $$ 
-- begin
--  return query
--  select emp_id , firstname , lastname  , dept_id , job_title from employees where dept_id = id;
-- end ;
-- $$ language plpgsql ;

-- select * from use_where (40)


-- SET OF 

-- create or replace function use_set ()
-- returns setof employees 
-- as $$ 
-- begin 
--  return query 
--  select * from employees ;
-- end ;
-- $$ language plpgsql ;

-- select * from use_set ()


-- create or replace function where_set (dname varchar)
-- returns setof employees 
-- as $$ 
-- begin 
--  return query 
--  select * from employees  where job_title = dname;
-- end ;
-- $$ language plpgsql ;

-- select * from where_set ('Developer')

-- SETOF RECORDS

-- create or replace function all_setrecord ()
-- returns setof record 
-- as $$
-- begin
--  return query
 -- select * from employees ;
-- end ;
-- $$ language plpgsql ;

-- select * from all_setrecord () as (id int , name varchar ,last varchar , dep int , man int , hire date ,job varchar , salar int)
-- select id , name from all_setrecord () as (id int , name varchar)

-- create or replace function upda_sal (id int , sal int)
-- returns void
-- as $$
-- begin
-- update employees set salary = sal where emp_id = id;
-- -- update employees set salary = salary * (1 + sal/100) where emp_id = id
--  raise notice 'employee id % update salary % ' , id ,sal;
-- end;
-- $$ language plpgsql;

-- select
-- upda_sal ( 4, 10000)



