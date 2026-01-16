
  
    
    

    create  table
      "sales"."main"."silver_dim_time__dbt_tmp"
  
    as (
      

SELECT *
FROM "sales"."bronze"."dim_time"
    );
  
  