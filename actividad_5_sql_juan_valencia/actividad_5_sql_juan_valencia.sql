-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for heladeria_y_pizzeria_la_65
DROP DATABASE IF EXISTS `heladeria_y_pizzeria_la_65`;
CREATE DATABASE IF NOT EXISTS `heladeria_y_pizzeria_la_65` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `heladeria_y_pizzeria_la_65`;

-- Dumping structure for table heladeria_y_pizzeria_la_65.customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `age` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table heladeria_y_pizzeria_la_65.customers: ~5 rows (approximately)
DELETE FROM `customers`;
INSERT INTO `customers` (`id`, `name`, `age`) VALUES
	(1, 'Patricia', 17),
	(2, 'Juanito', 19),
	(3, 'Pepe', 12),
	(4, 'Carla', 36),
	(5, 'Carlos', 35);

-- Dumping structure for table heladeria_y_pizzeria_la_65.discounts
DROP TABLE IF EXISTS `discounts`;
CREATE TABLE IF NOT EXISTS `discounts` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `discount` float NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table heladeria_y_pizzeria_la_65.discounts: ~5 rows (approximately)
DELETE FROM `discounts`;
INSERT INTO `discounts` (`id`, `discount`, `name`) VALUES
	(1, 0.8, 'birthday'),
	(2, 0.3, 'mothers_day'),
	(3, 0.14, 'san_valentin'),
	(4, 0.05, 'coupon'),
	(5, 0.3, 'fathers_day');

-- Dumping structure for table heladeria_y_pizzeria_la_65.discounts_sales
DROP TABLE IF EXISTS `discounts_sales`;
CREATE TABLE IF NOT EXISTS `discounts_sales` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` smallint(6) NOT NULL,
  `discount_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table heladeria_y_pizzeria_la_65.discounts_sales: ~5 rows (approximately)
DELETE FROM `discounts_sales`;
INSERT INTO `discounts_sales` (`id`, `sale_id`, `discount_id`) VALUES
	(1, 1, 3),
	(2, 2, 2),
	(3, 3, 4),
	(4, 4, 1),
	(5, 5, 1);

-- Dumping structure for table heladeria_y_pizzeria_la_65.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `prices` float unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table heladeria_y_pizzeria_la_65.products: ~5 rows (approximately)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `prices`) VALUES
	(1, 'big_ice_cream', 9000),
	(2, 'little_chicken', 6000),
	(3, 'coca_cola', 1800),
	(4, 'hawaiian_pizza', 12000),
	(5, 'beer', 3500);

-- Dumping structure for table heladeria_y_pizzeria_la_65.products_sales
DROP TABLE IF EXISTS `products_sales`;
CREATE TABLE IF NOT EXISTS `products_sales` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` smallint(6) NOT NULL,
  `sale_id` smallint(6) NOT NULL,
  `amount` smallint(6) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table heladeria_y_pizzeria_la_65.products_sales: ~5 rows (approximately)
DELETE FROM `products_sales`;
INSERT INTO `products_sales` (`id`, `product_id`, `sale_id`, `amount`, `price`) VALUES
	(1, 1, 1, 2, 9000),
	(2, 2, 2, 1, 6000),
	(3, 3, 3, 1, 1800),
	(4, 4, 4, 5, 12000),
	(5, 5, 5, 10, 3500);

-- Dumping structure for table heladeria_y_pizzeria_la_65.sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `customer_id` smallint(6) NOT NULL,
  `date` datetime NOT NULL,
  `value` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table heladeria_y_pizzeria_la_65.sales: ~5 rows (approximately)
DELETE FROM `sales`;
INSERT INTO `sales` (`id`, `customer_id`, `date`, `value`) VALUES
	(1, 1, '2022-02-14 13:34:00', 18000),
	(2, 2, '2022-05-08 11:59:59', 6000),
	(3, 3, '2022-06-15 19:52:21', 1800),
	(4, 4, '2022-05-29 17:05:00', 60000),
	(5, 5, '2022-05-29 17:08:00', 35000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
