-- ==============table creation=========

-- create table customers(
-- customer_id serial primary key ,
-- customer_name varchar,
-- city varchar ,
-- phone_number bigint ,
-- email varchar unique ,
-- registration_date date
-- )
-- create table orders (
-- order_id serial primary key,
-- customer_id int,foreign key (customer_id ) references customers(customer_id),
-- order_date date,
-- order_amount int ,
-- delivery_city varchar,
-- payment_mode varchar
-- )

-- create table products(
-- product_id serial primary key,
-- product_name varchar ,
-- category varchar,
-- price int,
-- stock_quantity int,
-- supplier_name varchar,
-- supplier_city varchar ,
-- supply_date date
-- )


-- create table order_items (
-- order_item_id serial primary key,
-- order_id int references orders(order_id),
-- product_id int references products(product_id),
-- quantity int,
-- total_price int 
-- )


-- ========= COPY TABLE DATA==========

-- copy customers from 'D:/SQL Task-2/Table.1--customers.csv' delimiter ',' csv header
-- copy orders from 'D:/SQL Task-2/Table.2--orders.csv' delimiter ',' csv header
-- copy products from 'D:/SQL Task-2/Table.3--products.csv' delimiter ',' csv header
-- copy order_items from 'D:/SQL Task-2/Table.4--order_items.csv' delimiter ',' csv header



-- ===========CREATE RELATION ============

-- select * from customers c 
-- join orders o on c.customer_id = o.customer_id 
-- join order_items oi on oi.order_id =  o.order_id 
-- join products p on p.product_id = oi.product_id


-- 1. JOINS==============================

-- Task 1:
-- select c.customer_name , c.city , o.order_date from customers c join orders o on c.customer_id = o.customer_id
-- where extract(year from order_date) = 2023

-- -- Task 2:

-- select p.product_name, p.category , oi.total_price ,c.city from products p join order_items oi on p.product_id = oi.product_id
-- join orders o  on o.order_id = oi.order_id 
-- join customers c on c.customer_id = o.customer_id
-- where c.city = 'Mumbai'

-- Task 3:

-- select c.customer_name, o.order_date,  oi.total_price ,o.payment_mode from customers c join orders o  on c.customer_id = o.customer_id 
-- join order_items oi on oi.order_id = o.order_id
-- where o.payment_mode = 'Credit Card'

-- Task 4:

-- select p.product_name, p.category, oi.total_price , order_date from orders o  join order_items oi on o.order_id = oi.order_id
-- join products p on p.product_id = oi.product_id
-- where extract (year from order_date) = 2023 and extract (month from order_date) between 01 and 06

-- Task 5: 
-- select c.customer_id,c.customer_name ,sum (oi.quantity) from customers c 
-- join orders o on c.customer_id = o.customer_id
-- join order_items oi on oi.order_id = o.order_id group by c.customer_id order by c.customer_id 
 

-- 2. DISTINCT =========================
-- Task 1:
-- Get a distinct list of cities where customers are located.
-- select distinct city , customer_name  from customers

-- Task 2:
-- Retrieve distinct supplier_name from the products table.
-- select distinct supplier_name from products

-- Task 3:
-- Find distinct payment methods used in the orders table.
-- select distinct payment_mode from orders

-- Task 4:
-- List all distinct product categories that have been ordered.
-- select distinct category from products

-- Task 5:
-- Find distinct cities from which suppliers supply products by querying the
-- products table.
-- select distinct supplier_city from products

-- 3. ORDER BY ====================

-- Task 1:
-- List all customers sorted by customer_name in ascending order

-- select customer_name from customers order by customer_name

-- Task 2:
-- Display all orders sorted by total_price in descending order.

-- select quantity , total_price from customers c 
-- join orders o on c.customer_id = o.customer_id 
-- join order_items oi on oi.order_id =  o.order_id 
-- join products p on p.product_id = oi.product_id 
-- order by total_price desc

