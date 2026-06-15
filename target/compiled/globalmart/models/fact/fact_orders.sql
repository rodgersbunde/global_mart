

SELECT
    order_id,
    product_id,
    region_id,
    state_id,
    category_id,
    subcategory_id,
    order_date,
    ship_date,
    sales,
    quantity,
    discount,
    profit,
	profit / sales as profit_margin
FROM "postgres"."postgres"."stg_orders"

--

--where order_date > (
  --  select max_order_date 
   --- from (
    --    select max(order_date) as max_order_date 
    --    from "postgres"."postgres"."fact_orders"
    --) as sub
--)

--