-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 19, 2026 at 02:34 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m_a_inventory`
--
CREATE DATABASE IF NOT EXISTS `m_a_inventory` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `m_a_inventory`;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_counts`
--

DROP TABLE IF EXISTS `inventory_counts`;
CREATE TABLE IF NOT EXISTS `inventory_counts` (
  `count_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `last_stock` int NOT NULL DEFAULT '0',
  `added_stock` int NOT NULL DEFAULT '0',
  `sold` int NOT NULL DEFAULT '0',
  `current_stock` int GENERATED ALWAYS AS (((`last_stock` + `added_stock`) - `sold`)) STORED,
  `count_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`count_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inventory_counts`
--

INSERT INTO `inventory_counts` (`count_id`, `product_id`, `last_stock`, `added_stock`, `sold`, `count_date`) VALUES
(1, 1, 0, 20, 0, '2026-08-27 14:09:50'),
(2, 1, 20, 0, 16, '2026-08-27 14:12:26'),
(3, 1, 4, 30, 0, '2026-08-27 14:12:36'),
(4, 1, 34, 0, 6, '2026-08-27 14:13:18'),
(5, 2, 0, 50, 0, '2026-08-27 14:17:59'),
(6, 2, 50, 0, 15, '2026-08-27 14:18:06'),
(7, 1, 28, 0, 22, '2026-09-02 22:18:55'),
(8, 1, 6, 0, 6, '2026-09-02 22:19:05'),
(9, 1, 0, 25, 0, '2026-09-02 22:19:20'),
(10, 1, 25, 0, 24, '2026-09-02 22:40:38'),
(11, 1, 1, 0, 1, '2026-09-02 22:40:50'),
(12, 1, 0, 30, 0, '2026-09-02 22:40:57'),
(13, 1, 30, 0, 25, '2026-09-06 10:18:39'),
(14, 1, 5, 30, 0, '2026-09-06 10:19:10'),
(15, 3, 0, 50, 0, '2026-09-07 00:34:47'),
(16, 4, 0, 50, 0, '2026-09-07 00:34:55'),
(17, 5, 0, 30, 0, '2026-09-07 00:35:05'),
(18, 6, 0, 60, 0, '2026-09-07 00:35:16'),
(19, 1, 35, 0, 34, '2026-09-11 13:24:46'),
(20, 1, 1, 35, 0, '2026-09-11 13:24:57'),
(21, 1, 36, 0, 35, '2026-09-13 12:51:11'),
(22, 1, 1, 30, 0, '2026-09-13 12:51:22'),
(23, 1, 31, 0, 16, '2026-09-13 12:51:31'),
(24, 1, 15, 0, 15, '2026-09-13 12:51:39'),
(25, 1, 0, 4, 0, '2026-09-13 12:51:44'),
(26, 1, 4, 35, 0, '2026-09-13 12:51:49'),
(27, 7, 0, 50, 0, '2026-09-14 00:23:40'),
(28, 7, 50, 0, 20, '2026-09-14 00:23:53'),
(29, 1, 39, 1, 0, '2026-09-24 00:15:16'),
(30, 1, 40, 9876, 0, '2026-09-24 00:15:31'),
(31, 8, 0, 5, 0, '2026-10-03 12:56:49'),
(32, 8, 5, 0, 5, '2026-10-14 23:52:29'),
(33, 8, 0, 1, 0, '2026-10-14 23:52:44'),
(34, 8, 1, 5, 0, '2026-10-14 23:53:01'),
(35, 8, 6, 3, 0, '2026-10-14 23:53:07'),
(36, 8, 9, 1, 0, '2026-10-14 23:53:13'),
(37, 8, 10, 1, 0, '2026-10-14 23:53:22'),
(38, 3, 50, 20, 0, '2026-10-15 00:07:48'),
(39, 3, 70, 0, 30, '2026-10-15 00:07:56'),
(40, 9, 0, 100, 0, '2026-10-15 01:04:21'),
(41, 2, 35, 12, 0, '2026-10-19 07:39:34'),
(42, 7, 30, 0, 10, '2026-10-19 07:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) DEFAULT NULL,
  `product_photo` varchar(255) DEFAULT NULL,
  `product_description` varchar(100) DEFAULT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `product_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_photo`, `product_description`, `company_name`, `product_price`) VALUES
(13, 'Crayons', '1792403812_24pcs crayons.jpg', '24pcs Crayons', 'Company B', 50.00),
(2, 'Notebook', 'spiral-notebook-80-leaves.jpg', '80lvs notebook', 'Company B', 35.00),
(3, 'Bingo', 'bingo.jpg', 'chocolate - 12 per pack', 'Company A', 105.00),
(4, 'Combi', 'combi.jpg', '12 per pack', 'Company A', 105.00),
(5, 'C2', 'C2.jpg', 'Apple 500ml ', 'Company A', 40.00),
(12, 'Pencil', '1792399472_monggol.jpg', 'Monggol pencil 12pcs/box', 'Company B', 50.00),
(7, 'Shoes', 'shoes.webp', 'Black leather flat shoes', 'Company B', 150.00),
(8, 'Impact drill', 'drill.png', 'medium size impact drill', 'Company C', 899.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `position` varchar(50) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `dateandtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `position`, `company`, `password`, `dateandtime`) VALUES
(1, 'James Carlyle Regudo', 'james@email.com', 'Owner', 'Company A', '$2y$10$iUBS7sGuAm1mixYBvN6uvO0GpqjccI8B4vlR2LSz0o1Gk2FBhH8ne', '2026-08-27 12:32:55'),
(4, 'Haide Malda', 'malda@email.com', 'Supplier', 'Company B', '$2y$10$N3UikvIS3MocCjMuO0pMBepxWAX4xgxgkec8/sodYUYlNCcq.I7cm', '2026-09-02 22:59:17'),
(11, 'Jasmin Rosales', 'jasmin@email.com', 'diser', 'Company B', '$2y$10$T3EjfHepMS0/EtiJQRMGQucZEkzFXB6nEnrPc7xu806vGwGdyxWtS', '2026-09-14 00:12:57'),
(7, 'Marcos Von', 'marcos@sample.com', 'Supplier', 'Company A', '$2y$10$oJ9iVZVgM/nLKfHM1atq1ue8htoa6w3JAguKza1fxt9fpBcE/OHum', '2026-09-10 00:36:02'),
(12, 'Sheila Tomimbo', 'sheila@email.com', 'Diser', 'Company A', '$2y$10$bfsjOPqSUUAtThP3AFKbZeC6VL9XiwmWvpUBGsmWC.G6iQ4TLIyYa', '2026-09-14 00:49:29'),
(13, 'ace', 'ace@email.com', 'diser', 'Company A', '$2y$10$rs27sIYM3SRdneVeg9UGFuTvsn9cOCVtu62m0Asf71XbC/5yzFCBa', '2026-09-24 00:07:33'),
(14, 'Kurt Bohol', 'kurt@gmai.com', 'Diser', 'Company B', '$2y$10$KzAo5eVeOPbNFN7N5LDcdecplD24CK347gaLX2OpqWqygOJ1xttim', '2026-09-24 00:11:00'),
(15, 'ding', 'ding@email.com', 'Diser', 'Company C', '$2y$10$c3Gf6o3nyDy.P51u6fyx4eoBhaX58r93KrYzpXBW1X1nMk9g/I/U6', '2026-10-01 00:56:51'),
(16, 'Carlyle', 'carlyle@email.com', 'Supplier', 'Company C', '$2y$10$vBXT3Dzf0YMQw0RaL8HCzezVzpGJsN9LN695AFMeaqVG5uHLvDSrO', '2026-10-03 12:53:46'),
(17, 'Bentoy', 'bt@gmail.com', 'Diser', NULL, '$2y$10$D5dAeuZ1/9stPl0cSfoshuoI0pwH.XyjADxUD2/oskTicTqVNU7gO', '2026-10-14 23:42:38');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
