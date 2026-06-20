
  create view "postgres"."postgres"."stg_orders__dbt_tmp"
    
    
  as (
    

with source as (

    select *
    from "postgres"."postgres"."globalsales"

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

    md5(cast(coalesce(cast(region as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT))
        as region_id,

    md5(cast(coalesce(cast(state as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT))
        as state_id,

    md5(cast(coalesce(cast(category as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT))
        as category_id,

    md5(cast(coalesce(cast(category as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(sub_category as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT))
        as subcategory_id,

    md5(cast(coalesce(cast(product_name as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT))
        as product_id

from source
  );