-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 10:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nickautomatic`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL,
  `firstname` varchar(999) NOT NULL,
  `lastname` varchar(999) NOT NULL,
  `email` varchar(999) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(999) NOT NULL,
  `postal` varchar(299) NOT NULL,
  `province` varchar(299) NOT NULL,
  `city` varchar(299) NOT NULL,
  `baranggay` varchar(299) NOT NULL,
  `street` varchar(299) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `role`, `firstname`, `lastname`, `email`, `phone`, `password`, `postal`, `province`, `city`, `baranggay`, `street`) VALUES
(1, 'admin', 'Admin', 'Admin', 'Admin@admin.com', '123121', 'Admin123', '9019', 'Misamis Oriental', 'Laguindingan, Misamis Oriental', 'Poblacion', 'I dont werswa'),
(2, 'user', 'John Wilbur', 'Abellanosa', 'Abellanosa123@gmail.com', '+63 967 027 4305', 'Abellanosa', '9019', 'Misamis Oriental', 'Aslkjd', 'Secret', 'Wawers'),
(3, 'user', 'Jay', 'Jay', 'example@yahoo.com', '', '123456789', '', '', '', '', ''),
(4, 'user', 'Wawers', 'Wawers', 'wawers@gmail.com', '', 'zxcvbnm', '', '', '', '', ''),
(5, 'user', 'Wilbur', 'Abellanosa', 'test@gmail.com', '09670274305', 'test123', '9019', 'Misamis Oriental', 'Laguindingan', 'Poblacion', 'Madjos street'),
(9, 'user', 'Marina', 'Summers', 'aptapt@gmail.com', '09171184687', 'aptapt', '9016', 'Misamis Oriental', 'Opol', 'Barra', 'Aptapt'),
(10, 'user', 'Local', 'Host', 'local@gmail.com', '09670274305', 'local123', '9019', 'Misamis oriental', 'Laguindingan', 'Poblacion', 'Madjos street');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `productimage` varchar(225) NOT NULL,
  `productid` varchar(225) NOT NULL,
  `productname` varchar(225) NOT NULL,
  `quantity` varchar(225) NOT NULL,
  `size` varchar(225) NOT NULL,
  `fullname` varchar(225) NOT NULL,
  `fullnameid` varchar(225) NOT NULL,
  `price` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `productimage`, `productid`, `productname`, `quantity`, `size`, `fullname`, `fullnameid`, `price`, `status`, `regdate`) VALUES
(25, '462560628_1531068890875184_8173853063862052344_n.jpg', '60', 'Women\'s Le Chic Relaxed Fit Graphic T-Shirt', '1', 'Medium', 'Jay Jay', '3', '1000', 'NotYetCheckOut', '0000-00-00 00:00:00'),
(26, '462560628_1531068890875184_8173853063862052344_n.jpg', '60', 'Women\'s Le Chic Relaxed Fit Graphic T-Shirt', '1', 'Medium', 'Jay Jay', '3', '1000', 'NotYetCheckOut', '2024-10-22 06:34:31'),
(27, 'kidss.jpg', '70', 'Print-Reebok-motif T-shirt', '1', 'Medium', 'Jay Jay', '3', '599', 'NotYetCheckOut', '2024-10-22 06:36:12'),
(32, 'ECOMMTHUMBNAIL_1333X2000copy4_a7ce4aa9-e9da-47a4-8961-ea609d3121f1.jpg', '62', 'Women\'s Follow Your Intuition Graphic Pullover Sweater', '1', 'Medium', 'Marina Summers', '7', '899', '', '2024-10-22 14:33:27'),
(33, 'ECOMMTHUMBNAIL_1333X2000copy5.jpg', '64', 'Regular Fit Flat Knit Cardigan', '5', 'Medium', 'Marina Summers', '7', '899', '', '2024-10-22 14:33:45'),
(139, '462544301_1180940400115300_6815070060922690566_n.jpg', '69', 'Nick Automatic Illumatic', '4', 'Medium', 'Wilbur Abellanosa', '5', '892', '', '2024-11-07 09:09:03'),
(140, 'kidss.jpg', '70', 'Print-Reebok-motif T-shirt', '5', 'Medium', 'Wilbur Abellanosa', '5', '599', '', '2024-11-07 09:09:06'),
(141, 'ECOMMTHUMBNAIL_1333X2000copy5.jpg', '64', 'Regular Fit Flat Knit Cardigan', '5', 'Medium', 'Wilbur Abellanosa', '5', '899', '', '2024-11-07 09:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `confirmedorder`
--

CREATE TABLE `confirmedorder` (
  `id` int(11) NOT NULL,
  `productid` varchar(123) NOT NULL,
  `productimage` varchar(225) NOT NULL,
  `productname` varchar(225) NOT NULL,
  `quantity` varchar(225) NOT NULL,
  `size` varchar(225) NOT NULL,
  `fullname` varchar(225) NOT NULL,
  `fullnameid` varchar(123) NOT NULL,
  `price` varchar(225) NOT NULL,
  `totalprice` varchar(155) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `confirmedorder`
--

INSERT INTO `confirmedorder` (`id`, `productid`, `productimage`, `productname`, `quantity`, `size`, `fullname`, `fullnameid`, `price`, `totalprice`, `regdate`) VALUES
(1, '69', '462544301_1180940400115300_6815070060922690566_n.jpg', 'Nick Automatic Illumatic', '5', 'Medium', 'Admin Admin', '1', '892', '4460', '2024-10-26 13:36:27'),
(2, '69', '462544301_1180940400115300_6815070060922690566_n.jpg', 'Nick Automatic Illumatic', '11', 'Medium', 'Marina Summers', '9', '892', '9812', '2024-10-26 13:42:23'),
(3, '75', '462546238_498556236482304_8190571392891528690_n.jpg', 'Nick automatic flora hawaii', '4', 'Medium', 'Marina Summers', '9', '899', '3596', '2024-10-26 13:44:16'),
(5, '64', 'ECOMMTHUMBNAIL_1333X2000copy5.jpg', 'Regular Fit Flat Knit Cardigan', '5', 'Medium', 'Wilbur Abellanosa', '5', '899', '4495', '2024-10-27 10:50:29'),
(6, '69', '462544301_1180940400115300_6815070060922690566_n.jpg', 'Nick Automatic Illumatic', '6', 'Medium', 'Wilbur Abellanosa', '5', '892', '5352', '2024-10-27 10:50:44'),
(7, '70', 'kidss.jpg', 'Print-Reebok-motif T-shirt', '5', 'Medium', 'Wilbur Abellanosa', '5', '599', '2995', '2024-10-27 10:50:57'),
(8, '75', '462546238_498556236482304_8190571392891528690_n.jpg', 'Nick automatic flora hawaii', '6', 'Medium', 'Wilbur Abellanosa', '5', '899', '5394', '2024-10-27 10:51:05'),
(9, '77', 'download.jpg', 'Beef loaf', '5', 'Medium', 'Wilbur Abellanosa', '5', '100', '500', '2024-10-27 10:51:16'),
(11, '80', '462553776_1808336149702870_8150084086271852221_n.jpg', 'Nick Automatic Back Alley', '5', 'Medium', 'Admin Admin', '1', '899', '4495', '2024-10-27 10:56:33'),
(12, '82', '462540982_1240591493744632_2276364000023286908_n.jpg', 'Nick Automatic Geek', '4', 'Medium', 'Admin Admin', '1', '899', '3596', '2024-10-27 10:56:36'),
(13, '81', '462559479_532941446022299_6586325508856679951_n.jpg', 'Nick Automatic Mechanic', '4', 'Medium', 'Admin Admin', '1', '899', '3596', '2024-10-27 10:56:38'),
(14, '83', 'IMG_6621.jpg', 'akung kinawat na ballpen', '5', 'Medium', 'Admin Admin', '1', '123', '615', '2024-10-27 10:57:59'),
(15, '69', '462544301_1180940400115300_6815070060922690566_n.jpg', 'Nick Automatic Illumatic', '2', 'Medium', 'Wilbur Abellanosa', '5', '892', '1784', '2024-11-07 09:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `fullnameid` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `fullname`, `fullnameid`, `message`) VALUES
(80, 'Admin Admin', '1', 'Dear Admin Admin, your order Nick Automatic Back Alley with a quantity of 5 and a total price of 4,495.00 has been confirmed by the seller, thank you and please order again.'),
(81, 'Admin Admin', '1', 'Dear Admin Admin, your order Nick Automatic Geek with a quantity of 4 and a total price of 3,596.00 has been confirmed by the seller, thank you and please order again.'),
(82, 'Admin Admin', '1', 'Dear Admin Admin, your order Nick Automatic Mechanic with a quantity of 4 and a total price of 3,596.00 has been confirmed by the seller, thank you and please order again.'),
(83, 'Admin Admin', '1', 'Dear Admin Admin, your order akung kinawat na ballpen with a quantity of 5 and a total price of 615.00 has been confirmed by the seller, thank you and please order again.'),
(84, 'Wilbur Abellanosa', '5', 'Dear Wilbur Abellanosa, your order Nick Automatic Illumatic with a quantity of 2 and a total price of 1,784.00 has been confirmed by the seller, thank you and please order again.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `productimage` varchar(225) NOT NULL,
  `productid` varchar(225) NOT NULL,
  `productname` varchar(225) NOT NULL,
  `quantity` varchar(225) NOT NULL,
  `size` varchar(225) NOT NULL,
  `fullname` varchar(225) NOT NULL,
  `fullnameid` varchar(225) NOT NULL,
  `price` varchar(225) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `image` varchar(299) NOT NULL,
  `product` varchar(299) NOT NULL,
  `quantity` varchar(299) NOT NULL,
  `price` varchar(299) NOT NULL,
  `category` varchar(299) NOT NULL,
  `detail` varchar(299) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `product`, `quantity`, `price`, `category`, `detail`) VALUES
(64, 'ECOMMTHUMBNAIL_1333X2000copy5.jpg', 'Regular Fit Flat Knit Cardigan', '19', '899', 'women', 'Regular Fit Flat Knit Cardigan\r\n'),
(69, '462544301_1180940400115300_6815070060922690566_n.jpg', 'Nick Automatic Illumatic', '18', '892', 'men', 'Nick Automatic Illumatic'),
(70, 'kidss.jpg', 'Print-Reebok-motif T-shirt', '12', '599', 'kids', 'Print-Reebok-motif T-shirt'),
(75, '462546238_498556236482304_8190571392891528690_n.jpg', 'Nick automatic flora hawaii', '19', '899', 'men', 'Nick automatic flora hawaii'),
(77, 'download.jpg', 'Beef loaf', '12', '100', 'kids', '123'),
(80, '462553776_1808336149702870_8150084086271852221_n.jpg', 'Nick Automatic Back Alley', '12', '899', 'women', '123'),
(81, '462559479_532941446022299_6586325508856679951_n.jpg', 'Nick Automatic Mechanic', '12', '899', 'men', '123'),
(82, '462540982_1240591493744632_2276364000023286908_n.jpg', 'Nick Automatic Geek', '123', '899', 'men', '12'),
(83, 'IMG_6621.jpg', 'akung kinawat na ballpen', '123', '123', 'kids', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirmedorder`
--
ALTER TABLE `confirmedorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `confirmedorder`
--
ALTER TABLE `confirmedorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
