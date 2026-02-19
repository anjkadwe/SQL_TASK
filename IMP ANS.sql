--  SECTION 2: INSERT (DML – CREATE DATA)
-- 1. Insert a new category called Medical Equipment.
-- select * from category
-- select pg_get_serial_sequence ('category' , 'category_id')
-- alter sequence public.category_category_id_seq restart with 11
-- insert into category (category_name) values ('Medical Equipment')

-- 2. Insert a new supplier from Chennai.
-- select * from supplier
-- select max(supplier_id) from supplier
-- select pg_get_serial_sequence('supplier' ,'supplier_id')
-- alter sequence public.supplier_supplier_id_seq restart with 211
-- insert into supplier ( supplier_name , city ) values(' new_supplier' , 'Chennai')

-- 3. Insert a product with NULL brand.
-- select * from product
-- select pg_get_serial_sequence('product' ,'product_id')
-- alter sequence public.product_product_id_seq restart with 128
-- insert into product (product_name) values('mouse')

-- 4. Insert a supplier with missing contact person
-- select * from supplier


-- SECTION 4: UPDATE (MODIFY DATA)
-- 1. Update unit price of all Electronics products by 10%. 

-- update product p
-- set unit_price = unit_price * 1.10
-- from category c 
-- where c.category_id = p.category_id 
-- and  c.category_name = 'Electronics'

-- 2. Update supplier city from Bombay to Mumbai.
-- select * from supplier

-- update supplier
-- set city = 'Bombay'
-- where city = ' Mumbai'

-- 3. Mark discontinued products as inactive.
-- select * from product where active_status = false

-- update product
-- set product_name = 'discontinued'
-- where  active_status = false


-- 4. Update brand name for a specific product
-- update product
-- set brand = 'telivision' 
-- where product_name = 'mouse'

-- SECTION 5: DELETE
-- 1. Delete products that are inactive.
-- delete from product where active_status = False returning *

-- 2. Delete inventory records with zero stock.
-- delete from inventory where stock_quantity = 0

-- 3. Delete suppliers who have never supplied any product.


-- delete from supplier s where supplier_id not in
-- (select supplier_id from inventory i where s.supplier_id = i.supplier_id )

-- SELECT *
-- FROM supplier s
-- WHERE NOT EXISTS (
--     SELECT 1
--     FROM inventory i
--     WHERE i.supplier_id = s.supplier_id
-- );


-- 4. Delete warehouses with no inventory.

-- delete from warehouse w where w.warehouse_id not in
-- (select warehouse_id from inventory i where w.warehouse_id = i.warehouse_id)


-- SECTION 6: WHERE CLAUSE
-- 1. Select products with unit price greater than 50,000.
-- select * from product where unit_price >50000

-- 2. Select suppliers from Maharashtra.
-- select * from supplier where city = 'Maharashtra'

-- 3. Select inventory records for warehouse 301.
-- select * from inventory where warehouse_id = 301

-- 4. Select warehouses with capacity more than 10,000.
-- select * from warehouse where capacity_units > 10000

-- 5. Select products excluding Furniture category.
-- select * from product p join category c on c.category_id = p.category_id where category_name not in
-- (select category_name from category where category_name = 'Furniture')

-- SECTION 7: AND / OR / NOT
-- 1. Select products with price > 10,000 AND category = Electronics.
-- select * from product p join category c on c.category_id = p.category_id where unit_price >10000 and category_name = 'Electronics'

-- 2. Select suppliers from Mumbai OR Pune.

-- select * from supplier where city in ( 'Mumbai' , 'Pune')

-- 3. Select purchase orders Pending AND value > 5,00,000.
-- select * from  purchase_order where po_status = 'Pending' and total_po_amount > 500000

-- 4. Select products with brand = Dell OR HP.
-- select * from product where brand in ('Dell', 'HP')

-- SECTION 8: COMPARISON OPERATORS
-- 1. Products with price >= 50,000.
-- select * from product where unit_price >= 50000

-- 2. Inventory with stock_quantity <= reorder_level.

-- select * from inventory where stock_quantity <= reorder_level

-- 3. Warehouses with capacity <> 10,000.
-- select * from warehouse where capacity_units <> 10000





-- SECTION 9: IN & BETWEEN
-- 1. Select suppliers in Mumbai, Pune, Bangalore.
-- Select * from supplier where city in ('Mumbai', 'Pune', 'Bangalore')

-- 2. Select products with price between 5,000 and 20,000.
 -- Select * from product where unit_price between 5000 and 20000
 
-- 3. Select products not in Electronics or Furniture.
-- select * from product p join category c on c.category_id = p.category_id where category_name not in 
-- (select category_name from category where category_name in ( 'Electronics'  ,'Furniture'))

-- SECTION 10: NULL / IS NULL / IS NOT NULL
-- 1. Select products with NULL brand.

-- select * from product where brand is null

-- 2. Select suppliers where contact_person IS NULL.
-- select * from supplier where contact_person is null


-- 3. Select inventory where last_updated IS NOT NULL

-- select * from inventory where last_updated is not null

-- SECTION 11: PATTERN MATCHING (LIKE / ILIKE)
-- 1. Products whose name starts with ‘Laptop’.
-- select * from product where product_name like 'Laptop%'

-- 2. Suppliers whose name contains ‘Tech’.
-- select * from supplier where supplier_name like '%Tech%'

-- 3. Warehouses ending with ‘Warehouse’.
-- select * from warehouse where warehouse_name like '%Warehouse'

-- 4. Products with brand containing ‘log’.
-- select * from product where brand like '%log%'

-- 5. Cities starting with ‘M’.
-- select * from supplier where city like 'M%'