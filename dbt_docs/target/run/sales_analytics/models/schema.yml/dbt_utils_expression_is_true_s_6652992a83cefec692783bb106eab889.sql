
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "sales"."main"."silver_fact_sales"

where not(discount BETWEEN 0 AND 1)


  
  
      
    ) dbt_internal_test