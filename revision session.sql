-- create or replace function int_value( a int)
-- returns int
-- as $$
-- begin 
--     return (a);
-- end;
-- $$ language plpgsql ;

-- select int_value(12)


-- create or replace function bool_retu(a int)
-- returns bool
-- as $$
-- begin
-- return a % 2= 0 ;
-- end;
-- $$ language plpgsql;

-- select bool_retu(10)

-- create or replace function tex(a text)
-- returns text
-- as $$
-- begin
-- return initcap(a);
-- end ;
-- $$ language plpgsql ;
-- select tex('anarkali')

-- drop function emp
-- create or replace function emp()
-- returns table (empid int, empname varchar ,job varchar , sal int)
-- as $$
-- begin
--  return query 
--  select emp_id , firstname , job_title , salary from employees ;
-- end;
-- $$ language plpgsql ;

-- select * from emp() 



-- create or replace function use_set ()
-- returns setof employees
--  as $$
--  begin
--   return query 
--   select * from employees;
--  end;
--  $$ language plpgsql;


-- select * from use_set()



create or replace

