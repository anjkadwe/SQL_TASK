-- select * from departments

-- create or replace function check_bug ()
-- returns trigger 
-- as $$
-- begin
--         if old.budget >= new.budget then raise exception 'budg should low';
-- 		end if ;
-- 		return new;
-- end ;
-- $$ language plpgsql ;

-- create or replace trigger check_tri
-- before update on departments
-- for each row 
-- execute function check_bug () 


-- update departments
-- set budget = 800000
-- where  deptid =  20
-- select * from departments
-- =============================================================================================================

-- create table add_table ( log_id serial primary key , username varchar , tablename varchar , 
-- operation varchar , olddata jsonb, newdata jsonb,   log_time timestamp default current_timestamp  )

-- create  or replace function ad_fun ()
-- returns trigger 
-- as $$ 
-- begin
--    insert into add_table( username , tablename , operation , olddata , newdata) values 
--    ( current_user , TG_table_name , TG_OP , row_to_json(old) , row_to_json(new) );
--    return new;
-- end ;
--  $$ language plpgsql ;

-- create or replace trigger add_tri
-- before update or insert or delete on departments
-- for each row 
-- -- for each statement 
-- execute function  ad_fun()

-- select * from departments
-- insert into departments values( 110,'anamika')
-- update departments
-- set budget = budget - 1000
-- -- where deptid = 10
-- select * from add_table

