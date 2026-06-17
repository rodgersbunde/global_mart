

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