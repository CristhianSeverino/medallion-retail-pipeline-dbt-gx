

SELECT 
    sale_id,
    time_id,
    customer_id,
    product_id,
    location_id,
    quantity,
    price,
    discount,
    tax_rate,
    sale_timestamp,
    revenue_before_discount,
    revenue,
    -- Cleaning
    CASE WHEN quantity < 0 THEN 0 ELSE quantity END AS cleaned_quantity,
    CASE WHEN location_id < 1 THEN 1 ELSE location_id END AS cleaned_location_id,  -- Fix invalid
    CASE WHEN revenue <= 0 THEN revenue_before_discount ELSE revenue END AS cleaned_revenue
FROM "sales"."bronze"."fact_sales"

WHERE time_id > (SELECT MAX(time_id) FROM "sales"."main"."silver_fact_sales")
