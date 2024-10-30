SELECT *
, sales.quantity * product.purchase_price AS purchase_cost
FROM {{ ref('stg_raw__sales') }} AS sales
LEFT JOIN {{ ref('stg_raw__product') }} AS product
USING(products_id)