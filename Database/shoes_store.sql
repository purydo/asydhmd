-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2024 at 07:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoes store`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(30) DEFAULT NULL,
  `quantity` int(30) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `created_by` int(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Casual Shoes', '2023-03-29 14:17:49', '2023-03-29 14:16:59'),
(2, 'Formal Shoes', '2023-03-29 14:17:49', '2023-03-29 14:16:59'),
(3, 'Sneakers', '2023-03-29 14:18:12', '2023-03-29 14:17:50'),
(4, 'Boots', '2023-03-29 14:18:12', '2023-03-29 14:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `orders_dt`
--

CREATE TABLE `orders_dt` (
  `order_dt_id` int(11) NOT NULL,
  `order_id` int(30) DEFAULT NULL,
  `product_id` int(30) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `quantity` int(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_hdr`
--

CREATE TABLE `orders_hdr` (
  `order_id` int(11) NOT NULL,
  `order_ref_id` varchar(200) DEFAULT NULL,
  `total_amount` decimal(11,2) DEFAULT NULL,
  `payment_status` varchar(200) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `created_by` int(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(30) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(30) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_cat` int(30) DEFAULT NULL,
  `product_desc` text DEFAULT NULL,
  `product_stock` int(30) DEFAULT NULL,
  `product_img` varchar(255) DEFAULT NULL,
  `product_price` decimal(11,2) DEFAULT NULL,
  `created_by` int(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(30) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_cat`, `product_desc`, `product_stock`, `product_img`, `product_price`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(4, 'Nike Dunk Low Retro', 3, 'Created for the hardwood but taken to the streets, the Nike Dunk Low Retro returns with crisp overlays and original team colors. This basketball icon channels \'80s vibes with premium leather in the upper that looks good and breaks in even better. Modern footwear technology helps bring the comfort into the 21st century.', 5, '4-Nike Dunk Low Retro.jpg', 399.00, 1, '2024-11-17 11:41:12', 1, '2024-11-17 19:56:18'),
(5, 'Adidas Samba', 3, 'Get yourself some adi OG style with these men\'s Samba OG trainers from adidas Originals. Keeping its iconic 1950s style, these trainers take their cues from the original football-inspired Samba and are built with a white leather upper and a suede toe guard for premium support and comfort. Sat on a responsive gum midsole, they feature tonal laces and serrated 3-stripes to the sidewalls. Finished up with the golden SAMBA wordmark and Trefoil branding to the tongue.', 3, '5-adidas originals samba og.webp', 569.00, 1, '2024-11-17 11:53:58', 1, '2024-11-17 19:53:58'),
(6, 'ASICS GT-2160', 3, 'The GT-2160™ sneaker pays homage to the technical design language from the GT-2000™ series in the early 2010s.', 6, '6-ASICS GT-2160.webp', 579.00, 1, '2024-11-17 12:02:07', 1, '2024-11-17 20:07:19'),
(7, 'New Balance 740', 3, 'The New Balance 740 is a versatile athletic shoe designed for comfort and support during various activities. Featuring a sleek design, it offers a cushioned midsole for responsive cushioning, making it suitable for running, walking, or casual wear.', 8, '7-New Balance 740.webp', 529.00, 1, '2024-11-17 12:13:17', 1, '2024-11-17 20:13:17'),
(8, 'PUMA 9-T', 3, 'The Puma Puma 9-T sneakers are the perfect fit for a sophisticated yet sporty and elegant look. The upper with classic PUMA elements, as well as the T-toe, will make not only football-obsessed consumers happy. This iteration features a synthetic leather upper with suede overlays on the toe.', 6, '8-PUMA 9-T.webp', 299.00, 1, '2024-11-17 12:15:47', 1, '2024-11-17 20:15:47'),
(10, 'Nike Air Force 1 \'07', 3, 'The radiance lives on in the Nike Air Force 1 ’07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colors and the perfect amount of flash to make you shine.', 7, '10-nike.webp', 439.00, 1, '2024-11-17 17:00:51', 1, '2024-11-18 01:10:06'),
(11, 'ASICS CLASSIC CT', 3, 'Paying tribute to heritage tennis influences, the CLASSIC CT sneaker appears with a low-profile design and familiar court details. This throwback style is designed with a low-profile upper that\'s accented with our ASICS Stripes branding at the sides.', 3, '11-Asics Classic Ct.jpg', 249.00, 1, '2024-11-17 17:16:58', 1, '2024-11-18 01:37:55'),
(12, 'PUMA Court Classic', 3, 'PUMA Court Classic Vulcanized Mid Men\'s Sneakers Grey', 9, '12-PUMA Court Classic.webp', 269.00, 1, '2024-11-17 17:19:21', 1, '2024-11-18 01:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'A',
  `role` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `fullname`, `address`, `status`, `role`, `password`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Administrator', '-', 'A', 'Admin', '123', 'admin@gmail.com', '2023-03-29 13:03:29', '2023-03-29 13:03:05'),
(2, 'asydhmd', 'AHMAD ARSYAD HAMIDI BIN ZULRAIMI', 'AMPANG JAYA, SELANGOR', 'A', 'Customer', '123', 'arsyad@gmail.com', '2024-11-17 08:40:48', '2024-11-17 16:40:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders_dt`
--
ALTER TABLE `orders_dt`
  ADD PRIMARY KEY (`order_dt_id`);

--
-- Indexes for table `orders_hdr`
--
ALTER TABLE `orders_hdr`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders_dt`
--
ALTER TABLE `orders_dt`
  MODIFY `order_dt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_hdr`
--
ALTER TABLE `orders_hdr`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
