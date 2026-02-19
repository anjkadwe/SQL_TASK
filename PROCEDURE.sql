-- create or replace procedure hello()
-- language plpgsql 
-- as $$
-- begin
--  raise notice 'hello everyone';
-- end ;
-- $$;

-- call hello()


-- create or replace procedure house( in name varchar)
-- language plpgsql
-- as $$
-- begin
-- raise notice 'hello %' ,name ;
--  end ;
--   $$;

  -- call house ('shama')

--   create or replace procedure addition ( in a int ,in b int)
--   language plpgsql 
--   as $$ 
--   begin
--   raise notice 'addition between a and b , a + b = % + % = % ' , a ,b  , a + b;
--   end ;
--   $$;

-- call addition ( 2 ,4)


-- create or replace procedure emp_c( in  id int , out name varchar , out sal int)
-- language plpgsql 
-- as $$
-- begin
-- select firstname , salary  into name , sal from employees where emp_id = id;
-- end ;
-- $$ 
-- call emp_c (2 , null,null)


  
-- create or replace procedure em( in  a int , inout job  varchar default null)
-- language plpgsql 
-- as $$
-- begin
-- select job_title  into  job from employees where emp_id = a;
-- end ;
-- $$ 
-- call em (8)

-- create or replace procedure data_add ( in id int , in name varchar , in lac varchar , in budget int)
-- language plpgsql 
--  as $$ 
--  begin
-- insert into departments ( deptid , dept_name , location , budget )values  ( id , name , lac , budget );
--  end;
--  $$;

--  call data_add ( 46 , 'fur' ,'nagpur' ,23000 )
 -- select * from departments
 
-- create or replace procedure delete_data ( in id int )
-- language plpgsql 
-- as $$ 
--  begin 
--  delete from departments where deptid = id;
--  end;
--  $$

-- call delete_data( 46)


-- create or replace procedure dep_check( in id int , in name text)
-- language plpgsql
-- as $$
-- begin
-- delete from  name where deptid = id;

-- end ;
-- $$
-- -- select * from departments
-- call dep_check(110 , departments)

-- ==================== chat gpt=================
-- create or replace procedure dep_chec(in p_id int,in p_table text   -- yahan table ka naam aayega)
-- language plpgsql
-- as $$
-- begin
--     execute format('delete from %I where deptid = $1', p_table)
--     using p_id;
-- end;
-- $$;

-- call dep_chec(110, 'departments');
-- select * from departments
-- ==========================================================================================================================================
