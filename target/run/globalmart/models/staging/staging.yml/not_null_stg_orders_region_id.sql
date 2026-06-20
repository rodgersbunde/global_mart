
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select region_id
from "postgres"."postgres"."stg_orders"
where region_id is null



  
  
      
    ) dbt_internal_test