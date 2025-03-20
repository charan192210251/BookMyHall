-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2025 at 05:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `hall_id` int(11) NOT NULL DEFAULT 0,
  `hall_name` varchar(255) DEFAULT '""',
  `booking_date` date NOT NULL DEFAULT current_timestamp(),
  `start_time` time NOT NULL DEFAULT current_timestamp(),
  `end_time` time NOT NULL DEFAULT current_timestamp(),
  `status` enum('pending','confirmed','cancelled','rejected') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `user_id`, `hall_id`, `hall_name`, `booking_date`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 1, 'MCC Marriage Hall', '2025-02-14', '10:06:52', '11:06:52', 'pending'),
(2, 2, 4, 'Sri Vaijayanti Mahal A/C ', '2025-02-15', '10:08:32', '11:08:32', 'pending'),
(3, 1, 1, 'MCC Marriage Hall', '2025-02-17', '08:53:00', '09:53:00', 'confirmed'),
(4, 2, 2, 'Vijaya Mahal', '2025-02-17', '09:01:20', '10:01:20', 'confirmed'),
(5, 1, 3, 'K.V.MAHAL A\\C', '2025-02-17', '09:07:38', '10:07:38', 'confirmed'),
(6, 1, 1, 'MCC Marriage Hall', '2025-02-18', '09:11:09', '10:11:09', 'confirmed'),
(8, 1, 3, 'K.V.MAHAL A\\C', '2025-02-18', '10:46:33', '11:46:33', 'confirmed'),
(10, 1, 4, 'Sri Vaijayanti Mahal A/C ', '2025-02-18', '08:48:26', '09:48:26', 'confirmed'),
(11, 1, 2, 'Vijaya Mahal', '2025-02-18', '10:37:55', '11:37:55', 'pending'),
(12, 1, 1, 'MCC Marriage Hall', '2025-02-20', '09:04:00', '10:04:00', 'confirmed'),
(13, 1, 2, 'Vijaya Mahal', '2025-02-20', '09:53:39', '10:53:39', 'pending'),
(14, 1, 3, 'K.V.MAHAL A\\C', '2025-02-20', '10:15:53', '11:15:53', 'pending'),
(15, 1, 1, 'MCC Marriage Hall', '2025-02-24', '08:50:11', '09:50:11', 'confirmed'),
(16, 2, 1, 'MCC Marriage Hall', '2025-02-25', '12:19:15', '13:19:15', 'confirmed'),
(17, 2, 5, 'Amma Arangam', '2025-02-25', '13:46:15', '14:46:15', 'confirmed'),
(18, 1, 3, 'K.V.MAHAL A\\C', '2025-02-25', '13:55:16', '14:55:16', 'confirmed'),
(19, 1, 5, 'Amma Arangam', '2025-02-26', '13:57:37', '14:57:37', 'confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` varchar(50) NOT NULL,
  `imageName` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `facility` text NOT NULL,
  `services` text NOT NULL,
  `availability` enum('yes','no') DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`id`, `name`, `rating`, `imageName`, `description`, `location`, `capacity`, `facility`, `services`, `availability`) VALUES
