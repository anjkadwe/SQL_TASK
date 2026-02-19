-- create or replace procedure cur_ser()
-- language plpgsql 
-- as $$ 
-- declare
-- res  employees%rowtype ;
-- allrow cursor for select * from employees;
-- begin
--    open allrow;
--    loop
--       fetch allrow into res ;
-- 	  exit when not found ;
-- 	  raise notice ' firstname : % lastname : %' , res.firstname , res.lastname ;
--    end loop;
--    close allrow;
-- end;
-- $$;
-- call cur_ser()



-- create or replace procedure get_title(job varchar)
-- language plpgsql
-- as $$ 
-- declare 
--  res employees%rowtype;
--   titl cursor for select * from employees where job_title = job ;
-- begin
--  open titl ;
--   loop
--       fetch titl into res ;
-- 	  exit when not found ;
-- 	  raise notice 'salary :% jobtitle :%', res.salary , res.job_title;
--   end loop;
--  close titl;
-- end;
-- $$;
 -- call get_title( 'Developer')


create or replace procedure counts(id int)
language plpgsql
as $$
declare
r record ;
countrow cursor for employees when dept_id = id ;
begin
  open countrow ;
  loop
  fetch countrow into r ;
  exit when not found;
  raise notice ' firstname :% ,deptid :%' , r.firstname , r.dept_id ;
  end loop;
 close countrow ;
end;
$$;








 








