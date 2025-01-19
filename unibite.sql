-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2025 at 02:56 PM
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
-- Database: `unibite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(255) NOT NULL DEFAULT 'admin@example.com',
  `admin_password` varchar(255) NOT NULL DEFAULT 'admin1234',
  `role` enum('admin') DEFAULT 'admin',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`, `role`, `created_at`) VALUES
(1, 'admin@example.com', 'm3T!k$7yXv#2dW9pQ@F9!hZ&0lZrXjY', 'admin', '2025-01-08 18:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `donation_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `meal_name` varchar(255) NOT NULL,
  `meal_description` text NOT NULL,
  `meal_image` blob NOT NULL,
  `meal_quantity` int(11) NOT NULL,
  `initial_quantity` int(11) NOT NULL,
  `nutritional_content` text DEFAULT NULL,
  `pickup_delivery` enum('pickup','delivery','both') NOT NULL,
  `food_bank_location` enum('IK cafe L05','IK cafe L10','Restu Cafe','Tekun Cafe','Aman Cafe','Foodbank USM') NOT NULL,
  `contact_info` varchar(255) NOT NULL,
  `donation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `expiry_date` date NOT NULL,
  `status` enum('active','expired') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`donation_id`, `id`, `meal_name`, `meal_description`, `meal_image`, `meal_quantity`, `initial_quantity`, `nutritional_content`, `pickup_delivery`, `food_bank_location`, `contact_info`, `donation_date`, `expiry_date`, `status`) VALUES
(1, 1, 'NASI LEMAK AYAM', 'Nasi Lemak Ayam is a flavorful Malaysian dish consisting of fragrant coconut rice served with crispy fried chicken, accompanied by a variety of traditional sides such as sambal (spicy chili paste), fried anchovies, and a hard-boiled egg. It’s often enjoyed as a hearty breakfast or lunch, offering a delightful balance of savory, spicy, and aromatic flavors.', 0x363737633831376531663536652e6a7067, 10, 10, 'Calories: 500–700 kcal\r\nCarbohydrates: 50–70g (mostly from the coconut rice)\r\nProtein: 20–30g (mainly from the fried chicken and egg)\r\nFat: 25–35g (including coconut milk, fried chicken, and sambal)\r\nFiber: 2–4g (from the rice, sambal, and anchovies)\r\nSodium: 600–900mg (due to the sambal, anchovies, and soy sauce used in cooking)\r\nVitamins and Minerals: Contains small amounts of vitamin A, vitamin C, calcium, and iron from the sides (egg, sambal, anchovies, and spices).', 'pickup', 'IK cafe L05', '017-4933285', '2025-01-07 01:21:02', '2025-01-08', 'expired'),
(2, 1, 'THOSAI BIASA', 'South Indian savoury, thin pancake made from a batter of various fermented pulses and rice flour, which is then cooked on a flat griddle.', 0x363737636433363461346131392e6a706567, 1, 0, 'Calories: A plain thosai can have around 147–196 calories per serving \r\nFat: A thosai can have around 2–4 grams of fat per serving \r\nProtein: A thosai can have around 3.9–4.8 grams of protein per serving \r\nCarbohydrates: A thosai can have around 27.4–36 grams of carbohydrates per serving \r\nFiber: A thosai can have around 0–3 grams of fiber per serving \r\nSodium: A thosai can have around 132–530 milligrams of sodium per serving ', 'both', 'IK cafe L10', '017-4933285', '2025-01-07 07:10:28', '2025-01-08', 'active'),
(3, 1, 'NASI GORENG AYAM', 'Nasi Goreng Kampung is a traditional Malaysian fried rice dish known for its rustic, homely flavors. It is made by stir-frying rice with anchovies (ikan bilis), chili paste, garlic, onions, and vegetables like kangkung (water spinach), often topped with a fried egg.', 0x363737643761306663663561332e6a706567, 10, 0, 'Calories: 400–600 kcal\r\nCarbohydrates: 50–70g (primarily from the rice)\r\nProtein: 15–25g (from anchovies, egg, and other proteins added)\r\nFat: 10–20g (from cooking oil, egg, and anchovies)\r\nFiber: 2–5g (from vegetables like kangkung or other greens)\r\nSodium: 700–1,000mg (from anchovies, soy sauce, and sambal)\r\nVitamins and Minerals: Contains iron, calcium, vitamin A, and potassium from anchovies, egg, and vegetables.', 'both', 'Restu Cafe', '017-4933285', '2025-01-07 19:01:35', '2025-01-09', 'active'),
(4, 1, 'roti ', '-', 0x363737646563373665666261632e6a706567, 2, 0, '-', 'both', 'Tekun Cafe', '012-3456789', '2025-01-08 03:09:42', '2025-01-09', 'active'),
(5, 2, 'nasi goreng', '-', 0x363737646632356638333239652e6a706567, 1, 0, '-', 'both', 'IK cafe L10', '012-3456789', '2025-01-08 03:34:55', '2025-01-09', 'active'),
(7, 1, 'NASI CAMPUR', 'NASI CAMPUR WITH CHICKEN CURRY AND VEGES', 0x363737653965656634613833332e6a7067, 10, 0, '-', 'both', 'Foodbank USM', '011-49223891', '2025-01-08 15:51:11', '2025-01-09', 'active'),
(8, 1, 'nasi campur ayam', '-', 0x363737656132646362356461632e6a7067, 1, 0, '-', 'delivery', 'Aman Cafe', '0123456789', '2025-01-08 16:07:56', '2025-01-09', 'active'),
(9, 1, 'roti gardenia', '-', 0x363737656138613664393535302e6a7067, 3, 0, '-', 'pickup', 'Foodbank USM', '017-4933285', '2025-01-08 16:32:38', '2025-01-09', 'expired'),
(11, 1, 'thosai', '-', 0x363737656233663131356661352e6a706567, 1, 0, '-', 'pickup', 'IK cafe L05', '01233444444', '2025-01-08 17:20:49', '2025-01-09', 'active'),
(12, 1, 'nasi lemak', '-', 0x363738303863613831346539612e6a7067, 1, 0, '-', 'both', 'IK cafe L05', '017-4933285', '2025-01-10 02:57:44', '2025-01-10', 'active'),
(13, 1, 'nasi lemak', '-', 0x363738323532376539663961652e6a7067, 0, 1, '-', 'pickup', 'IK cafe L05', '-', '2025-01-11 11:14:06', '2025-01-11', 'active'),
(14, 1, 'NASI LEMAK AYAM', 'NASI LEMAK AYAM', 0x363738376138313561366131312e6a7067, 7, 10, '-', 'both', 'Foodbank USM', '017-4933285', '2025-01-15 12:20:37', '2025-01-16', 'active'),
(15, 1, 'nasi biriyani', '-', 0x363738386539383664383763342e6a7067, 1, 2, '-', 'both', 'Foodbank USM', '-', '2025-01-16 11:12:06', '2025-01-16', 'active'),
(16, 1, 'roti', '-', 0x363738636235633932636436612e6a706567, 7, 10, '-', 'both', 'IK cafe L10', '-', '2025-01-19 08:20:25', '2025-01-19', 'active');

--
-- Triggers `donations`
--
DELIMITER $$
CREATE TRIGGER `update_status_on_insert` AFTER INSERT ON `donations` FOR EACH ROW BEGIN
    -- Compare expiry_date with current date
    IF NEW.expiry_date < CURDATE() THEN
        -- Update the status to 'expired' if the food is expired
        UPDATE donations
        SET status = 'expired'
        WHERE donation_id = NEW.donation_id;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_on_update` AFTER UPDATE ON `donations` FOR EACH ROW BEGIN
    -- Check if the expiry_date is less than the current date
    IF NEW.expiry_date < CURDATE() AND NEW.status != 'expired' THEN
        -- Update the status to 'expired' if the food has expired
        UPDATE donations
        SET status = 'expired'
        WHERE donation_id = NEW.donation_id;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comments` text DEFAULT NULL,
  `feedback_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `reservation_id`, `id`, `rating`, `comments`, `feedback_date`) VALUES