-- Task 3:
-- Retrieve a list of products sorted by price in ascending order and then by
-- category in descending order.

-- select product_name  , price , category from products order by price , category desc


-- Task 4:
-- Sort all orders by order_date in descending order and display the order_id,customer_id, and order_date.
-- select * from orders order by order_date desc 

-- Task 5: 

-- Get the list of cities where orders were placed, sorted in alphabetical order,
-- and display the total number of orders placed in each city

-- select  c.city, count(c.city)from customers c 
-- join orders o on c.customer_id = o.customer_id 
-- join order_items oi on oi.order_id =  o.order_id 
-- join products p on p.product_id = oi.product_id 
-- group by c.city order by city 

-- 4. LIMIT & OFFSET
-- Task 1:
-- Retrieve the first 10 rows from the customers table ordered by
-- customer_name.

-- select * from customers order by customer_name limit 10

-- Task 2:
-- Display the top 5 most expensive products (sorted by price in descending
-- order).
-- select product_name , price from products order by price desc limit 5

-- Task 3:
-- Get the orders for the 11th to 20th customers (using OFFSET and LIMIT),
-- sorted by customer_id.
-- select customer_id , customer_name from customers offset 10 limit 10

-- Task 4:
-- List the first 5 orders placed in 2023, displaying order_id, order_date, and
-- customer_id.

-- select order_id, order_date , customer_id from orders limit 5 

-- Task 5:
-- Fetch the next 10 distinct cities where orders were placed, using LIMIT and
-- OFFSET.
-- select city from customers offset 10 limit 10


-- 5. AGGREGATE FUNCTIONS
-- Task 1:

-- select sum(quantity) from order_items

-- Task 2:
-- Find the total revenue generated from orders paid via 'UPI' from the orders
-- table.
-- select sum(order_amount) from orders where payment_mode = 'UPI'

-- Task 3:
-- Get the average price of all products in the products table.
-- select avg(price) from products

-- Task 4:
-- Find the maximum and minimum total price of orders placed in 2023.
-- select max(total_price), min(total_price) 
--  from customers c join orders o on c.customer_id = o.customer_id
-- join order_items oi on oi.order_id  = o.order_id 
-- join products p on p.product_id = oi.product_id 
-- where extract(year from order_date ) = 2023


-- -- Task 5:
-- Calculate the total quantity of products ordered for each product_id using
-- the order_items table.
-- select product_id ,sum(quantity) as total_quantity from order_items group by product_id

-- 6. SET OPERATIONS ============

-- Task 1: 
-- Get the list of customers who have placed orders in both 2022 and 2023
-- (use INTERSECT).

-- select c.customer_id, c.customer_name from customers c  join orders o on c.customer_id = o.customer_id
-- where extract(year from o.order_date ) = 2022 
-- intersect
-- select c.customer_id, c.customer_name from customers c  join orders o on c.customer_id = o.customer_id
-- where extract(year from o.order_date ) = 2023 


-- Task 2:pending
-- Find the products that were ordered in 2022 but not in 2023 (use EXCEPT).
--     select distinct p.product_name ,order_date  from customers c  join orders o on c.customer_id = o.customer_id
--   join order_items oi on oi.order_id = o.order_id
--   join products p on p.product_id = oi.product_id
-- where extract ( year from order_date) != 2023
-- intersect
-- except
--   select distinct p.product_name,o.order_date   from customers c  join orders o on c.customer_id = o.customer_id
--   join order_items oi on oi.order_id = o.order_id
--   join products p on p.product_id = oi.product_id
-- where extract ( year from order_date)  in (2022 , 2023)

-- select p.product_name ,o.order_date from products p join order_items oi on p.product_id = oi.product_id
-- join orders o on o.order_id =  oi.order_id
-- join customers c on c.customer_id = o.customer_id
-- where extract (year from  order_date) = ( select order_date from orders where extract (year form order_date) = 2022)

 select order_date from orders where extract (year form order_date) = 2022
