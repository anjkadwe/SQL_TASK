-- create table category(
-- category_id int primary key ,
-- category_name varchar ,
-- category_description varchar ,
-- active_status varchar
-- )
-- drop table category
-- copy  category from'D:\Practice Dataset\category.csv' delimiter ',' csv header
-- select * from category

-- create table product (
-- product_id int primary key ,
-- product_name varchar ,
-- category_id int references category (category_id),
-- brand varchar ,
-- unit_price int ,
-- active_status varchar
-- )

-- copy product from 'D:\Practice Dataset\product.csv' delimiter ',' csv header
-- select * from product

-- create table supplier(
-- supplier_id int primary key ,
-- supplier_name varchar ,
-- supplier_type varchar ,
-- city varchar , 
-- state varchar,
-- country varchar,
-- contact_person varchar ,
-- contact_email varchar ,
-- active_status varchar 
-- )
-- copy supplier from 'D:\Practice Dataset\supplier.csv' delimiter ',' csv header 
-- select * from supplier


-- create table warehouse (
-- warehouse_id int primary key ,
-- warehouse_name varchar ,
-- location_city varchar ,
-- state varchar ,
-- country varchar ,
-- warehouse_type varchar ,
-- capacity_units int ,
-- manager_name varchar ,
-- active_status varchar 
-- )

-- copy warehouse from 'D:\Practice Dataset\warehouse.csv' delimiter ',' csv header 
-- select * from warehouse

-- create table inventory (
-- inventory_id int  primary key ,
-- product_id int references product (product_id) ,
-- supplier_id int references supplier( supplier_id),
-- warehouse_id  int references warehouse ( warehouse_id),
-- stock_quantity int ,
-- reorder_level int ,
-- last_updated date 
-- )

-- copy inventory from 'D:\Practice Dataset\inventory.csv' delimiter ',' csv header 
-- select * from inventory


-- select *
-- from category c join product p on c.category_id = p.category_id 
-- join inventory i on p.product_id = i.product_id 
-- join supplier s on s.supplier_id =i.supplier_id
-- join warehouse w on w.warehouse_id = i.warehouse_id 

-- select * from warehouse
-- -- 1. Display product name, category name, and unit price.
-- select p.product_name , c.category_name ,capacity_units from category c 
-- join product p on c.category_id = p.category_id 
-- join inventory i on p.product_id = i.product_id 
-- join supplier s on s.supplier_id =i.supplier_id
-- join warehouse w on w.warehouse_id = i.warehouse_id 

-- select * from inventory
-- 3. Show inventory details with product name and warehouse location.
-- select p.product_name , w.location_city 
-- from category c
-- join product p on c.category_id = p.category_id 
-- join inventory i on p.product_id = i.product_id 
-- join supplier s on s.supplier_id =i.supplier_id
-- join warehouse w on w.warehouse_id = i.warehouse_id 

-- 4. Find all suppliers supplying products to more than one warehouse.
   -- select s.supplier_id ,count (w.warehouse_id) from category c
   -- join product p on c.category_id = p.category_id
   -- join inventory i on i.product_id = p.product_id 
   -- join supplier s on i.supplier_id = s.supplier_id 
   -- join warehouse w on w.warehouse_id = i. warehouse_id group by s.supplier_id having count (w.warehouse_id) >1
   -- where select * from supplier 

-- 5. Display purchase order details along with supplier and warehouse information.***
-- select * from category c
-- join product p on c.category_id = p.category_id 
-- join inventory i on p.product_id = i.product_id 
-- join supplier s on s.supplier_id =i.supplier_id
-- join warehouse w on w.warehouse_id = i.warehouse_id 

-- 6. Show purchase order items with product name and category name
-- select product_name  , category_name from category c join product p on c.category_id = p.category_id


-- 7. List all products that have never been purchased (LEFT JOIN).
-- select  * from category c left join product p on c.category_id = p.category_id

-- 8. Display warehouses that currently have no inventory.
-- select * from warehouse w left join inventory i on w.warehouse_id = i.warehouse_id


-- 9. Show suppliers who have never received a purchase order
-- select * from product




-- PART B: AGGREGATE PRACTICE
-- 1. Find total number of products in each category.
-- select c.category_id ,sum(product_id) from category c join product p on c.category_id = p.category_id group by c.category_id

-- 2. Calculate total stock quantity per warehouse.
-- select w.warehouse_id ,sum(stock_quantity) from inventory i join warehouse w on w.warehouse_id = i.warehouse_id group by w.warehouse_id

-- 3. Find total inventory value per warehouse.
-- select 

-- 4. Calculate average unit price per category.
-- 5. Find highest priced product in each category.
-- 6. Count number of suppliers in each state.
-- 7. Calculate total procurement spend per supplier.
-- 8. Find monthly purchase order amount trend.
-- 9. Find total quantity purchased for each product.
-- 10. Find suppliers with total purchase amount greater than 10,00,000.
-- 11.Calculate average stock quantity per product.
-- 12. Find category-wise total inventory value.
-- 13.Calculate total pending purchase order value.
-- 14. Find top 5 most expensive products.
-- 15. Find warehouse capacity utilization (stock vs capac