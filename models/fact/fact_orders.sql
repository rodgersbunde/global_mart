{{ config(
    materialized = 'incremental',
    unique_key = 'order_id'
) }}

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
FROM {{ ref('stg_orders') }}

--{% if is_incremental() %}

--where order_date > (
  --  select max_order_date 
   --- from (
    --    select max(order_date) as max_order_date 
    --    from {{ this }}
    --) as sub
--)

--{% endif %}