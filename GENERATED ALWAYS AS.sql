-- create table pro ( product_id serial  primary key ,  product_name varchar , product_price int , discount_percent int ,
-- final_price int generated always as (product_price -(product_price * discount_percent / 100))stored
-- )

-- insert into pro (product_name , product_price , discount_percent) values ('iwatch' , 45000, 20)


-- select * from pro

-- =====================================================================================================
create table student_Data ( id serial primary key , firstname varchar , lastname varchar , dob date ,
email varchar generated always as ( lastname ||'.'||firstname||'@arc.com') stored,
age int generated always as ( current_date - dob)stored
)
-- drop table student_data
-- insert into student_Data (firstname , lastname)values('anamika' , 'thakur') returning*