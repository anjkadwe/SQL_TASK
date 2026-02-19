-- create or replace procedure data_tr (in id int , inout name varchar default null)
-- language plpgsql 
-- as $$ 
-- begin
--     select firstname into name from employees where emp_id = id;
-- end;
-- $$ ;
-- call data_tr (8)

-- create or replace procedure seq( in n int  )
-- language plpgsql 
-- as $$
-- declare i int ;
-- begin
--    for i in 1..n
--     loop 
-- 	 raise notice 'hello %' ,i ;
-- 	end loop;
-- end ;
-- $$

-- call seq(10)


-- create or replace procedure msg (in n int)
-- language plpgsql 
-- as $$
-- declare i int ;
--  begin  
--  for i in 1 ..n
--    loop
--    raise warning 'this is % ' , i;
--    end loop;     
--  end ;
--  $$;

-- call msg(5)

-- create or replace procedure addi ( n int )
-- language plpgsql 
-- as $$ 
-- declare 
-- i int ;
-- total int =0;
-- begin
--     for i in 1 .. n loop
-- 	total = total + i ;
-- 	 raise notice 'total = % ' , total ;
-- 	 -- ' a + b = % + % ', i + a ;
-- 		end loop;
-- end;
-- $$ ;
-- call addi ( 5  )



-- create or replace procedure data_emp (  )
-- language plpgsql
-- as $$ 
-- declare 
-- r record;
-- begin
--    for r in select * from employees loop  
--    raise notice '% : firstname %: lastname %: job_title %: salary ' , r.firstname , r.lastname , r.job_title , r.salary ;
--    end loop ;
-- end ;
-- $$;
-- call data_emp()

create or replace procedure getdata( id int)
language plpgsql
as $$
 declare r record ;
begin
-- if 
-- (select dept_id from employees where dept_id = id) 
-- then 
for r in select * from employees where dept_id = id loop
raise notice 'firstname % : hiredate : % dept : %' , r.firstname , r.hire_date , r.dept_id ;
end loop;
-- else raise exception 'not present id %' , id;
-- end if; 
end;
$$
-- call getdata (40)
call getdata (4)
select * from employees

-- for i in 1..n
-- loop 
-- end loop;