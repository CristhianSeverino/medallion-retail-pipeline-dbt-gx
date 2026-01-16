
  
    
    

    create  table
      "sales"."main"."silver_dim_customer__dbt_tmp"
  
    as (
      

SELECT *
FROM "sales"."bronze"."dim_customer"
    );
  
  