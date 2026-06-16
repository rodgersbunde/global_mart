
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select sales
from "postgres"."postgres"."stg_orders"
where sales is null



  
  
      
    ) dbt_internal_test