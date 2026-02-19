-- create table cust as select * from customers
-- update cust
-- set dept = 'sale'
-- WHERE extract (year from registration_date) = 2019
-- alter table cust 
-- add column salary int default 2000

-- insert into  cust (salary) values 
-- alter table cust 
-- add column dept varchar 
-- insert into cust (dept) values( 'IT' 'FINA' , 'ACC')
-- select * from cust
-- update cust 
-- set salary = 20000
-- where extract(year from registration_date) = 2019
-- create table  ord as select * from orders

-- select * from ord
-- alter table cust
-- add constraint p_k
-- primary key (customer_id)
-- alter table ord
-- add constraint f_
-- foreign key (customer_id) references cust (customer_id)

-- select * from cust c join ord o on c.customer_id = o.customer_id

-- select * from cust where salary > (select avg(salary) from cust)

-- select * from ord where delivery_city in ( select delivery_city from ord where delivery_city = 'Mumbai')
-- select * from cust where salary > ()

select * from cust where dep

