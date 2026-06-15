{{ config(
materialized='view')
 }}

with source as (

    select *
    from {{ ref('globalsales') }}

)

select

    order_id::text as order_id,
    ---cast(order_date as date) as order_date,
	order_date,
    cast(ship_date as date) as ship_date,

    trim(region) as region,
    trim(state) as state,
    trim(category) as category,
    trim(sub_category) as sub_category,
    trim(product_name) as product_name,

    sales,
    quantity,
    discount,
    profit,

    {{ dbt_utils.generate_surrogate_key(['region']) }}
        as region_id,

    {{ dbt_utils.generate_surrogate_key(['state']) }}
        as state_id,

    {{ dbt_utils.generate_surrogate_key(['category']) }}
        as category_id,

    {{ dbt_utils.generate_surrogate_key(['category','sub_category']) }}
        as subcategory_id,

    {{ dbt_utils.generate_surrogate_key(['product_name']) }}
        as product_id

from source