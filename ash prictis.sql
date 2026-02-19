-- create table cust ( id serial  , name varchar , city varchar , hire_date date )
-- partition for list
-- select * from e_data

-- create table e_2023 partition of e_data
-- for values from ('2023-01-01') to ('2023-12-31')

-- create table e_2024 partition of e_data
-- for values from  ('2024-01-01') to ('2024-12-31')

-- create table e_2025 partition of e_data
-- for values from ('2025-01-01') to ('2025-12-31')

-- create table cust partition of e_data
-- for values from('2026-01-01') to ('2026-12-31')

-- insert into e_Data(name , city , hire_date) values 
-- ( 'naman' ,'Nagpur' , '2024-01-12'),
-- ( 'Rajesh' ,'Pune' , '2025-01-12'),
-- ( 'radha' ,'pune' , '2023-06-10'),
-- ( 'Ranjit' ,'Nagpur' , '2023-01-12'),
-- ( 'Roshan' ,'jaypur' , '2024-01-12'),
-- ( 'Chetan' ,'Nashik' , '2025-01-12'),( 'naman' ,'Pune' , '2026-01-12')

-- select * from e_2023


-- create table e_pune partion of e_data
-- for values in ('Pune')

-- create table e_hash  partition of e_data
-- for values with (modulus 3 reminder 0)