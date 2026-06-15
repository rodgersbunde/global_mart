
    
    

select
    state_id as unique_field,
    count(*) as n_records

from "postgres"."postgres"."dim_state"
where state_id is not null
group by state_id
having count(*) > 1


