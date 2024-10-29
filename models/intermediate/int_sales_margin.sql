SELECT *
FROM `raw.stg_raw__sales` AS sales
LEFT JOIN `raw.stg_raw_product` AS product
USING(products_id)