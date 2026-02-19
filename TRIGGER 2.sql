-- create or replace function salary_valid() 
-- returns trigger
-- as $$
-- begin 
--  if new.salary <= old.salary then raise exception 'new_salary should be greater than old_salary';
--  end if;
--  return new;
-- end ;
-- $$ language plpgsql ;

-- create or replace trigger salarv
-- before update on employees
-- for each row 
-- execute function salary_valid()

-- update employees set salary = 700000 where emp_id = 4 returning * 

-- select * from employee

-- create or replace function a ()
-- returns trigger 
-- as $$ 
-- begin 

-- end ;
--  $$ language plpgsql ;

--  create or replace trigger b 
--  before update on up 
--  for each row
--  execute function a 

 -- update
 

-- create table log_data ( log_id serial primary key , operation varchar , tablename varchar , olddata json 
-- ,newdata json , optime timestamp default current_timestamp, username varchar )

-- create or replace function log_in ()
-- returns trigger 
-- as $$ 
-- begin
--  insert into  log_data (operation , tablename ,olddata, newdata, username ) values
--          ( TG_op , TG_table_name , row_to_json(old) , row_to_json (new) , current_user );
--  return new;
-- end ;
--  $$ language plpgsql ;

--  create or replace trigger log_change
--  before update or insert or delete on departments
--  for each row
--  execute function log_in ()

--  insert into departments values ( 21 , 'ankit')
--  DELETE from employees where emp_id = 21
-- select * from log_data
-- SELECT * FROM EMPLOYEES




-- create table  tab( id serial primary key , operation varchar , tablename varchar ,tim timestamp default current_timestamp
-- ,olddata json , newdata json , username  varchar)


-- create or replace function tab_f ()
-- returns trigger as $$ begin 
--  insert into tab ( operation , tablename , olddata , newdata , username) 
--  values ( TG_OP , TG_table_name , row_to_json(old) , row_to_json(new) , current_user  );
--  return new;
-- end ;$$ language plpgsql ;


-- create or replace trigger tab_tri
-- before update or insert or delete on departments
-- for each row 
-- execute function tab_f()

-- insert into departments values( 42 ,'hhhh' )
-- delete from departments where deptid = 42
-- update departments
-- set dept_name = 'nano'
-- where dept_name = 'hhhh'

-- select * from tab
-- select * from departments




