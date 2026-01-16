
  
  create view "sales"."main"."gold_monthly_revenue_yoy__dbt_tmp" as (
    

WITH monthly AS (
    SELECT 
        t.year || '-' || LPAD(t.month::TEXT, 2, '0') AS month_key,
        l.region,
        SUM(f.cleaned_revenue) AS revenue
    FROM "sales"."main"."silver_fact_sales" f
JOIN "sales"."main"."silver_dim_time" t ON f.time_id = t.time_id
JOIN "sales"."main"."silver_dim_location" l ON f.cleaned_location_id = l.location_id
GROUP BY 1, 2
)
SELECT 
    month_key,
    region,
    revenue,
    LAG(revenue) OVER (PARTITION BY region ORDER BY month_key) AS prev_revenue,
    (revenue - LAG(revenue) OVER (PARTITION BY region ORDER BY month_key)) / NULLIF(LAG(revenue) OVER (PARTITION BY region ORDER BY month_key), 0) * 100 AS yoy_growth
FROM monthly
  );
