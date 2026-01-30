CREATE TABLE IF NOT EXISTS `restaurant` (
	`restaurant_id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255) NOT NULL,
	`claimed` VARCHAR(255) NOT NULL,
	`awards` VARCHAR(255) NOT NULL,
	`open_days_per_week` FLOAT NOT NULL,
	`original_open_hours` VARCHAR(255) NOT NULL,
	`location_id` INTEGER NOT NULL,
	`price_range_id` VARCHAR(255),
	PRIMARY KEY(`restaurant_id`)
);


CREATE TABLE IF NOT EXISTS `location` (
	`location_id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`longitude` FLOAT,
	`latitude` FLOAT,
	`city_id` INTEGER NOT NULL,
	PRIMARY KEY(`location_id`)
);


CREATE TABLE IF NOT EXISTS `city` (
	`city_id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`city_id`)
);


CREATE TABLE IF NOT EXISTS `country` (
	`country_id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255) NOT NULL,
	`city_id` INTEGER NOT NULL,
	PRIMARY KEY(`country_id`)
);


CREATE TABLE IF NOT EXISTS `dietary_options` (
	`diet_id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`vegetarian_friendly` VARCHAR(255) NOT NULL,
	`vegan_options` VARCHAR(255) NOT NULL,
	`gluten_free` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`diet_id`)
);


CREATE TABLE IF NOT EXISTS `review_summary` (
	`review_id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`avg_rating` FLOAT,
	`total_reviews_count` FLOAT,
	`excellent` FLOAT,
	`terrible` FLOAT,
	PRIMARY KEY(`review_id`)
);


CREATE TABLE IF NOT EXISTS `language` (
	`language_id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`language_id`)
);


CREATE TABLE IF NOT EXISTS `meals` (
	`meal_id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`meal_type` VARCHAR(255),
	PRIMARY KEY(`meal_id`)
);


CREATE TABLE IF NOT EXISTS `price_range` (
	`price_id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`price_range` VARCHAR(255),
	PRIMARY KEY(`price_id`)
);


CREATE TABLE IF NOT EXISTS `restaurant_dietary_option` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`restaurant_id` INTEGER NOT NULL,
	`diet_id` INTEGER NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `restaurant_meals` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`restaurant_id` INTEGER NOT NULL,
	`meal_id` INTEGER NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `restaurant_language` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`restaurant_id` INTEGER NOT NULL,
	`language_id` INTEGER NOT NULL,
	PRIMARY KEY(`id`)
);


ALTER TABLE `restaurant`
ADD FOREIGN KEY(`restaurant_id`) REFERENCES `review_summary`(`review_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `restaurant`
ADD FOREIGN KEY(`restaurant_id`) REFERENCES `price_range`(`price_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `restaurant`
ADD FOREIGN KEY(`location_id`) REFERENCES `location`(`location_id`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `restaurant_meals`
ADD FOREIGN KEY(`restaurant_id`) REFERENCES `restaurant`(`restaurant_id`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `meals`
ADD FOREIGN KEY(`meal_id`) REFERENCES `restaurant_meals`(`meal_id`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `restaurant_language`
ADD FOREIGN KEY(`restaurant_id`) REFERENCES `restaurant`(`restaurant_id`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `restaurant_language`
ADD FOREIGN KEY(`language_id`) REFERENCES `language`(`language_id`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `restaurant`
ADD FOREIGN KEY(`price_range_id`) REFERENCES `price_range`(`price_range`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `restaurant_dietary_option`
ADD FOREIGN KEY(`diet_id`) REFERENCES `dietary_options`(`diet_id`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `country`
ADD FOREIGN KEY(`city_id`) REFERENCES `city`(`city_id`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `restaurant_dietary_option`
ADD FOREIGN KEY(`id`) REFERENCES `restaurant`(`restaurant_id`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `location`
ADD FOREIGN KEY(`city_id`) REFERENCES `city`(`city_id`)
ON UPDATE CASCADE ON DELETE CASCADE;