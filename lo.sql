-- create or replace procedure tbl( n int)
-- language plpgsql 
-- as $$ 
-- declare i int ;
--  begin

--  for i in 1..n loop
--   raise notice 'count %', i ;
--   end loop ;
--  end;
--  $$;
 -- call tbl (10)

--  create or replace procedure additi(n int)
--  language plpgsql 
--  as $$ 
--  declare i int;
--  b int = 0;
--  begin
--  for i in 1 ..n loop
--  b = b +i;
--  raise notice ' % sum %',b, i;
--  end loop ;
--   -- raise notice ' sum %',b;
--  end ;
-- $$;
--  call additi (5)

--  create or replace procedure mul(n int)
--  language plpgsql 
--  as $$ 
--  declare i int;
--  b int = 2 ;
--  m int ;
--  begin
--  for i in 1 ..n loop
--  m = b * i;
--  raise notice 'table %', m;
--  end loop ;
--  end ;
-- $$;
--  call mul (10)


-- create or replace procedure empdata ()
-- language plpgsql 
-- as $$ 
-- declare r record ;
-- begin
--  for r in select * from employees loop 
--  -- raise notice 'fullname% %' , r.firstname , r.lastname;
-- raise notice '%',r;
--  end loop ;
-- end ;
-- $$;
-- call empdata()


-- create or replace procedure onid(id int)
-- language plpgsql
-- as $$ 
-- declare 
-- r record ;
-- begin
--   if  exists  (select 1 from employees where dept_id = id) then
--         for r in select * from employees loop
--             raise notice 'firstname : %', r.firstname;
--          end loop;
--   else 
--      raise exception 'deptid not exist %', id ;
--   end if ;
-- end;
-- $$;

-- call onid (10)



-- create or replace procedure countrow(tn varchar , inout res int default null )
-- language plpgsql
-- as $$

-- begin
--      execute 'select count(*) from '|| tn into res ; 
-- end ;
-- $$;

-- call countrow( 'departments' )

-- select count(*) from departments


-- create or replace procedure cou( tn varchar , col varchar , ar varchar, inout res int default null)
-- language plpgsql 
-- as $$

-- begin
--    execute format ( 'select %s (%I) from %I' ,ar, col ,tn ) into res;
-- end ;
-- $$;

-- call cou ('employees', 'emp_id' , 'sum ')

