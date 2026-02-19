-- select current_date
-- select current_time
-- select localtime
-- select current_timestamp
-- select localtimestamp
-- select now()

-- select extract (year from hiredate) from employee_Details
-- select extract (month from hiredate) from employee_Details
-- select extract (day from hiredate) from employee_Details
-- select extract (doy from hiredate) from employee_Details

-- select extract ( year from current_date)
-- select extract ( month from current_date)
-- select extract ( w from current_date)
-- select extract ( day from current_date)
-- select extract ( doy from current_date)
-- select extract ( dow from current_date)
-- select extract ( quarter from current_date)

-- select extract ( minute from current_timestamp)
-- select extract ( minute from current_time)
-- select extract ( hour from current_time)
-- select extract ( second from current_time)

-- select date_part (  'month',hiredate ) from employee_details
-- select date_part (  'year',hiredate ) from employee_details
-- select date_part (  'day',hiredate ) from employee_details
-- select date_part (  'doy',hiredate ) from employee_details
-- select date_part (  'dow',hiredate ) from employee_details
-- select date_part (  'quarter',hiredate ) from employee_details

-- select hiredate , to_char(hiredate , 'dd-mm-yy')from employee_details
-- select hiredate , to_char(hiredate , 'dd-mon-yy')from employee_details
-- select hiredate , to_char(hiredate , 'ddmonthyy')from employee_details

-- select hiredate , to_char(hiredate , 'day-mm-yy')from employee_details
-- select hiredate , to_char(hiredate , 'day-mm-yy dd')from employee_details
-- select hiredate , to_char(hiredate , 'day-mm-year')from employee_details
-- select to_char( current_date ,'dd-mm-yy')



-- select date_trunc (  'month',hiredate ) from employee_details
-- select date_trunc (  'year',hiredate ) from employee_details
-- select date_trunc (  'day',current_timestamp ) 
-- select date_trunc (  'hour',current_timestamp ) 
-- select date_trunc (  'minute',current_timestamp ) 



-- select current_date + interval '10 days'
-- select current_date + interval '1 month'
-- select current_date + interval '1 year'


-- select current_date - date '2025-12-12'
-- select current_date - date '12-10-2025'
-- select current_date - date '12-dec-2025'
-- select curnt_date - '12-10-2020'rent_date - date '12-dec-2020'
-- select curre

-- select age (current_date , date '12-10-2024')
-- select age( current_date , hiredate) from employee_details
-- select * from employee_details