(1, 21, 2, 5, 'excellent service and delivery', '2025-01-12 07:30:56'),
(2, 24, 1, 4, 'VERY GOOD SERVICE AND NICE FOOD', '2025-01-15 12:24:27'),
(3, 24, 1, 1, 'very poor service', '2025-01-16 02:04:43'),
(4, 7, 3, 5, '-', '2025-01-16 08:43:45'),
(7, 9, 2, 5, '-', '2025-01-18 17:01:13'),
(8, 10, 2, 4, '-', '2025-01-18 17:01:29'),
(9, 5, 1, 5, '-', '2025-01-18 17:07:15'),
(10, 26, 1, 4, '-', '2025-01-19 08:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `donation_id` int(11) NOT NULL,
  `reservation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `delivery_address` varchar(255) NOT NULL,
  `status` enum('pending','completed','cancelled') DEFAULT 'pending',
  `method_of_delivery` enum('pickup','delivery') NOT NULL,
  `drop_point` text NOT NULL,
  `volunteer_id` int(11) DEFAULT NULL,
  `qr_code_image` blob DEFAULT NULL,
  `pickup_deadline` enum('07:00 AM','07:30 AM','08:00 AM','08:30 AM','09:00 AM','09:30 AM','10:00 AM','10:30 AM','11:00 AM','11:30 AM','12:00 PM','12:30 PM','01:00 PM','01:30 PM','02:00 PM','02:30 PM','03:00 PM','03:30 PM','04:00 PM','04:30 PM','05:00 PM','05:30 PM','06:00 PM','06:30 PM','07:00 PM','07:30 PM','08:00 PM','08:30 PM','09:00 PM','09:30 PM','10:00 PM') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `id`, `donation_id`, `reservation_date`, `delivery_address`, `status`, `method_of_delivery`, `drop_point`, `volunteer_id`, `qr_code_image`, `pickup_deadline`) VALUES
(1, 1, 1, '2025-01-07 01:21:38', '', 'pending', 'pickup', '', NULL, NULL, NULL),
(2, 2, 1, '2025-01-07 01:24:14', '', 'pending', 'pickup', '', NULL, NULL, NULL),
(3, 1, 2, '2025-01-07 07:15:26', 'DK Foyer near Cafe He & She', 'completed', 'delivery', 'DK Foyer', 1, NULL, NULL),
(4, 1, 1, '2025-01-07 07:37:26', '', 'pending', 'pickup', '', NULL, NULL, NULL),
(5, 1, 2, '2025-01-07 07:53:11', '', 'completed', 'pickup', '', NULL, NULL, NULL),
(6, 1, 3, '2025-01-07 19:02:29', 'Motor Parking, Restu Cafe,USM', 'completed', 'delivery', 'Restu Cafe', 1, NULL, NULL),
(7, 3, 1, '2025-01-07 19:13:57', '', 'completed', 'pickup', '', NULL, NULL, NULL),
(8, 1, 4, '2025-01-08 03:10:28', '-', 'completed', 'delivery', 'Restu Cafe', 1, NULL, NULL),
(9, 2, 1, '2025-01-08 03:27:26', '', 'completed', 'pickup', '', NULL, NULL, NULL),
(10, 2, 5, '2025-01-08 03:39:24', 'car parking tekun cafe', 'completed', 'delivery', 'tekun cafe', 1, NULL, NULL),
(11, 1, 3, '2025-01-08 16:10:43', 'DK FOYER', 'completed', 'delivery', 'DK FOYER', 3, NULL, NULL),
(12, 1, 12, '2025-01-10 02:58:15', 'tekun cafe', 'completed', 'delivery', 'tekun cafe', 1, NULL, NULL),
(21, 2, 12, '2025-01-10 06:17:50', '', 'completed', 'pickup', '', NULL, NULL, '02:30 PM'),
(22, 1, 12, '2025-01-10 06:57:51', 'tekun cafe', 'completed', 'delivery', 'tekun cafe', 3, NULL, '04:00 PM'),
(23, 1, 13, '2025-01-11 11:18:40', '', 'pending', 'pickup', '', NULL, NULL, '07:30 PM'),
(24, 1, 14, '2025-01-15 12:20:58', '', 'completed', 'pickup', '', NULL, NULL, '09:00 PM'),
(25, 1, 14, '2025-01-16 02:10:10', 'tekun cafe', 'completed', 'delivery', 'parking cafe tekun', 3, NULL, '11:30 AM'),
(26, 1, 15, '2025-01-16 11:13:43', 'ik cafe l05, desasiswa indah kembara, usm', 'completed', 'delivery', 'motor parking ik cafe l05', 5, NULL, '08:00 PM'),
(27, 1, 16, '2025-01-19 08:22:18', 'indah kembara l06', 'completed', 'delivery', 'Motor parking L06', 5, NULL, '05:00 PM'),
(29, 1, 16, '2025-01-19 13:49:07', '-', 'completed', 'delivery', 'Hostel (Desasiswa Restu)', 5, NULL, '10:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `matric_id` varchar(255) NOT NULL,
  `user_type` enum('user','volunteer') NOT NULL,
  `profile_picture` blob DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_verified` tinyint(1) DEFAULT 0,
  `status` enum('active','suspended','removed') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `nickname`, `email`, `password`, `matric_id`, `user_type`, `profile_picture`, `created_at`, `updated_at`, `is_verified`, `status`) VALUES
