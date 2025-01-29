{% macro margin_percent(revenue, purchase_cost,digits=2) %}
    ROUND(SAFE_DIVIDE({{revenue}} - {{purchase_cost}},{{revenue}}),{{digits}})
{% endmacro %}

--, digits=2