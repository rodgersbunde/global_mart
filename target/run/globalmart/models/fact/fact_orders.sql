
      
        
        
        delete from "postgres"."postgres"."fact_orders" as DBT_INTERNAL_DEST
        where (order_id) in (
            select distinct order_id
            from "fact_orders__dbt_tmp133726805582" as DBT_INTERNAL_SOURCE
        );

    

    insert into "postgres"."postgres"."fact_orders" ("order_id", "product_id", "region_id", "state_id", "category_id", "subcategory_id", "order_date", "ship_date", "sales", "quantity", "discount", "profit", "profit_margin")
    (
        select "order_id", "product_id", "region_id", "state_id", "category_id", "subcategory_id", "order_date", "ship_date", "sales", "quantity", "discount", "profit", "profit_margin"
        from "fact_orders__dbt_tmp133726805582"
    )
  