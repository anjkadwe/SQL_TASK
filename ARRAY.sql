-- create table student ( sid serial primary key, name varchar , skills text[])

-- insert into student ( name , skills) values ('Manoj' , array ['python' ,'notjs','java']) returning *

-- insert into student ( name , skills) values ('Pratik' , '{Java , sql , react}' ) ,
--  ('Mahesh' , '{Java , sql , Angular}' ) ,
--  ('Ramesh' , '{C# , sql , react}' ) ,
--  ('Suresh' , '{c# , c++ , react}' ) 

-- select skills[1] from student
-- select skills[1], skills[2], skills[3] from student
-- select skills[2:3] from student

-- select array_length( skills , 1) from student

-- update student
-- set skills[1] = 'C#' where sid = 1

-- update student
-- set skills = array_append (skills , 'Postgresql') where sid = 1

-- update student
-- set skills = array_prepend ('Python', skills ) where sid = 1

-- update student
-- set skills = array_remove (skills , 'java' ) where sid = 1

-- select * from student where skills @> array['sql']
-- select * from student where skills @> array['sql', 'Java']
-- select * from student where skills && array['sql', 'Java']

-- select * from student  where 'sql' =any(skills)
-- select * from student  where 'sql' <> all(skills)



-- =================================

-- create table emp_details ( eid serial primary key , name varchar , details jsonb)

-- insert into emp_details ( name ,details )values ('Rohan',

-- '{
-- "age" : 28 ,
-- "skills" : ["python" , "power BI" ,"Excel"],
-- "dept" :"IT",
-- "address" : {
-- "street" : "ShivajiNagar",
-- "city" : "Pune" ,
-- "pincode" : "440021"
-- }
-- }'
-- )

-- select details -> 'age'from emp_details
-- select details -> 'dept'from emp_details
-- select details ->> 'age'from emp_details
-- select details ->> 'dept'from emp_details

-- select details -> 'skills' -> 0 from emp_details

-- select details #>> '{address , city}' from emp_details 

-- select * from emp_details where details @>'{"age" : 23}'

-- select * from emp_details where details ? 'age'
-- select * from emp_details where details ?& array ['age', 'skills']=====all
-- select * from emp_details where details ?| array ['age', 'skills']======any

-- update emp_details
-- set  details = jsonb_set(details , '{age}' ,'34' )
-- where eid = 1

-- update emp_details
-- set  details = jsonb_set(details , '{SALARY}' ,'23000' )
-- where eid = 1

-- update emp_details
-- set  details = jsonb_set(details , '{"address" , "street"}' ,'"guru"' )
-- where eid = 1

-- update emp_details
-- set  details = jsonb_set(details , '{address , street}' ,'"gurudev"' )
-- where eid = 1

-- update emp_details 
-- set details = details - 'age'
-- where eid = 1

-- select* from emp_details

-- ============

-- create table article ( id serial primary key , title  varchar  , contain text )

-- insert into article (title , contain) values 
-- ( 'postgesql' ,' post is a open sourrce databased'),
-- ('learn sql' , ' sql is used to query relation databased'),
-- ('Advanced search' , 'postgrel use to tsvector to full text search')

-- alter table article add column search_vector TSVECTOR

-- update article set search_vector = to_tsvector( 'english' , title || ' '|| contain)

-- select to_tsquery

-- select * from article where search_vector @@ to_tsquery('databased')
-- select * from article where search_vector @@ plainto_tsquery('databased sql')



