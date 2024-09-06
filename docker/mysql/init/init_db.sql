CREATE DATABASE phpiggy;
GRANT ALL PRIVILEGES ON phpiggy.* TO 'root'@'%' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON phpiggy.* TO 'root'@'localhost' IDENTIFIED BY '';
USE phpiggy;
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (name) VALUES ('Shirts'),('Hats'),('Shoes'),('Gloves'),('Scarf'),('Glasses'),('Sweaters');