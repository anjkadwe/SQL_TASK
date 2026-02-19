-- create table salary_log( log_id serial primary key , emp_id int , name varchar , job_title varchar , prevsalary int , newsalary int  )
-- drop table salary_log

-- create or replace function salary_change()
-- returns trigger
-- as $$
-- begin
--    insert into salary_log ( emp_id , name , job_title , prevsalary  , newsalary ) values
--    ( old.emp_id , old.firstname , old.job_title ,old.salary , new.salary);
--    return old;
-- end ;
-- $$ language plpgsql;


-- create or replace trigger salary_trigg
-- -- after  update on employees
-- before update on employees
-- for each row
-- execute function salary_change ()


-- update employees
-- set salary = 400000
-- where emp_id = 6

-- select * from salary_log
-- select * from employees