(1, 'SHIVARSANKAR A/L THANABALAN', 'LH44', 'weightshiva@gmail.com', '$2y$10$/rP2xpCJ5zIYi4yE69irPe/D.gSkpTUCn.OBcJ3QInZMvT6FJISAS', '164525', 'user', 0x363737633761616161306635665f7468616e6973202e706e67, '2025-01-07 00:51:54', '2025-01-16 07:10:01', 1, 'active'),
(2, 'THANIS A/L NANTHA KUMAR', 'MESSI10', 'thanismessi@gmail.com', '$2y$10$oK1lFG2U8vaTLvOhRSudJuE5cR2yr8BpY5FEgdi..0TusMsYu8.0C', '164150', 'user', 0x363737633831663565313635345f7468616e6973202e706e67, '2025-01-07 01:23:01', '2025-01-09 05:44:02', 1, 'active'),
(3, 'VISHNOO A/L PANDIAN', 'KAIPULLEH', 'vishnoo.pandian@gmail.com', '$2y$10$iomM373INK3K4leO8bidBeArzO4d6x8rGsSnyYV321DCS1lkHlwwG', '123456', 'user', 0x363737643763303136383239635f766973686e6f6f2e4a5047, '2025-01-07 19:09:53', '2025-01-09 05:44:08', 1, 'active'),
(4, 'NITHEESH A/L SANDRASEGARAN', 'SANDRO69', 'shivarsankarthanabalan@gmail.com', '$2y$10$IyA3doekOr3SnHman7b30ugLS9H0qPI4nMFehwwA5lQrybR3gk8fi', '156234', 'user', 0x363738373633326263623435375f434841524154484f4e204556454e5420484947484c494748545320202832292e706e67, '2025-01-15 07:26:35', '2025-01-16 11:20:39', 1, 'active'),
(5, 'RUNESHWARAN A/L ARUNASALAM', 'RUNE2003', 'user1@example.com', '$2y$10$YLa0B5PtSFvLbxDsUGm73eL2k6/fc3o/q9NJwNnr/6VUnTVl0byia', '162672', 'user', 0x363738373633636362623136355f434841524154484f4e204556454e5420484947484c494748545320202832292e706e67, '2025-01-15 07:29:16', '2025-01-15 07:29:55', 1, 'active'),
(8, 'user', 'user1', 'user2@example.com', '$2y$10$SzzqxgernYyPib/YEQ.XQ.B7.bCp8BAQYGxx1KDi9FxSWL.HbfYae', '178498', 'user', 0x363738386237636133376561305f5448414e4553482e706e67, '2025-01-16 07:39:54', '2025-01-19 08:32:55', 1, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `volunteer_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `contact_info` varchar(255) DEFAULT NULL,
  `availability_status` enum('available','unavailable') DEFAULT 'available',
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('active','suspended','removed') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`volunteer_id`, `fullname`, `email`, `password`, `nickname`, `contact_info`, `availability_status`, `is_verified`, `status`) VALUES
(1, 'NITHEESH A/L SANDRASEGARAN', 'thanismessi@gmail.com', '$2y$10$0wJnxx.xjfHkgzlE/Sp10eQVP3YnU74exkKQahKuHKIs9DL377UX.', 'MUA\'DIB', '017-476 7155', '', 1, 'active'),
(3, 'SHIVARSANKAR A/L THANABALAN', 'weightshiva@gmail.com', '$2y$10$Rx45vI.lWbAaV.4Hcg3hO.jjNdrPFKRQf4m4JCeJHx.yWK4Lzzrs.', 'LH44', '017-4933285', 'available', 1, 'active'),
(5, 'hem', 'user2@example.com', '$2y$10$HWNlZcFFt6M89SaRaUzh2u5yiuDyA0.OTvGmX7aupPYFTwDgU5KXC', 'hemdon', '0123456789', 'available', 1, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`donation_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `reservation_id` (`reservation_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `id` (`id`),
  ADD KEY `donation_id` (`donation_id`),
  ADD KEY `volunteer_id` (`volunteer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `matric_id` (`matric_id`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`volunteer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `donation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `volunteer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`donation_id`) REFERENCES `donations` (`donation_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_ibfk_3` FOREIGN KEY (`volunteer_id`) REFERENCES `volunteers` (`volunteer_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
