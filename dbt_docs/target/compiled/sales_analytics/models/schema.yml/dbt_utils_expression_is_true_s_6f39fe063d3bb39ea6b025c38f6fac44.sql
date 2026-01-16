



select
    1
from "sales"."main"."silver_fact_sales"

where not(cleaned_revenue > 0)

