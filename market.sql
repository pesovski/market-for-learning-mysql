-- phpMyAdmin SQL Dump
-- version 4.8.0-alpha1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2019 at 01:40 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `market`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `created_at`) VALUES
(1, 1, 2, '2018-06-08 19:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'General'),
(2, 'Automotive'),
(3, 'Beauty'),
(4, 'Sports'),
(5, 'Computers'),
(6, 'Office');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT '0',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `completed`, `created_at`) VALUES
(1, 1, 1, 0, '2018-06-08 19:52:38'),
(2, 1, 11, 1, '2019-06-08 19:52:38'),
(3, 2, 15, 0, '2019-08-08 19:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `image` varchar(256) NOT NULL,
  `description` text,
  `free_shipping` tinyint(4) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `available` tinyint(4) DEFAULT NULL,
  `items_left` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `free_shipping`, `price`, `discount`, `available`, `items_left`, `category_id`) VALUES
(1, 'Light Bulb', 'https://ae01.alicdn.com/kf/HTB1U.3pNpXXXXX5XpXXq6xXFXXXz/Retro-Edison-Bulb-ST64-A19-T45-G80-G95-G125-Incandescent-Light-Bulb-E27-220V-40W-filament.jpg_640x640.jpg', 'Retro Edison Bulb ST64 A19 T45 G80 G95 G125 Incandescent Light Bulb E27 220V 40W filament bulb lighting tubes Edison', 1, '3.22', 0, 1, 111, 1),
(2, 'Led light', 'https://ae01.alicdn.com/kf/HTB1807kQVXXXXcjXFXXq6xXFXXX3/Rechargeable-LED-flood-light-Waterproof-IP65-camping-lamp-outdoor-Spotlight-Floodlight-camping-light-With-Plug.jpg_50x50.jpg', 'Rechargeable LED flood light Waterproof IP65 camping lamp outdoor Spotlight Floodlight camping light With Plug', 1, '18.00', 10, 1, 65, 1),
(11, 'Car clock', 'https://ae01.alicdn.com/kf/HTB1sJ9CLpXXXXcjXFXXq6xXFXXXG/New-Car-Luminous-LED-Digital-Auto-Clock-Thermometer-Voltmeter-for-Vehicle-Trunk-12V-Time-Display-with.jpg_640x640.jpg', 'New Car Luminous LED Digital Auto Clock Thermometer Voltmeter for Vehicle Trunk 12V Time Display with Memory Function', 1, '9.00', 0, 1, 112, 2),
(12, 'Car shade curtain', 'https://ae01.alicdn.com/kf/HTB1r8caRXXXXXaeXpXXq6xXFXXXH/DOXINGYE-Hot-Sale-Car-shade-Curtain-Window-Gauze-Shade-Net-Prevent-Ultraviolet-Prevent-Mosquitoes-Size-100.jpg_640x640.jpg', 'DOXINGYE,Hot Sale Car shade Curtain Window Gauze Shade Net Prevent Ultraviolet Prevent Mosquitoes Size 100*54CM', 1, '9.99', 0, 1, 22, 2),
(13, 'Sun curtain', 'https://ae01.alicdn.com/kf/HTB1AaDSSFXXXXX_XXXXq6xXFXXXz/2Pcs-Car-Curtains-Sunshade-Blocker-Black-UV-Mesh-Sun-Shades-For-Front-Side-and-Rear-Window.jpg_640x640.jpg', '2Pcs Car Curtains Sunshade Blocker Black UV Mesh Sun Shades For Front Side and Rear Window Auto Styling Sucker 44*36cm ', 0, '3.25', 0, 1, 8, 2),
(14, 'Rearview camera', 'https://ae01.alicdn.com/kf/HTB1Xt9.aGQoBKNjSZJnq6yw9VXaZ/Podofo-3G-Car-DVR-7-Android-5-0-GPS-Registrar-Navigation-Video-Recorder-Bluetooth-WIFI-Dual.jpg_640x640.jpg', 'Podofo 3G Car DVR 7\" Android 5.0 GPS Registrar Navigation Video Recorder Bluetooth WIFI Dual Lens Camera Rearview Mirror Dashcam', 0, '89.00', 10, 1, 23, 2),
(15, 'Car mobile holder', 'https://ae01.alicdn.com/kf/HTB1RpoJclnTBKNjSZPfq6zf1XXaJ/Ugreen-Car-Mobile-Phone-Holder-Stand-for-iPhone-X-8-7-Dashboard-Windshield-Magnetic-Car-Phone.jpg_640x640.jpg', 'Ugreen Car Mobile Phone Holder Stand for iPhone X 8 7 Dashboard Windshield Magnetic Car Phone Holder for Samsung Galaxy S8 S7 S6', 1, '11.50', 20, 1, 7, 2),
(16, 'Phone holder', 'https://ae01.alicdn.com/kf/HTB1MyByb.gQMeJjy0Fiq6xhqXXap/REMAX-Car-Mobile-Phone-Holder-Adjustable-Bracket-GPS-charging-Car-Dashboard-Holder-With-Magnetic-USB-data.jpg_640x640.jpg', 'REMAX Car Mobile Phone Holder Adjustable Bracket GPS charging Car Dashboard Holder With Magnetic USB data Cable for Phone', 0, '9.00', 0, 1, 15, 2),
(17, 'Magnetic holder', 'https://ae01.alicdn.com/kf/HTB1iqEBowaTBuNjSszfq6xgfpXaU/Baseus-Magnetic-Car-Holder-For-iPhone-X-8-7-Samsung-S9-S8-Mobile-Phone-Holder-Support.jpg_640x640.jpg', 'Baseus Magnetic Car Holder For iPhone X 8 7 Samsung S9 S8 Mobile Phone Holder Support GPS 360 Degree Car Phone Holder Stand', 1, '10.50', 0, 0, 14, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`) VALUES
(1, 'John', 'Doe'),
(2, 'Jane', 'Doe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nadvoresen_three` (`user_id`),
  ADD KEY `nadvoresen_four` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nadvoresen_one` (`user_id`),
  ADD KEY `nadvoresen_two` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nadvoresen` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `nadvoresen_four` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `nadvoresen_three` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `nadvoresen_one` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `nadvoresen_two` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `nadvoresen` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
