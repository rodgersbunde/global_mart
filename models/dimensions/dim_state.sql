{{ config(
materialized='view') 
}}

SELECT DISTINCT
    category_id,
    category as category_name
FROM {{ref('stg_orders') }}