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

SELECT c.city_name, COUNT(r.restaurant_id) AS total
FROM restaurant r
JOIN location l ON r.location_id = l.location_id
JOIN city c ON l.city_id = c.city_id
GROUP BY c.city_name
ORDER BY total DESC;

SELECT co.country_name, COUNT(r.restaurant_id) AS total
FROM restaurant r
JOIN location l ON r.location_id = l.location_id
JOIN city c ON l.city_id = c.city_id
JOIN country co ON c.city_id = co.city_id
GROUP BY co.country_name
ORDER BY total DESC;

SELECT r.restaurant_name,
       rs.avg_rating,
       rs.total_reviews_count
FROM restaurant r
JOIN review_summary rs ON r.review_id = rs.review_id
WHERE rs.total_reviews_count >= 100
ORDER BY rs.avg_rating DESC;

SELECT c.city_name,
       ROUND(AVG(rs.avg_rating), 2) AS avg_rating
FROM restaurant r
JOIN review_summary rs ON r.review_id = rs.review_id
JOIN location l ON r.location_id = l.location_id
JOIN city c ON l.city_id = c.city_id
GROUP BY c.city_name
ORDER BY avg_rating DESC;

SELECT r.restaurant_name
FROM restaurant r
JOIN restaurant_dietary_option rdo 
     ON r.restaurant_id = rdo.restaurant_id
JOIN dietary_options d 
     ON rdo.diet_id = d.diet_id
WHERE d.vegetarian_friendly = 'Yes';

SELECT r.restaurant_name,
       COUNT(rl.language_id) AS language_count
FROM restaurant r
JOIN restaurant_language rl 
     ON r.restaurant_id = rl.restaurant_id
GROUP BY r.restaurant_name
HAVING language_count > 1;

