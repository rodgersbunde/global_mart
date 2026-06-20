
    
    

select
    subcategory_id as unique_field,
    count(*) as n_records

from "postgres"."postgres"."dim_subcategory"
where subcategory_id is not null
group by subcategory_id
having count(*) > 1


