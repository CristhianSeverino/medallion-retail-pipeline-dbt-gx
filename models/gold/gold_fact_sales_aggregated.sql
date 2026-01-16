
{{ config(materialized='table') }}

SELECT 
    t.date AS date_key,
    l.region AS region,
    c.segment AS customer_segment,
    p.category AS product_category,
    SUM(f.cleaned_quantity) AS total_quantity,
    SUM(f.cleaned_revenue) AS total_revenue,
    AVG(f.discount) AS avg_discount,
    SUM(f.cleaned_revenue - (p.cost * f.cleaned_quantity)) AS total_profit
FROM {{ ref('silver_fact_sales') }} f
JOIN {{ ref('silver_dim_time') }} t ON f.time_id = t.time_id
JOIN {{ ref('silver_dim_location') }} l ON f.cleaned_location_id = l.location_id
JOIN {{ ref('silver_dim_customer') }} c ON f.customer_id = c.customer_id
JOIN {{ ref('silver_dim_product') }} p ON f.product_id = p.product_id
GROUP BY 1, 2, 3, 4
