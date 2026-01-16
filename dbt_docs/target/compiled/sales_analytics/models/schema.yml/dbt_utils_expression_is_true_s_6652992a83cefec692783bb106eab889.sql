



select
    1
from "sales"."main"."silver_fact_sales"

where not(discount BETWEEN 0 AND 1)

