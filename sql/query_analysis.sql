USE restaurant_analysis;

SELECT * FROM restaurant_analysis.restaurant;

ALTER TABLE restaurant
DROP COLUMN original_open_hours;

DELETE FROM restaurant
WHERE restaurant_id IS NOT NULL;

SELECT * FROM restaurant
LIMIT 10;

SELECT COUNT(*) AS total_restaurants
FROM restaurant;