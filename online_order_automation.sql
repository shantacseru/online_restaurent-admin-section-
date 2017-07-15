-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2017 at 10:50 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_order_automation`
--

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `category`, `status`, `price`, `minimum_time`, `photo`, `created_at`, `updated_at`) VALUES
(28, 'Hummus', 'appetizers', 'recent', '200', '10', '/storage/images/hummus.jpeg', '2017-07-14 20:01:49', '2017-07-14 21:29:11'),
(29, 'Baba Ghanooj', 'sandwiches', 'recent', '350', '20', '/storage/images/baba ghanooj.jpg', '2017-07-14 20:02:34', '2017-07-14 21:47:06'),
(30, 'Eggplant', 'salads', 'recent', '300', '20', '/storage/images/Eggplant.jpg', '2017-07-14 20:03:06', '2017-07-14 21:22:50'),
(40, 'Chicken Kabob', 'appetizers', 'special', '200', '10', '/storage/images/Chicken Kabob.jpg', '2017-07-14 20:10:23', '2017-07-14 21:03:46'),
(41, 'Beef Kabob', 'salads', 'special', '100', '10', '/storage/images/Beef Kabob.jpg', '2017-07-14 20:11:10', '2017-07-14 21:06:38'),
(44, 'beef birani', 'appetizers', 'recent', '200', '20', '/storage/images/baba ghanooj.jpg', '2017-07-14 21:02:07', '2017-07-14 21:02:07'),
(45, 'Grilled Chicken Veggie Wrap', 'sandwiches', 'special', '200', '20', '/storage/images/Grilled Chicken Veggie Wrap.jpg', '2017-07-14 21:12:30', '2017-07-14 21:12:30'),
(46, 'Kufta Kabob', 'grill', 'normal', '200', '10', '/storage/images/Kufta Kabob.jpg', '2017-07-14 21:13:21', '2017-07-14 21:13:21'),
(47, 'Astor Vegetarian', 'vegetarian', 'recent', '250', '15', '/storage/images/g.jpg', '2017-07-14 21:14:35', '2017-07-14 21:47:48'),
(48, 'Pepperoni', 'pizza', 'normal', '170', '20', '/storage/images/quaterchikhen.jpg', '2017-07-14 21:15:19', '2017-07-14 21:28:52'),
(49, 'Baklava', 'desserts', 'normal', '100', '10', '/storage/images/Clean-Eating-One-pan-Mediterranean-Chicken-Recipe-1024x642.jpg', '2017-07-14 21:21:36', '2017-07-14 21:21:36'),
(51, 'Chicken & Cheese Panini', 'sandwiches', 'normal', '150', '15', '/storage/images/w.jpg', '2017-07-14 21:36:32', '2017-07-14 21:36:32'),
(52, 'Chick Pea Salad', 'salads', 'special', '100', '20', '/storage/images/Chick Pea Salad.jpg', '2017-07-14 21:40:23', '2017-07-14 21:40:23'),
(53, 'Fresh Beet Salad', 'salads', 'normal', '100', '20', '/storage/images/Fresh Beet Salad.jpg', '2017-07-14 21:42:04', '2017-07-14 21:42:04'),
(54, 'Eggplant Parmesan Panini', 'salads', 'normal', '100', '20', '/storage/images/EggplantParmesanPanini.jpg', '2017-07-14 21:42:59', '2017-07-14 21:42:59'),
(55, 'Mixed Kabob', 'grill', 'normal', '200', '20', '/storage/images/mixedkabab.jpg', '2017-07-14 21:44:37', '2017-07-14 21:44:37'),
(56, 'Eggplant Wrap', 'vegetarian', 'recent', '100', '10', '/storage/images/EggplantParmesanPanini.jpg', '2017-07-14 21:55:49', '2017-07-14 21:55:49'),
(57, 'Prime Ribeye Steak', 'grill', 'special', '200', '10', '/storage/images/Prime Ribeye Steak.jpg', '2017-07-14 21:57:35', '2017-07-14 21:57:35'),
(58, 'Lamb Shank', 'grill', 'special', '150', '25', '/storage/images/Lamb.jpg', '2017-07-14 21:58:53', '2017-07-14 21:58:53'),
(59, 'Hummus', 'appetizers', 'recent', '100', '10', '/storage/images/Astor Burger.jpg', '2017-07-14 22:06:58', '2017-07-14 22:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_09_064319_create_foods_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
