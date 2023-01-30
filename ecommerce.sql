-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 30, 2023 at 08:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `street_name` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `line1`, `line2`, `city`, `state`, `street_name`, `country`, `phone`, `pincode`, `user_id`) VALUES
(1, 'Test Address', 'Test Address', 'Heiligenroth', 'Rheinland-Pfalz', 'Stuttgarter Platz 10', 'Germany', '9855698981', 110045, 1),
(2, 'Test Address 2', 'Test Address 2', 'Heiligenroth', 'Rheinland-Pfalz', ' Stuttgarter Platz 3', 'Germany', '9855698981', 560100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Shoes'),
(2, 'Electronics'),
(3, 'Laptops'),
(4, 'Shirts'),
(5, 'Smart Phones'),
(6, 'Cameras'),
(7, 'Accesories');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`) VALUES
(7, 1),
(8, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(6, 2),
(42, 2),
(43, 2),
(44, 2),
(63, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 23),
(121, 23),
(122, 26),
(123, 26),
(124, 26),
(125, 26),
(126, 26),
(127, 26),
(128, 26),
(129, 26),
(130, 26),
(132, 26),
(133, 26),
(134, 26),
(135, 26),
(136, 26),
(137, 26),
(138, 26),
(139, 26);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 6, 27, 1),
(2, 6, 26, 1),
(3, 6, 49, 1),
(4, 7, 4, 1),
(5, 8, 38, 1),
(6, 8, 5, 1),
(7, 8, 53, 1),
(9, 24, 26, 1),
(10, 24, 49, 1),
(11, 24, 38, 1),
(12, 24, 27, 1),
(45, 39, 1, 3),
(46, 39, 13, 3),
(47, 39, 18, 2),
(49, 40, 1, 2),
(50, 40, 18, 1),
(51, 40, 38, 2),
(52, 40, 13, 2),
(53, 41, 31, 2),
(54, 42, 1, 2),
(55, 42, 18, 1),
(56, 42, 38, 2),
(57, 42, 13, 2),
(58, 43, 13, 2),
(59, 43, 1, 2),
(60, 43, 18, 1),
(61, 43, 38, 2),
(62, 44, 1, 2),
(63, 44, 32, 3),
(64, 44, 13, 8),
(65, 44, 18, 5),
(66, 52, 4, 1),
(67, 53, 7, 1),
(68, 54, 1, 1),
(69, 55, 3, 6),
(70, 56, 1, 1),
(71, 56, 4, 1),
(72, 56, 7, 1),
(73, 56, 6, 1),
(74, 57, 2, 1),
(75, 57, 3, 1),
(76, 58, 3, 1),
(77, 58, 2, 1),
(78, 59, 2, 1),
(79, 59, 3, 1),
(80, 60, 2, 1),
(81, 60, 3, 1),
(82, 61, 2, 1),
(83, 61, 3, 1),
(84, 62, 1, 1),
(85, 62, 4, 1),
(86, 63, 1, 2),
(87, 63, 18, 5),
(88, 63, 32, 3),
(89, 63, 13, 8),
(90, 64, 1, 1),
(91, 64, 2, 1),
(92, 65, 2, 1),
(93, 65, 3, 1),
(94, 66, 2, 1),
(95, 67, 3, 2),
(96, 67, 2, 3),
(97, 68, 8, 2),
(98, 68, 7, 1),
(99, 69, 5, 2),
(100, 69, 6, 1),
(101, 70, 2, 1),
(102, 70, 3, 1),
(103, 71, 2, 1),
(104, 71, 1, 2),
(105, 71, 4, 6),
(106, 71, 3, 3),
(107, 72, 1, 1),
(108, 72, 3, 1),
(109, 73, 6, 2),
(110, 73, 4, 1),
(111, 74, 5, 1),
(112, 75, 6, 1),
(113, 76, 2, 1),
(114, 77, 2, 1),
(115, 77, 3, 1),
(116, 78, 1, 1),
(117, 78, 2, 1),
(118, 79, 6, 2),
(119, 79, 8, 1),
(120, 79, 7, 1),
(121, 80, 1, 1),
(122, 80, 2, 3),
(123, 81, 4, 3),
(124, 81, 2, 6),
(125, 81, 3, 6),
(126, 82, 2, 1),
(127, 82, 3, 1),
(128, 83, 5, 1),
(129, 85, 3, 3),
(130, 85, 6, 4),
(131, 85, 4, 1),
(132, 86, 2, 1),
(133, 87, 4, 3),
(134, 87, 6, 1),
(135, 89, 7, 4),
(136, 89, 4, 2),
(137, 89, 5, 3),
(138, 89, 6, 8),
(139, 90, 4, 4),
(140, 91, 2, 1),
(141, 93, 2, 1),
(142, 93, 3, 1),
(143, 94, 2, 1),
(144, 94, 3, 3),
(145, 95, 5, 1),
(146, 95, 3, 1),
(147, 95, 2, 1),
(148, 96, 2, 8),
(149, 96, 4, 1),
(150, 96, 3, 1),
(151, 97, 6, 1),
(152, 97, 5, 1),
(153, 98, 3, 6),
(154, 98, 4, 3),
(155, 99, 2, 14),
(156, 99, 5, 2),
(157, 100, 2, 5),
(158, 101, 3, 1),
(159, 102, 3, 3),
(160, 103, 2, 1),
(161, 103, 4, 3),
(162, 104, 1, 2),
(163, 104, 32, 3),
(164, 104, 13, 8),
(165, 104, 18, 5),
(166, 105, 1, 2),
(167, 105, 32, 3),
(168, 105, 18, 5),
(169, 105, 13, 8),
(170, 106, 13, 8),
(171, 106, 1, 2),
(172, 106, 32, 3),
(173, 106, 18, 5),
(174, 107, 1, 2),
(175, 107, 18, 5),
(176, 107, 32, 3),
(177, 107, 13, 8),
(178, 108, 2, 1),
(179, 109, 2, 1),
(180, 110, 5, 1),
(181, 110, 4, 1),
(182, 111, 6, 4),
(183, 111, 7, 1),
(184, 112, 5, 1),
(185, 112, 2, 1),
(186, 112, 3, 1),
(187, 113, 2, 1),
(188, 114, 3, 1),
(189, 115, 2, 1),
(190, 115, 3, 1),
(191, 116, 3, 1),
(192, 116, 5, 6),
(193, 117, 4, 1),
(194, 117, 5, 1),
(195, 118, 2, 1),
(196, 119, 3, 1),
(197, 120, 15, 1),
(198, 120, 6, 1),
(199, 120, 19, 6),
(200, 120, 3, 1),
(201, 121, 3, 1),
(202, 122, 2, 24),
(203, 122, 3, 1),
(204, 122, 5, 1),
(205, 122, 4, 1),
(206, 123, 44, 2),
(207, 123, 50, 2),
(208, 123, 5, 1),
(209, 123, 43, 1),
(210, 123, 8, 7),
(211, 123, 2, 2),
(212, 124, 2, 3),
(213, 124, 4, 1),
(214, 125, 2, 1),
(215, 125, 3, 3),
(216, 125, 4, 1),
(217, 126, 2, 1),
(218, 126, 3, 1),
(219, 127, 2, 1),
(220, 127, 3, 1),
(221, 128, 2, 1),
(222, 128, 3, 1),
(223, 129, 38, 1),
(224, 130, 2, 1),
(225, 132, 7, 1),
(226, 133, 7, 1),
(227, 133, 33, 4),
(228, 134, 32, 1),
(229, 135, 13, 1),
(230, 136, 3, 3),
(231, 137, 18, 1),
(232, 137, 7, 1),
(233, 138, 2, 1),
(234, 139, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `cat_id` int(10) DEFAULT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`, `rating`) VALUES
(1, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd;https://static.toiimg.com/thumb/msid-56933980,width-640,resizemode-4,imgsize-85436/56933980.jpg;https://cdn.mos.cms.futurecdn.net/3328be45e8c7fe5194055b4c687fb769-1200-80.jpeg;https://img.etimg.com/thumb/width-640,height-480,imgsize-76492,resizemode-1,msid-52464286/46.jpg', 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 0, 'Gaming console', 1, 4),
(2, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg;https://i.ebayimg.com/images/g/eQgAAOSw2XdePfc0/s-l640.jpg;https://i.ebayimg.com/images/g/j~gAAOSwQ6FdG9Eh/s-l640.jpg;https://i.ebayimg.com/images/g/OesAAOSwDnpeJhWN/s-l640.jpg', 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 15, 'SPORTS SHOES', 1, 4),
(3, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 57, 'SPORTS SHOES', 1, 4),
(4, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 75, 'Gaming console', 1, 4),
(5, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 81, 'Gaming console', 1, 4),
(6, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 0, 'SPORTS SHOES', 2, 4),
(7, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 92, 'SPORTS SHOES', 2, 4),
(8, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 93, 'Gaming console', 2, 4),
(9, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 100, 'Gaming console', 2, 4),
(10, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 2, 4),
(11, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 3, 4),
(12, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 3, 4),
(13, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 67, 'Gaming console', 3, 4),
(14, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 3, 4),
(15, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 99, 'SPORTS SHOES', 3, 4),
(16, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 4, 4),
(17, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 100, 'Gaming console', 4, 4),
(18, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 79, 'SPORTS SHOES', 4, 4),
(19, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 94, 'SPORTS SHOES', 4, 4),
(20, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 4, 4),
(21, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 100, 'Gaming console', 5, 4),
(22, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 5, 4),
(23, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 5, 4),
(24, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 5, 4),
(25, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 100, 'Gaming console', 5, 4),
(26, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 6, 4),
(27, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 6, 4),
(28, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 6, 4),
(29, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 100, 'Gaming console', 6, 4),
(30, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 6, 4),
(31, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 7, 4),
(32, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 87, 'Gaming console', 7, 4),
(33, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 96, 'SPORTS SHOES', 7, 4),
(34, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 7, 4),
(35, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 7, 4),
(36, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 100, 'Gaming console', 1, 4),
(37, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 2, 4),
(38, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 99, 'SPORTS SHOES', 3, 4),
(39, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 4, 4),
(40, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 5, 4),
(41, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 6, 4),
(42, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 7, 4),
(43, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 99, 'Gaming console', 1, 4),
(44, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 98, 'SPORTS SHOES', 2, 4),
(45, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 3, 4),
(46, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 4, 4),
(47, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 5, 4),
(48, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 6, 4),
(49, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 7, 4),
(50, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 98, 'Gaming console', 1, 4),
(51, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 2, 4),
(52, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 3, 4),
(53, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) DEFAULT 'not set',
  `lname` varchar(255) DEFAULT 'not set',
  `age` int(10) DEFAULT 18,
  `role` int(10) DEFAULT 555,
  `photoUrl` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fname`, `lname`, `age`, `role`, `photoUrl`, `type`) VALUES
(1, 'john', '$2b$10$iLEz3tkVKeOCwuagcqhDUOV.Iswjc.I41unbnnFGiqK/gmstDCC3i', 'john@gmail.com', 'Indranil', 'Mukherjee', 31, 777, '', 'local'),
(2, 'shane', '$2b$10$ewemZ.oLASXUIWfUrjkDeOTCZUCpnhSlR3/Act2eQnvGg6mnGLOtG', 'shane123@gmail.com', 'Navoneel', 'Mukherjee', 27, 555, '', 'local'),
(11, 'mike', '$2b$10$vIS0W3LKhbx2tFh1GMYWhul7GWtIg4jnKU2C/NGux1pUG3QKMdNzO', 'mike-doe@excellent.com', 'Mike', 'Leming', 40, 555, 'https://i.pinimg.com/originals/dc/55/a0/dc55a0fec14d93d9cf6fa32c32f7c7f2.jpg', 'local'),
(14, 'indramukh', '$2b$10$po91FRkYQIfPDN6G1BxG0uIV7Z54GbJRkJw2t9wRec9uqmRKillqa', 'indramukh@hotmail.com', 'Indranil', 'Mukherjee', NULL, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(19, 'test', '$2b$10$cSa3jm7cboNSJRTgNRFJg.GviAzr/pyfptMxwxmjdKP./CdxDtLlK', 'test@gmail.com', 'Indranil', 'Mukherjee', NULL, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(20, 'bhaikaju', '$2b$10$P9X8c/MC39.Zxr2k5SfxK.lwbcj6PNou2ueqod29CFZrmuDUCvlfe', 'bhaikaju@gmail.com', 'Programming\'s Fun', 'not set', NULL, 555, 'https://lh3.googleusercontent.com/a-/AOh14GiPx0OQHJOCy-fSfNmKr1vbnM-Rp7CgS_jx_6oY=s96-c', 'social'),
(21, 'shreyamukherjee07', '$2b$10$SOw/LSErH0IbZ96h7pop.O6NJreOD3HjRGiZZmKnqiXiuUPCl8b8W', 'shreyamukherjee07@gmail.com', 'Shreya', 'Mukherjee', NULL, 555, 'https://lh3.googleusercontent.com/a-/AOh14Gg2Be7kKwqsUbQwyuCGToyZcCQ3ZDDWNkvSbQJVHA=s96-c', 'social'),
(23, 'username', 'e10adc3949ba59abbe56e057f20f883e', 'c', 'gayathri', 'not set', 18, 555, NULL, 'local'),
(24, '1234', 'e10adc3949ba59abbe56e057f20f883e', '1234@gmail.com', 'gayathri', 'not set', 18, 555, NULL, 'local'),
(25, 'rachithmr02', 'e10adc3949ba59abbe56e057f20f883e', 'rachithmr02@gmail.com', 'gayathri', 'not set', 18, 555, NULL, 'local'),
(26, 'abc', 'e10adc3949ba59abbe56e057f20f883e', 'abc@gmail.com', 'gayathri', 'not set', 18, 555, NULL, 'local'),
(27, 'aaa', 'e10adc3949ba59abbe56e057f20f883e', 'aaa@user.com', 'aaa', 'not set', 18, 555, NULL, 'local');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_addresses_users1_idx` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_users1_idx` (`user_id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_has_products_products1_idx` (`product_id`),
  ADD KEY `fk_orders_has_products_orders1_idx` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`cat_id`);
ALTER TABLE `products` ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_addresses_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `fk_orders_has_products_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_has_products_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
