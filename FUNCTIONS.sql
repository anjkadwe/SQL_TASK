-- create or replace function upper_int (a text)
-- returns text
-- as $$ 
-- begin
--  return upper( a );
-- end ;
-- $$ language plpgsql ; 

-- select upper_int ('shubham')

-- create or replace function int_check ( a int)
-- returns int
-- as $$
-- begin
--  return(a);
-- end;
-- $$ language plpgsql;

-- select int_check (23)


-- create or replace function int_to( a int) 
-- returns bool
-- as $$ 
-- begin
-- -- return a % 2= 0;
-- return (a % 2= 0);
-- end;
-- $$ language plpgsql;

-- select int_to ( 2 )

-- create or replace table ()
-- returns ( empid int , fullname )
