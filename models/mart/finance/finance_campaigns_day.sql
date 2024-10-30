SELECT *
FROM {{ ref('finance_days')}} as finance_days
LEFT JOIN {{ ref('int_campaigns_day')}} as campaigns
USING(date_date)