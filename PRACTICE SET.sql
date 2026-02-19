-- PART A: JOIN PRACTICE
-- 1. Display product name, category name, and unit price.
-- select p.product_name , c.category_name , p.unit_price from product p join category c on p.category_id = p.category_id

-- 2. List all products along with their supplier name and warehouse name.
-- select product_name , supplier_name , warehouse_name  from category c join product p on c.category_id = p.category_id 
-- join inventory i on i.product_id = p.product_id 
-- join supplier s on s.supplier_id = i.supplier_id
-- join warehouse w on w.warehouse_id = i.warehouse_id

-- 3. Show inventory details with product name and warehouse location.
-- select * from inventory i join product p on p.product_id = i.product_id
-- join warehouse w on w.warehouse_id = i.warehouse_id

-- -- 4. Find all suppliers supplying products to more than one warehouse.

-- select s.supplier_id ,count(w.warehouse_id) warehouse from supplier s join inventory i on  s.supplier_id = i.supplier_id 
-- join product p on i.product_id = p.product_id 
-- join  warehouse w on w.warehouse_id = i.warehouse_id group by s.supplier_id having count(w.warehouse_id) >1

-- 5. Display purchase order details along with supplier and warehouse information.
-- select * from purchase_order po join supplier s on po.supplier_id = s.supplier_id
-- join warehouse w on po.warehouse_id = w.warehouse_id

-- 6. Show purchase order items with product name and category name.
-- select * from category c join product p on p.category_id = c.category_id 
-- join purchase_order_item poi on p.product_id = poi.product_id

-- 7. List all products that have never been purchased (LEFT JOIN).***

-- select p.product_id ,p.product_name , p.category_id , p.brand ,po_id from product p join inventory i on i.product_id = p.product_id
-- join supplier s on s.supplier_id = i.supplier_id
-- left join purchase_order po on po.supplier_id = s.supplier_id

-- 8. Display warehouses that currently have no inventory.
-- select * from warehouse where warehouse_id not in ( select warehouse_id  from inventory)

-- 9. Show suppliers who have never received a purchase order.
-- select * from supplier where supplier_id not in ( select supplier_id from purchase_order)

-- 10.Display inventory transactions with product name and warehouse name.
-- select p.product_name , w.warehouse_name from inventory i join product p on i.product_id = p.product_id
-- join warehouse w on w.warehouse_id = i.warehouse_id

-- 11. List products along with their reorder level and current stock.
-- select reorder_level , stock_quantity from product p join inventory i on p.product_id = i.product_id

-- 12. Show purchase orders placed for Electronics category products.
-- select city from purchase_order po
-- join supplier s on po.supplier_id = s.supplier_id
-- join inventory i on i.supplier_id = s.supplier_id
-- join product p on p. product_id = i.product_id
-- join category c on c.category_id = p.category_id where category_name = 'Electronics'


-- 13.Display products supplied by suppliers located in Maharashtra.
-- select * from product p join inventory i on i.product_id = p.product_id
-- where i.supplier_id in (select supplier_id from supplier where state =  'Maharashtra')

-- 14. Show warehouse-wise list of suppliers.
-- select * from supplier s join inventory i on i.supplier_id = s.supplier_id
-- where i.warehouse_id in ( select warehouse_id from warehouse w where i.warehouse_id = w.warehouse_id )

-- 15.Display all pending purchase orders with supplier details.
-- select * from purchase_order po join supplier s on po.supplier_id = s.supplier_id where po_status = 'Pending'



-- PART B: AGGREGATE PRACTICE
-- 1. Find total number of products in each category.
-- select c.category_id ,sum(p.product_id) from product p join category c on p.category_id = c.category_id group by c.category_id

-- 2. Calculate total stock quantity per warehouse.
-- select w.warehouse_id , sum(i.stock_quantity) from warehouse w join inventory i on w.warehouse_id = i.warehouse_id group by w.warehouse_id

-- 3. Find total inventory value per warehouse.
-- select w.warehouse_id , sum(i.inventory_id) from inventory i join warehouse w on w.warehouse_id = i.warehouse_id group by w.warehouse_id

-- 4. Calculate average unit price per category.
-- select c.category_id , avg(c.category_id) from category c group by c.category_id


-- 5. Find highest priced product in each category.
-- select c.category_id , max(unit_price) from category c join product p on c.category_id = p.category_id group by c.category_id

-- 6. Count number of suppliers in each state.
-- select state , count(supplier_id) from supplier group by state

-- 7. Calculate total procurement spend per supplier.
-- select s.supplier_id , sum(po_id) from supplier s join purchase_order po on po.supplier_id = s.supplier_id group by s.supplier_id 

-- 8. Find monthly purchase order amount trend.
-- select extract (month from po_date) ,total_po_amount from purchase_order  

-- 9. Find total quantity purchased for each product.
-- select p.product_id ,sum(i.stock_quantity) from inventory i join product p on i.product_id = p.product_id 
-- join supplier s on s.supplier_id = i.supplier_id
-- join purchase_order po on po.supplier_id = s.supplier_id group by p.product_id


