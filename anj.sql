-- create table emp_data ( id serial  , name varchar , city varchar , hire_date date )
-- partition by range ( hire_date)

-- create table emp_2023 partition of emp_data 
-- for values from( '2023-01-01') to ('2023-12-31');

-- create table emp_2024 partition of emp_data 
-- for values from( '2024-01-01') to ('2024-12-31');

-- create table emp_2025 partition of emp_data
-- for values from( '2025-01-01') to ('2025-12-31');

-- create table emp_2026 partition of emp_data
-- for values from( '2026-01-01') to ('2026-12-31');


-- insert into emp_data (name , city , hire_date) values ( 'naman' ,'Nagpur' , '2024-01-12'),
-- ( 'Rajesh' ,'Pune' , '2025-01-12'),
-- ( 'radha' ,'pune' , '2023-06-10'),
-- ( 'Ranjit' ,'Nagpur' , '2023-01-12'),
-- ( 'Roshan' ,'jaypur' , '2024-01-12'),
-- ( 'Chetan' ,'Nashik' , '2025-01-12'),( 'naman' ,'Pune' , '2026-01-12')

-- select * from emp_data

-- select * from emp_2023
-- select * from emp_2024
-- select * from emp_2025
-- select * from emp_2026


-- PARTITION BY LIST

-- create table emp_list ( id serial  , name varchar , city varchar  )
-- partition by list ( city)

-- create table emp_Pune partition of emp_list
-- for values in ('Pune')
-- create table emp_Nagpur partition of emp_list
-- for values in ('Nagpur')
-- create table emp_Nashik partition of emp_list
-- for values in ('Nashik')

-- insert into emp_list (name , city) values 
-- ( 'naman' ,'Nagpur'),
-- ( 'Rajesh' ,'Pune'),
-- ( 'radha' ,'Pune'),
-- ( 'Ranjit' ,'Nagpur' ),
-- ( 'Chetan' ,'Nashik'),
-- ( 'naman' ,'Pune' )

-- select * from emp_list
-- select * from emp_Pune
-- select * from emp_Nagpur
-- select * from emp_Nashik



-- PARTITION BY HASH

-- create table emp_hash ( id serial  , name varchar , city varchar , hire_date date )
-- partition by hash ( name)

-- create table emp_0 partition of emp_hash 
-- for values with (modulus 3 , remainder 0)

-- create table emp_1 partition of emp_hash
-- for values with (modulus 3 , remainder 1)


-- create table emp_2 partition of emp_hash
-- for values with (modulus 3 , remainder 2)



-- insert into emp_hash (name , city , hire_date) values ( 'naman' ,'Nagpur' , '2024-01-12'),
-- ( 'Rajesh' ,'Pune' , '2025-01-12'),
-- ( 'radha' ,'pune' , '2023-06-10'),
-- ( 'Ranjit' ,'Nagpur' , '2023-01-12'),
-- ( 'Roshan' ,'jaypur' , '2024-01-12'),
-- ( 'Chetan' ,'Nashik' , '2025-01-12'),( 'naman' ,'Pune' , '2026-01-12')


-- select * from emp_hash 
-- select * from emp_0 
-- select * from emp_1 
