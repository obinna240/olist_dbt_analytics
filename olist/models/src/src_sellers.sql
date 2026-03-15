with src_sellers AS (
  SELECT
    seller_id,
    seller_city,
    seller_state,
    seller_zip_code_prefix
    from `osztech_courses.olist_sellers_dataset`
)
select * from src_sellers