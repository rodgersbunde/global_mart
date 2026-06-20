
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select subcategory_id
from "postgres"."postgres"."dim_subcategory"
where subcategory_id is null



  
  
      
    ) dbt_internal_test