
  create view "postgres"."postgres"."dim_region__dbt_tmp"
    
    
  as (
    

SELECT DISTINCT
    region_id,
    region as region_name
FROM "postgres"."postgres"."stg_orders"
  );