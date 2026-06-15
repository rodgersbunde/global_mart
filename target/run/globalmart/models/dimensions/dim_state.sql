
  create view "postgres"."postgres"."dim_state__dbt_tmp"
    
    
  as (
    

SELECT DISTINCT
    category_id,
    category as category_name
FROM "postgres"."postgres"."stg_orders"
  );