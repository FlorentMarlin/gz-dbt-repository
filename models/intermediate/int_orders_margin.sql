SELECT orders_id
, CAST(date_date AS DATE) date_date
, revenue
, quantity
, purchase_cost
, revenue - purchase_cost AS margin
FROM {{ ref('int_sales_margin') }}