(1, 'MCC Marriage Hall', '4.6', 'mccMain', 'MCC Marriage Hall – A perfect venue for grand celebrations with exceptional service! Contact : 9941366660. ', '2/226, CHINNANDIKUPPAM, East Coast Rd, Vettuvankeni, Chennai, Tamil Nadu 600041', '1000', 'AC, Parking', 'Catering, Decoration', 'yes'),
(2, 'Vijaya Mahal', '3.9', 'vijayaMain', 'Celebrate your cherished moments with grandeur and tradition at Vijaya Mahal!     Contact: 04442129495.', 'Vijaya Mahal, Sir Theagaraya Rd, Parthasarathi Puram, T Nagar, Chennai - 600017. ', '1500', 'Parking, Sound system', 'Catering, Decoration', 'yes'),
(3, 'K.V.MAHAL A\\C', '4.3', 'kvMain', 'Create timeless memories at KV Mahal AC, where grand ambiance meets modern amenities! Contact : 9054469253', '3328+W6C, Tiruvallur High Rd, Thirumazhisai, Tamil Nadu 600124', '500', 'AC, Parking', 'Catering, Decoration', 'yes'),
(4, 'Sri Vaijayanti Mahal A/C', '4.6', 'vijayanthiMain', 'Create unforgettable memories in an intimate setting! Perfect for cozy celebrations!  Contact : 7010617188', 'Plot 98, A.N. Elumalai Salai, VGN Nagar, Iyyappanthangal, Chennai, Tamil Nadu 600056', 'Seating : 300. Floating: 600', 'AC, Parking', 'Decoration', 'yes'),
(5, 'Amma Arangam', '4.3', 'ammaMain', 'Make your event unforgettable at Amma Arangam – a perfect blend of space and sophistication!  Contact: 8939311444', '36MC+33V, 11th St, Kumaran Nagar, A Block, Annanagar East, Chennai, Tamil Nadu 600030. ', '1400', 'AC, Parking', 'Decoration, Sound System.', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `hall_images`
--

CREATE TABLE `hall_images` (
  `image_id` int(11) NOT NULL,
  `hall_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hall_images`
--

INSERT INTO `hall_images` (`image_id`, `hall_id`, `image_url`, `uploaded_at`) VALUES
(1, 1, 'uploads/hall_1/mcc1.jpg', '2025-02-25 05:01:48'),
(2, 1, 'uploads/hall_1/mcc2.jpg', '2025-02-25 04:23:01'),
(3, 1, 'uploads/hall_1/mcc3.jpg', '2025-02-25 04:23:01'),
(4, 1, 'uploads/hall_1/mcc4.jpg', '2025-02-25 04:23:01'),
(5, 1, 'uploads/hall_1/mcc5.jpg', '2025-02-25 04:23:01'),
(6, 1, 'uploads/hall_1/mcc6.jpg', '2025-02-25 04:23:01'),
(7, 1, 'uploads/hall_1/mcc7.jpg', '2025-02-25 04:23:01'),
(8, 1, 'uploads/hall_1/mcc8.jpg', '2025-02-25 04:23:01'),
(9, 1, 'uploads/hall_1/mcc9.jpg', '2025-02-25 04:23:01'),
(10, 1, 'uploads/hall_1/mcc10.jpg', '2025-02-25 04:23:01'),
(11, 2, 'uploads/hall_2/vijaya1.jpg', '2025-02-25 05:13:09'),
(12, 2, 'uploads/hall_2/vijaya2.jpg', '2025-02-25 05:13:09'),
(13, 2, 'uploads/hall_2/vijaya3.jpg', '2025-02-25 05:13:09'),
(14, 2, 'uploads/hall_2/vijaya4.jpg', '2025-02-25 05:13:09'),
(15, 2, 'uploads/hall_2/vijaya5.jpg', '2025-02-25 05:13:09'),
(16, 2, 'uploads/hall_2/vijaya6.jpg', '2025-02-25 05:13:09'),
(17, 2, 'uploads/hall_2/vijaya7.jpg', '2025-02-25 05:13:09'),
(18, 2, 'uploads/hall_2/vijaya8.jpg', '2025-02-25 05:13:09'),
(19, 2, 'uploads/hall_2/vijaya9.jpg', '2025-02-25 05:13:09'),
(20, 2, 'uploads/hall_2/vijaya10.jpg', '2025-02-25 05:13:09'),
(21, 3, 'uploads/hall_3/kv1.jpg', '2025-02-25 05:23:45'),
(22, 3, 'uploads/hall_3/kv2.jpg', '2025-02-25 05:23:45'),
(23, 3, 'uploads/hall_3/kv3.jpg', '2025-02-25 05:23:45'),
(24, 3, 'uploads/hall_3/kv4.jpg', '2025-02-25 05:23:45'),
(25, 3, 'uploads/hall_3/kv5.jpg', '2025-02-25 05:23:45'),
(26, 3, 'uploads/hall_3/kv6.jpg', '2025-02-25 05:23:45'),
(27, 3, 'uploads/hall_3/kv7.jpg', '2025-02-25 05:23:45'),
(28, 3, 'uploads/hall_3/kv8.jpg', '2025-02-25 05:23:45'),
(29, 3, 'uploads/hall_3/kv9.jpg', '2025-02-25 05:23:45'),
(30, 3, 'uploads/hall_3/kv10.jpg', '2025-02-25 05:23:45'),
(31, 4, 'uploads/hall_4/sri1.jpg', '2025-02-25 05:42:32'),
(32, 4, 'uploads/hall_4/sri2.jpg', '2025-02-25 05:42:32'),
(33, 4, 'uploads/hall_4/sri3.jpg', '2025-02-25 05:42:32'),
(34, 4, 'uploads/hall_4/sri4.jpg', '2025-02-25 05:42:32'),
(35, 4, 'uploads/hall_4/sri5.jpg', '2025-02-25 05:42:32'),
(36, 4, 'uploads/hall_4/sri6.jpg', '2025-02-25 05:42:32'),
(37, 4, 'uploads/hall_4/sri7.jpg', '2025-02-25 05:42:32'),
(38, 4, 'uploads/hall_4/sri8.jpg', '2025-02-25 05:42:32'),
(39, 4, 'uploads/hall_4/sri9.jpg', '2025-02-25 05:42:32'),
(40, 4, 'uploads/hall_4/sri10.jpg', '2025-02-25 05:42:32'),
(41, 5, 'uploads/hall_5/amma1.jpg', '2025-02-25 06:02:32'),
(42, 5, 'uploads/hall_5/amma2.jpg', '2025-02-25 06:02:32'),
(43, 5, 'uploads/hall_5/amma3.jpg', '2025-02-25 06:02:32'),
(44, 5, 'uploads/hall_5/amma4.jpg', '2025-02-25 06:02:32'),
(45, 5, 'uploads/hall_5/amma5.jpg', '2025-02-25 06:02:32'),
(46, 5, 'uploads/hall_5/amma6.jpg', '2025-02-25 06:02:32'),
(47, 5, 'uploads/hall_5/amma7.jpg', '2025-02-25 06:02:32'),
(48, 5, 'uploads/hall_5/amma8.jpg', '2025-02-25 06:02:32'),
(49, 5, 'uploads/hall_5/amma9.jpg', '2025-02-25 06:02:32'),
(50, 5, 'uploads/hall_5/amma10.jpg', '2025-02-25 06:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `hall_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `hall_id`, `user_id`, `rating`, `comment`, `created_at`) VALUES
(1, 1, 1, 5, 'Ok', '2025-02-14 04:38:01'),
(2, 4, 2, 4, 'Good for events.', '2025-02-14 04:39:09'),
(3, 3, 1, 4, 'Tot', '2025-02-24 03:06:36'),
(4, 4, 1, 4, 'Jjjj', '2025-02-25 06:48:17');

-- --------------------------------------------------------

--
-- Table structure for table `userslogin`
--

CREATE TABLE `userslogin` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userslogin`
--

INSERT INTO `userslogin` (`user_id`, `name`, `phone`, `email`, `password`, `is_admin`) VALUES
(1, 'test1', '0000000000', 'test1@gmail.com', '1', 0),
(2, 'test2', '9090909090', 'test2@gmail.com', '1', 0),
(3, 'admin1', '9090909090', 'admin1@gmail.com', '1', 1),
(4, 'admin2', '1111111111', 'admin2@gmail.com', '1', 1),
(5, 'admin3', '1111111111', 'admin3@gmail.com', '1', 1),
(6, 'admin4', '1111111111', 'admin4@gmail.com', '1', 1),
(7, 'admin5', '1111111111', 'admin5@gmail.com', '1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halls`
--
ALTER TABLE `halls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hall_images`
--
ALTER TABLE `hall_images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `userslogin`
--
ALTER TABLE `userslogin`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `halls`
--
ALTER TABLE `halls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hall_images`
--
ALTER TABLE `hall_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userslogin`
--
ALTER TABLE `userslogin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
