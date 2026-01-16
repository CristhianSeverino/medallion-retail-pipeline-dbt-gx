
{{ config(materialized='table') }}

SELECT *
FROM {{ source('bronze', 'dim_customer') }}
