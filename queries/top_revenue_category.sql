--Which product category generated the highest revenue?
with category_revenue as (
select
  p.category as category,
  round(sum(oi.sale_price),2) as total_rev
from bigquery-public-data.thelook_ecommerce.products as p
join bigquery-public-data.thelook_ecommerce.order_items as oi
on p.id = oi.product_id
where lower(oi.status) = 'complete'
group by p.category
),
max_revenue as (
  select
  max(total_rev) as max_rev
  from category_revenue
)
select
  cr.category,
  mr.max_rev
from category_revenue as cr
join max_revenue as mr on mr.max_rev = cr.total_rev
