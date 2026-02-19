 -- create table department (dept_id serial primary key , dept_name varchar )

 -- insert into department (dept_name) values( 'Human resources' ) , ('IT') ,('Finance'),('Sales'),('Marketing'),('Operations')

--  create table employees (
-- emp_id serial primary key ,
-- fullname varchar , 
-- email varchar ,
-- phone_no text,
-- hire_date date ,
-- employment_type varchar,
-- basic_salary numeric (10,2),
-- designation varchar ,
-- dept_id int references department(dept_id),
-- tax_percent numeric ( 10, 2)
--  )

insert into employees(
fullname ,
 email ,
 phone_no, 
 hire_date, 
 employment_type,
 basic_salary ,
 designation,
 dept_id,
  tax_percent
)select firstname [ceil((random ()* array_length (firstname , 1)))] || ' ' || lastname [ceil((random ()* array_length (lastname , 1)))] ,
lower (firstname [ceil((random ()* array_length (firstname , 1)))] || '.' || lastname [ceil((random ()* array_length (lastname , 1)))] || g || 'arc.in'),
 '9' || floor (random () * 1000000000 ) :: text ,
 current_date - round((random () * 1500 )),
 'Permanent' 
 case when dept_id = 3 then (random ()* 50000 + 60000) ,
 when dept_id = 4 then (random ()* 40000 + 50000) ,
 else (random () * 30000 + 30000 ) 
end ,
case  when dept_id = 3 then 'Software Engg'
when dept_id = 4 then 'Developer'
when dept_id = 2 then 'System Designer'
when dept_id = 5 then 'DBA'
when dept_id = 1 then 'DA'
else 'Operation Executive' 
end,
dept_id ,
round ((random ()* 10 + 8),2 )from



(select g.(randam () * 5 + 1 ) as dept_id , array['Vijay' ,'Manoj' ,'Jetha','Champak' 'Tapu' ,'Daya' ,' Komal' ,'Anjali' ,'Tarak' ,
'Popatlal' ,'Babita' , 'Sonu' , 'Madhavi' , 'Gogi' , 'Hathi' , ' Ayyer'] as firstname,
 array['Sharma' ,'Gupta' ,'Gada','Tripathi' 'Bhagat' ,'Shah' ,' Paighan' ,'Mehta' ,'Shetti' ,
'Patrakar' ,'Gorde' , 'Bhide' , 'Kaushik' , 'Mandana' , 'Khan' , ' Shripal'] as lastname from genertaed_series(1,5000))
