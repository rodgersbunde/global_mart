{{ config(
materialized='view') 
}}

SELECT DISTINCT
    region_id,
    region as region_name
FROM {{ref('stg_orders') }}