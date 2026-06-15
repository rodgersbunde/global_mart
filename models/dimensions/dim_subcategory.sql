{{ config(
materialized='view') 
}}

SELECT DISTINCT
	 subcategory_id,
    category_id,
    sub_category as subcategory_name
FROM {{ref('stg_orders') }}