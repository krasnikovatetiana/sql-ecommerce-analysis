--Which product categories generate the most revenue by month?
with category_revenue as (
select
  FORMAT_TIMESTAMP('%Y-%m', oi.created_at) AS year_month,
  p.category as category,
  round(sum(oi.sale_price),2) as total_rev
from bigquery-public-data.thelook_ecommerce.products as p
join bigquery-public-data.thelook_ecommerce.order_items as oi
on p.id = oi.product_id
where lower(oi.status) = 'complete'
group by p.category, year_month
),
ranked_revenue AS (
  SELECT *,
         RANK() OVER (PARTITION BY year_month ORDER BY total_rev DESC) AS rnk
  FROM category_revenue
)
SELECT year_month, category, total_rev
FROM ranked_revenue
WHERE rnk = 1
ORDER BY year_month;
