with src_locations AS(
  SELECT * FROM `compute-1-367804.osztech_courses.olist_geolocation_dataset` 
)
SELECT 
  geolocation_zip_code_prefix as zip_code,
  geolocation_lat as latitude,
  geolocation_lng as longitude,
  geolocation_city as city,
  geolocation_state as state
FROM 
src_locations