SELECT date_date
, count(distinct orders_id) AS nb_transactions
, sum(revenue) as revenue
, sum(revenue) / count(orders_id) as average_basket
, sum(margin) as margin
, sum(operational_margin) as operational_margin
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date
ORDER BY date_date DESC