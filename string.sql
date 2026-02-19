-- select * from employee_details
-- select name || '_' ||surname from employee_details
-- select concat (name ,' ' , surname) from employee_details
-- select concat_ws ( '_', name , surname) from employee_details

-- select length(name) from employee_details
-- select char_length (name) from employee_details
-- select octet_length (surname) from employee_details

-- select surname, left(surname, 5) from employee_details
-- select surname, right(surname, 5) from employee_details

-- select surname, substring(surname from 2 for 4) from employee_details
-- select surname, substring(surname ,2,4) from employee_details

-- select surname ,position( 'J' in surname) from employee_details

-- select surname, replace(email , 'gmail' ,'yahoo') from employee_details
-- select email, replace ( email, '@' , 'yahoo') from employee_details

-- select email, reverse(email) from employee_details

-- select repeat(email,4) from employee_details

-- select trim ('     anamika      ')
-- select rtrim ('                             anamika                       ')
-- select ltrim ('                             anamika                       ')

-- select lpad('asiki', 10, '@')
-- select rpad('asiki', 10, '@')

-- select overlay('asiki',  'my' ,1 ,3)
-- select overlay('asiki',  'my' ,3 ,3)
