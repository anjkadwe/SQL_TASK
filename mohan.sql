-- grant select on order_details to mohan

 -- alter table  order_details enable row level security

--  create policy upi_data
--  on order_details
-- for select to mohan using (payment_mode = 'UPI')

-- alter table order_details disable row level security

-- grant insert on employee_details to mohan
-- alter table employee_details enable row level security

-- create policy de
-- on employee_details
-- for insert to mohan with check (department= 'Finance')

-- select * from employee_details


-- create role readonly

-- grant select , update on  employee_details to readonly

-- grant readonly to mohan


select managerid , employeeid , firstname , salary from employee_details

-- select 

