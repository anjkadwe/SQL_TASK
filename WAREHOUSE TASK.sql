-- 4 
-- select * from warehouse where warehouse_id in 
-- (select warehouse_id from inventory group by warehouse_id having sum(stock_quantity) >
-- (select avg(total_stock) from  (select sum(stock_quantity) as total_stock from inventory group by warehouse_id)
-- )



-- select * from product

-- select* , dense_rank()over (partition by category_id order by category_id desc) from product