with src_products as (
  select * from `osztech_courses.olist_products_dataset`
)
SELECT  
product_id,
product_category_name,
product_name_lenght as prduct_name_length,
product_description_lenght as product_description_length,
product_photos_qty,
product_weight_g as product_weight_grams,
product_length_cm as product_length_centimetres,
product_height_cm as product_height_centimetres,
product_width_cm as product_width_centimetres
FROM src_products