-- Task 3: *
-- Display the list of supplier_city from the products table that do not match
-- any customer_city in the customers table (use EXCEPT).
-- select supplier_city from products #=
-- except
-- select city from customers

-- select supplier_city   from customers c join orders o on c.customer_id = o.customer_id
-- join order_items oi on oi.order_id  = o.order_id 
-- join products p on p.product_id = oi.product_id 
-- except
-- select city   from customers c join orders o on c.customer_id = o.customer_id
-- join order_items oi on oi.order_id  = o.order_id 
-- join products p on p.product_id = oi.product_id 

-- Task 4:
-- Show a combined list of supplier_city from products and city from
-- customers (use UNION)

-- select supplier_city from products
-- union
-- select city from customers

-- Task 5: 
-- Find the list of product_name from the products table that were ordered in
-- 2023 (use INTERSECT with the orders and order_items tables).

-- select product_name ,o.order_date from products p join order_items oi on  p.product_id = oi.product_id 
-- join orders o on o.order_id = oi.order_id
-- join customers c on c.customer_id = o.customer_id
-- -- intersect 
-- select o.order_date from products p  join order_items oi on  p.product_id = oi.product_id 
-- join orders o on o.order_id = oi.order_id
-- join customers c on c.customer_id = o.customer_id
-- where extract(year from  order_date) = 2023

-- select product_name from products
-- where order_date = ( 
-- select order_date  from products p  join order_items oi on  p.product_id = oi.product_id 
-- join orders o on o.order_id = oi.order_id
-- join customers c on c.customer_id = o.customer_id
-- where extract(year from  order_date) = 2023)



-- 7. SUBQUERIES=========================================

-- Task 1: 
-- Find the names of customers who placed orders with a total price greater
-- than the average total price of all orders.

-- select c.customer_name , oi.total_price   from order_items oi join orders o on oi.order_id = o.order_id
-- join customers c on c.customer_id = o.customer_id
-- where total_price > ( select  avg(total_price) from order_items )

-- Task 2:
-- Get a list of products that have been ordered more than once by any
-- customer.
-- select c.customer_id ,c.customer_name , p.product_name , quantity  from products p join order_items oi  on p.product_id = oi.product_id 
-- join orders o on o.order_id = oi.order_id
-- join customers c on c.customer_id = o.customer_id 
-- where (c.customer_id , quantity) in ( 
-- select c.customer_id , count (quantity) from products p join order_items oi  on p.product_id = oi.product_id 
-- join orders o on o.order_id = oi.order_id
-- join customers c on c.customer_id = o.customer_id 
-- group by c.customer_id
-- having count(quantity) > 1
-- )

-- Task 3:
-- Retrieve the product names that were ordered by customers from Pune
-- using a subquery.

-- select p.product_name , c.city from products p  join order_items oi on p.product_id = oi.product_id
--  join orders o on oi.order_id = o.order_id
-- join customers c on c.customer_id = o.customer_id
-- where c.city in ( select city from customers where city = 'Pune')

-- select customer_name , city from customers where city = 'Pune'


-- -- Task 4: 
-- Find the top 3 most expensive orders using a subquery.
-- select order_amount from orders order by order_amount desc limit 3

-- select p.product_name , o.order_amount from products p join order_items oi on p.product_id = oi.product_id
-- join orders o on o.order_id = oi.order_id
-- join customers c on c.customer_id = o.customer_id
-- where o.order_amount in ( select order_amount from orders order by order_amount desc limit 3)

-- Task 5:
-- Get the customer names who placed orders for a product that costs more
-- than ₹30,000 using a subquery

-- select customer_name ,price  from customers c 
-- join orders o on c.customer_id = o.customer_id 
-- join order_items oi on oi.order_id =  o.order_id 
-- join products p on p.product_id = oi.product_id
-- where price in (select price from products where price >30000 )

