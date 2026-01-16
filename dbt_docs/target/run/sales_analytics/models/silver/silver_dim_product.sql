
  
    
    

    create  table
      "sales"."main"."silver_dim_product__dbt_tmp"
  
    as (
      

SELECT *
FROM "sales"."bronze"."dim_product"
    );
  
  