-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 30, 2020 at 01:33 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brandz`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `subtitle`, `btn_text`, `btn_url`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Brandzone', 'your fvrt site', 'SHOP WITH US', 'df/fg', 'about-2019-05-01-5cc8c11590f27.jpg', '<div class=\"col-xl-6 col-lg-6 col-md-6\">\r\n<div class=\"about_image\"><img class=\"img-fluid\" src=\"http://localhost/redline/public/storage/about/about2.jpg\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"col-xl-6 col-lg-6 col-md-6\">\r\n<div class=\"about_content\">\r\n<h3>Our company</h3>\r\n<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?</p>\r\n<p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo volup.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eu nisi ac mi malesuada vestibulum. Phasellus tempor nunc eleifend cursus molestie. Mauris lectus arcu, pellentesque at sodales sit amet, condimentum id nunc. Donec ornare mattis suscipit. Praesent fermentum accumsan vulputate.xcc&nbsp;</p>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-12\">\r\n<div class=\"row\">\r\n<div class=\"col-xl-6 col-lg-6 col-md-6\">\r\n<div class=\"about_bottom_content\">\r\n<h3>WHy Chose Us</h3>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui quod obcaecati minus vero provident itaque distinctio laudantium quas id necessitatibus, repudiandae, maxime illo. Ad, reiciendis eveniet. Laborum consequuntur voluptate fugiat.</p>\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Itaque amet, quam vitae perspiciatis harum sequi aperiam aspernatur incidunt dolore quasi.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-lg-6 col-md-6\">\r\n<div class=\"about_bottom_content\">\r\n<h3>WHy Chose Us</h3>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui quod obcaecati minus vero provident itaque distinctio laudantium quas id necessitatibus, repudiandae, maxime illo. Ad, reiciendis eveniet. Laborum consequuntur voluptate fugiat.</p>\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Itaque amet, quam vitae perspiciatis harum sequi aperiam aspernatur incidunt dolore quasi.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, '2020-02-25 13:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `subtitle`, `btn_text`, `btn_url`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SALE OFF  30% FOR ALL', 'In anniversay 5 years of LOGANCEE store. We’re glad notice will sale off 30% for all product on our store. Wow ! Come here.', 'Shop Now', 'https://redlinebdshop/products/furniture', '-2019-04-27-5cc45ec65669c.jpg', 1, '2019-04-27 13:53:11', '2019-04-27 14:14:22', NULL),
(2, 'SALE OFF  30% FOR ALL', 'In anniversay 5 years of LOGANCEE store. We’re glad notice will sale off 30% for all product on our store. Wow ! Come here.', 'Shop Now', 'https://brandzone/products/sofa', '-2019-04-27-5cc45f104b000.jpg', 1, '2019-04-27 13:54:24', '2020-02-21 17:54:32', NULL),
(3, 'SALE OFF  30% FOR ALL', 'In anniversay 5 years of LOGANCEE store. We’re glad notice will sale off 30% for all product on our store.', 'Buy Now', 'https://redlinebdshop/products/hatil', 'sale-off-30-for-all-2019-04-27-5cc4885c9c95c.jpg', 1, '2019-04-27 13:54:58', '2019-04-27 16:50:37', NULL),
(4, 'brandzone', 'rty df adasa sd asda', NULL, NULL, 'brandzone-2020-02-22-5e51492a99721.jpg', 1, '2020-02-22 15:30:51', '2020-02-22 15:30:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `basicinfos`
--

CREATE TABLE `basicinfos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basicinfos`
--

INSERT INTO `basicinfos` (`id`, `title`, `logo`, `favicon`, `phone`, `phone_two`, `email`, `email_two`, `address`, `description`, `created_at`, `updated_at`) VALUES
(1, '', 'logo-2019-04-27-5cc48e647d210.png', 'favicon-2019-04-27-5cc48ecd9f43d.png', '9879746546516', '878946516', 'morsalin@gmail.com', 'piash32@gmail.com', 'East west dhaka ,baki shob faka', 'sign up please', NULL, '2020-02-22 15:53:58');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `description`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nokia', 'nokia-2019-04-26-5cc2449a73e61.png', 'Nokia Corporation is a Finnish multinational telecommunications, information technology, and consumer electronics company, founded in 1865. Nokia\'s headquarters are in Espoo, in the greater Helsinki metropolitan area.', 'nokia', 1, '2019-04-25 23:36:58', '2019-04-25 23:40:50'),
(3, 'Canon', 'canon-2019-04-26-5cc24562d890d.png', 'Canon Inc. is a Japanese multinational corporation specializing in the manufacture of imaging and optical products, including cameras, camcorders, photocopiers, steppers, computer printers and medical equipment. It\'s headquartered in Ōta, Tokyo, Japan.', 'canon', 1, '2019-04-25 23:40:18', '2019-04-25 23:41:33'),
(4, 'Samsung', 'samsung-2019-04-26-5cc245d2de4fe.png', 'Samsung is a South Korean multinational conglomerate headquartered in Samsung Town, Seoul. It comprises numerous affiliated businesses, most of them united under the Samsung brand, and is the largest South Korean chaebol. Samsung was founded by Lee Byung-chul in 1938 as a trading company.', 'samsung', 1, '2019-04-25 23:42:10', '2019-04-25 23:42:10'),
(5, 'Apple', 'apple-2019-04-26-5cc245f2c3755.png', 'Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services. It is considered one of the Big Four of technology along with Amazon, Google, and Facebook', 'apple', 1, '2019-04-25 23:42:42', '2019-04-25 23:42:42'),
(6, 'HTC', 'htc-2019-04-26-5cc24613cce53.png', 'HTC Corporation is a Taiwanese consumer electronics company headquartered in Xindian District, New Taipei City, Taiwan. Founded in 1997, HTC began as an original design manufacturer and original equipment manufacturer, designing and manufacturing laptop computers.', 'htc', 1, '2019-04-25 23:43:15', '2019-04-25 23:43:15'),
(7, 'LG', 'lg-2019-04-26-5cc2462b94065.png', 'LG Electronics Inc. is a South Korean multinational electronics company headquartered in Yeouido-dong, Seoul, South Korea, and is part of LG Corporation, employing 82,000 people working in 119 local subsidiaries worldwide.', 'lg', 1, '2019-04-25 23:43:39', '2019-04-25 23:43:39'),
(10, 'Easy', '', 'Nokia Corporation is a Finnish multinational telecommunications, information technology, and consumer electronics company, founded in 1865. Nokia\'s headquarters are in Espoo, in the greater Helsinki metropolitan area.', 'easy', 1, NULL, NULL),
(11, 'Colors', '', 'Nokia Corporation is a Finnish multinational telecommunications, information technology, and consumer electronics company, founded in 1865. Nokia\'s headquarters are in Espoo, in the greater Helsinki metropolitan area.', 'colors', 1, NULL, NULL),
(12, 'Arong', '', 'Nokia Corporation is a Finnish multinational telecommunications, information technology, and consumer electronics company, founded in 1865. Nokia\'s headquarters are in Espoo, in the greater Helsinki metropolitan area.', 'arong', 1, NULL, NULL),
(13, 'Bata', '', 'Nokia Corporation is a Finnish multinational telecommunications, information technology, and consumer electronics company, founded in 1865. Nokia\'s headquarters are in Espoo, in the greater Helsinki metropolitan area.', 'bata', 1, NULL, NULL),
(14, 'Apex', '', 'Nokia Corporation is a Finnish multinational telecommunications, information technology, and consumer electronics company, founded in 1865. Nokia\'s headquarters are in Espoo, in the greater Helsinki metropolitan area.', 'apex', 1, NULL, NULL),
(15, 'Partex', '', 'Nokia Corporation is a Finnish multinational telecommunications, information technology, and consumer electronics company, founded in 1865. Nokia\'s headquarters are in Espoo, in the greater Helsinki metropolitan area.', 'partex', 1, NULL, NULL),
(16, 'Hatil', '', 'Nokia Corporation is a Finnish multinational telecommunications, information technology, and consumer electronics company, founded in 1865. Nokia\'s headquarters are in Espoo, in the greater Helsinki metropolitan area.', 'hatil', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `subcategory_id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New In Shoes', 1, 'new-in-shoes', 1, '2019-04-25 01:56:20', '2019-04-25 02:02:58'),
(2, 'New In Clothing', 1, 'new-in-clothing', 1, '2019-04-25 01:56:27', '2019-04-25 02:02:33'),
(3, 'New In Bags', 1, 'new-in-bags', 1, '2019-04-25 02:03:19', '2019-04-25 02:03:19'),
(4, 'New In Watches', 1, 'new-in-watches', 1, '2019-04-25 02:03:28', '2019-04-25 02:03:28'),
(5, 'New In Accesories', 1, 'new-in-accesories', 1, '2019-04-25 02:03:39', '2019-04-25 02:03:39'),
(6, 'Polos & Tees', 2, 'polos-tees', 1, '2019-04-25 02:03:55', '2019-04-25 02:03:55'),
(7, 'Casual Shirts', 2, 'casual-shirts', 1, '2019-04-25 02:04:18', '2019-04-25 02:04:18'),
(8, 'Jeans', 2, 'jeans', 1, '2019-04-25 02:04:28', '2019-04-25 02:04:28'),
(9, 'Casual Trousers', 2, 'casual-trousers', 1, '2019-04-25 02:04:37', '2019-04-25 02:04:37'),
(10, 'Formal Shirts', 2, 'formal-shirts', 1, '2019-04-25 02:04:56', '2019-04-25 02:04:56'),
(12, 'Bags', 3, 'bags', 1, '2019-04-25 02:05:58', '2019-04-25 02:05:58'),
(13, 'Sunglasses', 3, 'sunglasses', 1, '2019-04-25 02:06:04', '2019-04-25 02:06:04'),
(14, 'Watches', 3, 'watches', 1, '2019-04-25 02:06:18', '2019-04-25 02:06:18'),
(15, 'New In Jewellery', 4, 'new-in-jewellery', 1, '2019-04-25 13:23:48', '2019-04-25 13:23:48'),
(16, 'lovely', 8, 'lovely', 1, '2020-02-24 04:33:22', '2020-02-24 04:33:22');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2019-04-26 22:42:42', '2019-04-26 22:42:42'),
(2, 1, 6, '2019-04-26 22:42:42', '2019-04-26 22:42:42'),
(3, 2, 2, '2019-04-27 00:46:01', '2019-04-27 00:46:01'),
(4, 2, 6, '2019-04-27 00:46:01', '2019-04-27 00:46:01'),
(5, 3, 4, '2019-04-27 00:56:34', '2019-04-27 00:56:34'),
(6, 3, 5, '2019-04-27 00:56:34', '2019-04-27 00:56:34'),
(7, 4, 5, '2019-04-27 01:00:48', '2019-04-27 01:00:48'),
(9, 6, 4, '2019-04-27 01:08:35', '2019-04-27 01:08:35'),
(10, 6, 5, '2019-04-27 01:08:35', '2019-04-27 01:08:35'),
(16, 9, 3, '2019-04-27 01:22:10', '2019-04-27 01:22:10'),
(17, 9, 12, '2019-04-27 01:22:10', '2019-04-27 01:22:10'),
(18, 10, 2, '2019-04-27 09:05:20', '2019-04-27 09:05:20'),
(19, 10, 8, '2019-04-27 09:05:20', '2019-04-27 09:05:20'),
(20, 11, 2, '2019-04-27 09:08:36', '2019-04-27 09:08:36'),
(21, 11, 8, '2019-04-27 09:08:36', '2019-04-27 09:08:36'),
(24, 12, 7, '2019-04-27 09:11:47', '2019-04-27 09:11:47'),
(25, 12, 10, '2019-04-27 09:11:47', '2019-04-27 09:11:47'),
(28, 13, 7, '2019-04-27 09:14:05', '2019-04-27 09:14:05'),
(29, 13, 10, '2019-04-27 09:14:05', '2019-04-27 09:14:05'),
(30, 14, 2, '2019-04-27 09:23:06', '2019-04-27 09:23:06'),
(32, 15, 3, '2019-04-27 16:09:33', '2019-04-27 16:09:33'),
(34, 5, 3, '2019-04-28 16:55:41', '2019-04-28 16:55:41'),
(35, 5, 13, '2019-04-28 16:55:41', '2019-04-28 16:55:41'),
(36, 2, 13, '2019-04-28 16:56:12', '2019-04-28 16:56:12'),
(37, 15, 14, '2019-04-28 16:57:08', '2019-04-28 16:57:08'),
(39, 18, 2, '2019-05-01 14:00:40', '2019-05-01 14:00:40'),
(40, 18, 1, '2019-05-01 14:20:57', '2019-05-01 14:20:57'),
(41, 8, 15, '2019-05-01 16:25:09', '2019-05-01 16:25:09'),
(42, 19, 15, '2019-05-02 23:29:49', '2019-05-02 23:29:49'),
(43, 20, 2, '2020-02-21 15:29:58', '2020-02-21 15:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, NULL, NULL),
(2, 'Chittagong', 1, NULL, NULL),
(3, 'Rajshahi', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Black', 1, NULL, NULL),
(2, 'White', 1, NULL, NULL),
(3, 'Red', 1, NULL, NULL),
(4, 'Green', 1, NULL, NULL),
(8, 'Blue', 1, NULL, NULL),
(9, 'Yellow', 1, NULL, NULL),
(10, 'Gray', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `color_product`
--

CREATE TABLE `color_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `color_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_product`
--

INSERT INTO `color_product` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-04-26 22:42:42', '2019-04-26 22:42:42'),
(2, 1, 2, '2019-04-26 22:42:42', '2019-04-26 22:42:42'),
(3, 1, 8, '2019-04-27 00:08:26', '2019-04-27 00:08:26'),
(4, 2, 4, '2019-04-27 00:46:02', '2019-04-27 00:46:02'),
(5, 2, 8, '2019-04-27 00:46:02', '2019-04-27 00:46:02'),
(6, 2, 9, '2019-04-27 00:46:02', '2019-04-27 00:46:02'),
(7, 3, 1, '2019-04-27 00:56:34', '2019-04-27 00:56:34'),
(8, 3, 2, '2019-04-27 00:56:34', '2019-04-27 00:56:34'),
(9, 4, 2, '2019-04-27 01:00:48', '2019-04-27 01:00:48'),
(10, 4, 3, '2019-04-27 01:00:48', '2019-04-27 01:00:48'),
(11, 4, 10, '2019-04-27 01:00:48', '2019-04-27 01:00:48'),
(12, 5, 1, '2019-04-27 01:06:17', '2019-04-27 01:06:17'),
(13, 5, 2, '2019-04-27 01:06:17', '2019-04-27 01:06:17'),
(14, 6, 8, '2019-04-27 01:08:35', '2019-04-27 01:08:35'),
(17, 8, 1, '2019-04-27 01:19:14', '2019-04-27 01:19:14'),
(18, 8, 10, '2019-04-27 01:19:14', '2019-04-27 01:19:14'),
(19, 9, 4, '2019-04-27 01:22:10', '2019-04-27 01:22:10'),
(20, 9, 8, '2019-04-27 01:22:10', '2019-04-27 01:22:10'),
(21, 9, 9, '2019-04-27 01:22:10', '2019-04-27 01:22:10'),
(22, 10, 1, '2019-04-27 09:05:20', '2019-04-27 09:05:20'),
(23, 11, 1, '2019-04-27 09:08:36', '2019-04-27 09:08:36'),
(24, 11, 2, '2019-04-27 09:08:36', '2019-04-27 09:08:36'),
(25, 12, 8, '2019-04-27 09:11:47', '2019-04-27 09:11:47'),
(26, 12, 9, '2019-04-27 09:11:47', '2019-04-27 09:11:47'),
(27, 13, 8, '2019-04-27 09:14:05', '2019-04-27 09:14:05'),
(28, 13, 9, '2019-04-27 09:14:05', '2019-04-27 09:14:05'),
(29, 14, 3, '2019-04-27 09:23:07', '2019-04-27 09:23:07'),
(30, 14, 8, '2019-04-27 09:23:07', '2019-04-27 09:23:07'),
(31, 15, 1, '2019-04-27 16:09:33', '2019-04-27 16:09:33'),
(32, 15, 2, '2019-04-27 16:12:59', '2019-04-27 16:12:59'),
(33, 18, 1, '2019-05-01 14:00:41', '2019-05-01 14:00:41'),
(34, 18, 3, '2019-05-01 14:00:41', '2019-05-01 14:00:41'),
(35, 18, 8, '2019-05-01 14:00:41', '2019-05-01 14:00:41'),
(36, 19, 1, '2019-05-02 23:29:49', '2019-05-02 23:29:49'),
(37, 19, 2, '2019-05-02 23:29:49', '2019-05-02 23:29:49'),
(38, 20, 2, '2020-02-21 15:29:58', '2020-02-21 15:29:58'),
(39, 20, 3, '2020-02-21 15:29:58', '2020-02-21 15:29:58'),
(40, 20, 4, '2020-02-21 15:29:58', '2020-02-21 15:29:58'),
(41, 20, 8, '2020-02-21 15:29:58', '2020-02-21 15:29:58'),
(42, 20, 9, '2020-02-21 15:29:58', '2020-02-21 15:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'morsalin', 'morsalin@gmail.com', 'Store information', '2548 Broaddus Maple Court Avenue, Madisonville KY 4783, United States of America.', 1, '2019-04-28 20:49:19', '2019-04-28 20:49:19', NULL),
(2, 'morsalin', 'morsalin@gmail.com', 'Store information', '2548 Broaddus Maple Court Avenue, Madisonville KY 4783, United States of America.', 1, '2019-04-28 20:52:16', '2019-04-28 20:52:16', NULL),
(3, 'Shisir', 'morsalin@gmail.com', 'Store information', '2548 Broaddus Maple Court Avenue, Madisonville KY 4783, United States of America.', 1, '2019-04-28 20:53:50', '2019-04-28 20:53:50', NULL),
(4, 'nokia', 'morsalin@gmail.com', 'Store information', '<script src=\"{{asset(\'contents/website/assests/js/jquery-2.1.3.min.js\')}}\"></script>', 1, '2019-04-28 20:56:59', '2019-05-05 17:28:54', '2019-05-05 17:28:54'),
(7, 'sharif', 'morsalin@gmail.com', 'Store information', '2548 Broaddus Maple Court Avenue, Madisonville KY 4783, United States of America.', 1, '2019-04-29 14:59:03', '2019-09-05 13:19:44', '2019-09-05 13:19:44'),
(8, 'hasan', 'morsalin@gmail.com', 'Sign Up To Newsletter', 'Sign up for our e-mail and be the first who know our special offers! Furthermore, we will give a 15% discount on the next order after you sign up. Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique, fugiat?.', 1, '2019-04-29 15:18:41', '2019-04-30 17:14:26', NULL),
(9, 'imran', 'morsalin@gmail.com', 'Sign Up To Newsletter', '2548 Broaddus Maple Court Avenue, Madisonville KY 4783, United States of America.', 1, '2019-04-29 17:12:32', '2019-05-05 17:28:18', NULL),
(10, 'deadman', 'morsalin@gmail.com', 'Store information', '2548 Broaddus Maple Court Avenue, Madisonville KY 4783, United States of America.', 1, '2019-04-29 17:13:20', '2019-05-06 08:18:45', NULL);
INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 'monir', 'morsalin@gmail.com', 'Store information', '(function(e,t){\"object\"==typeof exports&&\"undefined\"!=typeof module?module.exports=t():\"function\"==typeof define&&define.amd?define(t):e.Sweetalert2=t()})(this,function(){\"use strict\";function e(e){var t=function e(){for(var t=arguments.length,n=Array(t),o=0;o<t;o++)n[o]=arguments[o];return this instanceof e?void Object.getPrototypeOf(e).apply(this,n):new(Function.prototype.bind.apply(e,[null].concat(n)))};return t.prototype=s(Object.create(e.prototype),{constructor:t}),\"function\"==typeof Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e,t}function t(){var e=Ae.innerParams.get(this),t=Ae.domCache.get(this);e.showConfirmButton||(V(t.confirmButton),!e.showCancelButton&&V(t.actions)),O([t.popup,t.actions],k.loading),t.popup.removeAttribute(\"aria-busy\"),t.popup.removeAttribute(\"data-loading\"),t.confirmButton.disabled=!1,t.cancelButton.disabled=!1}function n(e){e.inputValidator||Object.keys(Ee).forEach(function(t){e.input===t&&(e.inputValidator=e.expectRejections?Ee[t]:Oe.adaptInputValidator(Ee[t]))}),e.target&&(\"string\"!=typeof e.target||document.querySelector(e.target))&&(\"string\"==typeof e.target||e.target.appendChild)||(g(\"Target parameter is not valid, defaulting to \\\"body\\\"\"),e.target=\"body\");var t,n=N(),o=\"string\"==typeof e.target?document.querySelector(e.target):e.target;t=n&&o&&n.parentNode!==o.parentNode?oe(e):n||oe(e),e.width&&(t.style.width=\"number\"==typeof e.width?e.width+\"px\":e.width),e.padding&&(t.style.padding=\"number\"==typeof e.padding?e.padding+\"px\":e.padding),e.background&&(t.style.background=e.background);for(var a=window.getComputedStyle(t).getPropertyValue(\"background-color\"),r=t.querySelectorAll(\"[class^=swal2-success-circular-line], .swal2-success-fix\"),s=0;s<r.length;s++)r[s].style.backgroundColor=a;var i=M(),l=W(),d=U().querySelector(\"#\"+k.content),u=J(),c=Q(),p=Y(),m=G(),f=X();if(e.titleText?l.innerText=e.titleText:e.title&&(l.innerHTML=e.title.split(\"\\n\").join(\"<br />\")),\"string\"==typeof e.backdrop?M().style.background=e.backdrop:!e.backdrop&&L([document.documentElement,document.body],k[\"no-backdrop\"]),e.html?ie(e.html,d):e.text?(d.textContent=e.text,T(d)):V(d),e.position in k?L(i,k[e.position]):(g(\"The \\\"position\\\" parameter is not valid, defaulting to \\\"center\\\"\"),L(i,k.center)),e.grow&&\"string\"==typeof e.grow){var b=\"grow-\"+e.grow;b in k&&L(i,k[b])}\"function\"==typeof e.animation&&(e.animation=e.animation.call()),e.showCloseButton?(m.setAttribute(\"aria-label\",e.closeButtonAriaLabel),T(m)):V(m),t.className=k.popup,e.toast?(L([document.documentElement,document.body],k[\"toast-shown\"]),L(t,k.toast)):L(t,k.modal),e.customClass&&L(t,e.customClass);var y=z(),v=parseInt(null===e.currentProgressStep?Oe.getQueueStep():e.currentProgressStep,10);e.progressSteps&&e.progressSteps.length?(T(y),q(y),v>=e.progressSteps.length&&g(\"Invalid currentProgressStep parameter, it should be less than progressSteps.length (currentProgressStep like JS arrays starts from 0)\"),e.progressSteps.forEach(function(t,n){var o=document.createElement(\"li\");if(L(o,k.progresscircle),o.innerHTML=t,n===v&&L(o,k.activeprogressstep),y.appendChild(o),n!==e.progressSteps.length-1){var i=document.createElement(\"li\");L(i,k.progressline),e.progressStepsDistance&&(i.style.width=e.progressStepsDistance),y.appendChild(i)}})):V(y);for(var w=H(),C=0;C<w.length;C++)V(w[C]);if(e.type){var x=!1;for(var A in B)if(e.type===A){x=!0;break}if(!x)return h(\"Unknown alert type: \"+e.type),!1;var E=t.querySelector(\".\"+k.icon+\".\"+B[e.type]);T(E),e.animation&&L(E,\"swal2-animate-\"+e.type+\"-icon\")}var S=K();if(e.imageUrl?(S.setAttribute(\"src\",e.imageUrl),S.setAttribute(\"alt\",e.imageAlt),T(S),e.imageWidth?S.setAttribute(\"width\",e.imageWidth):S.removeAttribute(\"width\"),e.imageHeight?S.setAttribute(\"height\",e.imageHeight):S.removeAttribute(\"height\"),S.className=k.image,e.imageClass&&L(S,e.imageClass)):V(S),e.showCancelButton?p.style.display=\"inline-block\":V(p),e.showConfirmButton?j(c,\"display\"):V(c),e.showConfirmButton||e.showCancelButton?T(u):V(u),c.innerHTML=e.confirmButtonText,p.innerHTML=e.cancelButtonText,c.setAttribute(\"aria-label\",e.confirmButtonAriaLabel),p.setAttribute(\"aria-label\",e.cancelButtonAriaLabel),c.className=k.confirm,L(c,e.confirmButtonClass),p.className=k.cancel,L(p,e.cancelButtonClass),e.buttonsStyling){L([c,p],k.styled),e.confirmButtonColor&&(c.style.backgroundColor=e.confirmButtonColor),e.cancelButtonColor&&(p.style.backgroundColor=e.cancelButtonColor);var P=window.getComputedStyle(c).getPropertyValue(\"background-color\");c.style.borderLeftColor=P,c.style.borderRightColor=P}else O([c,p],k.styled),c.style.backgroundColor=c.style.borderLeftColor=c.style.borderRightColor=\"\",p.style.backgroundColor=p.style.borderLeftColor=p.style.borderRightColor=\"\";ie(e.footer,f),!0===e.animation?O(t,k.noanimation):L(t,k.noanimation),e.showLoaderOnConfirm&&!e.preConfirm&&g(\"showLoaderOnConfirm is set to true, but preConfirm is not defined.\\nshowLoaderOnConfirm should be used together with preConfirm, see usage example:\\nhttps://sweetalert2.github.io/#ajax-request\")}function o(){if(\"undefined\"!=typeof window){\"undefined\"==typeof Promise&&h(\"This package requires a Promise library, please include a shim to enable it in this browser (See: https://github.com/sweetalert2/sweetalert2/wiki/Migration-from-SweetAlert-to-SweetAlert2#1-ie-support)\");for(var e=arguments.length,t=Array(e),n=0;n<e;n++)t[n]=arguments[n];if(\"undefined\"==typeof t[0])return h(\"SweetAlert2 expects at least 1 attribute!\"),!1;Le=this;var o=Object.freeze(this.constructor.argsToParams(t));Object.defineProperties(this,{params:{value:o,writable:!1,enumerable:!0}});var i=this._main(this.params);Ae.promise.set(this,i)}}var a=\"function\"==typeof Symbol&&\"symbol\"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&\"function\"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?\"symbol\":typeof e},i=function(e,t){if(!(e instanceof t))throw new TypeError(\"Cannot call a class as a function\")},r=function(){function e(e,t){for(var n,o=0;o<t.length;o++)n=t[o],n.enumerable=n.enumerable||!1,n.configurable=!0,\"value\"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}return function(t,n,o){return n&&e(t.prototype,n),o&&e(t,o),t}}(),s=Object.assign||function(e){for(var t,n=1;n<arguments.length;n++)for(var o in t=arguments[n],t)Object.prototype.hasOwnProperty.call(t,o)&&(e[o]=t[o]);return e},l=function e(t,n,o){null===t&&(t=Function.prototype);var i=Object.getOwnPropertyDescriptor(t,n);if(void 0===i){var a=Object.getPrototypeOf(t);return null===a?void 0:e(a,n,o)}if(\"value\"in i)return i.value;var r=i.get;return void 0===r?void 0:r.call(o)},d=function(e,t){if(\"function\"!=typeof t&&null!==t)throw new TypeError(\"Super expression must either be null or a function, not \"+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)},u=function(e,t){if(!e)throw new ReferenceError(\"this hasn\'t been initialised - super() hasn\'t been called\");return t&&(\"object\"==typeof t||\"function\"==typeof t)?t:e},c=function(){function e(e,t){var n=[],o=!0,i=!1,a=void 0;try{for(var r,s=e[Symbol.iterator]();!(o=(r=s.next()).done)&&(n.push(r.value),!(t&&n.length===t));o=!0);}catch(e){i=!0,a=e}finally{try{!o&&s[\"return\"]&&s[\"return\"]()}finally{if(i)throw a}}return n}return function(t,n){if(Array.isArray(t))return t;if(Symbol.iterator in Object(t))return e(t,n);throw new TypeError(\"Invalid attempt to destructure non-iterable instance\")}}(),p=\"SweetAlert2:\",m=function(e){for(var t=[],n=0;n<e.length;n++)-1===t.indexOf(e[n])&&t.push(e[n]);return t},f=function(e){var t=[];return\"undefined\"!=typeof Map&&e instanceof Map?e.forEach(function(e,n){t.push([n,e])}):Object.keys(e).forEach(function(n){t.push([n,e[n]])}),t},g=function(e){console.warn(p+\" \"+e)},h=function(e){console.error(p+\" \"+e)},b=[],y=function(e){-1!==b.indexOf(e)||(b.push(e),g(e))},v=function(e){return\"function\"==typeof e?e():e},w=function(e){return\"object\"===(\"undefined\"==typeof e?\"undefined\":a(e))&&\"function\"==typeof e.then},C=Object.freeze({cancel:\"cancel\",backdrop:\"overlay\",close:\"close\",esc:\"esc\",timer:\"timer\"}),x=function(e){var t={};for(var n in e)t[e[n]]=\"swal2-\"+e[n];return t},k=x([\"container\",\"shown\",\"iosfix\",\"popup\",\"modal\",\"no-backdrop\",\"toast\",\"toast-shown\",\"fade\",\"show\",\"hide\",\"noanimation\",\"close\",\"title\",\"header\",\"content\",\"actions\",\"confirm\",\"cancel\",\"footer\",\"icon\",\"icon-text\",\"image\",\"input\",\"has-input\",\"file\",\"range\",\"select\",\"radio\",\"checkbox\",\"textarea\",\"inputerror\",\"validationerror\",\"progresssteps\",\"activeprogressstep\",\"progresscircle\",\"progressline\",\"loading\",\"styled\",\"top\",\"top-start\",\"top-end\",\"top-left\",\"top-right\",\"center\",\"center-start\",\"center-end\",\"center-left\",\"center-right\",\"bottom\",\"bottom-start\",\"bottom-end\",\"bottom-left\",\"bottom-right\",\"grow-row\",\"grow-column\",\"grow-fullscreen\"]),B=x([\"success\",\"warning\",\"info\",\"question\",\"error\"]),A={previousActiveElement:null,previousBodyPadding:null},E=function(e,t){return!!e.classList&&e.classList.contains(t)},S=function(e){if(e.focus(),\"file\"!==e.type){var t=e.value;e.value=\"\",e.value=t}},P=function(e,t,n){e&&t&&(\"string\"==typeof t&&(t=t.split(/\\s+/).filter(Boolean)),t.forEach(function(t){e.forEach?e.forEach(function(e){n?e.classList.add(t):e.classList.remove(t)}):n?e.classList.add(t):e.classList.remove(t)}))},L=function(e,t){P(e,t,!0)},O=function(e,t){P(e,t,!1)},_=function(e,t){for(var n=0;n<e.childNodes.length;n++)if(E(e.childNodes[n],t))return e.childNodes[n]},T=function(e){e.style.opacity=\"\",e.style.display=e.id===k.content?\"block\":\"flex\"},V=function(e){e.style.opacity=\"\",e.style.display=\"none\"},q=function(e){for(;e.firstChild;)e.removeChild(e.firstChild)},D=function(e){return e&&(e.offsetWidth||e.offsetHeight||e.getClientRects().length)},j=function(e,t){e.style.removeProperty?e.style.removeProperty(t):e.style.removeAttribute(t)},R=function(){if(A.previousActiveElement&&A.previousActiveElement.focus){var e=window.scrollX,t=window.scrollY;A.previousActiveElement.focus(),\"undefined\"!=typeof e&&\"undefined\"!=typeof t&&window.scrollTo(e,t)}},M=function(){return document.body.querySelector(\".\"+k.container)},I=function(e){var t=M();return t?t.querySelector(\".\"+e):null},N=function(){return I(k.popup)},H=function(){var e=N();return e.querySelectorAll(\".\"+k.icon)},W=function(){return I(k.title)},U=function(){return I(k.content)},K=function(){return I(k.image)},z=function(){return I(k.progresssteps)},F=function(){return I(k.validationerror)},Q=function(){return I(k.confirm)},Y=function(){return I(k.cancel)},J=function(){return I(k.actions)},X=function(){return I(k.footer)},G=function(){return I(k.close)},Z=function(){var e=Array.prototype.slice.call(N().querySelectorAll(\"[tabindex]:not([tabindex=\\\"-1\\\"]):not([tabindex=\\\"0\\\"])\")).sort(function(e,t){return(e=parseInt(e.getAttribute(\"tabindex\")),t=parseInt(t.getAttribute(\"tabindex\")),e>t)?1:e<t?-1:0}),t=Array.prototype.slice.call(N().querySelectorAll(\"a[href], area[href], input:not([disabled]), select:not([disabled]), textarea:not([disabled]), button:not([disabled]), iframe, object, embed, [tabindex=\\\"0\\\"], [contenteditable], audio[controls], video[controls]\"));return m(e.concat(t))},$=function(){return!document.body.classList.contains(k[\"toast-shown\"])},ee=function(){return document.body.classList.contains(k[\"toast-shown\"])},te=function(){return\"undefined\"==typeof window||\"undefined\"==typeof document},ne=(\"\\n <div aria-labelledby=\\\"\"+k.title+\"\\\" aria-describedby=\\\"\"+k.content+\"\\\" class=\\\"\"+k.popup+\"\\\" tabindex=\\\"-1\\\">\\n   <div class=\\\"\"+k.header+\"\\\">\\n     <ul class=\\\"\"+k.progresssteps+\"\\\"></ul>\\n     <div class=\\\"\"+k.icon+\" \"+B.error+\"\\\">\\n       <span class=\\\"swal2-x-mark\\\"><span class=\\\"swal2-x-mark-line-left\\\"></span><span class=\\\"swal2-x-mark-line-right\\\"></span></span>\\n     </div>\\n     <div class=\\\"\"+k.icon+\" \"+B.question+\"\\\">\\n       <span class=\\\"\"+k[\"icon-text\"]+\"\\\">?</span>\\n      </div>\\n     <div class=\\\"\"+k.icon+\" \"+B.warning+\"\\\">\\n       <span class=\\\"\"+k[\"icon-text\"]+\"\\\">!</span>\\n      </div>\\n     <div class=\\\"\"+k.icon+\" \"+B.info+\"\\\">\\n       <span class=\\\"\"+k[\"icon-text\"]+\"\\\">i</span>\\n      </div>\\n     <div class=\\\"\"+k.icon+\" \"+B.success+\"\\\">\\n       <div class=\\\"swal2-success-circular-line-left\\\"></div>\\n       <span class=\\\"swal2-success-line-tip\\\"></span> <span class=\\\"swal2-success-line-long\\\"></span>\\n       <div class=\\\"swal2-success-ring\\\"></div> <div class=\\\"swal2-success-fix\\\"></div>\\n       <div class=\\\"swal2-success-circular-line-right\\\"></div>\\n     </div>\\n     <img class=\\\"\"+k.image+\"\\\" />\\n     <h2 class=\\\"\"+k.title+\"\\\" id=\\\"\"+k.title+\"\\\"></h2>\\n     <button type=\\\"button\\\" class=\\\"\"+k.close+\"\\\">\\xD7</button>\\n   </div>\\n   <div class=\\\"\"+k.content+\"\\\">\\n     <div id=\\\"\"+k.content+\"\\\"></div>\\n     <input class=\\\"\"+k.input+\"\\\" />\\n     <input type=\\\"file\\\" class=\\\"\"+k.file+\"\\\" />\\n     <div class=\\\"\"+k.range+\"\\\">\\n       <input type=\\\"range\\\" />\\n       <output></output>\\n     </div>\\n     <select class=\\\"\"+k.select+\"\\\"></select>\\n     <div class=\\\"\"+k.radio+\"\\\"></div>\\n     <label for=\\\"\"+k.checkbox+\"\\\" class=\\\"\"+k.checkbox+\"\\\">\\n       <input type=\\\"checkbox\\\" />\\n     </label>\\n     <textarea class=\\\"\"+k.textarea+\"\\\"></textarea>\\n     <div class=\\\"\"+k.validationerror+\"\\\" id=\\\"\"+k.validationerror+\"\\\"></div>\\n   </div>\\n   <div class=\\\"\"+k.actions+\"\\\">\\n     <button type=\\\"button\\\" class=\\\"\"+k.confirm+\"\\\">OK</button>\\n     <button type=\\\"button\\\" class=\\\"\"+k.cancel+\"\\\">Cancel</button>\\n   </div>\\n   <div class=\\\"\"+k.footer+\"\\\">\\n   </div>\\n </div>\\n\").replace(/(^|\\n)\\s*/g,\"\"),oe=function(e){var t=M();if(t&&(t.parentNode.removeChild(t),O([document.documentElement,document.body],[k[\"no-backdrop\"],k[\"has-input\"],k[\"toast-shown\"]])),te())return void h(\"SweetAlert2 requires document to initialize\");var n=document.createElement(\"div\");n.className=k.container,n.innerHTML=ne;var o=\"string\"==typeof e.target?document.querySelector(e.target):e.target;o.appendChild(n);var i=N(),a=U(),r=_(a,k.input),s=_(a,k.file),l=a.querySelector(\".\"+k.range+\" input\"),d=a.querySelector(\".\"+k.range+\" output\"),u=_(a,k.select),c=a.querySelector(\".\"+k.checkbox+\" input\"),p=_(a,k.textarea);i.setAttribute(\"role\",e.toast?\"alert\":\"dialog\"),i.setAttribute(\"aria-live\",e.toast?\"polite\":\"assertive\"),e.toast||i.setAttribute(\"aria-modal\",\"true\");var m=function(){Oe.isVisible()&&Oe.resetValidationError()};return r.oninput=m,s.onchange=m,u.onchange=m,c.onchange=m,p.oninput=m,l.oninput=function(){m(),d.value=l.value},l.onchange=function(){m(),l.nextSibling.value=l.value},i},ie=function(e,t){if(!e)return V(t);if(\"object\"===(\"undefined\"==typeof e?\"undefined\":a(e))){if(t.innerHTML=\"\",0 in e)for(var n=0;n in e;n++)t.appendChild(e[n].cloneNode(!0));else t.appendChild(e.cloneNode(!0));}else if(e)t.innerHTML=e;else;T(t)},ae=function(){if(te())return!1;var e=document.createElement(\"div\"),t={WebkitAnimation:\"webkitAnimationEnd\",OAnimation:\"oAnimationEnd oanimationend\",animation:\"animationend\"};for(var n in t)if(t.hasOwnProperty(n)&&\"undefined\"!=typeof e.style[n])return t[n];return!1}(),re=function(){var e=\"ontouchstart\"in window||navigator.msMaxTouchPoints;if(e)return 0;var t=document.createElement(\"div\");t.style.width=\"50px\",t.style.height=\"50px\",t.style.overflow=\"scroll\",document.body.appendChild(t);var n=t.offsetWidth-t.clientWidth;return document.body.removeChild(t),n},se=function(){null!==A.previousBodyPadding||document.body.scrollHeight>window.innerHeight&&(A.previousBodyPadding=document.body.style.paddingRight,document.body.style.paddingRight=re()+\"px\")},le=function(){null!==A.previousBodyPadding&&(document.body.style.paddingRight=A.previousBodyPadding,A.previousBodyPadding=null)},de=function(){var e=/iPad|iPhone|iPod/.test(navigator.userAgent)&&!window.MSStream;if(e&&!E(document.body,k.iosfix)){var t=document.body.scrollTop;document.body.style.top=-1*t+\"px\",L(document.body,k.iosfix)}},ue=function(){if(E(document.body,k.iosfix)){var e=parseInt(document.body.style.top,10);O(document.body,k.iosfix),document.body.style.top=\"\",document.body.scrollTop=-1*e}},ce={},pe=function(e,t){var n=M(),o=N();if(o){null!==e&&\"function\"==typeof e&&e(o),O(o,k.show),L(o,k.hide),clearTimeout(o.timeout),ee()||(R(),window.onkeydown=ce.previousWindowKeyDown,ce.windowOnkeydownOverridden=!1);var i=function(){n.parentNode&&n.parentNode.removeChild(n),O([document.documentElement,document.body],[k.shown,k[\"no-backdrop\"],k[\"has-input\"],k[\"toast-shown\"]]),$()&&(le(),ue()),null!==t&&\"function\"==typeof t&&setTimeout(function(){t()})};ae&&!E(o,k.noanimation)?o.addEventListener(ae,function e(){o.removeEventListener(ae,e),E(o,k.hide)&&i()}):i()}},me={title:\"\",titleText:\"\",text:\"\",html:\"\",footer:\"\",type:null,toast:!1,customClass:\"\",target:\"body\",backdrop:!0,animation:!0,allowOutsideClick:!0,allowEscapeKey:!0,allowEnterKey:!0,showConfirmButton:!0,showCancelButton:!1,preConfirm:null,confirmButtonText:\"OK\",confirmButtonAriaLabel:\"\",confirmButtonColor:null,confirmButtonClass:null,cancelButtonText:\"Cancel\",cancelButtonAriaLabel:\"\",cancelButtonColor:null,cancelButtonClass:null,buttonsStyling:!0,reverseButtons:!1,focusConfirm:!0,focusCancel:!1,showCloseButton:!1,closeButtonAriaLabel:\"Close this dialog\",showLoaderOnConfirm:!1,imageUrl:null,imageWidth:null,imageHeight:null,imageAlt:\"\",imageClass:null,timer:null,width:null,padding:null,background:null,input:null,inputPlaceholder:\"\",inputValue:\"\",inputOptions:{},inputAutoTrim:!0,inputClass:null,inputAttributes:{},inputValidator:null,grow:!1,position:\"center\",progressSteps:[],currentProgressStep:null,progressStepsDistance:null,onBeforeOpen:null,onAfterClose:null,onOpen:null,onClose:null,useRejections:!1,expectRejections:!1},fe=[\"useRejections\",\"expectRejections\"],ge=function(e){return me.hasOwnProperty(e)||\"extraParams\"===e},he=function(e){return-1!==fe.indexOf(e)},be=function(e){for(var t in e)ge(t)||g(\"Unknown parameter \\\"\"+t+\"\\\"\"),he(t)&&y(\"The parameter \\\"\"+t+\"\\\" is deprecated and will be removed in the next major release.\")},ye={},ve=[],we=function(e,t){return t&&t<ve.length?ve.splice(t,0,e):ve.push(e)},Ce=function(e){\"undefined\"!=typeof ve[e]&&ve.splice(e,1)},xe=function(){var e=N();e||Oe(\"\"),e=N();var t=J(),n=Q(),o=Y();T(t),T(n),L([e,t],k.loading),n.disabled=!0,o.disabled=!0,e.setAttribute(\"data-loading\",!0),e.setAttribute(\"aria-busy\",!0),e.focus()},ke=Object.freeze({isValidParameter:ge,isDeprecatedParameter:he,argsToParams:function(e){var t={};switch(a(e[0])){case\"string\":[\"title\",\"html\",\"type\"].forEach(function(n,o){void 0!==e[o]&&(t[n]=e[o])});break;case\"object\":s(t,e[0]);break;default:return h(\"Unexpected type of argument! Expected \\\"string\\\" or \\\"object\\\", got \"+a(e[0])),!1;}return t},adaptInputValidator:function(e){return function(t,n){return e.call(this,t,n).then(function(){},function(e){return e})}},close:pe,closePopup:pe,closeModal:pe,closeToast:pe,isVisible:function(){return!!N()},clickConfirm:function(){return Q().click()},clickCancel:function(){return Y().click()},getPopup:N,getTitle:W,getContent:U,getImage:K,getButtonsWrapper:function(){return y(\"swal.getButtonsWrapper() is deprecated and will be removed in the next major release, use swal.getActions() instead\"),I(k.actions)},getActions:J,getConfirmButton:Q,getCancelButton:Y,getFooter:X,isLoading:function(){return N().hasAttribute(\"data-loading\")},mixin:function(t){var n=this;return e(function(e){function n(){return i(this,n),u(this,(n.__proto__||Object.getPrototypeOf(n)).apply(this,arguments))}return d(n,e),r(n,[{key:\"_main\",value:function(e){return l(n.prototype.__proto__||Object.getPrototypeOf(n.prototype),\"_main\",this).call(this,s({},t,e))}}]),n}(n))},queue:function(e){var t=this;ve=e;var n=function(){ve=[],document.body.removeAttribute(\"data-swal2-queue-step\")},o=[];return new Promise(function(e){(function a(r,i){r<ve.length?(document.body.setAttribute(\"data-swal2-queue-step\",r),t(ve[r]).then(function(t){\"undefined\"==typeof t.value?(n(),e({dismiss:t.dismiss})):(o.push(t.value),a(r+1,i))})):(n(),e({value:o}))})(0)})},getQueueStep:function(){return document.body.getAttribute(\"data-swal2-queue-step\")},insertQueueStep:we,deleteQueueStep:Ce,showLoading:xe,enableLoading:xe,fire:function(){for(var e=this,t=arguments.length,n=Array(t),o=0;o<t;o++)n[o]=arguments[o];return new(Function.prototype.bind.apply(e,[null].concat(n)))}});if(\"undefined\"!=typeof window&&\"function\"!=typeof window.WeakMap){var Be=0;window.Symbol=function(e){return\"__\"+e+\"_\"+Math.floor(1e9*Math.random())+\"_\"+ ++Be+\"__\"},Symbol.iterator=Symbol(\"Symbol.iterator\"),window.WeakMap=function(e,t,n){function o(){t(this,e,{value:Symbol(\"WeakMap\")})}return o.prototype={delete:function(t){delete t[this[e]]},get:function(t){return t[this[e]]},has:function(t){return n.call(t,this[e])},set:function(n,o){t(n,this[e],{configurable:!0,value:o})}},o}(Symbol(\"WeakMap\"),Object.defineProperty,{}.hasOwnProperty)}var Ae={promise:new WeakMap,innerParams:new WeakMap,domCache:new WeakMap},Ee={email:function(e){return /^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z0-9-]{2,24}$/.test(e)?Promise.resolve():Promise.reject(\"Invalid email address\")},url:function(e){return /^https?:\\/\\/(www\\.)?[-a-zA-Z0-9@:%._+~#=]{2,256}\\.[a-z]{2,6}\\b([-a-zA-Z0-9@:%_+.~#?&//=]*)$/.test(e)?Promise.resolve():Promise.reject(\"Invalid URL\")}},Se=function(e,t,n){var o=M(),i=N();null!==t&&\"function\"==typeof t&&t(i),e?(L(i,k.show),L(o,k.fade),O(i,k.hide)):O(i,k.fade),T(i),o.style.overflowY=\"hidden\",ae&&!E(i,k.noanimation)?i.addEventListener(ae,function e(){i.removeEventListener(ae,e),o.style.overflowY=\"auto\"}):o.style.overflowY=\"auto\",L([document.documentElement,document.body,o],k.shown),$()&&(se(),de()),A.previousActiveElement=document.activeElement,null!==n&&\"function\"==typeof n&&setTimeout(function(){n(i)})},Pe=Object.freeze({hideLoading:t,disableLoading:t,getInput:function(e){var t=Ae.innerParams.get(this),n=Ae.domCache.get(this);return(e=e||t.input,!e)?null:\"select\"===e||\"textarea\"===e||\"file\"===e?_(n.content,k[e]):\"checkbox\"===e?n.popup.querySelector(\".\"+k.checkbox+\" input\"):\"radio\"===e?n.popup.querySelector(\".\"+k.radio+\" input:checked\")||n.popup.querySelector(\".\"+k.radio+\" input:first-child\"):\"range\"===e?n.popup.querySelector(\".\"+k.range+\" input\"):_(n.content,k.input)},enableButtons:function(){var e=Ae.domCache.get(this);e.confirmButton.disabled=!1,e.cancelButton.disabled=!1},disableButtons:function(){var e=Ae.domCache.get(this);e.confirmButton.disabled=!0,e.cancelButton.disabled=!0},enableConfirmButton:function(){var e=Ae.domCache.get(this);e.confirmButton.disabled=!1},disableConfirmButton:function(){var e=Ae.domCache.get(this);e.confirmButton.disabled=!0},enableInput:function(){var e=this.getInput();if(!e)return!1;if(\"radio\"===e.type)for(var t=e.parentNode.parentNode,n=t.querySelectorAll(\"input\"),o=0;o<n.length;o++)n[o].disabled=!1;else e.disabled=!1},disableInput:function(){var e=this.getInput();if(!e)return!1;if(e&&\"radio\"===e.type)for(var t=e.parentNode.parentNode,n=t.querySelectorAll(\"input\"),o=0;o<n.length;o++)n[o].disabled=!0;else e.disabled=!0},showValidationError:function(e){var t=Ae.domCache.get(this);t.validationError.innerHTML=e;var n=window.getComputedStyle(t.popup);t.validationError.style.marginLeft=\"-\"+n.getPropertyValue(\"padding-left\"),t.validationError.style.marginRight=\"-\"+n.getPropertyValue(\"padding-right\"),T(t.validationError);var o=this.getInput();o&&(o.setAttribute(\"aria-invalid\",!0),o.setAttribute(\"aria-describedBy\",k.validationerror),S(o),L(o,k.inputerror))},resetValidationError:function(){var e=Ae.domCache.get(this);e.validationError&&V(e.validationError);var t=this.getInput();t&&(t.removeAttribute(\"aria-invalid\"),t.removeAttribute(\"aria-describedBy\"),O(t,k.inputerror))},_main:function(e){var t=this;be(e);var o=s({},me,e);n(o),Object.freeze(o),Ae.innerParams.set(this,o);var r={popup:N(),container:M(),content:U(),actions:J(),confirmButton:Q(),cancelButton:Y(),closeButton:G(),validationError:F(),progressSteps:z()};Ae.domCache.set(this,r);var l=this.constructor;return new Promise(function(e,n){var s=function(t){l.closePopup(o.onClose,o.onAfterClose),o.useRejections?e(t):e({value:t})},d=function(t){l.closePopup(o.onClose,o.onAfterClose),o.useRejections?n(t):e({dismiss:t})},u=function(e){l.closePopup(o.onClose,o.onAfterClose),n(e)};o.timer&&(r.popup.timeout=setTimeout(function(){return d(\"timer\")},o.timer));var p=function(){var e=t.getInput();if(!e)return null;switch(o.input){case\"checkbox\":return e.checked?1:0;case\"radio\":return e.checked?e.value:null;case\"file\":return e.files.length?e.files[0]:null;default:return o.inputAutoTrim?e.value.trim():e.value;}};o.input&&setTimeout(function(){var e=t.getInput();e&&S(e)},0);for(var m=function(e){if(o.showLoaderOnConfirm&&l.showLoading(),o.preConfirm){t.resetValidationError();var n=Promise.resolve().then(function(){return o.preConfirm(e,o.extraParams)});o.expectRejections?n.then(function(t){return s(t||e)},function(e){t.hideLoading(),e&&t.showValidationError(e)}):n.then(function(n){D(r.validationError)||!1===n?t.hideLoading():s(n||e)},function(e){return u(e)})}else s(e)},g=function(n){var i=n||window.event,e=i.target||i.srcElement,a=r.confirmButton,s=r.cancelButton,c=a&&(a===e||a.contains(e)),f=s&&(s===e||s.contains(e));switch(i.type){case\"click\":if(!(c&&l.isVisible()))f&&l.isVisible()&&(t.disableButtons(),d(l.DismissReason.cancel));else if(t.disableButtons(),o.input){var g=p();if(o.inputValidator){t.disableInput();var h=Promise.resolve().then(function(){return o.inputValidator(g,o.extraParams)});o.expectRejections?h.then(function(){t.enableButtons(),t.enableInput(),m(g)},function(e){t.enableButtons(),t.enableInput(),e&&t.showValidationError(e)}):h.then(function(e){t.enableButtons(),t.enableInput(),e?t.showValidationError(e):m(g)},function(e){return u(e)})}else m(g)}else m(!0);break;default:}},b=r.popup.querySelectorAll(\"button\"),y=0;y<b.length;y++)b[y].onclick=g,b[y].onmouseover=g,b[y].onmouseout=g,b[y].onmousedown=g;if(r.closeButton.onclick=function(){d(l.DismissReason.close)},o.toast)r.popup.onclick=function(){o.showConfirmButton||o.showCancelButton||o.showCloseButton||o.input||(l.closePopup(o.onClose,o.onAfterClose),d(l.DismissReason.close))};else{var i=!1;r.popup.onmousedown=function(){r.container.onmouseup=function(t){r.container.onmouseup=void 0,t.target===r.container&&(i=!0)}},r.container.onmousedown=function(){r.popup.onmouseup=function(t){r.popup.onmouseup=void 0,(t.target===r.popup||r.popup.contains(t.target))&&(i=!0)}},r.container.onclick=function(t){return i?void(i=!1):void(t.target!==r.container||v(o.allowOutsideClick)&&d(l.DismissReason.backdrop))}}o.reverseButtons?r.confirmButton.parentNode.insertBefore(r.cancelButton,r.confirmButton):r.confirmButton.parentNode.insertBefore(r.confirmButton,r.cancelButton);var C=function(e,t){for(var n=Z(o.focusCancel),i=0;i<n.length;i++){e+=t,e===n.length?e=0:-1===e&&(e=n.length-1);var a=n[e];if(D(a))return a.focus()}};o.toast&&ce.windowOnkeydownOverridden&&(window.onkeydown=ce.previousWindowKeyDown,ce.windowOnkeydownOverridden=!1),o.toast||ce.windowOnkeydownOverridden||(ce.previousWindowKeyDown=window.onkeydown,ce.windowOnkeydownOverridden=!0,window.onkeydown=function(n){var i=n||window.event;if(\"Enter\"===i.key&&!i.isComposing){if(i.target===t.getInput()){if(-1!==[\"textarea\",\"file\"].indexOf(o.input))return;l.clickConfirm(),i.preventDefault()}}else if(\"Tab\"===i.key){for(var e=i.target||i.srcElement,a=Z(o.focusCancel),s=-1,u=0;u<a.length;u++)if(e===a[u]){s=u;break}i.shiftKey?C(s,-1):C(s,1),i.stopPropagation(),i.preventDefault()}else-1===[\"ArrowLeft\",\"ArrowRight\",\"ArrowUp\",\"ArrowDown\",\"Left\",\"Right\",\"Up\",\"Down\"].indexOf(i.key)?(\"Escape\"===i.key||\"Esc\"===i.key)&&!0===v(o.allowEscapeKey)&&d(l.DismissReason.esc):document.activeElement===r.confirmButton&&D(r.cancelButton)?r.cancelButton.focus():document.activeElement===r.cancelButton&&D(r.confirmButton)&&r.confirmButton.focus()}),t.enableButtons(),t.hideLoading(),t.resetValidationError(),o.input&&L(document.body,k[\"has-input\"]);for(var x=[\"input\",\"file\",\"range\",\"select\",\"radio\",\"checkbox\",\"textarea\"],B=void 0,A=0;A<x.length;A++){var E=k[x[A]],P=_(r.content,E);if(B=t.getInput(x[A]),B){for(var O in B.attributes)if(B.attributes.hasOwnProperty(O)){var q=B.attributes[O].name;\"type\"!==q&&\"value\"!==q&&B.removeAttribute(q)}for(var j in o.inputAttributes)B.setAttribute(j,o.inputAttributes[j])}P.className=E,o.inputClass&&L(P,o.inputClass),V(P)}var R;switch(o.input){case\"text\":case\"email\":case\"password\":case\"number\":case\"tel\":case\"url\":B=_(r.content,k.input),B.value=o.inputValue,B.placeholder=o.inputPlaceholder,B.type=o.input,T(B);break;case\"file\":B=_(r.content,k.file),B.placeholder=o.inputPlaceholder,B.type=o.input,T(B);break;case\"range\":var M=_(r.content,k.range),I=M.querySelector(\"input\"),N=M.querySelector(\"output\");I.value=o.inputValue,I.type=o.input,N.value=o.inputValue,T(M);break;case\"select\":var H=_(r.content,k.select);if(H.innerHTML=\"\",o.inputPlaceholder){var W=document.createElement(\"option\");W.innerHTML=o.inputPlaceholder,W.value=\"\",W.disabled=!0,W.selected=!0,H.appendChild(W)}R=function(e){e.forEach(function(e){var t=c(e,2),n=t[0],i=t[1],a=document.createElement(\"option\");a.value=n,a.innerHTML=i,o.inputValue.toString()===n.toString()&&(a.selected=!0),H.appendChild(a)}),T(H),H.focus()};break;case\"radio\":var U=_(r.content,k.radio);U.innerHTML=\"\",R=function(e){e.forEach(function(e){var t=c(e,2),n=t[0],i=t[1],a=document.createElement(\"input\"),r=document.createElement(\"label\");a.type=\"radio\",a.name=k.radio,a.value=n,o.inputValue.toString()===n.toString()&&(a.checked=!0),r.innerHTML=i,r.insertBefore(a,r.firstChild),U.appendChild(r)}),T(U);var t=U.querySelectorAll(\"input\");t.length&&t[0].focus()};break;case\"checkbox\":var K=_(r.content,k.checkbox),z=t.getInput(\"checkbox\");z.type=\"checkbox\",z.value=1,z.id=k.checkbox,z.checked=!!o.inputValue;var F=K.getElementsByTagName(\"span\");F.length&&K.removeChild(F[0]),F=document.createElement(\"span\"),F.innerHTML=o.inputPlaceholder,K.appendChild(F),T(K);break;case\"textarea\":var Q=_(r.content,k.textarea);Q.value=o.inputValue,Q.placeholder=o.inputPlaceholder,T(Q);break;case null:break;default:h(\"Unexpected type of input! Expected \\\"text\\\", \\\"email\\\", \\\"password\\\", \\\"number\\\", \\\"tel\\\", \\\"select\\\", \\\"radio\\\", \\\"checkbox\\\", \\\"textarea\\\", \\\"file\\\" or \\\"url\\\", got \\\"\"+o.input+\"\\\"\");}if(\"select\"===o.input||\"radio\"===o.input){var Y=function(e){return R(f(e))};w(o.inputOptions)?(l.showLoading(),o.inputOptions.then(function(e){t.hideLoading(),Y(e)})):\"object\"===a(o.inputOptions)?Y(o.inputOptions):h(\"Unexpected type of inputOptions! Expected object, Map or Promise, got \"+a(o.inputOptions))}else-1!==[\"text\",\"email\",\"number\",\"tel\",\"textarea\"].indexOf(o.input)&&w(o.inputValue)&&(l.showLoading(),V(B),o.inputValue.then(function(e){B.value=\"number\"===o.input?parseFloat(e)||0:e+\"\",T(B),t.hideLoading()}).catch(function(e){h(\"Error in inputValue promise: \"+e),B.value=\"\",T(B),t.hideLoading()}));Se(o.animation,o.onBeforeOpen,o.onOpen),o.toast||(v(o.allowEnterKey)?o.focusCancel&&D(r.cancelButton)?r.cancelButton.focus():o.focusConfirm&&D(r.confirmButton)?r.confirmButton.focus():C(-1,1):document.activeElement&&document.activeElement.blur()),r.container.scrollTop=0})}}),Le=void 0;o.prototype.then=function(e,t){var n=Ae.promise.get(this);return n.then(e,t)},o.prototype.catch=function(e){var t=Ae.promise.get(this);return t.catch(e)},o.prototype.finally=function(e){var t=Ae.promise.get(this);return t.finally(e)},s(o.prototype,Pe),s(o,ke),Object.keys(Pe).forEach(function(e){o[e]=function(){if(Le){var t;return(t=Le)[e].apply(t,arguments)}}}),o.DismissReason=C,o.noop=function(){},o.version=\"7.19.3\";var Oe=e(function(e){var t=function(t){function n(){return i(this,n),u(this,(n.__proto__||Object.getPrototypeOf(n)).apply(this,arguments))}return d(n,t),r(n,[{key:\"_main\",value:function(e){return l(n.prototype.__proto__||Object.getPrototypeOf(n.prototype),\"_main\",this).call(this,s({},ye,e))}}],[{key:\"setDefaults\",value:function(t){if(y(\"\\\"setDefaults\\\" & \\\"resetDefaults\\\" methods are deprecated in favor of \\\"mixin\\\" method and will be removed in the next major release. For new projects, use \\\"mixin\\\". For past projects already using \\\"setDefaults\\\", support will be provided through an additional package.\"),!t||\"object\"!==(\"undefined\"==typeof t?\"undefined\":a(t)))throw new TypeError(\"SweetAlert2: The argument for setDefaults() is required and has to be a object\");be(t),Object.keys(t).forEach(function(n){e.isValidParameter(n)&&(ye[n]=t[n])})}},{key:\"resetDefaults\",value:function(){y(\"\\\"setDefaults\\\" & \\\"resetDefaults\\\" methods are deprecated in favor of \\\"mixin\\\" method and will be removed in the next major release. For new projects, use \\\"mixin\\\". For past projects already using \\\"setDefaults\\\", support will be provided through an additional package.\"),ye={}}}]),n}(e);return\"undefined\"!=typeof window&&\"object\"===a(window._swalDefaults)&&t.setDefaults(window._swalDefaults),t}(o));return Oe.default=Oe,Oe}),\"undefined\"!=typeof window&&window.Sweetalert2&&(window.swal=window.sweetAlert=window.Swal=window.SweetAlert=window.Sweetalert2);\r\n\"undefined\"!=typeof document&&function(e,t){var n=e.createElement(\"style\");if(e.getElementsByTagName(\"head\")[0].appendChild(n),n.styleSheet)n.styleSheet.disabled||(n.styleSheet.cssText=t);else try{n.innerHTML=t}catch(e){n.innerText=t}}(document,\"@-webkit-keyframes swal2-show{0%{-webkit-transform:scale(.7);transform:scale(.7)}45%{-webkit-transform:scale(1.05);transform:scale(1.05)}80%{-webkit-transform:scale(.95);transform:scale(.95)}100%{-webkit-transform:scale(1);transform:scale(1)}}@keyframes swal2-show{0%{-webkit-transform:scale(.7);transform:scale(.7)}45%{-webkit-transform:scale(1.05);transform:scale(1.05)}80%{-webkit-transform:scale(.95);transform:scale(.95)}100%{-webkit-transform:scale(1);transform:scale(1)}}@-webkit-keyframes swal2-hide{0%{-webkit-transform:scale(1);transform:scale(1);opacity:1}100%{-webkit-transform:scale(.5);transform:scale(.5);opacity:0}}@keyframes swal2-hide{0%{-webkit-transform:scale(1);transform:scale(1);opacity:1}100%{-webkit-transform:scale(.5);transform:scale(.5);opacity:0}}@-webkit-keyframes swal2-animate-success-line-tip{0%{top:1.1875em;left:.0625em;width:0}54%{top:1.0625em;left:.125em;width:0}70%{top:2.1875em;left:-.375em;width:3.125em}84%{top:3em;left:1.3125em;width:1.0625em}100%{top:2.8125em;left:.875em;width:1.5625em}}@keyframes swal2-animate-success-line-tip{0%{top:1.1875em;left:.0625em;width:0}54%{top:1.0625em;left:.125em;width:0}70%{top:2.1875em;left:-.375em;width:3.125em}84%{top:3em;left:1.3125em;width:1.0625em}100%{top:2.8125em;left:.875em;width:1.5625em}}@-webkit-keyframes swal2-animate-success-line-long{0%{top:3.375em;right:2.875em;width:0}65%{top:3.375em;right:2.875em;width:0}84%{top:2.1875em;right:0;width:3.4375em}100%{top:2.375em;right:.5em;width:2.9375em}}@keyframes swal2-animate-success-line-long{0%{top:3.375em;right:2.875em;width:0}65%{top:3.375em;right:2.875em;width:0}84%{top:2.1875em;right:0;width:3.4375em}100%{top:2.375em;right:.5em;width:2.9375em}}@-webkit-keyframes swal2-rotate-success-circular-line{0%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}5%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}12%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}100%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}}@keyframes swal2-rotate-success-circular-line{0%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}5%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}12%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}100%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}}@-webkit-keyframes swal2-animate-error-x-mark{0%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}50%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}80%{margin-top:-.375em;-webkit-transform:scale(1.15);transform:scale(1.15)}100%{margin-top:0;-webkit-transform:scale(1);transform:scale(1);opacity:1}}@keyframes swal2-animate-error-x-mark{0%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}50%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}80%{margin-top:-.375em;-webkit-transform:scale(1.15);transform:scale(1.15)}100%{margin-top:0;-webkit-transform:scale(1);transform:scale(1);opacity:1}}@-webkit-keyframes swal2-animate-error-icon{0%{-webkit-transform:rotateX(100deg);transform:rotateX(100deg);opacity:0}100%{-webkit-transform:rotateX(0);transform:rotateX(0);opacity:1}}@keyframes swal2-animate-error-icon{0%{-webkit-transform:rotateX(100deg);transform:rotateX(100deg);opacity:0}100%{-webkit-transform:rotateX(0);transform:rotateX(0);opacity:1}}body.swal2-toast-shown.swal2-has-input>.swal2-container>.swal2-toast{flex-direction:column;align-items:stretch}body.swal2-toast-shown.swal2-has-input>.swal2-container>.swal2-toast .swal2-actions{flex:1;align-self:stretch;justify-content:flex-end;height:2.2em}body.swal2-toast-shown.swal2-has-input>.swal2-container>.swal2-toast .swal2-loading{justify-content:center}body.swal2-toast-shown.swal2-has-input>.swal2-container>.swal2-toast .swal2-input{height:2em;margin:.3125em auto;font-size:1em}body.swal2-toast-shown.swal2-has-input>.swal2-container>.swal2-toast .swal2-validationerror{font-size:1em}body.swal2-toast-shown>.swal2-container{position:fixed;background-color:transparent}body.swal2-toast-shown>.swal2-container.swal2-shown{background-color:transparent}body.swal2-toast-shown>.swal2-container.swal2-top{top:0;right:auto;bottom:auto;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-toast-shown>.swal2-container.swal2-top-end,body.swal2-toast-shown>.swal2-container.swal2-top-right{top:0;right:0;bottom:auto;left:auto}body.swal2-toast-shown>.swal2-container.swal2-top-left,body.swal2-toast-shown>.swal2-container.swal2-top-start{top:0;right:auto;bottom:auto;left:0}body.swal2-toast-shown>.swal2-container.swal2-center-left,body.swal2-toast-shown>.swal2-container.swal2-center-start{top:50%;right:auto;bottom:auto;left:0;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-toast-shown>.swal2-container.swal2-center{top:50%;right:auto;bottom:auto;left:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%)}body.swal2-toast-shown>.swal2-container.swal2-center-end,body.swal2-toast-shown>.swal2-container.swal2-center-right{top:50%;right:0;bottom:auto;left:auto;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-toast-shown>.swal2-container.swal2-bottom-left,body.swal2-toast-shown>.swal2-container.swal2-bottom-start{top:auto;right:auto;bottom:0;left:0}body.swal2-toast-shown>.swal2-container.swal2-bottom{top:auto;right:auto;bottom:0;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-toast-shown>.swal2-container.swal2-bottom-end,body.swal2-toast-shown>.swal2-container.swal2-bottom-right{top:auto;right:0;bottom:0;left:auto}.swal2-popup.swal2-toast{flex-direction:row;align-items:center;width:auto;padding:.625em;box-shadow:0 0 .625em #d9d9d9;overflow-y:hidden}.swal2-popup.swal2-toast .swal2-header{flex-direction:row}.swal2-popup.swal2-toast .swal2-title{justify-content:flex-start;margin:0 .6em;font-size:1em}.swal2-popup.swal2-toast .swal2-close{position:initial}.swal2-popup.swal2-toast .swal2-content{justify-content:flex-start;font-size:1em}.swal2-popup.swal2-toast .swal2-icon{width:2em;min-width:2em;height:2em;margin:0}.swal2-popup.swal2-toast .swal2-icon-text{font-size:2em;font-weight:700;line-height:1em}.swal2-popup.swal2-toast .swal2-icon.swal2-success .swal2-success-ring{width:2em;height:2em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line]{top:.875em;width:1.375em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left]{left:.3125em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right]{right:.3125em}.swal2-popup.swal2-toast .swal2-actions{height:auto;margin:0 .3125em}.swal2-popup.swal2-toast .swal2-styled{margin:0 .3125em;padding:.3125em .625em;font-size:1em}.swal2-popup.swal2-toast .swal2-styled:focus{box-shadow:0 0 0 .0625em #fff,0 0 0 .125em rgba(50,100,150,.4)}.swal2-popup.swal2-toast .swal2-success{border-color:#a5dc86}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line]{position:absolute;width:2em;height:2.8125em;-webkit-transform:rotate(45deg);transform:rotate(45deg);border-radius:50%}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=left]{top:-.25em;left:-.9375em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:2em 2em;transform-origin:2em 2em;border-radius:4em 0 0 4em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=right]{top:-.25em;left:.9375em;-webkit-transform-origin:0 2em;transform-origin:0 2em;border-radius:0 4em 4em 0}.swal2-popup.swal2-toast .swal2-success .swal2-success-ring{width:2em;height:2em}.swal2-popup.swal2-toast .swal2-success .swal2-success-fix{top:0;left:.4375em;width:.4375em;height:2.6875em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line]{height:.3125em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=tip]{top:1.125em;left:.1875em;width:.75em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=long]{top:.9375em;right:.1875em;width:1.375em}.swal2-popup.swal2-toast.swal2-show{-webkit-animation:showSweetToast .5s;animation:showSweetToast .5s}.swal2-popup.swal2-toast.swal2-hide{-webkit-animation:hideSweetToast .2s forwards;animation:hideSweetToast .2s forwards}.swal2-popup.swal2-toast .swal2-animate-success-icon .swal2-success-line-tip{-webkit-animation:animate-toast-success-tip .75s;animation:animate-toast-success-tip .75s}.swal2-popup.swal2-toast .swal2-animate-success-icon .swal2-success-line-long{-webkit-animation:animate-toast-success-long .75s;animation:animate-toast-success-long .75s}@-webkit-keyframes showSweetToast{0%{-webkit-transform:translateY(-.625em) rotateZ(2deg);transform:translateY(-.625em) rotateZ(2deg);opacity:0}33%{-webkit-transform:translateY(0) rotateZ(-2deg);transform:translateY(0) rotateZ(-2deg);opacity:.5}66%{-webkit-transform:translateY(.3125em) rotateZ(2deg);transform:translateY(.3125em) rotateZ(2deg);opacity:.7}100%{-webkit-transform:translateY(0) rotateZ(0);transform:translateY(0) rotateZ(0);opacity:1}}@keyframes showSweetToast{0%{-webkit-transform:translateY(-.625em) rotateZ(2deg);transform:translateY(-.625em) rotateZ(2deg);opacity:0}33%{-webkit-transform:translateY(0) rotateZ(-2deg);transform:translateY(0) rotateZ(-2deg);opacity:.5}66%{-webkit-transform:translateY(.3125em) rotateZ(2deg);transform:translateY(.3125em) rotateZ(2deg);opacity:.7}100%{-webkit-transform:translateY(0) rotateZ(0);transform:translateY(0) rotateZ(0);opacity:1}}@-webkit-keyframes hideSweetToast{0%{opacity:1}33%{opacity:.5}100%{-webkit-transform:rotateZ(1deg);transform:rotateZ(1deg);opacity:0}}@keyframes hideSweetToast{0%{opacity:1}33%{opacity:.5}100%{-webkit-transform:rotateZ(1deg);transform:rotateZ(1deg);opacity:0}}@-webkit-keyframes animate-toast-success-tip{0%{top:.5625em;left:.0625em;width:0}54%{top:.125em;left:.125em;width:0}70%{top:.625em;left:-.25em;width:1.625em}84%{top:1.0625em;left:.75em;width:.5em}100%{top:1.125em;left:.1875em;width:.75em}}@keyframes animate-toast-success-tip{0%{top:.5625em;left:.0625em;width:0}54%{top:.125em;left:.125em;width:0}70%{top:.625em;left:-.25em;width:1.625em}84%{top:1.0625em;left:.75em;width:.5em}100%{top:1.125em;left:.1875em;width:.75em}}@-webkit-keyframes animate-toast-success-long{0%{top:1.625em;right:1.375em;width:0}65%{top:1.25em;right:.9375em;width:0}84%{top:.9375em;right:0;width:1.125em}100%{top:.9375em;right:.1875em;width:1.375em}}@keyframes animate-toast-success-long{0%{top:1.625em;right:1.375em;width:0}65%{top:1.25em;right:.9375em;width:0}84%{top:.9375em;right:0;width:1.125em}100%{top:.9375em;right:.1875em;width:1.375em}}body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown),html.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown){height:auto;overflow-y:hidden}body.swal2-no-backdrop .swal2-shown{top:auto;right:auto;bottom:auto;left:auto;background-color:transparent}body.swal2-no-backdrop .swal2-shown>.swal2-modal{box-shadow:0 0 10px rgba(0,0,0,.4)}body.swal2-no-backdrop .swal2-shown.swal2-top{top:0;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-top-left,body.swal2-no-backdrop .swal2-shown.swal2-top-start{top:0;left:0}body.swal2-no-backdrop .swal2-shown.swal2-top-end,body.swal2-no-backdrop .swal2-shown.swal2-top-right{top:0;right:0}body.swal2-no-backdrop .swal2-shown.swal2-center{top:50%;left:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%)}body.swal2-no-backdrop .swal2-shown.swal2-center-left,body.swal2-no-backdrop .swal2-shown.swal2-center-start{top:50%;left:0;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-center-end,body.swal2-no-backdrop .swal2-shown.swal2-center-right{top:50%;right:0;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-bottom{bottom:0;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-bottom-left,body.swal2-no-backdrop .swal2-shown.swal2-bottom-start{bottom:0;left:0}body.swal2-no-backdrop .swal2-shown.swal2-bottom-end,body.swal2-no-backdrop .swal2-shown.swal2-bottom-right{right:0;bottom:0}.swal2-container{display:flex;position:fixed;top:0;right:0;bottom:0;left:0;flex-direction:row;align-items:center;justify-content:center;padding:10px;background-color:transparent;z-index:1060;overflow-x:hidden;-webkit-overflow-scrolling:touch}.swal2-container.swal2-top{align-items:flex-start}.swal2-container.swal2-top-left,.swal2-container.swal2-top-start{align-items:flex-start;justify-content:flex-start}.swal2-container.swal2-top-end,.swal2-container.swal2-top-right{align-items:flex-start;justify-content:flex-end}.swal2-container.swal2-center{align-items:center}.swal2-container.swal2-center-left,.swal2-container.swal2-center-start{align-items:center;justify-content:flex-start}.swal2-container.swal2-center-end,.swal2-container.swal2-center-right{align-items:center;justify-content:flex-end}.swal2-container.swal2-bottom{align-items:flex-end}.swal2-container.swal2-bottom-left,.swal2-container.swal2-bottom-start{align-items:flex-end;justify-content:flex-start}.swal2-container.swal2-bottom-end,.swal2-container.swal2-bottom-right{align-items:flex-end;justify-content:flex-end}.swal2-container.swal2-grow-fullscreen>.swal2-modal{display:flex!important;flex:1;align-self:stretch;justify-content:center}.swal2-container.swal2-grow-row>.swal2-modal{display:flex!important;flex:1;align-content:center;justify-content:center}.swal2-container.swal2-grow-column{flex:1;flex-direction:column}.swal2-container.swal2-grow-column.swal2-bottom,.swal2-container.swal2-grow-column.swal2-center,.swal2-container.swal2-grow-column.swal2-top{align-items:center}.swal2-container.swal2-grow-column.swal2-bottom-left,.swal2-container.swal2-grow-column.swal2-bottom-start,.swal2-container.swal2-grow-column.swal2-center-left,.swal2-container.swal2-grow-column.swal2-center-start,.swal2-container.swal2-grow-column.swal2-top-left,.swal2-container.swal2-grow-column.swal2-top-start{align-items:flex-start}.swal2-container.swal2-grow-column.swal2-bottom-end,.swal2-container.swal2-grow-column.swal2-bottom-right,.swal2-container.swal2-grow-column.swal2-center-end,.swal2-container.swal2-grow-column.swal2-center-right,.swal2-container.swal2-grow-column.swal2-top-end,.swal2-container.swal2-grow-column.swal2-top-right{align-items:flex-end}.swal2-container.swal2-grow-column>.swal2-modal{display:flex!important;flex:1;align-content:center;justify-content:center}.swal2-container:not(.swal2-top):not(.swal2-top-start):not(.swal2-top-end):not(.swal2-top-left):not(.swal2-top-right):not(.swal2-center-start):not(.swal2-center-end):not(.swal2-center-left):not(.swal2-center-right):not(.swal2-bottom):not(.swal2-bottom-start):not(.swal2-bottom-end):not(.swal2-bottom-left):not(.swal2-bottom-right)>.swal2-modal{margin:auto}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-container .swal2-modal{margin:0!important}}.swal2-container.swal2-fade{transition:background-color .1s}.swal2-container.swal2-shown{background-color:rgba(0,0,0,.4)}.swal2-popup{display:none;position:relative;flex-direction:column;justify-content:center;width:32em;max-width:100%;padding:1.25em;border-radius:.3125em;background:#fff;font-family:inherit;font-size:1rem;box-sizing:border-box}.swal2-popup:focus{outline:0}.swal2-popup.swal2-loading{overflow-y:hidden}.swal2-popup .swal2-header{display:flex;flex-direction:column;align-items:center}.swal2-popup .swal2-title{display:block;position:relative;max-width:100%;margin:0 0 .4em;padding:0;color:#595959;font-size:1.875em;font-weight:600;text-align:center;text-transform:none;word-wrap:break-word}.swal2-popup .swal2-actions{align-items:center;justify-content:center;margin:1.25em auto 0}.swal2-popup .swal2-actions:not(.swal2-loading) .swal2-styled[disabled]{opacity:.4}.swal2-popup .swal2-actions:not(.swal2-loading) .swal2-styled:hover{background-image:linear-gradient(rgba(0,0,0,.1),rgba(0,0,0,.1))}.swal2-popup .swal2-actions:not(.swal2-loading) .swal2-styled:active{background-image:linear-gradient(rgba(0,0,0,.2),rgba(0,0,0,.2))}.swal2-popup .swal2-actions.swal2-loading .swal2-styled.swal2-confirm{width:2.5em;height:2.5em;margin:.46875em;padding:0;border:.25em solid transparent;border-radius:100%;border-color:transparent;background-color:transparent!important;color:transparent;cursor:default;box-sizing:border-box;-webkit-animation:swal2-rotate-loading 1.5s linear 0s infinite normal;animation:swal2-rotate-loading 1.5s linear 0s infinite normal;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.swal2-popup .swal2-actions.swal2-loading .swal2-styled.swal2-cancel{margin-right:30px;margin-left:30px}.swal2-popup .swal2-actions.swal2-loading :not(.swal2-styled).swal2-confirm::after{display:inline-block;width:15px;height:15px;margin-left:5px;border:3px solid #999;border-radius:50%;border-right-color:transparent;box-shadow:1px 1px 1px #fff;content:\'\';-webkit-animation:swal2-rotate-loading 1.5s linear 0s infinite normal;animation:swal2-rotate-loading 1.5s linear 0s infinite normal}.swal2-popup .swal2-styled{margin:0 .3125em;padding:.625em 2em;font-weight:500;box-shadow:none}.swal2-popup .swal2-styled:not([disabled]){cursor:pointer}.swal2-popup .swal2-styled.swal2-confirm{border:0;border-radius:.25em;background:initial;background-color:#3085d6;color:#fff;font-size:1.0625em}.swal2-popup .swal2-styled.swal2-cancel{border:0;border-radius:.25em;background:initial;background-color:#aaa;color:#fff;font-size:1.0625em}.swal2-popup .swal2-styled:focus{outline:0;box-shadow:0 0 0 2px #fff,0 0 0 4px rgba(50,100,150,.4)}.swal2-popup .swal2-styled::-moz-focus-inner{border:0}.swal2-popup .swal2-footer{justify-content:center;margin:1.25em 0 0;padding-top:1em;border-top:1px solid #eee;color:#545454;font-size:1em}.swal2-popup .swal2-image{max-width:100%;margin:1.25em auto}.swal2-popup .swal2-close{position:absolute;top:0;right:0;justify-content:center;width:1.2em;height:1.2em;padding:0;transition:color .1s ease-out;border:none;border-radius:0;background:0 0;color:#ccc;font-family:serif;font-size:2.5em;line-height:1.2;cursor:pointer;overflow:hidden}.swal2-popup .swal2-close:hover{-webkit-transform:none;transform:none;color:#f27474}.swal2-popup>.swal2-checkbox,.swal2-popup>.swal2-file,.swal2-popup>.swal2-input,.swal2-popup>.swal2-radio,.swal2-popup>.swal2-select,.swal2-popup>.swal2-textarea{display:none}.swal2-popup .swal2-content{justify-content:center;margin:0;padding:0;color:#545454;font-size:1.125em;font-weight:300;line-height:normal;word-wrap:break-word}.swal2-popup #swal2-content{text-align:center}.swal2-popup .swal2-checkbox,.swal2-popup .swal2-file,.swal2-popup .swal2-input,.swal2-popup .swal2-radio,.swal2-popup .swal2-select,.swal2-popup .swal2-textarea{margin:1em auto}.swal2-popup .swal2-file,.swal2-popup .swal2-input,.swal2-popup .swal2-textarea{width:100%;transition:border-color .3s,box-shadow .3s;border:1px solid #d9d9d9;border-radius:.1875em;font-size:1.125em;box-shadow:inset 0 1px 1px rgba(0,0,0,.06);box-sizing:border-box}.swal2-popup .swal2-file.swal2-inputerror,.swal2-popup .swal2-input.swal2-inputerror,.swal2-popup .swal2-textarea.swal2-inputerror{border-color:#f27474!important;box-shadow:0 0 2px #f27474!important}.swal2-popup .swal2-file:focus,.swal2-popup .swal2-input:focus,.swal2-popup .swal2-textarea:focus{border:1px solid #b4dbed;outline:0;box-shadow:0 0 3px #c4e6f5}.swal2-popup .swal2-file::-webkit-input-placeholder,.swal2-popup .swal2-input::-webkit-input-placeholder,.swal2-popup .swal2-textarea::-webkit-input-placeholder{color:#ccc}.swal2-popup .swal2-file:-ms-input-placeholder,.swal2-popup .swal2-input:-ms-input-placeholder,.swal2-popup .swal2-textarea:-ms-input-placeholder{color:#ccc}.swal2-popup .swal2-file::-ms-input-placeholder,.swal2-popup .swal2-input::-ms-input-placeholder,.swal2-popup .swal2-textarea::-ms-input-placeholder{color:#ccc}.swal2-popup .swal2-file::placeholder,.swal2-popup .swal2-input::placeholder,.swal2-popup .swal2-textarea::placeholder{color:#ccc}.swal2-popup .swal2-range input{width:80%}.swal2-popup .swal2-range output{width:20%;font-weight:600;text-align:center}.swal2-popup .swal2-range input,.swal2-popup .swal2-range output{height:2.625em;margin:1em auto;padding:0;font-size:1.125em;line-height:2.625em}.swal2-popup .swal2-input{height:2.625em;padding:.75em}.swal2-popup .swal2-input[type=number]{max-width:10em}.swal2-popup .swal2-file{font-size:1.125em}.swal2-popup .swal2-textarea{height:6.75em;padding:.75em}.swal2-popup .swal2-select{min-width:50%;max-width:100%;padding:.375em .625em;color:#545454;font-size:1.125em}.swal2-popup .swal2-checkbox,.swal2-popup .swal2-radio{align-items:center;justify-content:center}.swal2-popup .swal2-checkbox label,.swal2-popup .swal2-radio label{margin:0 .6em;font-size:1.125em}.swal2-popup .swal2-checkbox input,.swal2-popup .swal2-radio input{margin:0 .4em}.swal2-popup .swal2-validationerror{display:none;align-items:center;justify-content:center;padding:.625em;background:#f0f0f0;color:#666;font-size:1em;font-weight:300;overflow:hidden}.swal2-popup .swal2-validationerror::before{display:inline-block;width:1.5em;height:1.5em;margin:0 .625em;border-radius:50%;background-color:#f27474;color:#fff;font-weight:600;line-height:1.5em;text-align:center;content:\'!\';zoom:normal}@supports (-ms-accelerator:true){.swal2-range input{width:100%!important}.swal2-range output{display:none}}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-range input{width:100%!important}.swal2-range output{display:none}}@-moz-document url-prefix(){.swal2-close:focus{outline:2px solid rgba(50,100,150,.4)}}.swal2-icon{position:relative;justify-content:center;width:5em;height:5em;margin:1.25em auto 1.875em;border:.25em solid transparent;border-radius:50%;line-height:5em;cursor:default;box-sizing:content-box;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;zoom:normal}.swal2-icon-text{font-size:3.75em}.swal2-icon.swal2-error{border-color:#f27474}.swal2-icon.swal2-error .swal2-x-mark{position:relative;flex-grow:1}.swal2-icon.swal2-error [class^=swal2-x-mark-line]{display:block;position:absolute;top:2.3125em;width:2.9375em;height:.3125em;border-radius:.125em;background-color:#f27474}.swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left]{left:1.0625em;-webkit-transform:rotate(45deg);transform:rotate(45deg)}.swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right]{right:1em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}.swal2-icon.swal2-warning{border-color:#facea8;color:#f8bb86}.swal2-icon.swal2-info{border-color:#9de0f6;color:#3fc3ee}.swal2-icon.swal2-question{border-color:#c9dae1;color:#87adbd}.swal2-icon.swal2-success{border-color:#a5dc86}.swal2-icon.swal2-success [class^=swal2-success-circular-line]{position:absolute;width:3.75em;height:7.5em;-webkit-transform:rotate(45deg);transform:rotate(45deg);border-radius:50%}.swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=left]{top:-.4375em;left:-2.0635em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:3.75em 3.75em;transform-origin:3.75em 3.75em;border-radius:7.5em 0 0 7.5em}.swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=right]{top:-.6875em;left:1.875em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:0 3.75em;transform-origin:0 3.75em;border-radius:0 7.5em 7.5em 0}.swal2-icon.swal2-success .swal2-success-ring{position:absolute;top:-.25em;left:-.25em;width:100%;height:100%;border:.25em solid rgba(165,220,134,.3);border-radius:50%;z-index:2;box-sizing:content-box}.swal2-icon.swal2-success .swal2-success-fix{position:absolute;top:.5em;left:1.625em;width:.4375em;height:5.625em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);z-index:1}.swal2-icon.swal2-success [class^=swal2-success-line]{display:block;position:absolute;height:.3125em;border-radius:.125em;background-color:#a5dc86;z-index:2}.swal2-icon.swal2-success [class^=swal2-success-line][class$=tip]{top:2.875em;left:.875em;width:1.5625em;-webkit-transform:rotate(45deg);transform:rotate(45deg)}.swal2-icon.swal2-success [class^=swal2-success-line][class$=long]{top:2.375em;right:.5em;width:2.9375em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}.swal2-progresssteps{align-items:center;margin:0 0 1.25em;padding:0;font-weight:600}.swal2-progresssteps li{display:inline-block;position:relative}.swal2-progresssteps .swal2-progresscircle{width:2em;height:2em;border-radius:2em;background:#3085d6;color:#fff;line-height:2em;text-align:center;z-index:20}.swal2-progresssteps .swal2-progresscircle:first-child{margin-left:0}.swal2-progresssteps .swal2-progresscircle:last-child{margin-right:0}.swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep{background:#3085d6}.swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep~.swal2-progresscircle{background:#add8e6}.swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep~.swal2-progressline{background:#add8e6}.swal2-progresssteps .swal2-progressline{width:2.5em;height:.4em;margin:0 -1px;background:#3085d6;z-index:10}[class^=swal2]{-webkit-tap-highlight-color:transparent}.swal2-show{-webkit-animation:swal2-show .3s;animation:swal2-show .3s}.swal2-show.swal2-noanimation{-webkit-animation:none;animation:none}.swal2-hide{-webkit-animation:swal2-hide .15s forwards;animation:swal2-hide .15s forwards}.swal2-hide.swal2-noanimation{-webkit-animation:none;animation:none}[dir=rtl] .swal2-close{right:auto;left:0}.swal2-animate-success-icon .swal2-success-line-tip{-webkit-animation:swal2-animate-success-line-tip .75s;animation:swal2-animate-success-line-tip .75s}.swal2-animate-success-icon .swal2-success-line-long{-webkit-animation:swal2-animate-success-line-long .75s;animation:swal2-animate-success-line-long .75s}.swal2-animate-success-icon .swal2-success-circular-line-right{-webkit-animation:swal2-rotate-success-circular-line 4.25s ease-in;animation:swal2-rotate-success-circular-line 4.25s ease-in}.swal2-animate-error-icon{-webkit-animation:swal2-animate-error-icon .5s;animation:swal2-animate-error-icon .5s}.swal2-animate-error-icon .swal2-x-mark{-webkit-animation:swal2-animate-error-x-mark .5s;animation:swal2-animate-error-x-mark .5s}@-webkit-keyframes swal2-rotate-loading{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes swal2-rotate-loading{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}\");', 1, '2019-05-02 22:05:44', '2019-05-06 08:18:41', NULL);
INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'rimon', 'morsalin@gmail.com', 'Sign Up To Newsletter', '(function(e,t){\"object\"==typeof exports&&\"undefined\"!=typeof module?module.exports=t():\"function\"==typeof define&&define.amd?define(t):e.Sweetalert2=t()})(this,function(){\"use strict\";function e(e){var t=function e(){for(var t=arguments.length,n=Array(t),o=0;o<t;o++)n[o]=arguments[o];return this instanceof e?void Object.getPrototypeOf(e).apply(this,n):new(Function.prototype.bind.apply(e,[null].concat(n)))};return t.prototype=s(Object.create(e.prototype),{constructor:t}),\"function\"==typeof Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e,t}function t(){var e=Ae.innerParams.get(this),t=Ae.domCache.get(this);e.showConfirmButton||(V(t.confirmButton),!e.showCancelButton&&V(t.actions)),O([t.popup,t.actions],k.loading),t.popup.removeAttribute(\"aria-busy\"),t.popup.removeAttribute(\"data-loading\"),t.confirmButton.disabled=!1,t.cancelButton.disabled=!1}function n(e){e.inputValidator||Object.keys(Ee).forEach(function(t){e.input===t&&(e.inputValidator=e.expectRejections?Ee[t]:Oe.adaptInputValidator(Ee[t]))}),e.target&&(\"string\"!=typeof e.target||document.querySelector(e.target))&&(\"string\"==typeof e.target||e.target.appendChild)||(g(\"Target parameter is not valid, defaulting to \\\"body\\\"\"),e.target=\"body\");var t,n=N(),o=\"string\"==typeof e.target?document.querySelector(e.target):e.target;t=n&&o&&n.parentNode!==o.parentNode?oe(e):n||oe(e),e.width&&(t.style.width=\"number\"==typeof e.width?e.width+\"px\":e.width),e.padding&&(t.style.padding=\"number\"==typeof e.padding?e.padding+\"px\":e.padding),e.background&&(t.style.background=e.background);for(var a=window.getComputedStyle(t).getPropertyValue(\"background-color\"),r=t.querySelectorAll(\"[class^=swal2-success-circular-line], .swal2-success-fix\"),s=0;s<r.length;s++)r[s].style.backgroundColor=a;var i=M(),l=W(),d=U().querySelector(\"#\"+k.content),u=J(),c=Q(),p=Y(),m=G(),f=X();if(e.titleText?l.innerText=e.titleText:e.title&&(l.innerHTML=e.title.split(\"\\n\").join(\"<br />\")),\"string\"==typeof e.backdrop?M().style.background=e.backdrop:!e.backdrop&&L([document.documentElement,document.body],k[\"no-backdrop\"]),e.html?ie(e.html,d):e.text?(d.textContent=e.text,T(d)):V(d),e.position in k?L(i,k[e.position]):(g(\"The \\\"position\\\" parameter is not valid, defaulting to \\\"center\\\"\"),L(i,k.center)),e.grow&&\"string\"==typeof e.grow){var b=\"grow-\"+e.grow;b in k&&L(i,k[b])}\"function\"==typeof e.animation&&(e.animation=e.animation.call()),e.showCloseButton?(m.setAttribute(\"aria-label\",e.closeButtonAriaLabel),T(m)):V(m),t.className=k.popup,e.toast?(L([document.documentElement,document.body],k[\"toast-shown\"]),L(t,k.toast)):L(t,k.modal),e.customClass&&L(t,e.customClass);var y=z(),v=parseInt(null===e.currentProgressStep?Oe.getQueueStep():e.currentProgressStep,10);e.progressSteps&&e.progressSteps.length?(T(y),q(y),v>=e.progressSteps.length&&g(\"Invalid currentProgressStep parameter, it should be less than progressSteps.length (currentProgressStep like JS arrays starts from 0)\"),e.progressSteps.forEach(function(t,n){var o=document.createElement(\"li\");if(L(o,k.progresscircle),o.innerHTML=t,n===v&&L(o,k.activeprogressstep),y.appendChild(o),n!==e.progressSteps.length-1){var i=document.createElement(\"li\");L(i,k.progressline),e.progressStepsDistance&&(i.style.width=e.progressStepsDistance),y.appendChild(i)}})):V(y);for(var w=H(),C=0;C<w.length;C++)V(w[C]);if(e.type){var x=!1;for(var A in B)if(e.type===A){x=!0;break}if(!x)return h(\"Unknown alert type: \"+e.type),!1;var E=t.querySelector(\".\"+k.icon+\".\"+B[e.type]);T(E),e.animation&&L(E,\"swal2-animate-\"+e.type+\"-icon\")}var S=K();if(e.imageUrl?(S.setAttribute(\"src\",e.imageUrl),S.setAttribute(\"alt\",e.imageAlt),T(S),e.imageWidth?S.setAttribute(\"width\",e.imageWidth):S.removeAttribute(\"width\"),e.imageHeight?S.setAttribute(\"height\",e.imageHeight):S.removeAttribute(\"height\"),S.className=k.image,e.imageClass&&L(S,e.imageClass)):V(S),e.showCancelButton?p.style.display=\"inline-block\":V(p),e.showConfirmButton?j(c,\"display\"):V(c),e.showConfirmButton||e.showCancelButton?T(u):V(u),c.innerHTML=e.confirmButtonText,p.innerHTML=e.cancelButtonText,c.setAttribute(\"aria-label\",e.confirmButtonAriaLabel),p.setAttribute(\"aria-label\",e.cancelButtonAriaLabel),c.className=k.confirm,L(c,e.confirmButtonClass),p.className=k.cancel,L(p,e.cancelButtonClass),e.buttonsStyling){L([c,p],k.styled),e.confirmButtonColor&&(c.style.backgroundColor=e.confirmButtonColor),e.cancelButtonColor&&(p.style.backgroundColor=e.cancelButtonColor);var P=window.getComputedStyle(c).getPropertyValue(\"background-color\");c.style.borderLeftColor=P,c.style.borderRightColor=P}else O([c,p],k.styled),c.style.backgroundColor=c.style.borderLeftColor=c.style.borderRightColor=\"\",p.style.backgroundColor=p.style.borderLeftColor=p.style.borderRightColor=\"\";ie(e.footer,f),!0===e.animation?O(t,k.noanimation):L(t,k.noanimation),e.showLoaderOnConfirm&&!e.preConfirm&&g(\"showLoaderOnConfirm is set to true, but preConfirm is not defined.\\nshowLoaderOnConfirm should be used together with preConfirm, see usage example:\\nhttps://sweetalert2.github.io/#ajax-request\")}function o(){if(\"undefined\"!=typeof window){\"undefined\"==typeof Promise&&h(\"This package requires a Promise library, please include a shim to enable it in this browser (See: https://github.com/sweetalert2/sweetalert2/wiki/Migration-from-SweetAlert-to-SweetAlert2#1-ie-support)\");for(var e=arguments.length,t=Array(e),n=0;n<e;n++)t[n]=arguments[n];if(\"undefined\"==typeof t[0])return h(\"SweetAlert2 expects at least 1 attribute!\"),!1;Le=this;var o=Object.freeze(this.constructor.argsToParams(t));Object.defineProperties(this,{params:{value:o,writable:!1,enumerable:!0}});var i=this._main(this.params);Ae.promise.set(this,i)}}var a=\"function\"==typeof Symbol&&\"symbol\"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&\"function\"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?\"symbol\":typeof e},i=function(e,t){if(!(e instanceof t))throw new TypeError(\"Cannot call a class as a function\")},r=function(){function e(e,t){for(var n,o=0;o<t.length;o++)n=t[o],n.enumerable=n.enumerable||!1,n.configurable=!0,\"value\"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}return function(t,n,o){return n&&e(t.prototype,n),o&&e(t,o),t}}(),s=Object.assign||function(e){for(var t,n=1;n<arguments.length;n++)for(var o in t=arguments[n],t)Object.prototype.hasOwnProperty.call(t,o)&&(e[o]=t[o]);return e},l=function e(t,n,o){null===t&&(t=Function.prototype);var i=Object.getOwnPropertyDescriptor(t,n);if(void 0===i){var a=Object.getPrototypeOf(t);return null===a?void 0:e(a,n,o)}if(\"value\"in i)return i.value;var r=i.get;return void 0===r?void 0:r.call(o)},d=function(e,t){if(\"function\"!=typeof t&&null!==t)throw new TypeError(\"Super expression must either be null or a function, not \"+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)},u=function(e,t){if(!e)throw new ReferenceError(\"this hasn\'t been initialised - super() hasn\'t been called\");return t&&(\"object\"==typeof t||\"function\"==typeof t)?t:e},c=function(){function e(e,t){var n=[],o=!0,i=!1,a=void 0;try{for(var r,s=e[Symbol.iterator]();!(o=(r=s.next()).done)&&(n.push(r.value),!(t&&n.length===t));o=!0);}catch(e){i=!0,a=e}finally{try{!o&&s[\"return\"]&&s[\"return\"]()}finally{if(i)throw a}}return n}return function(t,n){if(Array.isArray(t))return t;if(Symbol.iterator in Object(t))return e(t,n);throw new TypeError(\"Invalid attempt to destructure non-iterable instance\")}}(),p=\"SweetAlert2:\",m=function(e){for(var t=[],n=0;n<e.length;n++)-1===t.indexOf(e[n])&&t.push(e[n]);return t},f=function(e){var t=[];return\"undefined\"!=typeof Map&&e instanceof Map?e.forEach(function(e,n){t.push([n,e])}):Object.keys(e).forEach(function(n){t.push([n,e[n]])}),t},g=function(e){console.warn(p+\" \"+e)},h=function(e){console.error(p+\" \"+e)},b=[],y=function(e){-1!==b.indexOf(e)||(b.push(e),g(e))},v=function(e){return\"function\"==typeof e?e():e},w=function(e){return\"object\"===(\"undefined\"==typeof e?\"undefined\":a(e))&&\"function\"==typeof e.then},C=Object.freeze({cancel:\"cancel\",backdrop:\"overlay\",close:\"close\",esc:\"esc\",timer:\"timer\"}),x=function(e){var t={};for(var n in e)t[e[n]]=\"swal2-\"+e[n];return t},k=x([\"container\",\"shown\",\"iosfix\",\"popup\",\"modal\",\"no-backdrop\",\"toast\",\"toast-shown\",\"fade\",\"show\",\"hide\",\"noanimation\",\"close\",\"title\",\"header\",\"content\",\"actions\",\"confirm\",\"cancel\",\"footer\",\"icon\",\"icon-text\",\"image\",\"input\",\"has-input\",\"file\",\"range\",\"select\",\"radio\",\"checkbox\",\"textarea\",\"inputerror\",\"validationerror\",\"progresssteps\",\"activeprogressstep\",\"progresscircle\",\"progressline\",\"loading\",\"styled\",\"top\",\"top-start\",\"top-end\",\"top-left\",\"top-right\",\"center\",\"center-start\",\"center-end\",\"center-left\",\"center-right\",\"bottom\",\"bottom-start\",\"bottom-end\",\"bottom-left\",\"bottom-right\",\"grow-row\",\"grow-column\",\"grow-fullscreen\"]),B=x([\"success\",\"warning\",\"info\",\"question\",\"error\"]),A={previousActiveElement:null,previousBodyPadding:null},E=function(e,t){return!!e.classList&&e.classList.contains(t)},S=function(e){if(e.focus(),\"file\"!==e.type){var t=e.value;e.value=\"\",e.value=t}},P=function(e,t,n){e&&t&&(\"string\"==typeof t&&(t=t.split(/\\s+/).filter(Boolean)),t.forEach(function(t){e.forEach?e.forEach(function(e){n?e.classList.add(t):e.classList.remove(t)}):n?e.classList.add(t):e.classList.remove(t)}))},L=function(e,t){P(e,t,!0)},O=function(e,t){P(e,t,!1)},_=function(e,t){for(var n=0;n<e.childNodes.length;n++)if(E(e.childNodes[n],t))return e.childNodes[n]},T=function(e){e.style.opacity=\"\",e.style.display=e.id===k.content?\"block\":\"flex\"},V=function(e){e.style.opacity=\"\",e.style.display=\"none\"},q=function(e){for(;e.firstChild;)e.removeChild(e.firstChild)},D=function(e){return e&&(e.offsetWidth||e.offsetHeight||e.getClientRects().length)},j=function(e,t){e.style.removeProperty?e.style.removeProperty(t):e.style.removeAttribute(t)},R=function(){if(A.previousActiveElement&&A.previousActiveElement.focus){var e=window.scrollX,t=window.scrollY;A.previousActiveElement.focus(),\"undefined\"!=typeof e&&\"undefined\"!=typeof t&&window.scrollTo(e,t)}},M=function(){return document.body.querySelector(\".\"+k.container)},I=function(e){var t=M();return t?t.querySelector(\".\"+e):null},N=function(){return I(k.popup)},H=function(){var e=N();return e.querySelectorAll(\".\"+k.icon)},W=function(){return I(k.title)},U=function(){return I(k.content)},K=function(){return I(k.image)},z=function(){return I(k.progresssteps)},F=function(){return I(k.validationerror)},Q=function(){return I(k.confirm)},Y=function(){return I(k.cancel)},J=function(){return I(k.actions)},X=function(){return I(k.footer)},G=function(){return I(k.close)},Z=function(){var e=Array.prototype.slice.call(N().querySelectorAll(\"[tabindex]:not([tabindex=\\\"-1\\\"]):not([tabindex=\\\"0\\\"])\")).sort(function(e,t){return(e=parseInt(e.getAttribute(\"tabindex\")),t=parseInt(t.getAttribute(\"tabindex\")),e>t)?1:e<t?-1:0}),t=Array.prototype.slice.call(N().querySelectorAll(\"a[href], area[href], input:not([disabled]), select:not([disabled]), textarea:not([disabled]), button:not([disabled]), iframe, object, embed, [tabindex=\\\"0\\\"], [contenteditable], audio[controls], video[controls]\"));return m(e.concat(t))},$=function(){return!document.body.classList.contains(k[\"toast-shown\"])},ee=function(){return document.body.classList.contains(k[\"toast-shown\"])},te=function(){return\"undefined\"==typeof window||\"undefined\"==typeof document},ne=(\"\\n <div aria-labelledby=\\\"\"+k.title+\"\\\" aria-describedby=\\\"\"+k.content+\"\\\" class=\\\"\"+k.popup+\"\\\" tabindex=\\\"-1\\\">\\n   <div class=\\\"\"+k.header+\"\\\">\\n     <ul class=\\\"\"+k.progresssteps+\"\\\"></ul>\\n     <div class=\\\"\"+k.icon+\" \"+B.error+\"\\\">\\n       <span class=\\\"swal2-x-mark\\\"><span class=\\\"swal2-x-mark-line-left\\\"></span><span class=\\\"swal2-x-mark-line-right\\\"></span></span>\\n     </div>\\n     <div class=\\\"\"+k.icon+\" \"+B.question+\"\\\">\\n       <span class=\\\"\"+k[\"icon-text\"]+\"\\\">?</span>\\n      </div>\\n     <div class=\\\"\"+k.icon+\" \"+B.warning+\"\\\">\\n       <span class=\\\"\"+k[\"icon-text\"]+\"\\\">!</span>\\n      </div>\\n     <div class=\\\"\"+k.icon+\" \"+B.info+\"\\\">\\n       <span class=\\\"\"+k[\"icon-text\"]+\"\\\">i</span>\\n      </div>\\n     <div class=\\\"\"+k.icon+\" \"+B.success+\"\\\">\\n       <div class=\\\"swal2-success-circular-line-left\\\"></div>\\n       <span class=\\\"swal2-success-line-tip\\\"></span> <span class=\\\"swal2-success-line-long\\\"></span>\\n       <div class=\\\"swal2-success-ring\\\"></div> <div class=\\\"swal2-success-fix\\\"></div>\\n       <div class=\\\"swal2-success-circular-line-right\\\"></div>\\n     </div>\\n     <img class=\\\"\"+k.image+\"\\\" />\\n     <h2 class=\\\"\"+k.title+\"\\\" id=\\\"\"+k.title+\"\\\"></h2>\\n     <button type=\\\"button\\\" class=\\\"\"+k.close+\"\\\">\\xD7</button>\\n   </div>\\n   <div class=\\\"\"+k.content+\"\\\">\\n     <div id=\\\"\"+k.content+\"\\\"></div>\\n     <input class=\\\"\"+k.input+\"\\\" />\\n     <input type=\\\"file\\\" class=\\\"\"+k.file+\"\\\" />\\n     <div class=\\\"\"+k.range+\"\\\">\\n       <input type=\\\"range\\\" />\\n       <output></output>\\n     </div>\\n     <select class=\\\"\"+k.select+\"\\\"></select>\\n     <div class=\\\"\"+k.radio+\"\\\"></div>\\n     <label for=\\\"\"+k.checkbox+\"\\\" class=\\\"\"+k.checkbox+\"\\\">\\n       <input type=\\\"checkbox\\\" />\\n     </label>\\n     <textarea class=\\\"\"+k.textarea+\"\\\"></textarea>\\n     <div class=\\\"\"+k.validationerror+\"\\\" id=\\\"\"+k.validationerror+\"\\\"></div>\\n   </div>\\n   <div class=\\\"\"+k.actions+\"\\\">\\n     <button type=\\\"button\\\" class=\\\"\"+k.confirm+\"\\\">OK</button>\\n     <button type=\\\"button\\\" class=\\\"\"+k.cancel+\"\\\">Cancel</button>\\n   </div>\\n   <div class=\\\"\"+k.footer+\"\\\">\\n   </div>\\n </div>\\n\").replace(/(^|\\n)\\s*/g,\"\"),oe=function(e){var t=M();if(t&&(t.parentNode.removeChild(t),O([document.documentElement,document.body],[k[\"no-backdrop\"],k[\"has-input\"],k[\"toast-shown\"]])),te())return void h(\"SweetAlert2 requires document to initialize\");var n=document.createElement(\"div\");n.className=k.container,n.innerHTML=ne;var o=\"string\"==typeof e.target?document.querySelector(e.target):e.target;o.appendChild(n);var i=N(),a=U(),r=_(a,k.input),s=_(a,k.file),l=a.querySelector(\".\"+k.range+\" input\"),d=a.querySelector(\".\"+k.range+\" output\"),u=_(a,k.select),c=a.querySelector(\".\"+k.checkbox+\" input\"),p=_(a,k.textarea);i.setAttribute(\"role\",e.toast?\"alert\":\"dialog\"),i.setAttribute(\"aria-live\",e.toast?\"polite\":\"assertive\"),e.toast||i.setAttribute(\"aria-modal\",\"true\");var m=function(){Oe.isVisible()&&Oe.resetValidationError()};return r.oninput=m,s.onchange=m,u.onchange=m,c.onchange=m,p.oninput=m,l.oninput=function(){m(),d.value=l.value},l.onchange=function(){m(),l.nextSibling.value=l.value},i},ie=function(e,t){if(!e)return V(t);if(\"object\"===(\"undefined\"==typeof e?\"undefined\":a(e))){if(t.innerHTML=\"\",0 in e)for(var n=0;n in e;n++)t.appendChild(e[n].cloneNode(!0));else t.appendChild(e.cloneNode(!0));}else if(e)t.innerHTML=e;else;T(t)},ae=function(){if(te())return!1;var e=document.createElement(\"div\"),t={WebkitAnimation:\"webkitAnimationEnd\",OAnimation:\"oAnimationEnd oanimationend\",animation:\"animationend\"};for(var n in t)if(t.hasOwnProperty(n)&&\"undefined\"!=typeof e.style[n])return t[n];return!1}(),re=function(){var e=\"ontouchstart\"in window||navigator.msMaxTouchPoints;if(e)return 0;var t=document.createElement(\"div\");t.style.width=\"50px\",t.style.height=\"50px\",t.style.overflow=\"scroll\",document.body.appendChild(t);var n=t.offsetWidth-t.clientWidth;return document.body.removeChild(t),n},se=function(){null!==A.previousBodyPadding||document.body.scrollHeight>window.innerHeight&&(A.previousBodyPadding=document.body.style.paddingRight,document.body.style.paddingRight=re()+\"px\")},le=function(){null!==A.previousBodyPadding&&(document.body.style.paddingRight=A.previousBodyPadding,A.previousBodyPadding=null)},de=function(){var e=/iPad|iPhone|iPod/.test(navigator.userAgent)&&!window.MSStream;if(e&&!E(document.body,k.iosfix)){var t=document.body.scrollTop;document.body.style.top=-1*t+\"px\",L(document.body,k.iosfix)}},ue=function(){if(E(document.body,k.iosfix)){var e=parseInt(document.body.style.top,10);O(document.body,k.iosfix),document.body.style.top=\"\",document.body.scrollTop=-1*e}},ce={},pe=function(e,t){var n=M(),o=N();if(o){null!==e&&\"function\"==typeof e&&e(o),O(o,k.show),L(o,k.hide),clearTimeout(o.timeout),ee()||(R(),window.onkeydown=ce.previousWindowKeyDown,ce.windowOnkeydownOverridden=!1);var i=function(){n.parentNode&&n.parentNode.removeChild(n),O([document.documentElement,document.body],[k.shown,k[\"no-backdrop\"],k[\"has-input\"],k[\"toast-shown\"]]),$()&&(le(),ue()),null!==t&&\"function\"==typeof t&&setTimeout(function(){t()})};ae&&!E(o,k.noanimation)?o.addEventListener(ae,function e(){o.removeEventListener(ae,e),E(o,k.hide)&&i()}):i()}},me={title:\"\",titleText:\"\",text:\"\",html:\"\",footer:\"\",type:null,toast:!1,customClass:\"\",target:\"body\",backdrop:!0,animation:!0,allowOutsideClick:!0,allowEscapeKey:!0,allowEnterKey:!0,showConfirmButton:!0,showCancelButton:!1,preConfirm:null,confirmButtonText:\"OK\",confirmButtonAriaLabel:\"\",confirmButtonColor:null,confirmButtonClass:null,cancelButtonText:\"Cancel\",cancelButtonAriaLabel:\"\",cancelButtonColor:null,cancelButtonClass:null,buttonsStyling:!0,reverseButtons:!1,focusConfirm:!0,focusCancel:!1,showCloseButton:!1,closeButtonAriaLabel:\"Close this dialog\",showLoaderOnConfirm:!1,imageUrl:null,imageWidth:null,imageHeight:null,imageAlt:\"\",imageClass:null,timer:null,width:null,padding:null,background:null,input:null,inputPlaceholder:\"\",inputValue:\"\",inputOptions:{},inputAutoTrim:!0,inputClass:null,inputAttributes:{},inputValidator:null,grow:!1,position:\"center\",progressSteps:[],currentProgressStep:null,progressStepsDistance:null,onBeforeOpen:null,onAfterClose:null,onOpen:null,onClose:null,useRejections:!1,expectRejections:!1},fe=[\"useRejections\",\"expectRejections\"],ge=function(e){return me.hasOwnProperty(e)||\"extraParams\"===e},he=function(e){return-1!==fe.indexOf(e)},be=function(e){for(var t in e)ge(t)||g(\"Unknown parameter \\\"\"+t+\"\\\"\"),he(t)&&y(\"The parameter \\\"\"+t+\"\\\" is deprecated and will be removed in the next major release.\")},ye={},ve=[],we=function(e,t){return t&&t<ve.length?ve.splice(t,0,e):ve.push(e)},Ce=function(e){\"undefined\"!=typeof ve[e]&&ve.splice(e,1)},xe=function(){var e=N();e||Oe(\"\"),e=N();var t=J(),n=Q(),o=Y();T(t),T(n),L([e,t],k.loading),n.disabled=!0,o.disabled=!0,e.setAttribute(\"data-loading\",!0),e.setAttribute(\"aria-busy\",!0),e.focus()},ke=Object.freeze({isValidParameter:ge,isDeprecatedParameter:he,argsToParams:function(e){var t={};switch(a(e[0])){case\"string\":[\"title\",\"html\",\"type\"].forEach(function(n,o){void 0!==e[o]&&(t[n]=e[o])});break;case\"object\":s(t,e[0]);break;default:return h(\"Unexpected type of argument! Expected \\\"string\\\" or \\\"object\\\", got \"+a(e[0])),!1;}return t},adaptInputValidator:function(e){return function(t,n){return e.call(this,t,n).then(function(){},function(e){return e})}},close:pe,closePopup:pe,closeModal:pe,closeToast:pe,isVisible:function(){return!!N()},clickConfirm:function(){return Q().click()},clickCancel:function(){return Y().click()},getPopup:N,getTitle:W,getContent:U,getImage:K,getButtonsWrapper:function(){return y(\"swal.getButtonsWrapper() is deprecated and will be removed in the next major release, use swal.getActions() instead\"),I(k.actions)},getActions:J,getConfirmButton:Q,getCancelButton:Y,getFooter:X,isLoading:function(){return N().hasAttribute(\"data-loading\")},mixin:function(t){var n=this;return e(function(e){function n(){return i(this,n),u(this,(n.__proto__||Object.getPrototypeOf(n)).apply(this,arguments))}return d(n,e),r(n,[{key:\"_main\",value:function(e){return l(n.prototype.__proto__||Object.getPrototypeOf(n.prototype),\"_main\",this).call(this,s({},t,e))}}]),n}(n))},queue:function(e){var t=this;ve=e;var n=function(){ve=[],document.body.removeAttribute(\"data-swal2-queue-step\")},o=[];return new Promise(function(e){(function a(r,i){r<ve.length?(document.body.setAttribute(\"data-swal2-queue-step\",r),t(ve[r]).then(function(t){\"undefined\"==typeof t.value?(n(),e({dismiss:t.dismiss})):(o.push(t.value),a(r+1,i))})):(n(),e({value:o}))})(0)})},getQueueStep:function(){return document.body.getAttribute(\"data-swal2-queue-step\")},insertQueueStep:we,deleteQueueStep:Ce,showLoading:xe,enableLoading:xe,fire:function(){for(var e=this,t=arguments.length,n=Array(t),o=0;o<t;o++)n[o]=arguments[o];return new(Function.prototype.bind.apply(e,[null].concat(n)))}});if(\"undefined\"!=typeof window&&\"function\"!=typeof window.WeakMap){var Be=0;window.Symbol=function(e){return\"__\"+e+\"_\"+Math.floor(1e9*Math.random())+\"_\"+ ++Be+\"__\"},Symbol.iterator=Symbol(\"Symbol.iterator\"),window.WeakMap=function(e,t,n){function o(){t(this,e,{value:Symbol(\"WeakMap\")})}return o.prototype={delete:function(t){delete t[this[e]]},get:function(t){return t[this[e]]},has:function(t){return n.call(t,this[e])},set:function(n,o){t(n,this[e],{configurable:!0,value:o})}},o}(Symbol(\"WeakMap\"),Object.defineProperty,{}.hasOwnProperty)}var Ae={promise:new WeakMap,innerParams:new WeakMap,domCache:new WeakMap},Ee={email:function(e){return /^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z0-9-]{2,24}$/.test(e)?Promise.resolve():Promise.reject(\"Invalid email address\")},url:function(e){return /^https?:\\/\\/(www\\.)?[-a-zA-Z0-9@:%._+~#=]{2,256}\\.[a-z]{2,6}\\b([-a-zA-Z0-9@:%_+.~#?&//=]*)$/.test(e)?Promise.resolve():Promise.reject(\"Invalid URL\")}},Se=function(e,t,n){var o=M(),i=N();null!==t&&\"function\"==typeof t&&t(i),e?(L(i,k.show),L(o,k.fade),O(i,k.hide)):O(i,k.fade),T(i),o.style.overflowY=\"hidden\",ae&&!E(i,k.noanimation)?i.addEventListener(ae,function e(){i.removeEventListener(ae,e),o.style.overflowY=\"auto\"}):o.style.overflowY=\"auto\",L([document.documentElement,document.body,o],k.shown),$()&&(se(),de()),A.previousActiveElement=document.activeElement,null!==n&&\"function\"==typeof n&&setTimeout(function(){n(i)})},Pe=Object.freeze({hideLoading:t,disableLoading:t,getInput:function(e){var t=Ae.innerParams.get(this),n=Ae.domCache.get(this);return(e=e||t.input,!e)?null:\"select\"===e||\"textarea\"===e||\"file\"===e?_(n.content,k[e]):\"checkbox\"===e?n.popup.querySelector(\".\"+k.checkbox+\" input\"):\"radio\"===e?n.popup.querySelector(\".\"+k.radio+\" input:checked\")||n.popup.querySelector(\".\"+k.radio+\" input:first-child\"):\"range\"===e?n.popup.querySelector(\".\"+k.range+\" input\"):_(n.content,k.input)},enableButtons:function(){var e=Ae.domCache.get(this);e.confirmButton.disabled=!1,e.cancelButton.disabled=!1},disableButtons:function(){var e=Ae.domCache.get(this);e.confirmButton.disabled=!0,e.cancelButton.disabled=!0},enableConfirmButton:function(){var e=Ae.domCache.get(this);e.confirmButton.disabled=!1},disableConfirmButton:function(){var e=Ae.domCache.get(this);e.confirmButton.disabled=!0},enableInput:function(){var e=this.getInput();if(!e)return!1;if(\"radio\"===e.type)for(var t=e.parentNode.parentNode,n=t.querySelectorAll(\"input\"),o=0;o<n.length;o++)n[o].disabled=!1;else e.disabled=!1},disableInput:function(){var e=this.getInput();if(!e)return!1;if(e&&\"radio\"===e.type)for(var t=e.parentNode.parentNode,n=t.querySelectorAll(\"input\"),o=0;o<n.length;o++)n[o].disabled=!0;else e.disabled=!0},showValidationError:function(e){var t=Ae.domCache.get(this);t.validationError.innerHTML=e;var n=window.getComputedStyle(t.popup);t.validationError.style.marginLeft=\"-\"+n.getPropertyValue(\"padding-left\"),t.validationError.style.marginRight=\"-\"+n.getPropertyValue(\"padding-right\"),T(t.validationError);var o=this.getInput();o&&(o.setAttribute(\"aria-invalid\",!0),o.setAttribute(\"aria-describedBy\",k.validationerror),S(o),L(o,k.inputerror))},resetValidationError:function(){var e=Ae.domCache.get(this);e.validationError&&V(e.validationError);var t=this.getInput();t&&(t.removeAttribute(\"aria-invalid\"),t.removeAttribute(\"aria-describedBy\"),O(t,k.inputerror))},_main:function(e){var t=this;be(e);var o=s({},me,e);n(o),Object.freeze(o),Ae.innerParams.set(this,o);var r={popup:N(),container:M(),content:U(),actions:J(),confirmButton:Q(),cancelButton:Y(),closeButton:G(),validationError:F(),progressSteps:z()};Ae.domCache.set(this,r);var l=this.constructor;return new Promise(function(e,n){var s=function(t){l.closePopup(o.onClose,o.onAfterClose),o.useRejections?e(t):e({value:t})},d=function(t){l.closePopup(o.onClose,o.onAfterClose),o.useRejections?n(t):e({dismiss:t})},u=function(e){l.closePopup(o.onClose,o.onAfterClose),n(e)};o.timer&&(r.popup.timeout=setTimeout(function(){return d(\"timer\")},o.timer));var p=function(){var e=t.getInput();if(!e)return null;switch(o.input){case\"checkbox\":return e.checked?1:0;case\"radio\":return e.checked?e.value:null;case\"file\":return e.files.length?e.files[0]:null;default:return o.inputAutoTrim?e.value.trim():e.value;}};o.input&&setTimeout(function(){var e=t.getInput();e&&S(e)},0);for(var m=function(e){if(o.showLoaderOnConfirm&&l.showLoading(),o.preConfirm){t.resetValidationError();var n=Promise.resolve().then(function(){return o.preConfirm(e,o.extraParams)});o.expectRejections?n.then(function(t){return s(t||e)},function(e){t.hideLoading(),e&&t.showValidationError(e)}):n.then(function(n){D(r.validationError)||!1===n?t.hideLoading():s(n||e)},function(e){return u(e)})}else s(e)},g=function(n){var i=n||window.event,e=i.target||i.srcElement,a=r.confirmButton,s=r.cancelButton,c=a&&(a===e||a.contains(e)),f=s&&(s===e||s.contains(e));switch(i.type){case\"click\":if(!(c&&l.isVisible()))f&&l.isVisible()&&(t.disableButtons(),d(l.DismissReason.cancel));else if(t.disableButtons(),o.input){var g=p();if(o.inputValidator){t.disableInput();var h=Promise.resolve().then(function(){return o.inputValidator(g,o.extraParams)});o.expectRejections?h.then(function(){t.enableButtons(),t.enableInput(),m(g)},function(e){t.enableButtons(),t.enableInput(),e&&t.showValidationError(e)}):h.then(function(e){t.enableButtons(),t.enableInput(),e?t.showValidationError(e):m(g)},function(e){return u(e)})}else m(g)}else m(!0);break;default:}},b=r.popup.querySelectorAll(\"button\"),y=0;y<b.length;y++)b[y].onclick=g,b[y].onmouseover=g,b[y].onmouseout=g,b[y].onmousedown=g;if(r.closeButton.onclick=function(){d(l.DismissReason.close)},o.toast)r.popup.onclick=function(){o.showConfirmButton||o.showCancelButton||o.showCloseButton||o.input||(l.closePopup(o.onClose,o.onAfterClose),d(l.DismissReason.close))};else{var i=!1;r.popup.onmousedown=function(){r.container.onmouseup=function(t){r.container.onmouseup=void 0,t.target===r.container&&(i=!0)}},r.container.onmousedown=function(){r.popup.onmouseup=function(t){r.popup.onmouseup=void 0,(t.target===r.popup||r.popup.contains(t.target))&&(i=!0)}},r.container.onclick=function(t){return i?void(i=!1):void(t.target!==r.container||v(o.allowOutsideClick)&&d(l.DismissReason.backdrop))}}o.reverseButtons?r.confirmButton.parentNode.insertBefore(r.cancelButton,r.confirmButton):r.confirmButton.parentNode.insertBefore(r.confirmButton,r.cancelButton);var C=function(e,t){for(var n=Z(o.focusCancel),i=0;i<n.length;i++){e+=t,e===n.length?e=0:-1===e&&(e=n.length-1);var a=n[e];if(D(a))return a.focus()}};o.toast&&ce.windowOnkeydownOverridden&&(window.onkeydown=ce.previousWindowKeyDown,ce.windowOnkeydownOverridden=!1),o.toast||ce.windowOnkeydownOverridden||(ce.previousWindowKeyDown=window.onkeydown,ce.windowOnkeydownOverridden=!0,window.onkeydown=function(n){var i=n||window.event;if(\"Enter\"===i.key&&!i.isComposing){if(i.target===t.getInput()){if(-1!==[\"textarea\",\"file\"].indexOf(o.input))return;l.clickConfirm(),i.preventDefault()}}else if(\"Tab\"===i.key){for(var e=i.target||i.srcElement,a=Z(o.focusCancel),s=-1,u=0;u<a.length;u++)if(e===a[u]){s=u;break}i.shiftKey?C(s,-1):C(s,1),i.stopPropagation(),i.preventDefault()}else-1===[\"ArrowLeft\",\"ArrowRight\",\"ArrowUp\",\"ArrowDown\",\"Left\",\"Right\",\"Up\",\"Down\"].indexOf(i.key)?(\"Escape\"===i.key||\"Esc\"===i.key)&&!0===v(o.allowEscapeKey)&&d(l.DismissReason.esc):document.activeElement===r.confirmButton&&D(r.cancelButton)?r.cancelButton.focus():document.activeElement===r.cancelButton&&D(r.confirmButton)&&r.confirmButton.focus()}),t.enableButtons(),t.hideLoading(),t.resetValidationError(),o.input&&L(document.body,k[\"has-input\"]);for(var x=[\"input\",\"file\",\"range\",\"select\",\"radio\",\"checkbox\",\"textarea\"],B=void 0,A=0;A<x.length;A++){var E=k[x[A]],P=_(r.content,E);if(B=t.getInput(x[A]),B){for(var O in B.attributes)if(B.attributes.hasOwnProperty(O)){var q=B.attributes[O].name;\"type\"!==q&&\"value\"!==q&&B.removeAttribute(q)}for(var j in o.inputAttributes)B.setAttribute(j,o.inputAttributes[j])}P.className=E,o.inputClass&&L(P,o.inputClass),V(P)}var R;switch(o.input){case\"text\":case\"email\":case\"password\":case\"number\":case\"tel\":case\"url\":B=_(r.content,k.input),B.value=o.inputValue,B.placeholder=o.inputPlaceholder,B.type=o.input,T(B);break;case\"file\":B=_(r.content,k.file),B.placeholder=o.inputPlaceholder,B.type=o.input,T(B);break;case\"range\":var M=_(r.content,k.range),I=M.querySelector(\"input\"),N=M.querySelector(\"output\");I.value=o.inputValue,I.type=o.input,N.value=o.inputValue,T(M);break;case\"select\":var H=_(r.content,k.select);if(H.innerHTML=\"\",o.inputPlaceholder){var W=document.createElement(\"option\");W.innerHTML=o.inputPlaceholder,W.value=\"\",W.disabled=!0,W.selected=!0,H.appendChild(W)}R=function(e){e.forEach(function(e){var t=c(e,2),n=t[0],i=t[1],a=document.createElement(\"option\");a.value=n,a.innerHTML=i,o.inputValue.toString()===n.toString()&&(a.selected=!0),H.appendChild(a)}),T(H),H.focus()};break;case\"radio\":var U=_(r.content,k.radio);U.innerHTML=\"\",R=function(e){e.forEach(function(e){var t=c(e,2),n=t[0],i=t[1],a=document.createElement(\"input\"),r=document.createElement(\"label\");a.type=\"radio\",a.name=k.radio,a.value=n,o.inputValue.toString()===n.toString()&&(a.checked=!0),r.innerHTML=i,r.insertBefore(a,r.firstChild),U.appendChild(r)}),T(U);var t=U.querySelectorAll(\"input\");t.length&&t[0].focus()};break;case\"checkbox\":var K=_(r.content,k.checkbox),z=t.getInput(\"checkbox\");z.type=\"checkbox\",z.value=1,z.id=k.checkbox,z.checked=!!o.inputValue;var F=K.getElementsByTagName(\"span\");F.length&&K.removeChild(F[0]),F=document.createElement(\"span\"),F.innerHTML=o.inputPlaceholder,K.appendChild(F),T(K);break;case\"textarea\":var Q=_(r.content,k.textarea);Q.value=o.inputValue,Q.placeholder=o.inputPlaceholder,T(Q);break;case null:break;default:h(\"Unexpected type of input! Expected \\\"text\\\", \\\"email\\\", \\\"password\\\", \\\"number\\\", \\\"tel\\\", \\\"select\\\", \\\"radio\\\", \\\"checkbox\\\", \\\"textarea\\\", \\\"file\\\" or \\\"url\\\", got \\\"\"+o.input+\"\\\"\");}if(\"select\"===o.input||\"radio\"===o.input){var Y=function(e){return R(f(e))};w(o.inputOptions)?(l.showLoading(),o.inputOptions.then(function(e){t.hideLoading(),Y(e)})):\"object\"===a(o.inputOptions)?Y(o.inputOptions):h(\"Unexpected type of inputOptions! Expected object, Map or Promise, got \"+a(o.inputOptions))}else-1!==[\"text\",\"email\",\"number\",\"tel\",\"textarea\"].indexOf(o.input)&&w(o.inputValue)&&(l.showLoading(),V(B),o.inputValue.then(function(e){B.value=\"number\"===o.input?parseFloat(e)||0:e+\"\",T(B),t.hideLoading()}).catch(function(e){h(\"Error in inputValue promise: \"+e),B.value=\"\",T(B),t.hideLoading()}));Se(o.animation,o.onBeforeOpen,o.onOpen),o.toast||(v(o.allowEnterKey)?o.focusCancel&&D(r.cancelButton)?r.cancelButton.focus():o.focusConfirm&&D(r.confirmButton)?r.confirmButton.focus():C(-1,1):document.activeElement&&document.activeElement.blur()),r.container.scrollTop=0})}}),Le=void 0;o.prototype.then=function(e,t){var n=Ae.promise.get(this);return n.then(e,t)},o.prototype.catch=function(e){var t=Ae.promise.get(this);return t.catch(e)},o.prototype.finally=function(e){var t=Ae.promise.get(this);return t.finally(e)},s(o.prototype,Pe),s(o,ke),Object.keys(Pe).forEach(function(e){o[e]=function(){if(Le){var t;return(t=Le)[e].apply(t,arguments)}}}),o.DismissReason=C,o.noop=function(){},o.version=\"7.19.3\";var Oe=e(function(e){var t=function(t){function n(){return i(this,n),u(this,(n.__proto__||Object.getPrototypeOf(n)).apply(this,arguments))}return d(n,t),r(n,[{key:\"_main\",value:function(e){return l(n.prototype.__proto__||Object.getPrototypeOf(n.prototype),\"_main\",this).call(this,s({},ye,e))}}],[{key:\"setDefaults\",value:function(t){if(y(\"\\\"setDefaults\\\" & \\\"resetDefaults\\\" methods are deprecated in favor of \\\"mixin\\\" method and will be removed in the next major release. For new projects, use \\\"mixin\\\". For past projects already using \\\"setDefaults\\\", support will be provided through an additional package.\"),!t||\"object\"!==(\"undefined\"==typeof t?\"undefined\":a(t)))throw new TypeError(\"SweetAlert2: The argument for setDefaults() is required and has to be a object\");be(t),Object.keys(t).forEach(function(n){e.isValidParameter(n)&&(ye[n]=t[n])})}},{key:\"resetDefaults\",value:function(){y(\"\\\"setDefaults\\\" & \\\"resetDefaults\\\" methods are deprecated in favor of \\\"mixin\\\" method and will be removed in the next major release. For new projects, use \\\"mixin\\\". For past projects already using \\\"setDefaults\\\", support will be provided through an additional package.\"),ye={}}}]),n}(e);return\"undefined\"!=typeof window&&\"object\"===a(window._swalDefaults)&&t.setDefaults(window._swalDefaults),t}(o));return Oe.default=Oe,Oe}),\"undefined\"!=typeof window&&window.Sweetalert2&&(window.swal=window.sweetAlert=window.Swal=window.SweetAlert=window.Sweetalert2);\r\n\"undefined\"!=typeof document&&function(e,t){var n=e.createElement(\"style\");if(e.getElementsByTagName(\"head\")[0].appendChild(n),n.styleSheet)n.styleSheet.disabled||(n.styleSheet.cssText=t);else try{n.innerHTML=t}catch(e){n.innerText=t}}(document,\"@-webkit-keyframes swal2-show{0%{-webkit-transform:scale(.7);transform:scale(.7)}45%{-webkit-transform:scale(1.05);transform:scale(1.05)}80%{-webkit-transform:scale(.95);transform:scale(.95)}100%{-webkit-transform:scale(1);transform:scale(1)}}@keyframes swal2-show{0%{-webkit-transform:scale(.7);transform:scale(.7)}45%{-webkit-transform:scale(1.05);transform:scale(1.05)}80%{-webkit-transform:scale(.95);transform:scale(.95)}100%{-webkit-transform:scale(1);transform:scale(1)}}@-webkit-keyframes swal2-hide{0%{-webkit-transform:scale(1);transform:scale(1);opacity:1}100%{-webkit-transform:scale(.5);transform:scale(.5);opacity:0}}@keyframes swal2-hide{0%{-webkit-transform:scale(1);transform:scale(1);opacity:1}100%{-webkit-transform:scale(.5);transform:scale(.5);opacity:0}}@-webkit-keyframes swal2-animate-success-line-tip{0%{top:1.1875em;left:.0625em;width:0}54%{top:1.0625em;left:.125em;width:0}70%{top:2.1875em;left:-.375em;width:3.125em}84%{top:3em;left:1.3125em;width:1.0625em}100%{top:2.8125em;left:.875em;width:1.5625em}}@keyframes swal2-animate-success-line-tip{0%{top:1.1875em;left:.0625em;width:0}54%{top:1.0625em;left:.125em;width:0}70%{top:2.1875em;left:-.375em;width:3.125em}84%{top:3em;left:1.3125em;width:1.0625em}100%{top:2.8125em;left:.875em;width:1.5625em}}@-webkit-keyframes swal2-animate-success-line-long{0%{top:3.375em;right:2.875em;width:0}65%{top:3.375em;right:2.875em;width:0}84%{top:2.1875em;right:0;width:3.4375em}100%{top:2.375em;right:.5em;width:2.9375em}}@keyframes swal2-animate-success-line-long{0%{top:3.375em;right:2.875em;width:0}65%{top:3.375em;right:2.875em;width:0}84%{top:2.1875em;right:0;width:3.4375em}100%{top:2.375em;right:.5em;width:2.9375em}}@-webkit-keyframes swal2-rotate-success-circular-line{0%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}5%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}12%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}100%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}}@keyframes swal2-rotate-success-circular-line{0%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}5%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}12%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}100%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}}@-webkit-keyframes swal2-animate-error-x-mark{0%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}50%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}80%{margin-top:-.375em;-webkit-transform:scale(1.15);transform:scale(1.15)}100%{margin-top:0;-webkit-transform:scale(1);transform:scale(1);opacity:1}}@keyframes swal2-animate-error-x-mark{0%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}50%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}80%{margin-top:-.375em;-webkit-transform:scale(1.15);transform:scale(1.15)}100%{margin-top:0;-webkit-transform:scale(1);transform:scale(1);opacity:1}}@-webkit-keyframes swal2-animate-error-icon{0%{-webkit-transform:rotateX(100deg);transform:rotateX(100deg);opacity:0}100%{-webkit-transform:rotateX(0);transform:rotateX(0);opacity:1}}@keyframes swal2-animate-error-icon{0%{-webkit-transform:rotateX(100deg);transform:rotateX(100deg);opacity:0}100%{-webkit-transform:rotateX(0);transform:rotateX(0);opacity:1}}body.swal2-toast-shown.swal2-has-input>.swal2-container>.swal2-toast{flex-direction:column;align-items:stretch}body.swal2-toast-shown.swal2-has-input>.swal2-container>.swal2-toast .swal2-actions{flex:1;align-self:stretch;justify-content:flex-end;height:2.2em}body.swal2-toast-shown.swal2-has-input>.swal2-container>.swal2-toast .swal2-loading{justify-content:center}body.swal2-toast-shown.swal2-has-input>.swal2-container>.swal2-toast .swal2-input{height:2em;margin:.3125em auto;font-size:1em}body.swal2-toast-shown.swal2-has-input>.swal2-container>.swal2-toast .swal2-validationerror{font-size:1em}body.swal2-toast-shown>.swal2-container{position:fixed;background-color:transparent}body.swal2-toast-shown>.swal2-container.swal2-shown{background-color:transparent}body.swal2-toast-shown>.swal2-container.swal2-top{top:0;right:auto;bottom:auto;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-toast-shown>.swal2-container.swal2-top-end,body.swal2-toast-shown>.swal2-container.swal2-top-right{top:0;right:0;bottom:auto;left:auto}body.swal2-toast-shown>.swal2-container.swal2-top-left,body.swal2-toast-shown>.swal2-container.swal2-top-start{top:0;right:auto;bottom:auto;left:0}body.swal2-toast-shown>.swal2-container.swal2-center-left,body.swal2-toast-shown>.swal2-container.swal2-center-start{top:50%;right:auto;bottom:auto;left:0;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-toast-shown>.swal2-container.swal2-center{top:50%;right:auto;bottom:auto;left:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%)}body.swal2-toast-shown>.swal2-container.swal2-center-end,body.swal2-toast-shown>.swal2-container.swal2-center-right{top:50%;right:0;bottom:auto;left:auto;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-toast-shown>.swal2-container.swal2-bottom-left,body.swal2-toast-shown>.swal2-container.swal2-bottom-start{top:auto;right:auto;bottom:0;left:0}body.swal2-toast-shown>.swal2-container.swal2-bottom{top:auto;right:auto;bottom:0;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-toast-shown>.swal2-container.swal2-bottom-end,body.swal2-toast-shown>.swal2-container.swal2-bottom-right{top:auto;right:0;bottom:0;left:auto}.swal2-popup.swal2-toast{flex-direction:row;align-items:center;width:auto;padding:.625em;box-shadow:0 0 .625em #d9d9d9;overflow-y:hidden}.swal2-popup.swal2-toast .swal2-header{flex-direction:row}.swal2-popup.swal2-toast .swal2-title{justify-content:flex-start;margin:0 .6em;font-size:1em}.swal2-popup.swal2-toast .swal2-close{position:initial}.swal2-popup.swal2-toast .swal2-content{justify-content:flex-start;font-size:1em}.swal2-popup.swal2-toast .swal2-icon{width:2em;min-width:2em;height:2em;margin:0}.swal2-popup.swal2-toast .swal2-icon-text{font-size:2em;font-weight:700;line-height:1em}.swal2-popup.swal2-toast .swal2-icon.swal2-success .swal2-success-ring{width:2em;height:2em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line]{top:.875em;width:1.375em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left]{left:.3125em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right]{right:.3125em}.swal2-popup.swal2-toast .swal2-actions{height:auto;margin:0 .3125em}.swal2-popup.swal2-toast .swal2-styled{margin:0 .3125em;padding:.3125em .625em;font-size:1em}.swal2-popup.swal2-toast .swal2-styled:focus{box-shadow:0 0 0 .0625em #fff,0 0 0 .125em rgba(50,100,150,.4)}.swal2-popup.swal2-toast .swal2-success{border-color:#a5dc86}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line]{position:absolute;width:2em;height:2.8125em;-webkit-transform:rotate(45deg);transform:rotate(45deg);border-radius:50%}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=left]{top:-.25em;left:-.9375em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:2em 2em;transform-origin:2em 2em;border-radius:4em 0 0 4em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=right]{top:-.25em;left:.9375em;-webkit-transform-origin:0 2em;transform-origin:0 2em;border-radius:0 4em 4em 0}.swal2-popup.swal2-toast .swal2-success .swal2-success-ring{width:2em;height:2em}.swal2-popup.swal2-toast .swal2-success .swal2-success-fix{top:0;left:.4375em;width:.4375em;height:2.6875em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line]{height:.3125em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=tip]{top:1.125em;left:.1875em;width:.75em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=long]{top:.9375em;right:.1875em;width:1.375em}.swal2-popup.swal2-toast.swal2-show{-webkit-animation:showSweetToast .5s;animation:showSweetToast .5s}.swal2-popup.swal2-toast.swal2-hide{-webkit-animation:hideSweetToast .2s forwards;animation:hideSweetToast .2s forwards}.swal2-popup.swal2-toast .swal2-animate-success-icon .swal2-success-line-tip{-webkit-animation:animate-toast-success-tip .75s;animation:animate-toast-success-tip .75s}.swal2-popup.swal2-toast .swal2-animate-success-icon .swal2-success-line-long{-webkit-animation:animate-toast-success-long .75s;animation:animate-toast-success-long .75s}@-webkit-keyframes showSweetToast{0%{-webkit-transform:translateY(-.625em) rotateZ(2deg);transform:translateY(-.625em) rotateZ(2deg);opacity:0}33%{-webkit-transform:translateY(0) rotateZ(-2deg);transform:translateY(0) rotateZ(-2deg);opacity:.5}66%{-webkit-transform:translateY(.3125em) rotateZ(2deg);transform:translateY(.3125em) rotateZ(2deg);opacity:.7}100%{-webkit-transform:translateY(0) rotateZ(0);transform:translateY(0) rotateZ(0);opacity:1}}@keyframes showSweetToast{0%{-webkit-transform:translateY(-.625em) rotateZ(2deg);transform:translateY(-.625em) rotateZ(2deg);opacity:0}33%{-webkit-transform:translateY(0) rotateZ(-2deg);transform:translateY(0) rotateZ(-2deg);opacity:.5}66%{-webkit-transform:translateY(.3125em) rotateZ(2deg);transform:translateY(.3125em) rotateZ(2deg);opacity:.7}100%{-webkit-transform:translateY(0) rotateZ(0);transform:translateY(0) rotateZ(0);opacity:1}}@-webkit-keyframes hideSweetToast{0%{opacity:1}33%{opacity:.5}100%{-webkit-transform:rotateZ(1deg);transform:rotateZ(1deg);opacity:0}}@keyframes hideSweetToast{0%{opacity:1}33%{opacity:.5}100%{-webkit-transform:rotateZ(1deg);transform:rotateZ(1deg);opacity:0}}@-webkit-keyframes animate-toast-success-tip{0%{top:.5625em;left:.0625em;width:0}54%{top:.125em;left:.125em;width:0}70%{top:.625em;left:-.25em;width:1.625em}84%{top:1.0625em;left:.75em;width:.5em}100%{top:1.125em;left:.1875em;width:.75em}}@keyframes animate-toast-success-tip{0%{top:.5625em;left:.0625em;width:0}54%{top:.125em;left:.125em;width:0}70%{top:.625em;left:-.25em;width:1.625em}84%{top:1.0625em;left:.75em;width:.5em}100%{top:1.125em;left:.1875em;width:.75em}}@-webkit-keyframes animate-toast-success-long{0%{top:1.625em;right:1.375em;width:0}65%{top:1.25em;right:.9375em;width:0}84%{top:.9375em;right:0;width:1.125em}100%{top:.9375em;right:.1875em;width:1.375em}}@keyframes animate-toast-success-long{0%{top:1.625em;right:1.375em;width:0}65%{top:1.25em;right:.9375em;width:0}84%{top:.9375em;right:0;width:1.125em}100%{top:.9375em;right:.1875em;width:1.375em}}body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown),html.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown){height:auto;overflow-y:hidden}body.swal2-no-backdrop .swal2-shown{top:auto;right:auto;bottom:auto;left:auto;background-color:transparent}body.swal2-no-backdrop .swal2-shown>.swal2-modal{box-shadow:0 0 10px rgba(0,0,0,.4)}body.swal2-no-backdrop .swal2-shown.swal2-top{top:0;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-top-left,body.swal2-no-backdrop .swal2-shown.swal2-top-start{top:0;left:0}body.swal2-no-backdrop .swal2-shown.swal2-top-end,body.swal2-no-backdrop .swal2-shown.swal2-top-right{top:0;right:0}body.swal2-no-backdrop .swal2-shown.swal2-center{top:50%;left:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%)}body.swal2-no-backdrop .swal2-shown.swal2-center-left,body.swal2-no-backdrop .swal2-shown.swal2-center-start{top:50%;left:0;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-center-end,body.swal2-no-backdrop .swal2-shown.swal2-center-right{top:50%;right:0;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-bottom{bottom:0;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-bottom-left,body.swal2-no-backdrop .swal2-shown.swal2-bottom-start{bottom:0;left:0}body.swal2-no-backdrop .swal2-shown.swal2-bottom-end,body.swal2-no-backdrop .swal2-shown.swal2-bottom-right{right:0;bottom:0}.swal2-container{display:flex;position:fixed;top:0;right:0;bottom:0;left:0;flex-direction:row;align-items:center;justify-content:center;padding:10px;background-color:transparent;z-index:1060;overflow-x:hidden;-webkit-overflow-scrolling:touch}.swal2-container.swal2-top{align-items:flex-start}.swal2-container.swal2-top-left,.swal2-container.swal2-top-start{align-items:flex-start;justify-content:flex-start}.swal2-container.swal2-top-end,.swal2-container.swal2-top-right{align-items:flex-start;justify-content:flex-end}.swal2-container.swal2-center{align-items:center}.swal2-container.swal2-center-left,.swal2-container.swal2-center-start{align-items:center;justify-content:flex-start}.swal2-container.swal2-center-end,.swal2-container.swal2-center-right{align-items:center;justify-content:flex-end}.swal2-container.swal2-bottom{align-items:flex-end}.swal2-container.swal2-bottom-left,.swal2-container.swal2-bottom-start{align-items:flex-end;justify-content:flex-start}.swal2-container.swal2-bottom-end,.swal2-container.swal2-bottom-right{align-items:flex-end;justify-content:flex-end}.swal2-container.swal2-grow-fullscreen>.swal2-modal{display:flex!important;flex:1;align-self:stretch;justify-content:center}.swal2-container.swal2-grow-row>.swal2-modal{display:flex!important;flex:1;align-content:center;justify-content:center}.swal2-container.swal2-grow-column{flex:1;flex-direction:column}.swal2-container.swal2-grow-column.swal2-bottom,.swal2-container.swal2-grow-column.swal2-center,.swal2-container.swal2-grow-column.swal2-top{align-items:center}.swal2-container.swal2-grow-column.swal2-bottom-left,.swal2-container.swal2-grow-column.swal2-bottom-start,.swal2-container.swal2-grow-column.swal2-center-left,.swal2-container.swal2-grow-column.swal2-center-start,.swal2-container.swal2-grow-column.swal2-top-left,.swal2-container.swal2-grow-column.swal2-top-start{align-items:flex-start}.swal2-container.swal2-grow-column.swal2-bottom-end,.swal2-container.swal2-grow-column.swal2-bottom-right,.swal2-container.swal2-grow-column.swal2-center-end,.swal2-container.swal2-grow-column.swal2-center-right,.swal2-container.swal2-grow-column.swal2-top-end,.swal2-container.swal2-grow-column.swal2-top-right{align-items:flex-end}.swal2-container.swal2-grow-column>.swal2-modal{display:flex!important;flex:1;align-content:center;justify-content:center}.swal2-container:not(.swal2-top):not(.swal2-top-start):not(.swal2-top-end):not(.swal2-top-left):not(.swal2-top-right):not(.swal2-center-start):not(.swal2-center-end):not(.swal2-center-left):not(.swal2-center-right):not(.swal2-bottom):not(.swal2-bottom-start):not(.swal2-bottom-end):not(.swal2-bottom-left):not(.swal2-bottom-right)>.swal2-modal{margin:auto}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-container .swal2-modal{margin:0!important}}.swal2-container.swal2-fade{transition:background-color .1s}.swal2-container.swal2-shown{background-color:rgba(0,0,0,.4)}.swal2-popup{display:none;position:relative;flex-direction:column;justify-content:center;width:32em;max-width:100%;padding:1.25em;border-radius:.3125em;background:#fff;font-family:inherit;font-size:1rem;box-sizing:border-box}.swal2-popup:focus{outline:0}.swal2-popup.swal2-loading{overflow-y:hidden}.swal2-popup .swal2-header{display:flex;flex-direction:column;align-items:center}.swal2-popup .swal2-title{display:block;position:relative;max-width:100%;margin:0 0 .4em;padding:0;color:#595959;font-size:1.875em;font-weight:600;text-align:center;text-transform:none;word-wrap:break-word}.swal2-popup .swal2-actions{align-items:center;justify-content:center;margin:1.25em auto 0}.swal2-popup .swal2-actions:not(.swal2-loading) .swal2-styled[disabled]{opacity:.4}.swal2-popup .swal2-actions:not(.swal2-loading) .swal2-styled:hover{background-image:linear-gradient(rgba(0,0,0,.1),rgba(0,0,0,.1))}.swal2-popup .swal2-actions:not(.swal2-loading) .swal2-styled:active{background-image:linear-gradient(rgba(0,0,0,.2),rgba(0,0,0,.2))}.swal2-popup .swal2-actions.swal2-loading .swal2-styled.swal2-confirm{width:2.5em;height:2.5em;margin:.46875em;padding:0;border:.25em solid transparent;border-radius:100%;border-color:transparent;background-color:transparent!important;color:transparent;cursor:default;box-sizing:border-box;-webkit-animation:swal2-rotate-loading 1.5s linear 0s infinite normal;animation:swal2-rotate-loading 1.5s linear 0s infinite normal;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.swal2-popup .swal2-actions.swal2-loading .swal2-styled.swal2-cancel{margin-right:30px;margin-left:30px}.swal2-popup .swal2-actions.swal2-loading :not(.swal2-styled).swal2-confirm::after{display:inline-block;width:15px;height:15px;margin-left:5px;border:3px solid #999;border-radius:50%;border-right-color:transparent;box-shadow:1px 1px 1px #fff;content:\'\';-webkit-animation:swal2-rotate-loading 1.5s linear 0s infinite normal;animation:swal2-rotate-loading 1.5s linear 0s infinite normal}.swal2-popup .swal2-styled{margin:0 .3125em;padding:.625em 2em;font-weight:500;box-shadow:none}.swal2-popup .swal2-styled:not([disabled]){cursor:pointer}.swal2-popup .swal2-styled.swal2-confirm{border:0;border-radius:.25em;background:initial;background-color:#3085d6;color:#fff;font-size:1.0625em}.swal2-popup .swal2-styled.swal2-cancel{border:0;border-radius:.25em;background:initial;background-color:#aaa;color:#fff;font-size:1.0625em}.swal2-popup .swal2-styled:focus{outline:0;box-shadow:0 0 0 2px #fff,0 0 0 4px rgba(50,100,150,.4)}.swal2-popup .swal2-styled::-moz-focus-inner{border:0}.swal2-popup .swal2-footer{justify-content:center;margin:1.25em 0 0;padding-top:1em;border-top:1px solid #eee;color:#545454;font-size:1em}.swal2-popup .swal2-image{max-width:100%;margin:1.25em auto}.swal2-popup .swal2-close{position:absolute;top:0;right:0;justify-content:center;width:1.2em;height:1.2em;padding:0;transition:color .1s ease-out;border:none;border-radius:0;background:0 0;color:#ccc;font-family:serif;font-size:2.5em;line-height:1.2;cursor:pointer;overflow:hidden}.swal2-popup .swal2-close:hover{-webkit-transform:none;transform:none;color:#f27474}.swal2-popup>.swal2-checkbox,.swal2-popup>.swal2-file,.swal2-popup>.swal2-input,.swal2-popup>.swal2-radio,.swal2-popup>.swal2-select,.swal2-popup>.swal2-textarea{display:none}.swal2-popup .swal2-content{justify-content:center;margin:0;padding:0;color:#545454;font-size:1.125em;font-weight:300;line-height:normal;word-wrap:break-word}.swal2-popup #swal2-content{text-align:center}.swal2-popup .swal2-checkbox,.swal2-popup .swal2-file,.swal2-popup .swal2-input,.swal2-popup .swal2-radio,.swal2-popup .swal2-select,.swal2-popup .swal2-textarea{margin:1em auto}.swal2-popup .swal2-file,.swal2-popup .swal2-input,.swal2-popup .swal2-textarea{width:100%;transition:border-color .3s,box-shadow .3s;border:1px solid #d9d9d9;border-radius:.1875em;font-size:1.125em;box-shadow:inset 0 1px 1px rgba(0,0,0,.06);box-sizing:border-box}.swal2-popup .swal2-file.swal2-inputerror,.swal2-popup .swal2-input.swal2-inputerror,.swal2-popup .swal2-textarea.swal2-inputerror{border-color:#f27474!important;box-shadow:0 0 2px #f27474!important}.swal2-popup .swal2-file:focus,.swal2-popup .swal2-input:focus,.swal2-popup .swal2-textarea:focus{border:1px solid #b4dbed;outline:0;box-shadow:0 0 3px #c4e6f5}.swal2-popup .swal2-file::-webkit-input-placeholder,.swal2-popup .swal2-input::-webkit-input-placeholder,.swal2-popup .swal2-textarea::-webkit-input-placeholder{color:#ccc}.swal2-popup .swal2-file:-ms-input-placeholder,.swal2-popup .swal2-input:-ms-input-placeholder,.swal2-popup .swal2-textarea:-ms-input-placeholder{color:#ccc}.swal2-popup .swal2-file::-ms-input-placeholder,.swal2-popup .swal2-input::-ms-input-placeholder,.swal2-popup .swal2-textarea::-ms-input-placeholder{color:#ccc}.swal2-popup .swal2-file::placeholder,.swal2-popup .swal2-input::placeholder,.swal2-popup .swal2-textarea::placeholder{color:#ccc}.swal2-popup .swal2-range input{width:80%}.swal2-popup .swal2-range output{width:20%;font-weight:600;text-align:center}.swal2-popup .swal2-range input,.swal2-popup .swal2-range output{height:2.625em;margin:1em auto;padding:0;font-size:1.125em;line-height:2.625em}.swal2-popup .swal2-input{height:2.625em;padding:.75em}.swal2-popup .swal2-input[type=number]{max-width:10em}.swal2-popup .swal2-file{font-size:1.125em}.swal2-popup .swal2-textarea{height:6.75em;padding:.75em}.swal2-popup .swal2-select{min-width:50%;max-width:100%;padding:.375em .625em;color:#545454;font-size:1.125em}.swal2-popup .swal2-checkbox,.swal2-popup .swal2-radio{align-items:center;justify-content:center}.swal2-popup .swal2-checkbox label,.swal2-popup .swal2-radio label{margin:0 .6em;font-size:1.125em}.swal2-popup .swal2-checkbox input,.swal2-popup .swal2-radio input{margin:0 .4em}.swal2-popup .swal2-validationerror{display:none;align-items:center;justify-content:center;padding:.625em;background:#f0f0f0;color:#666;font-size:1em;font-weight:300;overflow:hidden}.swal2-popup .swal2-validationerror::before{display:inline-block;width:1.5em;height:1.5em;margin:0 .625em;border-radius:50%;background-color:#f27474;color:#fff;font-weight:600;line-height:1.5em;text-align:center;content:\'!\';zoom:normal}@supports (-ms-accelerator:true){.swal2-range input{width:100%!important}.swal2-range output{display:none}}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-range input{width:100%!important}.swal2-range output{display:none}}@-moz-document url-prefix(){.swal2-close:focus{outline:2px solid rgba(50,100,150,.4)}}.swal2-icon{position:relative;justify-content:center;width:5em;height:5em;margin:1.25em auto 1.875em;border:.25em solid transparent;border-radius:50%;line-height:5em;cursor:default;box-sizing:content-box;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;zoom:normal}.swal2-icon-text{font-size:3.75em}.swal2-icon.swal2-error{border-color:#f27474}.swal2-icon.swal2-error .swal2-x-mark{position:relative;flex-grow:1}.swal2-icon.swal2-error [class^=swal2-x-mark-line]{display:block;position:absolute;top:2.3125em;width:2.9375em;height:.3125em;border-radius:.125em;background-color:#f27474}.swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left]{left:1.0625em;-webkit-transform:rotate(45deg);transform:rotate(45deg)}.swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right]{right:1em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}.swal2-icon.swal2-warning{border-color:#facea8;color:#f8bb86}.swal2-icon.swal2-info{border-color:#9de0f6;color:#3fc3ee}.swal2-icon.swal2-question{border-color:#c9dae1;color:#87adbd}.swal2-icon.swal2-success{border-color:#a5dc86}.swal2-icon.swal2-success [class^=swal2-success-circular-line]{position:absolute;width:3.75em;height:7.5em;-webkit-transform:rotate(45deg);transform:rotate(45deg);border-radius:50%}.swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=left]{top:-.4375em;left:-2.0635em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:3.75em 3.75em;transform-origin:3.75em 3.75em;border-radius:7.5em 0 0 7.5em}.swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=right]{top:-.6875em;left:1.875em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:0 3.75em;transform-origin:0 3.75em;border-radius:0 7.5em 7.5em 0}.swal2-icon.swal2-success .swal2-success-ring{position:absolute;top:-.25em;left:-.25em;width:100%;height:100%;border:.25em solid rgba(165,220,134,.3);border-radius:50%;z-index:2;box-sizing:content-box}.swal2-icon.swal2-success .swal2-success-fix{position:absolute;top:.5em;left:1.625em;width:.4375em;height:5.625em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);z-index:1}.swal2-icon.swal2-success [class^=swal2-success-line]{display:block;position:absolute;height:.3125em;border-radius:.125em;background-color:#a5dc86;z-index:2}.swal2-icon.swal2-success [class^=swal2-success-line][class$=tip]{top:2.875em;left:.875em;width:1.5625em;-webkit-transform:rotate(45deg);transform:rotate(45deg)}.swal2-icon.swal2-success [class^=swal2-success-line][class$=long]{top:2.375em;right:.5em;width:2.9375em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}.swal2-progresssteps{align-items:center;margin:0 0 1.25em;padding:0;font-weight:600}.swal2-progresssteps li{display:inline-block;position:relative}.swal2-progresssteps .swal2-progresscircle{width:2em;height:2em;border-radius:2em;background:#3085d6;color:#fff;line-height:2em;text-align:center;z-index:20}.swal2-progresssteps .swal2-progresscircle:first-child{margin-left:0}.swal2-progresssteps .swal2-progresscircle:last-child{margin-right:0}.swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep{background:#3085d6}.swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep~.swal2-progresscircle{background:#add8e6}.swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep~.swal2-progressline{background:#add8e6}.swal2-progresssteps .swal2-progressline{width:2.5em;height:.4em;margin:0 -1px;background:#3085d6;z-index:10}[class^=swal2]{-webkit-tap-highlight-color:transparent}.swal2-show{-webkit-animation:swal2-show .3s;animation:swal2-show .3s}.swal2-show.swal2-noanimation{-webkit-animation:none;animation:none}.swal2-hide{-webkit-animation:swal2-hide .15s forwards;animation:swal2-hide .15s forwards}.swal2-hide.swal2-noanimation{-webkit-animation:none;animation:none}[dir=rtl] .swal2-close{right:auto;left:0}.swal2-animate-success-icon .swal2-success-line-tip{-webkit-animation:swal2-animate-success-line-tip .75s;animation:swal2-animate-success-line-tip .75s}.swal2-animate-success-icon .swal2-success-line-long{-webkit-animation:swal2-animate-success-line-long .75s;animation:swal2-animate-success-line-long .75s}.swal2-animate-success-icon .swal2-success-circular-line-right{-webkit-animation:swal2-rotate-success-circular-line 4.25s ease-in;animation:swal2-rotate-success-circular-line 4.25s ease-in}.swal2-animate-error-icon{-webkit-animation:swal2-animate-error-icon .5s;animation:swal2-animate-error-icon .5s}.swal2-animate-error-icon .swal2-x-mark{-webkit-animation:swal2-animate-error-x-mark .5s;animation:swal2-animate-error-x-mark .5s}@-webkit-keyframes swal2-rotate-loading{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes swal2-rotate-loading{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}\");', 1, '2019-05-02 22:06:07', '2019-05-06 08:18:37', NULL);
INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, 'wen', 'morsalin@gmail.com', 'Store information', '(function(e,t){\"object\"==typeof exports&&\"undefined\"!=typeof module?module.exports=t():\"function\"==typeof define&&define.amd?define(t):e.Sweetalert2=t()})(this,function(){\"use strict\";function e(e){var t=function e(){for(var t=arguments.length,n=Array(t),o=0;o<t;o++)n[o]=arguments[o];return this instanceof e?void Object.getPrototypeOf(e).apply(this,n):new(Function.prototype.bind.apply(e,[null].concat(n)))};return t.prototype=s(Object.create(e.prototype),{constructor:t}),\"function\"==typeof Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e,t}function t(){var e=Ae.innerParams.get(this),t=Ae.domCache.get(this);e.showConfirmButton||(V(t.confirmButton),!e.showCancelButton&&V(t.actions)),O([t.popup,t.actions],k.loading),t.popup.removeAttribute(\"aria-busy\"),t.popup.removeAttribute(\"data-loading\"),t.confirmButton.disabled=!1,t.cancelButton.disabled=!1}function n(e){e.inputValidator||Object.keys(Ee).forEach(function(t){e.input===t&&(e.inputValidator=e.expectRejections?Ee[t]:Oe.adaptInputValidator(Ee[t]))}),e.target&&(\"string\"!=typeof e.target||document.querySelector(e.target))&&(\"string\"==typeof e.target||e.target.appendChild)||(g(\"Target parameter is not valid, defaulting to \\\"body\\\"\"),e.target=\"body\");var t,n=N(),o=\"string\"==typeof e.target?document.querySelector(e.target):e.target;t=n&&o&&n.parentNode!==o.parentNode?oe(e):n||oe(e),e.width&&(t.style.width=\"number\"==typeof e.width?e.width+\"px\":e.width),e.padding&&(t.style.padding=\"number\"==typeof e.padding?e.padding+\"px\":e.padding),e.background&&(t.style.background=e.background);for(var a=window.getComputedStyle(t).getPropertyValue(\"background-color\"),r=t.querySelectorAll(\"[class^=swal2-success-circular-line], .swal2-success-fix\"),s=0;s<r.length;s++)r[s].style.backgroundColor=a;var i=M(),l=W(),d=U().querySelector(\"#\"+k.content),u=J(),c=Q(),p=Y(),m=G(),f=X();if(e.titleText?l.innerText=e.titleText:e.title&&(l.innerHTML=e.title.split(\"\\n\").join(\"<br />\")),\"string\"==typeof e.backdrop?M().style.background=e.backdrop:!e.backdrop&&L([document.documentElement,document.body],k[\"no-backdrop\"]),e.html?ie(e.html,d):e.text?(d.textContent=e.text,T(d)):V(d),e.position in k?L(i,k[e.position]):(g(\"The \\\"position\\\" parameter is not valid, defaulting to \\\"center\\\"\"),L(i,k.center)),e.grow&&\"string\"==typeof e.grow){var b=\"grow-\"+e.grow;b in k&&L(i,k[b])}\"function\"==typeof e.animation&&(e.animation=e.animation.call()),e.showCloseButton?(m.setAttribute(\"aria-label\",e.closeButtonAriaLabel),T(m)):V(m),t.className=k.popup,e.toast?(L([document.documentElement,document.body],k[\"toast-shown\"]),L(t,k.toast)):L(t,k.modal),e.customClass&&L(t,e.customClass);var y=z(),v=parseInt(null===e.currentProgressStep?Oe.getQueueStep():e.currentProgressStep,10);e.progressSteps&&e.progressSteps.length?(T(y),q(y),v>=e.progressSteps.length&&g(\"Invalid currentProgressStep parameter, it should be less than progressSteps.length (currentProgressStep like JS arrays starts from 0)\"),e.progressSteps.forEach(function(t,n){var o=document.createElement(\"li\");if(L(o,k.progresscircle),o.innerHTML=t,n===v&&L(o,k.activeprogressstep),y.appendChild(o),n!==e.progressSteps.length-1){var i=document.createElement(\"li\");L(i,k.progressline),e.progressStepsDistance&&(i.style.width=e.progressStepsDistance),y.appendChild(i)}})):V(y);for(var w=H(),C=0;C<w.length;C++)V(w[C]);if(e.type){var x=!1;for(var A in B)if(e.type===A){x=!0;break}if(!x)return h(\"Unknown alert type: \"+e.type),!1;var E=t.querySelector(\".\"+k.icon+\".\"+B[e.type]);T(E),e.animation&&L(E,\"swal2-animate-\"+e.type+\"-icon\")}var S=K();if(e.imageUrl?(S.setAttribute(\"src\",e.imageUrl),S.setAttribute(\"alt\",e.imageAlt),T(S),e.imageWidth?S.setAttribute(\"width\",e.imageWidth):S.removeAttribute(\"width\"),e.imageHeight?S.setAttribute(\"height\",e.imageHeight):S.removeAttribute(\"height\"),S.className=k.image,e.imageClass&&L(S,e.imageClass)):V(S),e.showCancelButton?p.style.display=\"inline-block\":V(p),e.showConfirmButton?j(c,\"display\"):V(c),e.showConfirmButton||e.showCancelButton?T(u):V(u),c.innerHTML=e.confirmButtonText,p.innerHTML=e.cancelButtonText,c.setAttribute(\"aria-label\",e.confirmButtonAriaLabel),p.setAttribute(\"aria-label\",e.cancelButtonAriaLabel),c.className=k.confirm,L(c,e.confirmButtonClass),p.className=k.cancel,L(p,e.cancelButtonClass),e.buttonsStyling){L([c,p],k.styled),e.confirmButtonColor&&(c.style.backgroundColor=e.confirmButtonColor),e.cancelButtonColor&&(p.style.backgroundColor=e.cancelButtonColor);var P=window.getComputedStyle(c).getPropertyValue(\"background-color\");c.style.borderLeftColor=P,c.style.borderRightColor=P}else O([c,p],k.styled),c.style.backgroundColor=c.style.borderLeftColor=c.style.borderRightColor=\"\",p.style.backgroundColor=p.style.borderLeftColor=p.style.borderRightColor=\"\";ie(e.footer,f),!0===e.animation?O(t,k.noanimation):L(t,k.noanimation),e.showLoaderOnConfirm&&!e.preConfirm&&g(\"showLoaderOnConfirm is set to true, but preConfirm is not defined.\\nshowLoaderOnConfirm should be used together with preConfirm, see usage example:\\nhttps://sweetalert2.github.io/#ajax-request\")}function o(){if(\"undefined\"!=typeof window){\"undefined\"==typeof Promise&&h(\"This package requires a Promise library, please include a shim to enable it in this browser (See: https://github.com/sweetalert2/sweetalert2/wiki/Migration-from-SweetAlert-to-SweetAlert2#1-ie-support)\");for(var e=arguments.length,t=Array(e),n=0;n<e;n++)t[n]=arguments[n];if(\"undefined\"==typeof t[0])return h(\"SweetAlert2 expects at least 1 attribute!\"),!1;Le=this;var o=Object.freeze(this.constructor.argsToParams(t));Object.defineProperties(this,{params:{value:o,writable:!1,enumerable:!0}});var i=this._main(this.params);Ae.promise.set(this,i)}}var a=\"function\"==typeof Symbol&&\"symbol\"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&\"function\"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?\"symbol\":typeof e},i=function(e,t){if(!(e instanceof t))throw new TypeError(\"Cannot call a class as a function\")},r=function(){function e(e,t){for(var n,o=0;o<t.length;o++)n=t[o],n.enumerable=n.enumerable||!1,n.configurable=!0,\"value\"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}return function(t,n,o){return n&&e(t.prototype,n),o&&e(t,o),t}}(),s=Object.assign||function(e){for(var t,n=1;n<arguments.length;n++)for(var o in t=arguments[n],t)Object.prototype.hasOwnProperty.call(t,o)&&(e[o]=t[o]);return e},l=function e(t,n,o){null===t&&(t=Function.prototype);var i=Object.getOwnPropertyDescriptor(t,n);if(void 0===i){var a=Object.getPrototypeOf(t);return null===a?void 0:e(a,n,o)}if(\"value\"in i)return i.value;var r=i.get;return void 0===r?void 0:r.call(o)},d=function(e,t){if(\"function\"!=typeof t&&null!==t)throw new TypeError(\"Super expression must either be null or a function, not \"+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)},u=function(e,t){if(!e)throw new ReferenceError(\"this hasn\'t been initialised - super() hasn\'t been called\");return t&&(\"object\"==typeof t||\"function\"==typeof t)?t:e},c=function(){function e(e,t){var n=[],o=!0,i=!1,a=void 0;try{for(var r,s=e[Symbol.iterator]();!(o=(r=s.next()).done)&&(n.push(r.value),!(t&&n.length===t));o=!0);}catch(e){i=!0,a=e}finally{try{!o&&s[\"return\"]&&s[\"return\"]()}finally{if(i)throw a}}return n}return function(t,n){if(Array.isArray(t))return t;if(Symbol.iterator in Object(t))return e(t,n);throw new TypeError(\"Invalid attempt to destructure non-iterable instance\")}}(),p=\"SweetAlert2:\",m=function(e){for(var t=[],n=0;n<e.length;n++)-1===t.indexOf(e[n])&&t.push(e[n]);return t},f=function(e){var t=[];return\"undefined\"!=typeof Map&&e instanceof Map?e.forEach(function(e,n){t.push([n,e])}):Object.keys(e).forEach(function(n){t.push([n,e[n]])}),t},g=function(e){console.warn(p+\" \"+e)},h=function(e){console.error(p+\" \"+e)},b=[],y=function(e){-1!==b.indexOf(e)||(b.push(e),g(e))},v=function(e){return\"function\"==typeof e?e():e},w=function(e){return\"object\"===(\"undefined\"==typeof e?\"undefined\":a(e))&&\"function\"==typeof e.then},C=Object.freeze({cancel:\"cancel\",backdrop:\"overlay\",close:\"close\",esc:\"esc\",timer:\"timer\"}),x=function(e){var t={};for(var n in e)t[e[n]]=\"swal2-\"+e[n];return t},k=x([\"container\",\"shown\",\"iosfix\",\"popup\",\"modal\",\"no-backdrop\",\"toast\",\"toast-shown\",\"fade\",\"show\",\"hide\",\"noanimation\",\"close\",\"title\",\"header\",\"content\",\"actions\",\"confirm\",\"cancel\",\"footer\",\"icon\",\"icon-text\",\"image\",\"input\",\"has-input\",\"file\",\"range\",\"select\",\"radio\",\"checkbox\",\"textarea\",\"inputerror\",\"validationerror\",\"progresssteps\",\"activeprogressstep\",\"progresscircle\",\"progressline\",\"loading\",\"styled\",\"top\",\"top-start\",\"top-end\",\"top-left\",\"top-right\",\"center\",\"center-start\",\"center-end\",\"center-left\",\"center-right\",\"bottom\",\"bottom-start\",\"bottom-end\",\"bottom-left\",\"bottom-right\",\"grow-row\",\"grow-column\",\"grow-fullscreen\"]),B=x([\"success\",\"warning\",\"info\",\"question\",\"error\"]),A={previousActiveElement:null,previousBodyPadding:null},E=function(e,t){return!!e.classList&&e.classList.contains(t)},S=function(e){if(e.focus(),\"file\"!==e.type){var t=e.value;e.value=\"\",e.value=t}},P=function(e,t,n){e&&t&&(\"string\"==typeof t&&(t=t.split(/\\s+/).filter(Boolean)),t.forEach(function(t){e.forEach?e.forEach(function(e){n?e.classList.add(t):e.classList.remove(t)}):n?e.classList.add(t):e.classList.remove(t)}))},L=function(e,t){P(e,t,!0)},O=function(e,t){P(e,t,!1)},_=function(e,t){for(var n=0;n<e.childNodes.length;n++)if(E(e.childNodes[n],t))return e.childNodes[n]},T=function(e){e.style.opacity=\"\",e.style.display=e.id===k.content?\"block\":\"flex\"},V=function(e){e.style.opacity=\"\",e.style.display=\"none\"},q=function(e){for(;e.firstChild;)e.removeChild(e.firstChild)},D=function(e){return e&&(e.offsetWidth||e.offsetHeight||e.getClientRects().length)},j=function(e,t){e.style.removeProperty?e.style.removeProperty(t):e.style.removeAttribute(t)},R=function(){if(A.previousActiveElement&&A.previousActiveElement.focus){var e=window.scrollX,t=window.scrollY;A.previousActiveElement.focus(),\"undefined\"!=typeof e&&\"undefined\"!=typeof t&&window.scrollTo(e,t)}},M=function(){return document.body.querySelector(\".\"+k.container)},I=function(e){var t=M();return t?t.querySelector(\".\"+e):null},N=function(){return I(k.popup)},H=function(){var e=N();return e.querySelectorAll(\".\"+k.icon)},W=function(){return I(k.title)},U=function(){return I(k.content)},K=function(){return I(k.image)},z=function(){return I(k.progresssteps)},F=function(){return I(k.validationerror)},Q=function(){return I(k.confirm)},Y=function(){return I(k.cancel)},J=function(){return I(k.actions)},X=function(){return I(k.footer)},G=function(){return I(k.close)},Z=function(){var e=Array.prototype.slice.call(N().querySelectorAll(\"[tabindex]:not([tabindex=\\\"-1\\\"]):not([tabindex=\\\"0\\\"])\")).sort(function(e,t){return(e=parseInt(e.getAttribute(\"tabindex\")),t=parseInt(t.getAttribute(\"tabindex\")),e>t)?1:e<t?-1:0}),t=Array.prototype.slice.call(N().querySelectorAll(\"a[href], area[href], input:not([disabled]), select:not([disabled]), textarea:not([disabled]), button:not([disabled]), iframe, object, embed, [tabindex=\\\"0\\\"], [contenteditable], audio[controls], video[controls]\"));return m(e.concat(t))},$=function(){return!document.body.classList.contains(k[\"toast-shown\"])},ee=function(){return document.body.classList.contains(k[\"toast-shown\"])},te=function(){return\"undefined\"==typeof window||\"undefined\"==typeof document},ne=(\"\\n <div aria-labelledby=\\\"\"+k.title+\"\\\" aria-describedby=\\\"\"+k.content+\"\\\" class=\\\"\"+k.popup+\"\\\" tabindex=\\\"-1\\\">\\n   <div class=\\\"\"+k.header+\"\\\">\\n     <ul class=\\\"\"+k.progresssteps+\"\\\"></ul>\\n     <div class=\\\"\"+k.icon+\" \"+B.error+\"\\\">\\n       <span class=\\\"swal2-x-mark\\\"><span class=\\\"swal2-x-mark-line-left\\\"></span><span class=\\\"swal2-x-mark-line-right\\\"></span></span>\\n     </div>\\n     <div class=\\\"\"+k.icon+\" \"+B.question+\"\\\">\\n       <span class=\\\"\"+k[\"icon-text\"]+\"\\\">?</span>\\n      </div>\\n     <div class=\\\"\"+k.icon+\" \"+B.warning+\"\\\">\\n       <span class=\\\"\"+k[\"icon-text\"]+\"\\\">!</span>\\n      </div>\\n     <div class=\\\"\"+k.icon+\" \"+B.info+\"\\\">\\n       <span class=\\\"\"+k[\"icon-text\"]+\"\\\">i</span>\\n      </div>\\n     <div class=\\\"\"+k.icon+\" \"+B.success+\"\\\">\\n       <div class=\\\"swal2-success-circular-line-left\\\"></div>\\n       <span class=\\\"swal2-success-line-tip\\\"></span> <span class=\\\"swal2-success-line-long\\\"></span>\\n       <div class=\\\"swal2-success-ring\\\"></div> <div class=\\\"swal2-success-fix\\\"></div>\\n       <div class=\\\"swal2-success-circular-line-right\\\"></div>\\n     </div>\\n     <img class=\\\"\"+k.image+\"\\\" />\\n     <h2 class=\\\"\"+k.title+\"\\\" id=\\\"\"+k.title+\"\\\"></h2>\\n     <button type=\\\"button\\\" class=\\\"\"+k.close+\"\\\">\\xD7</button>\\n   </div>\\n   <div class=\\\"\"+k.content+\"\\\">\\n     <div id=\\\"\"+k.content+\"\\\"></div>\\n     <input class=\\\"\"+k.input+\"\\\" />\\n     <input type=\\\"file\\\" class=\\\"\"+k.file+\"\\\" />\\n     <div class=\\\"\"+k.range+\"\\\">\\n       <input type=\\\"range\\\" />\\n       <output></output>\\n     </div>\\n     <select class=\\\"\"+k.select+\"\\\"></select>\\n     <div class=\\\"\"+k.radio+\"\\\"></div>\\n     <label for=\\\"\"+k.checkbox+\"\\\" class=\\\"\"+k.checkbox+\"\\\">\\n       <input type=\\\"checkbox\\\" />\\n     </label>\\n     <textarea class=\\\"\"+k.textarea+\"\\\"></textarea>\\n     <div class=\\\"\"+k.validationerror+\"\\\" id=\\\"\"+k.validationerror+\"\\\"></div>\\n   </div>\\n   <div class=\\\"\"+k.actions+\"\\\">\\n     <button type=\\\"button\\\" class=\\\"\"+k.confirm+\"\\\">OK</button>\\n     <button type=\\\"button\\\" class=\\\"\"+k.cancel+\"\\\">Cancel</button>\\n   </div>\\n   <div class=\\\"\"+k.footer+\"\\\">\\n   </div>\\n </div>\\n\").replace(/(^|\\n)\\s*/g,\"\"),oe=function(e){var t=M();if(t&&(t.parentNode.removeChild(t),O([document.documentElement,document.body],[k[\"no-backdrop\"],k[\"has-input\"],k[\"toast-shown\"]])),te())return void h(\"SweetAlert2 requires document to initialize\");var n=document.createElement(\"div\");n.className=k.container,n.innerHTML=ne;var o=\"string\"==typeof e.target?document.querySelector(e.target):e.target;o.appendChild(n);var i=N(),a=U(),r=_(a,k.input),s=_(a,k.file),l=a.querySelector(\".\"+k.range+\" input\"),d=a.querySelector(\".\"+k.range+\" output\"),u=_(a,k.select),c=a.querySelector(\".\"+k.checkbox+\" input\"),p=_(a,k.textarea);i.setAttribute(\"role\",e.toast?\"alert\":\"dialog\"),i.setAttribute(\"aria-live\",e.toast?\"polite\":\"assertive\"),e.toast||i.setAttribute(\"aria-modal\",\"true\");var m=function(){Oe.isVisible()&&Oe.resetValidationError()};return r.oninput=m,s.onchange=m,u.onchange=m,c.onchange=m,p.oninput=m,l.oninput=function(){m(),d.value=l.value},l.onchange=function(){m(),l.nextSibling.value=l.value},i},ie=function(e,t){if(!e)return V(t);if(\"object\"===(\"undefined\"==typeof e?\"undefined\":a(e))){if(t.innerHTML=\"\",0 in e)for(var n=0;n in e;n++)t.appendChild(e[n].cloneNode(!0));else t.appendChild(e.cloneNode(!0));}else if(e)t.innerHTML=e;else;T(t)},ae=function(){if(te())return!1;var e=document.createElement(\"div\"),t={WebkitAnimation:\"webkitAnimationEnd\",OAnimation:\"oAnimationEnd oanimationend\",animation:\"animationend\"};for(var n in t)if(t.hasOwnProperty(n)&&\"undefined\"!=typeof e.style[n])return t[n];return!1}(),re=function(){var e=\"ontouchstart\"in window||navigator.msMaxTouchPoints;if(e)return 0;var t=document.createElement(\"div\");t.style.width=\"50px\",t.style.height=\"50px\",t.style.overflow=\"scroll\",document.body.appendChild(t);var n=t.offsetWidth-t.clientWidth;return document.body.removeChild(t),n},se=function(){null!==A.previousBodyPadding||document.body.scrollHeight>window.innerHeight&&(A.previousBodyPadding=document.body.style.paddingRight,document.body.style.paddingRight=re()+\"px\")},le=function(){null!==A.previousBodyPadding&&(document.body.style.paddingRight=A.previousBodyPadding,A.previousBodyPadding=null)},de=function(){var e=/iPad|iPhone|iPod/.test(navigator.userAgent)&&!window.MSStream;if(e&&!E(document.body,k.iosfix)){var t=document.body.scrollTop;document.body.style.top=-1*t+\"px\",L(document.body,k.iosfix)}},ue=function(){if(E(document.body,k.iosfix)){var e=parseInt(document.body.style.top,10);O(document.body,k.iosfix),document.body.style.top=\"\",document.body.scrollTop=-1*e}},ce={},pe=function(e,t){var n=M(),o=N();if(o){null!==e&&\"function\"==typeof e&&e(o),O(o,k.show),L(o,k.hide),clearTimeout(o.timeout),ee()||(R(),window.onkeydown=ce.previousWindowKeyDown,ce.windowOnkeydownOverridden=!1);var i=function(){n.parentNode&&n.parentNode.removeChild(n),O([document.documentElement,document.body],[k.shown,k[\"no-backdrop\"],k[\"has-input\"],k[\"toast-shown\"]]),$()&&(le(),ue()),null!==t&&\"function\"==typeof t&&setTimeout(function(){t()})};ae&&!E(o,k.noanimation)?o.addEventListener(ae,function e(){o.removeEventListener(ae,e),E(o,k.hide)&&i()}):i()}},me={title:\"\",titleText:\"\",text:\"\",html:\"\",footer:\"\",type:null,toast:!1,customClass:\"\",target:\"body\",backdrop:!0,animation:!0,allowOutsideClick:!0,allowEscapeKey:!0,allowEnterKey:!0,showConfirmButton:!0,showCancelButton:!1,preConfirm:null,confirmButtonText:\"OK\",confirmButtonAriaLabel:\"\",confirmButtonColor:null,confirmButtonClass:null,cancelButtonText:\"Cancel\",cancelButtonAriaLabel:\"\",cancelButtonColor:null,cancelButtonClass:null,buttonsStyling:!0,reverseButtons:!1,focusConfirm:!0,focusCancel:!1,showCloseButton:!1,closeButtonAriaLabel:\"Close this dialog\",showLoaderOnConfirm:!1,imageUrl:null,imageWidth:null,imageHeight:null,imageAlt:\"\",imageClass:null,timer:null,width:null,padding:null,background:null,input:null,inputPlaceholder:\"\",inputValue:\"\",inputOptions:{},inputAutoTrim:!0,inputClass:null,inputAttributes:{},inputValidator:null,grow:!1,position:\"center\",progressSteps:[],currentProgressStep:null,progressStepsDistance:null,onBeforeOpen:null,onAfterClose:null,onOpen:null,onClose:null,useRejections:!1,expectRejections:!1},fe=[\"useRejections\",\"expectRejections\"],ge=function(e){return me.hasOwnProperty(e)||\"extraParams\"===e},he=function(e){return-1!==fe.indexOf(e)},be=function(e){for(var t in e)ge(t)||g(\"Unknown parameter \\\"\"+t+\"\\\"\"),he(t)&&y(\"The parameter \\\"\"+t+\"\\\" is deprecated and will be removed in the next major release.\")},ye={},ve=[],we=function(e,t){return t&&t<ve.length?ve.splice(t,0,e):ve.push(e)},Ce=function(e){\"undefined\"!=typeof ve[e]&&ve.splice(e,1)},xe=function(){var e=N();e||Oe(\"\"),e=N();var t=J(),n=Q(),o=Y();T(t),T(n),L([e,t],k.loading),n.disabled=!0,o.disabled=!0,e.setAttribute(\"data-loading\",!0),e.setAttribute(\"aria-busy\",!0),e.focus()},ke=Object.freeze({isValidParameter:ge,isDeprecatedParameter:he,argsToParams:function(e){var t={};switch(a(e[0])){case\"string\":[\"title\",\"html\",\"type\"].forEach(function(n,o){void 0!==e[o]&&(t[n]=e[o])});break;case\"object\":s(t,e[0]);break;default:return h(\"Unexpected type of argument! Expected \\\"string\\\" or \\\"object\\\", got \"+a(e[0])),!1;}return t},adaptInputValidator:function(e){return function(t,n){return e.call(this,t,n).then(function(){},function(e){return e})}},close:pe,closePopup:pe,closeModal:pe,closeToast:pe,isVisible:function(){return!!N()},clickConfirm:function(){return Q().click()},clickCancel:function(){return Y().click()},getPopup:N,getTitle:W,getContent:U,getImage:K,getButtonsWrapper:function(){return y(\"swal.getButtonsWrapper() is deprecated and will be removed in the next major release, use swal.getActions() instead\"),I(k.actions)},getActions:J,getConfirmButton:Q,getCancelButton:Y,getFooter:X,isLoading:function(){return N().hasAttribute(\"data-loading\")},mixin:function(t){var n=this;return e(function(e){function n(){return i(this,n),u(this,(n.__proto__||Object.getPrototypeOf(n)).apply(this,arguments))}return d(n,e),r(n,[{key:\"_main\",value:function(e){return l(n.prototype.__proto__||Object.getPrototypeOf(n.prototype),\"_main\",this).call(this,s({},t,e))}}]),n}(n))},queue:function(e){var t=this;ve=e;var n=function(){ve=[],document.body.removeAttribute(\"data-swal2-queue-step\")},o=[];return new Promise(function(e){(function a(r,i){r<ve.length?(document.body.setAttribute(\"data-swal2-queue-step\",r),t(ve[r]).then(function(t){\"undefined\"==typeof t.value?(n(),e({dismiss:t.dismiss})):(o.push(t.value),a(r+1,i))})):(n(),e({value:o}))})(0)})},getQueueStep:function(){return document.body.getAttribute(\"data-swal2-queue-step\")},insertQueueStep:we,deleteQueueStep:Ce,showLoading:xe,enableLoading:xe,fire:function(){for(var e=this,t=arguments.length,n=Array(t),o=0;o<t;o++)n[o]=arguments[o];return new(Function.prototype.bind.apply(e,[null].concat(n)))}});if(\"undefined\"!=typeof window&&\"function\"!=typeof window.WeakMap){var Be=0;window.Symbol=function(e){return\"__\"+e+\"_\"+Math.floor(1e9*Math.random())+\"_\"+ ++Be+\"__\"},Symbol.iterator=Symbol(\"Symbol.iterator\"),window.WeakMap=function(e,t,n){function o(){t(this,e,{value:Symbol(\"WeakMap\")})}return o.prototype={delete:function(t){delete t[this[e]]},get:function(t){return t[this[e]]},has:function(t){return n.call(t,this[e])},set:function(n,o){t(n,this[e],{configurable:!0,value:o})}},o}(Symbol(\"WeakMap\"),Object.defineProperty,{}.hasOwnProperty)}var Ae={promise:new WeakMap,innerParams:new WeakMap,domCache:new WeakMap},Ee={email:function(e){return /^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z0-9-]{2,24}$/.test(e)?Promise.resolve():Promise.reject(\"Invalid email address\")},url:function(e){return /^https?:\\/\\/(www\\.)?[-a-zA-Z0-9@:%._+~#=]{2,256}\\.[a-z]{2,6}\\b([-a-zA-Z0-9@:%_+.~#?&//=]*)$/.test(e)?Promise.resolve():Promise.reject(\"Invalid URL\")}},Se=function(e,t,n){var o=M(),i=N();null!==t&&\"function\"==typeof t&&t(i),e?(L(i,k.show),L(o,k.fade),O(i,k.hide)):O(i,k.fade),T(i),o.style.overflowY=\"hidden\",ae&&!E(i,k.noanimation)?i.addEventListener(ae,function e(){i.removeEventListener(ae,e),o.style.overflowY=\"auto\"}):o.style.overflowY=\"auto\",L([document.documentElement,document.body,o],k.shown),$()&&(se(),de()),A.previousActiveElement=document.activeElement,null!==n&&\"function\"==typeof n&&setTimeout(function(){n(i)})},Pe=Object.freeze({hideLoading:t,disableLoading:t,getInput:function(e){var t=Ae.innerParams.get(this),n=Ae.domCache.get(this);return(e=e||t.input,!e)?null:\"select\"===e||\"textarea\"===e||\"file\"===e?_(n.content,k[e]):\"checkbox\"===e?n.popup.querySelector(\".\"+k.checkbox+\" input\"):\"radio\"===e?n.popup.querySelector(\".\"+k.radio+\" input:checked\")||n.popup.querySelector(\".\"+k.radio+\" input:first-child\"):\"range\"===e?n.popup.querySelector(\".\"+k.range+\" input\"):_(n.content,k.input)},enableButtons:function(){var e=Ae.domCache.get(this);e.confirmButton.disabled=!1,e.cancelButton.disabled=!1},disableButtons:function(){var e=Ae.domCache.get(this);e.confirmButton.disabled=!0,e.cancelButton.disabled=!0},enableConfirmButton:function(){var e=Ae.domCache.get(this);e.confirmButton.disabled=!1},disableConfirmButton:function(){var e=Ae.domCache.get(this);e.confirmButton.disabled=!0},enableInput:function(){var e=this.getInput();if(!e)return!1;if(\"radio\"===e.type)for(var t=e.parentNode.parentNode,n=t.querySelectorAll(\"input\"),o=0;o<n.length;o++)n[o].disabled=!1;else e.disabled=!1},disableInput:function(){var e=this.getInput();if(!e)return!1;if(e&&\"radio\"===e.type)for(var t=e.parentNode.parentNode,n=t.querySelectorAll(\"input\"),o=0;o<n.length;o++)n[o].disabled=!0;else e.disabled=!0},showValidationError:function(e){var t=Ae.domCache.get(this);t.validationError.innerHTML=e;var n=window.getComputedStyle(t.popup);t.validationError.style.marginLeft=\"-\"+n.getPropertyValue(\"padding-left\"),t.validationError.style.marginRight=\"-\"+n.getPropertyValue(\"padding-right\"),T(t.validationError);var o=this.getInput();o&&(o.setAttribute(\"aria-invalid\",!0),o.setAttribute(\"aria-describedBy\",k.validationerror),S(o),L(o,k.inputerror))},resetValidationError:function(){var e=Ae.domCache.get(this);e.validationError&&V(e.validationError);var t=this.getInput();t&&(t.removeAttribute(\"aria-invalid\"),t.removeAttribute(\"aria-describedBy\"),O(t,k.inputerror))},_main:function(e){var t=this;be(e);var o=s({},me,e);n(o),Object.freeze(o),Ae.innerParams.set(this,o);var r={popup:N(),container:M(),content:U(),actions:J(),confirmButton:Q(),cancelButton:Y(),closeButton:G(),validationError:F(),progressSteps:z()};Ae.domCache.set(this,r);var l=this.constructor;return new Promise(function(e,n){var s=function(t){l.closePopup(o.onClose,o.onAfterClose),o.useRejections?e(t):e({value:t})},d=function(t){l.closePopup(o.onClose,o.onAfterClose),o.useRejections?n(t):e({dismiss:t})},u=function(e){l.closePopup(o.onClose,o.onAfterClose),n(e)};o.timer&&(r.popup.timeout=setTimeout(function(){return d(\"timer\")},o.timer));var p=function(){var e=t.getInput();if(!e)return null;switch(o.input){case\"checkbox\":return e.checked?1:0;case\"radio\":return e.checked?e.value:null;case\"file\":return e.files.length?e.files[0]:null;default:return o.inputAutoTrim?e.value.trim():e.value;}};o.input&&setTimeout(function(){var e=t.getInput();e&&S(e)},0);for(var m=function(e){if(o.showLoaderOnConfirm&&l.showLoading(),o.preConfirm){t.resetValidationError();var n=Promise.resolve().then(function(){return o.preConfirm(e,o.extraParams)});o.expectRejections?n.then(function(t){return s(t||e)},function(e){t.hideLoading(),e&&t.showValidationError(e)}):n.then(function(n){D(r.validationError)||!1===n?t.hideLoading():s(n||e)},function(e){return u(e)})}else s(e)},g=function(n){var i=n||window.event,e=i.target||i.srcElement,a=r.confirmButton,s=r.cancelButton,c=a&&(a===e||a.contains(e)),f=s&&(s===e||s.contains(e));switch(i.type){case\"click\":if(!(c&&l.isVisible()))f&&l.isVisible()&&(t.disableButtons(),d(l.DismissReason.cancel));else if(t.disableButtons(),o.input){var g=p();if(o.inputValidator){t.disableInput();var h=Promise.resolve().then(function(){return o.inputValidator(g,o.extraParams)});o.expectRejections?h.then(function(){t.enableButtons(),t.enableInput(),m(g)},function(e){t.enableButtons(),t.enableInput(),e&&t.showValidationError(e)}):h.then(function(e){t.enableButtons(),t.enableInput(),e?t.showValidationError(e):m(g)},function(e){return u(e)})}else m(g)}else m(!0);break;default:}},b=r.popup.querySelectorAll(\"button\"),y=0;y<b.length;y++)b[y].onclick=g,b[y].onmouseover=g,b[y].onmouseout=g,b[y].onmousedown=g;if(r.closeButton.onclick=function(){d(l.DismissReason.close)},o.toast)r.popup.onclick=function(){o.showConfirmButton||o.showCancelButton||o.showCloseButton||o.input||(l.closePopup(o.onClose,o.onAfterClose),d(l.DismissReason.close))};else{var i=!1;r.popup.onmousedown=function(){r.container.onmouseup=function(t){r.container.onmouseup=void 0,t.target===r.container&&(i=!0)}},r.container.onmousedown=function(){r.popup.onmouseup=function(t){r.popup.onmouseup=void 0,(t.target===r.popup||r.popup.contains(t.target))&&(i=!0)}},r.container.onclick=function(t){return i?void(i=!1):void(t.target!==r.container||v(o.allowOutsideClick)&&d(l.DismissReason.backdrop))}}o.reverseButtons?r.confirmButton.parentNode.insertBefore(r.cancelButton,r.confirmButton):r.confirmButton.parentNode.insertBefore(r.confirmButton,r.cancelButton);var C=function(e,t){for(var n=Z(o.focusCancel),i=0;i<n.length;i++){e+=t,e===n.length?e=0:-1===e&&(e=n.length-1);var a=n[e];if(D(a))return a.focus()}};o.toast&&ce.windowOnkeydownOverridden&&(window.onkeydown=ce.previousWindowKeyDown,ce.windowOnkeydownOverridden=!1),o.toast||ce.windowOnkeydownOverridden||(ce.previousWindowKeyDown=window.onkeydown,ce.windowOnkeydownOverridden=!0,window.onkeydown=function(n){var i=n||window.event;if(\"Enter\"===i.key&&!i.isComposing){if(i.target===t.getInput()){if(-1!==[\"textarea\",\"file\"].indexOf(o.input))return;l.clickConfirm(),i.preventDefault()}}else if(\"Tab\"===i.key){for(var e=i.target||i.srcElement,a=Z(o.focusCancel),s=-1,u=0;u<a.length;u++)if(e===a[u]){s=u;break}i.shiftKey?C(s,-1):C(s,1),i.stopPropagation(),i.preventDefault()}else-1===[\"ArrowLeft\",\"ArrowRight\",\"ArrowUp\",\"ArrowDown\",\"Left\",\"Right\",\"Up\",\"Down\"].indexOf(i.key)?(\"Escape\"===i.key||\"Esc\"===i.key)&&!0===v(o.allowEscapeKey)&&d(l.DismissReason.esc):document.activeElement===r.confirmButton&&D(r.cancelButton)?r.cancelButton.focus():document.activeElement===r.cancelButton&&D(r.confirmButton)&&r.confirmButton.focus()}),t.enableButtons(),t.hideLoading(),t.resetValidationError(),o.input&&L(document.body,k[\"has-input\"]);for(var x=[\"input\",\"file\",\"range\",\"select\",\"radio\",\"checkbox\",\"textarea\"],B=void 0,A=0;A<x.length;A++){var E=k[x[A]],P=_(r.content,E);if(B=t.getInput(x[A]),B){for(var O in B.attributes)if(B.attributes.hasOwnProperty(O)){var q=B.attributes[O].name;\"type\"!==q&&\"value\"!==q&&B.removeAttribute(q)}for(var j in o.inputAttributes)B.setAttribute(j,o.inputAttributes[j])}P.className=E,o.inputClass&&L(P,o.inputClass),V(P)}var R;switch(o.input){case\"text\":case\"email\":case\"password\":case\"number\":case\"tel\":case\"url\":B=_(r.content,k.input),B.value=o.inputValue,B.placeholder=o.inputPlaceholder,B.type=o.input,T(B);break;case\"file\":B=_(r.content,k.file),B.placeholder=o.inputPlaceholder,B.type=o.input,T(B);break;case\"range\":var M=_(r.content,k.range),I=M.querySelector(\"input\"),N=M.querySelector(\"output\");I.value=o.inputValue,I.type=o.input,N.value=o.inputValue,T(M);break;case\"select\":var H=_(r.content,k.select);if(H.innerHTML=\"\",o.inputPlaceholder){var W=document.createElement(\"option\");W.innerHTML=o.inputPlaceholder,W.value=\"\",W.disabled=!0,W.selected=!0,H.appendChild(W)}R=function(e){e.forEach(function(e){var t=c(e,2),n=t[0],i=t[1],a=document.createElement(\"option\");a.value=n,a.innerHTML=i,o.inputValue.toString()===n.toString()&&(a.selected=!0),H.appendChild(a)}),T(H),H.focus()};break;case\"radio\":var U=_(r.content,k.radio);U.innerHTML=\"\",R=function(e){e.forEach(function(e){var t=c(e,2),n=t[0],i=t[1],a=document.createElement(\"input\"),r=document.createElement(\"label\");a.type=\"radio\",a.name=k.radio,a.value=n,o.inputValue.toString()===n.toString()&&(a.checked=!0),r.innerHTML=i,r.insertBefore(a,r.firstChild),U.appendChild(r)}),T(U);var t=U.querySelectorAll(\"input\");t.length&&t[0].focus()};break;case\"checkbox\":var K=_(r.content,k.checkbox),z=t.getInput(\"checkbox\");z.type=\"checkbox\",z.value=1,z.id=k.checkbox,z.checked=!!o.inputValue;var F=K.getElementsByTagName(\"span\");F.length&&K.removeChild(F[0]),F=document.createElement(\"span\"),F.innerHTML=o.inputPlaceholder,K.appendChild(F),T(K);break;case\"textarea\":var Q=_(r.content,k.textarea);Q.value=o.inputValue,Q.placeholder=o.inputPlaceholder,T(Q);break;case null:break;default:h(\"Unexpected type of input! Expected \\\"text\\\", \\\"email\\\", \\\"password\\\", \\\"number\\\", \\\"tel\\\", \\\"select\\\", \\\"radio\\\", \\\"checkbox\\\", \\\"textarea\\\", \\\"file\\\" or \\\"url\\\", got \\\"\"+o.input+\"\\\"\");}if(\"select\"===o.input||\"radio\"===o.input){var Y=function(e){return R(f(e))};w(o.inputOptions)?(l.showLoading(),o.inputOptions.then(function(e){t.hideLoading(),Y(e)})):\"object\"===a(o.inputOptions)?Y(o.inputOptions):h(\"Unexpected type of inputOptions! Expected object, Map or Promise, got \"+a(o.inputOptions))}else-1!==[\"text\",\"email\",\"number\",\"tel\",\"textarea\"].indexOf(o.input)&&w(o.inputValue)&&(l.showLoading(),V(B),o.inputValue.then(function(e){B.value=\"number\"===o.input?parseFloat(e)||0:e+\"\",T(B),t.hideLoading()}).catch(function(e){h(\"Error in inputValue promise: \"+e),B.value=\"\",T(B),t.hideLoading()}));Se(o.animation,o.onBeforeOpen,o.onOpen),o.toast||(v(o.allowEnterKey)?o.focusCancel&&D(r.cancelButton)?r.cancelButton.focus():o.focusConfirm&&D(r.confirmButton)?r.confirmButton.focus():C(-1,1):document.activeElement&&document.activeElement.blur()),r.container.scrollTop=0})}}),Le=void 0;o.prototype.then=function(e,t){var n=Ae.promise.get(this);return n.then(e,t)},o.prototype.catch=function(e){var t=Ae.promise.get(this);return t.catch(e)},o.prototype.finally=function(e){var t=Ae.promise.get(this);return t.finally(e)},s(o.prototype,Pe),s(o,ke),Object.keys(Pe).forEach(function(e){o[e]=function(){if(Le){var t;return(t=Le)[e].apply(t,arguments)}}}),o.DismissReason=C,o.noop=function(){},o.version=\"7.19.3\";var Oe=e(function(e){var t=function(t){function n(){return i(this,n),u(this,(n.__proto__||Object.getPrototypeOf(n)).apply(this,arguments))}return d(n,t),r(n,[{key:\"_main\",value:function(e){return l(n.prototype.__proto__||Object.getPrototypeOf(n.prototype),\"_main\",this).call(this,s({},ye,e))}}],[{key:\"setDefaults\",value:function(t){if(y(\"\\\"setDefaults\\\" & \\\"resetDefaults\\\" methods are deprecated in favor of \\\"mixin\\\" method and will be removed in the next major release. For new projects, use \\\"mixin\\\". For past projects already using \\\"setDefaults\\\", support will be provided through an additional package.\"),!t||\"object\"!==(\"undefined\"==typeof t?\"undefined\":a(t)))throw new TypeError(\"SweetAlert2: The argument for setDefaults() is required and has to be a object\");be(t),Object.keys(t).forEach(function(n){e.isValidParameter(n)&&(ye[n]=t[n])})}},{key:\"resetDefaults\",value:function(){y(\"\\\"setDefaults\\\" & \\\"resetDefaults\\\" methods are deprecated in favor of \\\"mixin\\\" method and will be removed in the next major release. For new projects, use \\\"mixin\\\". For past projects already using \\\"setDefaults\\\", support will be provided through an additional package.\"),ye={}}}]),n}(e);return\"undefined\"!=typeof window&&\"object\"===a(window._swalDefaults)&&t.setDefaults(window._swalDefaults),t}(o));return Oe.default=Oe,Oe}),\"undefined\"!=typeof window&&window.Sweetalert2&&(window.swal=window.sweetAlert=window.Swal=window.SweetAlert=window.Sweetalert2);\r\n\"undefined\"!=typeof document&&function(e,t){var n=e.createElement(\"style\");if(e.getElementsByTagName(\"head\")[0].appendChild(n),n.styleSheet)n.styleSheet.disabled||(n.styleSheet.cssText=t);else try{n.innerHTML=t}catch(e){n.innerText=t}}(document,\"@-webkit-keyframes swal2-show{0%{-webkit-transform:scale(.7);transform:scale(.7)}45%{-webkit-transform:scale(1.05);transform:scale(1.05)}80%{-webkit-transform:scale(.95);transform:scale(.95)}100%{-webkit-transform:scale(1);transform:scale(1)}}@keyframes swal2-show{0%{-webkit-transform:scale(.7);transform:scale(.7)}45%{-webkit-transform:scale(1.05);transform:scale(1.05)}80%{-webkit-transform:scale(.95);transform:scale(.95)}100%{-webkit-transform:scale(1);transform:scale(1)}}@-webkit-keyframes swal2-hide{0%{-webkit-transform:scale(1);transform:scale(1);opacity:1}100%{-webkit-transform:scale(.5);transform:scale(.5);opacity:0}}@keyframes swal2-hide{0%{-webkit-transform:scale(1);transform:scale(1);opacity:1}100%{-webkit-transform:scale(.5);transform:scale(.5);opacity:0}}@-webkit-keyframes swal2-animate-success-line-tip{0%{top:1.1875em;left:.0625em;width:0}54%{top:1.0625em;left:.125em;width:0}70%{top:2.1875em;left:-.375em;width:3.125em}84%{top:3em;left:1.3125em;width:1.0625em}100%{top:2.8125em;left:.875em;width:1.5625em}}@keyframes swal2-animate-success-line-tip{0%{top:1.1875em;left:.0625em;width:0}54%{top:1.0625em;left:.125em;width:0}70%{top:2.1875em;left:-.375em;width:3.125em}84%{top:3em;left:1.3125em;width:1.0625em}100%{top:2.8125em;left:.875em;width:1.5625em}}@-webkit-keyframes swal2-animate-success-line-long{0%{top:3.375em;right:2.875em;width:0}65%{top:3.375em;right:2.875em;width:0}84%{top:2.1875em;right:0;width:3.4375em}100%{top:2.375em;right:.5em;width:2.9375em}}@keyframes swal2-animate-success-line-long{0%{top:3.375em;right:2.875em;width:0}65%{top:3.375em;right:2.875em;width:0}84%{top:2.1875em;right:0;width:3.4375em}100%{top:2.375em;right:.5em;width:2.9375em}}@-webkit-keyframes swal2-rotate-success-circular-line{0%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}5%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}12%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}100%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}}@keyframes swal2-rotate-success-circular-line{0%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}5%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}12%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}100%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}}@-webkit-keyframes swal2-animate-error-x-mark{0%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}50%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}80%{margin-top:-.375em;-webkit-transform:scale(1.15);transform:scale(1.15)}100%{margin-top:0;-webkit-transform:scale(1);transform:scale(1);opacity:1}}@keyframes swal2-animate-error-x-mark{0%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}50%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}80%{margin-top:-.375em;-webkit-transform:scale(1.15);transform:scale(1.15)}100%{margin-top:0;-webkit-transform:scale(1);transform:scale(1);opacity:1}}@-webkit-keyframes swal2-animate-error-icon{0%{-webkit-transform:rotateX(100deg);transform:rotateX(100deg);opacity:0}100%{-webkit-transform:rotateX(0);transform:rotateX(0);opacity:1}}@keyframes swal2-animate-error-icon{0%{-webkit-transform:rotateX(100deg);transform:rotateX(100deg);opacity:0}100%{-webkit-transform:rotateX(0);transform:rotateX(0);opacity:1}}body.swal2-toast-shown.swal2-has-input>.swal2-container>.swal2-toast{flex-direction:column;align-items:stretch}body.swal2-toast-shown.swal2-has-input>.swal2-container>.swal2-toast .swal2-actions{flex:1;align-self:stretch;justify-content:flex-end;height:2.2em}body.swal2-toast-shown.swal2-has-input>.swal2-container>.swal2-toast .swal2-loading{justify-content:center}body.swal2-toast-shown.swal2-has-input>.swal2-container>.swal2-toast .swal2-input{height:2em;margin:.3125em auto;font-size:1em}body.swal2-toast-shown.swal2-has-input>.swal2-container>.swal2-toast .swal2-validationerror{font-size:1em}body.swal2-toast-shown>.swal2-container{position:fixed;background-color:transparent}body.swal2-toast-shown>.swal2-container.swal2-shown{background-color:transparent}body.swal2-toast-shown>.swal2-container.swal2-top{top:0;right:auto;bottom:auto;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-toast-shown>.swal2-container.swal2-top-end,body.swal2-toast-shown>.swal2-container.swal2-top-right{top:0;right:0;bottom:auto;left:auto}body.swal2-toast-shown>.swal2-container.swal2-top-left,body.swal2-toast-shown>.swal2-container.swal2-top-start{top:0;right:auto;bottom:auto;left:0}body.swal2-toast-shown>.swal2-container.swal2-center-left,body.swal2-toast-shown>.swal2-container.swal2-center-start{top:50%;right:auto;bottom:auto;left:0;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-toast-shown>.swal2-container.swal2-center{top:50%;right:auto;bottom:auto;left:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%)}body.swal2-toast-shown>.swal2-container.swal2-center-end,body.swal2-toast-shown>.swal2-container.swal2-center-right{top:50%;right:0;bottom:auto;left:auto;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-toast-shown>.swal2-container.swal2-bottom-left,body.swal2-toast-shown>.swal2-container.swal2-bottom-start{top:auto;right:auto;bottom:0;left:0}body.swal2-toast-shown>.swal2-container.swal2-bottom{top:auto;right:auto;bottom:0;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-toast-shown>.swal2-container.swal2-bottom-end,body.swal2-toast-shown>.swal2-container.swal2-bottom-right{top:auto;right:0;bottom:0;left:auto}.swal2-popup.swal2-toast{flex-direction:row;align-items:center;width:auto;padding:.625em;box-shadow:0 0 .625em #d9d9d9;overflow-y:hidden}.swal2-popup.swal2-toast .swal2-header{flex-direction:row}.swal2-popup.swal2-toast .swal2-title{justify-content:flex-start;margin:0 .6em;font-size:1em}.swal2-popup.swal2-toast .swal2-close{position:initial}.swal2-popup.swal2-toast .swal2-content{justify-content:flex-start;font-size:1em}.swal2-popup.swal2-toast .swal2-icon{width:2em;min-width:2em;height:2em;margin:0}.swal2-popup.swal2-toast .swal2-icon-text{font-size:2em;font-weight:700;line-height:1em}.swal2-popup.swal2-toast .swal2-icon.swal2-success .swal2-success-ring{width:2em;height:2em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line]{top:.875em;width:1.375em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left]{left:.3125em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right]{right:.3125em}.swal2-popup.swal2-toast .swal2-actions{height:auto;margin:0 .3125em}.swal2-popup.swal2-toast .swal2-styled{margin:0 .3125em;padding:.3125em .625em;font-size:1em}.swal2-popup.swal2-toast .swal2-styled:focus{box-shadow:0 0 0 .0625em #fff,0 0 0 .125em rgba(50,100,150,.4)}.swal2-popup.swal2-toast .swal2-success{border-color:#a5dc86}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line]{position:absolute;width:2em;height:2.8125em;-webkit-transform:rotate(45deg);transform:rotate(45deg);border-radius:50%}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=left]{top:-.25em;left:-.9375em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:2em 2em;transform-origin:2em 2em;border-radius:4em 0 0 4em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=right]{top:-.25em;left:.9375em;-webkit-transform-origin:0 2em;transform-origin:0 2em;border-radius:0 4em 4em 0}.swal2-popup.swal2-toast .swal2-success .swal2-success-ring{width:2em;height:2em}.swal2-popup.swal2-toast .swal2-success .swal2-success-fix{top:0;left:.4375em;width:.4375em;height:2.6875em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line]{height:.3125em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=tip]{top:1.125em;left:.1875em;width:.75em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=long]{top:.9375em;right:.1875em;width:1.375em}.swal2-popup.swal2-toast.swal2-show{-webkit-animation:showSweetToast .5s;animation:showSweetToast .5s}.swal2-popup.swal2-toast.swal2-hide{-webkit-animation:hideSweetToast .2s forwards;animation:hideSweetToast .2s forwards}.swal2-popup.swal2-toast .swal2-animate-success-icon .swal2-success-line-tip{-webkit-animation:animate-toast-success-tip .75s;animation:animate-toast-success-tip .75s}.swal2-popup.swal2-toast .swal2-animate-success-icon .swal2-success-line-long{-webkit-animation:animate-toast-success-long .75s;animation:animate-toast-success-long .75s}@-webkit-keyframes showSweetToast{0%{-webkit-transform:translateY(-.625em) rotateZ(2deg);transform:translateY(-.625em) rotateZ(2deg);opacity:0}33%{-webkit-transform:translateY(0) rotateZ(-2deg);transform:translateY(0) rotateZ(-2deg);opacity:.5}66%{-webkit-transform:translateY(.3125em) rotateZ(2deg);transform:translateY(.3125em) rotateZ(2deg);opacity:.7}100%{-webkit-transform:translateY(0) rotateZ(0);transform:translateY(0) rotateZ(0);opacity:1}}@keyframes showSweetToast{0%{-webkit-transform:translateY(-.625em) rotateZ(2deg);transform:translateY(-.625em) rotateZ(2deg);opacity:0}33%{-webkit-transform:translateY(0) rotateZ(-2deg);transform:translateY(0) rotateZ(-2deg);opacity:.5}66%{-webkit-transform:translateY(.3125em) rotateZ(2deg);transform:translateY(.3125em) rotateZ(2deg);opacity:.7}100%{-webkit-transform:translateY(0) rotateZ(0);transform:translateY(0) rotateZ(0);opacity:1}}@-webkit-keyframes hideSweetToast{0%{opacity:1}33%{opacity:.5}100%{-webkit-transform:rotateZ(1deg);transform:rotateZ(1deg);opacity:0}}@keyframes hideSweetToast{0%{opacity:1}33%{opacity:.5}100%{-webkit-transform:rotateZ(1deg);transform:rotateZ(1deg);opacity:0}}@-webkit-keyframes animate-toast-success-tip{0%{top:.5625em;left:.0625em;width:0}54%{top:.125em;left:.125em;width:0}70%{top:.625em;left:-.25em;width:1.625em}84%{top:1.0625em;left:.75em;width:.5em}100%{top:1.125em;left:.1875em;width:.75em}}@keyframes animate-toast-success-tip{0%{top:.5625em;left:.0625em;width:0}54%{top:.125em;left:.125em;width:0}70%{top:.625em;left:-.25em;width:1.625em}84%{top:1.0625em;left:.75em;width:.5em}100%{top:1.125em;left:.1875em;width:.75em}}@-webkit-keyframes animate-toast-success-long{0%{top:1.625em;right:1.375em;width:0}65%{top:1.25em;right:.9375em;width:0}84%{top:.9375em;right:0;width:1.125em}100%{top:.9375em;right:.1875em;width:1.375em}}@keyframes animate-toast-success-long{0%{top:1.625em;right:1.375em;width:0}65%{top:1.25em;right:.9375em;width:0}84%{top:.9375em;right:0;width:1.125em}100%{top:.9375em;right:.1875em;width:1.375em}}body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown),html.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown){height:auto;overflow-y:hidden}body.swal2-no-backdrop .swal2-shown{top:auto;right:auto;bottom:auto;left:auto;background-color:transparent}body.swal2-no-backdrop .swal2-shown>.swal2-modal{box-shadow:0 0 10px rgba(0,0,0,.4)}body.swal2-no-backdrop .swal2-shown.swal2-top{top:0;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-top-left,body.swal2-no-backdrop .swal2-shown.swal2-top-start{top:0;left:0}body.swal2-no-backdrop .swal2-shown.swal2-top-end,body.swal2-no-backdrop .swal2-shown.swal2-top-right{top:0;right:0}body.swal2-no-backdrop .swal2-shown.swal2-center{top:50%;left:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%)}body.swal2-no-backdrop .swal2-shown.swal2-center-left,body.swal2-no-backdrop .swal2-shown.swal2-center-start{top:50%;left:0;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-center-end,body.swal2-no-backdrop .swal2-shown.swal2-center-right{top:50%;right:0;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-bottom{bottom:0;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-bottom-left,body.swal2-no-backdrop .swal2-shown.swal2-bottom-start{bottom:0;left:0}body.swal2-no-backdrop .swal2-shown.swal2-bottom-end,body.swal2-no-backdrop .swal2-shown.swal2-bottom-right{right:0;bottom:0}.swal2-container{display:flex;position:fixed;top:0;right:0;bottom:0;left:0;flex-direction:row;align-items:center;justify-content:center;padding:10px;background-color:transparent;z-index:1060;overflow-x:hidden;-webkit-overflow-scrolling:touch}.swal2-container.swal2-top{align-items:flex-start}.swal2-container.swal2-top-left,.swal2-container.swal2-top-start{align-items:flex-start;justify-content:flex-start}.swal2-container.swal2-top-end,.swal2-container.swal2-top-right{align-items:flex-start;justify-content:flex-end}.swal2-container.swal2-center{align-items:center}.swal2-container.swal2-center-left,.swal2-container.swal2-center-start{align-items:center;justify-content:flex-start}.swal2-container.swal2-center-end,.swal2-container.swal2-center-right{align-items:center;justify-content:flex-end}.swal2-container.swal2-bottom{align-items:flex-end}.swal2-container.swal2-bottom-left,.swal2-container.swal2-bottom-start{align-items:flex-end;justify-content:flex-start}.swal2-container.swal2-bottom-end,.swal2-container.swal2-bottom-right{align-items:flex-end;justify-content:flex-end}.swal2-container.swal2-grow-fullscreen>.swal2-modal{display:flex!important;flex:1;align-self:stretch;justify-content:center}.swal2-container.swal2-grow-row>.swal2-modal{display:flex!important;flex:1;align-content:center;justify-content:center}.swal2-container.swal2-grow-column{flex:1;flex-direction:column}.swal2-container.swal2-grow-column.swal2-bottom,.swal2-container.swal2-grow-column.swal2-center,.swal2-container.swal2-grow-column.swal2-top{align-items:center}.swal2-container.swal2-grow-column.swal2-bottom-left,.swal2-container.swal2-grow-column.swal2-bottom-start,.swal2-container.swal2-grow-column.swal2-center-left,.swal2-container.swal2-grow-column.swal2-center-start,.swal2-container.swal2-grow-column.swal2-top-left,.swal2-container.swal2-grow-column.swal2-top-start{align-items:flex-start}.swal2-container.swal2-grow-column.swal2-bottom-end,.swal2-container.swal2-grow-column.swal2-bottom-right,.swal2-container.swal2-grow-column.swal2-center-end,.swal2-container.swal2-grow-column.swal2-center-right,.swal2-container.swal2-grow-column.swal2-top-end,.swal2-container.swal2-grow-column.swal2-top-right{align-items:flex-end}.swal2-container.swal2-grow-column>.swal2-modal{display:flex!important;flex:1;align-content:center;justify-content:center}.swal2-container:not(.swal2-top):not(.swal2-top-start):not(.swal2-top-end):not(.swal2-top-left):not(.swal2-top-right):not(.swal2-center-start):not(.swal2-center-end):not(.swal2-center-left):not(.swal2-center-right):not(.swal2-bottom):not(.swal2-bottom-start):not(.swal2-bottom-end):not(.swal2-bottom-left):not(.swal2-bottom-right)>.swal2-modal{margin:auto}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-container .swal2-modal{margin:0!important}}.swal2-container.swal2-fade{transition:background-color .1s}.swal2-container.swal2-shown{background-color:rgba(0,0,0,.4)}.swal2-popup{display:none;position:relative;flex-direction:column;justify-content:center;width:32em;max-width:100%;padding:1.25em;border-radius:.3125em;background:#fff;font-family:inherit;font-size:1rem;box-sizing:border-box}.swal2-popup:focus{outline:0}.swal2-popup.swal2-loading{overflow-y:hidden}.swal2-popup .swal2-header{display:flex;flex-direction:column;align-items:center}.swal2-popup .swal2-title{display:block;position:relative;max-width:100%;margin:0 0 .4em;padding:0;color:#595959;font-size:1.875em;font-weight:600;text-align:center;text-transform:none;word-wrap:break-word}.swal2-popup .swal2-actions{align-items:center;justify-content:center;margin:1.25em auto 0}.swal2-popup .swal2-actions:not(.swal2-loading) .swal2-styled[disabled]{opacity:.4}.swal2-popup .swal2-actions:not(.swal2-loading) .swal2-styled:hover{background-image:linear-gradient(rgba(0,0,0,.1),rgba(0,0,0,.1))}.swal2-popup .swal2-actions:not(.swal2-loading) .swal2-styled:active{background-image:linear-gradient(rgba(0,0,0,.2),rgba(0,0,0,.2))}.swal2-popup .swal2-actions.swal2-loading .swal2-styled.swal2-confirm{width:2.5em;height:2.5em;margin:.46875em;padding:0;border:.25em solid transparent;border-radius:100%;border-color:transparent;background-color:transparent!important;color:transparent;cursor:default;box-sizing:border-box;-webkit-animation:swal2-rotate-loading 1.5s linear 0s infinite normal;animation:swal2-rotate-loading 1.5s linear 0s infinite normal;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.swal2-popup .swal2-actions.swal2-loading .swal2-styled.swal2-cancel{margin-right:30px;margin-left:30px}.swal2-popup .swal2-actions.swal2-loading :not(.swal2-styled).swal2-confirm::after{display:inline-block;width:15px;height:15px;margin-left:5px;border:3px solid #999;border-radius:50%;border-right-color:transparent;box-shadow:1px 1px 1px #fff;content:\'\';-webkit-animation:swal2-rotate-loading 1.5s linear 0s infinite normal;animation:swal2-rotate-loading 1.5s linear 0s infinite normal}.swal2-popup .swal2-styled{margin:0 .3125em;padding:.625em 2em;font-weight:500;box-shadow:none}.swal2-popup .swal2-styled:not([disabled]){cursor:pointer}.swal2-popup .swal2-styled.swal2-confirm{border:0;border-radius:.25em;background:initial;background-color:#3085d6;color:#fff;font-size:1.0625em}.swal2-popup .swal2-styled.swal2-cancel{border:0;border-radius:.25em;background:initial;background-color:#aaa;color:#fff;font-size:1.0625em}.swal2-popup .swal2-styled:focus{outline:0;box-shadow:0 0 0 2px #fff,0 0 0 4px rgba(50,100,150,.4)}.swal2-popup .swal2-styled::-moz-focus-inner{border:0}.swal2-popup .swal2-footer{justify-content:center;margin:1.25em 0 0;padding-top:1em;border-top:1px solid #eee;color:#545454;font-size:1em}.swal2-popup .swal2-image{max-width:100%;margin:1.25em auto}.swal2-popup .swal2-close{position:absolute;top:0;right:0;justify-content:center;width:1.2em;height:1.2em;padding:0;transition:color .1s ease-out;border:none;border-radius:0;background:0 0;color:#ccc;font-family:serif;font-size:2.5em;line-height:1.2;cursor:pointer;overflow:hidden}.swal2-popup .swal2-close:hover{-webkit-transform:none;transform:none;color:#f27474}.swal2-popup>.swal2-checkbox,.swal2-popup>.swal2-file,.swal2-popup>.swal2-input,.swal2-popup>.swal2-radio,.swal2-popup>.swal2-select,.swal2-popup>.swal2-textarea{display:none}.swal2-popup .swal2-content{justify-content:center;margin:0;padding:0;color:#545454;font-size:1.125em;font-weight:300;line-height:normal;word-wrap:break-word}.swal2-popup #swal2-content{text-align:center}.swal2-popup .swal2-checkbox,.swal2-popup .swal2-file,.swal2-popup .swal2-input,.swal2-popup .swal2-radio,.swal2-popup .swal2-select,.swal2-popup .swal2-textarea{margin:1em auto}.swal2-popup .swal2-file,.swal2-popup .swal2-input,.swal2-popup .swal2-textarea{width:100%;transition:border-color .3s,box-shadow .3s;border:1px solid #d9d9d9;border-radius:.1875em;font-size:1.125em;box-shadow:inset 0 1px 1px rgba(0,0,0,.06);box-sizing:border-box}.swal2-popup .swal2-file.swal2-inputerror,.swal2-popup .swal2-input.swal2-inputerror,.swal2-popup .swal2-textarea.swal2-inputerror{border-color:#f27474!important;box-shadow:0 0 2px #f27474!important}.swal2-popup .swal2-file:focus,.swal2-popup .swal2-input:focus,.swal2-popup .swal2-textarea:focus{border:1px solid #b4dbed;outline:0;box-shadow:0 0 3px #c4e6f5}.swal2-popup .swal2-file::-webkit-input-placeholder,.swal2-popup .swal2-input::-webkit-input-placeholder,.swal2-popup .swal2-textarea::-webkit-input-placeholder{color:#ccc}.swal2-popup .swal2-file:-ms-input-placeholder,.swal2-popup .swal2-input:-ms-input-placeholder,.swal2-popup .swal2-textarea:-ms-input-placeholder{color:#ccc}.swal2-popup .swal2-file::-ms-input-placeholder,.swal2-popup .swal2-input::-ms-input-placeholder,.swal2-popup .swal2-textarea::-ms-input-placeholder{color:#ccc}.swal2-popup .swal2-file::placeholder,.swal2-popup .swal2-input::placeholder,.swal2-popup .swal2-textarea::placeholder{color:#ccc}.swal2-popup .swal2-range input{width:80%}.swal2-popup .swal2-range output{width:20%;font-weight:600;text-align:center}.swal2-popup .swal2-range input,.swal2-popup .swal2-range output{height:2.625em;margin:1em auto;padding:0;font-size:1.125em;line-height:2.625em}.swal2-popup .swal2-input{height:2.625em;padding:.75em}.swal2-popup .swal2-input[type=number]{max-width:10em}.swal2-popup .swal2-file{font-size:1.125em}.swal2-popup .swal2-textarea{height:6.75em;padding:.75em}.swal2-popup .swal2-select{min-width:50%;max-width:100%;padding:.375em .625em;color:#545454;font-size:1.125em}.swal2-popup .swal2-checkbox,.swal2-popup .swal2-radio{align-items:center;justify-content:center}.swal2-popup .swal2-checkbox label,.swal2-popup .swal2-radio label{margin:0 .6em;font-size:1.125em}.swal2-popup .swal2-checkbox input,.swal2-popup .swal2-radio input{margin:0 .4em}.swal2-popup .swal2-validationerror{display:none;align-items:center;justify-content:center;padding:.625em;background:#f0f0f0;color:#666;font-size:1em;font-weight:300;overflow:hidden}.swal2-popup .swal2-validationerror::before{display:inline-block;width:1.5em;height:1.5em;margin:0 .625em;border-radius:50%;background-color:#f27474;color:#fff;font-weight:600;line-height:1.5em;text-align:center;content:\'!\';zoom:normal}@supports (-ms-accelerator:true){.swal2-range input{width:100%!important}.swal2-range output{display:none}}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-range input{width:100%!important}.swal2-range output{display:none}}@-moz-document url-prefix(){.swal2-close:focus{outline:2px solid rgba(50,100,150,.4)}}.swal2-icon{position:relative;justify-content:center;width:5em;height:5em;margin:1.25em auto 1.875em;border:.25em solid transparent;border-radius:50%;line-height:5em;cursor:default;box-sizing:content-box;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;zoom:normal}.swal2-icon-text{font-size:3.75em}.swal2-icon.swal2-error{border-color:#f27474}.swal2-icon.swal2-error .swal2-x-mark{position:relative;flex-grow:1}.swal2-icon.swal2-error [class^=swal2-x-mark-line]{display:block;position:absolute;top:2.3125em;width:2.9375em;height:.3125em;border-radius:.125em;background-color:#f27474}.swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left]{left:1.0625em;-webkit-transform:rotate(45deg);transform:rotate(45deg)}.swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right]{right:1em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}.swal2-icon.swal2-warning{border-color:#facea8;color:#f8bb86}.swal2-icon.swal2-info{border-color:#9de0f6;color:#3fc3ee}.swal2-icon.swal2-question{border-color:#c9dae1;color:#87adbd}.swal2-icon.swal2-success{border-color:#a5dc86}.swal2-icon.swal2-success [class^=swal2-success-circular-line]{position:absolute;width:3.75em;height:7.5em;-webkit-transform:rotate(45deg);transform:rotate(45deg);border-radius:50%}.swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=left]{top:-.4375em;left:-2.0635em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:3.75em 3.75em;transform-origin:3.75em 3.75em;border-radius:7.5em 0 0 7.5em}.swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=right]{top:-.6875em;left:1.875em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:0 3.75em;transform-origin:0 3.75em;border-radius:0 7.5em 7.5em 0}.swal2-icon.swal2-success .swal2-success-ring{position:absolute;top:-.25em;left:-.25em;width:100%;height:100%;border:.25em solid rgba(165,220,134,.3);border-radius:50%;z-index:2;box-sizing:content-box}.swal2-icon.swal2-success .swal2-success-fix{position:absolute;top:.5em;left:1.625em;width:.4375em;height:5.625em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);z-index:1}.swal2-icon.swal2-success [class^=swal2-success-line]{display:block;position:absolute;height:.3125em;border-radius:.125em;background-color:#a5dc86;z-index:2}.swal2-icon.swal2-success [class^=swal2-success-line][class$=tip]{top:2.875em;left:.875em;width:1.5625em;-webkit-transform:rotate(45deg);transform:rotate(45deg)}.swal2-icon.swal2-success [class^=swal2-success-line][class$=long]{top:2.375em;right:.5em;width:2.9375em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}.swal2-progresssteps{align-items:center;margin:0 0 1.25em;padding:0;font-weight:600}.swal2-progresssteps li{display:inline-block;position:relative}.swal2-progresssteps .swal2-progresscircle{width:2em;height:2em;border-radius:2em;background:#3085d6;color:#fff;line-height:2em;text-align:center;z-index:20}.swal2-progresssteps .swal2-progresscircle:first-child{margin-left:0}.swal2-progresssteps .swal2-progresscircle:last-child{margin-right:0}.swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep{background:#3085d6}.swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep~.swal2-progresscircle{background:#add8e6}.swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep~.swal2-progressline{background:#add8e6}.swal2-progresssteps .swal2-progressline{width:2.5em;height:.4em;margin:0 -1px;background:#3085d6;z-index:10}[class^=swal2]{-webkit-tap-highlight-color:transparent}.swal2-show{-webkit-animation:swal2-show .3s;animation:swal2-show .3s}.swal2-show.swal2-noanimation{-webkit-animation:none;animation:none}.swal2-hide{-webkit-animation:swal2-hide .15s forwards;animation:swal2-hide .15s forwards}.swal2-hide.swal2-noanimation{-webkit-animation:none;animation:none}[dir=rtl] .swal2-close{right:auto;left:0}.swal2-animate-success-icon .swal2-success-line-tip{-webkit-animation:swal2-animate-success-line-tip .75s;animation:swal2-animate-success-line-tip .75s}.swal2-animate-success-icon .swal2-success-line-long{-webkit-animation:swal2-animate-success-line-long .75s;animation:swal2-animate-success-line-long .75s}.swal2-animate-success-icon .swal2-success-circular-line-right{-webkit-animation:swal2-rotate-success-circular-line 4.25s ease-in;animation:swal2-rotate-success-circular-line 4.25s ease-in}.swal2-animate-error-icon{-webkit-animation:swal2-animate-error-icon .5s;animation:swal2-animate-error-icon .5s}.swal2-animate-error-icon .swal2-x-mark{-webkit-animation:swal2-animate-error-x-mark .5s;animation:swal2-animate-error-x-mark .5s}@-webkit-keyframes swal2-rotate-loading{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes swal2-rotate-loading{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}\");', 1, '2019-05-02 22:06:38', '2019-05-06 08:18:32', NULL);
INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, 'tomi', 'morsalin@gmail.com', 'Store information', 'adasdasdasdadasdasda', 1, '2019-05-04 23:50:03', '2019-05-06 08:18:29', NULL),
(15, 'redmi', 'morsalin@gmail.com', 'Store information', '@if(Session::has(\'success\'))\r\n    <script>\r\n        $.toast({\r\n            heading: \'Success\',\r\n            text: \'{{session(\"success\")}}\',\r\n            position: \'top-right\',\r\n            loaderBg:\'#ff5050\',\r\n            bgColor: \'#2cd07e\',\r\n            icon: \'success\',\r\n            hideAfter: 3000, \r\n            stack: 6\r\n        });\r\n    </script>\r\n    @endif\r\n    @if(Session::has(\'error\'))\r\n    <script>\r\n        $.toast({\r\n            heading: \'Error\',\r\n            text: \'{{session(\"error\")}}\',\r\n            position: \'top-right\',\r\n            loaderBg:\'#ff5050\',\r\n            bgColor: \'#2cd07e\',\r\n            icon: \'error\',\r\n            hideAfter: 3000, \r\n            stack: 6\r\n        });\r\n    </script>\r\n    @endif', 1, '2019-05-04 23:51:31', '2019-05-06 08:18:25', NULL),
(16, 'Shahadat Hossain', 'morsalin@gmail.com', 'Store information', 'Store information\r\n203, East Kazipara, Mirpur, Dhaka-', 1, '2019-05-06 08:19:33', '2019-06-17 10:59:05', NULL),
(17, 'oppo', 'morsalin@gmail.com', 'Support Rohingya island relocation', 'Support Rohingya island relocation or leave the country', 1, '2019-09-05 16:50:25', '2020-02-22 15:04:27', NULL),
(18, 'morsalin', 'piash32@gmail.com', 'oppo', 'oppo mobile er dam koto?', 1, '2020-02-22 15:05:22', '2020-02-22 17:25:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', 1, NULL, NULL),
(2, 'USA', 1, NULL, NULL),
(3, 'UK', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `password`, `address`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sharif islam', 'morsalin@gmail.com', '213464654654', '$2y$10$Eg3bvFZgUR78/.qDbeFdz.XfCB09PTihMUF4neNDD/xUE7X1wz01K', '203, East Kazipara, Mirpur, Dhaka.', 1, '2019-03-19 18:00:00', '2020-02-22 15:03:52', '2020-02-22 15:03:52'),
(4, 'milton', 'shawon@gmail.com', '64654654654654', '$2y$10$cIbf7YZ2PxyaO8oJTnM6jefEiulS33wdbq5zXuoRaVJvbvCTMAffm', NULL, 1, '2019-05-05 01:56:56', '2019-05-05 01:56:56', NULL),
(5, 'morsalin', 'milton@gmail.com', '64646544987987', '$2y$10$imrse0k8kSVxWhrr7e1O.OP81.McNti5TQWEehhLF0FIET6ZGeDcu', NULL, 1, '2019-05-05 01:57:56', '2019-05-05 01:57:56', NULL),
(6, 'sunny', 'korim@gmail.com', '654987987987987', '$2y$10$iBdqQ1dxW2tqJBFax5lCw.M/5C.MrvhqmOcq2JgSS/Jt7VD/lHYQe', NULL, 1, '2019-06-05 16:54:40', '2019-09-05 16:54:40', NULL),
(7, 'korim ', 'redim@gmail.com', '651654979797', '$2y$10$jgbZiM3E7MDg.GbGGssnLu7xt.zgpigfxoyKSC7kjyt/pManu.SIW', NULL, 1, '2019-09-05 19:24:39', '2019-09-05 19:24:39', NULL),
(8, 'deaman', 'dead@gmail.com', '7889414313232', '$2y$10$O18Yr2/rV5s/XuINWodYEufHdWQbssVS9Zh/9mEr/EfFEuF8EUqfO', NULL, 1, '2019-09-05 19:25:31', '2019-09-05 19:25:31', NULL),
(9, 'morsalin piash', 'mpiash32@gmail.com', '546546465465', '$2y$10$WUQff.6NKSI7skR2qzeQRe7hk9.qIIsIrheujAhc8.vYHFDT/mFz.', NULL, 1, '2020-02-21 15:25:10', '2020-02-24 19:00:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `slug`, `created_at`, `updated_at`) VALUES
(1, '5ccd975647d99', '2019-05-04 13:44:54', '2019-05-04 13:44:54'),
(2, '5ccd9a3a71860', '2019-05-04 13:57:14', '2019-05-04 13:57:14'),
(3, '5ccd9ee8ca5f8', '2019-05-04 14:17:12', '2019-05-04 14:17:12'),
(4, '5cce43a169e84', '2019-05-05 02:00:01', '2019-05-05 02:00:01'),
(5, '5cd71e91f1c79', '2019-05-11 19:12:17', '2019-05-11 19:12:17'),
(6, '5d07751cd4794', '2019-06-17 11:10:20', '2019-06-17 11:10:20'),
(7, '5d184eb050614', '2019-06-30 05:54:56', '2019-06-30 05:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `maincategories`
--

CREATE TABLE `maincategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maincategories`
--

INSERT INTO `maincategories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Men', 'men', 1, '2019-04-25 01:47:20', '2019-04-25 01:47:20'),
(2, 'Woman', 'woman', 1, '2019-04-25 01:47:41', '2019-04-25 01:47:41'),
(3, 'Kids', 'kids', 1, '2019-04-25 01:47:48', '2019-04-25 01:47:48'),
(11, 'Home Decor', 'home-decor', 1, '2020-02-24 04:30:52', '2020-02-24 04:30:52');

-- --------------------------------------------------------

--
-- Table structure for table `maincategory_product`
--

CREATE TABLE `maincategory_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `maincategory_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maincategory_product`
--

INSERT INTO `maincategory_product` (`id`, `product_id`, `maincategory_id`, `created_at`, `updated_at`) VALUES
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(8, 8, 2, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(16, 18, 1, '2019-05-01 14:22:12', '2019-05-01 14:22:12'),
(21, 14, 2, '2019-05-01 16:26:45', '2019-05-01 16:26:45'),
(24, 1, 4, '2019-05-01 16:28:27', '2019-05-01 16:28:27'),
(25, 4, 4, '2019-05-01 16:29:04', '2019-05-01 16:29:04'),
(27, 19, 2, '2019-05-02 23:29:49', '2019-05-02 23:29:49'),
(28, 20, 2, '2020-02-21 15:29:58', '2020-02-21 15:29:58');

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
(3, '2019_03_11_152444_create_roles_table', 1),
(4, '2019_04_24_200045_create_main_categories_table', 2),
(5, '2019_04_24_224751_create_main_categories_table', 3),
(6, '2019_04_25_001254_create_sub_categories_table', 4),
(7, '2019_04_25_001306_create_categories_table', 4),
(8, '2019_04_25_001254_create_subcategories_table', 5),
(9, '2019_04_25_131957_create_maincategories_table', 5),
(10, '2019_04_25_133127_create_maincategories_table', 6),
(11, '2019_04_25_133927_create_maincategories_table', 7),
(12, '2019_04_25_001253_create_maincategories_table', 8),
(13, '2019_04_26_023219_create_brands_table', 8),
(14, '2019_04_26_060453_create_colors_table', 9),
(15, '2019_04_26_060509_create_sizes_table', 9),
(16, '2019_04_26_062359_create_color_product_table', 10),
(17, '2019_04_26_062511_create_product_size_table', 10),
(18, '2019_04_26_062558_create_category_product_table', 10),
(19, '2019_04_26_063205_create_products_table', 11),
(20, '2019_04_26_070001_create_product_images_table', 12),
(21, '2019_04_26_231131_create_types_table', 13),
(22, '2019_04_26_231333_create_product_type_table', 13),
(23, '2019_04_27_022817_create_product_type_table', 14),
(24, '2019_04_27_022903_create_types_table', 14),
(25, '2019_04_27_023459_create_product_images_table', 15),
(26, '2019_04_27_145806_create_product_images_table', 16),
(27, '2019_04_27_191202_create_banners_table', 17),
(28, '2019_04_27_211812_create_basicinfos_table', 18),
(29, '2019_04_27_232028_create_sociallinks_table', 19),
(30, '2019_04_29_022710_create_contacts_table', 20),
(31, '2019_04_29_030030_create_subscribers_table', 21),
(32, '2019_04_29_033537_create_customers_table', 22),
(33, '2019_05_01_022620_create_abouts_table', 23),
(34, '2019_05_01_191346_create_maincategory_product_table', 24),
(35, '2019_05_04_005408_create_payments_table', 25),
(36, '2019_05_04_005441_create_shippings_table', 25),
(37, '2019_05_04_005457_create_orders_table', 26),
(38, '2019_05_04_005522_create_order_details_table', 26),
(39, '2019_05_04_021348_create_payments_table', 27),
(40, '2019_05_04_021442_create_shippings_table', 27),
(41, '2019_05_04_170759_create_countries_table', 28),
(42, '2019_05_04_170809_create_cities_table', 28),
(43, '2019_05_04_193334_create_guests_table', 29),
(44, '2020_02_25_004857_create_privacies_table', 30);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `payment_id` int(10) UNSIGNED NOT NULL,
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `order_total` double(8,2) NOT NULL,
  `shipping_charge` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `guest_id`, `payment_id`, `shipping_id`, `order_total`, `shipping_charge`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, NULL, 7, 14, 15, 800.00, 50, 0, '2019-09-30 05:56:01', '2019-09-05 13:17:58', NULL),
(14, 9, NULL, 15, 16, 400.00, 50, 2, '2020-02-21 15:26:42', '2020-02-21 15:28:15', NULL),
(15, 9, NULL, 16, 17, 5063.00, 50, 1, '2020-02-21 15:33:13', '2020-02-21 15:33:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `name`, `price`, `qty`, `color`, `size`, `created_at`, `updated_at`) VALUES
(17, 13, 9, 'SALE OFF  30% FOR ALL', 400.00, 2, NULL, NULL, '2019-06-30 05:56:01', '2019-06-30 05:56:01'),
(18, 14, 9, 'SALE OFF  30% FOR ALL', 400.00, 1, NULL, NULL, '2020-02-21 15:26:42', '2020-02-21 15:26:42'),
(19, 15, 20, 'tops', 4563.00, 1, 'Green', 'L', '2020-02-21 15:33:13', '2020-02-21 15:33:13'),
(20, 15, 9, 'SALE OFF  30% FOR ALL', 400.00, 1, NULL, NULL, '2020-02-21 15:33:13', '2020-02-21 15:33:13'),
(21, 15, 15, 'Mack Pro', 100.00, 1, NULL, NULL, '2020-02-21 15:33:13', '2020-02-21 15:33:13');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_month` int(11) NOT NULL,
  `exp_year` int(11) NOT NULL,
  `cvv` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `card_number`, `exp_month`, `exp_year`, `cvv`, `created_at`, `updated_at`) VALUES
(8, 'ifti akter', '565546546865', 3, 2019, 1234, '2019-05-05 01:32:17', '2019-05-05 01:32:17'),
(14, 'monir hasan', '8796789788798', 2, 2020, 5454, '2019-06-30 05:55:45', '2019-06-30 05:55:45'),
(15, 'morsalin', '1213123', 3, 2021, 2345, '2020-02-21 15:25:39', '2020-02-21 15:25:39'),
(16, 'shifat', '44456', 3, 2022, 1334, '2020-02-21 15:32:29', '2020-02-21 15:32:29'),
(17, '1235', '1231', 3, 2020, 1123, '2020-02-24 19:01:25', '2020-02-24 19:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `privacies`
--

CREATE TABLE `privacies` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacies`
--

INSERT INTO `privacies` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>&nbsp;</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td><input id=\"paras\" checked=\"checked\" name=\"what\" type=\"radio\" value=\"paras\" /></td>\r\n<td><label for=\"paras\">paragraphs</label></td>\r\n</tr>\r\n<tr>\r\n<td><input id=\"words\" name=\"what\" type=\"radio\" value=\"words\" /></td>\r\n<td><label for=\"words\">words</label></td>\r\n</tr>\r\n<tr>\r\n<td><input id=\"bytes\" name=\"what\" type=\"radio\" value=\"bytes\" /></td>\r\n<td><label for=\"bytes\">bytes</label></td>\r\n</tr>\r\n<tr>\r\n<td><input id=\"lists\" name=\"what\" type=\"radio\" value=\"lists\" /></td>\r\n<td><label for=\"lists\">lists</label></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2020-02-25 14:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `discount` float DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `sales` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `features` text COLLATE utf8mb4_unicode_ci,
  `creator` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `name`, `code`, `price`, `discount`, `stock`, `sales`, `description`, `features`, `creator`, `image`, `image_two`, `image_three`, `image_four`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 12, 'Half Sleeve Casual Shirt for Mens - SW1120S', '112653', 300.00, 10, 100, 0, 'Half Sleeve Casual Shirt for Men - SW1120S is comfortable to wear and looks very fashionable. This full sleeve shirt ensures immense of wearing comfort.', '<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Fabrics: 100% Cotton.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Quality: 100% export quality.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Collection for Men.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Styling &amp; Slim Fit.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Color: As given picture.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Size Measurement: M (long 29 \", Chest 40\"), L (Long 30&rdquo;, Chest 42&rdquo;), XL (Long: 31\", Chest: 44\"), XXL (Long: 32\", Chest: 46\")</li>\r\n</ul>', 1, 'half-sleeve-casual-shirt-for-mens-sw1120s-2019-05-01-5cc99f377c5d2.jpg', 'half-sleeve-casual-shirt-for-mens-sw1120s-2019-05-01-5cc99f44f2b00.jpg', 'half-sleeve-casual-shirt-for-mens-sw1120s-2019-04-28-5cc589e1dfc0e.jpg', 'half-sleeve-casual-shirt-for-mens-sw1120s-2019-05-02-5cca225185f51.jpg', 'half-sleeve-casual-shirt-for-mens-sw1120s', 1, '2019-04-26 22:42:42', '2019-05-01 22:48:50', NULL),
(2, 10, 'Men\'s Half Sleeve', '450751', 200.00, 15, 94, 1, 'Half Sleeve Casual Shirt for Men - SW1120S is comfortable to wear and looks very fashionable. This full sleeve shirt ensures immense of wearing comfort.', '<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Fabrics: 100% Cotton.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Quality: 100% export quality.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Collection for Men.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Styling &amp; Slim Fit.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Color: As given picture.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Size Measurement: M (long 29 \", Chest 40\"), L (Long 30&rdquo;, Chest 42&rdquo;), XL (Long: 31\", Chest: 44\"), XXL (Long: 32\", Chest: 46\")</li>\r\n</ul>', 1, 'mens-half-sleeve-2019-04-27-5cc3a649b7b76.jpg', 'mens-half-sleeve-2019-04-27-5cc3a649be94a.jpg', 'mens-half-sleeve-2019-04-27-5cc3a649c1a7a.jpg', 'mens-half-sleeve-2019-04-27-5cc3a649c7aaa.jpg', 'mens-half-sleeve', 1, '2019-04-27 00:46:01', '2019-06-17 11:10:55', NULL),
(3, 5, 'Smart Watch 2.0', '412613', 1500.00, 15, 100, 0, 'Half Sleeve Casual Shirt for Men - SW1120S is comfortable to wear and looks very fashionable. This full sleeve shirt ensures immense of wearing comfort.', '<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Fabrics: 100% Cotton.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Quality: 100% export quality.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Collection for Men.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Styling &amp; Slim Fit.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Color: As given picture.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Size Measurement: M (long 29 \", Chest 40\"), L (Long 30&rdquo;, Chest 42&rdquo;), XL (Long: 31\", Chest: 44\"), XXL (Long: 32\", Chest: 46\")</li>\r\n</ul>', 1, 'smart-watch-20-2019-04-28-5cc58a2e1f4b9.jpg', 'smart-watch-20-2019-04-28-5cc58a2e2dd9a.jpg', 'smart-watch-20-2019-04-28-5cc58a2e34b25.jpg', NULL, 'smart-watch-20', 1, '2019-04-27 00:56:34', '2019-04-28 11:10:38', NULL),
(4, 15, 'Versace Bright Crystal', '425513', 3000.00, 10, 100, 0, NULL, '<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Fabrics: 100% Cotton.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Quality: 100% export quality.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Collection for Men.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Styling &amp; Slim Fit.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Color: As given picture.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Size Measurement: M (long 29 \", Chest 40\"), L (Long 30&rdquo;, Chest 42&rdquo;), XL (Long: 31\", Chest: 44\"), XXL (Long: 32\", Chest: 46\")</li>\r\n</ul>', 1, 'versace-bright-crystal-2019-05-01-5cc99fa4bbaf6.jpg', 'versace-bright-crystal-2019-04-27-5cc3a9c0935f2.jpg', 'versace-bright-crystal-2019-05-02-5cca22a1af204.jpg', NULL, 'versace-bright-crystal', 1, '2019-04-27 01:00:48', '2019-05-01 22:50:09', NULL),
(5, 4, 'Bluetooth Headset', '850540', 150.00, 10, 100, 0, 'Half Sleeve Casual Shirt for Men - SW1120S is comfortable to wear and looks very fashionable. This full sleeve shirt ensures immense of wearing comfort.', '<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Fabrics: 100% Cotton.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Quality: 100% export quality.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Collection for Men.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Styling &amp; Slim Fit.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Color: As given picture.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Size Measurement: M (long 29 \", Chest 40\"), L (Long 30&rdquo;, Chest 42&rdquo;), XL (Long: 31\", Chest: 44\"), XXL (Long: 32\", Chest: 46\")</li>\r\n</ul>', 1, 'jennifer-leather-sofa-2019-04-27-5cc3ab09a2448.jpg', 'jennifer-leather-sofa-2019-04-27-5cc3ab09a6c44.jpg', 'jennifer-leather-sofa-2019-04-27-5cc3ab09aecb1.jpg', NULL, 'bluetooth-headset', 1, '2019-04-27 01:06:17', '2019-04-28 16:55:41', NULL),
(6, 10, 'United Colors of Benetton', '379178', 1200.00, 10, 100, 0, 'Half Sleeve Casual Shirt for Men - SW1120S is comfortable to wear and looks very fashionable. This full sleeve shirt ensures immense of wearing comfort.', '<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Fabrics: 100% Cotton.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Quality: 100% export quality.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Collection for Men.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Styling &amp; Slim Fit.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Color: As given picture.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Size Measurement: M (long 29 \", Chest 40\"), L (Long 30&rdquo;, Chest 42&rdquo;), XL (Long: 31\", Chest: 44\"), XXL (Long: 32\", Chest: 46\")</li>\r\n</ul>', 1, 'united-colors-of-benetton-2019-04-28-5cc58a73b4ea4.jpg', 'united-colors-of-benetton-2019-04-28-5cc58a73c2e3e.jpg', 'united-colors-of-benetton-2019-05-02-5cca22da5e729.jpg', NULL, 'united-colors-of-benetton', 1, '2019-04-27 01:08:35', '2019-05-01 22:51:06', NULL),
(8, 16, 'Jennifer Leather Sofa', '700459', 600.00, 10, 100, 0, 'Half Sleeve Casual Shirt for Men - SW1120S is comfortable to wear and looks very fashionable. This full sleeve shirt ensures immense of wearing comfort.', '<p>&nbsp;</p>\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">Fabrics: 100% Cotton.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Quality: 100% export quality.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Collection for Men.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Styling &amp; Slim Fit.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Color: As given picture.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Size Measurement: M (long 29 \", Chest 40\"), L (Long 30&rdquo;, Chest 42&rdquo;), XL (Long: 31\", Chest: 44\"), XXL (Long: 32\", Chest: 46\")</li>\r\n</ul>', 1, 'jennifer-leather-sofa-2019-05-01-5cc9cb959c0c9.jpg', 'jennifer-leather-sofa-2019-05-01-5cc9cb95b36c7.jpg', 'jennifer-leather-sofa-2019-05-01-5cc9cb95d7f0e.jpg', NULL, 'jennifer-leather-sofa', 1, '2019-04-27 01:19:14', '2019-05-01 16:38:46', NULL),
(9, 13, 'SALE OFF  30% FOR ALL', '310613', 400.00, 15, 95, 6, 'Half Sleeve Casual Shirt for Men - SW1120S is comfortable to wear and looks very fashionable. This full sleeve shirt ensures immense of wearing comfort.', '<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">Fabrics: 100% Cotton.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Quality: 100% export quality.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Collection for Men.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Styling &amp; Slim Fit.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Color: As given picture.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Size Measurement: M (long 29 \", Chest 40\"), L (Long 30&rdquo;, Chest 42&rdquo;), XL (Long: 31\", Chest: 44\"), XXL (Long: 32\", Chest: 46\")</li>\r\n</ul>', 1, 'sale-off-30-for-all-2019-04-28-5cc57e69c617b.jpg', 'sale-off-30-for-all-2019-04-28-5cc57e69d2180.jpg', 'sale-off-30-for-all-2019-04-28-5cc57e69da259.jpg', 'sale-off-30-for-all-2019-04-28-5cc57e69defbe.jpg', 'sale-off-30-for-all', 1, '2019-04-27 01:22:09', '2020-02-21 15:33:13', NULL),
(10, 12, 'Half Sleeve Casual Shirt for Mens', '915576', 100.00, 10, 100, 0, 'Half Sleeve Casual Shirt for Men - SW1120S is comfortable to wear and looks very fashionable. This full sleeve shirt ensures immense of wearing comfort.', '<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">Fabrics: 100% Cotton.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Quality: 100% export quality.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Collection for Men.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Styling &amp; Slim Fit.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Color: As given picture.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Size Measurement: M (long 29 \", Chest 40\"), L (Long 30&rdquo;, Chest 42&rdquo;), XL (Long: 31\", Chest: 44\"), XXL (Long: 32\", Chest: 46\")</li>\r\n</ul>', 1, 'half-sleeve-casual-shirt-for-mens-2019-04-28-5cc5cbd53548e.jpg', 'half-sleeve-casual-shirt-for-mens-2019-04-27-5cc41b5014303.jpg', NULL, NULL, 'half-sleeve-casual-shirt-for-mens', 1, '2019-04-27 09:05:20', '2019-04-28 15:50:45', NULL),
(11, 11, 'Half Sleeve Casual Shirt for Womens', '619715', 200.00, 10, 100, 0, 'Half Sleeve Casual Shirt for Men - SW1120S is comfortable to wear and looks very fashionable. This full sleeve shirt ensures immense of wearing comfort.', '<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">Fabrics: 100% Cotton.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Quality: 100% export quality.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Collection for Men.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Styling &amp; Slim Fit.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Color: As given picture.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Size Measurement: M (long 29 \", Chest 40\"), L (Long 30&rdquo;, Chest 42&rdquo;), XL (Long: 31\", Chest: 44\"), XXL (Long: 32\", Chest: 46\")</li>\r\n</ul>', 1, 'half-sleeve-casual-shirt-for-womens-2019-04-28-5cc5c89b0f5cc.jpg', 'half-sleeve-casual-shirt-for-womens-2019-04-28-5cc5c89b71060.jpg', 'half-sleeve-casual-shirt-for-womens-2019-05-02-5cca23208350b.jpg', NULL, 'half-sleeve-casual-shirt-for-womens', 1, '2019-04-27 09:08:36', '2019-05-01 22:52:16', NULL),
(12, 10, 'T-Shirt for Mens', '155959', 800.00, 10, 100, 0, 'Half Sleeve Casual Shirt for Men - SW1120S is comfortable to wear and looks very fashionable. This full sleeve shirt ensures immense of wearing comfort.', '<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Fabrics: 100% Cotton.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Quality: 100% export quality.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Collection for Men.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Styling &amp; Slim Fit.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Color: As given picture.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Size Measurement: M (long 29 \", Chest 40\"), L (Long 30&rdquo;, Chest 42&rdquo;), XL (Long: 31\", Chest: 44\"), XXL (Long: 32\", Chest: 46\")</li>\r\n</ul>', 1, 't-shirt-for-mens-2019-04-27-5cc41cd373ebb.jpg', 't-shirt-for-mens-2019-04-27-5cc41cd38941e.jpg', NULL, NULL, 't-shirt-for-mens', 1, '2019-04-27 09:11:47', '2019-05-01 02:01:41', NULL),
(13, 10, 'Full Shirt for Mens', '580042', 800.00, 10, 100, 0, 'Half Sleeve Casual Shirt for Men - SW1120S is comfortable to wear and looks very fashionable. This full sleeve shirt ensures immense of wearing comfort.', '<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Fabrics: 100% Cotton.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Quality: 100% export quality.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Collection for Men.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Styling &amp; Slim Fit.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Color: As given picture.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Size Measurement: M (long 29 \", Chest 40\"), L (Long 30&rdquo;, Chest 42&rdquo;), XL (Long: 31\", Chest: 44\"), XXL (Long: 32\", Chest: 46\")</li>\r\n</ul>', 1, 'full-for-mens-2019-04-27-5cc420f37a81e.jpg', 't-shirt-for-mens-2019-04-27-5cc41d5d1a68c.jpg', NULL, NULL, 'full-shirt-for-mens', 1, '2019-04-27 09:14:05', '2019-05-01 02:02:36', NULL),
(14, 10, 'Full Sleeve Casual Shirt for Men', '739910', 700.00, 10, 100, 0, 'Half Sleeve Casual Shirt for Men - SW1120S is comfortable to wear and looks very fashionable. This full sleeve shirt ensures immense of wearing comfort.', '<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">Fabrics: 100% Cotton.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Quality: 100% export quality.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Collection for Men.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Styling &amp; Slim Fit.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Color: As given picture.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Size Measurement: M (long 29 \", Chest 40\"), L (Long 30&rdquo;, Chest 42&rdquo;), XL (Long: 31\", Chest: 44\"), XXL (Long: 32\", Chest: 46\")</li>\r\n</ul>', 1, 'full-sleeve-casual-shirt-for-men-2019-05-01-5cc9ca0cd0359.jpg', 'full-sleeve-casual-shirt-for-men-2019-05-01-5cc9ca37eca59.jpg', 'full-sleeve-casual-shirt-for-men-2019-04-28-5cc57ed4d6d6f.jpg', NULL, 'full-sleeve-casual-shirt-for-men', 1, '2019-04-27 09:23:06', '2019-05-01 16:36:46', NULL),
(15, 5, 'Mack Pro', '913535', 100.00, 10, 99, 1, 'Half Sleeve Casual Shirt for Men - SW1120S is comfortable to wear and looks very fashionable. This full sleeve shirt ensures immense of wearing comfort.', '<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Fabrics: 100% Cotton.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Quality: 100% export quality.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Collection for Men.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Styling &amp; Slim Fit.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Color: As given picture.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; outline: 0px; list-style: none; color: #767676; font-size: 14px;\">&nbsp;Size Measurement: M (long 29 \", Chest 40\"), L (Long 30&rdquo;, Chest 42&rdquo;), XL (Long: 31\", Chest: 44\"), XXL (Long: 32\", Chest: 46\")</li>\r\n</ul>', 1, 'laptop-1200dc4f-2019-04-27-5cc47ebd5dad3.jpg', 'laptop-1200dc4f-2019-04-27-5cc47ebd7f825.jpg', 'laptop-1200dc4f-2019-04-27-5cc47ebd90f73.jpg', 'laptop-1200dc4f-2019-04-27-5cc47ebd975d5.jpg', 'mack-pro', 1, '2019-04-27 16:09:33', '2020-02-21 15:33:13', NULL),
(18, 12, 'LP - Black Solid Polo T-Shirt', '997468', 350.00, 10, 100, 0, 'When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic remaining essentially unchanged', '<p>&nbsp;<span style=\"color: #777777; font-family: \'Open Sans\', sans-serif; font-size: 14px;\">Etiam molestie sit amet arcu vel dictum. Integer mattis est nec porta porttitor. Maecenas condimentum sapien eget urna condimentum, non sagittis ante dapibus. Donec congue libero ut ex malesuada auctor. Vivamus at urna et erat aliquam pharetra. Nulla facilisi. Morbi feugiat tortor finibus elit aliquet tempor. Generated 5 paragraphs, 453 words, 3065 bytes of Lorem Ipsum</span></p>\r\n<div class=\" col-md-6\" style=\"box-sizing: border-box; position: relative; width: 539px; min-height: 1px; padding-right: 15px; padding-left: 15px; -webkit-box-flex: 0; flex: 0 0 50%; max-width: 50%; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 14px;\">\r\n<h4 style=\"box-sizing: border-box; font-family: Montserrat, sans-serif; margin-top: 0px; margin-bottom: 15px; text-transform: uppercase; font-size: 18px;\">VIVAMUS AT URNA</h4>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 30px; color: #777777;\">\r\n<li style=\"box-sizing: border-box;\">Etiam molestie sit amet arcu vel dictum</li>\r\n<li style=\"box-sizing: border-box;\">Integer mattis est nec porta porttitor</li>\r\n<li style=\"box-sizing: border-box;\">Maecenas condimentum sapien eget urna condimentum</li>\r\n<li style=\"box-sizing: border-box;\">Donec congue libero ut ex malesuada auctor</li>\r\n<li style=\"box-sizing: border-box;\">Generated 5 paragraphs, 453 words</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\" style=\"box-sizing: border-box; position: relative; width: 539px; min-height: 1px; padding-right: 15px; padding-left: 15px; -webkit-box-flex: 0; flex: 0 0 50%; max-width: 50%; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 14px;\">\r\n<p style=\"box-sizing: border-box; color: #777777; margin-bottom: 30px;\">Etiam molestie sit amet arcu vel dictum. Integer mattis est nec porta porttitor. Maecenas condimentum sapien eget urna condimentum, non sagittis ante dapibus. Donec congue libero ut ex malesuada auctor. Vivamus at urna et erat aliquam pharetra. Nulla facilisi. Morbi feugiat tortor finibus elit aliquet tempor. Generated 5 paragraphs, 453 words, 3065 bytes of Lorem Ipsum</p>\r\n<h4 style=\"box-sizing: border-box; font-family: Montserrat, sans-serif; margin-top: 0px; margin-bottom: 15px; text-transform: uppercase; font-size: 18px;\">HADDING FOUR</h4>\r\n<h5 style=\"box-sizing: border-box; font-family: Montserrat, sans-serif; margin-top: 0px; margin-bottom: 15px; text-transform: uppercase; font-size: 16px;\">HADDING FIVE</h5>\r\n<h6 style=\"box-sizing: border-box; font-family: Montserrat, sans-serif; margin-top: 0px; margin-bottom: 15px; text-transform: uppercase; font-size: 14px;\">HADDING SIX</h6>\r\n</div>', 1, 'lp-black-solid-polo-t-shirt-2019-05-01-5cc9a68895910.jpg', 'lp-black-solid-polo-t-shirt-2019-05-01-5cc9a688acd3c.jpg', NULL, NULL, 'lp-black-solid-polo-t-shirt', 1, '2019-05-01 14:00:40', '2019-05-01 14:23:38', NULL),
(19, 12, 'Cotton Block Printed Multi Color Shalwar Kameez with Orna', '921044', 100.00, NULL, 100, 0, 'Product details of Cotton Block Printed Multi Color Shalwar Kameez with Orna Pyjama For Women Very Comfortable for Hot Wea', '<ul class=\"\" style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Helvetica Neue\', Helvetica, sans-serif; font-size: 12px;\">\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i3.1796687bnAJ8MT\">Product Type: Shalwar Kameez / Three Piece</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: As same as picture (Guaranteed)</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Fabric: Cotton (100%)</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Orna Fabric: Cotton (100%)</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i5.1796687bnAJ8MT\">Pyjama Fabric: Cotton (100%)</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Work: Block Printed (Very Latest Stylish)</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size: Regular Size / Free Size</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fitting Advice: Anyone can fit this dress according to her size</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Advantage: Very Comfortable for hot weather &amp; all season too</li>\r\n<li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.1796687bnAJ8MT\">Picture Type: This Picture is Real Pic of This Product</li>\r\n<li></li>\r\n</ul>', 1, 'cotton-block-printed-multi-color-shalwar-kameez-with-orna-2019-05-03-5ccb7d6c29932.jpg', 'cotton-block-printed-multi-color-shalwar-kameez-with-orna-2019-05-03-5ccb7d6d6d113.jpg', NULL, NULL, 'cotton-block-printed-multi-color-shalwar-kameez-with-orna', 1, '2019-05-02 23:29:49', '2019-05-02 23:32:40', NULL),
(20, 12, 'tops', '717613', 4563.00, 4233, 9, 1, NULL, '<p>sd fsfadasdadasd&nbsp; f sdad</p>', 1, 'tops-2020-02-21-5e4ff775ecca9.jpg', NULL, NULL, NULL, 'tops', 1, '2020-02-21 15:29:58', '2020-02-21 15:33:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `size_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 8, '2019-04-26 22:42:42', '2019-04-26 22:42:42'),
(2, 1, 9, '2019-04-26 22:42:42', '2019-04-26 22:42:42'),
(3, 1, 10, '2019-04-26 22:42:42', '2019-04-26 22:42:42'),
(4, 1, 11, '2019-04-27 00:08:26', '2019-04-27 00:08:26'),
(5, 2, 7, '2019-04-27 00:46:02', '2019-04-27 00:46:02'),
(6, 2, 8, '2019-04-27 00:46:02', '2019-04-27 00:46:02'),
(7, 2, 9, '2019-04-27 00:46:02', '2019-04-27 00:46:02'),
(8, 2, 10, '2019-04-27 00:46:02', '2019-04-27 00:46:02'),
(9, 3, 7, '2019-04-27 00:56:34', '2019-04-27 00:56:34'),
(10, 3, 8, '2019-04-27 00:56:34', '2019-04-27 00:56:34'),
(11, 3, 9, '2019-04-27 00:56:34', '2019-04-27 00:56:34'),
(12, 4, 10, '2019-04-27 01:00:48', '2019-04-27 01:00:48'),
(13, 4, 11, '2019-04-27 01:00:48', '2019-04-27 01:00:48'),
(14, 4, 12, '2019-04-27 01:00:48', '2019-04-27 01:00:48'),
(15, 5, 8, '2019-04-27 01:06:17', '2019-04-27 01:06:17'),
(16, 5, 9, '2019-04-27 01:06:17', '2019-04-27 01:06:17'),
(17, 5, 10, '2019-04-27 01:06:17', '2019-04-27 01:06:17'),
(18, 6, 10, '2019-04-27 01:08:35', '2019-04-27 01:08:35'),
(19, 6, 11, '2019-04-27 01:08:35', '2019-04-27 01:08:35'),
(20, 6, 12, '2019-04-27 01:08:35', '2019-04-27 01:08:35'),
(24, 8, 10, '2019-04-27 01:19:15', '2019-04-27 01:19:15'),
(25, 8, 11, '2019-04-27 01:19:15', '2019-04-27 01:19:15'),
(26, 8, 12, '2019-04-27 01:19:15', '2019-04-27 01:19:15'),
(27, 9, 7, '2019-04-27 01:22:10', '2019-04-27 01:22:10'),
(28, 9, 8, '2019-04-27 01:22:10', '2019-04-27 01:22:10'),
(29, 9, 9, '2019-04-27 01:22:10', '2019-04-27 01:22:10'),
(30, 10, 11, '2019-04-27 09:05:20', '2019-04-27 09:05:20'),
(31, 10, 12, '2019-04-27 09:05:20', '2019-04-27 09:05:20'),
(32, 11, 10, '2019-04-27 09:08:37', '2019-04-27 09:08:37'),
(33, 11, 11, '2019-04-27 09:08:37', '2019-04-27 09:08:37'),
(34, 11, 12, '2019-04-27 09:08:37', '2019-04-27 09:08:37'),
(35, 12, 9, '2019-04-27 09:11:47', '2019-04-27 09:11:47'),
(36, 12, 10, '2019-04-27 09:11:47', '2019-04-27 09:11:47'),
(37, 12, 11, '2019-04-27 09:11:47', '2019-04-27 09:11:47'),
(38, 13, 9, '2019-04-27 09:14:05', '2019-04-27 09:14:05'),
(39, 13, 10, '2019-04-27 09:14:05', '2019-04-27 09:14:05'),
(40, 13, 11, '2019-04-27 09:14:05', '2019-04-27 09:14:05'),
(41, 14, 7, '2019-04-27 09:23:07', '2019-04-27 09:23:07'),
(42, 14, 8, '2019-04-27 09:23:07', '2019-04-27 09:23:07'),
(43, 14, 9, '2019-04-27 09:23:07', '2019-04-27 09:23:07'),
(44, 15, 7, '2019-04-27 16:09:33', '2019-04-27 16:09:33'),
(45, 15, 8, '2019-04-27 16:13:00', '2019-04-27 16:13:00'),
(46, 18, 9, '2019-05-01 14:00:41', '2019-05-01 14:00:41'),
(47, 18, 10, '2019-05-01 14:00:41', '2019-05-01 14:00:41'),
(48, 18, 11, '2019-05-01 14:00:41', '2019-05-01 14:00:41'),
(49, 19, 7, '2019-05-02 23:29:50', '2019-05-02 23:29:50'),
(50, 19, 8, '2019-05-02 23:29:50', '2019-05-02 23:29:50'),
(51, 19, 9, '2019-05-02 23:29:50', '2019-05-02 23:29:50'),
(52, 19, 10, '2019-05-02 23:29:50', '2019-05-02 23:29:50'),
(53, 20, 7, '2020-02-21 15:29:58', '2020-02-21 15:29:58'),
(54, 20, 9, '2020-02-21 15:29:58', '2020-02-21 15:29:58'),
(55, 20, 10, '2020-02-21 15:29:58', '2020-02-21 15:29:58'),
(56, 20, 11, '2020-02-21 15:29:58', '2020-02-21 15:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `product_id`, `type_id`, `created_at`, `updated_at`) VALUES
(2, 1, 4, '2019-04-26 22:42:42', '2019-04-26 22:42:42'),
(3, 2, 1, '2019-04-27 00:46:02', '2019-04-27 00:46:02'),
(4, 2, 4, '2019-04-27 00:46:02', '2019-04-27 00:46:02'),
(5, 3, 3, '2019-04-27 00:56:35', '2019-04-27 00:56:35'),
(6, 3, 4, '2019-04-27 00:56:35', '2019-04-27 00:56:35'),
(9, 5, 3, '2019-04-27 01:06:17', '2019-04-27 01:06:17'),
(10, 5, 4, '2019-04-27 01:06:17', '2019-04-27 01:06:17'),
(11, 6, 4, '2019-04-27 01:08:35', '2019-04-27 01:08:35'),
(13, 5, 6, '2019-04-27 01:09:43', '2019-04-27 01:09:43'),
(16, 9, 1, '2019-04-27 01:22:10', '2019-04-27 01:22:10'),
(17, 9, 3, '2019-04-27 01:22:10', '2019-04-27 01:22:10'),
(18, 9, 4, '2019-04-27 01:22:10', '2019-04-27 01:22:10'),
(19, 10, 3, '2019-04-27 09:05:20', '2019-04-27 09:05:20'),
(20, 11, 3, '2019-04-27 09:08:37', '2019-04-27 09:08:37'),
(21, 12, 5, '2019-04-27 09:11:48', '2019-04-27 09:11:48'),
(22, 13, 5, '2019-04-27 09:14:05', '2019-04-27 09:14:05'),
(27, 15, 3, '2019-04-27 16:13:00', '2019-04-27 16:13:00'),
(28, 15, 6, '2019-04-27 16:13:00', '2019-04-27 16:13:00'),
(29, 18, 2, '2019-05-01 14:00:41', '2019-05-01 14:00:41'),
(34, 14, 2, '2019-05-01 16:36:46', '2019-05-01 16:36:46'),
(35, 4, 2, '2019-05-01 16:37:12', '2019-05-01 16:37:12'),
(36, 8, 2, '2019-05-01 16:38:46', '2019-05-01 16:38:46'),
(37, 20, 4, '2020-02-21 15:29:58', '2020-02-21 15:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 1, 'super-admin', NULL, NULL),
(2, 'Admin', 1, 'admin', NULL, NULL),
(3, 'Editor', 1, 'editpr', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `zip_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `country_id`, `city_id`, `zip_code`, `created_at`, `updated_at`) VALUES
(7, 'Shahadat', 'Hossain', 'shahadat015@gmail.com', '(400) 888 8888', '203, East Kazipara, Mirpur, Dhaka.', 1, 2, 99101, '2019-05-04 23:41:15', '2019-05-04 23:41:15'),
(9, 'Shahadat', 'Hossain', 'shahadat015@gmail.com', '01830964337', '203, East Kazipara, Mirpur, Dhaka.', 1, 1, 1216, '2019-05-05 01:32:30', '2019-05-05 01:32:30'),
(15, 'John', 'Hossain', 'john@gmail.com', '+657328446390', '4504 Union Street', 3, 2, 98118, '2019-06-30 05:55:54', '2019-06-30 05:55:54'),
(16, 'morsalin', 'piash', 'mpiash32@gmail.com', '46798765465', 'lalbagh kella, lalbagh,dhaka', 1, 1, 1234, '2020-02-21 15:26:25', '2020-02-21 15:26:25'),
(17, 'shifat', 'hasan', 'shifat@gmail.com', '6548796513', 'asd fauysuysgUYASGasa', 1, 2, 4563, '2020-02-21 15:33:04', '2020-02-21 15:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(7, 'S', 1, NULL, NULL),
(8, 'M', 1, NULL, NULL),
(9, 'L', 1, NULL, NULL),
(10, 'XL', 1, NULL, NULL),
(11, 'XXL', 1, NULL, NULL),
(12, 'XXXL', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sociallinks`
--

CREATE TABLE `sociallinks` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sociallinks`
--

INSERT INTO `sociallinks` (`id`, `facebook`, `twitter`, `google`, `instagram`, `linkedin`, `pinterest`, `created_at`, `updated_at`) VALUES
(1, 'https://facebook.com', 'https://twitter.com', 'https://google-plus.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL, '2020-02-23 08:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maincategory_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `maincategory_id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New in', 1, 'new-in', 1, '2019-04-25 07:52:01', '2019-04-25 07:52:01'),
(2, 'Clothing', 1, 'clothing', 1, '2019-04-25 07:52:09', '2019-04-25 07:52:09'),
(3, 'Accessories', 1, 'accessories', 1, '2019-04-25 07:52:15', '2019-04-25 07:52:15'),
(4, 'New in', 2, 'new-in', 1, '2019-04-25 07:52:26', '2019-04-25 07:52:26'),
(5, 'Accessories', 2, 'accessories', 1, '2019-04-25 07:52:41', '2019-04-25 07:52:41'),
(8, 'electric', 11, 'electric', 1, '2020-02-24 04:32:09', '2020-02-24 04:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'mp@gmail.com', 1, '2020-02-25 08:34:20', '2020-02-25 08:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Summer Collection', 'summer-collection', 1, NULL, NULL),
(2, 'Winter Collection', 'winter-collection', 1, NULL, NULL),
(3, 'Featured Products', 'featured-product', 1, NULL, NULL),
(4, 'New Arival', 'new-arrival', 1, NULL, NULL),
(5, 'Trendy T-shirt', 'trendy-t-shirt', 1, NULL, NULL),
(6, 'Gadget & Accessories', 'gadget-&-accessories', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `can_create` tinyint(1) DEFAULT NULL,
  `can_view` tinyint(1) DEFAULT NULL,
  `can_edit` tinyint(1) DEFAULT NULL,
  `can_delete` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `phone`, `image`, `password`, `can_create`, `can_view`, `can_edit`, `can_delete`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'morsalin piash', 'morsalin4967@gmail.com', '05494984915', 'morsalin-piash-2020-02-21-5e50057f9ccf9.jpg', '$2y$10$z1dt9Eae1asqxjcaWhgDROq6PPSVJ6TGoXzjLEx3bYPOH0UVpvAMe', 1, 1, 1, 1, 'TgJtS4RlcOOf4CBXr4jG9bWDNzbyTqqGnCC3fsYXfVqcO3tTvl4GrsEBTDBJ', '2019-04-30 18:07:46', '2020-02-21 16:56:35', NULL),
(3, 1, 'piash Ahmed', 'piash@gmail.com', '01830964337', 'saidul-islam-uzzal-2019-04-24-5cc05a0419b29.png', '$2y$10$As6N1JApUarJemYaFy1WlecB0bh6/LCYZk9yQ0ioCK67sfKdY6KRa', 1, 1, 1, 1, NULL, '2019-05-31 18:07:46', '2019-04-30 17:00:59', NULL),
(4, 2, 'sunny ahmed', 'sunny@gmail.com', '01830964337', 'shisir-imran-2019-04-26-5cc233abd0428.png', '$2y$10$0tnq1K492nzmqmynrfepcedfZOCyRfRwEJKbYXW/w6od4dRphJgSG', 1, 1, 0, 0, 'HxXrbydyey8qXrUSJvYFUurs4k34GZgkP9WESiiDRlN3RnYlxDpICcr71NF3', '2019-05-31 18:07:46', '2019-04-25 22:51:58', NULL),
(5, 2, 'sumon ahmed', 'sumon@gmail.com', '01830964337', 'sumon-ahmed-2020-02-22-5e5146f707cac.jpg', '$2y$10$uObObuNU170mWgie/0M6KODKCwkabHKWYEcVaK66xxTpdjDE1zldy', 1, 1, 0, 0, 'jbbxiyCSJX2rwMkoKqE2guriwvbEyYDkuXj8bomjwzcjxVwZKxglnsGW1bAb', '2019-06-30 18:07:46', '2020-02-22 15:21:28', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basicinfos`
--
ALTER TABLE `basicinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colors_name_unique` (`name`);

--
-- Indexes for table `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guests_slug_unique` (`slug`);

--
-- Indexes for table `maincategories`
--
ALTER TABLE `maincategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `maincategories_slug_unique` (`slug`);

--
-- Indexes for table `maincategory_product`
--
ALTER TABLE `maincategory_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacies`
--
ALTER TABLE `privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sizes_name_unique` (`name`);

--
-- Indexes for table `sociallinks`
--
ALTER TABLE `sociallinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `basicinfos`
--
ALTER TABLE `basicinfos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `color_product`
--
ALTER TABLE `color_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `maincategories`
--
ALTER TABLE `maincategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `maincategory_product`
--
ALTER TABLE `maincategory_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `privacies`
--
ALTER TABLE `privacies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sociallinks`
--
ALTER TABLE `sociallinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
