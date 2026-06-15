{{ config(
    materialized = "table"
) }}

SELECT DISTINCT 
    product_id,
    product_name,
    category,
	subcategory_id
FROM {{ ref('stg_orders') }}