-- 10. Find suppliers with total purchase amount greater than 10,00,000.
-- select s.supplier_id ,sum(total_po_amount) from purchase_order po 
-- join supplier s on po.supplier_id = s.supplier_id group by s.supplier_id having sum(total_po_amount) >1000000


-- 11.Calculate average stock quantity per product.
-- select p.product_id , avg(stock_quantity) from product p 
-- join inventory i on i.product_id = p.product_id group by p.product_id

-- 12. Find category-wise total inventory value.

-- select c.category_id ,sum(unit_price)  from category c join product p on c.category_id = p.category_id group by c.category_id

-- 13.Calculate total pending purchase order value.
-- select  sum (total_po_amount) from purchase_order where po_status = 'Pending'

-- 14. Find top 5 most expensive products.
-- select * from product order by unit_price desc limit 5 

-- 15. Find warehouse capacity utilization (stock vs capacity).
-- select stock_quantity , w.capacity_units from inventory i join warehouse w on w.warehouse_id = i.warehouse_id



-- PART C: MIXED (JOIN + AGGREGATE) PRACTICE
-- 1. Find total inventory value per category.
-- select i.inventory_id , sum(c.category_id) from inventory i join product p on i.product_id = i.product_id
-- join category c on c.category_id = p.category_id group by i.inventory_id

-- 2. Find supplier-wise total stock quantity.
-- select s.supplier_id , sum(stock_quantity) from supplier s join inventory i on s.supplier_id = i.supplier_id group by s.supplier_id
-- 3. Find warehouse-wise number of unique products.

-- 4. Find products below reorder level with supplier name.
-- select s.supplier_name , i.reorder_level ,p.product_id
-- from product p join inventory i on p.product_id = i.product_id
-- join supplier s on s.supplier_id = i.supplier_id 
-- where p.product_id < i.reorder_level 


-- 5. Find top 3 suppliers by total procurement spend.
-- select s.supplier_id , s.supplier_name from purchase_order po join supplier s on po.supplier_id = s.supplier_id  order by po.total_po_amount desc limit 3

-- 6. Find warehouse with highest inventory value.
-- select * from warehouse w join inventory i on w.warehouse_id = i.warehouse_id where capacity_units = (select max(capacity_units) from warehouse)

-- 7. Find category contributing highest procurement cost.
-- select c.category_id , c.category_name from category c join product p on p.category_id = c.category_id 
-- join inventory i on i.product_id = p.product_id 
-- join supplier s on s.supplier_id = i.supplier_id  
-- join purchase_order po on po.supplier_id = s.supplier_id where total_po_amount =
-- (select max(total_po_amount) from purchase_order po )

-- 8. Find average purchase order value per supplier.
-- select s.supplier_id , avg(total_po_amount) from purchase_order po join supplier s on po.supplier_id = s.supplier_id group by s.supplier_id

-- 9. Find products purchased more than 50 units in total. ****
-- select * from product p join inventory i on i.product_id = p.product_id 
-- join supplier s on s.supplier_id = i.supplier_id 
-- join purchase_order po on po.supplier_id = s.supplier_id

-- 10. Find supplier supplying maximum number of products.***
-- select s.supplier_id ,count(p.product_id) from supplier s join inventory i on i.supplier_id = s.supplier_id
-- join product p on i.product_id = p.product_id group by s.supplier_id having count(p.product_id) in

-- 11. Find monthly procurement spend per category.
-- select c.category_id ,sum(total_po_amount)  from purchase_order po join supplier s on s.supplier_id = po.supplier_id
-- join inventory i on i.supplier_id = s.supplier_id 
-- join product p on p.product_id = i.product_id
-- join category c on c.category_id = p.category_id group by c.category_id

-- 12. Find warehouses storing Electronics products.
-- select w.warehouse_id , w.warehouse_name , c.category_name from warehouse w join  inventory i on i.warehouse_id = w.warehouse_id 
-- join product p on p.product_id = i.product_id
-- join category c on c.category_id = p.category_id where category_name = 'Electronics'

-- 13. Find supplier-wise pending purchase order value.
-- select * from supplier s join purchase_order po on po.supplier_id = s.supplier_id  where po_status = 'Pending'

-- 14. Find products stocked in more than one warehouse.
-- select p.product_id ,count(w.warehouse_id) from product p join inventory i on p.product_id = i.product_id 
-- join warehouse w on w.warehouse_id = i.warehouse_id group by p.product_id having count(w.warehouse_id) >1

-- 15. Find slow-moving products (high stock, low purchase)
-- select p.product_id, count(w.warehouse_id) ware ,count( po.po_id) purch from product p join inventory i on i.product_id = p.product_id
-- join warehouse w on w.warehouse_id = i.warehouse_id
-- join purchase_order po on po.warehouse_id = w.warehouse_id group by  p.product_id 


