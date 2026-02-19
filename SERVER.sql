-- create user vijay with password 'vijay123'

-- create role manoj login password '' 

-- grant select on employees to vijay 

-- revoke select on employees from vijay

-- grant select , update , insert , delete , truncate on employees to vijay
-- revoke select , update , insert , delete , truncate on employees from vijay

-- grant all privileges on employees to vijay

-- revoke all on employees from vijay

-- grant select on all tables in schema public to vijay
-- revoke select on all tables in schema public from vijay

-- create table demo (id int , name varchar)
-- drop table demo

-- create table dm (id int , name varchar)
-- insert into dm select emp_id , firstname from employees

-- insert into demo values ( 1, 'rani')
-- insert into demo select emp_id , firstname from employees
-- select * from demo
-- select * from dm
-- alter  default privileges
-- in schema public
-- grant select on tables
-- to vijay

-- grant create on database "joins" to vijay
-- grant create on schema public to vijay

-- create user mohan with password 'mohan123'

-- grant select on employees to vijay with grant option

-- revoke all privileges on all tables in schema public from vijay

-- grant select (emp_id , firstname , lastname)  on employees to vijay 


-- create or replace function addit(a int , b int)
-- returns int 
-- as $$ 
-- begin
--  return a +b ;
-- end;
-- $$ language plpgsql ;


-- select addit(2,3)
-- grant execute function addit(a int , b int) to vijay


-- alter table employees enable row level security

-- create policy dev_vijay
-- on employees
-- for select to vijay using (job_title = 'Developer')








