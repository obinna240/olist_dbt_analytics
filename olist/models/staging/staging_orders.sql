with staging_src_orders as (
    select * from {{ ref('src_orders') }}
)
select * from


with o as(
  SELECT order_id, customer_id,order_status, order_purchase_timestamp,
  order_approved_at, order_delivered_carrier_date, order_delivered_customer_date, order_estimated_delivery_date FROM `compute-1-367804.osztech_courses.src_orders`
)
select 
  order_id,
  customer_id,
  order_status,
  YEAR(order_purchase_timestamp) as year,
  CASE order_status
    WHEN 'canceled' THEN 0
    WHEN 'delivered' THEN 1 
    WHEN 'invoiced' THEN 2
    when 'processing' THEN 3
    when 'shipped' THEN 4
    WHEN 'unavailable' THEN 5
    when 'created' THEN 6
    when 'approved' THEN 7
  END AS order_status_id
  from o