-- TASK 1 :
-- create table Employee_Details (
-- EmployeeID Serial,
-- FirstName varchar(50),
-- LastName VARCHAR (50),
-- Email VARCHAR(50) ,
-- PhoneNumber VARCHAR (50) ,
-- HireDate DATE,
-- Salary DECIMAL (10,2 ) ,
-- DepartmentID int,
-- IsActive BOOLEAN ,
-- JobTitle VARCHAR (50)
-- )

-- TASK 2 :
-- insert into Employee_Details (FirstName,LastName,Email,PhoneNumber,HireDate,Salary,DepartmentID,IsActive,JobTitle)
-- values 
-- ( 'Mical' ,'Jaction' ,'mical@gmail.com','9011628654' ,'2022-03-12',32000,2,True,'web Developer'),
-- ( 'Nirbhay' ,'Joshi' ,'ni@gmail.com','9011628653' ,'2025-03-22',32000,2,True,'frontend'),
-- ( 'Minal' ,'Thakur' ,'minall@gmail.com','9011628655' ,'2001-03-12',72000,2,false,'business analyst'),
-- ( 'niraj' ,'narayne' ,'niraj@gmail.com','9011628656' ,'2000-06-10',38000,2,false,'web Developer'),
-- ( 'Mrunali' ,'singh' ,'mrunali@gmail.com','9011628254' ,'2012-03-04',32000,2,true,'Research analyst')

-- TASK 3 :
-- copy Employee_Details from 'D:/sql_f/Employee_Details.csv' delimiter ',' csv header

-- TASK 4 :

-- update Employee_Details
-- set DepartmentId = 0
-- where IsActive is False

-- TASK 5 :

-- update Employee_Details
-- set salary = salary * 1.08 
-- where IsActive = False and DepartmentId = 0 and 
-- Jobtitle in( 'HR Manager', 'Financial Analyst' , 'Business Analyst' , 'Data Analyst')

-- TASK 6 :
-- select firstname  FirstName, lastname LastName from Employee_Details where salary  between 30000 and 50000

-- TASK 7 :
-- select * from Employee_Details where firstname like 'A%'

-- TASK 8 :
-- delete from Employee_details 
-- where EmployeeID between 1 and 5

-- TASK 9 :

 -- rename to Employee_details
 -- alter table Employee_database

-- alter table Employee_database
-- rename column firstname to Name

-- alter table Employee_database
-- rename column lastname to Surname

 -- alter table Employee_database
 -- rename to Employee_details
 
 
-- TASK 10 :

-- alter table Employee_details
-- add column state varchar not null  default 'India'

-- update Employee_details
-- set state = 'USA'
-- where IsActive is False


-- select * from Employee_database 
-- select * from Employee_Details