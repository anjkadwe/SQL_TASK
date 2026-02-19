-- create table bank (id serial primary key , name varchar , actype varchar, balance int)

-- insert into bank (name , actype , balance) values ('raja' ,'saving',2000),('rani' ,'current',9000),('meera' ,'saving',5000),('virra' ,'saving',8000)

-- select * from bank

-- begin ;

-- insert into bank (name , actype , balance) values ( 'priya' , 'current', 2000);

-- update bank set balance = balance - 1000 where id = 2 ;

--  update bank set balance = balance +1000 where id = 1 ;

--  select * from bank ;

-- commit ;


-- begin ;

--  update bank set balance = balance -2000 where id = 2 ;

--  update bank set balance = balance + 2000 where id = 3;
 
--   select * from bank ;

--   rollback ;

 
begin ;

insert into bank ( name , actype , balance) values ( 'rhanu' , 'current', 3000);
savepoint s1 ;

update bank set balance = balance -2000 where id = 1 ;

update bank set balance = balance + 2000 where id = 2;
select * from bank;
 rollback to s1;
  commit ;







