
  create view "postgres"."postgres"."dim_state__dbt_tmp"
    
    
  as (
    

SELECT DISTINCT
    state_id,
    --region_id,
    state as state_name
FROM "postgres"."postgres"."stg_orders"
  );