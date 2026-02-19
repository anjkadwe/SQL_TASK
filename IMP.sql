-- create table category(
-- category_id serial primary key ,
-- category_name varchar not null,
-- category_description varchar ,
-- active_status bool default 'yes'
-- ) ;

-- create table supplier(
-- supplier_id serial primary key ,
-- supplier_name varchar ,
-- supplier_type varchar ,
-- city varchar , 
-- state varchar,
-- country varchar,
-- contact_person varchar ,
-- contact_email varchar unique,
-- active_status bool default 'yes'
-- );

-- create table warehouse (
-- warehouse_id serial primary key ,
-- warehouse_name varchar ,
-- location_city varchar ,
-- state varchar ,
-- country varchar ,
-- warehouse_type varchar ,
-- capacity_units int check (capacity_units >0),
-- manager_name varchar ,
-- active_status bool default 'yes'
-- );
-- create table product (
-- product_id serial primary key ,
-- product_name varchar ,
-- category_id int references category (category_id),
-- brand varchar ,
-- unit_price int ,
-- active_status bool default 'yes'
-- );
-- create table purchase_order(
-- po_id serial primary key,
-- po_date date ,
-- supplier_id int references supplier(supplier_id),
-- warehouse_id int references warehouse(warehouse_id),
-- po_status status ,
-- total_po_amount int
-- );

-- create table purchase_order_item(
-- po_item_id serial primary key,
-- po_id int references purchase_order(po_id),
-- product_id  int references product(product_id),
-- quantity int ,
-- unit_price int,
-- line_total int
-- );


-- create table inventory (
-- inventory_id serial  primary key ,
-- product_id int references product (product_id) ,
-- supplier_id int references supplier( supplier_id),
-- warehouse_id  int references warehouse ( warehouse_id),
-- stock_quantity int ,
-- reorder_level int ,
-- last_updated date 
-- );


-- create type status as enum ('Pending','Completed' , 'pending' ,'completed')

-- copy category from 'D:\Practice Dataset\category.csv' delimiter ',' csv header
-- copy product from  'D:\Practice Dataset\product.csv' delimiter ',' csv header
-- copy supplier from 'D:\Practice Dataset\supplier.csv' delimiter ',' csv header
-- copy warehouse from 'D:\Practice Dataset\warehouse.csv' delimiter ',' csv header
-- copy inventory from 'D:\Practice Dataset\inventory.csv' delimiter ',' csv header
-- copy purchase_order from  'D:\Practice Dataset\purchase_order.csv' delimiter ',' csv header
-- copy purchase_order_item from 'D:\Practice Dataset\purchase_order_item.csv' delimiter ',' csv header

-- select * from category c join product p on c.category_id = p.category_id 
-- join inventory i on i.product_id = p.product_id
-- join supplier s on i.supplier_id = s.supplier_id
-- join warehouse w on i.warehouse_id = w.warehouse_id
-- join purchase_order po on  po.supplier_id = s.supplier_id
-- join purchase_order_item poi on poi.po_id = po.po_id


