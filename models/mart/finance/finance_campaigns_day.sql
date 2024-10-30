SELECT 
    finance_days.date_date AS date_date,
    finance_days.operational_margin - campaigns.ads_cost AS ads_margin,
    finance_days.revenue / COUNT(finance_days.nb_transactions) AS average_basket,
    finance_days.operational_margin AS operational_margin,
    campaigns.ads_cost AS ads_cost,
    campaigns.ads_impression AS ads_impression,
    campaigns.ads_clicks AS ads_clicks,
    finance_days.revenue AS revenue,
    finance_days.margin AS margin
FROM {{ ref('finance_days')}} as finance_days
LEFT JOIN {{ ref('int_campaigns_day')}} as campaigns
USING(date_date)