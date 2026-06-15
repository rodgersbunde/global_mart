
  
    

  create  table "postgres"."postgres"."dim_products__dbt_tmp"
  
  
    as
  
  (
    

SELECT DISTINCT 
    product_id,
    product_name,
    category,
	subcategory_id
FROM "postgres"."postgres"."stg_orders"
  );
  