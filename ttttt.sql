-- begin

--  commit 
--  rollback
--  savepoint

-- create table bank (id serial , name varchar , salary varchar)
-- insert into bank(name, salary) values ('sujal', 4000),('smrunal', 2000),('arual', 5000),('prijal', 1000)

 begin ;
 insert into bank ( id ,name , salary) values ( 7, 'mrooja' , 8000) ;

 update bank set salary = salary - 1000 where id = 3 ;

 update bank set salary = salary + 1000 where id = 4;

 select * from bank;

 rollback