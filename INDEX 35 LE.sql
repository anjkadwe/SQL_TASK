-- create index insex on employees(salary)

--  explain analyze select * from employees where salary > 60000

--  set enable_seqscan = off


-- explain analyze select firstname , lastname from employees where dept_id = 50

-- create index in_on on employees(dept_id) include( firstname , lastname )

-- drop index in_on

 -- explain analyze select * from employees where lower (job_title )= 'accountant'

 -- function index = create index index_low on employees( lower(job_title))


 -- create index idx on employees(emp_id)

 -- cluster employees using idx