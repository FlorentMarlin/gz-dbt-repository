SELECT *
, sales.quantity * product.purchase_price AS purchase_cost
, sales.revenue - sales.quantity*product.purchase_price AS margin
, {{ margin_percent('product.purchase_price', 'sales.quantity') }} AS margin_percent
FROM {{ ref('stg_raw__sales') }} AS sales
LEFT JOIN {{ ref('stg_raw__product') }} AS product
USING(products_id)