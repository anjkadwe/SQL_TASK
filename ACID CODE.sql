

-- begin ;
-- set transaction isolation level read committed ;
-- select * from bank






-- create or replace procedure ba_pro()
-- language plpgsql 
-- as $$
-- begin
--    insert into bank (name , balance) values ('DIVYANKA' , 5000);
--    raise notice ' all value inserted';

--    -- exception when others then 
--    -- raise notice 'not inserted';

--    update bank set balance = baance - 2000 where id = 8;
--    raise notice 'update 1';

--    exception when others then 
--    raise notice 'not update 1';

--     update bank set balance = baance + 2000 where id = 1;
--    raise notice 'update 2';

--    exception when others then 
--    raise notice 'not update 2';
-- end;
-- $$;

-- call ba_pro()
 
-- create or replace procedure from_tcl()
-- language plpgsql 
-- as $$ 
-- begin

--  begin
--    insert into bank (name , balance)values ( 'YANI' , 12000);
--    raise notice 'inserted all values';
--    end;  
   
--   begin
-- 	 update bank set balance = balance - 2000 where id = 3 ;
-- 	 raise notice 'update s1 debited account';
	 
-- 	 exception when others then 
-- 	 raise notice ' not debited account s1' ;
--  end ;
 
-- begin 
-- 	update bank set balance = balance + 2000 where id = 8 ;
-- 	raise notice ' update s2 credited account';
-- 	exception when others then
-- 	raise notice 'not credited account s2';
-- end;

-- commit;
--  end ;
--  $$;


-- call from_tcl()

























-- ========================== confirm nahi pta================
-- create or replace  procedure bank_pro()
-- language plpgsql as $$
-- begin 
--    begin
--    insert into bank (name , balance)values ( 'DIVYANI' , 12000);
--    raise notice 'inserted all values';

--    end;
--    savepoint s1 ;
   
--     begin
-- 	 update bank set balnce = balance - 2000 where id = 1 ;
-- 	 raise notice 'update s1 debited account';
-- 	 release savepoint s1 ;

-- 	 exception when others then 
-- 	 raise notice ' not debited account s1' ;
-- 	 -- rollback to s1 ;
-- 	 end ;

-- 	savepoint s2 ; 
-- 	 begin 
-- 	update bank set balance = balance + 2000 where id = 8 ;
-- 	raise notice ' update s2 credited account';
-- 	release savepoint s2 ;

-- 	exception when others then
-- 	raise notice 'not credited account s2';
--     -- rollback to s2 ;
-- 	 end;

-- 	 	raise notice 'all';

-- 	 -- - select * from bank
-- 	 -- commit;
-- end;
-- $$;

-- 	 select * from bank

-- call bank_pro ()
