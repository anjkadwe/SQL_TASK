
-- create or replace function eve_fun()
--  returns event_trigger 
--  as $$ 
--  begin 
--  if tg_tag = 'CREATE TABLE' then
--  raise notice 'nnnnnnnnnnnnnnnnnn';
--  end if;
--  end;
--  $$ language plpgsql ;

--  create event trigger eve_tri 
--  on ddl_command_start
--  execute function eve_fun()

 -- create table triger ( id int , name varchar)


 -- =================== DDL_COMMAND_END==============

--  create table creation ( id serial , name varchar , tag varchar)

--  create or replace function end_fun()
--  returns event_trigger
--  as $$ 
--  begin
--     insert into creation (name , tag ) values(current_user , TG_TAG) ;
--  end ;
--  $$ language plpgsql ;


-- create event trigger tri_end 
-- on ddl_command_end 
-- execute function end_fun()
 
 
--  create table demo ( id serial , name varchar )
--  create table d ( id serial , name varchar )
-- select * from creation
-- alter table demo 
-- rename name to username
-- drop table d

-- ================================ SQL_DROP=====================

-- create or replace function drop_fun()
-- returns event_trigger
-- as $$ 
-- begin
--        if tg_tag = 'DROP TABLE' then raise notice ' not drop table';
-- 	   end if ;
	   
-- end ;
-- $$ language plpgsql;

-- create event trigger drop_tri
-- on sql_drop
-- execute function drop_fun()

-- create table c ( id int , name varchar)
-- drop table c