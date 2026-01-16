
  
    
    

    create  table
      "sales"."main"."silver_dim_location__dbt_tmp"
  
    as (
      

SELECT *
FROM "sales"."bronze"."dim_location"
    );
  
  