-- select * from bank

-- create or replace procedure on_commit (n varchar , b int)
-- language plpgsql
-- as $$ 
-- begin
--   insert into bank ( name , balance) values ( n , b);
--   raise notice 'value inserted';

--   if b > 0 then 
--   commit ;
--   raise notice 'commited';
--   else rollback ;
--   raise notice 'roll';
--   end if ;

-- end;
-- $$;

-- call on_commit ('kar' , 200)


-- begin;

-- insert into bank (name , balance) values ( 'ananya' , 3000) ;

-- savepoint s1 ;
-- update bank set balance = balance - 6000 where id = 1 and balance >= 6000;
-- -- raise notice ' updeted succesfully';

-- rollback ;
-- release savepoint s1 ;

-- update bank set balance = balance + 6000 where id = 32 ;
-- -- raise notice ' updeted succesfully 2';

-- commit ;


