SELECT *
, margin + shipping_fee - logcost - ship_cost AS operational_margin
FROM {{ ref('int_orders_margin') }} as table_margin
LEFT JOIN {{ ref('stg_raw__ship')}} as table_ship
USING(orders_id)
ORDER BY orders_id DESC