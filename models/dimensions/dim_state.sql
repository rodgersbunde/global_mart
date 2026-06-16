{{ config(
materialized='view') 
}}

SELECT DISTINCT
    state_id,
    region_id,
    state as state_name
FROM {{ref('stg_orders') }}