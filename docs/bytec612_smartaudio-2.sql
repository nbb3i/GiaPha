-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 17, 2026 at 04:52 PM
-- Server version: 10.11.14-MariaDB
-- PHP Version: 8.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bytec612_smartaudio`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_config`
--

CREATE TABLE `admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` longtext NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_config`
--

INSERT INTO `admin_config` (`id`, `name`, `value`, `description`, `created_at`, `updated_at`) VALUES
(1, 'flogo', 'asset/image/flogo.jpg', NULL, '2022-06-21 08:33:22', '2023-02-17 00:56:44'),
(2, 'footer1', '<p><img alt=\"amz logo\" src=\"/storage/flogo.png\" style=\"width:100%\"></p>\r\n<p><strong>CÔNG TY CỔ PHẦN AMZ VIỆT NAM</strong><br>\r\n<strong><i class=\"bi bi-geo-alt\"></i> Địa chỉ:</strong>&nbsp;Tổ 8 P. Yên Nghĩa, Q. Hà Đông, TP. Hà Nội<br>\r\n<strong><i class=\"bi bi-globe\"></i> Web:</strong>&nbsp;<a href=\"https://amz.com.vn/\" rel=\"nofollow\" target=\"_blank\">https://amz.com.vn</a><br>\r\n<strong<i class=\"bi bi-envelope\"> Email:&nbsp;kinhdoanh@amz.com.vn; tvduc@amz.com.vn<br>\r\n<strong><i class=\"bi bi-phone-vibrate\"></i> ĐT:</strong>&nbsp;024 8586 3288, 0989 136 168</strong<i></p>\r\n<ul class=\"social-link d-flex list-style-none ps-0\">\r\n<li><a href=\"#\"><i class=\"bi bi-twitter\"></i></a></li>\r\n<li><a href=\"#\"><i class=\"bi bi-youtube\"></i></a></li>\r\n<li><a href=\"#\"><i class=\"bi bi-facebook\"></i></a></li>\r\n<li><a href=\"#\"><i class=\"bi bi-youtube\"></i></a></li>\r\n</ul>', NULL, '2022-06-22 07:32:47', '2023-08-05 02:40:46'),
(3, 'footer2', '<h2>Danh mục sản phẩm</h2>\r\n\r\n<p><a href=\"#\">Computers &amp; Laptop</a></p>\r\n\r\n<p><a href=\"#\">Digital Cameras</a></p>\r\n\r\n<p><a href=\"#\">Mobiles &amp; Tablets</a></p>\r\n\r\n<p><a href=\"#\">TV &amp; Home Theater</a></p>\r\n\r\n<p><a href=\"#\">Audio &amp; Video</a></p>\r\n\r\n<p><a href=\"#\">Portable Speakers</a></p>\r\n\r\n<p><a href=\"#\">Home Appliances</a></p>\r\n\r\n<p><a href=\"#\">Music &amp; Video Games</a></p>', NULL, '2022-06-22 07:40:42', '2023-08-05 02:55:48'),
(30, 'homepage_seo_title', 'Công ty cổ phần AMZ việt nam', NULL, '2023-08-06 18:10:51', '2023-08-06 18:10:51'),
(4, 'footer3', '<h2>Chăm s&oacute;c kh&aacute;ch h&agrave;ng</h2>\r\n<p><a href=\"/chinh-sach-doi-tra-hang\">Chính sách đổi trả hàng</a></p>\r\n<p><a href=\"/phuong-thuc-van-chuyen\">Phương thức vận chuyển</a></p>\r\n<p><a href=\"/chinh-sach-dai-ly\">Chính sách đại lý</a></p>\r\n<p><a href=\"/hop-tac-kinh-doanh\">Hợp tác kinh doanh</a></p>\r\n<p><a href=\"/cau-hoi-thuong-gap\">C&acirc;u hỏi thường gặp</a></p>\r\n\r\n<h2 class=\"mt-2\">Giải pháp & Dịch vụ</h2>\r\n<p><a href=\"/giai-phap\">Các giải pháp</a></p>\r\n<p><a href=\"/dich-vu\">Dịch vụ</a></p>', NULL, '2022-06-22 07:41:28', '2023-08-08 00:31:08'),
(5, 'footer4', '<h2>Giới thiệu về AMZ</h2>\r\n<p><a href=\"/ve-chung-toi\">Về ch&uacute;ng t&ocirc;i</a></p>\r\n<p><a href=\"/lien-he\">Li&ecirc;n hệ</a></p>\r\n<p><a href=\"/chinh-sach-bao-mat\">Ch&iacute;nh s&aacute;ch bảo mật</a></p>\r\n<p><a href=\"/dieu-khoan\">Điều khoản</a></p>\r\n<p><a href=\"/tin-tuc\">Tin tức nội bộ</a></p>\r\n<p><a href=\"/hoat-dong-xa-hoi\">Tin tức nội bộ</a></p>\r\n<p><a href=\"/tin-bao-chi\">B&aacute;o ch&iacute;</a></p>', NULL, '2022-06-22 07:46:23', '2023-08-08 00:27:55'),
(32, 'shop_seo_title', 'Trang chủ sản phẩm', NULL, '2023-08-06 18:13:31', '2023-08-06 18:13:31'),
(33, 'shop_seo_description', 'Các sản phẩm của công ty chúng tôi bao gồm:', NULL, '2023-08-06 18:13:49', '2023-08-06 18:13:49'),
(34, 'lien-he-ban-do', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d70890.59245640723!2d105.69745799573822!3d20.963442928555207!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313453c3572df0ad%3A0x11ab4275f4c21bb7!2zQ8OUTkcgVFkgQ-G7lCBQSOG6pk4gQU1aIFZJ4buGVCBOQU0!5e0!3m2!1svi!2sus!4v1691403584557!5m2!1svi!2sus\" width=\"100%\" height=\"600\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, '2023-08-07 03:13:34', '2023-08-07 03:20:06'),
(21, 'search', 'Iphone,Flycam,Xiaomi,Nokia,Realme,Samsung,Dell', NULL, '2022-08-14 23:44:29', '2023-08-03 00:14:18'),
(23, 'hotline', '<p>Miễn ph&iacute; vận chuyển to&agrave;n quốc</p>', NULL, '2023-02-09 02:36:25', '2023-08-03 18:12:08'),
(24, 'homepage-contact', '<b>Giải Đáp Mọi Thắc Mắc</b>\r\n<p class=\"py-2 mb-0\">Bạn cần tìm giải pháp an ninh cho gia đình với các sản phẩm khóa cửa vân tay, camera quan sát, chuông cửa màn hình?</p>\r\n<p class=\"py-2 mb-0\">Bạn cần giải pháp chấm công, kiểm soát ra vào cho doanh nghiệp?</p>\r\n<p  class=\"py-2 mb-0\" >Hãy để lại thắc mắc và câu hỏi của bạn. AHK VIỆT NAM sẽ giải đáp cho bạn nhanh chóng.</p>', NULL, '2023-02-09 03:22:58', '2023-02-17 00:26:49'),
(25, 'hotline-contact-number', '<p>Li&ecirc;n hệ: 0966846668</p>', NULL, '2023-02-09 03:45:26', '2024-05-01 21:07:44'),
(27, 'popup_image', '<p><img alt=\"popup\" src=\"/storage/popup/newlest.webp\" style=\"height:504px; width:487px\" /></p>', NULL, '2023-08-02 18:41:35', '2023-08-08 20:22:46'),
(28, 'popup_text', '<div class=\"subtitle-newsletter\">Today&#39;s your day!</div>\r\n\r\n<div class=\"title-newsletter\">\r\n<div><span style=\"color:#ff0000\">$30 off +</span></div>\r\n\r\n<div>free shipping</div>\r\n</div>\r\n\r\n<div class=\"text-newsletter\">when you sign up for emails!</div>', NULL, '2023-08-02 18:47:31', '2023-08-02 19:47:23'),
(29, 'topbar_support_email', 'lienhe@amz.com.vn', NULL, '2023-08-02 21:23:17', '2023-08-02 21:23:17'),
(31, 'homepage_seo_description', 'Công ty cổ phần amz việt nam Giải pháp Audio – Video call độ trễ thấp dành cho nhà máy, công sở', NULL, '2023-08-06 18:11:26', '2023-08-06 18:11:26'),
(35, 'contact_info', '<p><img alt=\"amz logo\" src=\"/storage/flogo.png\" style=\"width:100%\"></p>\r\n<p><strong>CÔNG TY CỔ PHẦN AMZ VIỆT NAM</strong><br>\r\n<strong><i class=\"bi bi-geo-alt\"></i> Địa chỉ:</strong>&nbsp;Tổ 8 P. Yên Nghĩa, Q. Hà Đông, TP. Hà Nội<br>\r\n<strong><i class=\"bi bi-globe\"></i> Web:</strong>&nbsp;<a href=\"https://amz.com.vn/\" rel=\"nofollow\" target=\"_blank\">https://amz.com.vn</a><br>\r\n<strong<i class=\"bi bi-envelope\"> Email:&nbsp;kinhdoanh@amz.com.vn; tvduc@amz.com.vn<br>\r\n<strong><i class=\"bi bi-phone-vibrate\"></i> ĐT:</strong>&nbsp;024 8586 3288, 0989 136 168</strong<i></p>\r\n<ul class=\"social-link d-flex list-style-none ps-0\">\r\n<li><a href=\"#\"><i class=\"bi bi-twitter\"></i></a></li>\r\n<li><a href=\"#\"><i class=\"bi bi-youtube\"></i></a></li>\r\n<li><a href=\"#\"><i class=\"bi bi-facebook\"></i></a></li>\r\n<li><a href=\"#\"><i class=\"bi bi-youtube\"></i></a></li>\r\n</ul>', NULL, '2022-06-22 07:32:47', '2023-08-05 02:40:46'),
(36, 'tax_vi', '0', NULL, '2023-08-07 20:03:13', '2023-08-07 20:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(191) DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2022-08-14 00:10:37'),
(2, 0, 19, 'Admin', 'fa-tasks', '', NULL, NULL, '2023-08-05 01:59:12'),
(3, 2, 22, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2023-08-05 01:59:12'),
(4, 2, 23, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2023-08-05 01:59:12'),
(5, 2, 24, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2023-08-05 01:59:12'),
(6, 2, 25, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2023-08-05 01:59:12'),
(7, 2, 26, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2023-08-05 01:59:12'),
(13, 0, 18, 'Cấu hình mở rộng', 'fa-toggle-on', 'config', NULL, '2022-06-21 04:51:11', '2023-08-05 01:59:12'),
(14, 2, 20, 'Thư viện', 'fa-file', 'media', NULL, '2022-06-21 04:51:54', '2023-08-05 01:59:12'),
(15, 2, 21, 'Ngôn ngữ', 'fa-language', 'languages', NULL, '2022-06-21 05:03:08', '2023-08-05 01:59:12'),
(16, 0, 4, 'Sản phẩm', 'fa-amazon', NULL, NULL, '2022-06-21 06:47:31', '2023-08-05 01:59:09'),
(17, 16, 5, 'Danh mục sản phẩm', 'fa-certificate', 'categories', NULL, '2022-06-21 06:47:57', '2023-08-05 01:59:34'),
(18, 16, 6, 'Sản phẩm', 'fa-adn', 'products', NULL, '2022-06-21 06:48:20', '2023-08-05 01:59:34'),
(19, 0, 17, 'Banner & Slides', 'fa-slideshare', 'slideshows', NULL, '2022-06-21 20:06:00', '2023-08-05 01:59:12'),
(20, 0, 3, 'Trang', 'fa-paragraph', 'pages', NULL, '2022-06-22 19:50:47', '2023-08-02 20:17:30'),
(21, 0, 10, 'Bài viết', 'fa-paper-plane', NULL, NULL, '2022-06-23 19:11:05', '2023-08-05 01:59:12'),
(22, 21, 12, 'Tin tức', 'fa-hacker-news', 'news', NULL, '2022-06-23 19:11:28', '2023-08-05 01:59:12'),
(23, 21, 13, 'Danh mục', 'fa-certificate', 'news-categories', NULL, '2022-06-23 19:13:18', '2023-08-05 01:59:12'),
(30, 0, 14, 'Trình đơn', 'fa-bars', 'menus', NULL, '2022-08-14 03:20:25', '2023-08-05 01:59:12'),
(25, 0, 16, 'Khách hàng', 'fa-user', 'customers', NULL, '2022-07-02 00:30:43', '2023-08-05 01:59:12'),
(26, 0, 15, 'Đơn hàng', 'fa-amazon', 'orders', NULL, '2022-07-02 00:37:37', '2023-08-05 01:59:12'),
(32, 16, 9, 'Tags', 'fa-arrow-circle-o-right', 'products-tag', NULL, '2023-02-12 05:45:57', '2023-08-05 01:59:34'),
(33, 21, 11, 'Tags', 'fa-arrow-circle-o-right', 'news-tag', NULL, '2023-02-15 07:34:09', '2023-08-05 01:59:12'),
(34, 0, 2, 'Liên hệ', 'fa-send-o', 'contacts', '*', '2023-08-02 20:17:22', '2023-08-02 20:17:30'),
(35, 16, 8, 'Đánh giá', 'fa-star', 'product-reviews', '*', '2023-08-04 01:24:15', '2023-08-05 01:59:34'),
(36, 16, 7, 'Hãng & Thương hiệu', 'fa-android', 'product-brands', '*', '2023-08-05 01:58:54', '2023-08-05 01:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(191) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '27.3.73.34', '[]', '2023-12-29 20:28:56', '2023-12-29 20:28:56'),
(2, 1, 'admin/helpers/terminal/artisan', 'GET', '27.3.73.34', '{\"_pjax\":\"#pjax-container\"}', '2023-12-29 20:29:11', '2023-12-29 20:29:11'),
(3, 1, 'admin/helpers/terminal/artisan', 'POST', '27.3.73.34', '{\"c\":\"storage:link\",\"_token\":\"xmorkGiPCu0II4QpnBh8U9o0uJjBueZvvWjKu2tK\"}', '2023-12-29 20:29:16', '2023-12-29 20:29:16'),
(4, 1, 'admin', 'GET', '27.3.73.34', '{\"_pjax\":\"#pjax-container\"}', '2023-12-29 20:33:47', '2023-12-29 20:33:47'),
(5, 1, 'admin', 'GET', '27.3.73.34', '[]', '2023-12-29 20:41:10', '2023-12-29 20:41:10'),
(6, 1, 'admin/auth/menu', 'GET', '27.3.73.34', '{\"_pjax\":\"#pjax-container\"}', '2023-12-29 20:41:14', '2023-12-29 20:41:14'),
(7, 1, 'admin/auth/menu/8', 'DELETE', '27.3.73.34', '{\"_method\":\"delete\",\"_token\":\"xmorkGiPCu0II4QpnBh8U9o0uJjBueZvvWjKu2tK\"}', '2023-12-29 20:41:20', '2023-12-29 20:41:20'),
(8, 1, 'admin/auth/menu', 'GET', '27.3.73.34', '{\"_pjax\":\"#pjax-container\"}', '2023-12-29 20:41:20', '2023-12-29 20:41:20'),
(9, 1, 'admin/auth/menu', 'POST', '27.3.73.34', '{\"_token\":\"xmorkGiPCu0II4QpnBh8U9o0uJjBueZvvWjKu2tK\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":34},{\\\"id\\\":20},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":36},{\\\"id\\\":35},{\\\"id\\\":32}]},{\\\"id\\\":21,\\\"children\\\":[{\\\"id\\\":33},{\\\"id\\\":22},{\\\"id\\\":23}]},{\\\"id\\\":30},{\\\"id\\\":26},{\\\"id\\\":25},{\\\"id\\\":19},{\\\"id\\\":13},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2023-12-29 20:41:25', '2023-12-29 20:41:25'),
(10, 1, 'admin/auth/menu', 'GET', '27.3.73.34', '{\"_pjax\":\"#pjax-container\"}', '2023-12-29 20:41:25', '2023-12-29 20:41:25'),
(11, 1, 'admin', 'GET', '27.3.73.34', '{\"_pjax\":\"#pjax-container\"}', '2023-12-29 20:41:26', '2023-12-29 20:41:26'),
(12, 1, 'admin', 'GET', '27.3.73.34', '[]', '2023-12-29 20:41:28', '2023-12-29 20:41:28'),
(13, 1, 'admin', 'GET', '27.3.64.41', '[]', '2024-04-09 19:01:59', '2024-04-09 19:01:59'),
(14, 1, 'admin/auth/users', 'GET', '27.3.64.41', '{\"_pjax\":\"#pjax-container\"}', '2024-04-09 19:02:08', '2024-04-09 19:02:08'),
(15, 1, 'admin/auth/users/create', 'GET', '27.3.64.41', '{\"_pjax\":\"#pjax-container\"}', '2024-04-09 19:02:10', '2024-04-09 19:02:10'),
(16, 1, 'admin/auth/users', 'POST', '27.3.64.41', '{\"username\":\"quantri\",\"name\":\"quantri\",\"password\":\"quantri2024!@#\",\"password_confirmation\":\"quantri2024!@#\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"Kuf9GsnyMOgvx3HLGkygoQ9A8yxz8r4IinLdXpuq\",\"_previous_\":\"https:\\/\\/smartaudio.vn\\/admin\\/auth\\/users\"}', '2024-04-09 19:02:35', '2024-04-09 19:02:35'),
(17, 1, 'admin/auth/users', 'GET', '27.3.64.41', '[]', '2024-04-09 19:02:35', '2024-04-09 19:02:35'),
(18, 2, 'admin', 'GET', '14.191.35.124', '[]', '2024-05-01 21:06:13', '2024-05-01 21:06:13'),
(19, 2, 'admin/slideshows', 'GET', '14.191.35.124', '{\"_pjax\":\"#pjax-container\"}', '2024-05-01 21:06:23', '2024-05-01 21:06:23'),
(20, 2, 'admin/pages', 'GET', '14.191.35.124', '{\"_pjax\":\"#pjax-container\"}', '2024-05-01 21:06:50', '2024-05-01 21:06:50'),
(21, 2, 'admin/slideshows', 'GET', '14.191.35.124', '{\"_pjax\":\"#pjax-container\"}', '2024-05-01 21:06:56', '2024-05-01 21:06:56'),
(22, 2, 'admin/config', 'GET', '14.191.35.124', '{\"_pjax\":\"#pjax-container\"}', '2024-05-01 21:07:00', '2024-05-01 21:07:00'),
(23, 2, 'admin/config/1/edit', 'GET', '14.191.35.124', '{\"_pjax\":\"#pjax-container\"}', '2024-05-01 21:07:06', '2024-05-01 21:07:06'),
(24, 2, 'admin/config', 'GET', '14.191.35.124', '{\"_pjax\":\"#pjax-container\"}', '2024-05-01 21:07:11', '2024-05-01 21:07:11'),
(25, 2, 'admin/config/25/edit', 'GET', '14.191.35.124', '{\"_pjax\":\"#pjax-container\"}', '2024-05-01 21:07:30', '2024-05-01 21:07:30'),
(26, 2, 'admin/config/25', 'PUT', '14.191.35.124', '{\"id\":\"25\",\"name\":\"hotline-contact-number\",\"value\":\"<p>Li&ecirc;n h\\u1ec7: 0966846668<\\/p>\",\"_token\":\"Y5nojTteE0j1HGieVKs7ju4nX8aXLQ3e7fDWyITd\",\"_method\":\"PUT\"}', '2024-05-01 21:07:44', '2024-05-01 21:07:44'),
(27, 2, 'admin/config', 'GET', '14.191.35.124', '[]', '2024-05-01 21:07:45', '2024-05-01 21:07:45'),
(28, 2, 'admin/media', 'GET', '14.191.35.124', '{\"_pjax\":\"#pjax-container\"}', '2024-05-01 21:09:14', '2024-05-01 21:09:14'),
(29, 2, 'admin', 'GET', '1.53.72.90', '[]', '2024-05-02 07:21:52', '2024-05-02 07:21:52'),
(30, 2, 'admin/languages', 'GET', '1.53.72.90', '{\"_pjax\":\"#pjax-container\"}', '2024-05-02 07:22:27', '2024-05-02 07:22:27'),
(31, 2, 'admin/auth/users', 'GET', '1.53.72.90', '{\"_pjax\":\"#pjax-container\"}', '2024-05-02 07:22:31', '2024-05-02 07:22:31'),
(32, 2, 'admin/auth/roles', 'GET', '1.53.72.90', '{\"_pjax\":\"#pjax-container\"}', '2024-05-02 07:22:37', '2024-05-02 07:22:37'),
(33, 2, 'admin/auth/permissions', 'GET', '1.53.72.90', '{\"_pjax\":\"#pjax-container\"}', '2024-05-02 07:22:40', '2024-05-02 07:22:40'),
(34, 2, 'admin/auth/menu', 'GET', '1.53.72.90', '{\"_pjax\":\"#pjax-container\"}', '2024-05-02 07:22:45', '2024-05-02 07:22:45'),
(35, 2, 'admin/categories', 'GET', '1.53.72.90', '{\"_pjax\":\"#pjax-container\"}', '2024-05-02 07:23:02', '2024-05-02 07:23:02'),
(36, 2, 'admin/categories/30/edit', 'GET', '1.53.72.90', '{\"_pjax\":\"#pjax-container\"}', '2024-05-02 07:23:11', '2024-05-02 07:23:11'),
(37, 2, 'admin', 'GET', '1.53.72.90', '{\"_pjax\":\"#pjax-container\"}', '2024-05-02 07:23:34', '2024-05-02 07:23:34'),
(38, 2, 'admin/pages', 'GET', '1.53.72.90', '{\"_pjax\":\"#pjax-container\"}', '2024-05-02 07:23:35', '2024-05-02 07:23:35'),
(39, 2, 'admin/pages', 'GET', '183.80.23.47', '[]', '2024-05-04 07:38:29', '2024-05-04 07:38:29'),
(40, 2, 'admin/pages', 'GET', '183.80.23.7', '[]', '2024-05-05 00:36:52', '2024-05-05 00:36:52'),
(41, 2, 'admin', 'GET', '14.191.33.170', '[]', '2025-01-15 03:18:39', '2025-01-15 03:18:39'),
(42, 2, 'admin/auth/permissions', 'GET', '14.191.33.170', '{\"_pjax\":\"#pjax-container\"}', '2025-01-15 03:19:05', '2025-01-15 03:19:05'),
(43, 2, 'admin/auth/permissions/create', 'GET', '14.191.33.170', '{\"_pjax\":\"#pjax-container\"}', '2025-01-15 03:19:09', '2025-01-15 03:19:09'),
(44, 2, 'admin/auth/permissions', 'GET', '14.191.33.170', '{\"_pjax\":\"#pjax-container\"}', '2025-01-15 03:19:13', '2025-01-15 03:19:13'),
(45, 2, 'admin/auth/permissions/create', 'GET', '14.191.33.170', '{\"_pjax\":\"#pjax-container\"}', '2025-01-15 03:19:21', '2025-01-15 03:19:21'),
(46, 2, 'admin', 'GET', '14.191.33.170', '{\"_pjax\":\"#pjax-container\"}', '2025-01-15 03:19:34', '2025-01-15 03:19:34'),
(47, 2, 'admin', 'GET', '14.191.33.170', '[]', '2025-01-17 03:49:24', '2025-01-17 03:49:24'),
(48, 2, 'admin', 'GET', '14.191.32.46', '[]', '2025-04-10 18:58:12', '2025-04-10 18:58:12'),
(49, 2, 'admin', 'GET', '14.191.32.46', '{\"_pjax\":\"#pjax-container\"}', '2025-04-10 18:58:24', '2025-04-10 18:58:24'),
(50, 2, 'admin/pages', 'GET', '14.191.32.46', '{\"_pjax\":\"#pjax-container\"}', '2025-04-10 18:58:32', '2025-04-10 18:58:32'),
(51, 2, 'admin/pages', 'GET', '14.191.32.46', '[]', '2025-04-11 19:20:45', '2025-04-11 19:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(191) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2022-06-21 04:50:30', '2022-06-21 04:50:30'),
(7, 'Admin Config', 'ext.config', '', '/config*', '2022-06-21 04:51:11', '2022-06-21 04:51:11'),
(8, 'Media manager', 'ext.media-manager', '', '/media*', '2022-06-21 04:51:54', '2022-06-21 04:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2022-06-21 04:47:22', '2022-06-21 04:47:22');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 34, NULL, NULL),
(1, 35, NULL, NULL),
(1, 36, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$yc.VMquc7IJd3izHdC1.0u7pjk4oLBtvtgTTnL9lkwPXLFWJ0vExC', 'Administrator', NULL, 'PzMhEsVEGiLwvTpjZb5gKnpBxHpDg95Gc4glIbur9KNQDgywh2ALeMIXkTSq', '2022-06-21 04:47:22', '2022-07-04 18:49:42'),
(2, 'quantri', '$2y$10$rJ0/xCQRCQix.6ez1qMutum9RA1MWd6.h8CSyVSKzJX7xsde3Yn/6', 'quantri', NULL, 'gYTr9rzm3hOHzEjY82416BP1Vw8lJzpFpSqCgRu1UheK3tIsKHqqQKB6RI0d', '2024-04-09 19:02:35', '2024-04-09 19:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `order` int(11) NOT NULL,
  `order_string` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `show_home` int(11) NOT NULL DEFAULT 0,
  `show_menu` int(11) NOT NULL DEFAULT 0,
  `show_feature_product` int(11) DEFAULT 0,
  `show_bestseller` int(11) DEFAULT 0,
  `mega_type` int(11) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `images` text DEFAULT NULL,
  `home_banner` text DEFAULT NULL,
  `seo_meta_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `order`, `order_string`, `parent_id`, `active`, `show_home`, `show_menu`, `show_feature_product`, `show_bestseller`, `mega_type`, `short_description`, `content`, `images`, `home_banner`, `seo_meta_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(30, 'Computers & Laptop', 'computers-laptop', 1, '1', 0, 1, 1, 1, 1, 1, 2, '<p style=\"text-align:center\"><img alt=\"\" src=\"/storage/logo-icon/vertical-1.png.webp\" style=\"height:12px; width:93px\" /></p>\r\n\r\n<h2 style=\"text-align:center\"><strong><span style=\"font-size:18px\">BEST FOR GAMING</span></strong></h2>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:16px\">Black case edtion</span></h3>', '<p><img alt=\"\" src=\"/storage/danh-muc/Untitled-1.jpg.webp\" style=\"height:202px; width:1412px\" /></p>', 'images/cate-3.jpg.webp', 'images/vertical-2.webp', 'Computers & Laptop', NULL, '2023-02-08 23:34:44', '2023-08-06 05:22:09'),
(31, 'Digital Cameras', 'digital-cameras', 2, '2', 0, 1, 1, 1, 0, 0, 3, '<p><img alt=\"\" src=\"http://smartaudio.local//storage/logo-icon/vertical-4.png\" style=\"height:18px; width:86px\" /></p>\r\n\r\n<h2>CANON POWERSHOT</h2>\r\n\r\n<h3>Black case edtion</h3>', NULL, 'images/cate-7.jpg.webp', 'images/vertical-3.webp', 'Digital Cameras', NULL, '2023-02-09 00:09:22', '2023-08-06 01:19:52'),
(32, 'Audio & Video', 'audio-video', 5, '5', 0, 1, 1, 1, 0, 1, 1, '<h2>HEADPHONE</h2>\r\n\r\n<h3>Sale up to 30% off</h3>', NULL, 'images/cate-2.jpg.webp', 'images/vertical-5.webp', 'Audio & Video', NULL, '2023-02-09 00:09:31', '2023-08-06 01:24:47'),
(33, 'Mobiles & Tablets', 'mobiles-tablets', 3, '3', 0, 1, 1, 1, 1, 0, 4, NULL, NULL, 'images/cate-1.jpg.webp', '', 'Mobiles & Tablets', NULL, '2023-02-11 04:00:16', '2023-08-06 01:36:21'),
(34, 'TV & Home Theater', 'tv-home-theater', 4, '4', 0, 1, 1, 1, 1, 0, NULL, NULL, NULL, 'images/cate-4.jpg.webp', 'images/banner-may-cham-cong-1.jpg', 'TV & Home Theater', NULL, '2023-02-11 04:02:10', '2023-08-04 19:55:44'),
(35, 'Portable Speakers', 'portable-speakers', 6, '6', 0, 1, 1, 1, 0, 0, NULL, NULL, '<p><span class=\"rub-cate-images\"><img class=\"img-responsive\" title=\"banner-camera-hikvision-ben-phai[1].jpg\" src=\"/storage/uploads/JyqtBvXGXQmAV9uVn9dl2xTaZ1VLCHSiMP35WELb.jpg\" alt=\"banner-camera-hikvision-ben-phai\" width=\"290\" height=\"490\"></span></p>', 'images/cate-6.jpg.webp', 'images/banner-camera.jpg', 'Portable Speakers', NULL, '2023-02-11 04:03:26', '2023-08-04 02:55:45'),
(36, 'Home Appliances', 'home-appliances', 7, '7', 0, 1, 1, 1, 0, 0, NULL, NULL, '<p><span class=\"rub-cate-images\"><img class=\"img-responsive\" title=\"banner-am-thanh-toa-ben-phai[1].jpg\" src=\"/storage/uploads/v6xZeaWBQwHZao1wlBABCpzlD8doT5HDDB4ZQTCo.jpg\" alt=\"banner-am-thanh-toa-ben-phai\" width=\"290\" height=\"490\"></span></p>', 'images/7df7ad9293e175d20a732c75bd5419da.webp', '', 'Home Appliances', NULL, '2023-02-11 04:05:16', '2023-08-04 03:00:17'),
(37, 'Music & Video Games', 'music-video-games', 8, '8', 0, 1, 1, 1, 0, 1, NULL, NULL, '<p><span class=\"rub-cate-images\"><img class=\"img-responsive\" title=\"baner-chuong-cua-co-hinh-ben-phai[1].jpg\" src=\"/storage/uploads/UGweZCnLOjKDWVHOoz8cDj54PdZH65dfbCUc1FQl.jpg\" alt=\"baner-chuong-cua-co-hinh-ben-phai\" width=\"290\" height=\"490\"></span></p>', 'images/cate-5.jpg.webp', 'images/chuong-hinh.jpg', 'Music & Video Games', NULL, '2023-02-11 04:11:49', '2023-08-05 00:49:19'),
(106, 'Computers', 'computers', 1, '11', 30, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Computers', NULL, '2023-08-05 20:31:57', '2023-08-06 17:59:32'),
(107, 'Computers & Tablets', 'computers-tablets', 1, '11', 106, 1, 0, 1, 0, 0, NULL, NULL, '<p>Computers &amp; Tablets</p>', NULL, NULL, 'Computers & Tablets', NULL, '2023-08-05 20:32:24', '2023-08-05 22:30:21'),
(108, 'Data Storage', 'data-storage', 1, '11', 106, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Data Storage', NULL, '2023-08-05 23:30:41', '2023-08-05 23:31:17'),
(109, 'Laptop Accessories', 'laptop-accessories', 1, '11', 106, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Laptop Accessories', NULL, '2023-08-05 23:30:51', '2023-08-05 23:31:14'),
(110, 'Monitors', 'monitors', 1, '11', 106, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Monitors', NULL, '2023-08-05 23:31:08', '2023-08-05 23:31:08'),
(111, 'Accessories', 'accessories', 1, '11', 30, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Accessories', NULL, '2023-08-05 23:31:37', '2023-08-06 17:59:39'),
(112, 'Blank Media', 'blank-media', 1, '11', 111, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Blank Media', NULL, '2023-08-05 23:31:51', '2023-08-05 23:31:51'),
(113, 'Blue Light Blocking', 'blue-light-blocking', 1, '11', 111, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Blue Light Blocking', NULL, '2023-08-05 23:32:26', '2023-08-05 23:32:38'),
(114, 'Cable Security', 'cable-security', 1, '11', 111, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Cable Security', NULL, '2023-08-05 23:33:16', '2023-08-05 23:33:16'),
(115, 'Laptop', 'laptop', 1, '11', 30, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Laptop', NULL, '2023-08-05 23:33:41', '2023-08-06 17:59:44'),
(116, 'Samsung Electronics', 'samsung-electronics', 1, '11', 115, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Samsung Electronics', NULL, '2023-08-05 23:34:04', '2023-08-05 23:34:04'),
(117, 'Lenovo', 'lenovo', 1, '11', 115, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Lenovo', NULL, '2023-08-05 23:34:17', '2023-08-05 23:34:17'),
(118, 'Visual Land', 'visual-land', 1, '11', 115, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Visual Land', NULL, '2023-08-05 23:34:55', '2023-08-05 23:34:55'),
(121, 'DSLR Cameras', 'dslr-cameras', 1, '11', 120, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'DSLR Cameras', NULL, '2023-08-06 01:15:36', '2023-08-06 01:16:32'),
(120, 'Digital', '#', 1, '21', 31, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Digital', NULL, '2023-08-06 01:15:00', '2023-08-06 01:15:00'),
(122, 'Instant Cameras', 'instant-cameras', 1, '11', 120, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Instant Cameras', NULL, '2023-08-06 01:15:49', '2023-08-06 01:16:57'),
(123, 'Mirrorless Cameras', 'mirrorless-cameras', 1, '11', 120, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Mirrorless Cameras', NULL, '2023-08-06 01:16:07', '2023-08-06 01:16:59'),
(124, 'Accessories', '#', 1, '21', 31, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Accessories', NULL, '2023-08-06 01:17:27', '2023-08-06 01:17:27'),
(125, 'Accessory Bundles', 'accessory-bundles', 1, '11', 124, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Accessory Bundles', NULL, '2023-08-06 01:17:48', '2023-08-06 01:17:48'),
(126, 'Bags & Cases', 'bags-cases', 1, '11', 124, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Bags & Cases', NULL, '2023-08-06 01:18:01', '2023-08-06 01:18:07'),
(127, 'Video', '#', 1, '21', 31, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Video', NULL, '2023-08-06 01:18:25', '2023-08-06 01:18:25'),
(128, 'Camcorder Bundles', 'camcorder-bundles', 1, '11', 127, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Camcorder Bundles', NULL, '2023-08-06 01:18:38', '2023-08-06 01:18:38'),
(129, 'Camcorder Lenses', 'camcorder-lenses', 1, '11', 127, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Camcorder Lenses', NULL, '2023-08-06 01:18:52', '2023-08-06 01:18:52'),
(130, 'Audio & Video', '#', 1, '51', 32, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Audio & Video', NULL, '2023-08-06 01:25:10', '2023-08-06 01:25:10'),
(131, 'Vehicle Electronics', 'vehicle-electronics', 1, '11', 130, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Vehicle Electronics', NULL, '2023-08-06 01:25:28', '2023-08-06 01:25:28'),
(132, 'Portable Audio & Video', 'portable-audio-video', 1, '11', 130, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Portable Audio & Video', NULL, '2023-08-06 01:25:40', '2023-08-06 01:25:40'),
(133, 'Cell Phone Carrier', '#', 1, '31', 33, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Cell Phone Carrier', NULL, '2023-08-06 01:36:43', '2023-08-06 01:36:43'),
(134, 'AT&T Wireless', 'at-t-wireless', 1, '11', 133, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'AT&T Wireless', NULL, '2023-08-06 01:37:07', '2023-08-06 01:37:07'),
(135, 'Boost Mobile', 'boost-mobile', 1, '11', 133, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Boost Mobile', NULL, '2023-08-06 01:37:27', '2023-08-06 01:37:27'),
(136, 'Features', '#', 1, '31', 33, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Features', NULL, '2023-08-06 01:37:41', '2023-08-06 01:37:41'),
(137, 'Basic Phone', 'basic-phone', 1, '11', 136, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Basic Phone', NULL, '2023-08-06 01:37:53', '2023-08-06 01:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) NOT NULL,
  `customer_phone` varchar(191) NOT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `customer_address` varchar(191) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Tuan Nguyen', '0976852147', 'cskh.gtopvn@gmail.com', NULL, 1, '2022-07-02 02:37:01', '2022-07-02 02:37:01'),
(2, 'Nguyễn Quốc Đại', '0936566552', NULL, NULL, 1, '2022-07-02 19:37:04', '2022-07-02 19:37:04'),
(3, 'Ngô quốc Tuấn', '0922227689', NULL, NULL, 1, '2022-07-02 21:40:31', '2022-07-02 21:40:31'),
(4, 'Nguyễn Tuấn Thành', '0912227689', NULL, NULL, 1, '2022-07-02 21:58:32', '2022-07-02 21:58:32'),
(5, 'Tuan Nguyen', '97852147', 'vtuan1989@gmail.com', NULL, 1, '2023-02-17 20:17:40', '2023-02-17 20:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `customer_reviews`
--

CREATE TABLE `customer_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) NOT NULL,
  `customer_phone` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `customer_images` varchar(191) NOT NULL,
  `review_content` longtext NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `order` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `title`, `slug`, `order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'VNPost', 'vnpost', 0, 1, '2022-07-02 01:47:18', '2022-07-02 01:47:18'),
(2, 'Giao hàng tiết kiệm', 'giao-hang-tiet-kiem', 0, 1, '2022-07-02 01:47:27', '2022-07-02 01:47:27'),
(3, 'Viettel Post', 'viettel-post', 0, 1, '2022-07-02 01:47:36', '2022-07-02 01:47:36'),
(4, 'J&T Express', 'j-t-express', 0, 1, '2022-07-02 01:47:55', '2022-07-02 01:47:55'),
(5, 'FedEx', 'fedex', 0, 1, '2022-07-02 01:48:17', '2022-07-02 01:48:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_authors`
--

CREATE TABLE `giapha_authors` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `editor` varchar(100) DEFAULT '',
  `lev` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `files_level` varchar(255) DEFAULT '',
  `position` varchar(255) NOT NULL,
  `main_module` varchar(50) NOT NULL DEFAULT 'siteinfo',
  `admin_theme` varchar(100) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT 0,
  `edittime` int(11) NOT NULL DEFAULT 0,
  `is_suspend` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `susp_reason` text DEFAULT NULL,
  `pre_check_num` varchar(40) NOT NULL DEFAULT '',
  `pre_last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pre_last_ip` varchar(45) DEFAULT '',
  `pre_last_agent` varchar(255) DEFAULT '',
  `check_num` varchar(40) NOT NULL DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_ip` varchar(45) DEFAULT '',
  `last_agent` varchar(255) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_authors`
--

INSERT INTO `giapha_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `main_module`, `admin_theme`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `pre_check_num`, `pre_last_login`, `pre_last_ip`, `pre_last_agent`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor5-classic', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 'siteinfo', '', 0, 0, 0, '', '', 0, '', '', '024ba509fd110b8996c8cb7d55dff6dc', 1786947024, '14.246.3.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0'),
(2, 'ckeditor5-classic', 3, 'adobe,archives,audio,documents,flash,images,real,video|0|1|0', 'Admin', 'siteinfo', '', 0, 0, 0, '', '', 0, '', '', '9d40b49b208a70b3c973f7b08653f4ae', 1774695563, '42.114.95.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_authors_api_credential`
--

CREATE TABLE `giapha_authors_api_credential` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `credential_title` varchar(255) NOT NULL DEFAULT '',
  `credential_ident` varchar(50) NOT NULL DEFAULT '',
  `credential_secret` varchar(250) NOT NULL DEFAULT '',
  `credential_ips` varchar(255) NOT NULL DEFAULT '',
  `auth_method` enum('none','password_verify') NOT NULL DEFAULT 'password_verify' COMMENT 'Phương thức xác thực',
  `api_roles` varchar(255) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT 0,
  `edittime` int(11) NOT NULL DEFAULT 0,
  `last_access` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu key API của quản trị';

-- --------------------------------------------------------

--
-- Table structure for table `giapha_authors_api_role`
--

CREATE TABLE `giapha_authors_api_role` (
  `role_id` smallint(4) NOT NULL,
  `role_title` varchar(250) NOT NULL DEFAULT '',
  `role_description` text NOT NULL,
  `role_data` text NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT 0,
  `edittime` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu quyền truy cập API';

-- --------------------------------------------------------

--
-- Table structure for table `giapha_authors_config`
--

CREATE TABLE `giapha_authors_config` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `keyname` varchar(39) NOT NULL DEFAULT '',
  `mask` tinyint(4) NOT NULL DEFAULT 0,
  `begintime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `notice` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_authors_module`
--

CREATE TABLE `giapha_authors_module` (
  `mid` mediumint(8) NOT NULL,
  `module` varchar(50) NOT NULL,
  `lang_key` varchar(50) NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT 0,
  `act_1` tinyint(4) NOT NULL DEFAULT 0,
  `act_2` tinyint(4) NOT NULL DEFAULT 1,
  `act_3` tinyint(4) NOT NULL DEFAULT 1,
  `checksum` varchar(32) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_authors_module`
--

INSERT INTO `giapha_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, 'c31cce03cdd15bf72d14d5750d6ef60c'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, '0188b234c9921da42fe41ed5fd5b9a06'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, 'dced323df2289032aac9664e90e87856'),
(4, 'database', 'mod_database', 4, 1, 0, 0, '4db09cc2377fcce6574d81f1e4a136cd'),
(5, 'webtools', 'mod_webtools', 5, 1, 1, 0, 'f0700fb6565877463d0c9b8cbfd43868'),
(6, 'seotools', 'mod_seotools', 6, 1, 1, 0, 'cccd047da3239e7bc9bf8707af94896d'),
(7, 'language', 'mod_language', 7, 1, 1, 0, '4198a9501f75ef757320b43b85f092e6'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, 'f66577af2f4bcc2b9cc161ec7478ac03'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, '1fabb49980c9ebb8afdccf0dc8496e02'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, '8e71dbc145c927edd4288eb13376557d'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, '45293c56e82ee7440123b93933164e32'),
(12, 'zalo', 'mod_zalo', 12, 1, 0, 0, '631a21122ee87a73fd40608567344465');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_authors_oauth`
--

CREATE TABLE `giapha_authors_oauth` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) UNSIGNED NOT NULL COMMENT 'ID của quản trị',
  `oauth_server` varchar(50) NOT NULL COMMENT 'Eg: facebook, google...',
  `oauth_uid` varchar(50) NOT NULL COMMENT 'ID duy nhất ứng với server',
  `oauth_email` varchar(50) NOT NULL COMMENT 'Email',
  `oauth_id` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu xác thực 2 bước từ oauth của admin';

-- --------------------------------------------------------

--
-- Table structure for table `giapha_banners_click`
--

CREATE TABLE `giapha_banners_click` (
  `id` int(11) UNSIGNED NOT NULL,
  `bid` mediumint(8) NOT NULL DEFAULT 0,
  `click_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(46) NOT NULL,
  `click_country` varchar(10) NOT NULL,
  `click_browse_key` varchar(100) NOT NULL,
  `click_browse_name` varchar(100) NOT NULL,
  `click_os_key` varchar(100) NOT NULL,
  `click_os_name` varchar(100) NOT NULL,
  `click_ref` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_banners_plans`
--

CREATE TABLE `giapha_banners_plans` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `blang` char(2) DEFAULT '',
  `title` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `form` varchar(100) NOT NULL,
  `width` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `height` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `require_image` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `uploadtype` varchar(255) NOT NULL DEFAULT '',
  `uploadgroup` varchar(255) NOT NULL DEFAULT '',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_banners_plans`
--

INSERT INTO `giapha_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`, `require_image`, `uploadtype`, `uploadgroup`, `exp_time`) VALUES
(1, '', 'Mid-page ad block', '', 'sequential', 575, 72, 1, 1, 'images', '', 0),
(2, '', 'Left-column ad block', '', 'sequential', 212, 800, 1, 1, 'images', '', 0),
(3, '', 'Right-column ad block', '', 'random', 250, 500, 1, 1, 'images', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_banners_rows`
--

CREATE TABLE `giapha_banners_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `clid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `file_name` varchar(255) NOT NULL,
  `file_ext` varchar(100) NOT NULL,
  `file_mime` varchar(100) NOT NULL,
  `width` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `file_alt` varchar(255) DEFAULT '',
  `imageforswf` varchar(255) DEFAULT '',
  `click_url` varchar(255) DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '_blank',
  `bannerhtml` mediumtext NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hits_total` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_banners_rows`
--

INSERT INTO `giapha_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `bannerhtml`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(1, 'Mid-page advertisement', 1, 1, 'webnhanh.jpg', 'png', 'image/jpeg', 575, 72, '', '', 'http://webnhanh.vn', '_blank', '', 1742892758, 1742892758, 0, 0, 1, 1),
(2, 'CauDoiTrai', 2, 1, 'cau-doi-trai.jpg', 'jpg', 'image/jpeg', 436, 1820, '', '', '', '_self', '', 1742892758, 1742892720, 0, 0, 1, 2),
(3, 'CauDoiPhai', 3, 1, 'cau-doi-phai.jpg', 'jpg', 'image/jpeg', 436, 1820, '', '', '', '_blank', '', 1742978777, 1742978760, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_config`
--

CREATE TABLE `giapha_config` (
  `lang` varchar(3) NOT NULL DEFAULT 'sys',
  `module` varchar(50) NOT NULL DEFAULT 'global',
  `config_name` varchar(30) NOT NULL DEFAULT '',
  `config_value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_config`
--

INSERT INTO `giapha_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'site_phone', ''),
('sys', 'site', 'mailer_mode', 'mail'),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'verify_peer_ssl', '1'),
('sys', 'site', 'verify_peer_name_ssl', '1'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'sender_name', ''),
('sys', 'site', 'sender_email', ''),
('sys', 'site', 'reply_name', ''),
('sys', 'site', 'reply_email', ''),
('sys', 'site', 'force_sender', '0'),
('sys', 'site', 'force_reply', '0'),
('sys', 'site', 'notify_email_error', '0'),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'googleAnalytics4ID', ''),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'zaloOfficialAccountID', ''),
('sys', 'site', 'zaloAppID', ''),
('sys', 'site', 'zaloAppSecretKey', ''),
('sys', 'site', 'zaloOAAccessToken', ''),
('sys', 'site', 'zaloOARefreshToken', ''),
('sys', 'site', 'zaloOAAccessTokenTime', '0'),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'site', 'nv_unickmin', '4'),
('sys', 'site', 'nv_unickmax', '20'),
('sys', 'site', 'nv_upassmin', '8'),
('sys', 'site', 'nv_upassmax', '32'),
('sys', 'site', 'dir_forum', ''),
('sys', 'site', 'nv_unick_type', '4'),
('sys', 'site', 'nv_upass_type', '3'),
('sys', 'site', 'allowmailchange', '1'),
('sys', 'site', 'allowuserpublic', '1'),
('sys', 'site', 'allowquestion', '0'),
('sys', 'site', 'allowloginchange', '0'),
('sys', 'site', 'allowuserlogin', '1'),
('sys', 'site', 'allowuserloginmulti', '0'),
('sys', 'site', 'allowuserreg', '2'),
('sys', 'site', 'is_user_forum', '0'),
('sys', 'site', 'openid_servers', ''),
('sys', 'site', 'openid_processing', 'connect,create,auto'),
('sys', 'site', 'user_check_pass_time', '1800'),
('sys', 'site', 'auto_login_after_reg', '1'),
('sys', 'site', 'whoviewuser', '2'),
('sys', 'site', 'ssl_https', '0'),
('sys', 'site', 'facebook_client_id', ''),
('sys', 'site', 'facebook_client_secret', ''),
('sys', 'site', 'google_client_id', ''),
('sys', 'site', 'google_client_secret', ''),
('sys', 'site', 'referer_blocker', '1'),
('sys', 'site', 'private_site', '0'),
('sys', 'site', 'max_user_admin', '0'),
('sys', 'site', 'max_user_number', '0'),
('sys', 'site', 'captcha_area', 'r,m,p'),
('sys', 'site', 'captcha_type', 'captcha'),
('sys', 'site', 'dkim_included', 'sendmail,mail'),
('sys', 'site', 'smime_included', 'sendmail,mail'),
('sys', 'site', 'nv_csp', 'script-src &#039;self&#039; *.google.com *.google-analytics.com *.googletagmanager.com *.gstatic.com *.facebook.com *.facebook.net *.twitter.com *.zalo.me *.zaloapp.com *.tawk.to *.cloudflareinsights.com &#039;unsafe-inline&#039; &#039;unsafe-hashes&#039; &#039;unsafe-eval&#039;;object-src &#039;self&#039;;style-src &#039;self&#039; *.google.com *.googleapis.com *.tawk.to &#039;unsafe-inline&#039;;img-src &#039;self&#039; data: *.twitter.com *.google.com *.googleapis.com *.gstatic.com *.facebook.com tawk.link *.tawk.to static.nukeviet.vn;media-src &#039;self&#039; *.tawk.to;frame-src &#039;self&#039; *.google.com *.youtube.com *.facebook.com *.facebook.net *.twitter.com *.zalo.me *.live.com;font-src &#039;self&#039; *.googleapis.com *.gstatic.com *.tawk.to;connect-src &#039;self&#039; *.zalo.me *.tawk.to wss://*.tawk.to;form-action &#039;self&#039; *.google.com;base-uri &#039;self&#039;;'),
('sys', 'site', 'nv_csp_act', '0'),
('sys', 'site', 'nv_rp', 'no-referrer-when-downgrade, strict-origin-when-cross-origin'),
('sys', 'site', 'nv_rp_act', '1'),
('sys', 'site', 'nv_pp', 'accelerometer=(self), autoplay=(self \"https://youtube.com\" \"https://www.youtube.com\" \"https://*.youtube.com\"), camera=(self), display-capture=(self), encrypted-media=(self), fullscreen=(self \"https://youtube.com\" \"https://www.youtube.com\" \"https://*.youtube.com\"), gamepad=(self), geolocation=(self), gyroscope=(self), hid=(self), identity-credentials-get=(self), idle-detection=(self), local-fonts=(self), magnetometer=(self), microphone=(self), midi=(self), otp-credentials=(self), payment=(self), picture-in-picture=(self \"https://youtube.com\" \"https://www.youtube.com\" \"https://*.youtube.com\"), publickey-credentials-get=(self), screen-wake-lock=(self), serial=(self), storage-access=(self), usb=(self), web-share=(self), window-management=(self), xr-spatial-tracking=(self)'),
('sys', 'site', 'nv_pp_act', '1'),
('sys', 'site', 'nv_fp', 'accelerometer \'self\'; autoplay \'self\' https://youtube.com https://www.youtube.com; camera \'self\'; display-capture \'self\'; encrypted-media \'self\'; fullscreen \'self\' https://youtube.com https://www.youtube.com; gamepad \'self\'; geolocation \'self\'; gyroscope \'self\'; hid \'self\'; identity-credentials-get \'self\'; idle-detection \'self\'; local-fonts \'self\'; magnetometer \'self\'; microphone \'self\'; midi \'self\'; otp-credentials \'self\'; payment \'self\'; picture-in-picture \'self\' https://youtube.com https://www.youtube.com; publickey-credentials-get \'self\'; screen-wake-lock \'self\'; serial \'self\'; storage-access \'self\'; usb \'self\'; web-share \'self\'; window-management \'self\'; xr-spatial-tracking \'self\''),
('sys', 'site', 'nv_fp_act', '1'),
('sys', 'site', 'ogp_image', ''),
('sys', 'site', 'over_capacity', '0'),
('sys', 'site', 'show_folder_size', '0'),
('sys', 'define', 'nv_gfx_num', '6'),
('sys', 'global', 'closed_site', '0'),
('sys', 'global', 'site_reopening_time', '0'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'htm,html,htmls,js,php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', 'application/ecmascript,application/javascript,application/x-javascript,text/ecmascript,text/html,text/javascript,application/x-httpd-php,application/x-httpd-php-source,application/php,application/x-php,text/php,text/x-php'),
('sys', 'global', 'nv_max_size', '2097152'),
('sys', 'global', 'nv_overflow_size', '0'),
('sys', 'global', 'upload_checking_mode', 'strong'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'upload_chunk_size', '0'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_enable', '1'),
('sys', 'global', 'rewrite_optional', '1'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', 'news'),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'timestamp', '1742892758'),
('sys', 'global', 'version', '4.5.06'),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '1800'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'cookie_SameSite', 'Lax'),
('sys', 'global', 'cookie_share', '0'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'is_login_blocker', '1'),
('sys', 'global', 'login_number_tracking', '5'),
('sys', 'global', 'login_time_tracking', '5'),
('sys', 'global', 'login_time_ban', '30'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '0'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'nv_static_url', ''),
('sys', 'global', 'cdn_url', ''),
('sys', 'global', 'two_step_verification', '0'),
('sys', 'global', 'admin_2step_opt', 'code'),
('sys', 'global', 'admin_2step_default', 'code'),
('sys', 'global', 'recaptcha_sitekey', ''),
('sys', 'global', 'recaptcha_secretkey', ''),
('sys', 'global', 'recaptcha_type', 'image'),
('sys', 'global', 'recaptcha_ver', '2'),
('sys', 'global', 'users_special', '0'),
('sys', 'global', 'crosssite_restrict', '1'),
('sys', 'global', 'crosssite_valid_domains', ''),
('sys', 'global', 'crosssite_valid_ips', ''),
('sys', 'global', 'crossadmin_restrict', '1'),
('sys', 'global', 'crossadmin_valid_domains', ''),
('sys', 'global', 'crossadmin_valid_ips', ''),
('sys', 'global', 'domains_whitelist', '[\"youtube.com\",\"www.youtube.com\",\"google.com\",\"www.google.com\",\"drive.google.com\",\"docs.google.com\",\"view.officeapps.live.com\"]'),
('sys', 'global', 'domains_restrict', '1'),
('sys', 'global', 'remote_api_access', '0'),
('sys', 'global', 'remote_api_log', '1'),
('sys', 'global', 'api_check_time', '5'),
('sys', 'global', 'allow_null_origin', '0'),
('sys', 'global', 'ip_allow_null_origin', ''),
('sys', 'global', 'cookie_notice_popup', '0'),
('sys', 'global', 'XSSsanitize', '1'),
('sys', 'global', 'admin_XSSsanitize', '1'),
('sys', 'define', 'nv_gfx_width', '150'),
('sys', 'define', 'nv_gfx_height', '40'),
('sys', 'define', 'nv_max_width', '6000'),
('sys', 'define', 'nv_max_height', '4000'),
('sys', 'define', 'nv_mobile_mode_img', '480'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '1'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre, mark'),
('sys', 'define', 'nv_debug', '0'),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'DÒNG HỌ NGUYỄN BÁ'),
('vi', 'global', 'site_logo', 'uploads/logo2.jpg'),
('vi', 'global', 'site_banner', 'uploads/banner-chinh.jpg'),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', 'Gia phả dòng họ Nguyễn Bá'),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'theme_type', 'r,d,m'),
('vi', 'global', 'site_theme', 'default'),
('vi', 'global', 'preview_theme', ''),
('vi', 'global', 'user_allowed_theme', '[\"default\"]'),
('vi', 'global', 'mobile_theme', 'mobile_default'),
('vi', 'global', 'site_home_module', 'gia-pha'),
('vi', 'global', 'switch_mobi_des', '1'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1786947167'),
('vi', 'global', 'disable_site_content', '<p>Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!</p>'),
('vi', 'seotools', 'prcservice', ''),
('vi', 'about', 'auto_postcomm', '1'),
('vi', 'about', 'allowed_comm', '-1'),
('vi', 'about', 'view_comm', '6'),
('vi', 'about', 'setcomm', '4'),
('vi', 'about', 'activecomm', '0'),
('vi', 'about', 'emailcomm', '0'),
('vi', 'about', 'adminscomm', ''),
('vi', 'about', 'sortcomm', '0'),
('vi', 'about', 'captcha_area_comm', '1'),
('vi', 'about', 'perpagecomm', '5'),
('vi', 'about', 'timeoutcomm', '360'),
('vi', 'about', 'allowattachcomm', '0'),
('vi', 'about', 'alloweditorcomm', '0'),
('vi', 'news', 'indexfile', 'viewcat_main_right'),
('vi', 'news', 'mobile_indexfile', 'viewcat_page_new'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'homewidth', '100'),
('vi', 'news', 'homeheight', '150'),
('vi', 'news', 'blockwidth', '70'),
('vi', 'news', 'blockheight', '75'),
('vi', 'news', 'imagefull', '460'),
('vi', 'news', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),
('vi', 'news', 'showtooltip', '1'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'show_no_image', ''),
('vi', 'news', 'allowed_rating', '1'),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'socialbutton', 'facebook,twitter'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'tags_alias', '0'),
('vi', 'news', 'auto_tags', '0'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'keywords_tag', '1'),
('vi', 'news', 'copy_news', '0'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'htmlhometext', '0'),
('vi', 'news', 'order_articles', '0'),
('vi', 'news', 'identify_cat_change', '0'),
('vi', 'news', 'active_history', '0'),
('vi', 'news', 'hide_author', '0'),
('vi', 'news', 'hide_inauthor', '0'),
('vi', 'news', 'elas_use', '0'),
('vi', 'news', 'elas_host', ''),
('vi', 'news', 'elas_port', '9200'),
('vi', 'news', 'elas_index', ''),
('vi', 'news', 'instant_articles_active', '0'),
('vi', 'news', 'instant_articles_template', 'default'),
('vi', 'news', 'instant_articles_httpauth', '0'),
('vi', 'news', 'instant_articles_username', ''),
('vi', 'news', 'instant_articles_password', ''),
('vi', 'news', 'instant_articles_livetime', '60'),
('vi', 'news', 'instant_articles_gettime', '120'),
('vi', 'news', 'instant_articles_auto', '1'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '0'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha_area_comm', '1'),
('vi', 'news', 'perpagecomm', '5'),
('vi', 'news', 'timeoutcomm', '360'),
('vi', 'news', 'allowattachcomm', '0'),
('vi', 'news', 'alloweditorcomm', '0'),
('vi', 'news', 'frontend_edit_alias', '0'),
('vi', 'news', 'frontend_edit_layout', '1'),
('vi', 'news', 'captcha_type', 'captcha'),
('vi', 'contact', 'bodytext', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),
('vi', 'contact', 'sendcopymode', '0'),
('vi', 'contact', 'captcha_type', 'captcha'),
('vi', 'voting', 'difftimeout', '3600'),
('vi', 'voting', 'captcha_type', 'captcha'),
('sys', 'banners', 'captcha_type', 'captcha'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha_area_comm', '1'),
('vi', 'page', 'perpagecomm', '5'),
('vi', 'page', 'timeoutcomm', '360'),
('vi', 'page', 'allowattachcomm', '0'),
('vi', 'page', 'alloweditorcomm', '0'),
('vi', 'comment', 'captcha_type', 'captcha'),
('vi', 'siteterms', 'auto_postcomm', '1'),
('vi', 'siteterms', 'allowed_comm', '-1'),
('vi', 'siteterms', 'view_comm', '6'),
('vi', 'siteterms', 'setcomm', '4'),
('vi', 'siteterms', 'activecomm', '0'),
('vi', 'siteterms', 'emailcomm', '0'),
('vi', 'siteterms', 'adminscomm', ''),
('vi', 'siteterms', 'sortcomm', '0'),
('vi', 'siteterms', 'captcha_area_comm', '1'),
('vi', 'siteterms', 'perpagecomm', '5'),
('vi', 'siteterms', 'timeoutcomm', '360'),
('vi', 'siteterms', 'allowattachcomm', '0'),
('vi', 'siteterms', 'alloweditorcomm', '0'),
('vi', 'freecontent', 'next_execute', '0'),
('sys', 'site', 'statistics_timezone', 'Asia/Ho_Chi_Minh'),
('sys', 'site', 'site_email', 'webmaster@bytech.vn'),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', 'webmaster@bytech.vn'),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'bytech.vn'),
('sys', 'global', 'cookie_prefix', 'nv4'),
('sys', 'global', 'session_prefix', 'nv4s_c8wuoR'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '0'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', '3HvftCkaJ-7TUNs7gzebyQ,,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0'),
('vi', 'themes', 'default', 'a:0:{}'),
('sys', 'site', 'sitetimestamp', '9');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_cookies`
--

CREATE TABLE `giapha_cookies` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `domain` varchar(100) NOT NULL DEFAULT '',
  `path` varchar(100) NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT 0,
  `secure` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_counter`
--

CREATE TABLE `giapha_counter` (
  `c_type` varchar(100) NOT NULL,
  `c_val` varchar(100) NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT 0,
  `c_count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `vi_count` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_counter`
--

INSERT INTO `giapha_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1786948847, 0),
('total', 'hits', 1786948847, 1256, 1256),
('year', '2025', 1760600773, 87, 87),
('year', '2026', 1786948847, 1169, 1169),
('year', '2027', 0, 0, 0),
('year', '2028', 0, 0, 0),
('year', '2029', 0, 0, 0),
('year', '2030', 0, 0, 0),
('year', '2031', 0, 0, 0),
('year', '2032', 0, 0, 0),
('year', '2033', 0, 0, 0),
('month', 'Jan', 1769700771, 12, 12),
('month', 'Feb', 1771786290, 4, 4),
('month', 'Mar', 1774966601, 117, 117),
('month', 'Apr', 1777472021, 249, 249),
('month', 'May', 1780246124, 248, 248),
('month', 'Jun', 1782804995, 228, 228),
('month', 'Jul', 1785514734, 225, 225),
('month', 'Aug', 1786948847, 86, 86),
('month', 'Sep', 0, 0, 0),
('month', 'Oct', 1760600773, 0, 0),
('month', 'Nov', 0, 0, 0),
('month', 'Dec', 0, 0, 0),
('day', '01', 1785575217, 5, 5),
('day', '02', 1785689010, 7, 7),
('day', '03', 1785772785, 4, 4),
('day', '04', 1785842437, 1, 1),
('day', '05', 1785891613, 4, 4),
('day', '06', 1786024120, 8, 8),
('day', '07', 1786079879, 6, 6),
('day', '08', 1786199871, 4, 4),
('day', '09', 1786285022, 3, 3),
('day', '10', 1786353352, 4, 4),
('day', '11', 1786435377, 3, 3),
('day', '12', 1786531700, 3, 3),
('day', '13', 1786626753, 6, 6),
('day', '14', 1786724601, 4, 4),
('day', '15', 1786806324, 3, 3),
('day', '16', 1786890269, 7, 7),
('day', '17', 1786948847, 14, 14),
('day', '18', 1784382803, 0, 0),
('day', '19', 1784468103, 0, 0),
('day', '20', 1784554620, 0, 0),
('day', '21', 1784649364, 0, 0),
('day', '22', 1784732641, 0, 0),
('day', '23', 1784825038, 0, 0),
('day', '24', 1784835556, 0, 0),
('day', '25', 1784979821, 0, 0),
('day', '26', 1785077535, 0, 0),
('day', '27', 1785167820, 0, 0),
('day', '28', 1785228959, 0, 0),
('day', '29', 1785337787, 0, 0),
('day', '30', 1785405452, 0, 0),
('day', '31', 1785514734, 0, 0),
('dayofweek', 'Sunday', 1786890269, 213, 213),
('dayofweek', 'Monday', 1786948847, 208, 208),
('dayofweek', 'Tuesday', 1786435377, 166, 166),
('dayofweek', 'Wednesday', 1786531700, 152, 152),
('dayofweek', 'Thursday', 1786626753, 158, 158),
('dayofweek', 'Friday', 1786724601, 202, 202),
('dayofweek', 'Saturday', 1786806324, 157, 157),
('hour', '00', 1786902484, 7, 7),
('hour', '01', 1786732435, 0, 0),
('hour', '02', 1786129972, 0, 0),
('hour', '03', 1786910494, 1, 1),
('hour', '04', 1784408710, 0, 0),
('hour', '05', 1786832937, 0, 0),
('hour', '06', 1786663170, 0, 0),
('hour', '07', 1786754741, 0, 0),
('hour', '08', 1786928654, 1, 1),
('hour', '09', 1786848231, 0, 0),
('hour', '10', 1786936523, 2, 2),
('hour', '11', 1786594711, 0, 0),
('hour', '12', 1786943213, 1, 1),
('hour', '13', 1786948847, 2, 2),
('hour', '14', 1786346654, 0, 0),
('hour', '15', 1786611469, 0, 0),
('hour', '16', 1786353352, 0, 0),
('hour', '17', 1786874786, 0, 0),
('hour', '18', 1785842437, 0, 0),
('hour', '19', 1786710074, 0, 0),
('hour', '20', 1786886997, 0, 0),
('hour', '21', 1786890269, 0, 0),
('hour', '22', 1786806324, 0, 0),
('hour', '23', 1786724601, 0, 0),
('bot', 'googlebot', 1781587030, 3, 3),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 1786663170, 11, 11),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 1782403415, 2, 2),
('browser', 'edge', 1786946867, 12, 12),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 1786832937, 126, 126),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 1786948847, 305, 305),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 1786219480, 34, 34),
('browser', 'iphone', 1786936523, 102, 102),
('browser', 'ipod', 1742911575, 2, 2),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1786928654, 580, 580),
('browser', 'cococ', 0, 0, 0),
('browser', 'android', 1786732435, 1, 1),
('browser', 'googlebot', 1781587030, 3, 3),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 0, 0, 0),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 1779169455, 28, 28),
('browser', 'Unknown', 1786531700, 48, 48),
('os', 'unknown', 1786901773, 326, 326),
('os', 'win', 0, 0, 0),
('os', 'win10', 1786948847, 380, 380),
('os', 'win8', 1785284586, 12, 12),
('os', 'win7', 1786724601, 22, 22),
('os', 'win2003', 0, 0, 0),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 1782403415, 2, 2),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 1786848231, 187, 187),
('os', 'linux', 1785950437, 158, 158),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 1786936523, 107, 107),
('os', 'ipod', 1742911575, 2, 2),
('os', 'ipad', 1742913430, 1, 1),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 1786902484, 40, 40),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 1786079879, 1, 1),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 1785476347, 11, 11),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 1780995637, 3, 3),
('country', 'BE', 1781595131, 2, 2),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 1774766507, 1, 1),
('country', 'BR', 1774766514, 1, 1),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 1786191397, 24, 24),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 1784333620, 3, 3),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 1780625533, 4, 4),
('country', 'CO', 0, 0, 0),
('country', 'CR', 1777015669, 1, 1),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 1786123061, 15, 15),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 1785772785, 13, 13),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 1774766565, 2, 2),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 1785714483, 2, 2),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 1786663170, 13, 13),
('country', 'GA', 0, 0, 0),
('country', 'GB', 1783524663, 19, 19),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 1785290813, 3, 3),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 0, 0, 0),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 1784914507, 3, 3),
('country', 'IE', 1784976936, 13, 13),
('country', 'IL', 0, 0, 0),
('country', 'IN', 1780539386, 9, 9),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 1786591484, 1, 1),
('country', 'IS', 0, 0, 0),
('country', 'IT', 1781119133, 5, 5),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 1778391804, 6, 6),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 1777315479, 3, 3),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 1779996696, 2, 2),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 0, 0, 0),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 1774766574, 1, 1),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 1786129972, 7, 7),
('country', 'NO', 1781375075, 3, 3),
('country', 'NP', 1783308015, 1, 1),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 1784713864, 1, 1),
('country', 'PL', 1785110528, 3, 3),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 1785211405, 8, 8),
('country', 'RU', 1784534575, 8, 8),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 1786902484, 47, 47),
('country', 'SG', 1784610215, 8, 8),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 1774766525, 1, 1),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 1782409859, 15, 15),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 1769700771, 2, 2),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 1786488820, 7, 7),
('country', 'UG', 0, 0, 0),
('country', 'US', 1786936523, 731, 731),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 1779519545, 1, 1),
('country', 'VI', 0, 0, 0),
('country', 'VN', 1786946867, 160, 160),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 1776123881, 1, 1),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1786948847, 91, 91),
('country', 'unkown', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_cronjobs`
--

CREATE TABLE `giapha_cronjobs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `start_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `inter_val` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `inter_val_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: Lặp lại sau thời điểm bắt đầu thực tế, 1:lặp lại sau thời điểm bắt đầu trong CSDL',
  `run_file` varchar(255) NOT NULL,
  `run_func` varchar(255) NOT NULL,
  `params` varchar(255) DEFAULT NULL,
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_sys` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `last_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_result` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vi_cron_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_cronjobs`
--

INSERT INTO `giapha_cronjobs` (`id`, `start_time`, `inter_val`, `inter_val_type`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1742892758, 5, 0, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1786946867, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1742892758, 1440, 0, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1786936523, 1, 'Tự động lưu CSDL'),
(3, 1742892758, 60, 0, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1786946867, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1742892758, 30, 0, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1786946867, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1742892758, 1440, 0, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1786936523, 1, 'Xóa các file error_log quá hạn'),
(6, 1742892758, 360, 0, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1742892758, 60, 0, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1786946867, 1, 'Xóa các referer quá hạn'),
(8, 1742892758, 60, 0, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1786946867, 1, 'Kiểm tra phiên bản NukeViet'),
(9, 1742892758, 1440, 0, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1786936523, 1, 'Xóa thông báo cũ');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_extension_files`
--

CREATE TABLE `giapha_extension_files` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'other',
  `title` varchar(55) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `lastmodified` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `duplicate` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_extension_files`
--

INSERT INTO `giapha_extension_files` (`idfile`, `type`, `title`, `path`, `lastmodified`, `duplicate`) VALUES
(1, 'block', 'global.licham.php', 'themes/default/blocks/global.licham.ini', 1742981315, 0),
(2, 'block', 'global.licham.php', 'themes/default/blocks/global.licham.php', 1742981315, 0),
(3, 'block', 'global.licham.php', 'themes/default/blocks/global.licham.tpl', 1742981315, 0);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_ips`
--

CREATE TABLE `giapha_ips` (
  `id` mediumint(8) NOT NULL,
  `type` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(32) DEFAULT NULL,
  `mask` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_language`
--

CREATE TABLE `giapha_language` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `idfile` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `langtype` varchar(50) NOT NULL DEFAULT 'lang_module',
  `lang_key` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_language_file`
--

CREATE TABLE `giapha_language_file` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(50) NOT NULL,
  `admin_file` varchar(200) NOT NULL DEFAULT '0',
  `langtype` varchar(50) NOT NULL DEFAULT 'lang_module'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_logs`
--

CREATE TABLE `giapha_logs` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `name_key` varchar(255) NOT NULL,
  `note_action` text NOT NULL,
  `link_acess` varchar(255) DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_logs`
--

INSERT INTO `giapha_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:118.68.49.29', '', 0, 1742892801),
(2, 'vi', 'modules', 'Thiết lập module mới gia-pha', '', '', 1, 1742892973),
(3, 'vi', 'modules', 'Sửa module &ldquo;gia-pha&rdquo;', '', '', 1, 1742892994),
(4, 'vi', 'upload', 'Upload file', 'uploads/gia-pha/cleanshot-2025-03-25-at-13.56.05a2x.png', '', 1, 1742893111),
(5, 'vi', 'menu', 'Edit menu', 'Menu id: 1', '', 1, 1742893864),
(6, 'vi', 'menu', 'Add row menu', 'Row menu id: 23 of Menu id: 1', '', 1, 1742893893),
(7, 'vi', 'menu', 'Delete menu item', 'Item ID 8', '', 1, 1742894574),
(8, 'vi', 'menu', 'Delete menu item', 'Item ID 9', '', 1, 1742894574),
(9, 'vi', 'menu', 'Delete menu item', 'Item ID 10', '', 1, 1742894574),
(10, 'vi', 'menu', 'Delete menu item', 'Item ID 11', '', 1, 1742894574),
(11, 'vi', 'menu', 'Delete menu item', 'Item ID 12', '', 1, 1742894574),
(12, 'vi', 'menu', 'Delete menu item', 'Item ID 13', '', 1, 1742894574),
(13, 'vi', 'menu', 'Delete menu item', 'Item ID 14', '', 1, 1742894574),
(14, 'vi', 'menu', 'Delete menu item', 'Item ID 15', '', 1, 1742894574),
(15, 'vi', 'menu', 'Delete menu item', 'Item ID 16', '', 1, 1742894574),
(16, 'vi', 'menu', 'Delete menu item', 'Item ID 17', '', 1, 1742894574),
(17, 'vi', 'menu', 'Delete menu item', 'Item ID 18', '', 1, 1742894574),
(18, 'vi', 'menu', 'Delete menu item', 'Item ID 19', '', 1, 1742894574),
(19, 'vi', 'menu', 'Delete menu item', 'Item ID 20', '', 1, 1742894574),
(20, 'vi', 'menu', 'Delete menu item', 'Item ID 21', '', 1, 1742894574),
(21, 'vi', 'menu', 'Delete menu item', 'Item ID 22', '', 1, 1742894574),
(22, 'vi', 'menu', 'Del row menu', 'Row menu id: 1,2', '', 1, 1742894574),
(23, 'vi', 'news', 'Xóa bài viêt', 'NukeViet 4.3 có gì mới?, NukeViet 4.2 có gì mới?, NukeViet 4.0 có gì mới?, Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;, Tuyển dụng lập trình viên PHP phát triển NukeViet, Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT, NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016, Học việc tại công ty VINADES, Chương trình thực tập sinh tại công ty VINADES, Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet, Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet, Công ty VINADES tuyển dụng nhân viên kinh doanh, NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước, Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011, Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', '', 1, 1742894586),
(24, 'vi', 'about', 'Delete', 'ID: 8', '', 1, 1742894609),
(25, 'vi', 'about', 'Delete', 'ID: 7', '', 1, 1742894610),
(26, 'vi', 'about', 'Delete', 'ID: 6', '', 1, 1742894611),
(27, 'vi', 'about', 'Delete', 'ID: 5', '', 1, 1742894613),
(28, 'vi', 'about', 'Delete', 'ID: 4', '', 1, 1742894614),
(29, 'vi', 'about', 'Delete', 'ID: 3', '', 1, 1742894615),
(30, 'vi', 'about', 'Delete', 'ID: 2', '', 1, 1742894616),
(31, 'vi', 'menu', 'Edit row menu', 'Row menu id: 23', '', 1, 1742895338),
(32, 'vi', 'menu', 'Edit row menu', 'Row menu id: 23', '', 1, 1742895379),
(33, 'vi', 'modules', 'Sửa module &ldquo;gia-pha&rdquo;', '', '', 1, 1742895437),
(34, 'vi', 'modules', 'Sửa module &ldquo;gia-pha&rdquo;', '', '', 1, 1742895455),
(35, 'vi', 'upload', 'Upload file', 'uploads/gia-pha/dongho.png', '', 1, 1742896006),
(36, 'vi', 'menu', 'Change weight row menu', 'Row menu id: 23, new weight: 1', '', 1, 1742896264),
(37, 'vi', 'menu', 'Inactive row menu', 'Row menu id: 6', '', 1, 1742896282),
(38, 'vi', 'menu', 'Inactive row menu', 'Row menu id: 7', '', 1, 1742896285),
(39, 'vi', 'menu', 'Add row menu', 'Row menu id: 24 of Menu id: 1', '', 1, 1742896459),
(40, 'vi', 'menu', 'Edit row menu', 'Row menu id: 24', '', 1, 1742896484),
(41, 'vi', 'menu', 'Change weight row menu', 'Row menu id: 24, new weight: 2', '', 1, 1742896489),
(42, 'vi', 'menu', 'Del row menu', 'Row menu id: 6 of Menu id: 1', '', 1, 1742896496),
(43, 'vi', 'menu', 'Del row menu', 'Row menu id: 7 of Menu id: 1', '', 1, 1742896499),
(44, 'vi', 'menu', 'Del row menu', 'Row menu id: 5 of Menu id: 1', '', 1, 1742896500),
(45, 'vi', 'menu', 'Edit row menu', 'Row menu id: 24', '', 1, 1742896523),
(46, 'vi', 'menu', 'Add row menu', 'Row menu id: 25 of Menu id: 1', '', 1, 1742896557),
(47, 'vi', 'menu', 'Add row menu', 'Row menu id: 26 of Menu id: 1', '', 1, 1742896580),
(48, 'vi', 'menu', 'Add row menu', 'Row menu id: 27 of Menu id: 1', '', 1, 1742896600),
(49, 'vi', 'menu', 'Change weight row menu', 'Row menu id: 25, new weight: 3', '', 1, 1742896608),
(50, 'vi', 'menu', 'Change weight row menu', 'Row menu id: 26, new weight: 4', '', 1, 1742896611),
(51, 'vi', 'menu', 'Change weight row menu', 'Row menu id: 27, new weight: 5', '', 1, 1742896613),
(52, 'vi', 'menu', 'Add row menu', 'Row menu id: 28 of Menu id: 1', '', 1, 1742896640),
(53, 'vi', 'menu', 'Change weight row menu', 'Row menu id: 28, new weight: 6', '', 1, 1742896644),
(54, 'vi', 'menu', 'Change weight row menu', 'Row menu id: 25, new weight: 2', '', 1, 1742900051),
(55, 'vi', 'contact', 'log_edit_row', 'id: 1 Phòng Chăm sóc khách hàng', '', 1, 1742900199),
(56, 'vi', 'contact', 'log_edit_row', 'id: 2 Phòng Kỹ thuật', '', 1, 1742900231),
(57, 'vi', 'upload', 'Upload file', 'uploads/gia-pha/319888520_1557752167983894_7751465621893382090_n.jpg', '', 1, 1742900788),
(58, 'vi', 'users', '[biennb] Đăng nhập theo kiểu thông thường', ' Client IP:172.225.181.39', '', 0, 1742905979),
(59, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:172.225.181.39', '', 0, 1742906021),
(60, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:116.104.71.3', '', 0, 1742906122),
(61, 'vi', 'users', '[biennb] Đăng nhập theo kiểu thông thường', ' Client IP:116.104.71.3', '', 0, 1742913486),
(62, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:116.104.71.3', '', 0, 1742913617),
(63, 'vi', 'themes', 'Thêm block', 'Name : global menu footer', '', 1, 1742913754),
(64, 'vi', 'gia-pha', 'log_del_about', 'aboutid  64', '', 1, 1742913951),
(65, 'vi', 'gia-pha', 'log_del_about', 'aboutid  2', '', 1, 1742913954),
(66, 'vi', 'gia-pha', 'log_del_about', 'aboutid  3', '', 1, 1742913956),
(67, 'vi', 'gia-pha', 'log_del_about', 'aboutid  4', '', 1, 1742913958),
(68, 'vi', 'gia-pha', 'log_del_about', 'aboutid  5', '', 1, 1742913961),
(69, 'vi', 'gia-pha', 'log_del_about', 'aboutid  6', '', 1, 1742913965),
(70, 'vi', 'gia-pha', 'log_del_about', 'aboutid  7', '', 1, 1742913967),
(71, 'vi', 'gia-pha', 'log_del_about', 'aboutid  63', '', 1, 1742913972),
(72, 'vi', 'gia-pha', 'log_del_about', 'aboutid  8', '', 1, 1742913976),
(73, 'vi', 'gia-pha', 'log_del_about', 'aboutid  10', '', 1, 1742913978),
(74, 'vi', 'gia-pha', 'log_del_about', 'aboutid  11', '', 1, 1742913980),
(75, 'vi', 'gia-pha', 'log_del_about', 'aboutid  12', '', 1, 1742913981),
(76, 'vi', 'gia-pha', 'log_del_about', 'aboutid  13', '', 1, 1742913983),
(77, 'vi', 'gia-pha', 'log_del_about', 'aboutid  14', '', 1, 1742913986),
(78, 'vi', 'gia-pha', 'log_del_about', 'aboutid  15', '', 1, 1742913987),
(79, 'vi', 'gia-pha', 'log_del_about', 'aboutid  16', '', 1, 1742913989),
(80, 'vi', 'gia-pha', 'log_del_about', 'aboutid  17', '', 1, 1742913991),
(81, 'vi', 'gia-pha', 'log_del_about', 'aboutid  18', '', 1, 1742913993),
(82, 'vi', 'gia-pha', 'log_del_about', 'aboutid  19', '', 1, 1742913995),
(83, 'vi', 'gia-pha', 'log_del_about', 'aboutid  20', '', 1, 1742913997),
(84, 'vi', 'gia-pha', 'log_del_about', 'aboutid  21', '', 1, 1742913999),
(85, 'vi', 'gia-pha', 'log_del_about', 'aboutid  22', '', 1, 1742914001),
(86, 'vi', 'gia-pha', 'log_del_about', 'aboutid  23', '', 1, 1742914003),
(87, 'vi', 'gia-pha', 'log_del_about', 'aboutid  24', '', 1, 1742914004),
(88, 'vi', 'gia-pha', 'log_del_about', 'aboutid  25', '', 1, 1742914007),
(89, 'vi', 'gia-pha', 'log_del_about', 'aboutid  26', '', 1, 1742914009),
(90, 'vi', 'gia-pha', 'log_del_about', 'aboutid  27', '', 1, 1742914010),
(91, 'vi', 'gia-pha', 'log_del_about', 'aboutid  28', '', 1, 1742914012),
(92, 'vi', 'gia-pha', 'log_del_about', 'aboutid  29', '', 1, 1742914014),
(93, 'vi', 'gia-pha', 'log_del_about', 'aboutid  30', '', 1, 1742914015),
(94, 'vi', 'gia-pha', 'log_del_about', 'aboutid  31', '', 1, 1742914017),
(95, 'vi', 'gia-pha', 'log_del_about', 'aboutid  32', '', 1, 1742914018),
(96, 'vi', 'gia-pha', 'log_del_about', 'aboutid  33', '', 1, 1742914020),
(97, 'vi', 'gia-pha', 'log_del_about', 'aboutid  34', '', 1, 1742914022),
(98, 'vi', 'gia-pha', 'log_del_about', 'aboutid  35', '', 1, 1742914024),
(99, 'vi', 'gia-pha', 'log_del_about', 'aboutid  36', '', 1, 1742914026),
(100, 'vi', 'gia-pha', 'log_del_about', 'aboutid  37', '', 1, 1742914028),
(101, 'vi', 'gia-pha', 'log_del_about', 'aboutid  38', '', 1, 1742914030),
(102, 'vi', 'gia-pha', 'log_del_about', 'aboutid  39', '', 1, 1742914033),
(103, 'vi', 'gia-pha', 'log_del_about', 'aboutid  40', '', 1, 1742914035),
(104, 'vi', 'gia-pha', 'log_del_about', 'aboutid  43', '', 1, 1742914037),
(105, 'vi', 'gia-pha', 'log_del_about', 'aboutid  44', '', 1, 1742914039),
(106, 'vi', 'gia-pha', 'log_del_about', 'aboutid  45', '', 1, 1742914040),
(107, 'vi', 'gia-pha', 'log_del_about', 'aboutid  46', '', 1, 1742914042),
(108, 'vi', 'gia-pha', 'log_del_about', 'aboutid  47', '', 1, 1742914043),
(109, 'vi', 'gia-pha', 'log_del_about', 'aboutid  42', '', 1, 1742914045),
(110, 'vi', 'gia-pha', 'log_del_about', 'aboutid  49', '', 1, 1742914046),
(111, 'vi', 'gia-pha', 'log_del_about', 'aboutid  50', '', 1, 1742914048),
(112, 'vi', 'gia-pha', 'log_del_about', 'aboutid  51', '', 1, 1742914050),
(113, 'vi', 'gia-pha', 'log_del_about', 'aboutid  52', '', 1, 1742914053),
(114, 'vi', 'gia-pha', 'log_del_about', 'aboutid  53', '', 1, 1742914055),
(115, 'vi', 'gia-pha', 'log_del_about', 'aboutid  54', '', 1, 1742914056),
(116, 'vi', 'gia-pha', 'log_del_about', 'aboutid  55', '', 1, 1742914058),
(117, 'vi', 'gia-pha', 'log_del_about', 'aboutid  56', '', 1, 1742914059),
(118, 'vi', 'gia-pha', 'log_del_about', 'aboutid  57', '', 1, 1742914061),
(119, 'vi', 'gia-pha', 'log_del_about', 'aboutid  58', '', 1, 1742914063),
(120, 'vi', 'gia-pha', 'log_del_about', 'aboutid  59', '', 1, 1742914064),
(121, 'vi', 'gia-pha', 'log_del_about', 'aboutid  60', '', 1, 1742914066),
(122, 'vi', 'gia-pha', 'log_del_about', 'aboutid  48', '', 1, 1742914067),
(123, 'vi', 'gia-pha', 'log_del_about', 'aboutid  61', '', 1, 1742914069),
(124, 'vi', 'gia-pha', 'log_del_about', 'aboutid  62', '', 1, 1742914073),
(125, 'vi', 'gia-pha', 'log_del_about', 'aboutid  41', '', 1, 1742914075),
(126, 'vi', 'users', '[biennb] Đăng nhập theo kiểu thông thường', ' Client IP:116.104.71.3', '', 0, 1742933290),
(127, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:116.104.71.3', '', 0, 1742933354),
(128, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:118.68.49.29', '', 0, 1742977291),
(129, 'vi', 'themes', 'Sửa block', 'Name : global menu footer', '', 1, 1742977521),
(130, 'vi', 'themes', 'Thêm block', 'Name : CauDoiTrai', '', 1, 1742978609),
(131, 'vi', 'banners', 'log_edit_banner', 'bannerid 2', '', 1, 1742978747),
(132, 'vi', 'banners', 'log_add_banner', 'bannerid 3', '', 1, 1742978777),
(133, 'vi', 'themes', 'Thêm block', 'Name : global banners', '', 1, 1742978810),
(134, 'vi', 'banners', 'log_edit_banner', 'bannerid 2', '', 1, 1742978884),
(135, 'vi', 'themes', 'Sửa block', 'Name : CauDoiTrai', '', 1, 1742978972),
(136, 'vi', 'themes', 'Sửa block', 'Name : CauDoiTrai', '', 1, 1742978993),
(137, 'vi', 'themes', 'Sửa block', 'Name : global banners', '', 1, 1742979003),
(138, 'vi', 'upload', 'Upload file', 'uploads/cau-doi-phai.jpg', '', 1, 1742980413),
(139, 'vi', 'upload', 'Upload file', 'uploads/banner-chinh.jpg', '', 1, 1742980423),
(140, 'vi', 'upload', 'Upload file', 'uploads/cau-doi-trai.jpg', '', 1, 1742980433),
(141, 'vi', 'upload', 'Xóa file', 'uploads/banner-chinh.jpg', '', 1, 1742980999),
(142, 'vi', 'upload', 'Upload file', 'uploads/banner-chinh.jpg', '', 1, 1742981059),
(143, 'vi', 'banners', 'log_edit_banner', 'bannerid 2', '', 1, 1742981150),
(144, 'vi', 'banners', 'log_edit_banner', 'bannerid 3', '', 1, 1742981165),
(145, 'vi', 'themes', 'Sửa block', 'Name : global banners', '', 1, 1742981218),
(146, 'vi', 'themes', 'Sửa block', 'Name : global banners', '', 1, 1742981228),
(147, 'vi', 'themes', 'Sửa block', 'Name : global banners', '', 1, 1742981247),
(148, 'vi', 'themes', 'Sửa block', 'Name : global banners', '', 1, 1742981261),
(149, 'vi', 'themes', 'Sửa block', 'Name : Cau Doi Phai', '', 1, 1742981272),
(150, 'vi', 'themes', 'Sửa block', 'Name : Cau Doi Trai', '', 1, 1742981281),
(151, 'vi', 'extensions', 'Cài đặt ứng dụng', 'block-lich-am-duong-lich-van-nien-v1-0-00.zip', '', 1, 1742981311),
(152, 'vi', 'themes', 'Thêm block', 'Name : Lịch Âm', '', 1, 1742981352),
(153, 'vi', 'themes', 'Thêm block', 'Name : Lịch Âm', '', 1, 1742981395),
(154, 'vi', 'users', '[biennb] Đăng nhập theo kiểu thông thường', ' Client IP:118.68.49.29', '', 0, 1743041216),
(155, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:118.68.49.29', '', 0, 1743041254),
(156, 'vi', 'themes', 'Sửa block', 'Name : Lịch Âm', '', 1, 1743042634),
(157, 'vi', 'themes', 'Sửa block', 'Name : Lịch Âm', '', 1, 1743042657),
(158, 'vi', 'users', '[biennb] Đăng nhập theo kiểu thông thường', ' Client IP:104.28.68.150', '', 0, 1743944496),
(159, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:104.28.68.150', '', 0, 1743944570),
(160, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:113.22.63.189', '', 0, 1750048861),
(161, 'vi', 'login', '[biennb] Thoát khỏi tài khoản Quản trị', ' Client IP:113.22.63.189', '', 1, 1750049564),
(162, 'vi', 'users', '[biennb] Đăng nhập theo kiểu thông thường', ' Client IP:113.22.63.189', '', 0, 1750049608),
(163, 'vi', 'users', '[biennb] Thoát khỏi tài khoản thành viên', ' Client IP:113.22.63.189', '', 1, 1750049908),
(164, 'vi', 'users', '[biennb] Đăng nhập theo kiểu thông thường', ' Client IP:113.22.63.189', '', 0, 1750049934),
(165, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:113.22.63.189', '', 0, 1750049987),
(166, 'vi', 'users', 'log_add_user', 'userid 2', '', 1, 1750050137),
(167, 'vi', 'authors', 'Thêm Quản trị', 'Username: tinh', '', 1, 1750050165),
(168, 'vi', 'login', '[biennb] Thoát khỏi tài khoản Quản trị', ' Client IP:113.22.63.189', '', 1, 1750051246),
(169, 'vi', 'users', '[tinh] Đăng nhập theo kiểu thông thường', ' Client IP:113.22.63.189', '', 0, 1750051261),
(170, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:113.22.63.189', '', 0, 1750051281),
(171, 'vi', 'login', '[tinh] Thoát khỏi tài khoản Quản trị', ' Client IP:113.22.63.189', '', 0, 1750053474),
(172, 'vi', 'login', '[tinh] Đăng nhập Thất bại', ' Client IP:118.70.99.240', '', 0, 1750055495),
(173, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:118.70.99.240', '', 0, 1750055535),
(174, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:113.22.63.189', '', 0, 1750056634),
(175, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:1.55.210.53', '', 0, 1750899663),
(176, 'vi', 'login', '[tinh] Thoát khỏi tài khoản Quản trị', ' Client IP:1.55.210.53', '', 0, 1750906023),
(177, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:118.70.99.146', '', 0, 1750909636),
(178, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:118.70.99.146', '', 0, 1750921331),
(179, 'vi', 'login', '[tinh] Thoát khỏi tài khoản Quản trị', ' Client IP:118.70.99.146', '', 0, 1750923183),
(180, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:118.70.99.153', '', 0, 1751856653),
(181, 'vi', 'login', '[tinh] Thoát khỏi tài khoản Quản trị', ' Client IP:118.70.99.153', '', 0, 1751864170),
(182, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:118.70.99.153', '', 0, 1751865295),
(183, 'vi', 'login', '[tinh] Thoát khỏi tài khoản Quản trị', ' Client IP:118.70.99.153', '', 0, 1751867515),
(184, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:118.70.99.153', '', 0, 1751870766),
(185, 'vi', 'login', '[tinh] Thoát khỏi tài khoản Quản trị', ' Client IP:118.70.99.153', '', 0, 1751875314),
(186, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:118.70.249.105', '', 0, 1751965157),
(187, 'vi', 'login', '[tinh] Thoát khỏi tài khoản Quản trị', ' Client IP:118.70.249.105', '', 0, 1751968825),
(188, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:42.114.73.114', '', 0, 1753499846),
(189, 'vi', 'login', '[tinh] Thoát khỏi tài khoản Quản trị', ' Client IP:42.113.60.108', '', 0, 1753507037),
(190, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:42.113.60.108', '', 0, 1753512761),
(191, 'vi', 'login', '[tinh] Thoát khỏi tài khoản Quản trị', ' Client IP:42.113.60.108', '', 0, 1753514776),
(192, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:42.113.60.108', '', 0, 1753515230),
(193, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:42.114.72.233', '', 0, 1765246188),
(194, 'vi', 'login', '[tinh] Thoát khỏi tài khoản Quản trị', ' Client IP:42.114.72.233', '', 0, 1765248638),
(195, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:42.114.249.118', '', 0, 1768531572),
(196, 'vi', 'login', '[tinh] Thoát khỏi tài khoản Quản trị', ' Client IP:42.114.249.118', '', 0, 1768533379),
(197, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:118.68.217.153', '', 0, 1771231726),
(198, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:42.114.95.122', '', 0, 1774692620),
(199, 'vi', 'login', '[tinh] Đăng nhập', ' Client IP:42.114.95.122', '', 0, 1774695563),
(200, 'vi', 'users', '[biennb] Đăng nhập theo kiểu thông thường', ' Client IP:116.99.4.24', '', 0, 1774879917),
(201, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:116.99.4.24', '', 0, 1774880301),
(202, 'vi', 'menu', 'Edit row menu', 'Row menu id: 23', '', 1, 1774880320),
(203, 'vi', 'menu', 'Edit row menu', 'Row menu id: 25', '', 1, 1774880329),
(204, 'vi', 'menu', 'Edit row menu', 'Row menu id: 24', '', 1, 1774880338),
(205, 'vi', 'menu', 'Edit row menu', 'Row menu id: 26', '', 1, 1774880343),
(206, 'vi', 'menu', 'Edit row menu', 'Row menu id: 27', '', 1, 1774880348),
(207, 'vi', 'menu', 'Edit row menu', 'Row menu id: 28', '', 1, 1774880353),
(208, 'vi', 'menu', 'Edit row menu', 'Row menu id: 3', '', 1, 1774880359),
(209, 'vi', 'menu', 'Edit row menu', 'Row menu id: 4', '', 1, 1774880364),
(210, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:116.99.4.24', '', 0, 1774880515),
(211, 'vi', 'upload', 'Upload file', 'uploads/logo2.jpg', '', 1, 1774881144),
(212, 'vi', 'menu', 'Edit row menu', 'Row menu id: 23', '', 1, 1774881265),
(213, 'vi', 'menu', 'Edit row menu', 'Row menu id: 23', '', 1, 1774881277),
(214, 'vi', 'menu', 'Edit row menu', 'Row menu id: 25', '', 1, 1774881298),
(215, 'vi', 'menu', 'Edit row menu', 'Row menu id: 24', '', 1, 1774881307),
(216, 'vi', 'menu', 'Edit row menu', 'Row menu id: 26', '', 1, 1774881313),
(217, 'vi', 'menu', 'Edit row menu', 'Row menu id: 27', '', 1, 1774881317),
(218, 'vi', 'menu', 'Edit row menu', 'Row menu id: 28', '', 1, 1774881321),
(219, 'vi', 'login', '[biennb] Đăng nhập Thất bại', ' Client IP:14.171.90.82', '', 0, 1775902198),
(220, 'vi', 'login', '[nbb3i] Đăng nhập Thất bại', ' Client IP:14.171.90.82', '', 0, 1775902202),
(221, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:14.171.90.82', '', 0, 1775902212),
(222, 'vi', 'users', '[biennb] Đăng nhập theo kiểu thông thường', ' Client IP:14.171.90.82', '', 0, 1775902379),
(223, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:14.171.90.82', '', 0, 1775902450),
(224, 'vi', 'login', '[nguyenbabien@gmail.com] Đăng nhập Thất bại', ' Client IP:1.54.115.171', '', 0, 1776148491),
(225, 'vi', 'login', '[nguyenbabien@gmail.com] Đăng nhập Thất bại', ' Client IP:1.54.115.171', '', 0, 1776148496),
(226, 'vi', 'login', '[nguyenbabien@gmail.com] Đăng nhập Thất bại', ' Client IP:1.54.115.171', '', 0, 1776148503),
(227, 'vi', 'login', '[nguyenbabien@gmail.com] Đăng nhập Thất bại', ' Client IP:1.54.115.171', '', 0, 1776148509),
(228, 'vi', 'login', '[nguyenbabien@gmail.com] Đăng nhập Thất bại', ' Client IP:1.54.115.171', '', 0, 1776148516),
(229, 'vi', 'users', '[biennb] Đăng nhập theo kiểu thông thường', ' Client IP:14.246.3.134', '', 0, 1786946983),
(230, 'vi', 'login', '[biennb] Đăng nhập', ' Client IP:14.246.3.134', '', 0, 1786947024);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_notification`
--

CREATE TABLE `giapha_notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `admin_view_allowed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Cấp quản trị được xem: 0,1,2',
  `logic_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: Cấp trên xem được cấp dưới, 1: chỉ cấp hoặc người được chỉ định',
  `send_to` varchar(250) NOT NULL DEFAULT '' COMMENT 'Danh sách id người nhận, phân cách bởi dấu phảy',
  `send_from` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `area` tinyint(1) UNSIGNED NOT NULL,
  `language` char(3) NOT NULL,
  `module` varchar(50) NOT NULL,
  `obid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL,
  `view` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_notification`
--

INSERT INTO `giapha_notification` (`id`, `admin_view_allowed`, `logic_mode`, `send_to`, `send_from`, `area`, `language`, `module`, `obid`, `type`, `content`, `add_time`, `view`) VALUES
(7, 0, 0, '', 0, 1, 'vi', 'contact', 4, 'contact_new', 'a:1:{s:5:\"title\";s:60:\"Get the best advertising for your products and services&#33;\";}', 1786079882, 1);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_plugin`
--

CREATE TABLE `giapha_plugin` (
  `pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_plugin`
--

INSERT INTO `giapha_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1),
(2, 'cdn_js_css_image.php', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_sessions`
--

CREATE TABLE `giapha_sessions` (
  `session_id` varchar(50) DEFAULT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(100) NOT NULL,
  `onl_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_sessions`
--

INSERT INTO `giapha_sessions` (`session_id`, `userid`, `username`, `onl_time`) VALUES
('961d298f0f881a2c68399f74b802ad59', 1, 'biennb', 1786947003),
('90e6af171c412739812b23d92f87267a', 0, 'guest', 1786948847);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_setup_extensions`
--

CREATE TABLE `giapha_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) NOT NULL DEFAULT 'other',
  `title` varchar(55) NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT 0,
  `is_virtual` tinyint(1) NOT NULL DEFAULT 0,
  `basename` varchar(50) NOT NULL DEFAULT '',
  `table_prefix` varchar(55) NOT NULL DEFAULT '',
  `version` varchar(50) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT 0,
  `author` text NOT NULL,
  `note` varchar(255) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_setup_extensions`
--

INSERT INTO `giapha_setup_extensions` (`id`, `type`, `title`, `is_sys`, `is_virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'about', 0, 0, 'page', 'about', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'gia-pha', 0, 1, 'gia-pha', 'gia_pha', '4.0.0 1310873762', 1742892969, 'VINADES (contact@vinades.vn)', ''),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(24, 'module', 'users', 1, 1, 'users', 'users', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(312, 'module', 'freecontent', 0, 1, 'freecontent', 'freecontent', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(327, 'module', 'two-step-verification', 1, 0, 'two-step-verification', 'two_step_verification', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(311, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.5.06 1721466000', 1742892758, 'VINADES <contact@vinades.vn>', ''),
(441, 'block', 'global.licham.php', 0, 0, 'global.licham.php', 'global_licham_php', '1.0.00 1742981315', 1742981315, 'newmorningvn (newmorningvn@gmail.com)', 'Block lịch âm là tiện ích hiển thị Lịch Âm Dương - Lịch Vạn Niên cho các website sử dụng mã nguồn mở Nukeviet.');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_setup_language`
--

CREATE TABLE `giapha_setup_language` (
  `lang` char(2) NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT 0,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_setup_language`
--

INSERT INTO `giapha_setup_language` (`lang`, `setup`, `weight`) VALUES
('vi', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_upload_dir`
--

CREATE TABLE `giapha_upload_dir` (
  `did` mediumint(8) NOT NULL,
  `dirname` varchar(250) DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT 0,
  `total_size` double UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Dung lượng thư mục',
  `thumb_type` tinyint(4) NOT NULL DEFAULT 0,
  `thumb_width` smallint(6) NOT NULL DEFAULT 0,
  `thumb_height` smallint(6) NOT NULL DEFAULT 0,
  `thumb_quality` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_upload_dir`
--

INSERT INTO `giapha_upload_dir` (`did`, `dirname`, `time`, `total_size`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 0, 3, 100, 150, 90),
(1, 'uploads', 1742892789, 1426237, 0, 0, 0, 0),
(2, 'uploads/siteterms', 1742892789, 0, 0, 0, 0, 0),
(3, 'uploads/news', 1742892789, 866752, 0, 0, 0, 0),
(4, 'uploads/news/source', 1742892789, 0, 0, 0, 0, 0),
(5, 'uploads/news/authors', 1742892789, 0, 0, 0, 0, 0),
(6, 'uploads/news/topics', 1742892789, 0, 0, 0, 0, 0),
(7, 'uploads/news/temp_pic', 1742892789, 0, 0, 0, 0, 0),
(8, 'uploads/banners', 1742892789, 179287, 0, 0, 0, 0),
(9, 'uploads/banners/files', 1742892789, 0, 0, 0, 0, 0),
(10, 'uploads/freecontent', 1742892789, 138096, 0, 0, 0, 0),
(11, 'uploads/comment', 1742892789, 0, 0, 0, 0, 0),
(12, 'uploads/menu', 1742892789, 0, 0, 0, 0, 0),
(13, 'uploads/page', 1742892789, 0, 0, 0, 0, 0),
(14, 'uploads/contact', 1742892789, 0, 0, 0, 0, 0),
(15, 'uploads/users', 1742892789, 0, 0, 0, 0, 0),
(16, 'uploads/users/groups', 1742892789, 0, 0, 0, 0, 0),
(17, 'uploads/about', 1742892789, 242102, 0, 0, 0, 0),
(18, 'uploads/gia-pha', 1742980380, 1447089, 0, 0, 0, 0),
(19, 'uploads/news/2025_03', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_upload_file`
--

CREATE TABLE `giapha_upload_file` (
  `name` varchar(245) NOT NULL,
  `ext` varchar(10) NOT NULL DEFAULT '',
  `type` varchar(5) NOT NULL DEFAULT '',
  `filesize` double NOT NULL DEFAULT 0,
  `src` varchar(255) NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT 0,
  `srcheight` int(11) NOT NULL DEFAULT 0,
  `sizes` varchar(50) NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `mtime` int(11) NOT NULL DEFAULT 0,
  `did` int(11) NOT NULL DEFAULT 0,
  `title` varchar(245) NOT NULL DEFAULT '',
  `alt` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_upload_file`
--

INSERT INTO `giapha_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('nangly.jpg', 'jpg', 'image', 34802, 'assets/news/nangly.jpg', 80, 53, '500|332', 1, 1721277954, 3, 'nangly.jpg', 'nangly'),
('chuc-mung-...jpg', 'jpg', 'image', 130708, 'assets/news/chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 80, 62, '461|360', 1, 1721277954, 3, 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'chuc mung nukeviet thong tu 20 bo tttt'),
('thuc-tap-sinh.jpg', 'jpg', 'image', 71135, 'assets/news/thuc-tap-sinh.jpg', 80, 63, '460|360', 1, 1721277954, 3, 'thuc-tap-sinh.jpg', 'thuc tap sinh'),
('tuyendung-...jpg', 'jpg', 'image', 83783, 'assets/news/tuyendung-kythuat.jpg', 80, 80, '300|300', 1, 1721277954, 3, 'tuyendung-kythuat.jpg', 'tuyendung kythuat'),
('hoptac 6.jpg', 'jpg', 'image', 12871, 'uploads/news/hoptac 6.jpg', 80, 66, '382|314', 1, 1721277954, 3, 'hoptac 6.jpg', 'hoptac 6'),
('tap-huan-p...jpg', 'jpg', 'image', 132379, 'assets/news/tap-huan-pgd-ha-dong-2015.jpg', 80, 52, '460|295', 1, 1721277954, 3, 'tap-huan-pgd-ha-dong-2015.jpg', 'tap huan pgd ha dong 2015'),
('nukeviet-n...jpg', 'jpg', 'image', 18611, 'assets/news/nukeviet-nhantaidatviet2011.jpg', 80, 54, '400|268', 1, 1721277954, 3, 'nukeviet-nhantaidatviet2011.jpg', 'nukeviet nhantaidatviet2011'),
('hoptac.jpg', 'jpg', 'image', 12871, 'assets/news/hoptac.jpg', 80, 66, '382|314', 1, 1721277954, 3, 'hoptac.jpg', 'hoptac'),
('nukeviet-cms.jpg', 'jpg', 'image', 83489, 'assets/news/nukeviet-cms.jpg', 80, 55, '500|345', 1, 1721277954, 3, 'nukeviet-cms.jpg', 'nukeviet cms'),
('hoc-viec-t...jpg', 'jpg', 'image', 167193, 'assets/news/hoc-viec-tai-cong-ty-vinades.jpg', 80, 63, '460|360', 1, 1721277954, 3, 'hoc-viec-tai-cong-ty-vinades.jpg', 'hoc viec tai cong ty vinades'),
('tuyen-dung...png', 'png', 'image', 118910, 'assets/news/tuyen-dung-nvkd.png', 80, 56, '400|279', 1, 1721277954, 3, 'tuyen-dung-nvkd.png', 'tuyen dung nvkd'),
('vinades.jpg', 'jpg', 'image', 104940, 'assets/banners/vinades.jpg', 43, 80, '212|400', 1, 1721277954, 8, 'vinades.jpg', 'vinades'),
('webnhanh.jpg', 'jpg', 'image', 74347, 'assets/banners/webnhanh.jpg', 80, 10, '572|72', 1, 1721277954, 8, 'webnhanh.jpg', 'webnhanh'),
('portal.jpg', 'jpg', 'image', 25973, 'assets/freecontent/portal.jpg', 80, 44, '130|71', 1, 1721277954, 10, 'portal.jpg', 'portal'),
('toa-soan-d...jpg', 'jpg', 'image', 28737, 'assets/freecontent/toa-soan-dien-tu.jpg', 80, 44, '130|71', 1, 1721277954, 10, 'toa-soan-dien-tu.jpg', 'toa soan dien tu'),
('edugate.jpg', 'jpg', 'image', 28008, 'assets/freecontent/edugate.jpg', 80, 44, '130|71', 1, 1721277954, 10, 'edugate.jpg', 'edugate'),
('shop.jpg', 'jpg', 'image', 26352, 'assets/freecontent/shop.jpg', 80, 44, '130|71', 1, 1721277954, 10, 'shop.jpg', 'shop'),
('cms.jpg', 'jpg', 'image', 29026, 'assets/freecontent/cms.jpg', 80, 44, '130|71', 1, 1721277954, 10, 'cms.jpg', 'cms'),
('nukevietcm...png', 'png', 'image', 13319, 'assets/about/nukevietcms_mu_noel_180x84.png', 80, 38, '180|84', 1, 1721277954, 17, 'nukevietcms_mu_noel_180x84.png', 'nukevietcms mu noel 180x84'),
('nukevietcm...png', 'png', 'image', 11974, 'assets/about/nukevietcms-180x84.png', 80, 38, '180|84', 1, 1721277954, 17, 'nukevietcms-180x84.png', 'nukevietcms 180x84'),
('w.png', 'png', 'image', 12156, 'assets/about/w.png', 80, 40, '288|143', 1, 1721277954, 17, 'w.png', 'w'),
('nukevietvn.png', 'png', 'image', 81035, 'assets/about/nukevietvn.png', 80, 38, '1500|700', 1, 1721277954, 17, 'nukevietvn.png', 'nukevietvn'),
('nukevietcms.png', 'png', 'image', 85684, 'assets/about/nukevietcms.png', 80, 38, '1500|700', 1, 1721277954, 17, 'nukevietcms.png', 'nukevietcms'),
('nukevietcm...png', 'png', 'image', 13125, 'assets/about/nukevietcms_laco_180x57.png', 80, 26, '180|57', 1, 1721277954, 17, 'nukevietcms_laco_180x57.png', 'nukevietcms laco 180x57'),
('nukevietvn...png', 'png', 'image', 11586, 'assets/about/nukevietvn_180x84.png', 80, 38, '180|84', 1, 1721277954, 17, 'nukevietvn_180x84.png', 'nukevietvn 180x84'),
('logo-nukev...png', 'png', 'image', 13223, 'assets/about/logo-nukeviet3-flag-180x75.png', 80, 34, '180|75', 1, 1721277954, 17, 'logo-nukeviet3-flag-180x75.png', 'logo nukeviet3 flag 180x75'),
('cleanshot-...png', 'png', 'image', 1103984, 'assets/gia-pha/cleanshot-2025-03-25-at-13.56.05a2x.png', 80, 38, '1500|704', 1, 1742893112, 18, 'cleanshot-2025-03-25-at-13.56.05a2x.png', 'CleanShot 2025 03 25 at 13 56 05@2x'),
('dongho.png', 'png', 'image', 325008, 'assets/gia-pha/dongho.png', 80, 27, '1500|504', 1, 1742896006, 18, 'dongho.png', 'dongho'),
('319888520_...jpg', 'jpg', 'image', 18097, 'assets/gia-pha/319888520_1557752167983894_7751465621893382090_n.jpg', 80, 80, '320|320', 1, 1742900788, 18, '319888520_1557752167983894_7751465621893382090_n.jpg', '319888520 1557752167983894 7751465621893382090 n'),
('cau-doi-phai.jpg', 'jpg', 'image', 52681, 'assets/cau-doi-phai.jpg', 19, 80, '360|1500', 1, 1742980413, 1, 'cau-doi-phai.jpg', 'câu dối phải'),
('banner-chinh.jpg', 'jpg', 'image', 391106, 'assets/banner-chinh.jpg', 80, 13, '5481|874', 1, 1742981059, 1, 'banner-chinh.jpg', 'banner chinh'),
('cau-doi-trai.jpg', 'jpg', 'image', 58357, 'assets/cau-doi-trai.jpg', 19, 80, '360|1500', 1, 1742980433, 1, 'cau-doi-trai.jpg', 'câu đối trái'),
('logo2.jpg', 'jpg', 'image', 25994, 'assets/logo2.jpg', 80, 76, '566|540', 1, 1774881144, 1, 'logo2.jpg', 'logo2');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_users`
--

CREATE TABLE `giapha_users` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(100) NOT NULL DEFAULT '',
  `md5username` char(32) NOT NULL DEFAULT '',
  `password` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `gender` char(1) DEFAULT '',
  `photo` varchar(255) DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text DEFAULT NULL,
  `regdate` int(11) NOT NULL DEFAULT 0,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL DEFAULT '',
  `passlostkey` varchar(50) DEFAULT '',
  `view_mail` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `remember` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `in_groups` varchar(255) DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `active2step` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `secretkey` varchar(20) DEFAULT '',
  `checknum` varchar(40) DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_ip` varchar(45) DEFAULT '',
  `last_agent` varchar(255) DEFAULT '',
  `last_openid` varchar(255) DEFAULT '',
  `last_update` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Thời điểm cập nhật thông tin lần cuối',
  `idsite` int(11) NOT NULL DEFAULT 0,
  `safemode` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `safekey` varchar(40) DEFAULT '',
  `email_verification_time` int(11) NOT NULL DEFAULT -1 COMMENT '-3: Tài khoản sys, -2: Admin kích hoạt, -1 không cần kích hoạt, 0: Chưa xác minh, > 0 thời gian xác minh',
  `active_obj` varchar(50) NOT NULL DEFAULT 'SYSTEM' COMMENT 'SYSTEM, EMAIL, OAUTH:xxxx, quản trị kích hoạt thì lưu userid'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_users`
--

INSERT INTO `giapha_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `active2step`, `secretkey`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `last_update`, `idsite`, `safemode`, `safekey`, `email_verification_time`, `active_obj`) VALUES
(1, 1, 'biennb', 'c0f988db267d82859a610fcbc7bcca82', '{SSHA512}5DP9fqVpUc6Y+XfCWA5zv0MGADXicHgmcQyCO0nKqr3Nl0vogrrp2HlDuoy0ZKUeKcaJmSFlUXvk49yusfB0vGU2YzE=', 'nguyenbabien@gmail.com', 'nguyenbabien', 'Nguyễn Bá Biền', 'N', '', 516387600, '', 1742892789, 'ns', '14051986', '', 0, 1, '1,4', 1, 0, '', 'a2dda81e2a69d69ff7ac19deaeef3c40', 1786946983, '14.246.3.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '', 1750049902, 0, 0, '', -3, 'SYSTEM'),
(2, 3, 'tinh', '802df3c585cfbaf52752a907665bc12f', '{SSHA512}UJKlhnIVTRvsAMRx/GOWIzLpRLT7GQYjYpVuaRjOS2YjUZAvozS7cbfjQG1oE45+SLCfEQtmjE6Cf6Ft4jSyAzMxMzM=', 'anhhuyadv@gmail.com', 'Nguyen Ba Tinh', 'Nguyễn Bá Tỉnh', 'M', '', 76176000, '', 1750050137, '123', '123', '', 0, 1, '11,4,3', 1, 0, '', '915335eed9f4d061a50aea1f86d54655', 1750051261, '113.22.63.189', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', '', 0, 0, 0, '', -1, 'SYSTEM');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_users_backupcodes`
--

CREATE TABLE `giapha_users_backupcodes` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(20) NOT NULL,
  `is_used` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `time_used` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `time_creat` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_users_config`
--

CREATE TABLE `giapha_users_config` (
  `config` varchar(100) NOT NULL,
  `content` text DEFAULT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_users_config`
--

INSERT INTO `giapha_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:8:{s:15:\"access_viewlist\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:17:\"access_editcensor\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1352873462),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass', 1742892758),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1742892758),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1742892758),
('avatar_width', '80', 1742892758),
('avatar_height', '80', 1742892758),
('active_group_newusers', '0', 1742892758),
('active_editinfo_censor', '0', 1742892758),
('active_user_logs', '1', 1742892758),
('min_old_user', '16', 1742892758),
('register_active_time', '86400', 1742892758),
('auto_assign_oauthuser', '0', 1742892758),
('admin_email', '0', 1742892758),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_users_edit`
--

CREATE TABLE `giapha_users_edit` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `lastedit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `info_basic` text NOT NULL,
  `info_custom` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_users_field`
--

CREATE TABLE `giapha_users_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') NOT NULL DEFAULT 'textbox',
  `field_choices` text NOT NULL,
  `sql_choices` text NOT NULL,
  `match_type` enum('none','alphanumeric','unicodename','email','url','regex','callback') NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) NOT NULL DEFAULT '',
  `func_callback` varchar(75) NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT 0,
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `show_register` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `user_editable` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `show_profile` tinyint(4) NOT NULL DEFAULT 1,
  `class` varchar(50) NOT NULL,
  `language` text NOT NULL,
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `is_system` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_users_field`
--

INSERT INTO `giapha_users_field` (`fid`, `field`, `weight`, `field_type`, `field_choices`, `sql_choices`, `match_type`, `match_regex`, `func_callback`, `min_length`, `max_length`, `required`, `show_register`, `user_editable`, `show_profile`, `class`, `language`, `default_value`, `is_system`) VALUES
(1, 'first_name', 1, 'textbox', '', '', 'none', '', '', 0, 100, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:4:\"Tên\";i:1;s:0:\"\";}}', '', 1),
(2, 'last_name', 2, 'textbox', '', '', 'none', '', '', 0, 100, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:20:\"Họ và tên đệm\";i:1;s:0:\"\";}}', '', 1),
(3, 'gender', 3, 'select', 'a:3:{s:1:\"N\";s:0:\"\";s:1:\"M\";s:0:\"\";s:1:\"F\";s:0:\"\";}', '', 'none', '', '', 0, 1, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:12:\"Giới tính\";i:1;s:0:\"\";}}', '2', 1),
(4, 'birthday', 4, 'date', 'a:1:{s:12:\"current_date\";i:0;}', '', 'none', '', '', 0, 0, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Ngày tháng năm sinh\";i:1;s:0:\"\";}}', '0', 1),
(5, 'sig', 5, 'textarea', '', '', 'none', '', '', 0, 1000, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:9:\"Chữ ký\";i:1;s:0:\"\";}}', '', 1),
(6, 'question', 6, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Câu hỏi bảo mật\";i:1;s:0:\"\";}}', '', 1),
(7, 'answer', 7, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Trả lời câu hỏi\";i:1;s:0:\"\";}}', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_users_groups`
--

CREATE TABLE `giapha_users_groups` (
  `group_id` smallint(5) UNSIGNED NOT NULL,
  `alias` varchar(240) NOT NULL,
  `email` varchar(100) DEFAULT '',
  `group_type` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) NOT NULL,
  `group_avatar` varchar(255) NOT NULL,
  `require_2step_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `require_2step_site` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `numbers` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `siteus` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `config` varchar(250) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_users_groups`
--

INSERT INTO `giapha_users_groups` (`group_id`, `alias`, `email`, `group_type`, `group_color`, `group_avatar`, `require_2step_admin`, `require_2step_site`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super-Admin', '', 0, '', '', 0, 0, 0, 1742892758, 0, 1, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(2, 'General-Admin', '', 0, '', '', 0, 0, 0, 1742892758, 0, 2, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(3, 'Module-Admin', '', 0, '', '', 0, 0, 0, 1742892758, 0, 3, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(4, 'Users', '', 0, '', '', 0, 0, 0, 1742892758, 0, 4, 1, 0, 2, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(7, 'New-Users', '', 0, '', '', 0, 0, 0, 1742892758, 0, 5, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(5, 'Guest', '', 0, '', '', 0, 0, 0, 1742892758, 0, 6, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(6, 'All', '', 0, '', '', 0, 0, 0, 1742892758, 0, 7, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(10, 'NukeViet-Fans', '', 2, '', '', 0, 0, 1, 1742892758, 0, 8, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(11, 'NukeViet-Admins', '', 2, '', '', 0, 0, 0, 1742892758, 0, 9, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(12, 'NukeViet-Programmers', '', 1, '', '', 0, 0, 0, 1742892758, 0, 10, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_users_groups_detail`
--

CREATE TABLE `giapha_users_groups_detail` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `lang` char(2) NOT NULL DEFAULT '',
  `title` varchar(240) NOT NULL,
  `description` varchar(240) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_users_groups_detail`
--

INSERT INTO `giapha_users_groups_detail` (`group_id`, `lang`, `title`, `description`, `content`) VALUES
(1, 'vi', 'Super Admin', '', ''),
(2, 'vi', 'General Admin', '', ''),
(3, 'vi', 'Module Admin', '', ''),
(4, 'vi', 'Users', '', ''),
(7, 'vi', 'New Users', '', ''),
(5, 'vi', 'Guest', '', ''),
(6, 'vi', 'All', '', ''),
(10, 'vi', 'Người hâm mộ', 'Nhóm những người hâm mộ hệ thống NukeViet', ''),
(11, 'vi', 'Người quản lý', 'Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet', ''),
(12, 'vi', 'Lập trình viên', 'Nhóm Lập trình viên hệ thống NukeViet', '');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_users_groups_users`
--

CREATE TABLE `giapha_users_groups_users` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `is_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `time_requested` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Thời gian yêu cầu tham gia',
  `time_approved` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Thời gian duyệt yêu cầu tham gia'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_users_groups_users`
--

INSERT INTO `giapha_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`, `time_requested`, `time_approved`) VALUES
(1, 1, 1, 1, '0', 1742892789, 1742892789),
(11, 2, 0, 1, '0', 1750050137, 1750050137),
(3, 2, 0, 1, '0', 1750050165, 1750050165);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_users_info`
--

CREATE TABLE `giapha_users_info` (
  `userid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_users_info`
--

INSERT INTO `giapha_users_info` (`userid`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_users_openid`
--

CREATE TABLE `giapha_users_openid` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `openid` char(50) NOT NULL DEFAULT '',
  `opid` char(50) NOT NULL DEFAULT '',
  `id` char(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_users_question`
--

CREATE TABLE `giapha_users_question` (
  `qid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) NOT NULL DEFAULT '',
  `lang` char(2) NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_users_question`
--

INSERT INTO `giapha_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_users_reg`
--

CREATE TABLE `giapha_users_reg` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `md5username` char(32) NOT NULL DEFAULT '',
  `password` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `gender` char(1) NOT NULL DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text DEFAULT NULL,
  `regdate` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL DEFAULT '',
  `checknum` varchar(50) NOT NULL DEFAULT '',
  `users_info` text DEFAULT NULL,
  `openid_info` text DEFAULT NULL,
  `idsite` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_users_reg`
--

INSERT INTO `giapha_users_reg` (`userid`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `birthday`, `sig`, `regdate`, `question`, `answer`, `checknum`, `users_info`, `openid_info`, `idsite`) VALUES
(1, 'chinguyen', '4896efdf5c8d4412e56e55e8672d38ba', '{SSHA512}TrF1zxduhtbPQiVcQlK1Vjs3w3Pb6TLTb+PydH4arpMKo3kfU4if40zAWpTZpT9unVaZkSodDHpiiFAda5gJSWZmMzc=', 'chinguyen3996@gmail.com', 'Nguyễn', 'Chí', 'M', 534358800, '', 1775875611, 'Món ăn mà bạn yêu thích', 'Thịt chó', 'bfb9b4151031687328e2da8524689e37', 'YToxOntzOjY6InVzZXJpZCI7aTowO30,', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_about`
--

CREATE TABLE `giapha_vi_about` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `alias` varchar(250) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `imagealt` varchar(255) DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `bodytext` mediumtext NOT NULL,
  `keywords` text DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) DEFAULT '',
  `layout_func` varchar(100) DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_about`
--

INSERT INTO `giapha_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Giới thiệu về NukeViet', 'gioi-thieu-ve-nukeviet', '', '', 0, '', '<h2><span style=\"font-size:20px;\"><strong>Giới thiệu khái quát</strong></span></h2>  <p>NukeViet là một ứng dụng trên nền web có thể sử dụng vào nhiều mục đích khác nhau. Phiên bản đang được phát hành theo giấy phép phần mềm tự do nguồn mở có tên gọi đầy đủ là <a href=\"/about/Gioi-thieu-ve-NukeViet-CMS.html\"><b>NukeViet CMS</b></a> gồm 2 phần chính là phần nhân (core) của hệ thống NukeViet và nhóm chức năng quản trị nội dung của CMS thường được sử dụng để xây dựng các website tin tức do đó người dùng thường nghĩ rằng NukeViet mạnh về hệ thống tin tức. Tuy nhiên, đội ngũ phát triển NukeViet đã phát triển nhiều hệ thống khác nhau cho NukeViet, nổi bật nhất là:</p>  <ul> 	<li>NukeViet Portal: Cổng thông tin hai chiều dùng cho doanh nghiệp.</li> 	<li><a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>: Cổng thông tin tích hợp nhiều website, sử dụng cho phòng giáo dục, sở giáo dục.</li> 	<li><a href=\"http://toasoandientu.vn\" target=\"_blank\">NukeViet Tòa Soạn Điện Tử</a>: Sử dụng cho các tòa soạn báo điện tử, trang tin điện tử.</li> </ul> Theo định hướng phát triển của NukeViet, ngoài NukeViet CMS đã được phát hành theo giấy phép tự do nguồn mở trong nhiều năm qua, NukeViet sẽ có thêm 2 nhóm ứng dụng nữa là:  <ul> 	<li>NukeViet Blog: Dành cho các website và người dùng tạo các trang nhật ký cá nhân.</li> 	<li>NukeViet Shop: dành cho các website thương mại điện tử với hoạt động chính là bán hàng trực tuyến, hiện đã có thể sử dụng bằng cách cài bổ sung <a href=\"https://github.com/nukeviet/module-shops\" target=\"_blank\">module Shop</a> lên NukeViet CMS.</li> </ul> &nbsp;  <h2><span style=\"font-size:20px;\"><strong>Video giới thiệu</strong></span></h2> <span style=\"font-size:14px;\">Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot; trong bản tin Tiêu điểm của chương trình Xã hội thông tin<br  /> (Đài truyền hình kỹ thuật số VTC) phát sóng lúc 20h chủ nhật, ngày 05-09-2010 trên VTC1</span>  <div style=\"text-align: center;\"> <div style=\"text-align: center;\"> <div class=\"youtube-embed-wrapper\" style=\"position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;\"><iframe allowfullscreen=\"\" height=\"480\" src=\"//www.youtube.com/embed/Cxp1kCyVhqY?rel=0&amp;autoplay=1\" style=\"position: absolute;top: 0;left: 0;width: 100%;height: 100%;\" width=\"640\"></iframe></div> <br  /> <span style=\"font-size:12px;\"><em>Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot;</em></span></div> </div>  <h2><br  /> <span style=\"font-size:20px;\"><strong><span class=\"mw-headline\" id=\".E1.BB.A8ng_d.E1.BB.A5ng\">Lịch sử phát triển</span></strong></span></h2> NukeViet ra đời từ năm 2004, bắt đầu từ việc sử dụng sản phẩm PHP-Nuke để làm cho website cá nhân, anh Nguyễn Anh Tú - một lưu học sinh người Việt tại Nga - đã cùng cộng đồng Việt hóa, cải tiến theo nhu cầu sử dụng của người Việt. Được sự đón nhận của đông đảo người sử dụng, NukeViet đã liên tục được phát triển và trở thành một ứng dụng thuần Việt. Cho đến phiên bản 3.0, NukeViet đã được phát triển thành một ứng dụng khác biệt hoàn toàn, và không chỉ là một CMS, NukeViet được định hướng để trở thành phần mềm đa chức năng trên nền web.<br  /> <br  /> Kể từ năm 2010, NukeViet đã phát triển theo mô hình chuyên nghiệp, đội ngũ quản trị đã thành lập doanh nghiệp chuyên quản và đạt được những tiến bộ vượt bậc. NukeViet đã trở thành hệ quản trị nội dung nguồn mở duy nhất của Việt Nam được Bộ GD&amp;ĐT khuyến khích sử dụng trong giáo dục (thông tư 08/2010/TT-BGDĐT). Tiếp đó, NukeViet CMS đã được trao giải Nhân Tài Đất Việt 2011 và trở thành phần mềm nguồn mở đầu tiên đạt giải thưởng cao quý này. <h2><br  /> <span style=\"font-size:20px;\"><strong><span class=\"mw-headline\" id=\"Di.E1.BB.85n_.C4.91.C3.A0n_NukeViet.vn\">Diễn đàn NukeViet.vn</span></strong></span></h2>  <p>Diễn đàn NukeViet hoạt động trên website: <a href=\"http://nukeviet.vn\">http://nukeviet.vn</a>, đây là kênh chính thức và hữu hiệu cho các bạn đam mê về NukeViet có thể chia sẻ các kiến thức về NukeViet với nhau. Tính đến tháng 12 năm 2015 diễn đàn đã có trên 34.500 thành viên tham gia, bao gồm học sinh, sinh viên &amp; nhiều thành phần khác thuộc giới trí thức ở trong và ngoài nước.</p>  <p>Là một diễn đàn của các nhà quản lý website, rất nhiều thành viên trong diễn đàn NukeViet là cán bộ, lãnh đạo từ đủ mọi lĩnh vực: công nghệ thông tin, xây dựng, văn hóa - xã hội, thể thao, dịch vụ - du lịch... từ cử nhân, bác sĩ, kỹ sư cho đến bộ đội, công an..</p>  <h2><br  /> <span style=\"font-size:20px;\"><span class=\"mw-headline\" id=\"Th.C3.A0nh_t.C3.ADch_.26_gi.E1.BA.A3i_th.C6.B0.E1.BB.9Fng\"><strong>Thành tích &amp; giải thưởng</strong></span></span></h2>  <h3><span style=\"font-size:14px;\"><em><strong><span class=\"mw-headline\" id=\"Khen_th.C6.B0.E1.BB.9Fng_.26_Th.C3.A0nh_t.C3.ADch\">Khen thưởng &amp; Thành tích</span></strong></em></span></h3>  <ul> 	<li>Giải Ba Nhân tài Đất Việt 2011 ở Lĩnh vực Công nghệ thông tin/Sản phẩm đã ứng dụng rộng rãi (không có giải nhất, nhì).</li> 	<li>Bằng khen của Hội Tin học Việt Nam vì những đóng góp xuất sắc cho sự phát triển của cộng đồng nguồn mở tại Việt Nam.</li> </ul> <span style=\"font-size:14px;\"><em><strong><span class=\"mw-headline\" id=\".C4.90.C6.B0.E1.BB.A3c_B.E1.BB.99_gi.C3.A1o_d.E1.BB.A5c_.26_.C4.90.C3.A0o_t.E1.BA.A1o_.E1.BB.A7ng_h.E1.BB.99\">Được Bộ giáo dục &amp; Đào tạo ủng hộ</span></strong></em></span>  <p>NukeViet CMS là hệ quản trị nội dung nguồn mở duy nhất của Việt Nam nằm trong danh mục các sản phẩm phần mềm nguồn mở được khuyến khích sử dụng trong thông tư số 08/2010/TT-BGDĐT do Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục). Trong bài thuyết trình &quot;Hiện trạng triển khai nội dung thông tư 08/2010/TT-BGDĐT về sử dụng PMNM trong các cơ sở giáo dục và định hướng cho thời gian tới&quot;<sup> </sup>tại Hội thảo phần mềm nguồn mở trong các cơ quan, tổ chức nhà nước năm 2012, Cục trưởng cục CNTT Quách Tuấn Ngọc cho biết: &quot;NukeViet có thể thay thế SharePoint server&quot;, &quot;NukeViet được nhiều cơ sở giáo dục thích dùng&quot;<sup> </sup>NukeViet được Bộ GD&amp;ĐT đưa vào văn bản hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016. Trong văn bản số 4983/BGDĐT-CNTT của Bộ Giáo dục và Đào tạo (Bộ GDĐT) hướng dẫn việc triển khai nhiệm vụ công nghệ thông tin (CNTT) cho năm học 2015 - 2016 có những nội dung như sau liên quan đến NukeViet:</p>  <ul> 	<li>Nhiệm vụ số &quot;5. Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục&quot;, mục &quot;5.1 Một số nội dung cần bồi dưỡng&quot; có ghi &quot;Tập huấn sử dụng phần mềm nguồn mở NukeViet.&quot;</li> 	<li>Nhiệm vụ số &quot; 10. Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở&quot; có ghi: &quot;Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</li> 	<li>Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</li> </ul>  <h3><span style=\"font-size:14px;\"><em><strong><span class=\"mw-headline\" id=\".C4.90.C6.B0.E1.BB.A3c_.C6.B0u_ti.C3.AAn_mua_s.E1.BA.AFm_s.E1.BB.AD_d.E1.BB.A5ng_trong_ch.C3.ADnh_ph.E1.BB.A7\">Được ưu tiên mua sắm sử dụng trong chính phủ</span></strong></em></span></h3>  <p>NukeViet CMS là hệ quản trị nội dung nguồn mở được quy định ưu tiên mua sắm, sử dụng trong các cơ quan, tổ chức nhà nước Việt Nam theo thông tư 20/2014/TT-BTTTT ký ngày 05/12/2014 và có hiệu lực từ ngày 20/1/2015 quy định về các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước</p>  <h2><br  /> <span style=\"font-size:20px;\"><span class=\"mw-headline\" id=\"T.C3.ADnh_n.C4.83ng\"><strong>Tính năng</strong></span></span></h2>  <h3><span style=\"font-size:14px;\"><strong>NukeViet CMS 3.0 bản gốc có các module cơ bản là:</strong></span></h3>  <ul> 	<li>Quản lý Tin tức (<i>News</i>: Tạo bản tin chủ đề đa cấp, phân quyền theo chủ đề, hẹn giờ đăng tin, tạo bản in, bản tải về, thảo luận bản tin),</li> 	<li>Giới thiệu (<i>About</i>),</li> 	<li>Quản lý quảng cáo thương mại (banners),</li> 	<li>Quản lý người dùng (<i>users</i>),</li> 	<li>Liên hệ qua site (<i>Contact</i>),</li> 	<li>Cấp tin RSS (<i>RSS feeds</i>) và thu thập tin RSS (&quot;RSS reader&quot;),</li> 	<li>Bình chọn (thăm dò ý kiến - <i>Voting</i>),</li> 	<li>Thư viện file (<i>Download</i>),</li> 	<li>Thư viện Web (<i>Weblinks</i>),</li> 	<li>Hỏi nhanh đáp gọn(<i>Faq</i>),</li> 	<li>Thống kê truy cập (<i>statistics</i>),</li> 	<li>Tìm kiếm trong site (<i>Search</i>),</li> 	<li>Bán hàng trực tuyến (<i>Shop</i>) (có từ NukeViet 3.1)...</li> </ul>  <h3><span style=\"font-size:14px;\"><strong>Tính năng hệ thống:</strong></span></h3>  <ul> 	<li>Cài đặt, nâng cấp và đóng gói tự động.</li> 	<li>Hỗ trợ đa ngôn ngữ giao diện và đa ngôn ngữ Cơ sở dữ liệu 100%, cho phép người sử dụng tự xây dựng ngôn ngữ mới.</li> 	<li>Thay đổi &amp; tùy biến giao diện nhiều cấp độ, cho phép người sử dụng có thể cài thêm giao diện mới hoặc tùy biến giao diện trên site theo ý thích. Người sử dụng có thể tùy biến bố cục giao diện theo layout, theo block ở các khu vực khác nhau của website.</li> 	<li>Quản lý module với khả năng xử lý đa nhân module (ảo hóa module).</li> 	<li>Cho phép phân nhóm thành viên và phân quyền người quản trị theo nhiều cấp độ khác nhau.</li> 	<li>Hỗ trợ tối ưu hóa cho các công cụ tìm kiếm (SEO): Rewrite, tạo Sitemap, Ping sitemap, chẩn đoán site, phân tích từ khóa, tạo keyword, quản lý máy chủ tìm kiếm (Bot)...</li> 	<li>Quản lý và sao lưu cơ sở dữ liệu.</li> 	<li>Cấu hình tùy biến, tường lửa đa cấp, xử lý tiến trình tự động...</li> 	<li>Hỗ trợ thiết bị di động (mobile), cho phép thay đổi giao diện tương thích (từ phiên bản 3.3)</li> 	<li>...</li> </ul>  <h2><span style=\"font-size:20px;\"><strong><span class=\"mw-headline\" id=\".E1.BB.A8ng_d.E1.BB.A5ng\">Ứng dụng</span></strong></span></h2>  <p>NukeViet được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp, nó cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block... Trước đây, NukeViet chủ yếu được sử dụng làm trang tin tức nhờ module News tích hợp sẵn trong NukeViet được viết rất công phu, nó lại đặc biệt phù hợp với yêu cầu và đặc điểm sử dụng cho hệ thống tin tức. Kể từ phiên bản NukeViet 3, đội ngũ phát triển NukeViet đã định nghĩa lại NukeViet, theo đó, NukeViet được coi như phần mềm trực tuyến mà chức năng CMS chỉ là một module của NukeViet. NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng do đó thường được những đối tượng người dùng không chuyên ưa thích.<br  /> <br  /> NukeViet có mã nguồn mở do đó việc sử dụng NukeViet là hoàn toàn miễn phí cho tất cả mọi người trên thế giới. Từ bản 2.0 trở về trước, đối tượng người dùng chủ yếu của NukeViet là người Việt vì những đặc điểm của bản thân mã nguồn (có nguồn gốc từ PHP-Nuke) và vì chính sách của nhóm phát triển là: &quot;hệ thống Portal dành cho người Việt&quot;. Kể từ phiên bản 3.0, đội ngũ phát triển NukeViet định hướng đưa NukeViet ra cộng đồng quốc tế.</p>  <ul> 	<li>Các cổng thông tin điện tử</li> 	<li>Các tập đoàn kinh tế</li> 	<li>Giải trí trực tuyến, văn hóa, nghệ thuật.</li> 	<li>Báo điện tử, tạp chí điện tử</li> 	<li>Website của các doanh nghiệp vừa và nhỏ</li> 	<li>Website của các cơ quan, tổ chức chính phủ</li> 	<li>Website giáo dục, trường học</li> 	<li>Website của gia đình, cá nhân, nhóm sở thích...</li> </ul>  <p><br  /> Ngoài các ứng dụng website ở trên, thực tế NukeViet đã được ứng dụng làm rất nhiều phần mềm khác như: Phần mềm quản lý kho hàng, phần mềm bán hàng, phần mềm quản lý quán BI-A trợ giúp bật tắt điện đèn bàn bóng, phần mềm tòa soạn điện tử, phần mềm quản lý hồ sơ, quản lý nhân sự trực tuyến, phần mềm tra cứu điểm thi hỗ trợ SMS...</p>', '', 0, '4', '', 1, 1, 1742892758, 1742892758, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_about_config`
--

CREATE TABLE `giapha_vi_about_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_about_config`
--

INSERT INTO `giapha_vi_about_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1'),
('socialbutton', 'facebook,twitter');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_blocks_groups`
--

CREATE TABLE `giapha_vi_blocks_groups` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `theme` varchar(55) NOT NULL,
  `module` varchar(55) NOT NULL,
  `file_name` varchar(55) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `template` varchar(55) DEFAULT NULL,
  `position` varchar(55) DEFAULT NULL,
  `exp_time` int(11) DEFAULT 0,
  `active` varchar(10) DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `groups_view` varchar(255) DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0,
  `config` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_blocks_groups`
--

INSERT INTO `giapha_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(3, 'default', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(15, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(17, 'default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(18, 'default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(19, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:3:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(22, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(23, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''),
(24, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''),
(25, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''),
(26, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:3:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(27, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, ''),
(28, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:46:\"/giapha/index.php?language=vi&amp;nv=siteterms\";}'),
(29, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:9:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";i:8;s:9:\"siteterms\";}}'),
(30, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:82:\"Tầng 6, tòa nhà Sông Đà, 131 Trần Phú, Văn Quán, Hà Đông, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:312:\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d427.01613794022035!2d105.78849184070538!3d20.979995366268337!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1701239622249!5m2!1svi!2s\";s:13:\"company_phone\";s:30:\"+84-24-85872007[+842485872007]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(32, 'default', 'banners', 'global.banners.php', 'Cau Doi Trai', '', 'no_title', '[FIX_BANNER_LEFT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(33, 'default', 'banners', 'global.banners.php', 'Cau Doi Phai', '', 'no_title', '[FIX_BANNER_RIGHT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(35, 'default', 'theme', 'global.licham.php', 'Lịch Âm', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:2:{s:5:\"width\";s:4:\"100%\";s:6:\"height\";s:5:\"465px\";}');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_blocks_weight`
--

CREATE TABLE `giapha_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT 0,
  `func_id` mediumint(8) NOT NULL DEFAULT 0,
  `weight` mediumint(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_blocks_weight`
--

INSERT INTO `giapha_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(3, 4, 1),
(3, 5, 1),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 12, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1),
(4, 25, 1),
(4, 26, 1),
(4, 27, 1),
(4, 28, 1),
(4, 29, 1),
(4, 30, 1),
(4, 33, 1),
(4, 34, 1),
(4, 35, 1),
(4, 36, 1),
(4, 37, 1),
(4, 38, 1),
(4, 39, 1),
(15, 1, 1),
(15, 2, 1),
(15, 3, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 13, 1),
(15, 14, 1),
(15, 15, 1),
(15, 16, 1),
(15, 17, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 28, 1),
(15, 29, 1),
(15, 30, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 36, 1),
(15, 37, 1),
(15, 38, 1),
(15, 39, 1),
(15, 40, 1),
(15, 41, 1),
(15, 42, 1),
(15, 43, 1),
(15, 44, 1),
(15, 45, 1),
(15, 46, 1),
(15, 47, 1),
(15, 48, 1),
(15, 49, 1),
(15, 50, 1),
(15, 51, 1),
(15, 52, 1),
(15, 53, 1),
(15, 54, 1),
(15, 55, 1),
(15, 56, 1),
(15, 57, 1),
(15, 58, 1),
(15, 59, 1),
(15, 60, 1),
(15, 61, 1),
(15, 62, 1),
(15, 63, 1),
(15, 64, 1),
(15, 65, 1),
(17, 1, 1),
(17, 2, 1),
(17, 3, 1),
(17, 4, 1),
(17, 5, 1),
(17, 6, 1),
(17, 7, 1),
(17, 8, 1),
(17, 9, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(17, 13, 1),
(17, 14, 1),
(17, 15, 1),
(17, 16, 1),
(17, 17, 1),
(17, 18, 1),
(17, 19, 1),
(17, 20, 1),
(17, 21, 1),
(17, 22, 1),
(17, 23, 1),
(17, 24, 1),
(17, 25, 1),
(17, 26, 1),
(17, 27, 1),
(17, 28, 1),
(17, 29, 1),
(17, 30, 1),
(17, 31, 1),
(17, 32, 1),
(17, 33, 1),
(17, 34, 1),
(17, 35, 1),
(17, 36, 1),
(17, 37, 1),
(17, 38, 1),
(17, 39, 1),
(17, 40, 1),
(17, 41, 1),
(17, 42, 1),
(17, 43, 1),
(17, 44, 1),
(17, 45, 1),
(17, 46, 1),
(17, 47, 1),
(17, 48, 1),
(17, 49, 1),
(17, 50, 1),
(17, 51, 1),
(17, 52, 1),
(17, 53, 1),
(17, 54, 1),
(17, 55, 1),
(17, 56, 1),
(17, 57, 1),
(17, 58, 1),
(17, 59, 1),
(17, 60, 1),
(17, 61, 1),
(17, 62, 1),
(17, 63, 1),
(17, 64, 1),
(17, 65, 1),
(18, 1, 1),
(18, 2, 1),
(18, 3, 1),
(18, 4, 1),
(18, 5, 1),
(18, 6, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 11, 1),
(18, 12, 1),
(18, 13, 1),
(18, 14, 1),
(18, 15, 1),
(18, 16, 1),
(18, 17, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 28, 1),
(18, 29, 1),
(18, 30, 1),
(18, 31, 1),
(18, 32, 1),
(18, 33, 1),
(18, 34, 1),
(18, 35, 1),
(18, 36, 1),
(18, 37, 1),
(18, 38, 1),
(18, 39, 1),
(18, 40, 1),
(18, 41, 1),
(18, 42, 1),
(18, 43, 1),
(18, 44, 1),
(18, 45, 1),
(18, 46, 1),
(18, 47, 1),
(18, 48, 1),
(18, 49, 1),
(18, 50, 1),
(18, 51, 1),
(18, 52, 1),
(18, 53, 1),
(18, 54, 1),
(18, 55, 1),
(18, 56, 1),
(18, 57, 1),
(18, 58, 1),
(18, 59, 1),
(18, 60, 1),
(18, 61, 1),
(18, 62, 1),
(18, 63, 1),
(18, 64, 1),
(18, 65, 1),
(19, 1, 1),
(19, 2, 1),
(19, 3, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 8, 1),
(19, 9, 1),
(19, 10, 1),
(19, 11, 1),
(19, 12, 1),
(19, 13, 1),
(19, 14, 1),
(19, 15, 1),
(19, 16, 1),
(19, 17, 1),
(19, 18, 1),
(19, 19, 1),
(19, 20, 1),
(19, 21, 1),
(19, 22, 1),
(19, 23, 1),
(19, 24, 1),
(19, 25, 1),
(19, 26, 1),
(19, 27, 1),
(19, 28, 1),
(19, 29, 1),
(19, 30, 1),
(19, 31, 1),
(19, 32, 1),
(19, 33, 1),
(19, 34, 1),
(19, 35, 1),
(19, 36, 1),
(19, 37, 1),
(19, 38, 1),
(19, 39, 1),
(19, 40, 1),
(19, 41, 1),
(19, 42, 1),
(19, 43, 1),
(19, 44, 1),
(19, 45, 1),
(19, 46, 1),
(19, 47, 1),
(19, 48, 1),
(19, 49, 1),
(19, 50, 1),
(19, 51, 1),
(19, 52, 1),
(19, 53, 1),
(19, 54, 1),
(19, 55, 1),
(19, 56, 1),
(19, 57, 1),
(19, 58, 1),
(19, 59, 1),
(19, 60, 1),
(19, 61, 1),
(19, 62, 1),
(19, 63, 1),
(19, 64, 1),
(19, 65, 1),
(22, 1, 1),
(22, 2, 1),
(22, 3, 1),
(22, 4, 1),
(22, 5, 1),
(22, 6, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 11, 1),
(22, 12, 1),
(22, 13, 1),
(22, 14, 1),
(22, 15, 1),
(22, 16, 1),
(22, 17, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 26, 1),
(22, 27, 1),
(22, 28, 1),
(22, 29, 1),
(22, 30, 1),
(22, 31, 1),
(22, 32, 1),
(22, 33, 1),
(22, 34, 1),
(22, 35, 1),
(22, 36, 1),
(22, 37, 1),
(22, 38, 1),
(22, 39, 1),
(22, 40, 1),
(22, 41, 1),
(22, 42, 1),
(22, 43, 1),
(22, 44, 1),
(22, 45, 1),
(22, 46, 1),
(22, 47, 1),
(22, 48, 1),
(22, 49, 1),
(22, 50, 1),
(22, 51, 1),
(22, 52, 1),
(22, 53, 1),
(22, 54, 1),
(22, 55, 1),
(22, 56, 1),
(22, 57, 1),
(22, 58, 1),
(22, 59, 1),
(22, 60, 1),
(22, 61, 1),
(22, 62, 1),
(22, 63, 1),
(22, 64, 1),
(22, 65, 1),
(23, 1, 2),
(23, 2, 2),
(23, 3, 2),
(23, 4, 2),
(23, 5, 2),
(23, 6, 2),
(23, 7, 2),
(23, 8, 2),
(23, 9, 2),
(23, 10, 2),
(23, 11, 2),
(23, 12, 2),
(23, 13, 2),
(23, 14, 2),
(23, 15, 2),
(23, 16, 2),
(23, 17, 2),
(23, 18, 2),
(23, 19, 2),
(23, 20, 2),
(23, 21, 2),
(23, 22, 2),
(23, 23, 2),
(23, 24, 2),
(23, 25, 2),
(23, 26, 2),
(23, 27, 2),
(23, 28, 2),
(23, 29, 2),
(23, 30, 2),
(23, 31, 2),
(23, 32, 2),
(23, 33, 2),
(23, 34, 2),
(23, 35, 2),
(23, 36, 2),
(23, 37, 2),
(23, 38, 2),
(23, 39, 2),
(23, 40, 2),
(23, 41, 2),
(23, 42, 2),
(23, 43, 2),
(23, 44, 2),
(23, 45, 2),
(23, 46, 2),
(23, 47, 2),
(23, 48, 2),
(23, 49, 2),
(23, 50, 2),
(23, 51, 2),
(23, 52, 2),
(23, 53, 2),
(23, 54, 2),
(23, 55, 2),
(23, 56, 2),
(23, 57, 2),
(23, 58, 2),
(23, 59, 2),
(23, 60, 2),
(23, 61, 2),
(23, 62, 2),
(23, 63, 2),
(23, 64, 2),
(23, 65, 2),
(24, 1, 1),
(24, 2, 1),
(24, 3, 1),
(24, 4, 1),
(24, 5, 1),
(24, 6, 1),
(24, 7, 1),
(24, 8, 1),
(24, 9, 1),
(24, 10, 1),
(24, 11, 1),
(24, 12, 1),
(24, 13, 1),
(24, 14, 1),
(24, 15, 1),
(24, 16, 1),
(24, 17, 1),
(24, 18, 1),
(24, 19, 1),
(24, 20, 1),
(24, 21, 1),
(24, 22, 1),
(24, 23, 1),
(24, 24, 1),
(24, 25, 1),
(24, 26, 1),
(24, 27, 1),
(24, 28, 1),
(24, 29, 1),
(24, 30, 1),
(24, 31, 1),
(24, 32, 1),
(24, 33, 1),
(24, 34, 1),
(24, 35, 1),
(24, 36, 1),
(24, 37, 1),
(24, 38, 1),
(24, 39, 1),
(24, 40, 1),
(24, 41, 1),
(24, 42, 1),
(24, 43, 1),
(24, 44, 1),
(24, 45, 1),
(24, 46, 1),
(24, 47, 1),
(24, 48, 1),
(24, 49, 1),
(24, 50, 1),
(24, 51, 1),
(24, 52, 1),
(24, 53, 1),
(24, 54, 1),
(24, 55, 1),
(24, 56, 1),
(24, 57, 1),
(24, 58, 1),
(24, 59, 1),
(24, 60, 1),
(24, 61, 1),
(24, 62, 1),
(24, 63, 1),
(24, 64, 1),
(24, 65, 1),
(25, 1, 2),
(25, 2, 2),
(25, 3, 2),
(25, 4, 2),
(25, 5, 2),
(25, 6, 2),
(25, 7, 2),
(25, 8, 2),
(25, 9, 2),
(25, 10, 2),
(25, 11, 2),
(25, 12, 2),
(25, 13, 2),
(25, 14, 2),
(25, 15, 2),
(25, 16, 2),
(25, 17, 2),
(25, 18, 2),
(25, 19, 2),
(25, 20, 2),
(25, 21, 2),
(25, 22, 2),
(25, 23, 2),
(25, 24, 2),
(25, 25, 2),
(25, 26, 2),
(25, 27, 2),
(25, 28, 2),
(25, 29, 2),
(25, 30, 2),
(25, 31, 2),
(25, 32, 2),
(25, 33, 2),
(25, 34, 2),
(25, 35, 2),
(25, 36, 2),
(25, 37, 2),
(25, 38, 2),
(25, 39, 2),
(25, 40, 2),
(25, 41, 2),
(25, 42, 2),
(25, 43, 2),
(25, 44, 2),
(25, 45, 2),
(25, 46, 2),
(25, 47, 2),
(25, 48, 2),
(25, 49, 2),
(25, 50, 2),
(25, 51, 2),
(25, 52, 2),
(25, 53, 2),
(25, 54, 2),
(25, 55, 2),
(25, 56, 2),
(25, 57, 2),
(25, 58, 2),
(25, 59, 2),
(25, 60, 2),
(25, 61, 2),
(25, 62, 2),
(25, 63, 2),
(25, 64, 2),
(25, 65, 2),
(26, 1, 3),
(26, 2, 3),
(26, 3, 3),
(26, 4, 3),
(26, 5, 3),
(26, 6, 3),
(26, 7, 3),
(26, 8, 3),
(26, 9, 3),
(26, 10, 3),
(26, 11, 3),
(26, 12, 3),
(26, 13, 3),
(26, 14, 3),
(26, 15, 3),
(26, 16, 3),
(26, 17, 3),
(26, 18, 3),
(26, 19, 3),
(26, 20, 3),
(26, 21, 3),
(26, 22, 3),
(26, 23, 3),
(26, 24, 3),
(26, 25, 3),
(26, 26, 3),
(26, 27, 3),
(26, 28, 3),
(26, 29, 3),
(26, 30, 3),
(26, 31, 3),
(26, 32, 3),
(26, 33, 3),
(26, 34, 3),
(26, 35, 3),
(26, 36, 3),
(26, 37, 3),
(26, 38, 3),
(26, 39, 3),
(26, 40, 3),
(26, 41, 3),
(26, 42, 3),
(26, 43, 3),
(26, 44, 3),
(26, 45, 3),
(26, 46, 3),
(26, 47, 3),
(26, 48, 3),
(26, 49, 3),
(26, 50, 3),
(26, 51, 3),
(26, 52, 3),
(26, 53, 3),
(26, 54, 3),
(26, 55, 3),
(26, 56, 3),
(26, 57, 3),
(26, 58, 3),
(26, 59, 3),
(26, 60, 3),
(26, 61, 3),
(26, 62, 3),
(26, 63, 3),
(26, 64, 3),
(26, 65, 3),
(27, 1, 4),
(27, 2, 4),
(27, 3, 4),
(27, 4, 4),
(27, 5, 4),
(27, 6, 4),
(27, 7, 4),
(27, 8, 4),
(27, 9, 4),
(27, 10, 4),
(27, 11, 4),
(27, 12, 4),
(27, 13, 4),
(27, 14, 4),
(27, 15, 4),
(27, 16, 4),
(27, 17, 4),
(27, 18, 4),
(27, 19, 4),
(27, 20, 4),
(27, 21, 4),
(27, 22, 4),
(27, 23, 4),
(27, 24, 4),
(27, 25, 4),
(27, 26, 4),
(27, 27, 4),
(27, 28, 4),
(27, 29, 4),
(27, 30, 4),
(27, 31, 4),
(27, 32, 4),
(27, 33, 4),
(27, 34, 4),
(27, 35, 4),
(27, 36, 4),
(27, 37, 4),
(27, 38, 4),
(27, 39, 4),
(27, 40, 4),
(27, 41, 4),
(27, 42, 4),
(27, 43, 4),
(27, 44, 4),
(27, 45, 4),
(27, 46, 4),
(27, 47, 4),
(27, 48, 4),
(27, 49, 4),
(27, 50, 4),
(27, 51, 4),
(27, 52, 4),
(27, 53, 4),
(27, 54, 4),
(27, 55, 4),
(27, 56, 4),
(27, 57, 4),
(27, 58, 4),
(27, 59, 4),
(27, 60, 4),
(27, 61, 4),
(27, 62, 4),
(27, 63, 4),
(27, 64, 4),
(27, 65, 4),
(28, 1, 1),
(28, 2, 1),
(28, 3, 1),
(28, 4, 1),
(28, 5, 1),
(28, 6, 1),
(28, 7, 1),
(28, 8, 1),
(28, 9, 1),
(28, 10, 1),
(28, 11, 1),
(28, 12, 1),
(28, 13, 1),
(28, 14, 1),
(28, 15, 1),
(28, 16, 1),
(28, 17, 1),
(28, 18, 1),
(28, 19, 1),
(28, 20, 1),
(28, 21, 1),
(28, 22, 1),
(28, 23, 1),
(28, 24, 1),
(28, 25, 1),
(28, 26, 1),
(28, 27, 1),
(28, 28, 1),
(28, 29, 1),
(28, 30, 1),
(28, 31, 1),
(28, 32, 1),
(28, 33, 1),
(28, 34, 1),
(28, 35, 1),
(28, 36, 1),
(28, 37, 1),
(28, 38, 1),
(28, 39, 1),
(28, 40, 1),
(28, 41, 1),
(28, 42, 1),
(28, 43, 1),
(28, 44, 1),
(28, 45, 1),
(28, 46, 1),
(28, 47, 1),
(28, 48, 1),
(28, 49, 1),
(28, 50, 1),
(28, 51, 1),
(28, 52, 1),
(28, 53, 1),
(28, 54, 1),
(28, 55, 1),
(28, 56, 1),
(28, 57, 1),
(28, 58, 1),
(28, 59, 1),
(28, 60, 1),
(28, 61, 1),
(28, 62, 1),
(28, 63, 1),
(28, 64, 1),
(28, 65, 1),
(29, 1, 1),
(29, 2, 1),
(29, 3, 1),
(29, 4, 1),
(29, 5, 1),
(29, 6, 1),
(29, 7, 1),
(29, 8, 1),
(29, 9, 1),
(29, 10, 1),
(29, 11, 1),
(29, 12, 1),
(29, 13, 1),
(29, 14, 1),
(29, 15, 1),
(29, 16, 1),
(29, 17, 1),
(29, 18, 1),
(29, 19, 1),
(29, 20, 1),
(29, 21, 1),
(29, 22, 1),
(29, 23, 1),
(29, 24, 1),
(29, 25, 1),
(29, 26, 1),
(29, 27, 1),
(29, 28, 1),
(29, 29, 1),
(29, 30, 1),
(29, 31, 1),
(29, 32, 1),
(29, 33, 1),
(29, 34, 1),
(29, 35, 1),
(29, 36, 1),
(29, 37, 1),
(29, 38, 1),
(29, 39, 1),
(29, 40, 1),
(29, 41, 1),
(29, 42, 1),
(29, 43, 1),
(29, 44, 1),
(29, 45, 1),
(29, 46, 1),
(29, 47, 1),
(29, 48, 1),
(29, 49, 1),
(29, 50, 1),
(29, 51, 1),
(29, 52, 1),
(29, 53, 1),
(29, 54, 1),
(29, 55, 1),
(29, 56, 1),
(29, 57, 1),
(29, 58, 1),
(29, 59, 1),
(29, 60, 1),
(29, 61, 1),
(29, 62, 1),
(29, 63, 1),
(29, 64, 1),
(29, 65, 1),
(30, 1, 1),
(30, 2, 1),
(30, 3, 1),
(30, 4, 1),
(30, 5, 1),
(30, 6, 1),
(30, 7, 1),
(30, 8, 1),
(30, 9, 1),
(30, 10, 1),
(30, 11, 1),
(30, 12, 1),
(30, 13, 1),
(30, 14, 1),
(30, 15, 1),
(30, 16, 1),
(30, 17, 1),
(30, 18, 1),
(30, 19, 1),
(30, 20, 1),
(30, 21, 1),
(30, 22, 1),
(30, 23, 1),
(30, 24, 1),
(30, 25, 1),
(30, 26, 1),
(30, 27, 1),
(30, 28, 1),
(30, 29, 1),
(30, 30, 1),
(30, 31, 1),
(30, 32, 1),
(30, 33, 1),
(30, 34, 1),
(30, 35, 1),
(30, 36, 1),
(30, 37, 1),
(30, 38, 1),
(30, 39, 1),
(30, 40, 1),
(30, 41, 1),
(30, 42, 1),
(30, 43, 1),
(30, 44, 1),
(30, 45, 1),
(30, 46, 1),
(30, 47, 1),
(30, 48, 1),
(30, 49, 1),
(30, 50, 1),
(30, 51, 1),
(30, 52, 1),
(30, 53, 1),
(30, 54, 1),
(30, 55, 1),
(30, 56, 1),
(30, 57, 1),
(30, 58, 1),
(30, 59, 1),
(30, 60, 1),
(30, 61, 1),
(30, 62, 1),
(30, 63, 1),
(30, 64, 1),
(30, 65, 1),
(18, 70, 1),
(18, 69, 1),
(18, 66, 1),
(18, 68, 1),
(18, 71, 1),
(18, 73, 1),
(18, 72, 1),
(18, 67, 1),
(17, 70, 1),
(17, 69, 1),
(17, 66, 1),
(17, 68, 1),
(17, 71, 1),
(17, 73, 1),
(17, 72, 1),
(17, 67, 1),
(15, 70, 1),
(15, 69, 1),
(15, 66, 1),
(15, 68, 1),
(15, 71, 1),
(15, 73, 1),
(15, 72, 1),
(15, 67, 1),
(19, 70, 1),
(19, 69, 1),
(19, 66, 1),
(19, 68, 1),
(19, 71, 1),
(19, 73, 1),
(19, 72, 1),
(19, 67, 1),
(30, 70, 1),
(30, 69, 1),
(30, 66, 1),
(30, 68, 1),
(30, 71, 1),
(30, 73, 1),
(30, 72, 1),
(30, 67, 1),
(28, 70, 1),
(28, 69, 1),
(28, 66, 1),
(28, 68, 1),
(28, 71, 1),
(28, 73, 1),
(28, 72, 1),
(28, 67, 1),
(29, 70, 1),
(29, 69, 1),
(29, 66, 1),
(29, 68, 1),
(29, 71, 1),
(29, 73, 1),
(29, 72, 1),
(29, 67, 1),
(22, 70, 1),
(22, 69, 1),
(22, 66, 1),
(22, 68, 1),
(22, 71, 1),
(22, 73, 1),
(22, 72, 1),
(22, 67, 1),
(23, 70, 2),
(23, 69, 2),
(23, 66, 2),
(23, 68, 2),
(23, 71, 2),
(23, 73, 2),
(23, 72, 2),
(23, 67, 2),
(24, 70, 1),
(24, 69, 1),
(24, 66, 1),
(24, 68, 1),
(24, 71, 1),
(24, 73, 1),
(24, 72, 1),
(24, 67, 1),
(25, 70, 2),
(25, 69, 2),
(25, 66, 2),
(25, 68, 2),
(25, 71, 2),
(25, 73, 2),
(25, 72, 2),
(25, 67, 2),
(26, 70, 3),
(26, 69, 3),
(26, 66, 3),
(26, 68, 3),
(26, 71, 3),
(26, 73, 3),
(26, 72, 3),
(26, 67, 3),
(27, 70, 4),
(27, 69, 4),
(27, 66, 4),
(27, 68, 4),
(27, 71, 4),
(27, 73, 4),
(27, 72, 4),
(27, 67, 4),
(32, 1, 1),
(33, 1, 1),
(32, 4, 1),
(32, 5, 1),
(32, 6, 1),
(32, 7, 1),
(32, 8, 1),
(32, 9, 1),
(32, 10, 1),
(32, 11, 1),
(32, 12, 1),
(32, 13, 1),
(32, 20, 1),
(32, 21, 1),
(32, 22, 1),
(32, 23, 1),
(32, 24, 1),
(32, 25, 1),
(32, 26, 1),
(32, 27, 1),
(32, 28, 1),
(32, 29, 1),
(32, 30, 1),
(32, 32, 1),
(32, 33, 1),
(32, 34, 1),
(32, 35, 1),
(32, 36, 1),
(32, 37, 1),
(32, 38, 1),
(32, 39, 1),
(32, 40, 1),
(32, 41, 1),
(32, 42, 1),
(32, 43, 1),
(32, 44, 1),
(32, 50, 1),
(32, 51, 1),
(32, 52, 1),
(32, 55, 1),
(32, 56, 1),
(32, 57, 1),
(32, 58, 1),
(32, 59, 1),
(32, 60, 1),
(32, 61, 1),
(32, 63, 1),
(32, 64, 1),
(32, 65, 1),
(32, 70, 1),
(32, 69, 1),
(32, 66, 1),
(32, 68, 1),
(32, 71, 1),
(32, 73, 1),
(32, 72, 1),
(32, 67, 1),
(33, 4, 1),
(33, 5, 1),
(33, 6, 1),
(33, 7, 1),
(33, 8, 1),
(33, 9, 1),
(33, 10, 1),
(33, 11, 1),
(33, 12, 1),
(33, 13, 1),
(33, 20, 1),
(33, 21, 1),
(33, 22, 1),
(33, 23, 1),
(33, 24, 1),
(33, 25, 1),
(33, 26, 1),
(33, 27, 1),
(33, 28, 1),
(33, 29, 1),
(33, 30, 1),
(33, 32, 1),
(33, 33, 1),
(33, 34, 1),
(33, 35, 1),
(33, 36, 1),
(33, 37, 1),
(33, 38, 1),
(33, 39, 1),
(33, 40, 1),
(33, 41, 1),
(33, 42, 1),
(33, 43, 1),
(33, 44, 1),
(33, 50, 1),
(33, 51, 1),
(33, 52, 1),
(33, 55, 1),
(33, 56, 1),
(33, 57, 1),
(33, 58, 1),
(33, 59, 1),
(33, 60, 1),
(33, 61, 1),
(33, 63, 1),
(33, 64, 1),
(33, 65, 1),
(33, 70, 1),
(33, 69, 1),
(33, 66, 1),
(33, 68, 1),
(33, 71, 1),
(33, 73, 1),
(33, 72, 1),
(33, 67, 1),
(35, 1, 1),
(35, 4, 1),
(35, 5, 1),
(35, 6, 1),
(35, 7, 1),
(35, 8, 1),
(35, 9, 1),
(35, 10, 1),
(35, 11, 1),
(35, 12, 1),
(35, 13, 1),
(35, 20, 1),
(35, 21, 1),
(35, 22, 1),
(35, 23, 1),
(35, 24, 1),
(35, 25, 1),
(35, 26, 1),
(35, 27, 1),
(35, 28, 1),
(35, 29, 1),
(35, 30, 1),
(35, 32, 1),
(35, 33, 1),
(35, 34, 1),
(35, 35, 1),
(35, 36, 1),
(35, 37, 1),
(35, 38, 1),
(35, 39, 1),
(35, 40, 1),
(35, 41, 1),
(35, 42, 1),
(35, 43, 1),
(35, 44, 1),
(35, 50, 1),
(35, 51, 1),
(35, 52, 1),
(35, 55, 1),
(35, 56, 1),
(35, 57, 1),
(35, 58, 1),
(35, 59, 1),
(35, 60, 1),
(35, 61, 1),
(35, 63, 1),
(35, 64, 1),
(35, 65, 1),
(35, 70, 1),
(35, 69, 1),
(35, 66, 1),
(35, 68, 1),
(35, 71, 1),
(35, 73, 1),
(35, 72, 1),
(35, 67, 1);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_comment`
--

CREATE TABLE `giapha_vi_comment` (
  `cid` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(55) NOT NULL,
  `area` int(11) NOT NULL DEFAULT 0,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `pid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `content` text NOT NULL,
  `attach` varchar(255) NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `post_name` varchar(100) NOT NULL,
  `post_email` varchar(100) NOT NULL,
  `post_ip` varchar(39) NOT NULL DEFAULT '',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `likes` mediumint(9) NOT NULL DEFAULT 0,
  `dislikes` mediumint(9) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_contact_department`
--

CREATE TABLE `giapha_vi_contact_department` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `alias` varchar(250) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `others` text NOT NULL,
  `cats` text NOT NULL,
  `admins` text NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_contact_department`
--

INSERT INTO `giapha_vi_contact_department` (`id`, `full_name`, `alias`, `image`, `phone`, `fax`, `email`, `address`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(1, 'Phòng Chăm sóc khách hàng', 'Cham-soc-khach-hang', '', '&#40;098&#41; 7888.411&#91;+84987888411&#93;', '', 'nguyenbabien@gmail.com', '', '<p>Bộ phận tiếp nhận và giải quyết các yêu cầu, đề nghị, ý kiến liên quan đến hoạt động chính của doanh nghiệp</p>', '{\"viber\":\"0987888411\",\"facebook\":\"fb.me\\/bien145\"}', 'Tư vấn|Khiếu nại, phản ánh|Đề nghị hợp tác', '1/1/1/0', 1, 1, 1),
(2, 'Phòng Kỹ thuật', 'Ky-thuat', '', '&#40;098&#41; 7888.411&#91;+84987888411&#93;', '', 'nguyenbabien@gmail.com', '', '<p>Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật</p>', '{\"zalo\":\"0987888411\"}', 'Thông báo lỗi|Góp ý cải tiến', '1/1/1/0', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_contact_reply`
--

CREATE TABLE `giapha_vi_contact_reply` (
  `rid` mediumint(8) UNSIGNED NOT NULL,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `reply_content` text DEFAULT NULL,
  `reply_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reply_aid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_contact_send`
--

CREATE TABLE `giapha_vi_contact_send` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `cat` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `send_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sender_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `sender_name` varchar(100) NOT NULL,
  `sender_address` varchar(250) NOT NULL,
  `sender_email` varchar(100) NOT NULL,
  `sender_phone` varchar(20) DEFAULT '',
  `sender_ip` varchar(39) NOT NULL DEFAULT '',
  `is_read` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_reply` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_processed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `processed_by` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `processed_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_contact_send`
--

INSERT INTO `giapha_vi_contact_send` (`id`, `cid`, `cat`, `title`, `content`, `send_time`, `sender_id`, `sender_name`, `sender_address`, `sender_email`, `sender_phone`, `sender_ip`, `is_read`, `is_reply`, `is_processed`, `processed_by`, `processed_time`) VALUES
(1, 1, 'Tư vấn', 'We are interested in business coperation', 'Seasons Greetings, <br /> <br />We are a Dubai-based business consulting and sourcing company with an extensive network of buyers, importers, distributors, and investors across the UAE and the Middle East. <br /> <br />Based on the growing demand from our clients, we are seeking to establish business relationships with reputable manufacturers, traders, and distributors interested in expanding their products into the UAE market. <br /> <br />Through our network, we can introduce qualified buyers and business opportunities in sectors such as agriculture, manufacturing, construction, mining, oil and gas, consumer goods, and other industries. We conduct our business professionally and in full compliance with UAE laws and regulations. <br /> <br />If your company is interested in exploring cooperation opportunities, please send us your company profile, product e-catalog, and pricing information. We would be pleased to review your offerings and discuss potential business opportunities. <br /> <br />Contact me on this email address', 1780995640, 0, 'Youssef Abdullah', 'Izegem', 'yabdullah.agency@gmail.com', '87259284816', '203.188.183.140', 0, 0, 0, 0, 0),
(2, 1, 'Tư vấn', 'Would you be interested in this proposal? let me hear from', 'My name is Roy Heinrich Smith, I am a research head with Hamilton Laboratory UK known for vast manufacturing. <br />I am reaching out to discuss a promising business opportunity that could be highly advantageous for both of us. I need a dependable foreign business partner to assist me in procuring a rare Premium Herbal Extract known as Kolmogorovian HG57. <br />Although this may not fall within your usual area of expertise, it presents an opportunity for an additional revenue stream for you or your organization. The limited availability of this raw material has impeded product development at my company. Our previous supplier in Ukraine has ceased operations due to the ongoing conflict in the region. <br />PROPOSAL: I am requesting your agreement to act as a new contractor between the manufacturer and Hamilton Laboratory to facilitate this project/contract. <br />We would share the profits from this venture, with 80% allocated to you and 20% to me. I am unable to bid for the supply contract myself, as', 1784164673, 0, 'Roy Heinrich Smith', 'Leoben', 'baseoffice11@gmail.com', '81334851288', '158.173.154.118', 0, 0, 0, 0, 0),
(3, 1, 'Tư vấn', 'Possibility of establishing a custodian partnership', 'Hello Brother, <br /> <br />My name is Saffet Erdogan, an entrepreneur and industrial investor based in Izmir, Turkey. I own and operate several manufacturing facilities across the Izmir region, with business interests spanning production, export, and industrial development. <br /> <br />I am reaching out to explore the possibility of establishing a custodian partnership with you. Recent economic and regulatory developments in Turkey have created an environment in which my privately held assets face increased scrutiny. As a result, I am seeking to secure €85,000,000 within your country and appoint you as the custodian of these funds. I will explain further details as we continue our communication. <br /> <br />I believe you may be an ideal custodian for these funds. My intention is to relocate and transfer my euro?denominated bank assets to you, as the custodian, who will invest and manage them. If you are interested, kindly reply to express your willingness to learn more about my plan. Upon receiving your re', 1784254804, 0, 'Saffet Erdogan', 'Pecs', 'erdogansaffet2@gmail.com', '88221146931', '158.173.154.38', 0, 0, 0, 0, 0),
(4, 1, 'Tư vấn', 'Get the best advertising for your products and services&#33;', 'Hey! nguyenba.id.vn, <br />I discovered nguyenba.id.vn while browsing web pages. <br />Our system automatically sends messages through website contact forms. <br />Our platform helps companies coordinate communication with multiple websites. <br />The service is available with flexible pricing options. <br />You can evaluate the platform with a free test. <br />Contact us if you are interested. <br /> <br />Hope you have a great day. <br />Contact us. <br />Telegram - https://t.me/FeedbackFormEU <br />WhatsApp - +375259112693 <br />WhatsApp  https://wa.me/+375259112693 <br />We only use chat for communication.', 1786079882, 0, 'Davidneunc', 'Bhopal', 'no.reply.hugovandeberg@gmail.com', '87661562196', '31.171.152.104', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_contact_supporter`
--

CREATE TABLE `giapha_vi_contact_supporter` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `departmentid` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `others` text NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `weight` smallint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_freecontent_blocks`
--

CREATE TABLE `giapha_vi_freecontent_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_freecontent_blocks`
--

INSERT INTO `giapha_vi_freecontent_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Sản phẩm', 'Sản phẩm của công ty cổ phần phát triển nguồn mở Việt Nam - VINADES.,JSC');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_freecontent_rows`
--

CREATE TABLE `giapha_vi_freecontent_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `bid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `link` varchar(255) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT 0,
  `end_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_freecontent_rows`
--

INSERT INTO `giapha_vi_freecontent_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'Hệ quản trị nội dung NukeViet', '<ul>\n	<li>Giải thưởng Nhân tài đất Việt 2011, 10.000+ website đang sử dụng</li>\n	<li>Được Bộ GD&amp;ĐT khuyến khích sử dụng trong các cơ sở giáo dục</li>\n	<li>Bộ TT&amp;TT quy định ưu tiên sử dụng trong cơ quan nhà nước</li>\n</ul>', 'http://vinades.vn/vi/san-pham/nukeviet/', '_blank', 'cms.jpg', 1742892758, 0, 1),
(2, 1, 'Cổng thông tin doanh nghiệp', '<ul>\n	<li>Tích hợp bán hàng trực tuyến</li>\n	<li>Tích hợp các nghiệp vụ quản lý (quản lý khách hàng, quản lý nhân sự, quản lý tài liệu)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-doanh-nghiep-NukeViet-portal/', '_blank', 'portal.jpg', 1742892758, 0, 1),
(3, 1, 'Cổng thông tin Phòng giáo dục, Sở giáo dục', '<ul>\n	<li>Tích hợp chung website hàng trăm trường</li>\n	<li>Tích hợp các ứng dụng trực tuyến (Tra điểm SMS, Tra cứu văn bằng, Học bạ điện tử ...)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-giao-duc-NukeViet-Edugate/', '_blank', 'edugate.jpg', 1742892758, 0, 1),
(4, 1, 'Tòa soạn báo điện tử chuyên nghiệp', '<ul>\n	<li>Bảo mật đa tầng, phân quyền linh hoạt</li>\n	<li>Hệ thống bóc tin tự động, đăng bài tự động, cùng nhiều chức năng tiên tiến khác...</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Toa-soan-bao-dien-tu/', '_blank', 'toa-soan-dien-tu.jpg', 1742892758, 0, 1),
(5, 1, 'Giải pháp bán hàng trực tuyến', '<ul><li>Tích hợp các tính năng cơ bản bán hàng trực tuyến</li><li>Tích hợp với các cổng thanh toán, ví điện tử trên toàn quốc</li></ul>', 'http://vinades.vn', '_blank', 'shop.jpg', 1742892758, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_gia_pha`
--

CREATE TABLE `giapha_vi_gia_pha` (
  `id` int(11) NOT NULL,
  `id_link` int(11) NOT NULL DEFAULT 0,
  `gid` int(11) NOT NULL DEFAULT 0,
  `parentid` int(11) NOT NULL DEFAULT 0 COMMENT 'Là con của Ai, thường là bố',
  `parentid2` int(11) NOT NULL DEFAULT 0 COMMENT 'Là con của mẹ nào',
  `weight` int(11) NOT NULL DEFAULT 0 COMMENT 'Là con/vợ thứ mấy (Thứ 2, 3 hay cả, hai, ba , tư..)',
  `lev` int(11) NOT NULL DEFAULT 0 COMMENT 'Đời thứ',
  `relationships` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Quan hệ với người được chọn: Vợ/Con.',
  `gender` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Nam/Nữ/Chưa biết',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Còn sống/ đã mất/ không rõ',
  `anniversary` varchar(10) NOT NULL DEFAULT '0' COMMENT 'Ngày giỗ',
  `actanniversary` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Hiển thị ngày giỗ hay không',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `full_name` varchar(255) NOT NULL COMMENT 'Tên húy (Là tên trong khai sinh, tên cúng cơm)',
  `code` varchar(50) NOT NULL COMMENT 'Số mã hiệu (Là số mã hiệu trong gia phả, nếu có)',
  `name1` varchar(200) NOT NULL COMMENT 'Tên tự (Là tên tự gọi)',
  `name2` varchar(200) NOT NULL COMMENT 'Là tên thụy phong, truy phong sau khi mất',
  `name3` varchar(200) NOT NULL DEFAULT '',
  `name4` varchar(200) NOT NULL DEFAULT '',
  `regency` varchar(200) NOT NULL DEFAULT '' COMMENT 'Chức vụ, phẩm hàm',
  `birthday` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Ngày giờ sinh ',
  `dieday` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Ngày giờ mất ',
  `life` int(11) NOT NULL DEFAULT 0 COMMENT 'Hưởng thọ',
  `burial` varchar(255) NOT NULL COMMENT 'Mộ táng tại',
  `content` mediumtext NOT NULL COMMENT 'Sự nghiệp, công đức của nguời này. (Nếu là nữ, ghi tên con, cháu ngoại cũng như các ghi chú khác vào đây.)',
  `image` varchar(255) NOT NULL COMMENT 'Upload đính kèm ảnh chân dung',
  `userid` int(11) NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_gia_pha`
--

INSERT INTO `giapha_vi_gia_pha` (`id`, `id_link`, `gid`, `parentid`, `parentid2`, `weight`, `lev`, `relationships`, `gender`, `status`, `anniversary`, `actanniversary`, `alias`, `full_name`, `code`, `name1`, `name2`, `name3`, `name4`, `regency`, `birthday`, `dieday`, `life`, `burial`, `content`, `image`, `userid`, `add_time`, `edit_time`) VALUES
(1, 0, 1, 0, 0, 1, 1, 1, 1, 0, '24/2', 0, 'Nguyen-Ba-Phuc-Lam', 'Nguyễn Bá Phúc Lâm', '', '', '', '', '', '', '0000-00-00 00:00:00', '2-24-00 0:0:00', 0, 'Trung Thành, Đại Lai, Gia Bình, Bắc Ninh (21°05&#039;25&quot;N 106°12&#039;53&quot;E)', '', '', 1, 1742893210, 1765246829),
(2, 0, 1, 1, 0, 1, 1, 2, 2, 0, '', 0, 'Nguyen-Thi-Tu-Nuong', 'Nguyễn Thị Tứ Nương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893228, 1742893228),
(3, 0, 1, 1, 2, 1, 2, 1, 1, 2, '', 0, 'Nguyen-Ba-Huynh', 'Nguyễn Bá Huỳnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893235, 1742893235),
(4, 0, 1, 1, 2, 2, 2, 1, 1, 2, '', 0, 'Nguyen-Ba-Hao', 'Nguyễn Bá Hào', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893242, 1742893242),
(5, 0, 1, 1, 2, 3, 2, 1, 1, 2, '', 0, 'Nguyen-Ba-Hoa', 'Nguyễn Bá Hoà', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893247, 1742893247),
(6, 0, 1, 3, 0, 1, 3, 1, 1, 2, '', 0, 'Nguyen-Ba-Bac', 'Nguyễn Bá Bắc', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893262, 1742893262),
(7, 0, 1, 6, 0, 1, 4, 1, 1, 2, '', 0, 'Nguyen-Ba-Ngoc', 'Nguyễn Bá Ngọc', '', '', '', '', '', '', '0000-00-00 00:00:00', '2-17-00 0:0:00', 0, '', '', '', 1, 1742893274, 1774692991),
(8, 0, 1, 7, 503, 1, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Mon', 'Nguyễn Bá Môn', '', '', '', '', '', '', '0000-00-00 00:00:00', '9-11-00 0:0:00', 0, '', '', '', 1, 1742893283, 1774693033),
(9, 0, 1, 7, 503, 2, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Bao', 'Nguyễn Bá Bao', '', '', '', '', '', '', '0000-00-00 00:00:00', '5-30-00 0:0:00', 0, '', '', '', 1, 1742893287, 1774692973),
(10, 0, 1, 7, 503, 3, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Chan', 'Nguyễn Bá Chấn', '', '', '', '', '', '', '0000-00-00 00:00:00', '6-12-00 0:0:00', 0, '', '', '', 1, 1742893291, 1774693054),
(11, 0, 1, 7, 503, 4, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Toan', 'Nguyễn Bá Toàn', '', '', '', '', '', '', '0000-00-00 00:00:00', '7-5-00 0:0:00', 0, '', '', '', 1, 1742893295, 1774693067),
(12, 0, 1, 9, 505, 1, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Phao', 'Nguyễn Bá Phao', '', '', '', '', '', '', '0000-00-00 00:00:00', '7-15-00 0:0:00', 0, '', '', '', 1, 1742893306, 1774693086),
(13, 0, 1, 9, 505, 2, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Teo', 'Nguyễn Bá Tẹo', '', '', '', '', '', '', '0000-00-00 00:00:00', '2-6-00 0:0:00', 0, '', '', '', 1, 1742893312, 1774693131),
(14, 0, 1, 13, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Lung', 'Nguyễn Bá Lừng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893317, 1742893317),
(15, 0, 1, 13, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Linh', 'Nguyễn Bá Lĩnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893322, 1742893322),
(16, 0, 1, 13, 0, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Dinh', 'Nguyễn Bá Dĩnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893327, 1742893327),
(17, 0, 1, 4, 0, 1, 3, 1, 1, 2, '', 0, 'Nguyen-Ba-Ly', 'Nguyễn Bá Lý', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893349, 1742893349),
(18, 0, 1, 4, 0, 2, 3, 1, 1, 2, '', 0, 'Nguyen-Ba-Oc', 'Nguyễn Bá Ốc', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893353, 1742893353),
(19, 0, 1, 17, 0, 1, 4, 1, 1, 2, '', 0, 'Nguyen-Ba-Khien', 'Nguyễn Bá Khiến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893360, 1742893360),
(20, 0, 1, 17, 0, 2, 4, 1, 1, 2, '', 0, 'Nguyen-Ba-Kien', 'Nguyễn Bá Kiến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893364, 1742893364),
(21, 0, 1, 17, 0, 3, 4, 1, 1, 2, '', 0, 'Nguyen-Ba-Vi', 'Nguyễn Bá Vị', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893369, 1742893369),
(22, 0, 1, 17, 0, 4, 4, 1, 1, 2, '', 0, 'Nguyen-Ba-Y', 'Nguyễn Bá Y', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893373, 1742893373),
(23, 0, 1, 17, 0, 5, 4, 1, 1, 2, '', 0, 'Nguyen-Ba-Nho', 'Nguyễn Bá Nho', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893376, 1742893376),
(24, 0, 1, 20, 0, 1, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Phat', 'Nguyễn Bá Phất', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893393, 1742893393),
(25, 0, 1, 20, 0, 2, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Phuc', 'Nguyễn Bá Phúc', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893397, 1742893397),
(26, 0, 1, 20, 0, 3, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Cu', 'Nguyễn Bá Cự', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893401, 1742893401),
(27, 0, 1, 24, 0, 1, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Sinh', 'Nguyễn Bá Sinh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893418, 1742893418),
(28, 0, 1, 25, 0, 1, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Tao', 'Nguyễn Bá Tạo', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893432, 1742893432),
(29, 0, 1, 25, 0, 2, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Ty', 'Nguyễn Bá Tý', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893437, 1742893437),
(30, 0, 1, 26, 0, 1, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Tien', 'Nguyễn Bá Tiến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893455, 1742893455),
(31, 0, 1, 26, 0, 2, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Nhan', 'Nguyễn Bá Nhân', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893459, 1742893459),
(32, 0, 1, 26, 0, 3, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Dai-32', 'Nguyễn Bá Dai', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893462, 1742897352),
(33, 0, 1, 26, 0, 4, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Dao', 'Nguyễn Bá Đáo', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893466, 1742893466),
(34, 0, 1, 21, 0, 1, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Cu-34', 'Nguyễn Bá Cứ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893485, 1742893485),
(35, 0, 1, 34, 0, 1, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Du', 'Nguyễn Bá Du', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893493, 1742893499),
(36, 0, 1, 5, 0, 1, 3, 1, 1, 2, '', 0, 'Nguyen-Ba-Nam', 'Nguyễn Bá Nam', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893532, 1742893532),
(37, 0, 1, 36, 0, 1, 4, 1, 1, 2, '', 0, 'Nguyen-Ba-Ky', 'Nguyễn Bá Kỳ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893548, 1742893548),
(38, 0, 1, 36, 0, 2, 4, 1, 1, 2, '', 0, 'Nguyen-Ba-Thu', 'Nguyễn Bá Thu', '', '', '', '', '', '', '0000-00-00 00:00:00', '12-6-00 0:0:00', 0, '', '', '', 1, 1742893554, 1774693952),
(39, 0, 1, 36, 0, 3, 4, 1, 1, 2, '', 0, 'Nguyen-Ba-Phat-39', 'Nguyễn Bá Phát', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893557, 1742893557),
(40, 0, 1, 36, 0, 4, 4, 1, 1, 2, '', 0, 'Nguyen-Ba-Yet', 'Nguyễn Bá Yết', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893561, 1742893561),
(41, 0, 1, 37, 0, 1, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Di', 'Nguyễn Bá Dĩ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893574, 1742893574),
(42, 0, 1, 37, 0, 2, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Da', 'Nguyễn Bá Dã', '', '', '', '', '', '', '0000-00-00 00:00:00', '7-1-00 0:0:00', 0, '', '', '', 1, 1742893586, 1774693634),
(43, 0, 1, 38, 508, 1, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Thi', 'Nguyễn Bá Thi', '', '', '', '', '', '', '0000-00-00 00:00:00', '9-23-00 0:0:00', 0, '', '', '', 1, 1742893591, 1774693914),
(44, 0, 1, 38, 0, 2, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Cam', 'Nguyễn Bá Cầm', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893596, 1742893596),
(45, 0, 1, 38, 0, 3, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Sach', 'Nguyễn Bá Sách', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893600, 1742893600),
(46, 0, 1, 38, 0, 4, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Luan', 'Nguyễn Bá Luận', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893604, 1742893604),
(47, 0, 1, 39, 0, 1, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Song', 'Nguyễn Bá Song', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893613, 1742893613),
(48, 0, 1, 39, 0, 2, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Te', 'Nguyễn Bá Tế', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893616, 1742893616),
(49, 0, 1, 39, 0, 3, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Nho-49', 'Nguyễn Bá Nhỡ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893620, 1742893620),
(50, 0, 1, 39, 0, 4, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Dang', 'Nguyễn Bá Đăng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893625, 1742893625),
(51, 0, 1, 40, 0, 1, 5, 1, 1, 2, '', 0, 'Nguyen-Ba-Huyen', 'Nguyễn Bá Huyền', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893635, 1742893635),
(52, 0, 1, 41, 0, 1, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Y-52', 'Nguyễn Bá Ý', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893667, 1742893667),
(53, 0, 1, 41, 0, 2, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Tu', 'Nguyễn Bá Tứ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893671, 1742893671),
(54, 0, 1, 42, 0, 1, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Kien-54', 'Nguyễn Bá Kiền', '', '', '', '', '', '', '0000-00-00 00:00:00', '2-12-00 0:0:00', 0, '', '', '', 1, 1742893680, 1774693765),
(55, 0, 1, 42, 0, 2, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Khan', 'Nguyễn Bá Khẩn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893684, 1742893684),
(56, 0, 1, 42, 0, 3, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Dan', 'Nguyễn Bá Dần', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893688, 1742893688),
(57, 0, 1, 43, 319, 1, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Thu-57', 'Nguyễn Bá Thư', '', '', '', '', '', '', '0000-00-00 00:00:00', '1-12-00 0:0:00', 0, '', '', '', 1, 1742893699, 1774695916),
(58, 0, 1, 43, 319, 2, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Cu-58', 'Nguyễn Bá Cư', '', '', '', '', '', '', '0000-00-00 00:00:00', '9-25-00 0:0:00', 0, '', '', '', 1, 1742893703, 1774695965),
(59, 0, 1, 43, 319, 3, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Su', 'Nguyễn Bá Sử', '', '', '', '', '', '', '0000-00-00 00:00:00', '5-26-00 0:0:00', 0, '', '', '', 1, 1742893706, 1774696030),
(60, 0, 1, 45, 293, 1, 6, 1, 1, 0, '', 0, 'Nguyen-Ba-So', 'Nguyễn Bá Sổ', '', '', '', '', '', '', '0000-00-00 00:00:00', '2005-02-01 0:0:00', 0, 'https://maps.app.goo.gl/sGhRpmnxneYK1uwn7', '', '', 1, 1742893721, 1774694281),
(61, 0, 1, 45, 0, 2, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Phong', 'Nguyễn Bá Phóng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893725, 1742893725),
(62, 0, 1, 45, 0, 3, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Khuong', 'Nguyễn Bá Khương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893732, 1742893732),
(63, 0, 1, 45, 0, 4, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Dung', 'Nguyễn Bá Dụng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893737, 1742893737),
(64, 0, 1, 45, 293, 5, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Thanh', 'Nguyễn Bá Thanh', '', '', '', '', '', '', '0000-00-00 00:00:00', '12-8-00 0:0:00', 0, '', '', '', 1, 1742893741, 1774694382),
(65, 0, 1, 46, 0, 1, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Them', 'Nguyễn Bá Thêm', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893749, 1742893749),
(66, 0, 1, 46, 0, 2, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Bai', 'Nguyễn Bá Bài', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893754, 1742893754),
(67, 0, 1, 47, 513, 1, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-May', 'Nguyễn Bá Mây', '', '', '', '', '', '', '0000-00-00 00:00:00', '9-18-00 0:0:00', 0, '', '', '', 1, 1742893763, 1774695182),
(68, 0, 1, 47, 513, 2, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Tuyet', 'Nguyễn Bá Tuyết', '', '', '', '', '', '', '0000-00-00 00:00:00', '12-16-00 0:0:00', 0, '', '', '', 1, 1742893767, 1774695217),
(69, 0, 1, 47, 513, 3, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Dien', 'Nguyễn Bá Điện', '', '', '', '', '', '', '0000-00-00 00:00:00', '7-2-00 0:0:00', 0, '', '', '', 1, 1742893771, 1774695383),
(70, 0, 1, 47, 0, 4, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Lo', 'Nguyễn Bá Lộ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893775, 1742893775),
(71, 0, 1, 48, 486, 3, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Bo', 'Nguyễn Bá Bộ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893784, 1753501630),
(72, 0, 1, 49, 0, 1, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Lich', 'Nguyễn Bá Lịch', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893794, 1742893794),
(73, 0, 1, 49, 0, 2, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Diu', 'Nguyễn Bá Dịu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893797, 1742893797),
(74, 0, 1, 49, 0, 3, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Dang-74', 'Nguyễn Bá Dàng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893804, 1742893804),
(75, 0, 1, 49, 0, 4, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Du-75', 'Nguyễn Bá Dụ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893808, 1742893808),
(76, 0, 1, 49, 0, 5, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Di-76', 'Nguyễn Bá Dị', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893813, 1742893813),
(77, 0, 1, 50, 0, 1, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Khoa', 'Nguyễn Bá Khoa', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893821, 1742893821),
(78, 0, 1, 50, 0, 2, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Tuoc', 'Nguyễn Bá Tước', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893826, 1742893826),
(79, 0, 1, 50, 0, 3, 6, 1, 1, 2, '', 0, 'Nguyen-Ba-Hien', 'Nguyễn Bá Hiến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742893829, 1742893829),
(80, 0, 1, 14, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Long', 'Nguyễn Bá Long', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742896950, 1742896950),
(81, 0, 1, 14, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Thanh-81', 'Nguyễn Bá Thành', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742896956, 1742896956),
(82, 0, 1, 14, 0, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Thao', 'Nguyễn Bá Thảo', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742896960, 1742896960),
(83, 0, 1, 80, 358, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Luong-Tai', 'Nguyễn Bá  Lương Tài', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742896970, 1751856785),
(84, 0, 1, 81, 360, 3, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Phat-84', 'Nguyễn Bá Phát', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742896976, 1751856906),
(85, 0, 1, 82, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Nguyen', 'Nguyễn Bá Nguyên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742896982, 1742896982),
(86, 0, 1, 15, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Nam-86', 'Nguyễn Bá Nam', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742896998, 1742896998),
(87, 0, 1, 15, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Loi', 'Nguyễn Bá Lợi', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897002, 1742897002),
(88, 0, 1, 16, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Dinh-88', 'Nguyễn Bá Dinh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897008, 1742897008),
(89, 0, 1, 16, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Linh-89', 'Nguyễn Bá Linh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897011, 1742897011),
(90, 0, 1, 16, 0, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Vinh', 'Nguyễn Bá Vinh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897015, 1742897015),
(91, 0, 1, 88, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Bao-91', 'Nguyễn Bá Bảo', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897029, 1742897029),
(92, 0, 1, 90, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Quang', 'Nguyễn Bá Quang', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897033, 1742897033),
(93, 0, 1, 28, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Luong', 'Nguyễn Bá Lượng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897070, 1742897070),
(94, 0, 1, 28, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Tan', 'Nguyễn Bá Tân', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897077, 1742897077),
(95, 0, 1, 28, 0, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Dai', 'Nguyễn Bá Đại', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897081, 1742897081),
(96, 0, 1, 93, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Toan-96', 'Nguyễn Bá Toàn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897092, 1742897092),
(97, 0, 1, 93, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Thang', 'Nguyễn Bá Thắng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897096, 1742897096),
(98, 0, 1, 94, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Tuan', 'Nguyễn Bá Tuấn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897108, 1742897108),
(99, 0, 1, 94, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Tu-99', 'Nguyễn Bá Tú', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897113, 1742897113),
(100, 0, 1, 94, 0, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Tai-100', 'Nguyễn Bá Tài', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897121, 1742897121),
(101, 0, 1, 94, 0, 4, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Thinh', 'Nguyễn Bá Thịnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897125, 1742897125),
(102, 0, 1, 94, 0, 5, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Vuong', 'Nguyễn Bá Vượng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897129, 1742897129),
(103, 0, 1, 95, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Dong', 'Nguyễn Bá Đông', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897137, 1742897137),
(104, 0, 1, 95, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Phuong', 'Nguyễn Bá Phương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897142, 1742897142),
(105, 0, 1, 30, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Khoai', 'Nguyễn Bá Khoai', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897377, 1742897377),
(106, 0, 1, 30, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Khoan', 'Nguyễn Bá Khoan', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897395, 1742897395),
(107, 0, 1, 106, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Nam-107', 'Nguyễn Bá Nam', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897418, 1742897418),
(108, 0, 1, 106, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Huong', 'Nguyễn Bá Hướng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897422, 1742897422),
(109, 0, 1, 107, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Dinh-109', 'Nguyễn Bá Định', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897429, 1742897429),
(110, 0, 1, 107, 0, 2, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Minh', 'Nguyễn Bá Minh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897433, 1742897433),
(111, 0, 1, 32, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Thai', 'Nguyễn Bá Thai', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897449, 1742897449),
(112, 0, 1, 52, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Thu-112', 'Nguyễn Bá Thứ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897528, 1742897528),
(113, 0, 1, 52, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Tiep', 'Nguyễn Bá Tiếp', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897533, 1742897533),
(114, 0, 1, 112, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Thanh-114', 'Nguyễn Bá Thành', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897544, 1742897544),
(115, 0, 1, 112, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Chien', 'Nguyễn Bá Chiến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897548, 1742897548),
(116, 0, 1, 115, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Thang-116', 'Nguyễn Bá Thắng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897552, 1742897552),
(117, 0, 1, 113, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Phuc-117', 'Nguyễn Bá Phúc', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897566, 1742897566),
(118, 0, 1, 53, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Tai-118', 'Nguyễn Bá Tái', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897579, 1742897579),
(119, 0, 1, 53, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Quan', 'Nguyễn Bá Quân', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897583, 1742897583),
(120, 0, 1, 118, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Tinh', 'Nguyễn Bá Tỉnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897590, 1742897590),
(121, 0, 1, 118, 0, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Manh', 'Nguyễn Bá Mạnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897594, 1750899982),
(122, 0, 1, 120, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Anh', 'Nguyễn Bá Anh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897600, 1742897600),
(123, 0, 1, 119, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Tien-123', 'Nguyễn Bá Tiến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897613, 1742897613),
(124, 0, 1, 123, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Tai-124', 'Nguyễn Bá Tài', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897616, 1742897616),
(125, 0, 1, 54, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Kham', 'Nguyễn Bá Khảm', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742897632, 1742897632),
(126, 0, 1, 54, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Vo', 'Nguyễn Bá Vô', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898313, 1742898313),
(127, 0, 1, 54, 0, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Hao-127', 'Nguyễn Bá Hảo', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898317, 1742898317),
(128, 0, 1, 54, 0, 4, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Tu-128', 'Nguyễn Bá Tư', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898320, 1742898320),
(129, 0, 1, 125, 312, 4, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Truong', 'Nguyễn Bá Trường', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898335, 1751965304),
(130, 0, 1, 125, 312, 5, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Thuong', 'Nguyễn Bá Thưởng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898339, 1751965331),
(131, 0, 1, 129, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Chan-131', 'Nguyễn Bá Chấn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898344, 1742898344),
(132, 0, 1, 129, 0, 2, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Long-132', 'Nguyễn Bá Long', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898348, 1742898348),
(133, 0, 1, 126, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Dung-133', 'Nguyễn Bá Dũng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898365, 1742898365),
(134, 0, 1, 126, 307, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Duy', 'Nguyễn Bá Duy', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898368, 1750900089),
(135, 0, 1, 133, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Tien-135', 'Nguyễn Bá Tiến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898374, 1742898374),
(136, 0, 1, 134, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Bao-136', 'Nguyễn Bá Bảo', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898378, 1742898378),
(137, 0, 1, 127, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Chi', 'Nguyễn Bá Chí', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898384, 1742898384),
(138, 0, 1, 127, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Trien', 'Nguyễn Bá Triển', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898391, 1742898391),
(139, 0, 1, 137, 331, 2, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Duc-Minh', 'Nguyễn Bá Đức Minh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898397, 1775902494),
(140, 0, 1, 128, 309, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Hung', 'Nguyễn Bá Hùng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898408, 1750900210),
(141, 0, 1, 128, 309, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Huy', 'Nguyễn Bá Huy', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898412, 1750900232),
(142, 0, 1, 55, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Can', 'Nguyễn Bá Cấn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898439, 1742898439),
(143, 0, 1, 55, 403, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Chuan', 'Nguyễn Bá Chuẩn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898442, 1751862321),
(144, 0, 1, 143, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Tuan-144', 'Nguyễn Bá Tuấn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898451, 1742898451),
(145, 0, 1, 143, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Hai', 'Nguyễn Bá Hải', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898454, 1742898454),
(146, 0, 1, 143, 0, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Hieu', 'Nguyễn Bá Hiểu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898458, 1742898458),
(147, 0, 1, 144, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Nam-147', 'Nguyễn Bá Nam', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898463, 1742898463),
(148, 0, 1, 144, 0, 2, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Dang-148', 'Nguyễn Bá Đăng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898467, 1742898467),
(149, 0, 1, 145, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Giang', 'Nguyễn Bá Giang', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898472, 1742898472),
(150, 0, 1, 56, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Dau', 'Nguyễn Bá Dậu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898487, 1742898487),
(151, 0, 1, 56, 0, 5, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Tue', 'Nguyễn Bá Tuệ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898490, 1750900504),
(152, 0, 1, 150, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Cuong', 'Nguyễn Bá Cường', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898509, 1742898509),
(153, 0, 1, 151, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Quang-153', 'Nguyễn Bá Quang', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898514, 1742898514),
(154, 0, 1, 57, 320, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Khuyen', 'Nguyễn Bá Khuyến', '', '', '', '', '', '', '0000-00-00 00:00:00', '9-13-00 0:0:00', 0, '', '', '', 1, 1742898538, 1774695943),
(155, 0, 1, 57, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Trang', 'Nguyễn Bá Trang', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898541, 1742898541),
(156, 0, 1, 57, 320, 6, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Chinh', 'Nguyễn Bá Chinh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898544, 1750900786),
(157, 0, 1, 154, 325, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Khoi', 'Nguyễn Bá Khôi', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898551, 1750901655),
(158, 0, 1, 157, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Khai', 'Nguyễn Bá Khải', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898555, 1742898555),
(159, 0, 1, 155, 327, 4, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Khiem', 'Nguyễn Bá Khiêm', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898558, 1750910318),
(160, 0, 1, 156, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Chinh-160', 'Nguyễn Bá Chỉnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898576, 1742898576),
(161, 0, 1, 58, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Tuyen', 'Nguyễn Bá Tuyến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898588, 1742898588),
(162, 0, 1, 58, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Dai-162', 'Nguyễn Bá Đại', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898591, 1742898591),
(163, 0, 1, 58, 0, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Lien', 'Nguyễn Bá Liên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898595, 1742898595),
(164, 0, 1, 58, 410, 5, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Quang-164', 'Nguyễn Bá Quang', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898599, 1751865642),
(165, 0, 1, 161, 411, 4, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Ta', 'Nguyễn Bá Tá', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898615, 1751871062),
(166, 0, 1, 165, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Phuc-166', 'Nguyễn Bá Phúc', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898619, 1742898619),
(167, 0, 1, 162, 420, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Dong-167', 'Nguyễn Bá Đồng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898632, 1751873246),
(168, 0, 1, 162, 420, 4, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Nghiep', 'Nguyễn Bá Nghiệp', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898636, 1751873271),
(169, 0, 1, 167, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Dat', 'Nguyễn Bá Đạt', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898643, 1742898643),
(170, 0, 1, 168, 425, 2, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Hung-170', 'Nguyễn Bá Hùng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898649, 1751871337),
(171, 0, 1, 163, 428, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Manh-171', 'Nguyễn Bá Mạnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898661, 1751871450),
(172, 0, 1, 164, 433, 4, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Nam-172', 'Nguyễn Bá Nam', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898664, 1751873324),
(173, 0, 1, 59, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Chu', 'Nguyễn Bá Chữ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898676, 1742898676),
(174, 0, 1, 59, 299, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Tinh-174', 'Nguyễn Bá Tỉnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898680, 1750057460),
(175, 0, 1, 173, 340, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Trung', 'Nguyễn Bá Trung', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898687, 1750902317),
(176, 0, 1, 175, 0, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Duc', 'Nguyễn Bá Đức', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898690, 1742898696),
(177, 0, 1, 174, 300, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Quang-Huy', 'Nguyễn Bá Quang Huy', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898703, 1751871744),
(178, 0, 1, 60, 0, 1, 7, 1, 1, 1, '', 0, 'Nguyen-Ba-Bien', 'Nguyễn Bá Biên', '', '', '', '', '', '', '1958-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898709, 1742900696),
(179, 0, 1, 60, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Dien-179', 'Nguyễn Bá Diên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898713, 1742898713),
(180, 0, 1, 60, 0, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Dung-180', 'Nguyễn Bá Dũng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898716, 1742898716),
(181, 0, 1, 60, 0, 4, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Cuong-181', 'Nguyễn Bá Cương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898720, 1742898720),
(182, 0, 1, 60, 0, 6, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Thu-182', 'Nguyễn Bá Thử', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898724, 1742933445),
(183, 0, 1, 178, 197, 3, 8, 1, 1, 1, '', 0, 'Nguyen-Ba-Bien-183', 'Nguyễn Bá Biền', '', '', '', '', '', 'Thạc sỹ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'Hoàng Liệt, Hoàng Mai, Hà Nội', '', '319888520_1557752167983894_7751465621893382090_n.jpg', 1, 1742898727, 1742907457),
(184, 0, 1, 179, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Tuyen-184', 'Nguyễn Bá Tuyên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898733, 1742898884),
(185, 0, 1, 178, 197, 1, 8, 1, 2, 1, '', 0, 'Nguyen-Thi-Thanh', 'Nguyễn Thị Thảnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898757, 1742900945),
(186, 0, 1, 178, 0, 2, 8, 1, 2, 1, '', 0, 'Nguyen-Thi-Thuy', 'Nguyễn Thị Thuỳ', '', '', '', '', '', '', '1983-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898821, 1742898821),
(187, 0, 1, 179, 0, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Lan', 'Nguyễn Thị Lan', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898878, 1742898878),
(188, 0, 1, 180, 0, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Luyen', 'Nguyễn Thị Luyến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898894, 1742898894),
(189, 0, 1, 180, 0, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Nga', 'Nguyễn Thị Nga', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898904, 1742898904),
(190, 0, 1, 180, 0, 3, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Ngan', 'Nguyễn Thị Ngân', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898915, 1742898915),
(191, 0, 1, 180, 0, 4, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Dat-191', 'Nguyễn Bá Đạt', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898922, 1742898922),
(192, 0, 1, 181, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Duong', 'Nguyễn Bá Dương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898930, 1742898930),
(193, 0, 1, 181, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Duong-193', 'Nguyễn Bá Dưỡng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898935, 1742898935),
(194, 0, 1, 182, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Lam', 'Nguyễn Bá Lãm', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898940, 1742933411),
(195, 0, 1, 61, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Hoan', 'Nguyễn Bá Hoàn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898948, 1742898948),
(196, 0, 1, 61, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Toan-196', 'Nguyễn Bá Toàn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898951, 1742898951),
(197, 0, 1, 178, 0, 1, 7, 2, 2, 1, '', 0, 'Pham-Thi-Tien', 'Phạm Thị Tiến', '', '', '', '', '', '', '1959-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898968, 1742898968),
(198, 0, 1, 61, 0, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Doan', 'Nguyễn Bá Đoàn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898980, 1742898980),
(199, 0, 1, 195, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Ba', 'Nguyễn Bá Ba', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742898998, 1742898998),
(200, 0, 1, 196, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Tung', 'Nguyễn Bá Tùng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899002, 1742899002),
(201, 0, 1, 198, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Binh', 'Nguyễn Bá Bình', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899008, 1742899008),
(202, 0, 1, 62, 471, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Man', 'Nguyễn Bá Mãn', '', '', '', '', '', '', '1966-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899015, 1753500754),
(203, 0, 1, 202, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Nguyen-203', 'Nguyễn Bá Nguyện', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899020, 1742899020),
(204, 0, 1, 202, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Cau', 'Nguyễn Bá Cầu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899024, 1742899024),
(205, 0, 1, 63, 439, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Hoa-205', 'Nguyễn Bá Hoạ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899034, 1751873444),
(206, 0, 1, 63, 439, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Hoa-206', 'Nguyễn Bá Hoà', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899038, 1751873461),
(207, 0, 1, 205, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Hoang', 'Nguyễn Bá Hoàng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899044, 1742899044),
(208, 0, 1, 206, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Phong-208', 'Nguyễn Bá Phong', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899048, 1742899048),
(209, 0, 1, 64, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Son', 'Nguyễn Bá Sơn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899058, 1742899058),
(210, 0, 1, 64, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Xuan', 'Nguyễn Bá Xuân', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899062, 1742899062),
(211, 0, 1, 65, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Cuong-211', 'Nguyễn Bá Cường', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899078, 1742899078),
(212, 0, 1, 66, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Kien-212', 'Nguyễn Bá Kiên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899091, 1742899091),
(213, 0, 1, 66, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Duoc', 'Nguyễn Bá Được', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899094, 1742899094),
(214, 0, 1, 66, 0, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Dai-214', 'Nguyễn Bá Đài', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899097, 1742899097),
(215, 0, 1, 67, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Mua', 'Nguyễn Bá Mưa', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899117, 1742899117),
(216, 0, 1, 67, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Gao', 'Nguyễn Bá Gạo', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899122, 1742899122),
(217, 0, 1, 67, 0, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Dung-217', 'Nguyễn Bá Dùng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899127, 1742899127),
(218, 0, 1, 67, 0, 4, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Quynh', 'Nguyễn Bá Quỷnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899134, 1742899134),
(219, 0, 1, 67, 0, 5, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Bay', 'Nguyễn Bá Bẩy', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899137, 1742899137),
(220, 0, 1, 217, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Dung-220', 'Nguyễn Bá Dũng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899144, 1742899144),
(221, 0, 1, 217, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Manh-221', 'Nguyễn Bá Mạnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899148, 1742899148),
(222, 0, 1, 218, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Huan', 'Nguyễn Bá Huân', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899155, 1742899155),
(223, 0, 1, 219, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Hung-223', 'Nguyễn Bá Hùng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899161, 1742899161),
(224, 0, 1, 219, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Huy-224', 'Nguyễn Bá Huy', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899167, 1742899167),
(225, 0, 1, 68, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Khien-225', 'Nguyễn Bá Khiên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899179, 1742899179),
(226, 0, 1, 68, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Thuyen', 'Nguyễn Bá Thuyên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899183, 1742899183),
(227, 0, 1, 225, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Sang', 'Nguyễn Bá Sang', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899191, 1742899191),
(228, 0, 1, 226, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Trung-228', 'Nguyễn Bá Trung', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899197, 1742899197),
(229, 0, 1, 226, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Hieu-229', 'Nguyễn Bá Hiếu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899200, 1742899200),
(230, 0, 1, 69, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Luyen', 'Nguyễn Bá Luyện', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899210, 1742899210),
(231, 0, 1, 69, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Tap', 'Nguyễn Bá Tập', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899214, 1742899214),
(232, 0, 1, 69, 0, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Truong-232', 'Nguyễn Bá Trường', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899219, 1742899219),
(233, 0, 1, 69, 0, 4, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Tuong', 'Nguyễn Bá Tường', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899225, 1742899225),
(234, 0, 1, 228, 455, 2, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Nguyen-234', 'Nguyễn Bá Nguyên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899233, 1751966098),
(235, 0, 1, 230, 366, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Phuong-235', 'Nguyễn Bá Phương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899252, 1751857377),
(236, 0, 1, 230, 366, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Phi', 'Nguyễn Bá Phi', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899257, 1751857391),
(237, 0, 1, 231, 375, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-An', 'Nguyễn Bá An', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899272, 1751857723),
(238, 0, 1, 232, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Giang-238', 'Nguyễn Bá Giang', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899284, 1742899284),
(239, 0, 1, 233, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Tuyen-239', 'Nguyễn Bá Tuyên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899291, 1742899291),
(240, 0, 1, 233, 0, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Duc-240', 'Nguyễn Bá Đức', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899295, 1751857883),
(241, 0, 1, 70, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Son-241', 'Nguyễn Bá Sơn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899304, 1742899304),
(242, 0, 1, 70, 0, 4, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Ngoc-242', 'Nguyễn Bá Ngọc', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899308, 1750902602),
(243, 0, 1, 241, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Thai-243', 'Nguyễn Bá Thái', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899316, 1753502598),
(244, 0, 1, 242, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Vinh-244', 'Nguyễn Bá Vinh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899321, 1742899332),
(245, 0, 1, 242, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Hien-245', 'Nguyễn Bá Hiển', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899338, 1742899338),
(246, 0, 1, 71, 446, 1, 7, 1, 1, 0, '', 0, 'Nguyen-Ba-Vinh-246', 'Nguyễn Bá Vĩnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899351, 1753501665),
(247, 0, 1, 71, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Vien', 'Nguyễn Bá Viễn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899356, 1742899356),
(248, 0, 1, 71, 0, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Linh-248', 'Nguyễn Bá Linh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899364, 1742899364),
(249, 0, 1, 71, 0, 4, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Thanh-249', 'Nguyễn Bá Thành', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899371, 1742899371),
(250, 0, 1, 71, 447, 5, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Tuan-250', 'Nguyễn Bá Tuấn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899378, 1753502103),
(251, 0, 1, 71, 447, 6, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Hai-251', 'Nguyễn Bá Hải', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899384, 1753502120),
(252, 0, 1, 247, 490, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Duy-252', 'Nguyễn Bá Duy', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899392, 1753501879),
(253, 0, 1, 248, 491, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Hung-253', 'Nguyễn Bá Hưng', '', '', '', '', '', '', '2012-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899401, 1753501998),
(254, 0, 1, 249, 492, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Hieu-254', 'Nguyễn Bá Hiếu', '', '', '', '', '', '', '2014-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899408, 1753502073),
(255, 0, 1, 250, 448, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Cong', 'Nguyễn Bá Công', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899418, 1751965642),
(256, 0, 1, 251, 451, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Duc-256', 'Nguyễn Bá Đức', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899424, 1751965740),
(257, 0, 1, 72, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Thiep', 'Nguyễn Bá Thiệp', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899439, 1742899439),
(258, 0, 1, 72, 379, 4, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Cuong-258', 'Nguyễn Bá Cường', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899443, 1751859214),
(259, 0, 1, 257, 381, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Tung-259', 'Nguyễn Bá Tùng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899451, 1751859308),
(260, 0, 1, 73, 0, 1, 7, 1, 1, 1, '', 0, 'Nguyen-Ba-Thong', 'Nguyễn Bá Thông', '027000000000', '', '', '', '', 'Tiến sỹ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '<p>Số điện thoại:<br />Nghề nghiệp:<br />Lịch sử công tác:</p>', '', 1, 1742899462, 1742906307);
INSERT INTO `giapha_vi_gia_pha` (`id`, `id_link`, `gid`, `parentid`, `parentid2`, `weight`, `lev`, `relationships`, `gender`, `status`, `anniversary`, `actanniversary`, `alias`, `full_name`, `code`, `name1`, `name2`, `name3`, `name4`, `regency`, `birthday`, `dieday`, `life`, `burial`, `content`, `image`, `userid`, `add_time`, `edit_time`) VALUES
(261, 0, 1, 73, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Thang-261', 'Nguyễn Bá Thắng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899467, 1742899467),
(262, 0, 1, 73, 0, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-The', 'Nguyễn Bá Thế', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899471, 1742899471),
(263, 0, 1, 260, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Thai-263', 'Nguyễn Bá Thái', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899480, 1742899480),
(264, 0, 1, 260, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Phu', 'Nguyễn Bá Phú', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899486, 1742899486),
(265, 0, 1, 260, 0, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Phuc-265', 'Nguyễn Bá Phúc', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899490, 1742899490),
(266, 0, 1, 260, 0, 4, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Duc-266', 'Nguyễn Bá Đức', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899497, 1742899504),
(267, 0, 1, 261, 391, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Anh-267', 'Nguyễn Bá Anh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899511, 1751859505),
(268, 0, 1, 74, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Duyen', 'Nguyễn Bá Duyến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899526, 1742899526),
(269, 0, 1, 74, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Duyen-269', 'Nguyễn Bá Duyên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899531, 1742899531),
(270, 0, 1, 74, 0, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Hong', 'Nguyễn Bá Hồng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899536, 1742899536),
(271, 0, 1, 268, 463, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Hieu-271', 'Nguyễn Bá Hiếu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899544, 1753500128),
(272, 0, 1, 269, 466, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Nguyen-272', 'Nguyễn Bá Nguyên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899551, 1753500235),
(273, 0, 1, 269, 466, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Khoi-273', 'Nguyễn Bá Khôi', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899555, 1753500250),
(274, 0, 1, 270, 468, 1, 8, 1, 1, 0, '', 0, 'Nguyen-Ba-Hung-274', 'Nguyễn Bá Hùng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899563, 1753500475),
(275, 0, 1, 75, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Thuong-275', 'Nguyễn Bá Thưởng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899571, 1742899571),
(276, 0, 1, 75, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Tho', 'Nguyễn Bá Thọ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899576, 1742899576),
(277, 0, 1, 275, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Bao-277', 'Nguyễn Bá Bảo', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899582, 1742899582),
(278, 0, 1, 275, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Nhan-278', 'Nguyễn Bá Nhân', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899586, 1742899586),
(279, 0, 1, 276, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Duc-279', 'Nguyễn Bá Đức', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899592, 1742899592),
(280, 0, 1, 276, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Phuc-280', 'Nguyễn Bá Phúc', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899596, 1742899596),
(281, 0, 1, 76, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Dao-281', 'Nguyễn Bá Đạo', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899606, 1742899606),
(282, 0, 1, 77, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Manh-282', 'Nguyễn Bá Mạnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899613, 1742899613),
(283, 0, 1, 77, 480, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Khue', 'Nguyễn Bá Khuê', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899618, 1753501241),
(284, 0, 1, 282, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Huy-284', 'Nguyễn Bá Huy', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899625, 1742899625),
(285, 0, 1, 283, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Khang', 'Nguyễn Bá Khang', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899631, 1742899631),
(286, 0, 1, 79, 0, 1, 7, 1, 1, 2, '', 0, 'Nguyen-Ba-Hoang-286', 'Nguyễn Bá Hoàng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899638, 1742899638),
(287, 0, 1, 286, 0, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Long-287', 'Nguyễn Bá Long', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742899643, 1742899643),
(288, 0, 1, 183, 0, 1, 8, 2, 2, 1, '', 0, 'Nguyen-Thi-Ngoc-Bau', 'Nguyễn Thị Ngọc Báu', '', '', '', '', '', 'Thạc Sỹ', '1987-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742900738, 1742907468),
(289, 0, 1, 183, 288, 1, 9, 1, 2, 1, '', 0, 'Nguyen-Thanh-Truc', 'Nguyễn Thanh Trúc', '', '', '', '', '', '', '2016-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742900895, 1742900938),
(290, 0, 1, 183, 288, 2, 9, 1, 2, 1, '', 0, 'Nguyen-Minh-Chau', 'Nguyễn Minh Châu', '', '', '', '', '', '', '2021-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742900908, 1742900908),
(291, 0, 1, 182, 0, 1, 8, 1, 2, 1, '', 0, 'Nguyen-Thi-Quy', 'Nguyễn Thị Quý', '', '', '', '', '', '', '1993-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1742933394, 1742933394),
(292, 0, 1, 60, 294, 5, 7, 1, 2, 1, '', 0, 'Nguyen-Thi-Tuy', 'Nguyễn Thị Tuý', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '<p>Con trai cả: Lê Văn Cầu<br />Con trai hai: Lê Văn Phúc</p>', '', 1, 1742933437, 1750056742),
(293, 0, 1, 45, 0, 1, 5, 2, 2, 0, '', 0, 'Pham-Thi-Trien', 'Phạm Thị Triện', '', '', '', '', '', '', '0000-00-00 00:00:00', '10-13-00 0:0:00', 0, '', '', '', 1, 1742933482, 1774694207),
(294, 0, 1, 60, 0, 1, 6, 2, 2, 0, '', 0, 'Pham-Thi-Nho', 'Phạm Thị Nhỡ', '', '', '', '', '', '', '0000-00-00 00:00:00', '7-9-00 0:0:00', 0, '', '', '', 1, 1742933549, 1774694255),
(295, 0, 1, 14, 0, 1, 7, 2, 2, 1, '', 0, 'Nguyen-Thi-Kien', 'Nguyễn Thị Kiên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750055952, 1750055952),
(296, 0, 1, 179, 0, 1, 7, 2, 2, 1, '', 0, 'Nguyen-Thi-La', 'Nguyễn Thị Là', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750056197, 1750056197),
(297, 0, 1, 15, 0, 1, 7, 2, 2, 2, '', 0, 'Pham-Thi-Xuyen', 'Phạm Thị Xuyến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750056243, 1750056243),
(298, 0, 1, 127, 0, 1, 7, 2, 2, 1, '', 0, 'Do-Thi-Bien', 'Đỗ Thị Biên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750056322, 1750056322),
(299, 0, 1, 59, 0, 1, 6, 2, 2, 1, '', 0, 'Nguyen-Thi-Cung', 'Nguyễn Thị Cung', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750056386, 1750056386),
(300, 0, 1, 174, 0, 1, 7, 2, 2, 1, '', 0, 'Nguyen-Thi-Van', 'Nguyễn Thị Vân', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750056595, 1750056595),
(301, 0, 1, 292, 0, 1, 7, 3, 1, 2, '', 0, 'Le-Van-Anh', 'Lê Văn Ảnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 1, 1750056701, 1750056701),
(302, 0, 1, 174, 300, 1, 8, 1, 2, 1, '', 0, 'Nguyen-Ngoc-Mai-Anh', 'Nguyễn Ngọc Mai Anh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750056743, 1750904132),
(306, 0, 1, 118, 0, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Tuyen', 'Nguyễn Thị Tuyên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750899912, 1775902648),
(304, 0, 1, 59, 299, 4, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Tinh', 'Nguyễn Thị Tình', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '<p>Lấy chồng là Đoàn Công Nghiệp - Thôn Phương Triện, Đại Lai</p>', '', 2, 1750057019, 1750910961),
(305, 0, 1, 59, 299, 2, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Vui', 'Nguyễn Thị Vui', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '<p>Lấy chồng là Đỗ Như Vỹ- &nbsp;Trung Thành , Đại Lai</p>', '', 2, 1750057091, 1750910901),
(307, 0, 1, 126, 0, 1, 7, 2, 2, 2, '', 0, 'Pham-thi-Cuong', 'Phạm thị Cương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900045, 1750900045),
(308, 0, 1, 126, 307, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Dung', 'Nguyễn Thị Dung', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900069, 1750910787),
(309, 0, 1, 128, 0, 1, 7, 2, 2, 2, '', 0, 'Le-Thi-Xoe', 'Lê Thị Xoe', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900120, 1750900120),
(310, 0, 1, 128, 309, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Thi-Yen', 'Nguyễn Thị  Yến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900162, 1750900162),
(311, 0, 1, 112, 0, 1, 7, 2, 2, 2, '', 0, 'Le-Thi-Chuyen', 'Lê Thị  Chuyền', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900281, 1750900281),
(312, 0, 1, 125, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Quyen', 'Nguyễn Thị Quyền', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900308, 1750900308),
(313, 0, 1, 125, 312, 1, 8, 1, 1, 2, '', 0, 'Nguyen-Thi-Quyen-313', 'Nguyễn Thị Quyên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900345, 1750900345),
(314, 0, 1, 55, 403, 4, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Chat', 'Nguyễn Thị Chất', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900382, 1775902570),
(315, 0, 1, 55, 403, 5, 7, 1, 1, 2, '', 0, 'Nguyen-Thi-Phuong', 'Nguyễn Thị Phượng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900413, 1751862370),
(316, 0, 1, 56, 0, 2, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Hau', 'Nguyễn Thị Hậu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900438, 1775902583),
(317, 0, 1, 56, 0, 3, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Sinh', 'Nguyễn Thị Sinh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900469, 1775902618),
(318, 0, 1, 56, 0, 4, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Hue', 'Nguyễn Thị Huệ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900483, 1775902602),
(319, 0, 1, 43, 0, 1, 5, 2, 2, 2, '', 0, 'Nguyen-Thi-Han', 'Nguyễn Thị Hân', '', '', '', '', '', '', '0000-00-00 00:00:00', '7-4-00 0:0:00', 0, '', '', '', 2, 1750900537, 1774693930),
(320, 0, 1, 57, 0, 1, 6, 2, 2, 2, '', 0, 'Pham-Thi-Tranh', 'Phạm Thị Trành', '', '', '', '', '', '', '0000-00-00 00:00:00', '1-4-00 0:0:00', 0, '', '', '', 2, 1750900562, 1774695930),
(321, 0, 1, 57, 320, 3, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Thuoc', 'Nguyễn Thị Thuộc', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900696, 1750904101),
(322, 0, 1, 57, 320, 4, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Diem', 'Nguyễn Thị Điểm', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900732, 1750904147),
(323, 0, 1, 57, 320, 5, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Dot', 'Nguyễn Thị Đót', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900755, 1750904188),
(324, 0, 1, 57, 320, 7, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Ngoan', 'Nguyễn Thị Ngoan', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900807, 1750904205),
(325, 0, 1, 154, 0, 1, 7, 2, 2, 2, '', 0, 'Pham-Thi-Oanh', 'Phạm Thị Oanh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900871, 1750900871),
(326, 0, 1, 157, 0, 1, 8, 2, 2, 2, '', 0, 'Nguyen-Thi-Lan-326', 'Nguyễn Thị Lan', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900918, 1750900918),
(327, 0, 1, 155, 0, 1, 7, 2, 2, 2, '', 0, 'TranThi-Nhi', 'TrầnThị Nhi', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750900940, 1750901967),
(328, 0, 1, 154, 325, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Anh', 'Nguyễn Thị Anh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750901642, 1750904090),
(329, 0, 1, 154, 325, 3, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Lam', 'Nguyễn Thị Lam', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750901681, 1750904156),
(330, 0, 1, 154, 325, 4, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Ha', 'Nguyễn Thị Hà', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750901699, 1750904196),
(331, 0, 1, 137, 0, 1, 8, 2, 2, 2, '', 0, 'Vu-Thi-Huyen', 'Vũ Thị Huyền', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750901873, 1750901873),
(332, 0, 1, 137, 331, 1, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-Ngoc-Quy', 'Nguyễn Thị Ngọc Quý', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750901889, 1775902557),
(333, 0, 1, 159, 0, 1, 8, 2, 2, 2, '', 0, 'Nguyen-Thi-Hoa', 'Nguyễn Thị Hoa', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750901992, 1750901992),
(334, 0, 1, 159, 333, 1, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-Minh-Chau', 'Nguyễn Thị Minh Châu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750902045, 1750904110),
(335, 0, 1, 159, 333, 2, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-Minh-Tam', 'Nguyễn Thị Minh Tâm', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750902065, 1750904166),
(336, 0, 1, 138, 0, 1, 8, 2, 2, 2, '', 0, 'Do-Thi-Binh', 'Đỗ Thị Bình', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750902110, 1750902110),
(337, 0, 1, 138, 336, 1, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-Phuong-Anh', 'Nguyễn Thị Phương Anh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750902147, 1775902506),
(338, 0, 1, 138, 336, 2, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Duc-An', 'Nguyễn Bá Đức An', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750902169, 1750902169),
(339, 0, 1, 134, 0, 1, 8, 2, 2, 2, '', 0, 'Nguyen-Thi-Tuyen-339', 'Nguyễn Thị Tuyến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750902200, 1750902200),
(340, 0, 1, 173, 0, 1, 7, 2, 2, 2, '', 0, 'Trinh-Thi-Tam', 'Trịnh  Thị Tâm', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750902265, 1750902265),
(341, 0, 1, 173, 0, 2, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Tho', 'Nguyễn Thị Thơ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750902284, 1750902284),
(342, 0, 1, 173, 340, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Tu', 'Nguyễn Thị Tú', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750902304, 1750904121),
(343, 0, 1, 173, 340, 3, 8, 1, 2, 2, '', 0, 'Nguyen-Phuong-Hieu', 'Nguyễn Phương Hiếu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750902344, 1750904223),
(344, 0, 1, 79, 0, 1, 6, 2, 2, 2, '', 0, 'Nguyen-Thi-Thuan', 'Nguyễn Thị Thuân', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750902516, 1750902516),
(345, 0, 1, 70, 0, 2, 7, 1, 1, 2, '', 0, 'Nguyen-Thi-Ha-345', 'Nguyễn Thị Hà', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750902570, 1750902570),
(346, 0, 1, 70, 0, 3, 7, 1, 1, 2, '', 0, 'Nguyen-Thi-Hang', 'Nguyễn Thị Hằng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750902586, 1750902586),
(347, 0, 1, 310, 0, 1, 9, 1, 2, 2, '', 0, 'Nguyen-Ba', 'Nguyễn Bá', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750903976, 1750903976),
(348, 0, 1, 181, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Huong', 'Nguyễn Thị Hương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750909689, 1750909689),
(349, 0, 1, 192, 0, 1, 8, 2, 2, 2, '', 0, 'Nguyen-Thi-Mua', 'Nguyễn Thị Mùa', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750909723, 1750909723),
(350, 0, 1, 192, 349, 1, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-Hai-Yen', 'Nguyễn Thị Hải Yến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750909759, 1750909759),
(351, 0, 1, 193, 0, 1, 8, 2, 2, 2, '', 0, 'Nguyen-Thi-Giang', 'Nguyễn Thị Giang', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750909821, 1750909821),
(352, 0, 1, 193, 351, 1, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-Quynh', 'Nguyễn Thị Quỳnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750909864, 1750909864),
(353, 0, 1, 193, 351, 2, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-Linh-Chi', 'Nguyễn Thị Linh Chi', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750909886, 1750909886),
(354, 0, 1, 193, 351, 3, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Minh-Khang', 'Nguyễn Bá Minh Khang', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750909919, 1750909919),
(355, 0, 1, 155, 327, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Yen-355', 'Nguyễn Thị Yến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750910232, 1750910232),
(356, 0, 1, 155, 327, 3, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Thuy-356', 'Nguyễn Thị Thủy', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750910250, 1750910297),
(357, 0, 1, 155, 327, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Nga-357', 'Nguyễn Thị Nga', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1750910274, 1750910274),
(502, 0, 1, 3, 0, 1, 2, 2, 2, 2, '', 0, 'Hieu-Tu-Bac', 'Hiệu Từ Bắc', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1774692823, 1774692823),
(358, 0, 1, 80, 0, 1, 8, 2, 2, 2, '', 0, 'Pham-thi-Dat', 'Phạm thị Đạt', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751856715, 1751856715),
(359, 0, 1, 80, 358, 2, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-Binh', 'Nguyễn Thị Bình', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751856761, 1751856761),
(360, 0, 1, 81, 0, 1, 8, 2, 2, 2, '', 0, 'Pham-Thi-Khuong', 'Phạm Thị Khương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751856816, 1751856816),
(361, 0, 1, 81, 360, 1, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-Ngoc-Anh', 'Nguyễn Thị Ngọc Anh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751856854, 1751856854),
(362, 0, 1, 81, 360, 2, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-To-Trinh', 'Nguyễn Thị Tố Trinh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751856891, 1751856891),
(363, 0, 1, 82, 0, 1, 8, 2, 2, 2, '', 0, 'Trinh-Thi-Sac', 'Trịnh Thị Sắc', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751856932, 1751856932),
(364, 0, 1, 82, 363, 2, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-Thuy-Duong', 'Nguyễn Thị Thùy Dương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751857031, 1751857067),
(365, 0, 1, 82, 363, 3, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Phuc-Thinh', 'Nguyễn Bá Phúc Thịnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751857055, 1751857055),
(366, 0, 1, 230, 0, 1, 7, 2, 2, 2, '', 0, 'Tran-thi-Phong', 'Trần thị Phong', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751857223, 1751857223),
(367, 0, 1, 235, 0, 1, 8, 2, 2, 2, '', 0, 'Nguyen-Thi-Hong', 'Nguyễn Thị Hồng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751857256, 1751857256),
(368, 0, 1, 235, 367, 1, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-Ngoc-Anh-368', 'Nguyễn Thị Ngọc Anh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751857290, 1751857290),
(369, 0, 1, 235, 367, 2, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-Quynh-Huong', 'Nguyễn Thị Quỳnh Hương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751857321, 1751857321),
(370, 0, 1, 235, 367, 3, 9, 1, 2, 2, '', 0, 'Nguyen-Ngoc-Anh', 'Nguyễn Ngọc Ánh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751857337, 1751857337),
(371, 0, 1, 230, 366, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Lan-371', 'Nguyễn Thị Lan', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751857358, 1751857358),
(372, 0, 1, 236, 0, 1, 8, 2, 2, 2, '', 0, 'Hoang-Thi-Huyen', 'Hoàng Thị Huyền', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751857430, 1751857430),
(373, 0, 1, 236, 372, 1, 9, 1, 2, 2, '', 0, 'Nguyen-Minh-Chau-373', 'Nguyễn Minh Châu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751857453, 1751857453),
(374, 0, 1, 236, 372, 2, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Minh-Quang', 'Nguyễn Bá Minh Quang', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751857607, 1751857607),
(375, 0, 1, 231, 0, 1, 7, 2, 2, 2, '', 0, 'Pham-Thi-Thuy', 'Phạm Thị Thúy', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751857662, 1751857662),
(376, 0, 1, 231, 375, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Nga-376', 'Nguyễn Thị Nga', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751857688, 1751857688),
(377, 0, 1, 231, 375, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Tham', 'Nguyễn Thị Thắm', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751857713, 1751857713),
(378, 0, 1, 233, 0, 2, 8, 1, 1, 2, '', 0, 'Nguyen-Thi-Thanh-Nhan', 'Nguyễn Thị Thanh Nhàn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751857860, 1751857860),
(379, 0, 1, 72, 0, 1, 6, 2, 2, 2, '', 0, 'Nguyen-Thi-Thu', 'Nguyễn Thị Thư', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859056, 1751859056),
(380, 0, 1, 72, 379, 2, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Thuy-380', 'Nguyễn Thị Thúy', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859086, 1751859086),
(381, 0, 1, 257, 0, 1, 7, 2, 2, 2, '', 0, 'Bui-thi-Mai', 'Bùi thị Mai', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859150, 1751859150),
(382, 0, 1, 72, 379, 3, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Tham-382', 'Nguyễn Thị Thắm', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859196, 1751859196),
(383, 0, 1, 72, 379, 5, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Huong-383', 'Nguyễn Thị Hường', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859238, 1751859238),
(384, 0, 1, 257, 381, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Nhung', 'Nguyễn Thị Nhung', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859274, 1751859274),
(385, 0, 1, 257, 381, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Hoai-Thuong', 'Nguyễn Thị Hoài Thương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859293, 1751859293),
(386, 0, 1, 258, 0, 1, 7, 2, 2, 2, '', 0, 'Nong-Thi-Sinh', 'Nông Thị Sinh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859333, 1751859333),
(387, 0, 1, 258, 386, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thuy-Linh', 'Nguyễn Thùy Linh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859356, 1751859356),
(388, 0, 1, 258, 386, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Ngoc-Quynh', 'Nguyễn Ngọc Quỳnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859380, 1751859380),
(389, 0, 1, 73, 0, 1, 6, 2, 2, 2, '', 0, 'Ha-Thi-Khe', 'Hà Thị Khê', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859418, 1751859418),
(390, 0, 1, 260, 0, 1, 7, 2, 2, 2, '', 0, 'Vu-thi-Cham', 'Vũ thị Châm', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859442, 1751859442),
(391, 0, 1, 261, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Kim-Ngan', 'Nguyễn Thị Kim Ngân', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859471, 1751859471),
(392, 0, 1, 261, 391, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Van-Anh', 'Nguyễn Thị Vân Anh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859495, 1751859495),
(393, 0, 1, 262, 0, 1, 7, 2, 2, 2, '', 0, 'Hoang-Thi-Huong', 'Hoàng Thị Hương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859524, 1751859524),
(394, 0, 1, 75, 0, 1, 6, 2, 2, 2, '', 0, 'Phung-Thi-Dang', 'Phùng Thị Đang', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859582, 1751859582),
(395, 0, 1, 275, 0, 1, 7, 2, 2, 2, '', 0, 'Le-Thi-Men', 'Lê Thị Mến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859624, 1751859624),
(396, 0, 1, 275, 395, 3, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Tri-Dung', 'Nguyễn Bá Trí Dũng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859665, 1751859665),
(397, 0, 1, 276, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Huyen', 'Nguyễn Thị Huyền', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859685, 1751859685),
(398, 0, 1, 276, 397, 3, 8, 1, 2, 2, '', 0, 'Nguyen-Linh-Chau', 'Nguyễn Linh Châu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859716, 1751859716),
(399, 0, 1, 75, 394, 3, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Thinh', 'Nguyễn Thị Thịnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751859738, 1751859738),
(400, 0, 1, 133, 0, 1, 8, 2, 2, 2, '', 0, 'Vu-Thi-Tot', 'Vũ Thị Tốt', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751861077, 1751861077),
(401, 0, 1, 133, 400, 2, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-Quynh-Nhu', 'Nguyễn Thị Quỳnh Như', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751861117, 1751861117),
(402, 0, 1, 143, 0, 1, 7, 2, 2, 2, '', 0, 'Le-thi-Hang', 'Lê thị Hằng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751861276, 1751861276),
(403, 0, 1, 55, 0, 1, 6, 2, 2, 2, '', 0, 'Pham-Thi-Co', 'Phạm Thị Cô', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751861310, 1751861310),
(406, 0, 1, 144, 0, 1, 8, 2, 2, 2, '', 0, 'Nguyen-Thi-Thu-Hang', 'Nguyễn Thị Thu Hằng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751862185, 1751862185),
(407, 0, 1, 145, 0, 1, 8, 2, 2, 2, '', 0, 'Nguyen-Thi-Quyet', 'Nguyễn Thị Quyết', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751862229, 1751862229),
(408, 0, 1, 145, 407, 2, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-Mai-Anh', 'Nguyễn Thị Mai Anh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751862259, 1751862259),
(409, 0, 1, 55, 403, 2, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Doai', 'Nguyễn Thị Đoài', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751862298, 1751862298),
(410, 0, 1, 58, 0, 1, 6, 2, 2, 2, '', 0, 'Nguyen-Thi-Men', 'Nguyễn Thị Mến', '', '', '', '', '', '', '0000-00-00 00:00:00', '12-30-00 0:0:00', 0, '', '', '', 2, 1751865461, 1774696000),
(411, 0, 1, 161, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Mo', 'Nguyễn Thị Mơ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751865484, 1751865484),
(412, 0, 1, 161, 0, 2, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Mui', 'Nguyễn Thị Mùi', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751865499, 1751865499),
(413, 0, 1, 165, 0, 1, 8, 2, 2, 2, '', 0, 'Hoang-Thanh-Phuong', 'Hoàng Thanh Phương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751865523, 1751865523),
(414, 0, 1, 165, 413, 2, 9, 1, 2, 2, '', 0, 'Nguyen-Phuong-Thao', 'Nguyễn Phương Thảo', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751865554, 1751865554),
(415, 0, 1, 58, 410, 4, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Lan-415', 'Nguyễn Thị Lan', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751865617, 1751865617),
(416, 0, 1, 58, 410, 6, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Xuan', 'Nguyễn Thị Xuân', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751865660, 1751865660),
(417, 0, 1, 161, 411, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Nhung-417', 'Nguyễn Thị Nhung', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751865704, 1751865704),
(418, 0, 1, 161, 411, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Thuy-418', 'Nguyễn Thị  Thúy', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871018, 1751871018),
(419, 0, 1, 161, 411, 3, 8, 1, 2, 2, '', 0, 'Nguyen-Van', 'Nguyễn Vân', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871050, 1751871050),
(420, 0, 1, 162, 0, 1, 7, 2, 2, 2, '', 0, 'Tran-thi-Luong', 'Trần thị Lương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871126, 1751871126),
(421, 0, 1, 162, 420, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Len', 'Nguyễn Thị Len', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871143, 1751871143),
(422, 0, 1, 167, 0, 1, 8, 2, 2, 2, '', 0, 'Tran-Thi-Thu-Ha', 'Trần Thị Thu Hà', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871207, 1751871207),
(423, 0, 1, 167, 422, 2, 9, 1, 2, 2, '', 0, 'Nguyen-Quynh-Hoa', 'Nguyễn Quỳnh Hoa', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871248, 1751871248),
(424, 0, 1, 167, 422, 3, 9, 1, 2, 2, '', 0, 'Nguyen-Thanh-Tra', 'Nguyễn Thanh Trà', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871264, 1751871264),
(425, 0, 1, 168, 0, 1, 8, 2, 2, 2, '', 0, 'Phung-Thi-Thuy', 'Phùng Thị Thủy', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871297, 1751871297),
(426, 0, 1, 168, 425, 1, 9, 1, 2, 2, '', 0, 'Nguyen-Thi-Hien', 'Nguyễn Thị Hiền', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871325, 1751871325),
(427, 0, 1, 168, 425, 3, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Hong-Dang', 'Nguyễn Bá Hồng Đăng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871360, 1751871360),
(428, 0, 1, 163, 0, 1, 7, 2, 2, 2, '', 0, 'Trinh-Thi-Hien', 'Trịnh Thị Hiển', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871394, 1751871394),
(429, 0, 1, 163, 428, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Chi', 'Nguyễn Thị Chi', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871420, 1751871420),
(430, 0, 1, 163, 428, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Ket', 'Nguyễn Thị Kết', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871433, 1751871463),
(431, 0, 1, 171, 0, 1, 8, 2, 2, 2, '', 0, 'Dong-Thi-Diep-Anh', 'Dồng Thị Diệp Anh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871503, 1751871503),
(432, 0, 1, 171, 431, 1, 9, 1, 2, 2, '', 0, 'Nguyen-Ngoc-Tra-My', 'Nguyễn Ngọc Trà My', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871528, 1751871528),
(433, 0, 1, 164, 0, 1, 7, 2, 2, 2, '', 0, 'Dao-Thi-Luyen', 'Đào Thị Luyến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871552, 1751871552),
(434, 0, 1, 164, 433, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Xuyen', 'Nguyễn Thị  Xuyến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871623, 1751871649),
(435, 0, 1, 164, 433, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Quyen-435', 'Nguyễn Thị Quyên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751871638, 1751871638),
(436, 0, 1, 162, 420, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Net', 'Nguyễn Thị Nết', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751873225, 1751873225),
(437, 0, 1, 164, 433, 3, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Phuong-437', 'Nguyễn Thị Phương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751873309, 1751873309),
(438, 0, 1, 205, 0, 1, 7, 2, 2, 2, '', 0, 'Le-thi-Huong', 'Lê thị Hướng', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751873386, 1751873386),
(439, 0, 1, 63, 0, 1, 6, 2, 2, 2, '', 0, 'Nguyen-Thi-Cuc', 'Nguyến Thị Cúc', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751873413, 1751873413),
(440, 0, 1, 63, 439, 1, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Hue-440', 'Nguyễn Thị Huệ', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751873430, 1751873430),
(441, 0, 1, 125, 312, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Huong-441', 'Nguyễn Thị Hương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965207, 1751965243),
(442, 0, 1, 125, 312, 3, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Thom', 'Nguyễn Thị Thơm', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965273, 1751965273),
(443, 0, 1, 129, 0, 1, 8, 2, 2, 2, '', 0, 'Tran-thi-Thuong', 'Trần thị Thương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965356, 1751965356),
(444, 0, 1, 130, 0, 1, 8, 2, 2, 2, '', 0, 'Nguyen-Thi-Hanh', 'Nguyễn Thị Hạnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965387, 1751965387),
(445, 0, 1, 130, 444, 1, 9, 1, 2, 2, '', 0, 'Nguyen-Phuong-Linh', 'Nguyễn Phương Linh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965411, 1751965411),
(446, 0, 1, 71, 0, 1, 6, 2, 2, 2, '', 0, 'Nguyen-Thi-Quy-446', 'Nguyễn Thị Quý', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965525, 1751965525),
(447, 0, 1, 71, 0, 2, 6, 2, 2, 2, '', 0, 'Nguyen-Thi-Lan-447', 'Nguyễn Thi Lan', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965544, 1751965544),
(448, 0, 1, 250, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Men-448', 'Nguyễn Thị Mến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965582, 1751965582),
(449, 0, 1, 250, 448, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Huyen-Trang', 'Nguyễn Thị Huyền Trang', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965614, 1751965614),
(450, 0, 1, 250, 448, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Kim-Ngan-450', 'Nguyễn Thị Kim Ngân', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965631, 1751965631),
(451, 0, 1, 251, 0, 1, 7, 2, 2, 2, '', 0, 'Vu-Thi-Hanh', 'Vũ Thị Hạnh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965671, 1751965671),
(452, 0, 1, 251, 451, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Hau-452', 'Nguyễn Thị Hậu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965689, 1751965689),
(453, 0, 1, 251, 451, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Huong-Giang', 'Nguyễn Thị  Hương Giang', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965731, 1751965731),
(454, 0, 1, 226, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Lien', 'Nguyễn Thị Liên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965840, 1751965840),
(455, 0, 1, 228, 0, 1, 8, 2, 2, 2, '', 0, 'Vu-Thi-Hoa', 'Vũ Thị Hòa', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965916, 1751965916),
(456, 0, 1, 228, 455, 1, 9, 1, 2, 2, '', 0, 'Nguyen-Gia-Han', 'Nguyễn Gia Hân', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751965954, 1751965954),
(457, 0, 1, 229, 0, 1, 8, 2, 2, 2, '', 0, 'Tran-Thanh-Tam', 'Trần Thanh Tâm', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751966155, 1751966155),
(458, 0, 1, 229, 457, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-AN-Nguyen', 'Nguyễn Bá  AN Nguyên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751966186, 1751966186),
(459, 0, 1, 229, 457, 2, 9, 1, 2, 2, '', 0, 'Nguyen-Lan-Anh', 'Nguyễn Lan Anh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751966204, 1751966204),
(460, 0, 1, 229, 457, 3, 9, 1, 2, 2, '', 0, 'Nguyen-Thuy-Anh', 'Nguyễn Thùy Anh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751966227, 1751966227),
(461, 0, 1, 161, 411, 5, 8, 1, 1, 2, '', 0, 'Nguyen-Ba-Tan-461', 'Nguyễn Bá Tấn', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1751966982, 1751966982),
(462, 0, 1, 74, 0, 1, 6, 2, 2, 2, '', 0, 'Do-Thi-La', 'Đỗ Thị Là', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753499951, 1753499951),
(463, 0, 1, 268, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Bich-Thom', 'Nguyễn Thị Bich Thơm', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753499993, 1753499993),
(464, 0, 1, 268, 463, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Ngoc-Anh-464', 'Nguyễn Thị Ngọc Ánh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753500043, 1753500102),
(465, 0, 1, 268, 463, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Ngoi', 'Nguyễn Thị Ngời', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753500075, 1753500075),
(466, 0, 1, 269, 0, 1, 7, 2, 2, 2, '', 0, 'Tran-thi-Diu', 'Trần thị  Dịu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753500161, 1753500161),
(467, 0, 1, 269, 466, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Thao', 'Nguyễn Thị Thảo', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753500205, 1753500205),
(468, 0, 1, 270, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Yen-468', 'Nguyễn Thị Yến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753500458, 1753500458),
(469, 0, 1, 270, 468, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Phuong-Ly', 'Nguyễn Thị Phương Ly', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753500515, 1753500515),
(470, 0, 1, 270, 468, 3, 8, 1, 2, 2, '', 0, 'Nguyen-Phuong-Linh-470', 'Nguyễn Phương Linh', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753500544, 1753500544),
(471, 0, 1, 62, 0, 1, 6, 2, 2, 2, '', 0, 'Nguyen-Thi-Minh', 'Nguyễn Thị Minh', '', '', '', '', '', '', '1939-00-00 0:0:00', '3-18-00 0:0:00', -1936, '', '', '', 2, 1753500678, 1774694459),
(472, 0, 1, 62, 471, 1, 7, 1, 2, 0, '', 0, 'Nguyen-Thi-Khuong', 'Nguyễn Thị Khuông', '', '', '', '', '', '', '1963-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753500710, 1753500710),
(473, 0, 1, 202, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Men-473', 'Nguyễn Thị Mến', '', '', '', '', '', '', '1968-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753500782, 1753500782),
(474, 0, 1, 203, 0, 1, 8, 2, 2, 2, '', 0, 'Vu-Thanh-Huong', 'Vũ Thanh Hương', '', '', '', '', '', '', '1997-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753500830, 1753500830),
(475, 0, 1, 203, 474, 1, 9, 1, 1, 2, '', 0, 'Nguyen-Ba-Duy-475', 'Nguyễn Bá Duy', '', '', '', '', '', '', '2025-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753500852, 1753500852),
(476, 0, 1, 62, 471, 3, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Mien', 'Nguyễn Thị Miền', '', '', '', '', '', '', '1968-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753500899, 1753500994),
(477, 0, 1, 62, 471, 4, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Mau', 'Nguyễn Thị Màu', '', '', '', '', '', '', '1971-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753500928, 1753500928),
(478, 0, 1, 62, 471, 5, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Mat', 'Nguyễn Thị Mát', '', '', '', '', '', '', '1974-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753500950, 1753500950),
(479, 0, 1, 62, 471, 6, 7, 1, 2, 2, '', 0, 'Nguyen-Thi-Ngat', 'Nguyễn Thị Ngát', '', '', '', '', '', '', '1977-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753500974, 1753500974),
(480, 0, 1, 77, 0, 1, 6, 2, 2, 2, '', 0, 'Nguyen-Thi-Huyen-480', 'Nguyến Thị Huyên', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501041, 1753501041),
(481, 0, 1, 282, 0, 1, 7, 2, 2, 2, '', 0, 'Le-Thi-Hiep', 'Lê Thị Hiệp', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501076, 1753501076),
(482, 0, 1, 282, 481, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Thu-Hoa', 'Nguyễn Thu Hòa', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501131, 1753501131),
(483, 0, 1, 283, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Ngoc-Hau', 'Nguyễn Ngọc Hậu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501158, 1753501158),
(484, 0, 1, 283, 483, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Ngoc-Vy', 'Nguyễn Ngọc Vy', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501193, 1753501193),
(485, 0, 1, 77, 480, 2, 7, 1, 2, 0, '', 0, 'Nguyen-Thi-Hue-485', 'Nguyễn Thị Huê', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501217, 1753501217),
(486, 0, 1, 48, 0, 1, 5, 2, 2, 2, '', 0, 'Do-Thi-Van', 'Đỗ Thị Vân', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501419, 1753501419),
(487, 0, 1, 48, 486, 1, 6, 1, 2, 2, '', 0, 'Nguyen-Thi-Tien', 'Nguyễn Thị Tiến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501484, 1753501484),
(488, 0, 1, 48, 486, 2, 6, 1, 1, 0, '', 0, 'Nguyen-Ba-Gu', 'Nguyễn Bá Gù', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501525, 1753501525),
(489, 0, 1, 48, 486, 4, 6, 1, 2, 2, '', 0, 'Nguyen-Thi-Bac', 'Nguyễn Thị Bắc', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501571, 1753501645),
(490, 0, 1, 247, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Thuy-490', 'Nguyễn Thị Thủy', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501705, 1753501705),
(491, 0, 1, 248, 0, 1, 7, 2, 2, 2, '', 0, 'Vu-Thuy-Yen', 'Vũ Thùy Yến', '', '', '', '', '', '', '1977-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501739, 1753501739),
(492, 0, 1, 249, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Chien', 'Nguyễn Thị Chiên', '', '', '', '', '', '', '1989-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501814, 1753501814),
(493, 0, 1, 247, 490, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Dung-493', 'Nguyễn Thị Dung', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501868, 1753501868),
(494, 0, 1, 248, 491, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thu-Uyen', 'Nguyễn Thu Uyên', '', '', '', '', '', '', '1999-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501924, 1753501977),
(495, 0, 1, 248, 491, 2, 8, 1, 2, 2, '', 0, 'Nguyen-Ngic-Anh', 'Nguyễn Ngịc Anh', '', '', '', '', '', '', '2006-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753501964, 1753501964),
(496, 0, 1, 249, 492, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Khanh-Chi', 'Nguyễn Khánh Chi', '', '', '', '', '', '', '2013-00-00 0:0:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753502053, 1753502053),
(497, 0, 1, 70, 0, 1, 6, 2, 2, 2, '', 0, 'Nguyen-Thi-Phach', 'Nguyễn Thị Phách', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753502571, 1753502571),
(498, 0, 1, 241, 0, 1, 8, 1, 2, 2, '', 0, 'Nguyen-Thi-Thao-498', 'Nguyễn Thị Thảo', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753502588, 1753502588),
(499, 0, 1, 241, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Lieu', 'Nguyễn Thị Liệu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753503073, 1753503073),
(500, 0, 1, 242, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Thu-Phuong', 'Nguyễn Thu Phương', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753503094, 1753503094),
(501, 0, 1, 49, 0, 1, 5, 2, 2, 2, '', 0, 'Pham-Thi-Da', 'Phạm Thị Đa', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1753512931, 1753512931),
(503, 0, 1, 7, 0, 1, 4, 2, 2, 2, '', 0, 'Cu-Yen', 'Cụ Yên', '', '', '', '', '', '', '0000-00-00 00:00:00', '5-9-00 0:0:00', 0, '', '', '', 2, 1774692856, 1774693003),
(504, 0, 1, 7, 0, 2, 4, 2, 2, 2, '', 0, 'Cu-Cau', 'Cụ Cầu', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1774692873, 1774692873),
(505, 0, 1, 9, 0, 1, 5, 2, 2, 2, '', 0, 'Cu-Luong', 'Cụ Lượng', '', '', '', '', '', '', '0000-00-00 00:00:00', '3-1-00 0:0:00', 0, '', '', '', 2, 1774692956, 1774692956),
(506, 0, 1, 13, 0, 1, 6, 2, 2, 2, '', 0, 'Pham-Thi-Nhon', 'Phạm Thị Nhớn', '', '', '', '', '', '', '0000-00-00 00:00:00', '7-5-00 0:0:00', 0, '', '', '', 2, 1774693118, 1774693118),
(507, 0, 1, 54, 0, 1, 6, 2, 2, 2, '', 0, 'Pham-Thi-Thuc', 'Phạm Thị Thục', '', '', '', '', '', '', '0000-00-00 00:00:00', '187/ 0:0:00', 0, '', '', '', 2, 1774693731, 1774693731),
(508, 0, 1, 38, 0, 1, 4, 2, 2, 2, '', 0, 'Do-Thi-Sam', 'Đỗ Thị Sâm', '', '', '', '', '', '', '0000-00-00 00:00:00', '1-3-00 0:0:00', 0, '', '', '', 2, 1774693861, 1774695781),
(509, 0, 1, 61, 0, 1, 6, 2, 2, 2, '', 0, 'Pham-Thi-Gai', 'Phạm Thị Gái', '', '', '', '', '', '', '0000-00-00 00:00:00', '1-9-00 0:0:00', 0, '', '', '', 2, 1774694174, 1774694419),
(510, 0, 1, 180, 0, 1, 7, 2, 2, 2, '', 0, 'Le-Thi-Ly', 'Lê Thị Lý', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1774694312, 1774694312),
(511, 0, 1, 64, 0, 1, 6, 2, 2, 2, '', 0, 'Pham-Thi-Xua', 'Phạm Thị Xưa', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1774694365, 1774694365),
(512, 0, 1, 225, 0, 1, 7, 2, 2, 2, '', 0, 'Le-Thi-Thuan', 'Lê Thị Thuận', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1774694540, 1774694540),
(513, 0, 1, 47, 0, 1, 5, 2, 2, 2, '', 0, 'Nguyen-Thi-Ty', 'Nguyễn Thị Tỵ', '', '', '', '', '', '', '0000-00-00 00:00:00', '4-24-00 0:0:00', 0, '', '', '', 2, 1774695114, 1774695114),
(514, 0, 1, 47, 0, 2, 5, 2, 2, 2, '', 0, 'Nguyen-Thi-Van-514', 'Nguyễn Thị Vân', '', '', '', '', '', '', '0000-00-00 00:00:00', '7-28-00 0:0:00', 0, '', '', '', 2, 1774695135, 1774695135),
(515, 0, 1, 67, 0, 1, 6, 2, 2, 2, '', 0, 'Nguyen-Thi-Day', 'Nguyễn Thị Đấy', '', '', '', '', '', '', '0000-00-00 00:00:00', '11-29-00 0:0:00', 0, '', '', '', 2, 1774695167, 1774695167),
(516, 0, 1, 219, 0, 1, 7, 2, 2, 2, '', 0, 'Phung-Thi-Tuyen', 'Phùng Thị Tuyến', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1774695286, 1774695313),
(517, 0, 1, 218, 0, 1, 7, 2, 2, 2, '', 0, 'Nguyen-Thi-Mai', 'Nguyễn Thị Mai', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 2, 1774695330, 1774695330);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_gia_pha_family`
--

CREATE TABLE `giapha_vi_gia_pha_family` (
  `fid` mediumint(8) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL,
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `keywords` mediumtext NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_gia_pha_family`
--

INSERT INTO `giapha_vi_gia_pha_family` (`fid`, `status`, `title`, `alias`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(210, 1, 'Nguyễn Bá', 'Nguyen-Ba', '', 1, '', 1742893074, 1742893079);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_gia_pha_genealogy`
--

CREATE TABLE `giapha_vi_gia_pha_genealogy` (
  `gid` mediumint(8) UNSIGNED NOT NULL,
  `parentid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL DEFAULT 0,
  `fid` int(11) NOT NULL DEFAULT 0,
  `locationid` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `rule` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `show_wife` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `number` int(11) NOT NULL DEFAULT 0,
  `years` varchar(55) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `full_name` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(55) NOT NULL DEFAULT '',
  `email` varchar(200) NOT NULL DEFAULT '',
  `who_view` tinyint(4) NOT NULL DEFAULT 0,
  `display` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_gia_pha_genealogy`
--

INSERT INTO `giapha_vi_gia_pha_genealogy` (`gid`, `parentid`, `title`, `alias`, `weight`, `add_time`, `edit_time`, `userid`, `fid`, `locationid`, `image`, `description`, `rule`, `content`, `show_wife`, `status`, `number`, `years`, `author`, `full_name`, `telephone`, `email`, `who_view`, `display`) VALUES
(1, 0, 'Nguyễn Bá - Trung Thành, Đại Lai, Gia Bình', 'Nguyen-Ba-Trung-Thanh-Dai-Lai-Gia-Binh', 1, 1742893152, 1750910654, 2, 210, 9, '', '', '', '', 1, 1, 514, '2025', 'Gia Tộc Họ Nguyễn Bá', 'Nguyễn Bá Biền', '0987888411', 'nguyenbabien@gmail.com', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_gia_pha_location`
--

CREATE TABLE `giapha_vi_gia_pha_location` (
  `locationid` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `sort` mediumint(8) NOT NULL DEFAULT 0,
  `lev` smallint(4) NOT NULL DEFAULT 0,
  `numlistcu` int(11) NOT NULL DEFAULT 0,
  `listcu` mediumtext NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `number` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_gia_pha_location`
--

INSERT INTO `giapha_vi_gia_pha_location` (`locationid`, `parentid`, `title`, `alias`, `weight`, `sort`, `lev`, `numlistcu`, `listcu`, `status`, `number`) VALUES
(9, 0, 'Bắc Ninh', 'Bac-Ninh', 1, 1, 0, 0, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_menu`
--

CREATE TABLE `giapha_vi_menu` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_menu`
--

INSERT INTO `giapha_vi_menu` (`id`, `title`) VALUES
(1, 'Top Menu');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_menu_rows`
--

CREATE TABLE `giapha_vi_menu_rows` (
  `id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) UNSIGNED NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `icon` varchar(255) DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `note` varchar(255) DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `lev` int(11) NOT NULL DEFAULT 0,
  `subitem` text DEFAULT NULL,
  `groups_view` varchar(255) DEFAULT '',
  `module_name` varchar(255) DEFAULT '',
  `op` varchar(255) DEFAULT '',
  `target` tinyint(4) DEFAULT 0,
  `css` varchar(255) DEFAULT '',
  `active_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_menu_rows`
--

INSERT INTO `giapha_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `image`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(3, 0, 1, 'Thành viên', '/index.php?language=vi&nv=users', '', '', '', 7, 7, 0, '', '6', 'users', '', 1, '', 0, 1),
(4, 0, 1, 'Thống kê', '/index.php?language=vi&nv=statistics', '', '', '', 8, 8, 0, '', '2', 'statistics', '', 1, '', 0, 1),
(25, 0, 1, 'Phả Đồ', '/gia-pha/Nguyen-Ba/Nguyen-Ba-Trung-Thanh-Dai-Lai-Gia-Binh/pha-do/tree/', '', '', '', 2, 2, 0, '', '6', 'gia-pha', '', 1, '', 0, 1),
(26, 0, 1, 'Tộc Ước', '/gia-pha/Nguyen-Ba/Nguyen-Ba-Trung-Thanh-Dai-Lai-Gia-Binh/toc-uoc/', '', '', '', 4, 4, 0, '', '6', 'gia-pha', '', 1, '', 0, 1),
(27, 0, 1, 'Hương Hoả', '/gia-pha/Nguyen-Ba/Nguyen-Ba-Trung-Thanh-Dai-Lai-Gia-Binh/huong-hoa/', '', '', '', 5, 5, 0, '', '6', 'gia-pha', '', 1, '', 0, 1),
(28, 0, 1, 'Ngày Giỗ', '/gia-pha/Nguyen-Ba/Nguyen-Ba-Trung-Thanh-Dai-Lai-Gia-Binh/ngay-gio/', '', '', '', 6, 6, 0, '', '6', 'gia-pha', '', 1, '', 0, 1),
(24, 0, 1, 'Phả Ký', '/gia-pha/Nguyen-Ba/Nguyen-Ba-Trung-Thanh-Dai-Lai-Gia-Binh/pha-ky/', '', '', '', 3, 3, 0, '', '6', 'gia-pha', '', 1, '', 0, 1),
(23, 0, 1, 'Gia Phả', '/gia-pha/Nguyen-Ba/Nguyen-Ba-Trung-Thanh-Dai-Lai-Gia-Binh/', '', '', '', 1, 1, 0, '', '6', 'gia-pha', '', 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_modfuncs`
--

CREATE TABLE `giapha_vi_modfuncs` (
  `func_id` mediumint(8) UNSIGNED NOT NULL,
  `func_name` varchar(55) NOT NULL,
  `alias` varchar(55) NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) NOT NULL,
  `func_site_title` varchar(255) NOT NULL DEFAULT '',
  `in_module` varchar(50) NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT 0,
  `in_submenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `subweight` smallint(2) UNSIGNED NOT NULL DEFAULT 1,
  `setting` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_modfuncs`
--

INSERT INTO `giapha_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `func_site_title`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(1, 'main', 'main', 'Main', '', 'about', 1, 0, 1, ''),
(2, 'sitemap', 'sitemap', 'Sitemap', '', 'about', 0, 0, 0, ''),
(3, 'rss', 'rss', 'Rss', '', 'about', 0, 0, 0, ''),
(4, 'main', 'main', 'Main', '', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', '', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', '', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', '', 'news', 1, 1, 4, ''),
(8, 'detail', 'detail', 'Detail', '', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', '', 'news', 1, 0, 6, ''),
(10, 'rss', 'rss', 'Rss', '', 'news', 1, 1, 7, ''),
(11, 'search', 'search', 'Search', '', 'news', 1, 1, 8, ''),
(12, 'groups', 'groups', 'Groups', '', 'news', 1, 0, 9, ''),
(13, 'author', 'author', 'Author', '', 'news', 1, 0, 10, ''),
(14, 'sitemap', 'sitemap', 'Sitemap', '', 'news', 0, 0, 0, ''),
(15, 'print', 'print', 'Print', '', 'news', 0, 0, 0, ''),
(16, 'rating', 'rating', 'Rating', '', 'news', 0, 0, 0, ''),
(17, 'savefile', 'savefile', 'Savefile', '', 'news', 0, 0, 0, ''),
(18, 'sendmail', 'sendmail', 'Sendmail', '', 'news', 0, 0, 0, ''),
(19, 'instant-rss', 'instant-rss', 'Instant Articles RSS', '', 'news', 0, 0, 0, ''),
(20, 'main', 'main', 'Main', '', 'users', 1, 0, 1, ''),
(21, 'login', 'login', 'Đăng nhập', '', 'users', 1, 1, 2, ''),
(22, 'register', 'register', 'Đăng ký', '', 'users', 1, 1, 3, ''),
(23, 'lostpass', 'lostpass', 'Khôi phục mật khẩu', '', 'users', 1, 1, 4, ''),
(24, 'active', 'active', 'Kích hoạt tài khoản', '', 'users', 1, 0, 5, ''),
(25, 'lostactivelink', 'lostactivelink', 'Lostactivelink', '', 'users', 1, 0, 6, ''),
(26, 'editinfo', 'editinfo', 'Thiết lập tài khoản', '', 'users', 1, 1, 7, ''),
(27, 'memberlist', 'memberlist', 'Danh sách thành viên', '', 'users', 1, 1, 8, ''),
(28, 'groups', 'groups', 'Quản lý nhóm', '', 'users', 1, 1, 9, ''),
(29, 'avatar', 'avatar', 'Avatar', '', 'users', 1, 0, 10, ''),
(30, 'logout', 'logout', 'Thoát', '', 'users', 1, 1, 11, ''),
(31, 'oauth', 'oauth', 'Oauth', '', 'users', 0, 0, 0, ''),
(32, 'main', 'main', 'Main', '', 'contact', 1, 0, 1, ''),
(33, 'main', 'main', 'Main', '', 'statistics', 1, 0, 1, ''),
(34, 'allreferers', 'allreferers', 'Theo đường dẫn đến site', '', 'statistics', 1, 1, 2, ''),
(35, 'allcountries', 'allcountries', 'Theo quốc gia', '', 'statistics', 1, 1, 3, ''),
(36, 'allbrowsers', 'allbrowsers', 'Theo trình duyệt', '', 'statistics', 1, 1, 4, ''),
(37, 'allos', 'allos', 'Theo hệ điều hành', '', 'statistics', 1, 1, 5, ''),
(38, 'allbots', 'allbots', 'Theo máy chủ tìm kiếm', '', 'statistics', 1, 1, 6, ''),
(39, 'referer', 'referer', 'Đường dẫn đến site theo tháng', '', 'statistics', 1, 0, 7, ''),
(40, 'main', 'main', 'Main', '', 'voting', 1, 0, 1, ''),
(41, 'main', 'main', 'Main', '', 'banners', 1, 0, 1, ''),
(42, 'addads', 'addads', 'Addads', '', 'banners', 1, 0, 2, ''),
(43, 'clientinfo', 'clientinfo', 'Clientinfo', '', 'banners', 1, 0, 3, ''),
(44, 'stats', 'stats', 'Stats', '', 'banners', 1, 0, 4, ''),
(45, 'cledit', 'cledit', 'Cledit', '', 'banners', 0, 0, 0, ''),
(46, 'click', 'click', 'Click', '', 'banners', 0, 0, 0, ''),
(47, 'clinfo', 'clinfo', 'Clinfo', '', 'banners', 0, 0, 0, ''),
(48, 'logininfo', 'logininfo', 'Logininfo', '', 'banners', 0, 0, 0, ''),
(49, 'viewmap', 'viewmap', 'Viewmap', '', 'banners', 0, 0, 0, ''),
(50, 'main', 'main', 'Main', '', 'seek', 1, 0, 1, ''),
(51, 'main', 'main', 'Main', '', 'feeds', 1, 0, 1, ''),
(52, 'main', 'main', 'Main', '', 'page', 1, 0, 1, ''),
(53, 'sitemap', 'sitemap', 'Sitemap', '', 'page', 0, 0, 0, ''),
(54, 'rss', 'rss', 'Rss', '', 'page', 0, 0, 0, ''),
(55, 'main', 'main', 'Main', '', 'comment', 1, 0, 1, ''),
(56, 'post', 'post', 'Post', '', 'comment', 1, 0, 2, ''),
(57, 'like', 'like', 'Like', '', 'comment', 1, 0, 3, ''),
(58, 'delete', 'delete', 'Delete', '', 'comment', 1, 0, 4, ''),
(59, 'down', 'down', 'Down', '', 'comment', 1, 0, 5, ''),
(60, 'main', 'main', 'Main', '', 'siteterms', 1, 0, 1, ''),
(61, 'rss', 'rss', 'Rss', '', 'siteterms', 1, 0, 2, ''),
(62, 'sitemap', 'sitemap', 'Sitemap', '', 'siteterms', 0, 0, 0, ''),
(63, 'main', 'main', 'Main', '', 'two-step-verification', 1, 0, 1, ''),
(64, 'confirm', 'confirm', 'Confirm', '', 'two-step-verification', 1, 0, 2, ''),
(65, 'setup', 'setup', 'Setup', '', 'two-step-verification', 1, 0, 3, ''),
(66, 'anniversary', 'anniversary', 'Anniversary', '', 'gia-pha', 1, 0, 3, ''),
(67, 'exportpdf', 'exportpdf', 'Exportpdf', '', 'gia-pha', 1, 0, 8, ''),
(68, 'genealogy', 'genealogy', 'Genealogy', '', 'gia-pha', 1, 1, 4, ''),
(69, 'location', 'location', 'Location', '', 'gia-pha', 1, 0, 2, ''),
(70, 'main', 'main', 'Main', '', 'gia-pha', 1, 1, 1, ''),
(71, 'manager', 'manager', 'Manager', '', 'gia-pha', 1, 1, 5, ''),
(72, 'search', 'search', 'Search', '', 'gia-pha', 1, 0, 7, ''),
(73, 'shows', 'shows', 'Shows', '', 'gia-pha', 1, 0, 6, ''),
(74, 'sitemap', 'sitemap', 'Sitemap', '', 'gia-pha', 0, 0, 0, ''),
(75, 'users', 'users', 'Users', '', 'gia-pha', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_modthemes`
--

CREATE TABLE `giapha_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) DEFAULT NULL,
  `theme` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_modthemes`
--

INSERT INTO `giapha_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'left-main-right', 'default'),
(0, 'main', 'mobile_default'),
(1, 'main', 'default'),
(1, 'main', 'mobile_default'),
(4, 'main', 'default'),
(4, 'main', 'mobile_default'),
(5, 'main', 'default'),
(5, 'main', 'mobile_default'),
(6, 'main', 'default'),
(6, 'main', 'mobile_default'),
(7, 'main', 'default'),
(7, 'main', 'mobile_default'),
(8, 'main', 'default'),
(8, 'main', 'mobile_default'),
(9, 'main', 'default'),
(9, 'main', 'mobile_default'),
(10, 'main', 'default'),
(11, 'main', 'default'),
(11, 'main', 'mobile_default'),
(12, 'main', 'default'),
(12, 'main', 'mobile_default'),
(13, 'main', 'default'),
(13, 'main', 'mobile_default'),
(20, 'main', 'default'),
(20, 'main', 'mobile_default'),
(21, 'main', 'default'),
(21, 'main', 'mobile_default'),
(22, 'main', 'default'),
(22, 'main', 'mobile_default'),
(23, 'main', 'default'),
(23, 'main', 'mobile_default'),
(24, 'main', 'default'),
(24, 'main', 'mobile_default'),
(25, 'main', 'default'),
(25, 'main', 'mobile_default'),
(26, 'main', 'default'),
(26, 'main', 'mobile_default'),
(27, 'main', 'default'),
(27, 'main', 'mobile_default'),
(28, 'main', 'default'),
(28, 'main', 'mobile_default'),
(29, 'main', 'default'),
(30, 'main', 'default'),
(30, 'main', 'mobile_default'),
(32, 'main', 'default'),
(32, 'main', 'mobile_default'),
(33, 'main', 'default'),
(33, 'main', 'mobile_default'),
(34, 'main', 'default'),
(34, 'main', 'mobile_default'),
(35, 'main', 'default'),
(35, 'main', 'mobile_default'),
(36, 'main', 'default'),
(36, 'main', 'mobile_default'),
(37, 'main', 'default'),
(37, 'main', 'mobile_default'),
(38, 'main', 'default'),
(38, 'main', 'mobile_default'),
(39, 'main', 'default'),
(39, 'main', 'mobile_default'),
(40, 'main', 'default'),
(40, 'main', 'mobile_default'),
(41, 'main', 'default'),
(41, 'main', 'mobile_default'),
(42, 'main', 'default'),
(42, 'main', 'mobile_default'),
(43, 'main', 'default'),
(43, 'main', 'mobile_default'),
(44, 'main', 'default'),
(44, 'main', 'mobile_default'),
(50, 'main', 'default'),
(50, 'main', 'mobile_default'),
(51, 'main', 'default'),
(51, 'main', 'mobile_default'),
(52, 'main', 'default'),
(52, 'main', 'mobile_default'),
(55, 'main', 'default'),
(55, 'main', 'mobile_default'),
(56, 'main', 'default'),
(56, 'main', 'mobile_default'),
(57, 'main', 'default'),
(57, 'main', 'mobile_default'),
(58, 'main', 'default'),
(58, 'main', 'mobile_default'),
(59, 'main', 'default'),
(60, 'main', 'default'),
(60, 'main', 'mobile_default'),
(61, 'main', 'default'),
(61, 'main', 'mobile_default'),
(63, 'main', 'default'),
(63, 'main', 'mobile_default'),
(64, 'main', 'default'),
(64, 'main', 'mobile_default'),
(65, 'main', 'default'),
(65, 'main', 'mobile_default'),
(66, 'main', 'default'),
(66, 'main', 'mobile_default'),
(67, 'main', 'default'),
(67, 'main', 'mobile_default'),
(68, 'main', 'default'),
(68, 'main', 'mobile_default'),
(69, 'main', 'default'),
(69, 'main', 'mobile_default'),
(70, 'main', 'default'),
(70, 'main', 'mobile_default'),
(71, 'main', 'default'),
(71, 'main', 'mobile_default'),
(72, 'main', 'default'),
(72, 'main', 'mobile_default'),
(73, 'main', 'default'),
(73, 'main', 'mobile_default'),
(74, 'left-main-right', 'default'),
(75, 'left-main-right', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_modules`
--

CREATE TABLE `giapha_vi_modules` (
  `title` varchar(50) NOT NULL,
  `module_file` varchar(50) NOT NULL DEFAULT '',
  `module_data` varchar(50) NOT NULL DEFAULT '',
  `module_upload` varchar(50) NOT NULL DEFAULT '',
  `module_theme` varchar(50) NOT NULL DEFAULT '',
  `custom_title` varchar(255) NOT NULL,
  `site_title` varchar(255) NOT NULL DEFAULT '',
  `admin_title` varchar(255) NOT NULL DEFAULT '',
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `main_file` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admin_file` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `theme` varchar(100) DEFAULT '',
  `mobile` varchar(100) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `keywords` text DEFAULT NULL,
  `groups_view` varchar(255) NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admins` varchar(4000) DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT 1,
  `sitemap` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_modules`
--

INSERT INTO `giapha_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `module_theme`, `custom_title`, `site_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `sitemap`) VALUES
('about', 'page', 'about', 'about', 'page', 'Giới thiệu', '', '', 1742892758, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 1),
('news', 'news', 'news', 'news', 'news', 'Tin Tức', '', '', 1742892758, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 1),
('users', 'users', 'users', 'users', 'users', 'Thành viên', '', 'Tài khoản', 1742892758, 1, 1, '', '', '', '', '6', 3, 1, '', 0, 1),
('contact', 'contact', 'contact', 'contact', 'contact', 'Liên hệ', '', '', 1742892758, 1, 1, '', '', '', '', '6', 4, 1, '', 0, 1),
('statistics', 'statistics', 'statistics', 'statistics', 'statistics', 'Thống kê', '', '', 1742892758, 1, 1, '', '', '', 'online, statistics', '6', 5, 1, '', 0, 1),
('voting', 'voting', 'voting', 'voting', 'voting', 'Thăm dò ý kiến', '', '', 1742892758, 1, 1, '', '', '', '', '6', 6, 1, '', 1, 1),
('banners', 'banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', '', 1742892758, 1, 1, '', '', '', '', '6', 7, 1, '', 0, 1),
('seek', 'seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', '', 1742892758, 1, 0, '', '', '', '', '6', 8, 1, '', 0, 1),
('menu', 'menu', 'menu', 'menu', 'menu', 'Menu Site', '', '', 1742892758, 0, 1, '', '', '', '', '6', 9, 1, '', 0, 1),
('feeds', 'feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', '', '', 1742892758, 1, 1, '', '', '', '', '6', 10, 1, '', 0, 1),
('page', 'page', 'page', 'page', 'page', 'Page', '', '', 1742892758, 1, 1, '', '', '', '', '6', 11, 1, '', 1, 0),
('comment', 'comment', 'comment', 'comment', 'comment', 'Bình luận', '', 'Quản lý bình luận', 1742892758, 0, 1, '', '', '', '', '6', 12, 1, '', 0, 1),
('siteterms', 'page', 'siteterms', 'siteterms', 'page', 'Điều khoản sử dụng', '', '', 1742892758, 1, 1, '', '', '', '', '6', 13, 1, '', 1, 1),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'freecontent', 'Giới thiệu sản phẩm', '', '', 1742892758, 0, 1, '', '', '', '', '6', 14, 1, '', 0, 1),
('two-step-verification', 'two-step-verification', 'two_step_verification', 'two_step_verification', 'two-step-verification', 'Xác thực hai bước', '', '', 1742892758, 1, 0, '', '', '', '', '6', 15, 1, '', 0, 1),
('gia-pha', 'gia-pha', 'gia_pha', 'gia-pha', 'gia-pha', 'Gia Phả Họ Nguyễn Bá', 'Gia Phả', 'Gia Phả', 1742892973, 1, 1, '', '', '', '', '6', 16, 1, '2', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_1`
--

CREATE TABLE `giapha_vi_news_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_2`
--

CREATE TABLE `giapha_vi_news_2` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_3`
--

CREATE TABLE `giapha_vi_news_3` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_4`
--

CREATE TABLE `giapha_vi_news_4` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_5`
--

CREATE TABLE `giapha_vi_news_5` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_6`
--

CREATE TABLE `giapha_vi_news_6` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_7`
--

CREATE TABLE `giapha_vi_news_7` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_admins`
--

CREATE TABLE `giapha_vi_news_admins` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `catid` smallint(5) NOT NULL DEFAULT 0,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `add_content` tinyint(4) NOT NULL DEFAULT 0,
  `pub_content` tinyint(4) NOT NULL DEFAULT 0,
  `edit_content` tinyint(4) NOT NULL DEFAULT 0,
  `del_content` tinyint(4) NOT NULL DEFAULT 0,
  `app_content` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_author`
--

CREATE TABLE `giapha_vi_news_author` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `uid` int(11) UNSIGNED NOT NULL,
  `alias` varchar(100) NOT NULL DEFAULT '',
  `pseudonym` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` text DEFAULT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `numnews` mediumint(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_news_author`
--

INSERT INTO `giapha_vi_news_author` (`id`, `uid`, `alias`, `pseudonym`, `image`, `description`, `add_time`, `edit_time`, `active`, `numnews`) VALUES
(1, 1, 'biennb', 'biennb', '', '', 1742894588, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_authorlist`
--

CREATE TABLE `giapha_vi_news_authorlist` (
  `id` int(11) NOT NULL,
  `aid` mediumint(8) NOT NULL,
  `alias` varchar(100) NOT NULL DEFAULT '',
  `pseudonym` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_block`
--

CREATE TABLE `giapha_vi_news_block` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_block_cat`
--

CREATE TABLE `giapha_vi_news_block_cat` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT 0,
  `numbers` smallint(5) NOT NULL DEFAULT 10,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_news_block_cat`
--

INSERT INTO `giapha_vi_news_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', 'Tin mới nhất', 2, '', 1279945725, 1279956445);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_cat`
--

CREATE TABLE `giapha_vi_news_cat` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL,
  `titlesite` varchar(250) DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `descriptionhtml` text DEFAULT NULL,
  `image` varchar(255) DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT 0,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sort` smallint(5) NOT NULL DEFAULT 0,
  `lev` smallint(5) NOT NULL DEFAULT 0,
  `viewcat` varchar(50) NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT 0,
  `subcatid` varchar(255) DEFAULT '',
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT 3,
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT 2,
  `featured` int(11) NOT NULL DEFAULT 0,
  `ad_block_cat` varchar(255) NOT NULL DEFAULT '',
  `layout_func` varchar(100) NOT NULL DEFAULT '' COMMENT 'Layout khi xem chuyên mục',
  `keywords` text DEFAULT NULL,
  `admins` text DEFAULT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `groups_view` varchar(255) DEFAULT '',
  `status` smallint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_news_cat`
--

INSERT INTO `giapha_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `layout_func`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`, `status`) VALUES
(1, 0, 'Tin tức', '', 'Tin-tuc', '', '', '', 0, 1, 1, 0, 'viewcat_main_right', 3, '5,6,7', 4, 2, 0, '', '', '', '', 1274986690, 1274986690, '6', 1),
(2, 0, 'Sản phẩm', '', 'San-pham', '', '', '', 0, 2, 5, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', '', 1274986705, 1274986705, '6', 1),
(3, 0, 'Đối tác', '', 'Doi-tac', '', '', '', 0, 3, 9, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', '', 1274987460, 1274987460, '6', 1),
(4, 0, 'Tuyển dụng', '', 'Tuyen-dung', '', '', '', 0, 4, 12, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', '', 1274987538, 1274987538, '6', 1),
(5, 1, 'Thông cáo báo chí', '', 'thong-cao-bao-chi', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', '', 1274987105, 1274987244, '6', 1),
(6, 1, 'Tin công nghệ', '', 'Tin-cong-nghe', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', '', 1274987212, 1274987212, '6', 1),
(7, 1, 'Bản tin nội bộ', '', 'Ban-tin-noi-bo', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', '', 1274987902, 1274987902, '6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_config_post`
--

CREATE TABLE `giapha_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_news_config_post`
--

INSERT INTO `giapha_vi_news_config_post` (`group_id`, `addcontent`, `postcontent`, `editcontent`, `delcontent`) VALUES
(4, 0, 0, 0, 0),
(7, 0, 0, 0, 0),
(5, 0, 0, 0, 0),
(10, 0, 0, 0, 0),
(11, 0, 0, 0, 0),
(12, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_detail`
--

CREATE TABLE `giapha_vi_news_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `titlesite` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `bodyhtml` longtext NOT NULL,
  `voicedata` text DEFAULT NULL COMMENT 'Data giọng đọc json',
  `keywords` varchar(255) DEFAULT '',
  `sourcetext` varchar(255) DEFAULT '',
  `files` text DEFAULT NULL,
  `imgposition` tinyint(1) NOT NULL DEFAULT 1,
  `layout_func` varchar(100) DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_send` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_print` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_save` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_logs`
--

CREATE TABLE `giapha_vi_news_logs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `log_key` varchar(60) NOT NULL DEFAULT '' COMMENT 'Khóa loại log, tùy vào lập trình',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `note` varchar(255) NOT NULL DEFAULT '',
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_rows`
--

CREATE TABLE `giapha_vi_news_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_row_histories`
--

CREATE TABLE `giapha_vi_news_row_histories` (
  `id` int(11) UNSIGNED NOT NULL,
  `new_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `historytime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'ID người đăng',
  `author` varchar(250) NOT NULL DEFAULT '',
  `sourceid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0,
  `titlesite` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `bodyhtml` longtext NOT NULL,
  `voicedata` text DEFAULT NULL COMMENT 'Data giọng đọc json',
  `keywords` varchar(255) DEFAULT '',
  `sourcetext` varchar(255) DEFAULT '',
  `files` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `internal_authors` varchar(255) NOT NULL DEFAULT '',
  `imgposition` tinyint(1) NOT NULL DEFAULT 1,
  `layout_func` varchar(100) DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_send` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_print` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_save` tinyint(1) NOT NULL DEFAULT 0,
  `changed_fields` text NOT NULL COMMENT 'Các field thay đổi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Lịch sử bài viết';

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_sources`
--

CREATE TABLE `giapha_vi_news_sources` (
  `sourceid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_news_sources`
--

INSERT INTO `giapha_vi_news_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787),
(3, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 3, 1322685396, 1322685396),
(4, 'Bộ Thông tin và Truyền thông', 'http://http://mic.gov.vn', '', 4, 1445309676, 1445309676);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_tags`
--

CREATE TABLE `giapha_vi_news_tags` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` text DEFAULT NULL,
  `keywords` varchar(255) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_news_tags`
--

INSERT INTO `giapha_vi_news_tags` (`tid`, `numnews`, `title`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 0, '', 'nguồn-mở', '', '', 'nguồn mở'),
(2, 0, '', 'quen-thuộc', '', '', 'quen thuộc'),
(3, 0, '', 'cộng-đồng', '', '', 'cộng đồng'),
(4, 0, '', 'việt-nam', '', '', 'việt nam'),
(5, 0, '', 'hoạt-động', '', '', 'hoạt động'),
(6, 0, '', 'tin-tức', '', '', 'tin tức'),
(7, 0, '', 'thương-mại-điện', '', '', 'thương mại điện'),
(8, 0, '', 'điện-tử', '', '', 'điện tử'),
(9, 1, '', 'nukeviet', '', '', 'nukeviet'),
(10, 1, '', 'vinades', '', '', 'vinades'),
(11, 0, '', 'lập-trình-viên', '', '', 'lập trình viên'),
(12, 0, '', 'chuyên-viên-đồ-họa', '', '', 'chuyên viên đồ họa'),
(13, 0, '', 'php', '', '', 'php'),
(14, 0, '', 'mysql', '', '', 'mysql'),
(15, 0, '', 'nhân-tài-đất-việt-2011', '', '', 'nhân tài đất việt 2011'),
(16, 0, '', 'mã-nguồn-mở', '', '', 'mã nguồn mở'),
(17, 0, '', 'nukeviet4', '', '', 'nukeviet4'),
(18, 0, '', 'mail', '', '', 'mail'),
(19, 0, '', 'fpt', '', '', 'fpt'),
(20, 0, '', 'smtp', '', '', 'smtp'),
(21, 0, '', 'bootstrap', '', '', 'bootstrap'),
(22, 0, '', 'block', '', '', 'block'),
(23, 0, '', 'modules', '', '', 'modules'),
(24, 0, '', 'banner', '', '', 'banner'),
(25, 0, '', 'liên-kết', '', '', 'liên kết'),
(26, 1, '', 'hosting', '', '', 'hosting'),
(27, 0, '', 'hỗ-trợ', '', '', 'hỗ trợ'),
(28, 0, '', 'hợp-tác', '', '', 'hợp tác'),
(29, 1, '', 'tốc-độ', '', '', 'tốc độ'),
(30, 1, '', 'website', '', '', 'website'),
(31, 1, '', 'bảo-mật', '', '', 'bảo mật'),
(32, 0, '', 'giáo-dục', '', '', 'giáo dục'),
(33, 0, '', 'edu-gate', '', '', 'edu gate'),
(34, 0, '', 'lập-trình', '', '', 'lập trình'),
(35, 0, '', 'logo', '', '', 'logo'),
(36, 0, '', 'code', '', '', 'code'),
(37, 0, '', 'thực-tập', '', '', 'thực tập'),
(38, 0, '', 'kinh-doanh', '', '', 'kinh doanh'),
(39, 0, '', 'nhân-viên', '', '', 'nhân viên'),
(40, 0, '', 'bộ-gd&đt', '', '', 'Bộ GD&ĐT'),
(41, 0, '', 'module', '', '', 'module'),
(42, 0, '', 'php-nuke', '', '', 'php-nuke');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_tags_id`
--

CREATE TABLE `giapha_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_tmp`
--

CREATE TABLE `giapha_vi_news_tmp` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `time_edit` int(11) NOT NULL,
  `time_late` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_topics`
--

CREATE TABLE `giapha_vi_news_topics` (
  `topicid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_news_topics`
--

INSERT INTO `giapha_vi_news_topics` (`topicid`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 'NukeViet 4', 'NukeViet-4', '', 'NukeViet 4', 1, 'NukeViet 4', 1445396011, 1445396011);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_news_voices`
--

CREATE TABLE `giapha_vi_news_voices` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `voice_key` varchar(50) NOT NULL DEFAULT '' COMMENT 'Khóa dùng trong Api sau này',
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0: Dừng, 1: Hoạt động'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_page`
--

CREATE TABLE `giapha_vi_page` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `alias` varchar(250) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `imagealt` varchar(255) DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `bodytext` mediumtext NOT NULL,
  `keywords` text DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) DEFAULT '',
  `layout_func` varchar(100) DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_page_config`
--

CREATE TABLE `giapha_vi_page_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_page_config`
--

INSERT INTO `giapha_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1'),
('socialbutton', 'facebook,twitter');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_referer_stats`
--

CREATE TABLE `giapha_vi_referer_stats` (
  `host` varchar(250) NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `month01` int(11) NOT NULL DEFAULT 0,
  `month02` int(11) NOT NULL DEFAULT 0,
  `month03` int(11) NOT NULL DEFAULT 0,
  `month04` int(11) NOT NULL DEFAULT 0,
  `month05` int(11) NOT NULL DEFAULT 0,
  `month06` int(11) NOT NULL DEFAULT 0,
  `month07` int(11) NOT NULL DEFAULT 0,
  `month08` int(11) NOT NULL DEFAULT 0,
  `month09` int(11) NOT NULL DEFAULT 0,
  `month10` int(11) NOT NULL DEFAULT 0,
  `month11` int(11) NOT NULL DEFAULT 0,
  `month12` int(11) NOT NULL DEFAULT 0,
  `last_update` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_referer_stats`
--

INSERT INTO `giapha_vi_referer_stats` (`host`, `total`, `month01`, `month02`, `month03`, `month04`, `month05`, `month06`, `month07`, `month08`, `month09`, `month10`, `month11`, `month12`, `last_update`) VALUES
('id.zalo.me', 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1742905440),
('youtube.com', 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1768648748),
('bing.com', 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1768484397),
('t.co', 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1767665600),
('duckduckgo.com', 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1767970970),
('google.com', 13, 2, 0, 4, 0, 2, 1, 4, 0, 0, 0, 0, 0, 1784139346),
('giapha.bytech.vn', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1769700770),
('nguyenba.id.vn.bytech.vn', 136, 0, 0, 21, 14, 22, 31, 37, 11, 0, 0, 0, 0, 1786910494),
('mail.nguyenba.id.vn', 77, 0, 0, 5, 9, 17, 19, 24, 3, 0, 0, 0, 0, 1786928654),
('nguyenba.id.vn', 73, 0, 0, 4, 10, 15, 24, 17, 3, 0, 0, 0, 0, 1786899827),
('jp.zaloapp.com', 34, 0, 0, 1, 25, 0, 8, 0, 0, 0, 0, 0, 0, 1780997626),
('vn.all-url.info', 2, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1785891613);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_searchkeys`
--

CREATE TABLE `giapha_vi_searchkeys` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `skey` varchar(250) NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `search_engine` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_siteterms`
--

CREATE TABLE `giapha_vi_siteterms` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `alias` varchar(250) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `imagealt` varchar(255) DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `bodytext` mediumtext NOT NULL,
  `keywords` text DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) DEFAULT '',
  `layout_func` varchar(100) DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_siteterms`
--

INSERT INTO `giapha_vi_siteterms` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Chính sách bảo mật (Quyền riêng tư)', 'privacy', '', '', 0, 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn', '<strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Thu thập thông tin</a><br /> <a href=\"#2\">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href=\"#3\">Điều 3: Sử dụng thông tin </a><br /> <a href=\"#4\">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href=\"#5\">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href=\"#6\">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2><a id=\"1\" name=\"1\"></a>Điều 1: Thu thập thông tin</h2>  <h3>1.1. Thu thập tự động:</h3>  <div>Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3>1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div>Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3>1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p>Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p>Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3>1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p>Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"2\" name=\"2\"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div>Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử lý thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href=\"/users/lostpass/\">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>  <h2><a id=\"3\" name=\"3\"></a>Điều 3: Sử dụng thông tin</h2>  <p>Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div>- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div>- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div>- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div>- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div>- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div>- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div>- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"4\" name=\"4\"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div>Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"5\" name=\"5\"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p>Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"6\" name=\"6\"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p>Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <p style=\"text-align: right;\">Chính sách bảo mật mặc định này được xây dựng cho <a href=\"http://nukeviet.vn\" target=\"_blank\">NukeViet CMS</a>, được tham khảo từ website <a href=\"http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/\">webnhanh.vn</a></p>', '', 0, '4', '', 1, 1, 1742892758, 1742892758, 1, 0, 0),
(2, 'Điều khoản và điều kiện sử dụng', 'terms-and-conditions', '', '', 0, 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.', '<div>Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href=\"/contact/\">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href=\"/siteterms/terms-and-conditions.html\">Điều khoản và điều kiện</a> sử dụng cũng như <a href=\"/siteterms/privacy.html\">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href=\"#2\">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href=\"#3\">Điều 3: Sử dụng thương hiệu</a><br /> <a href=\"#4\">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href=\"#5\">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href=\"#6\">Điều 6: Từ chối bảo đảm</a><br /> <a href=\"#7\">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href=\"#8\">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2><a id=\"1\" name=\"1\"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p>- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\" target=\"_blank\">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href=\"http://www.nukeviet.vn\" target=\"_blank\">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href=\"http://nukeviet.vn\" target=\"_blank\">http://nukeviet.vn</a>.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"2\" name=\"2\"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p>- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"3\" name=\"3\"></a>Sử dụng thương hiệu</h2>  <p>- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"4\" name=\"4\"></a>Các hành vi bị nghiêm cấm</h2>  <p>Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"5\" name=\"5\"></a>Các đường liên kết đến các website khác</h2>  <p>- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"6\" name=\"6\"></a>Từ chối bảo đảm</h2>  <p>NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"7\" name=\"7\"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p>- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"8\" name=\"8\"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div>Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>', '', 0, '4', '', 2, 1, 1742892758, 1742892758, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_siteterms_config`
--

CREATE TABLE `giapha_vi_siteterms_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_siteterms_config`
--

INSERT INTO `giapha_vi_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1'),
('socialbutton', 'facebook,twitter');

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_voting`
--

CREATE TABLE `giapha_vi_voting` (
  `vid` smallint(5) UNSIGNED NOT NULL,
  `question` varchar(250) NOT NULL,
  `link` varchar(255) DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT 1,
  `active_captcha` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `groups_view` varchar(255) DEFAULT '',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vote_one` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0 cho phép vote nhiều lần 1 cho phép vote 1 lần'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_voting`
--

INSERT INTO `giapha_vi_voting` (`vid`, `question`, `link`, `acceptcm`, `active_captcha`, `admin_id`, `groups_view`, `publ_time`, `exp_time`, `act`, `vote_one`) VALUES
(2, 'Bạn biết gì về NukeViet 4?', '', 1, 0, 1, '6', 1742892758, 0, 1, 0),
(3, 'Lợi ích của phần mềm nguồn mở là gì?', '', 1, 0, 1, '6', 1742892758, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_voting_rows`
--

CREATE TABLE `giapha_vi_voting_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `vid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(245) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `hitstotal` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giapha_vi_voting_rows`
--

INSERT INTO `giapha_vi_voting_rows` (`id`, `vid`, `title`, `url`, `hitstotal`) VALUES
(5, 2, 'Một bộ sourcecode cho web hoàn toàn mới.', '', 0),
(6, 2, 'Mã nguồn mở, sử dụng miễn phí.', '', 0),
(7, 2, 'Sử dụng HTML5, CSS3 và hỗ trợ Ajax', '', 0),
(8, 2, 'Tất cả các ý kiến trên', '', 0),
(9, 3, 'Liên tục được cải tiến, sửa đổi bởi cả thế giới.', '', 0),
(10, 3, 'Được sử dụng miễn phí không mất tiền.', '', 0),
(11, 3, 'Được tự do khám phá, sửa đổi theo ý thích.', '', 0),
(12, 3, 'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.', '', 0),
(13, 3, 'Tất cả các ý kiến trên', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `giapha_vi_voting_voted`
--

CREATE TABLE `giapha_vi_voting_voted` (
  `vid` smallint(5) UNSIGNED NOT NULL,
  `voted` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `order` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `slug`, `order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Tiếng việt', 'vi', 1, 1, '2022-06-21 06:42:35', '2022-06-21 06:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `subject`, `reason`, `content`, `note`, `created_at`, `updated_at`) VALUES
(33, '', 'test@gmail.com', '', 'test@gmail.com đăng ký nhận thông tin mới', 'Đăng ký nhận thông tin', '', '', '2023-08-05 03:01:13', '2023-08-05 03:01:13'),
(34, 'TEST - Tuấn Nguyễn', 'vtuan1989@gmail.com', '0976852147', 'test', 'Báo giá sản phẩm', 'test', NULL, '2023-08-07 03:53:51', '2023-08-07 03:53:51'),
(32, '', 'rubytech.net@gmail.com', '', 'rubytech.net@gmail.com đăng ký nhận thông tin mới', 'Đăng ký nhận thông tin', '', '', '2023-08-02 21:00:44', '2023-08-02 21:00:44'),
(35, '', 'biennb@bytech.vn', '', 'biennb@bytech.vn đăng ký nhận thông tin mới', 'Đăng ký nhận thông tin', '', '', '2023-12-31 19:36:38', '2023-12-31 19:36:38'),
(36, 'chung', 'tin@gmail.com', '091234567', '123', 'Báo giá sản phẩm', '123', NULL, '2024-02-29 03:08:30', '2024-02-29 03:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `link` varchar(191) NOT NULL,
  `order` int(11) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `parent_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `link`, `order`, `position`, `active`, `type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '/', 1, 'top-bar', 1, NULL, '0', '2022-08-14 03:36:24', '2023-08-05 17:58:30'),
(2, 'Liên hệ', 'lien-he', 2, 'top-bar', 1, NULL, '0', '2022-08-14 03:36:52', '2023-08-05 18:11:35'),
(13, 'Tuyển dụng', 'tuyen-dung', 3, 'top-bar', 1, NULL, '0', '2023-02-10 18:51:04', '2023-08-05 18:11:46'),
(3, 'Sản phẩm', '/shop', 1, 'main-menu', 1, 2, '0', '2022-08-14 03:37:03', '2023-08-07 03:56:07'),
(4, 'Giải pháp', '/giai-phap', 2, 'main-menu', 1, 1, '0', '2022-08-14 03:37:18', '2023-08-07 04:02:34'),
(5, 'Dịch vụ', '/dich-vu', 3, 'main-menu', 1, 1, '0', '2022-08-14 03:37:29', '2023-08-07 04:26:36'),
(14, 'Tin tức', '/tin-tuc-noi-bo', 4, 'main-menu', 1, 1, '0', '2023-08-05 18:24:26', '2023-08-07 05:22:49'),
(15, 'Bảo hành', '/bao-hanh', 5, 'main-menu', 1, 1, '0', '2023-08-05 18:29:03', '2023-08-08 19:54:26'),
(16, 'Giới thiệu', '/gioi-thieu', 0, 'main-menu', 1, 1, '0', '2023-08-05 18:30:07', '2023-08-08 19:54:21'),
(17, 'Sản phẩm truyền thanh', '#', 1, 'main-menu', 1, NULL, '3', '2023-08-05 18:32:03', '2023-08-05 18:32:03'),
(18, 'Giám sát, định vị', '#', 2, 'main-menu', 1, NULL, '3', '2023-08-05 18:32:30', '2023-08-05 18:32:30'),
(19, 'Giải pháp audio - video call', '/giai-phap-audio-video-call', 1, 'main-menu', 1, 1, '4', '2023-08-05 19:11:06', '2023-08-07 04:16:14'),
(20, 'Tin tức nội bộ', '/tin-tuc-noi-bo', 1, 'main-menu', 1, NULL, '14', '2023-08-07 05:23:18', '2023-08-07 05:23:18'),
(21, 'Hoạt động xã hội', '/hoat-dong-xa-hoi', 1, 'main-menu', 1, NULL, '14', '2023-08-07 05:23:33', '2023-08-07 05:23:33'),
(22, 'Tin báo chí', '/tin-tuc', 1, 'main-menu', 1, NULL, '14', '2023-08-07 05:24:17', '2023-08-07 05:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2017_07_17_040159_create_config_table', 2),
(7, '2022_06_21_115910_create_languages_table', 3),
(8, '2022_06_21_134618_create_categories_table', 4),
(9, '2022_06_21_135313_create_products_table', 5),
(10, '2022_06_22_030526_create_slideshows_table', 6),
(11, '2022_06_23_024736_create_pages_table', 7),
(12, '2022_06_24_020957_create_news_table', 8),
(13, '2022_06_24_022231_create_news_categories_table', 9),
(14, '2022_07_01_021844_create_packings_table', 10),
(15, '2022_07_01_030237_create_packings_products_table', 11),
(16, '2022_07_02_073003_create_customers_table', 12),
(17, '2022_07_02_073634_create_orders_table', 13),
(18, '2022_07_02_074051_create_orders_details_table', 14),
(19, '2022_07_02_084411_create_deliveries_table', 15),
(20, '2022_07_02_104043_create_payment_method_table', 16),
(21, '2022_07_02_144803_create_request_table', 17),
(22, '2022_08_14_070936_create_customer_reviews_table', 18),
(23, '2022_08_14_101908_create_menus_table', 19),
(25, '2023_02_13_114433_create_products_tag_table', 20),
(26, '2023_02_15_143305_create_news_tag_table', 21),
(27, '2023_08_04_082218_create_product_reviews_table', 22),
(28, '2023_08_05_085734_create_product_brands_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `order` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `images` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `news_cateid` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `seo_meta_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `seo_meta_images` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `order`, `active`, `images`, `short_description`, `content`, `news_cateid`, `tags`, `seo_meta_title`, `seo_meta_description`, `seo_meta_images`, `created_at`, `updated_at`) VALUES
(1, 'Thông tin tuyển dụng tháng 8 2023', 'thong-tin-tuyen-dung-thang-8-2023', 0, 1, 'images/tuyen-dung.jpg', NULL, '<p>Nội dung b&agrave;i viết tuyển dụng&nbsp;sed mollis, eros et ultrices tempus, mauris ipsum aliquam libero, non adipiscing dolor urna a orci. Aenean commodo ligula eget dolor. Nulla facilisi. Sed mollis, eros et ultrices tempus, mauris ipsum aliquam libero, non adipiscing dolor urna a orci. non, velit. Etiam rhoncus. Nunc interdum lacus sit amet orci....</p>', '9', NULL, 'Thông tin tuyển dụng tháng 8 2023', NULL, NULL, '2023-08-07 04:38:12', '2023-08-07 04:42:15'),
(2, 'Chia sẻ công nghệ, giải pháp mới về Trí tuệ nhân tạo và Khoa học dữ liệu trong sản xuất công nghiệp và y tế', 'chia-se-cong-nghe-giai-phap-moi-ve-tri-tue-nhan-tao-va-khoa-hoc-du-lieu-trong-san-xuat-cong-nghiep-va-y-te', 0, 1, 'images/hoi-thao-1.jpg', NULL, '<p>Hội thảo diễn ra theo h&igrave;nh thức kết hợp trực tiếp v&agrave; trực tuyến với sự tham gia v&agrave; tr&igrave;nh b&agrave;y chuy&ecirc;n đề của c&aacute;c chuy&ecirc;n gia trong lĩnh vực Tr&iacute; tuệ nh&acirc;n tạo (AI), Khoa học dữ liệu (DS) tại c&aacute;c &ldquo;điểm cầu&rdquo; ở Hoa Kỳ, Bỉ, Ph&aacute;p, Hi Lạp v&agrave; Việt Nam.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; hội thảo quốc tế về AI v&agrave; DS lần thứ 6 được tổ chức bởi Đại học Đ&ocirc;ng &Aacute; phối hợp c&aacute;c viện nghi&ecirc;n cứu, c&aacute;c trường đại học, c&aacute;c nh&agrave; khoa học v&agrave; chuy&ecirc;n gia trong nước v&agrave; quốc tế.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"hoi-thao-1\" src=\"https://amz.com.vn/public/upload/hoi-thao-1.jpg?1663069896375\" title=\"hoi-thao-1\" /></p>\r\n\r\n<p>Theo &ocirc;ng Lương Minh S&acirc;m &ndash; Chủ tịch Hội đồng Trường Đại học Đ&ocirc;ng &Aacute;, với rất nhiều giải ph&aacute;p mới được li&ecirc;n tục nghi&ecirc;n cứu v&agrave; cải tiến, AI v&agrave; DS sẽ c&ograve;n đ&oacute;ng g&oacute;p mạnh mẽ hơn v&agrave;o qu&aacute; tr&igrave;nh chuyển đổi số quốc gia, trong sự ph&aacute;t triển kinh tế x&atilde; hội bối cảnh ảnh hưởng bởi dịch COVID-19, nhất l&agrave; trong c&ocirc;ng t&aacute;c kiểm tra sức khỏe hậu COVID-19 cho người d&acirc;n, trong phục hồi nền sản xuất th&ocirc;ng minh, quản l&yacute; chuỗi cung ứng th&ocirc;ng minh v&agrave; đẩy nhanh qu&aacute; tr&igrave;nh chuyển đổi kỹ thuật số của c&aacute;c doanh nghiệp,...</p>\r\n\r\n<p>&quot;Hội thảo lần n&agrave;y c&ograve;n l&agrave; diễn đ&agrave;n x&uacute;c tiến c&aacute;c hoạt động hợp t&aacute;c, c&aacute;c chương tr&igrave;nh li&ecirc;n kết đ&agrave;o tạo quốc tế v&agrave; c&aacute;c dự &aacute;n khởi nghiệp cho giảng vi&ecirc;n, nh&agrave; nghi&ecirc;n cứu v&agrave; sinh vi&ecirc;n ng&agrave;nh Tr&iacute; tuệ nh&acirc;n tạo v&agrave; Khoa học dữ liệu Đại học Đ&ocirc;ng &Aacute;&quot;. &ocirc;ng Lương Minh S&acirc;m n&oacute;i.</p>\r\n\r\n<p>Tại hội thảo, c&aacute;c chuy&ecirc;n gia đ&atilde; tr&igrave;nh b&agrave;y 12 b&aacute;o c&aacute;o chuy&ecirc;n đề, trao đổi kiến thức khoa học li&ecirc;n ng&agrave;nh, đa ng&agrave;nh, chia sẻ c&ocirc;ng nghệ v&agrave; giải ph&aacute;p mới về Tr&iacute; tuệ nh&acirc;n tạo v&agrave; Khoa học dữ liệu trong hai lĩnh vực chủ yếu l&agrave; sản xuất c&ocirc;ng nghiệp v&agrave; y tế như: Nghi&ecirc;n cứu &ldquo;Học tuần tự minh bạch: C&ocirc;ng cụ mạnh mẽ cho gi&aacute;m s&aacute;t c&aacute;c quy tr&igrave;nh tuần tự&rdquo; của GS. Peihua Qiu &ndash; Giảng vi&ecirc;n cao cấp tại ĐH Florida (Mỹ); nghi&ecirc;n cứu &ldquo;Thiết kế hệ thống theo d&otilde;i sức khỏe điện t&acirc;m đồ với Học li&ecirc;n kết v&agrave; Tr&iacute; tuệ nh&acirc;n tạo c&oacute; thể giải th&iacute;ch được (XAI)&rdquo; của PGS.TSKH Trần Kim Ph&uacute;c - nh&agrave; nghi&ecirc;n cứu Đại học Lille, Ensait &amp; Gemtex, Ph&aacute;p;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"hoi-thao-2\" src=\"https://amz.com.vn/public/upload/hoi-thao-2.jpg?1663069903252\" title=\"hoi-thao-2\" /></p>\r\n\r\n<p>Nghi&ecirc;n cứu &ldquo;Hệ thống đ&aacute;nh gi&aacute; chứng ngưng thở trong l&uacute;c ngủ tại nh&agrave;: Xem x&eacute;t tiếp cận kinh tế x&atilde; hội ở c&aacute;c quốc gia c&oacute; thu nhập thấp v&agrave; trung b&igrave;nh&rdquo; của PGS.TS Mai Anh Tuấn &ndash; Giảng vi&ecirc;n cao cấp tại Trường ĐH C&ocirc;ng nghệ, ĐH Quốc gia H&agrave; Nội; tham luận &ldquo;Đối ph&oacute; với sự kh&ocirc;ng chắc chắn trong chẩn đo&aacute;n v&agrave; quản l&yacute; sức khỏe của c&aacute;c hệ thống kỹ thuật gồm nhiều th&agrave;nh phần&rdquo;&nbsp; của PGS.TS Nguyễn Thị Phương Khanh &ndash; Nh&agrave; nghi&ecirc;n cứu trường Kỹ sư Tarbes (ENIT), Viện B&aacute;ch khoa quốc gia Toulouse, Ph&aacute;p; tham luận &ldquo;C&aacute;c phương ph&aacute;p dự b&aacute;o v&agrave; ph&aacute;t hiện bất thường trong quản l&yacute; chuỗi cung ứng bằng c&aacute;ch sử dụng c&aacute;c kỹ thuật LSTM v&agrave; LSTM autoencoder&rdquo; của TS. Nguyễn Hữu Du &ndash; Viện trưởng Viện IAD ĐH Đ&ocirc;ng &Aacute;;...</p>\r\n\r\n<p>Hội thảo khoa học quốc tế l&agrave; diễn đ&agrave;n thường ni&ecirc;n của những người c&ocirc;ng t&aacute;c nghi&ecirc;n cứu, ứng dụng, giảng dạy v&agrave; quản l&yacute; trong lĩnh vực tr&iacute; tuệ nh&acirc;n tạo, khoa học dữ liệu, c&ocirc;ng nghệ th&ocirc;ng tin trao đổi &yacute; tưởng, kết nối c&aacute;c kết quả nghi&ecirc;n cứu trong c&ugrave;ng chủ đề v&agrave; t&igrave;m kiếm sự hợp t&aacute;c, ph&aacute;t triển đa phương. Qua đ&oacute;, sẵn s&agrave;ng x&uacute;c tiến hợp t&aacute;c nhiều mặt dựa tr&ecirc;n thế mạnh của từng th&agrave;nh vi&ecirc;n trong đ&agrave;o tạo, nghi&ecirc;n cứu khoa học, đặc biệt l&agrave; chia sẻ s&aacute;ng kiến v&agrave; chuyển giao c&ocirc;ng nghệ mang t&iacute;nh ứng dụng cao thuộc c&aacute;c lĩnh vực nghi&ecirc;n cứu.</p>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN AMZ VIỆT NAM</strong><br />\r\n<strong>Địa chỉ:</strong>&nbsp;Số 215 Đường Quyết Thắng, Tổ 8 P. Y&ecirc;n Nghĩa, Q. H&agrave; Đ&ocirc;ng, Tp. H&agrave; Nội<br />\r\n<strong>Web:</strong>&nbsp;<a href=\"https://amz.com.vn/\" rel=\"nofollow\" target=\"_blank\">https://amz.com.vn</a><br />\r\n<strong>Email:</strong>&nbsp;kinhdoanh@amz.com.vn; tvduc@amz.com.vn<br />\r\n<strong>ĐT:</strong>&nbsp;024 8586 3288, 0989 136 168</p>', '10', NULL, 'Chia sẻ công nghệ, giải pháp mới về Trí tuệ nhân tạo và Khoa học dữ liệu trong sản xuất công nghiệp và y tế', NULL, NULL, '2023-08-07 05:20:14', '2023-08-07 05:20:14'),
(3, 'Trí tuệ nhân tạo AI giúp hiệu quả quy trình quản lý chất lượng như thế nào?', 'tri-tue-nhan-tao-ai-giup-hieu-qua-quy-trinh-quan-ly-chat-luong-nhu-the-nao', 0, 1, 'images/ai-1.jpg', NULL, '<h2>Quản l&yacute; chất lượng với tr&iacute; tuệ nh&acirc;n tạo AI</h2>\r\n\r\n<p>Quản l&yacute; chất lượng l&agrave; g&igrave;?</p>\r\n\r\n<p>C&aacute;c nhiệm vụ cơ bản của quản l&yacute; chất lượng (Quality Management &ndash; QM) bao gồm gi&aacute;m s&aacute;t c&aacute;c qu&aacute; tr&igrave;nh sản xuất đang diễn ra v&agrave; kiểm tra sản phẩm tr&ecirc;n cơ sở c&aacute;c mẫu ngẫu nhi&ecirc;n của th&agrave;nh phẩm hoặc sản phẩm trung gian, qua đ&oacute; x&aacute;c định đối tượng n&agrave;o kh&ocirc;ng tương ứng với c&aacute;c ti&ecirc;u chuẩn chất lượng đ&atilde; đặt ra trong kế hoạch chất lượng</p>\r\n\r\n<p>C&oacute; thể thấy, mục ti&ecirc;u của QM trong c&aacute;c c&ocirc;ng ty sản xuất lu&ocirc;n l&agrave; đạt được c&agrave;ng &iacute;t l&atilde;ng ph&iacute; c&agrave;ng tốt để tiết kiệm t&agrave;i nguy&ecirc;n. Điều đ&oacute; kh&ocirc;ng phải l&uacute;c n&agrave;o cũng hiệu quả. Nguy&ecirc;n nh&acirc;n l&agrave; do những sai lệch trong qu&aacute; tr&igrave;nh sản xuất dẫn đến giảm chất lượng thường được nhận biết qu&aacute; muộn. Do đ&oacute;, qu&aacute; tr&igrave;nh quản l&yacute; chất lượng trong nh&agrave; m&aacute;y ng&agrave;y nay thường &aacute;p dụng c&aacute;c giải ph&aacute;p, phần mềm hiện đại, nhằm đ&aacute;p ứng c&aacute;c y&ecirc;u cầu về sản phẩm ng&agrave;y c&agrave;ng cao&nbsp; của thị trường.&nbsp;</p>\r\n\r\n<p>Quản l&yacute; chất lượng th&ocirc;ng minh với tr&iacute; tuệ AI</p>\r\n\r\n<p>Tạp ch&iacute; Forbes từng nhận định, 83% c&aacute;c c&ocirc;ng ty xem tr&iacute; tuệ nh&acirc;n tạo AI l&agrave; ưu ti&ecirc;n chiến lược hoạt động của m&igrave;nh. Với khả năng hoạt động trong rất nhiều lĩnh vực v&agrave; c&oacute; nhiều ứng dụng đặc biệt, c&aacute;c c&ocirc;ng cụ hỗ trợ AI c&oacute; thể tăng năng suất v&agrave; mang lại cho c&aacute;c c&ocirc;ng ty sự linh hoạt để th&iacute;ch ứng với một m&ocirc;i trường lu&ocirc;n thay đổi.&nbsp;</p>\r\n\r\n<p>Nhiều c&ocirc;ng ty đ&atilde; bắt đầu kết hợp c&aacute;c c&ocirc;ng cụ để tự động h&oacute;a đ&aacute;nh gi&aacute; v&agrave; gi&aacute;m s&aacute;t c&aacute;c hoạt động sản xuất, đồng thời thực hiện ph&acirc;n t&iacute;ch t&igrave;nh huống th&ocirc;ng qua tất cả c&aacute;c tương t&aacute;c. Một số c&ocirc;ng cụ sẽ c&aacute; nh&acirc;n h&oacute;a việc đ&agrave;o tạo v&agrave; huấn luyện cũng như cung cấp phản hồi ngay lập tức khi x&aacute;c định lỗi kịp thời v&agrave; nhanh ch&oacute;ng trong thời gian thực.</p>\r\n\r\n<p>Ng&agrave;y n&agrave;y, AI dần trở th&agrave;nh một phần quan trọng của quy tr&igrave;nh quản l&yacute; chất lượng bởi khả năng đ&aacute;p ứng với nhiều mục ti&ecirc;u v&agrave; y&ecirc;u cầu. C&ugrave;ng với đ&oacute;, n&oacute; sẽ th&uacute;c đẩy việc:</p>\r\n\r\n<p>Ra quyết định dựa tr&ecirc;n ph&acirc;n t&iacute;ch</p>\r\n\r\n<p>Sự ch&iacute;nh x&aacute;c</p>\r\n\r\n<p>Tự động h&oacute;a</p>\r\n\r\n<p>Đ&agrave;o tạo v&agrave; huấn luyện th&ocirc;ng minh</p>\r\n\r\n<p>Trong quản l&yacute; chất lượng, AI thường phải c&oacute; Thị gi&aacute;c m&aacute;y t&iacute;nh (Computer Vision), một tập hợp con của tr&iacute; tuệ nh&acirc;n tạo cho ph&eacute;p m&aacute;y m&oacute;c hiểu được thế giới thị gi&aacute;c. Với sự trợ gi&uacute;p của thị gi&aacute;c m&aacute;y t&iacute;nh, một hệ thống AI c&oacute; thể định vị v&agrave; x&aacute;c định ch&iacute;nh x&aacute;c c&aacute;c h&igrave;nh ảnh v&agrave; video để lấy th&ocirc;ng tin c&oacute; &yacute; nghĩa từ thế giới thực.</p>\r\n\r\n<p>Nh&oacute;m thị gi&aacute;c m&aacute;y t&iacute;nh cần thiết lập một bộ quy tắc r&otilde; r&agrave;ng m&ocirc; tả chất lượng c&oacute; &yacute; nghĩa như thế n&agrave;o trong bối cảnh dự &aacute;n cũng như c&aacute;c y&ecirc;u cầu sản xuất. Ngo&agrave;i c&aacute;c y&ecirc;u cầu về chất lượng, bộ quy tắc n&ecirc;n bao gồm c&aacute;c Ti&ecirc;u ch&iacute; ch&uacute; th&iacute;ch &ndash; tập hợp c&aacute;c quy tắc x&aacute;c định đối tượng n&agrave;o cần ch&uacute; th&iacute;ch, c&aacute;ch ch&uacute; th&iacute;ch ch&uacute;ng một c&aacute;ch ch&iacute;nh x&aacute;c v&agrave; mục ti&ecirc;u chất lượng l&agrave; g&igrave;. Bộ quy tắc n&agrave;y ho&agrave;n to&agrave;n c&oacute; thể gi&uacute;p AI tự học v&agrave; tự ho&agrave;n thiện c&aacute;c dữ liệu cho tương lai.</p>\r\n\r\n<p>Việc c&oacute; c&aacute;c nền tảng trực quan nhận biết v&agrave; lựa chọn c&aacute;c tương t&aacute;c để đ&aacute;nh gi&aacute; sẽ tối ưu h&oacute;a c&aacute;c t&aacute;c vụ lặp đi lặp lại với khối lượng c&ocirc;ng việc lớn. Ngo&agrave;i ra, dữ liệu kết quả v&agrave; th&ocirc;ng tin chi tiết sẽ th&uacute;c đẩy qu&aacute; tr&igrave;nh ra quyết định. Đ&acirc;y cũng ch&iacute;nh l&agrave; l&yacute; do m&agrave; c&aacute;c nh&agrave; quản l&yacute; quy tr&igrave;nh chất lượng trong nh&agrave; m&aacute;y đang dần ưa chuộng việc sử dụng sự hỗ trợ từ AI.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"ai-1\" src=\"https://amz.com.vn/public/upload/ai-1.jpg?1663069424392\" title=\"ai-1\" /></p>\r\n\r\n<h2>Tr&iacute; tuệ AI trong quy tr&igrave;nh quản l&yacute; chất lượng c&oacute; khả năng g&igrave;?</h2>\r\n\r\n<p>Việc &aacute;p dụng tr&iacute; tuệ nh&acirc;n tạo AI v&agrave;o trong quy tr&igrave;nh quản l&yacute; chất lượng c&oacute; thể gi&uacute;p c&aacute;c nh&agrave; m&aacute;y:&nbsp;</p>\r\n\r\n<p>Kiểm so&aacute;t chất lượng</p>\r\n\r\n<p>C&aacute;c thuật to&aacute;n m&aacute;y t&iacute;nh v&agrave; thị gi&aacute;c m&aacute;y t&iacute;nh (Computer Vision) c&oacute; thể được sử dụng để tự động h&oacute;a nhiệm vụ ph&aacute;t hiện lỗi sản phẩm cho nh&agrave; m&aacute;y. C&aacute;c c&ocirc;ng nghệ n&agrave;y c&oacute; thể ph&aacute;t hiện c&aacute;c vấn đề chất lượng bằng c&aacute;ch sử dụng camera hoặc c&aacute;c cảm biến để quết cũng như bằng c&aacute;ch truy cập v&agrave; ph&acirc;n t&iacute;ch dữ liệu trong thời gian thực, AI sẽ đề xuất c&aacute;c cải thiện quy tr&igrave;nh hoạt động để xử l&yacute; c&aacute;c t&igrave;nh huống ph&aacute;t sinh lỗi trong sản xuất.</p>\r\n\r\n<p>Đ&aacute;p ứng c&aacute;c y&ecirc;u cầu về tu&acirc;n thủ</p>\r\n\r\n<p>Một trong những th&aacute;ch thức trong thời đại kỹ thuật số thường khiến c&aacute;c nh&agrave; sản xuất đau đầu, đ&oacute; l&agrave; việc đ&aacute;p ứng c&aacute;c y&ecirc;u cầu về tu&acirc;n thủ. Tuy vậy, khi sử dụng AI, bạn c&oacute; thể đ&aacute;p ứng c&aacute;c y&ecirc;u cầu n&agrave;y với khả năng gi&aacute;m s&aacute;t mạnh mẽ trong thời gian thực v&agrave; ph&aacute;t hiện sự bất thường, cũng như c&aacute;c cơ chế phản hồi tự động.&nbsp;</p>\r\n\r\n<p>Ph&acirc;n t&iacute;ch dự đo&aacute;n</p>\r\n\r\n<p>C&aacute;c kỹ thuật AI c&oacute; thể gi&uacute;p c&aacute;c chuy&ecirc;n gia chất lượng tạo ra c&aacute;c dự b&aacute;o ch&iacute;nh x&aacute;c. Bằng việc thu thập c&aacute;c dữ liệu sản xuất, tr&iacute; tuệ nh&acirc;n tạo c&oacute; thể x&aacute;c định c&aacute;c quy tr&igrave;nh n&agrave;o hoạt động chưa hiệu quả, c&aacute;c bộ phận n&agrave;o thường g&acirc;y ra lỗi kĩ thuật, từ đ&oacute; dự b&aacute;o v&agrave; hỗ trợ l&ecirc;n kế hoạch xử l&yacute; trước khi c&aacute;c sai s&oacute;t của sản xuất g&acirc;y ra cho sản phẩm diễn ra.&nbsp;</p>\r\n\r\n<p>Huấn luyện nh&acirc;n vi&ecirc;n</p>\r\n\r\n<p>Việc đ&agrave;o tạo nh&acirc;n vi&ecirc;n hiệu quả cũng quan trọng kh&ocirc;ng k&eacute;m việc đảm bảo chất lượng sản phẩm. Ng&agrave;y nay,&nbsp; việc đ&agrave;o tạo cho nh&acirc;n vi&ecirc;n c&oacute; thể trở n&ecirc;n th&uacute; vị v&agrave; hiệu quả hơn với học m&aacute;y &ndash; Machine Learning. Việc &aacute;p dụng c&aacute;c thuật to&aacute;n học m&aacute;y c&oacute; thể cải thiện nội dung hướng dẫn, c&aacute; nh&acirc;n h&oacute;a việc huấn luyện hiệu suất v&agrave; cung cấp phản hồi trực quan tốt hơn.&nbsp;</p>\r\n\r\n<p>Một số ng&agrave;nh c&ocirc;ng nghiệp đ&atilde; &aacute;p dụng c&ocirc;ng nghệ n&agrave;y. Một v&iacute; dụ l&agrave; Air Method, một c&ocirc;ng ty vận tải y tế đang sử dụng nền tảng AI dựa tr&ecirc;n đ&aacute;m m&acirc;y c&oacute; t&ecirc;n l&agrave; Amplifire để x&aacute;c định cấp độ kỹ năng của học vi&ecirc;n v&agrave; đưa ra c&aacute;c b&agrave;i kiểm tra tương ứng bao gồm c&aacute;c c&acirc;u hỏi trắc nghiệm v&agrave; phỏng vấn. Điều n&agrave;y dẫn đến đ&agrave;o tạo được c&aacute; nh&acirc;n h&oacute;a v&agrave; hiệu quả, g&oacute;p phần n&acirc;ng cao khả năng quản l&yacute; nh&acirc;n sự cho c&ocirc;ng ty.</p>\r\n\r\n<p>Đ&aacute;p ứng chuỗi cung ứng</p>\r\n\r\n<p>Với AI, ch&uacute;ng ta c&oacute; thể c&oacute; một chuỗi cung ứng được tối ưu h&oacute;a v&igrave; c&aacute;c thuật to&aacute;n c&oacute; thể được sử dụng để ph&aacute;t hiện v&agrave; t&igrave;m hiểu c&aacute;c nhu cầu của thị trường đối với sản phẩm theo thời gian v&agrave; từng khu vực địa l&yacute;. Điều n&agrave;y c&oacute; thể gi&uacute;p c&aacute;c c&ocirc;ng ty t&igrave;m ra c&aacute;c phương &aacute;n tốt nhất để tiếp cận kh&aacute;ch h&agrave;ng ở từng khu vực, nơi c&oacute; c&aacute;c nhu cầu về chất lượng v&agrave; mẫu m&atilde; sản phẩm kh&aacute;c nhau.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"ai-2\" src=\"https://amz.com.vn/public/upload/ai-2.png?1663069444622\" title=\"ai-2\" /></p>\r\n\r\n<h2>[CASE STUDY] Hệ thống ph&acirc;n loại / kiểm tra chất lượng bằng AI của VTI Solutions</h2>\r\n\r\n<p>Một nh&agrave; m&aacute;y sản xuất k&iacute;nh v&agrave; c&aacute;c loại&nbsp; đĩa cứng SSD của Nhật Bản tại Việt Nam đang t&igrave;m kiếm một giải ph&aacute;p gi&uacute;p ph&acirc;n loại c&aacute;c lỗi v&agrave; gi&aacute;m s&aacute;t chất lượng tr&ecirc;n sản phẩm của m&igrave;nh. Tr&ecirc;n thị trường về c&aacute;c phần cứng m&aacute;y t&iacute;nh v&agrave; laptop, việc xảy ra một lỗi d&ugrave; chỉ l&agrave; rất nhỏ c&oacute; thể dẫn đến l&agrave;m giảm hiệu năng hoạt động của m&aacute;y t&iacute;nh, tạo n&ecirc;n một trải nghiệm kh&ocirc;ng tốt cho kh&aacute;ch h&agrave;ng v&agrave; g&acirc;y ảnh hưởng xấu đến c&ocirc;ng ty. C&aacute;c giải ph&aacute;p ph&acirc;n loại, bao gồm cả thủ c&ocirc;ng v&agrave; m&aacute;y m&oacute;c, dường như chưa mang lại hiệu quả như k&igrave; vọng.</p>\r\n\r\n<p>VTI Solutions c&oacute; c&acirc;u trả lời cho b&agrave;i to&aacute;n n&agrave;y. Với c&ocirc;ng nghệ AI tr&ecirc;n nền tảng đ&aacute;m m&acirc;y (Cloud computing), VTI đ&atilde; x&acirc;y dựng một hệ thống kiểm tra chất lượng ph&ugrave; hợp cho việc gi&aacute;m s&aacute;t sản phẩm ổ đĩa cứng SSD.&nbsp; Giải ph&aacute;p n&agrave;y c&ograve;n c&oacute; khả năng ph&aacute;t hiện lỗi, ph&acirc;n loại đối tượng v&agrave; đ&aacute;nh gi&aacute; chất lượng cho tất cả c&aacute;c loại h&igrave;nh c&ocirc;ng nghiệp.</p>\r\n\r\n<p>Tr&iacute; tuệ AI c&oacute; 2 nhiệm vụ ch&iacute;nh trong hệ thống chất lượng n&agrave;y:</p>\r\n\r\n<p>AI được sử dụng cho thị gi&aacute;c m&aacute;y t&iacute;nh (Computer Vision) trong việc kiểm tra ti&ecirc;u chuẩn, ph&aacute;t hiện c&aacute;c lỗi của ổ đĩa</p>\r\n\r\n<p>AI được &aacute;p dụng để ph&acirc;n t&iacute;ch v&agrave; dự đo&aacute;n nguy&ecirc;n nh&acirc;n</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh sản xuất, hệ thống sẽ qu&eacute;t c&aacute;c ổ đĩa cần được kiểm tra ở mọi g&oacute;c cạnh để ph&acirc;n t&iacute;ch v&agrave; dự đo&aacute;n. C&aacute;c dữ liệu sau đ&oacute; sẽ được AI lưu trữ v&agrave; xem x&eacute;t c&aacute;c kết quả được kiểm tra c&aacute;c khuyết tật về vật liệu v&agrave; xử l&yacute; c&oacute; thể c&oacute; như vết xước, vết nứt, vị tr&iacute; bị lệch hoặc c&aacute;c ti&ecirc;u ch&iacute; loại trừ kh&aacute;c. T&ugrave;y thuộc v&agrave;o ti&ecirc;u ch&iacute; chất lượng cơ bản, sản phẩm được kiểm tra chất lượng &ndash; hoặc bị loại bỏ trực tiếp.</p>\r\n\r\n<p>Mỗi dữ liệu được ghi lại g&oacute;p phần cải tiến thuật to&aacute;n, quyết định &ldquo;đạt&rdquo; hoặc &ldquo;kh&ocirc;ng đạt&rdquo; tương ứng của tr&iacute; tuệ AI được ghi lại to&agrave;n diện, để cải tiến hoặc li&ecirc;n kết với c&aacute;c dữ liệu kh&aacute;c song song với d&acirc;y chuyền sản xuất được xem x&eacute;t r&otilde; r&agrave;ng, giải ph&aacute;p đầu ti&ecirc;n li&ecirc;n tục được gi&aacute;m s&aacute;t v&agrave; cải tiến trong qu&aacute; tr&igrave;nh vận h&agrave;nh thử nghiệm v&agrave; tối ưu h&oacute;a bởi c&aacute;c chuy&ecirc;n gia của VTI Solutions. Sau khi đạt được độ ch&iacute;nh x&aacute;c hơn 99%, hệ thống kiểm tra chất lượng mới sau đ&oacute; c&oacute; thể được li&ecirc;n kết v&agrave;o qu&aacute; tr&igrave;nh sản xuất v&agrave; gi&aacute;m s&aacute;t ho&agrave;n to&agrave;n trong nh&agrave; m&agrave; kh&ocirc;ng cần th&ecirc;m bất kỳ h&agrave;nh động n&agrave;o của nh&agrave; cung cấp.&nbsp;</p>\r\n\r\n<p>Cuối c&ugrave;ng, với việc sử dụng AI c&ugrave;ng với thị gi&aacute;c m&aacute;y t&iacute;nh, giải ph&aacute;p của VTI Solutions đ&atilde; loại bỏ đ&aacute;ng kể c&aacute;c t&aacute;c vụ v&agrave; sai s&oacute;t được thực hiện bởi con người, n&acirc;ng cao hiệu quả sản xuất ổ đĩa l&ecirc;n đến 1,2 triệu đĩa/ng&agrave;y. Việc n&acirc;ng cao hơn nữa chất lượng sản phẩm đến tay người ti&ecirc;u d&ugrave;ng cuối c&ugrave;ng cũng gi&uacute;p cải thiện h&igrave;nh ảnh của to&agrave;n bộ c&ocirc;ng ty, qua đ&oacute; g&oacute;p phần n&acirc;ng cao năng lực cạnh tranh tr&ecirc;n thị trường.</p>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN AMZ VIỆT NAM</strong><br />\r\n<strong>Địa chỉ:</strong>&nbsp;Số 215 Đường Quyết Thắng, Tổ 8 P. Y&ecirc;n Nghĩa, Q. H&agrave; Đ&ocirc;ng, Tp. H&agrave; Nội<br />\r\n<strong>Web:</strong>&nbsp;<a href=\"https://amz.com.vn/\" rel=\"nofollow\" target=\"_blank\">https://amz.com.vn</a><br />\r\n<strong>Email:</strong>&nbsp;kinhdoanh@amz.com.vn; tvduc@amz.com.vn<br />\r\n<strong>ĐT:</strong>&nbsp;024 8586 3288, 0989 136 168</p>', '10', NULL, 'Trí tuệ nhân tạo AI giúp hiệu quả quy trình quản lý chất lượng như thế nào?', NULL, NULL, '2023-08-07 05:20:42', '2023-08-07 05:20:42'),
(4, '4 giải pháp ứng dụng trí tuệ nhân tạo hỗ trợ đắc lực cho các bác sĩ', '4-giai-phap-ung-dung-tri-tue-nhan-tao-ho-tro-dac-luc-cho-cac-bac-si', 0, 1, 'images/giai-phap-1.jpg', NULL, '<p>Theo c&aacute;c chuy&ecirc;n gia GE, những ảnh hưởng từ đại dịch khiến 2022 tiếp tục l&agrave; một năm vất vả đối với lực lượng y tế tr&ecirc;n to&agrave;n thế giới. Tuy nhi&ecirc;n, một tin vui cho ng&agrave;nh y tế l&agrave; hiện đ&atilde; c&oacute; nhiều c&ocirc;ng nghệ mới đang gi&uacute;p giảm tải cho y b&aacute;c sĩ v&agrave; đội ngũ hỗ trợ. Điển h&igrave;nh như c&ocirc;ng nghệ tr&iacute; tuệ nh&acirc;n tạo (AI) hiện đang thu thập v&agrave; ph&acirc;n t&iacute;ch rất nhiều dữ liệu mang t&iacute;nh thực tiễn hay thậm ch&iacute; c&oacute; thể tự thực hiện c&aacute;c thủ thuật phẫu thuật.</p>\r\n\r\n<h2>Robot thực hiện th&agrave;nh c&ocirc;ng mổ nội soi tr&ecirc;n lợn</h2>\r\n\r\n<p>Một robot sử dụng tr&iacute; tuệ nh&acirc;n tạo đ&atilde; thực hiện th&agrave;nh c&ocirc;ng ca phẫu thuật nội soi tr&ecirc;n lợn m&agrave; hầu như kh&ocirc;ng cần đến sự can thiệp của con người.</p>\r\n\r\n<p>Axel Krieger, Trợ l&yacute; gi&aacute;o sư kỹ thuật cơ kh&iacute; tại trường Kỹ thuật Whiting của Johns Hopkins, cho biết: &ldquo;Phẫu thuật bằng robot tự động sẽ được sử dụng trong c&aacute;c thủ thuật đ&ograve;i hỏi độ ch&iacute;nh x&aacute;c cao, phụ thuộc nhiều v&agrave;o kỹ năng của b&aacute;c sĩ phẫu thuật. Ch&uacute;ng t&ocirc;i hy vọng rằng điều n&agrave;y c&oacute; thể dẫn tới phương ph&aacute;p tiếp cận phẫu thuật c&ocirc;ng bằng để chăm s&oacute;c bệnh nh&acirc;n với kết quả dễ đo&aacute;n v&agrave; nhất qu&aacute;n hơn&rdquo;.</p>\r\n\r\n<p>Nh&oacute;m của Kreiger đ&atilde; cung cấp một thuật to&aacute;n học m&aacute;y cho robot Smart Tissue Autonomous (hay c&ograve;n gọi l&agrave; STAR), cho ph&eacute;p n&oacute; thực hiện thủ thuật tr&ecirc;n m&ocirc; mềm - vốn phức tạp, đ&ograve;i hỏi độ ch&iacute;nh x&aacute;c để kh&acirc;u thật chắc chắn.</p>\r\n\r\n<p>C&ugrave;ng với một ống nội soi 3D, STAR đ&atilde; kh&acirc;u ch&iacute;nh x&aacute;c ruột non của lợn. Krieger cho biết: &ldquo;Ph&aacute;t hiện n&agrave;y cho thấy ch&uacute;ng ta c&oacute; thể tự động h&oacute;a một trong những nhiệm vụ phức tạp v&agrave; tinh vi nhất trong qu&aacute; tr&igrave;nh phẫu thuật: Nối hai đầu ruột non. STAR đ&atilde; thực hiện quy tr&igrave;nh n&agrave;y tr&ecirc;n 4 con lợn v&agrave; tạo ra kết quả tốt&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"giai-phap\" src=\"https://amz.com.vn/public/upload/giai-phap.jpg?1663069077665\" title=\"giai-phap\" /></p>\r\n\r\n<h2>C&ocirc;ng nghệ AI của GE Healthcare gi&uacute;p giảm bớt c&ocirc;ng việc của c&aacute;c b&aacute;c sĩ</h2>\r\n\r\n<p>Giải ph&aacute;p Revolution Ascend with Effortless Workflow v&agrave; AIR Recon DL của GE Healthcare l&agrave; những v&iacute; dụ về c&aacute;c hệ thống AI &ldquo;đa phương thức&rdquo; sở hữu năng lực khai th&aacute;c dữ liệu v&agrave; th&ocirc;ng tin chuy&ecirc;n s&acirc;u v&agrave;o một m&ocirc; h&igrave;nh duy nhất, qua đ&oacute; giảm g&aacute;nh nặng cho đội ngũ b&aacute;c sĩ.</p>\r\n\r\n<p>AIR Recon DL l&agrave; một c&ocirc;ng nghệ t&aacute;i cấu tr&uacute;c h&igrave;nh ảnh học s&acirc;u c&oacute; thể hoạt động tr&ecirc;n tất cả m&ocirc; h&igrave;nh giải phẫu, mang lại chất lượng v&agrave; độ ph&acirc;n giải h&igrave;nh ảnh tuyệt vời ngay cả với thời gian chụp ngắn hơn. C&ograve;n giải ph&aacute;p Revolution Ascend with Effortless Workflow sẽ tối ưu c&ocirc;ng nghệ AI để tự động ho&aacute; gần như mọi bước trong quy tr&igrave;nh chụp CT hiện nay, gi&uacute;p giảm tới 66% số lần nhấp chuột v&agrave; tiết kiệm 21% thời gian cho một lần chụp.</p>\r\n\r\n<p>&ldquo;Bạn sẽ nhận được nhiều tập hợp kiểm chứng đồng thời tại một điểm v&agrave; c&oacute; thể t&iacute;ch hợp AI một c&aacute;ch mượt m&agrave; v&agrave;o quy tr&igrave;nh kh&aacute;m chữa bệnh để tự động ho&aacute; v&agrave; đơn giản h&oacute;a những t&aacute;c vụ tốn thời gian&rdquo;, Gi&aacute;m đốc Kỹ thuật số của GE Healthcare Phadnis cho biết.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"giai-phap-3\" src=\"https://amz.com.vn/public/upload/giai-phap-3.jpg?1663069085848\" title=\"giai-phap-3\" /></p>\r\n\r\n<h2>C&ocirc;ng nghệ AI gi&uacute;p người bị liệt c&oacute; thể di chuyển</h2>\r\n\r\n<p>C&aacute;c nh&agrave; nghi&ecirc;n cứu tại Thụy Điển đ&atilde; ph&aacute;t triển một điện cực tr&iacute; tuệ nh&acirc;n tạo gi&uacute;p 3 bệnh nh&acirc;n bị liệt c&oacute; thể đi bộ, bơi v&agrave; đạp xe gần như ngay lập tức.</p>\r\n\r\n<p>Nghi&ecirc;n cứu trước đ&acirc;y cho thấy k&iacute;ch th&iacute;ch điện c&oacute; thể gi&uacute;p người bị liệt cử động lại sau một khoảng thời gian. Nhưng với nghi&ecirc;n cứu n&agrave;y, &ldquo;cả ba bệnh nh&acirc;n đều c&oacute; thể đứng l&ecirc;n, đi bộ, đạp xe, bơi v&agrave; điều khiển c&aacute;c chuyển động của th&acirc;n thể chỉ trong một ng&agrave;y, ngay sau khi phẫu thuật&rdquo;, Gr&eacute;goire Courtine, người đồng s&aacute;ng tạo nghi&ecirc;n cứu cho biết.</p>\r\n\r\n<p>Năm 2018, nh&oacute;m nghi&ecirc;n cứu đ&atilde; chứng minh rằng k&iacute;ch th&iacute;ch điện v&agrave;o c&aacute;c tế b&agrave;o thần kinh tủy sống c&oacute; thể gi&uacute;p bệnh nh&acirc;n liệt nửa người c&oacute; thể đi lại được. Trong nghi&ecirc;n cứu mới nhất n&agrave;y, họ đ&atilde; cấy một thiết bị k&iacute;ch th&iacute;ch trực tiếp l&ecirc;n tủy sống, qua c&aacute;c d&acirc;y thần kinh k&iacute;ch hoạt cơ ch&acirc;n.</p>\r\n\r\n<p>&ldquo;Bước đột ph&aacute; trong nghi&ecirc;n cứu của ch&uacute;ng t&ocirc;i l&agrave; hệ điện cực được sản xuất rộng v&agrave; d&agrave;i hơn v&agrave; được sắp xếp tương ứng ch&iacute;nh x&aacute;c với c&aacute;c d&acirc;y thần kinh cột sống. Điều đ&oacute; cho ph&eacute;p ch&uacute;ng t&ocirc;i kiểm so&aacute;t ch&iacute;nh x&aacute;c c&aacute;c tế b&agrave;o thần kinh điều chỉnh c&aacute;c cơ cụ thể&quot;, &ocirc;ng Jocelyne Bloch, b&aacute;c sĩ giải phẫu thần kinh cho biết.</p>\r\n\r\n<p>C&aacute;c thuật to&aacute;n tr&iacute; tuệ nh&acirc;n tạo điều chỉnh c&aacute;c t&iacute;n hiệu điện cực với c&aacute;c chương tr&igrave;nh hoạt động cụ thể. Việc điều khiển từ xa kh&ocirc;ng d&acirc;y cho ph&eacute;p người d&ugrave;ng chỉ cần nhấn n&uacute;t để điều khiển c&aacute;c chuyển động được lập tr&igrave;nh trước của họ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"giai-phap-2\" src=\"https://amz.com.vn/public/upload/giai-phap-2.jpg?1663069093056\" title=\"giai-phap-2\" /></p>\r\n\r\n<h2>Nu&ocirc;i ph&ocirc;i thai bằng tr&iacute; tuệ nh&acirc;n tạo</h2>\r\n\r\n<p>C&aacute;c nh&agrave; nghi&ecirc;n cứu Trung Quốc đ&atilde; ph&aacute;t minh ra tử cung t&iacute;ch hợp tr&iacute; tuệ nh&acirc;n tạo, c&oacute; khả năng nu&ocirc;i ph&ocirc;i thai trong ph&ograve;ng th&iacute; nghiệm. Tử cung nh&acirc;n tạo c&oacute; khả năng tự theo d&otilde;i, chăm s&oacute;c v&agrave; c&oacute; thể gi&uacute;p loại bỏ c&aacute;c mối nguy hiểm trong qu&aacute; tr&igrave;nh mang thai v&agrave; sinh nở, đồng thời c&oacute; triển vọng trong th&uacute;c đẩy sinh sản tại c&aacute;c quốc gia c&oacute; tỷ lệ sinh giảm.</p>\r\n\r\n<p>S&aacute;ng kiến n&agrave;y thực sự l&agrave; một hệ thống cảm biến, gi&uacute;p theo d&otilde;i c&aacute;c ph&ocirc;i trong ống nghiệm khi ch&uacute;ng ph&aacute;t triển th&agrave;nh b&agrave;o thai. Với ba mức độ ph&oacute;ng đại, hệ thống gi&aacute;m s&aacute;t trực tuyến c&oacute; thể ph&aacute;t hiện những thay đổi h&igrave;nh th&aacute;i để theo d&otilde;i sự ph&aacute;t triển.</p>\r\n\r\n<p>Trong th&iacute; nghiệm được c&ocirc;ng bố tr&ecirc;n Tạp ch&iacute; Journal of Biomedical Engineering, hệ thống đ&atilde; theo d&otilde;i c&aacute;c ph&ocirc;i thai chuột trong khối chứa chất lỏng dinh dưỡng để ph&aacute;t triển v&agrave; điều chỉnh m&ocirc;i trường dinh dưỡng khi cần thiết.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"giai-phap-1\" src=\"https://amz.com.vn/public/upload/giai-phap-1.jpg?1663069099651\" title=\"giai-phap-1\" /></p>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN AMZ VIỆT NAM</strong><br />\r\n<strong>Địa chỉ:</strong>&nbsp;Số 215 Đường Quyết Thắng, Tổ 8 P. Y&ecirc;n Nghĩa, Q. H&agrave; Đ&ocirc;ng, Tp. H&agrave; Nội<br />\r\n<strong>Web:</strong>&nbsp;<a href=\"https://amz.com.vn/\" rel=\"nofollow\" target=\"_blank\">https://amz.com.vn</a><br />\r\n<strong>Email:</strong>&nbsp;kinhdoanh@amz.com.vn; tvduc@amz.com.vn<br />\r\n<strong>ĐT:</strong>&nbsp;024 8586 3288, 0989 136 168</p>', '10', NULL, '4 giải pháp ứng dụng trí tuệ nhân tạo hỗ trợ đắc lực cho các bác sĩ', NULL, NULL, '2023-08-07 05:21:10', '2023-08-07 05:21:10'),
(5, 'Internet of Things hữu dụng trong đời sống thường ngày', 'internet-of-things-huu-dung-trong-doi-song-thuong-ngay', 0, 1, 'images/giaiphap1.jpg', NULL, '<p>Những c&ocirc;ng nghệ dựa tr&ecirc;n Internet of Things sẽ hỗ trợ đắc lực cho việc vận h&agrave;nh c&aacute;c ng&ocirc;i nh&agrave; th&ocirc;ng minh, mang tới nhiều tiện &iacute;ch cho người d&ugrave;ng.</p>\r\n\r\n<p>Từ năm 1982, Internet of Things - IoT (Internet vạn vật) đ&atilde; được ứng dụng v&agrave;o chiếc m&aacute;y b&aacute;n h&agrave;ng tự động Coca-Cola v&agrave; đến nay đ&atilde; phủ s&oacute;ng mạnh mẽ nhiều thiết bị kh&aacute;c như m&aacute;y rửa b&aacute;t, xe hơi, robot, đ&egrave;n giao th&ocirc;ng... C&aacute;c chuy&ecirc;n gia cho rằng v&agrave;o năm 2020 sẽ c&oacute; 50 thiết bị sử dụng nền tảng chia sẻ dữ liệu IoT để hoạt động, trong đ&oacute; nổi bật l&agrave; c&aacute;c thiết bị điện tử đeo tay v&agrave; nh&agrave; th&ocirc;ng minh.</p>\r\n\r\n<p>Ch&iacute;nh phủ Anh dự đo&aacute;n đến năm 2019 sẽ c&oacute; 69% nh&agrave; ở tại đ&acirc;y được trang bị c&aacute;c thiết bị kết nối v&agrave; đ&atilde; đầu tư hơn 40 triệu bảng cho nghi&ecirc;n cứu ứng dụng Internet of Things. Giải ph&aacute;p kh&ocirc;ng c&oacute; g&igrave; l&agrave; qu&aacute; cao si&ecirc;u, tập trung đưa ra những ứng dụng hữu &iacute;ch trong cuộc sống thường nhật như d&ugrave;ng điện thoại di động để điều khiển hệ thống chiếu s&aacute;ng trong nh&agrave;, bật m&aacute;y pha c&agrave; ph&ecirc;, l&ograve; vi s&oacute;ng...</p>\r\n\r\n<p><img alt=\"internet-of-things-huu-dung-trong-doi-song-thuong-ngay\" src=\"https://i1-vnexpress.vnecdn.net/2016/05/06/xl-TTT253-complete-topbrewer-6-8343-9393-1462524141.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=K1x0Tas0lZ1QZ7o_KPim1Q\" title=\"internet-of-things-huu-dung-trong-doi-song-thuong-ngay\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đơn cử như với một ấm đun nước b&igrave;nh thường, chỉ cần t&iacute;ch hợp bộ mạch rẻ tiền, bộ cảm biến c&ugrave;ng ứng dụng cho điện thoại, c&aacute;c nh&agrave; sản xuất sẽ cung cấp một b&igrave;nh đun nước th&ocirc;ng minh. Nhờ đ&oacute; người d&ugrave;ng kh&ocirc;ng chỉ nấu nước s&ocirc;i ngay cả khi ra khỏi nh&agrave; m&agrave; c&ograve;n kiểm tra được liệu c&ograve;n bao nhi&ecirc;u nước trong b&igrave;nh, nhiệt độ nước hiện tại.</p>\r\n\r\n<p>Hệ thống thiết bị IoT c&ograve;n hữu &iacute;ch cho việc kiểm so&aacute;t hệ thống m&aacute;y lạnh, m&aacute;y sưởi, quạt l&uacute;c gia chủ vắng nh&agrave;. Trong trường hợp xảy ra hỏa hoạn, c&aacute;c cảm biến sẽ thu thập dữ liệu về gia tăng nhiệt độ, kh&oacute;i, tiến h&agrave;nh gửi tin nhắn cảnh b&aacute;o đến điện thoại chủ nh&agrave; v&agrave; tự động tắt gas c&ugrave;ng c&aacute;c thiết bị c&oacute; khả năng g&acirc;y nhiệt.</p>\r\n\r\n<p>Để l&agrave;m được điều n&agrave;y, cần x&acirc;y dựng một &quot;hệ sinh th&aacute;i&quot; c&aacute;c thiết bị c&oacute; khả năng tương th&iacute;ch với nhau. V&iacute; dụ bộ cảm biến nhiệt độ Nest Learning Thermostat hoạt động tốt c&ugrave;ng m&aacute;y b&aacute;o động kh&oacute;i Nest Protect, hay c&aacute;c b&oacute;ng đ&egrave;n th&ocirc;ng minh Lifx đồng bộ được với Nest.</p>\r\n\r\n<p><img alt=\"internet-of-things-huu-dung-trong-doi-song-thuong-ngay-1\" src=\"https://i1-vnexpress.vnecdn.net/2016/05/06/xl-TTT253-complete-Hom-Turbo-v-6639-2697-1462524141.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=SMA3Lz70NbidNokkxhWVlg\" title=\"internet-of-things-huu-dung-trong-doi-song-thuong-ngay-1\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kh&ocirc;ng nằm ngo&agrave;i cuộc chơi IoT, Apple đ&atilde; tạo ra hệ sinh th&aacute;i HomeKit cho ph&eacute;p d&ugrave;ng iPhone để điều khiển c&aacute;c thiết bị nh&agrave; th&ocirc;ng minh. Samsung cũng ph&aacute;t triển nền tảng Arctic hỗ trợ sử dụng điện thoại Galaxy để vận h&agrave;nh đ&egrave;n v&agrave; hệ thống an ninh trong nh&agrave;. Trong khi đ&oacute;, Microsoft, Sony, Philips v&agrave; một số thương hiệu điện tử lớn kh&aacute;c sử dụng hệ thống AllJoyn của Qualcomm.</p>\r\n\r\n<p>C&aacute;c chuy&ecirc;n gia cho rằng với sự phổ biến của điện thoại th&ocirc;ng minh th&igrave; việc ứng dụng IoT sẽ gi&uacute;p cuộc sống ch&uacute;ng ta dễ d&agrave;ng, tiện nghi hơn. Điều n&agrave;y thể hiện r&otilde; qua c&aacute;c thiết bị nh&agrave; bếp, m&agrave; nổi bật l&agrave; tủ lạnh. Trước kia, chẳng ai biết tủ lạnh c&ograve;n g&igrave; khi chưa mở cửa ra. Nhưng hiện tại chỉ cần liếc qua m&agrave;n h&igrave;nh smartphone l&agrave; biết ngay c&ograve;n sản phẩm n&agrave;o, được đặt ở đ&acirc;u nhờ t&iacute;ch hợp camera b&ecirc;n trong kết nối đến ứng dụng di động.</p>\r\n\r\n<p><img alt=\"internet-of-things-huu-dung-trong-doi-song-thuong-ngay-2\" src=\"https://i1-vnexpress.vnecdn.net/2016/05/06/xl-TTT253-complete-Samsung-Ref-6926-4350-1462524141.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_dU0yeq-eKfP-6z_V4cAeg\" title=\"internet-of-things-huu-dung-trong-doi-song-thuong-ngay-2\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tủ lạnh c&ograve;n được trang bị m&agrave;n h&igrave;nh cho ph&eacute;p hiển thị h&igrave;nh ảnh b&ecirc;n trong tủ, đưa ra nhắc nhở những thực phẩm đang thiếu, kết nối Internet, nghe nhạc, hỗ trợ giải tr&iacute; đa dạng.</p>\r\n\r\n<p>C&ograve;n h&atilde;ng AEG cho ra mắt c&ocirc;ng nghệ ProCombi Plus Smart, cho ph&eacute;p gia chủ điều khiển bếp nấu ăn qua ứng dụng tr&ecirc;n iPad, điều chỉnh nhiệt độ hay tắt bếp trong khi đang thảnh thơi ngồi xem những chương tr&igrave;nh TV y&ecirc;u th&iacute;ch tại ph&ograve;ng kh&aacute;ch.</p>\r\n\r\n<p>C&aacute;c thương hiệu như Miele v&agrave; Bosch cũng đang kh&aacute;m ph&aacute; Internet of Things, nghi&ecirc;n cứu ph&aacute;t triển hệ thống m&aacute;y giặt th&ocirc;ng minh hỗ trợ thực hiện c&aacute;c quy tr&igrave;nh giặt giũ qua điện thoại. Khi đ&atilde; ho&agrave;n tất việc giặt hay c&oacute; những sự cố về mất nước, ngưng hoạt động..., m&aacute;y sẽ tự động gửi tin nhắn th&ocirc;ng b&aacute;o đến cho người d&ugrave;ng.</p>\r\n\r\n<p><strong>Minh Tr&iacute;</strong></p>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN AMZ VIỆT NAM</strong><br />\r\n<strong>Địa chỉ:</strong>&nbsp;Số 215 Đường Quyết Thắng, Tổ 8 P. Y&ecirc;n Nghĩa, Q. H&agrave; Đ&ocirc;ng, Tp. H&agrave; Nội<br />\r\n<strong>Web:</strong>&nbsp;<a href=\"https://amz.com.vn/\" rel=\"nofollow\" target=\"_blank\">https://amz.com.vn</a><br />\r\n<strong>Email:</strong>&nbsp;kinhdoanh@amz.com.vn; tvduc@amz.com.vn<br />\r\n<strong>ĐT:</strong>&nbsp;024 8586 3288, 0989 136 168</p>', '10', NULL, 'Internet of Things hữu dụng trong đời sống thường ngày', NULL, NULL, '2023-08-07 05:21:42', '2023-08-07 05:21:42'),
(6, 'Sôi nổi các cuộc thi ứng dụng trí tuệ nhân tạo', 'soi-noi-cac-cuoc-thi-ung-dung-tri-tue-nhan-tao', 0, 1, 'images/798231af0ca3cffd96b2.jpg', NULL, '<p>C&aacute;c cuộc thi nằm trong chuỗi c&aacute;c sự kiện của Ng&agrave;y hội Tr&iacute; tuệ nh&acirc;n tạo quốc gia AI4VN 2022 với chủ đề &quot;AI phục hồi kinh tế, định h&igrave;nh tương lai&quot;. Chương tr&igrave;nh do Bộ Khoa học v&agrave; C&ocirc;ng nghệ chỉ đạo, B&aacute;o VnExpress tổ chức, với sự phối hợp của Bộ Kế hoạch v&agrave; Đầu tư, Aus4innovation v&agrave; C&acirc;u lạc bộ C&aacute;c Khoa-Viện-Trường C&ocirc;ng nghệ th&ocirc;ng tin - Truyền th&ocirc;ng (FISU) nhằm gi&uacute;p tăng cường năng lực hệ thống đổi mới s&aacute;ng tạo của Việt Nam, chuẩn bị cho tương lai c&ocirc;ng nghệ v&agrave; nền kinh tế số.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"798231af0ca3cffd96b2\" src=\"https://amz.com.vn/public/upload/798231af0ca3cffd96b2.jpg?1663070013908\" title=\"798231af0ca3cffd96b2\" /></p>\r\n\r\n<p>Thi AI dự đo&aacute;n chất lượng kh&ocirc;ng kh&iacute;</p>\r\n\r\n<p>Cuộc thi &quot;Air quality forecasting challenge&quot; được tổ chức để t&igrave;m kiếm những giải ph&aacute;p dự đo&aacute;n chất lượng kh&ocirc;ng kh&iacute; dựa tr&ecirc;n tr&iacute; tuệ nh&acirc;n tạo (AI).Cuộc thi do Trung t&acirc;m Nghi&ecirc;n cứu Quốc tế về Tr&iacute; tuệ nh&acirc;n tạo BKAI, Đại học B&aacute;ch khoa H&agrave; Nội, phối hợp c&ugrave;ng Bộ Khoa học v&agrave; C&ocirc;ng nghệ, b&aacute;o VnExpress tổ chức.</p>\r\n\r\n<p>Cuộc thi hướng đến c&aacute;c giải ph&aacute;p AI dự đo&aacute;n chất lượng kh&ocirc;ng kh&iacute; với độ ch&iacute;nh x&aacute;c cao, đồng thời g&oacute;p phần n&acirc;ng cao &yacute; thức của người d&acirc;n đối với m&ocirc;i trường sống xung quanh.&nbsp;</p>\r\n\r\n<p>C&aacute;c th&iacute; sinh đăng k&yacute; tham gia theo h&igrave;nh thức nh&oacute;m với tối đa 5 th&agrave;nh vi&ecirc;n. C&aacute;c đội tham gia cuộc thi sẽ được sử dụng dữ liệu m&ocirc; lớn nằm trong khu&ocirc;n khổ của dự &aacute;n Fi-Mi do tập đo&agrave;n VinIF t&agrave;i trợ. Th&iacute; sinh sẽ được cung cấp 1 tập dữ liệu huấn luyện v&agrave; 2 tập dữ liệu đ&aacute;nh gi&aacute; (Public Test v&agrave; Private Test). Bộ dữ liệu huấn luyện sẽ được cung cấp miễn ph&iacute; trực tuyến.</p>\r\n\r\n<p>Tr&ecirc;n cơ sở dữ liệu v&agrave; đầu b&agrave;i đưa ra, c&aacute;c nh&oacute;m sẽ x&acirc;y dựng thuật to&aacute;n v&agrave; đề xuất giải ph&aacute;p. Ti&ecirc;u ch&iacute; đ&aacute;nh gi&aacute; sẽ dựa tr&ecirc;n hiệu năng của thuật to&aacute;n v&agrave; t&iacute;nh s&aacute;ng tạo trong giải ph&aacute;p đề xuất. Căn cứ tr&ecirc;n kết quả v&agrave; chi tiết giải ph&aacute;p của c&aacute;c đội, Ban gi&aacute;m khảo sẽ đ&aacute;nh gi&aacute; kết quả cuối c&ugrave;ng để quyết định giải thưởng.</p>\r\n\r\n<p>Cuộc thi sẽ diễn ra từ ng&agrave;y 15/7 đến hết ng&agrave;y 31/8 với giai đoạn gồm v&ograve;ng sơ khảo v&agrave; chung kết. Ba đội c&oacute; kết quả xuất sắc sẽ tr&igrave;nh b&agrave;y giải ph&aacute;p trong sự kiện ch&iacute;nh của AI4VN, diễn ra v&agrave;o th&aacute;ng 9.</p>\r\n\r\n<p>T&igrave;m kiếm giải ph&aacute;p ứng dụng AI nhận dạng thuốc</p>\r\n\r\n<p>Cuộc thi &quot;VAIPE: Medicine Pill Image Recognition Challenge&quot; được tổ chức để t&igrave;m kiếm v&agrave; ph&aacute;t triển c&aacute;c thuật to&aacute;n AI nhận dạng ch&iacute;nh x&aacute;c t&ecirc;n c&aacute;c loại thuốc uống từ h&igrave;nh ảnh vi&ecirc;n thuốc.</p>\r\n\r\n<p>Cuộc thi do Trung t&acirc;m Y tế th&ocirc;ng minh VinUni-Illinois thuộc trường ĐH VinUni, Trung t&acirc;m Nghi&ecirc;n cứu Quốc tế về Tr&iacute; tuệ nh&acirc;n tạo BK.AI, Đại học B&aacute;ch khoa H&agrave; Nội, phối hợp c&ugrave;ng Bộ Khoa học v&agrave; C&ocirc;ng nghệ v&agrave; B&aacute;o VnExpress tổ chức.</p>\r\n\r\n<p>Ban tổ chức cho biết, cuộc thi cũng hướng tới việc ph&aacute;t hiện việc uống thuốc ngo&agrave;i đơn, một trong những th&aacute;ch thức y tế cộng đồng hiện nay ở Việt Nam v&agrave; tr&ecirc;n thế giới. Cuộc thi kh&ocirc;ng giới hạn đối tượng tham dự. C&aacute;c th&iacute; sinh đăng k&yacute; tham gia theo h&igrave;nh thức nh&oacute;m với tối đa 5 th&agrave;nh vi&ecirc;n.</p>\r\n\r\n<p>Cuộc thi bắt đầu mở cổng đăng k&yacute; từ ng&agrave;y 20/6 đến 10/7. Từ ng&agrave;y 15/7 đến 31/8 diễn ra v&ograve;ng sơ khảo v&agrave; chung kết.&nbsp;</p>\r\n\r\n<p>Giải b&igrave;nh chọn sản phẩm Tr&iacute; tuệ nh&acirc;n tạo 2022 (AI Awards 2022)</p>\r\n\r\n<p>AI Awards 2022 l&agrave; s&acirc;n chơi cho mọi tổ chức, doanh nghiệp khởi nghiệp, nh&oacute;m nghi&ecirc;n cứu tại c&aacute;c viện, trường c&oacute; giải ph&aacute;p/sản phẩm ph&ugrave; hợp ti&ecirc;u ch&iacute; chương tr&igrave;nh. Trong đ&oacute;, c&aacute;c sản phẩm/giải ph&aacute;p tham gia được giới thiệu trong năm 2021-2022 tại thị trường Việt Nam, hướng tới thay đổi cuộc sống con người từ mức độ cơ bản đến to&agrave;n diện; c&oacute; t&iacute;nh s&aacute;ng tạo độc đ&aacute;o trong việc ứng dụng AI.</p>\r\n\r\n<p>C&aacute;c giải ph&aacute;p, sản phẩm mang lại hiệu quả cho doanh nghiệp, c&ocirc;ng ty triển khai v&agrave; cho người sử dụng, đồng thời c&oacute; t&iacute;nh kh&aacute;c biệt như sản phẩm sử dụng AI ưu việt g&igrave; hơn c&aacute;c sản phẩm tương tự tr&ecirc;n thị trường... c&oacute; thể tham gia chương tr&igrave;nh.</p>\r\n\r\n<p>Cuộc thi sẽ bắt đầu nhận hồ sơ từ ng&agrave;y 24/6, gồm bốn giai đoạn: V&ograve;ng x&eacute;t duyệt sản phẩm dự thi, v&ograve;ng sơ loại, v&ograve;ng chung kết v&agrave; lễ trao giải. Lễ trao giải sẽ diễn ra trong chương tr&igrave;nh AI Summit, tổ chức v&agrave;o th&aacute;ng 9/2022./.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN AMZ VIỆT NAM</strong><br />\r\n<strong>Địa chỉ:</strong>&nbsp;Số 215 Đường Quyết Thắng, Tổ 8 P. Y&ecirc;n Nghĩa, Q. H&agrave; Đ&ocirc;ng, Tp. H&agrave; Nội<br />\r\n<strong>Web:</strong>&nbsp;<a href=\"https://amz.com.vn/\" rel=\"nofollow\" target=\"_blank\">https://amz.com.vn</a><br />\r\n<strong>Email:</strong>&nbsp;kinhdoanh@amz.com.vn; tvduc@amz.com.vn<br />\r\n<strong>ĐT:</strong>&nbsp;024 8586 3288, 0989 136 168</p>', '8', NULL, 'Sôi nổi các cuộc thi ứng dụng trí tuệ nhân tạo', NULL, NULL, '2023-08-07 05:24:53', '2023-08-07 05:24:53'),
(7, 'Trí tuệ nhân tạo là công nghệ được ưu tiên hàng đầu', 'tri-tue-nhan-tao-la-cong-nghe-duoc-uu-tien-hang-dau', 0, 1, 'images/cp.jpg', NULL, '<p>Ng&agrave;y 27/7, dưới sự chỉ đạo của Bộ KH&amp;CN, B&aacute;o VnExpress tổ chức họp b&aacute;o giới thiệu về sự kiện Ng&agrave;y hội Tr&iacute; tuệ nh&acirc;n tạo Việt Nam 2022.</p>\r\n\r\n<p>Theo Ban Tổ chức, Ng&agrave;y hội Tr&iacute; tuệ nh&acirc;n tạo Việt Nam l&agrave; sự kiện thường ni&ecirc;n, được tổ chức lần đầu ti&ecirc;n v&agrave;o năm 2018. Sau 4 năm, ng&agrave;y hội đ&atilde; trở th&agrave;nh một sự kiện khoa học tin cậy, thu h&uacute;t quan t&acirc;m của đ&ocirc;ng đảo c&aacute;c cơ quan ban h&agrave;nh ch&iacute;nh s&aacute;ch, quản l&yacute;, tập đo&agrave;n c&ocirc;ng nghệ, đơn vị nghi&ecirc;n cứu... c&ugrave;ng chung tay th&uacute;c đẩy sự ph&aacute;t triển hệ sinh th&aacute;i tr&iacute; tuệ nh&acirc;n tạo tại Việt Nam.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"cp\" src=\"https://amz.com.vn/public/upload/cp.jpg?1663069581179\" title=\"cp\" /></p>\r\n\r\n<p>Năm nay, ng&agrave;y hội c&oacute; chủ đề &quot;AI phục hồi kinh tế, định h&igrave;nh tương lai&quot; dự kiến tổ chức v&agrave;o ng&agrave;y 22/9 tại H&agrave; Nội, với sự tham dự của l&atilde;nh đạo Ch&iacute;nh phủ, đại diện c&aacute;c bộ, ban, ng&agrave;nh, c&aacute;c hiệp hội, viện, trường, start-up, c&aacute;c tập đo&agrave;n, doanh nghiệp trong lĩnh vực c&ocirc;ng nghệ, c&aacute;c chuy&ecirc;n gia v&agrave; nh&agrave; đầu tư trong nước v&agrave; quốc tế.</p>\r\n\r\n<p>Trả lời c&acirc;u hỏi của B&aacute;o Điện tử Ch&iacute;nh phủ về cơ sở ph&aacute;p l&yacute; cho AI, &ocirc;ng L&yacute; Ho&agrave;ng T&ugrave;ng, Ph&oacute; Vụ trưởng Vụ C&ocirc;ng nghệ cao (Bộ KH&amp;CN) cho biết, trong thời gian qua, Ch&iacute;nh phủ đ&atilde; chỉ đạo c&aacute;c bộ, ng&agrave;nh chuẩn bị h&agrave;nh lang ph&aacute;p l&yacute; cũng như c&aacute;c điều kiện cho việc ph&aacute;t triển c&ocirc;ng nghệ AI tại Việt Nam.</p>\r\n\r\n<p>Cuối năm 2020, Thủ tướng Ch&iacute;nh phủ đ&atilde; k&yacute; Quyết định số 2117/QĐ-TTg ban h&agrave;nh danh mục c&ocirc;ng nghệ ưu ti&ecirc;n nghi&ecirc;n cứu, ph&aacute;t triển v&agrave; ứng dụng để chủ động tham gia cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư.&nbsp;</p>\r\n\r\n<p>Ở lĩnh vực c&ocirc;ng nghệ số, danh mục c&ocirc;ng nghệ ưu ti&ecirc;n gồm: Tr&iacute; tuệ nh&acirc;n tạo; Internet vạn vật; c&ocirc;ng nghệ ph&acirc;n t&iacute;ch dữ liệu lớn; c&ocirc;ng nghệ chuỗi khối; điện to&aacute;n đ&aacute;m m&acirc;y&hellip;&nbsp;</p>\r\n\r\n<p>Trong số đ&oacute;, Bộ KH&amp;CN x&aacute;c định AI l&agrave; c&ocirc;ng nghệ được ưu ti&ecirc;n h&agrave;ng đầu. Th&aacute;ng 1/2021, Bộ KH&amp;CN đ&atilde; tham mưu Ch&iacute;nh phủ ban h&agrave;nh Chiến lược quốc gia về nghi&ecirc;n cứu, ph&aacute;t triển v&agrave; ứng dụng Tr&iacute; tuệ nh&acirc;n tạo đến năm 2030. Việc x&acirc;y dựng dữ liệu v&agrave; nguồn nh&acirc;n lực được Ch&iacute;nh phủ giao cho c&aacute;c Bộ: Quốc ph&ograve;ng, C&ocirc;ng an, GD&amp;ĐT, KH&amp;CN, Viện H&agrave;n l&acirc;m KH&amp;CN Việt Nam... sẵn s&agrave;ng đ&aacute;p ứng nhu cầu ph&aacute;t triển thực tế.</p>\r\n\r\n<p>Về phần m&igrave;nh, ngay sau khi Chiến lược được ban h&agrave;nh, Bộ KH&amp;CN đ&atilde; ban h&agrave;nh ngay kế hoạch triển khai ph&aacute;t triển c&ocirc;ng nghệ AI quốc gia. Đến nay việc quảng b&aacute;, truyền th&ocirc;ng về AI được triển khai kh&aacute; rộng r&atilde;i, phần n&agrave;o gi&uacute;p người d&acirc;n hiểu AI l&agrave; g&igrave; v&agrave; đ&oacute;ng g&oacute;p như thế n&agrave;o trong cuộc sống.</p>\r\n\r\n<p>&quot;Trong thời gian tới, Bộ KH&amp;CN sẽ tiếp tục triển khai chiến lược bằng c&aacute;ch tập trung v&agrave;o ph&aacute;t triển nguồn nh&acirc;n lực chất lượng cao về AI ở Việt Nam, cũng như x&acirc;y dựng cơ sở hạ tầng dữ liệu lớn theo chỉ đạo của Ch&iacute;nh phủ&quot;, &ocirc;ng L&yacute; Ho&agrave;ng T&ugrave;ng cho hay.</p>\r\n\r\n<p>&Ocirc;ng L&yacute; Ho&agrave;ng T&ugrave;ng cũng dẫn b&aacute;o c&aacute;o về chỉ số sẵn s&agrave;ng AI của c&aacute;c ch&iacute;nh phủ (Government AI Readiness Index) do Oxford Insights (Vương quốc Anh) kết hợp với Trung t&acirc;m nghi&ecirc;n cứu ph&aacute;t triển quốc tế của Canada (IDRC) thực hiện cho thấy, sau khi Chiến lược được ban h&agrave;nh, năm 2021, Việt Nam xếp hạng 62/160 to&agrave;n cầu (tăng 14 bậc chỉ số so với xếp hạng năm 2020) v&agrave; xếp thứ 6/10 trong ASEAN.&nbsp;</p>\r\n\r\n<p>Tại Ng&agrave;y hội tr&iacute; tuệ nh&acirc;n tạo Việt Nam 2022, những chủ đề n&oacute;ng li&ecirc;n quan tới việc &aacute;p dụng Al trong c&aacute;c lĩnh vực của cuộc sống sẽ được thảo luận nhằm gợi &yacute;, đề xuất giải ph&aacute;p cho doanh nghiệp, cơ quan nghi&ecirc;n cứu, từ đ&oacute; c&aacute;c nh&agrave; quản l&yacute; c&oacute; những định hướng ch&iacute;nh s&aacute;ch ph&ugrave; hợp, g&oacute;p phần h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển một hệ sinh th&aacute;i AI bền vững tại Việt Nam.</p>\r\n\r\n<p>Sự kiện bao gồm 3 hội thảo trước thềm phi&ecirc;n to&agrave;n thể với c&aacute;c chủ đề về giải ph&aacute;p Al trong c&aacute;c lĩnh vực như t&agrave;i ch&iacute;nh - ng&acirc;n h&agrave;ng, nguồn nh&acirc;n lực v&agrave; trong sản xuất.</p>\r\n\r\n<p>Phi&ecirc;n to&agrave;n thể sẽ b&agrave;n thảo một số nội dung nổi bật như ph&aacute;t triển hệ sinh th&aacute;i để AI ứng dụng v&agrave; n&acirc;ng cao chất lượng cuộc sống, giải ph&aacute;p để gi&uacute;p doanh nghiệp bứt ph&aacute; bằng c&ocirc;ng nghệ Al...</p>\r\n\r\n<p>Đặc biệt, hoạt động kh&aacute;c biệt v&agrave; nổi bật của sự kiện Ng&agrave;y hội tr&iacute; tuệ nh&acirc;n tạo Việt Nam 2022 l&agrave; Giải thưởng Sản phẩm ứng dụng Tr&iacute; tuệ nh&acirc;n tạo 2022 (AI Awards 2022) nhằm vinh danh những sản phẩm, giải ph&aacute;p ứng dụng tr&iacute; tuệ nh&acirc;n tạo nổi trội trong doanh nghiệp v&agrave; cuộc sống.</p>\r\n\r\n<p>C&ugrave;ng với đ&oacute; c&ograve;n c&aacute;c cuộc thi kh&aacute;c như: &quot;Quy Nhơn AI Hackathon 2022&quot; t&igrave;m kiếm giải ph&aacute;p ứng dụng AI th&uacute;c đẩy du lịch; &quot;Air quality forecasting challenge&quot; t&igrave;m kiếm những giải ph&aacute;p AI dự đo&aacute;n chất lượng kh&ocirc;ng kh&iacute;; &quot;VAIPE: Medicine Pill Image Recognition Challenge&quot; t&igrave;m kiếm c&aacute;c thuật to&aacute;n AI nhận dạng ch&iacute;nh x&aacute;c t&ecirc;n c&aacute;c loại thuốc uống từ h&igrave;nh ảnh vi&ecirc;n thuốc&hellip;</p>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN AMZ VIỆT NAM</strong><br />\r\n<strong>Địa chỉ:</strong>&nbsp;Số 215 Đường Quyết Thắng, Tổ 8 P. Y&ecirc;n Nghĩa, Q. H&agrave; Đ&ocirc;ng, Tp. H&agrave; Nội<br />\r\n<strong>Web:</strong>&nbsp;<a href=\"https://amz.com.vn/\" rel=\"nofollow\" target=\"_blank\">https://amz.com.vn</a><br />\r\n<strong>Email:</strong>&nbsp;kinhdoanh@amz.com.vn; tvduc@amz.com.vn<br />\r\n<strong>ĐT:</strong>&nbsp;024 8586 3288, 0989 136 168</p>', '8', NULL, 'Trí tuệ nhân tạo là công nghệ được ưu tiên hàng đầu', NULL, NULL, '2023-08-07 05:25:16', '2023-08-07 05:25:16');
INSERT INTO `news` (`id`, `title`, `slug`, `order`, `active`, `images`, `short_description`, `content`, `news_cateid`, `tags`, `seo_meta_title`, `seo_meta_description`, `seo_meta_images`, `created_at`, `updated_at`) VALUES
(8, 'Phòng thí nghiệm sản phẩm IoT khai trương tại Hà Nội', 'phong-thi-nghiem-san-pham-iot-khai-truong-tai-ha-noi', 0, 1, 'images/IoT-1-5239-1467946567.jpg', NULL, '<p>H&ograve;a Lạc IoT Lab ra đời với mục ti&ecirc;u kết nối c&aacute;c tổ chức cung cấp nền tảng, thiết bị với cộng đồng khởi nghiệp v&agrave; x&acirc;y dựng ứng dụng Internet of Things (IoT) tại Việt Nam.</p>\r\n\r\n<p>Ng&agrave;y 7/7 tại Khu C&ocirc;ng nghệ cao H&ograve;a Lạc, Bộ Khoa học C&ocirc;ng nghệ đ&atilde; tổ chức khai trương Ph&ograve;ng th&iacute; nghiệm H&ograve;a Lạc IoT Lab (HIL).&nbsp;</p>\r\n\r\n<p>&quot;HIL hoạt động theo m&ocirc; h&igrave;nh Ph&ograve;ng th&iacute; nghiệm kiểu mới, kh&ocirc;ng sử dụng ng&acirc;n s&aacute;ch nh&agrave; nước, được th&agrave;nh lập v&agrave; hoạt động dựa tr&ecirc;n sự đ&oacute;ng g&oacute;p của cộng đồng. HIL do bốn s&aacute;ng lập vi&ecirc;n l&agrave; Khu C&ocirc;ng nghệ cao H&ograve;a Lạc, c&ocirc;ng ty DTT, Intel v&agrave; Dell Việt Nam th&agrave;nh lập&quot;, &ocirc;ng Phạm Đại Dương, Thứ trưởng Bộ Khoa học C&ocirc;ng nghệ, chia sẻ. &quot;H&ograve;a Lạc IoT Lab thể hiện quyết t&acirc;m của Ch&iacute;nh phủ v&agrave; Bộ Khoa học C&ocirc;ng nghệ trong việc hỗ trợ ph&aacute;t triển cộng đồng khởi nghiệp đổi mới v&agrave; s&aacute;ng tạo&quot;.</p>\r\n\r\n<p>&Ocirc;ng Nghi&ecirc;m Xu&acirc;n Chiến, đại diện Dell Việt Nam, v&agrave; &ocirc;ng Nguyễn Thế Trung, Gi&aacute;m đốc DTT, c&ugrave;ng nhận định IoT l&agrave; hướng đi mới của c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; c&oacute; ứng dụng rất rộng lớn trong mọi ng&agrave;nh nghề. Kết hợp sự b&ugrave;ng nổ của l&agrave;n s&oacute;ng khởi nghiệp v&agrave; cơ hội v&agrave;ng của l&agrave;n s&oacute;ng c&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư với Internet vạn vật sẽ l&agrave; cơ hội lớn để tạo ra c&aacute;c khởi nghiệp th&agrave;nh c&ocirc;ng, đ&oacute;ng g&oacute;p v&agrave;o giai đoạn mới của ứng dụng khoa học c&ocirc;ng nghệ tại Việt Nam.&nbsp;</p>\r\n\r\n<p>Tại H&ograve;a Lạc IoT Lab trưng b&agrave;y nhiều c&ocirc;ng nghệ IoT như Smart Home, Smart City, IoT trong c&ocirc;ng nghiệp, giao th&ocirc;ng, y tế, gi&aacute;o dục th&ocirc;ng minh. HIL c&ograve;n c&oacute; ph&ograve;ng l&agrave;m việc, nghi&ecirc;n cứu cho c&aacute;c tổ chức, chuy&ecirc;n gia v&agrave; nh&oacute;m khởi nghiệp IoT cũng như c&aacute;c nền tảng ph&aacute;t triển ứng dụng, c&aacute;c kh&oacute;a đ&agrave;o tạo, c&aacute;c sự kiện - hội thảo li&ecirc;n quan đến IoT do th&agrave;nh vi&ecirc;n HIL cung cấp.</p>\r\n\r\n<p>Đại diện HIL cho biết sẽ nhanh ch&oacute;ng mở rộng th&agrave;nh vi&ecirc;n ngay sau khi bước v&agrave;o hoạt động ch&iacute;nh thức.&nbsp;</p>\r\n\r\n<p><img alt=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi\" src=\"https://i1-sohoa.vnecdn.net/2016/07/08/IoT-1273-1467946567.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=I2lVKCVO1CoE812Yq3dwPA\" title=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi\" /></p>\r\n\r\n<p>H&ograve;a Lạc IoT Lab nằm trong t&ograve;a nh&agrave; Trung t&acirc;m ươm tạo&nbsp;doanh nghiệp c&ocirc;ng nghệ cao thuộc Khu C&ocirc;ng nghệ cao H&ograve;a Lạc.</p>\r\n\r\n<p><img alt=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-1\" src=\"https://i1-sohoa.vnecdn.net/2016/07/08/IoT-1-5239-1467946567.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=HA-LSOE8DMdZc85JRMaXvQ\" title=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-1\" /></p>\r\n\r\n<p>Lễ khai trương Ph&ograve;ng th&iacute; nghiệm diễn ra chiều ng&agrave;y 7/7.</p>\r\n\r\n<p><img alt=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-2\" src=\"https://i1-sohoa.vnecdn.net/2016/07/08/IoT-2-5212-1467946567.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=4yVy7sdDjcxe9vAX6ATixQ\" title=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-2\" /></p>\r\n\r\n<p>Tại khu trưng b&agrave;y, nhiều giải ph&aacute;p, ứng dụng IoT được giới thiệu như hệ thống tự động nhận diện v&agrave; thống k&ecirc; biển số xe, gợi &yacute; vị tr&iacute; đỗ v&agrave; hướng dẫn di chuyển...</p>\r\n\r\n<p><img alt=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-3\" src=\"https://i1-sohoa.vnecdn.net/2016/07/08/IoT-3-1341-1467946567.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=wnzpbrK0-6Mwcyh-yTo7mg\" title=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-3\" /></p>\r\n\r\n<p>Hệ thống quản l&yacute; nước thải dựa tr&ecirc;n c&ocirc;ng nghệ IoT.</p>\r\n\r\n<p><img alt=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-4\" src=\"https://i1-sohoa.vnecdn.net/2016/07/08/IoT-4-4330-1467946567.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=1U3sn7VFQagdq5NvM2grvg\" title=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-4\" /></p>\r\n\r\n<p>Hệ thống quản l&yacute; v&agrave; kiểm so&aacute;t an ninh.</p>\r\n\r\n<p><img alt=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-5\" src=\"https://i1-sohoa.vnecdn.net/2016/07/08/IoT-6-4171-1467946567.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=93W9AUQaAKQfOWIhWrZ7vw\" title=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-5\" /></p>\r\n\r\n<p>Intel v&agrave; Dell l&agrave; hai trong số bốn nh&agrave; s&aacute;ng lập HIL.</p>\r\n\r\n<p><img alt=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-6\" src=\"https://i1-sohoa.vnecdn.net/2016/07/08/IoT-7-3579-1467946567.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=PLOB_FhcU7-iAO2dKP70hQ\" title=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-6\" /></p>\r\n\r\n<p>Camera gi&aacute;m s&aacute;t từ xa.</p>\r\n\r\n<p><img alt=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-7\" src=\"https://i1-sohoa.vnecdn.net/2016/07/08/IoT-8-6632-1467946567.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kiEpT80TYgTmphSk8olqoQ\" title=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-7\" /></p>\r\n\r\n<p>Thu h&uacute;t nhất l&agrave; c&aacute;c sản phẩm của nh&oacute;m bạn trẻ Maker H&agrave; Nội.</p>\r\n\r\n<p><img alt=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-8\" src=\"https://i1-sohoa.vnecdn.net/2016/07/08/IoT-9-8715-1467946567.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=MDDru4NoRTIxFhvD-EhLEA\" title=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-8\" /></p>\r\n\r\n<p>Maker H&agrave; Nội đ&atilde; trưng b&agrave;y một số sản phẩm in 3D do c&aacute;c b&eacute; từ 8 đến 10 tuổi lập tr&igrave;nh.</p>\r\n\r\n<p><img alt=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-9\" src=\"https://i1-sohoa.vnecdn.net/2016/07/08/IoT-10-4695-1467946567.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=VFNpTSdDfZY8cv087MJVDA\" title=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-9\" /></p>\r\n\r\n<p>C&aacute;c m&oacute;n đồ chơi, m&oacute;c ch&igrave;a kh&oacute;a&nbsp;in từ m&aacute;y in&nbsp;3D.</p>\r\n\r\n<p><img alt=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-10\" src=\"https://i1-sohoa.vnecdn.net/2016/07/08/IoT-11-4158-1467946567.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=TIcFuViyc0GIl8yRFjdJTQ\" title=\"phong-thi-nghiem-san-phm-iot-khai-truong-tai-ha-noi-10\" /></p>\r\n\r\n<p>Hay c&aacute;nh tay robot do một th&agrave;nh vi&ecirc;n Maker H&agrave; Nội lắp đặt.</p>\r\n\r\n<p><strong>Ch&acirc;u An</strong>&nbsp;</p>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN AMZ VIỆT NAM</strong><br />\r\n<strong>Địa chỉ:</strong>&nbsp;Số 215 Đường Quyết Thắng, Tổ 8 P. Y&ecirc;n Nghĩa, Q. H&agrave; Đ&ocirc;ng, Tp. H&agrave; Nội<br />\r\n<strong>Web:</strong>&nbsp;<a href=\"https://amz.com.vn/\" rel=\"nofollow\" target=\"_blank\">https://amz.com.vn</a><br />\r\n<strong>Email:</strong>&nbsp;kinhdoanh@amz.com.vn; tvduc@amz.com.vn<br />\r\n<strong>ĐT:</strong>&nbsp;024 8586 3288, 0989 136 168</p>', '8', NULL, 'Phòng thí nghiệm sản phẩm IoT khai trương tại Hà Nội', NULL, NULL, '2023-08-07 05:25:48', '2023-08-07 05:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `order` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `images` text DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `short_description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `seo_meta_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `title`, `slug`, `order`, `active`, `images`, `parent_id`, `short_description`, `content`, `seo_meta_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(8, 'Tin tức', 'tin-tuc', 0, 1, NULL, 0, NULL, NULL, 'Tin tức', NULL, '2022-08-15 00:22:55', '2022-08-15 00:22:55'),
(9, 'Tuyển dụng', 'tuyen-dung', 0, 1, NULL, 0, NULL, NULL, 'Tuyển dụng', NULL, '2023-02-15 07:19:18', '2023-08-07 04:32:27'),
(10, 'Tin tức nội bộ', 'tin-tuc-noi-bo', 0, 1, NULL, 0, NULL, NULL, 'Tin tức nội bộ', NULL, '2023-02-15 07:19:25', '2023-08-07 05:11:07'),
(11, 'Hoạt động xã hội', 'hoat-dong-xa-hoi', 0, 1, NULL, 0, NULL, NULL, 'Hoạt động xã hội', NULL, '2023-02-15 07:19:34', '2023-08-07 05:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `news_tag`
--

CREATE TABLE `news_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `content` longtext DEFAULT NULL,
  `seo_meta_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `deliveries_address` text NOT NULL,
  `order_sumary` decimal(13,2) NOT NULL,
  `payment_method` varchar(191) NOT NULL,
  `payment_status` varchar(191) NOT NULL,
  `order_status` varchar(191) NOT NULL,
  `total_pay` decimal(13,2) NOT NULL,
  `ship_fee` decimal(13,2) DEFAULT NULL,
  `discount` decimal(13,2) DEFAULT NULL,
  `deliveries_id` int(11) DEFAULT NULL,
  `deliveries_code` text DEFAULT NULL,
  `deliveries_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `customer_phone`, `customer_name`, `deliveries_address`, `order_sumary`, `payment_method`, `payment_status`, `order_status`, `total_pay`, `ship_fee`, `discount`, `deliveries_id`, `deliveries_code`, `deliveries_status`, `created_at`, `updated_at`) VALUES
(1, 1, '0976852147', 'Nguyễn Tuấn', 'Hà nội', 18000000.00, '-1', 'cho-thanh-toan', 'cho-xac-nhan', 18000000.00, 0.00, 0.00, NULL, NULL, 'cho-xac-nhan', '2023-08-08 00:01:26', '2023-08-08 00:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 19, 1, '2023-08-08 00:01:26', '2023-08-08 00:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `order` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `short_description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `images` text DEFAULT NULL,
  `display_type` varchar(255) DEFAULT NULL,
  `seo_meta_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `seo_meta_images` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `order`, `active`, `short_description`, `content`, `images`, `display_type`, `seo_meta_title`, `seo_meta_description`, `seo_meta_images`, `created_at`, `updated_at`) VALUES
(15, 'Hợp tác kinh doanh', 'hop-tac-kinh-doanh', 1, 1, 'Là một trong những công ty hàng đầu tại Việt Nam trong lĩnh vực nhập khẩu , phân phối, cung cấp, lắp đặt  máy móc chuyên dùng trong hệ thống giặt là công nghiệp, Thăng Long cung cấp hệ thống giặt, sấy, là của các thương hiệu nổi tiếng như: SANYO, YAMAMOTO, ASAHI, NIPPER,INAMOTO,ELECTROLUX, UNIMAC, PRIMUS,IPSO, MILNOR…', NULL, 'images/hop-dong-hop-tac-kinh-doanh.jpg', NULL, 'Hợp tác kinh doanh', NULL, NULL, '2023-02-09 01:27:06', '2023-08-07 04:12:44'),
(25, 'Giải pháp audio - video call', 'giai-phap-audio-video-call', 1, 1, NULL, '<p><img class=\"img-responsive\" title=\"gt.jpg\" src=\"/storage/uploads/z5xjIcLNzMiYRWFjiwYoqPIJp7i9bSJU2KQP3uvG.jpg\" alt=\"\" width=\"100%\"></p>\r\n<p>Giải ph&aacute;p Audio &ndash; Video call độ trễ thấp d&agrave;nh cho nh&agrave; m&aacute;y, c&ocirc;ng sở l&agrave; c&ocirc;ng nghệ cho ph&eacute;p bạn tổ chức cuộc họp với mọi người được đặt ở những nơi kh&aacute;c nhau trong khi nh&igrave;n thấy họ v&agrave; n&oacute;i chuyện với họ trong thời gian thực. N&oacute; kh&aacute;c với cuộc gọi video đơn giản, thường l&agrave; giao tiếp video một-một.</p>\r\n<p>Nếu bạn tổ chức c&aacute;c cuộc họp thường xuy&ecirc;n li&ecirc;n quan đến một số lượng người&nbsp;lớn th&igrave; h&atilde;y sử dụng Giải ph&aacute;p Audio &ndash; Video call độ trễ thấp d&agrave;nh cho nh&agrave; m&aacute;y, c&ocirc;ng sở. Lợi &iacute;ch bao gồm:<br>&nbsp;<br>Giảm chi ph&iacute; đi lại: Chuyến bay, thu&ecirc; xe, kh&aacute;ch sạn<br>Tiết kiệm thời gian: Cuộc họp tức th&igrave;!<br>Tăng năng suất<br>Tăng Cộng t&aacute;c<br>Cải thiện giao tiếp<br>Cho ph&eacute;p c&aacute;c cuộc họp đa điểm tr&ecirc;n c&aacute;c m&uacute;i giờ v&agrave; ranh giới quốc tế<br>C&oacute; sẵn dưới dạng giải ph&aacute;p phần cứng hoặc phần mềm hội nghị truyền h&igrave;nh<br>Giảm lượng kh&iacute; thải carbon của c&ocirc;ng ty bạn</p>', NULL, 'sidebar-right', 'Giải pháp audio - video call', NULL, NULL, '2023-08-07 04:15:56', '2023-08-07 04:24:29'),
(26, 'Dịch vụ', 'dich-vu', 1, 1, NULL, '<div style=\"padding-top: 80px;\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-sm-5\"><img class=\"img-responsive\" title=\"giaiphap1.jpg\" src=\"/storage/uploads/QliuP111tmEiDvgaE4GyjwCL9IOMKTtST7Uiy2dt.jpg\" alt=\"\" width=\"100%\"></div>\r\n<div class=\"col-12 col-sm-7\">\r\n<h3 class=\"title\">Nghi&ecirc;n cứu, sản xuất</h3>\r\n<p>Nghi&ecirc;n cứu sản xuất l&agrave; thế mạnh của c&ocirc;ng ty v&agrave; l&agrave; đơn vị ti&ecirc;n phong trong lĩnh vực IOT.</p>\r\n<p><a class=\"button-white border\" href=\"#\">Chi tiết</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div style=\"padding-top: 80px;\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-sm-7\">\r\n<h3 class=\"title\">Ph&aacute;t triển phần mềm</h3>\r\n<p>Ph&aacute;t triển phần mềm l&agrave; một trong những lĩnh vực quan trọng trong thời đại c&ocirc;ng nghệ số. Phần mềm với v&ocirc; v&agrave;n những t&iacute;nh năng th&ocirc;ng minh, mang đến hiệu quả kinh doanh cao nhất.</p>\r\n<p><a class=\"button-white border\" href=\"#\">Chi tiết</a></p>\r\n</div>\r\n<div class=\"col-12 col-sm-5\"><img class=\"img-responsive\" title=\"giaiphap1.jpg\" src=\"/storage/uploads/QliuP111tmEiDvgaE4GyjwCL9IOMKTtST7Uiy2dt.jpg\" alt=\"\" width=\"100%\"></div>\r\n</div>\r\n</div>', NULL, 'fullpage', 'Dịch vụ', NULL, NULL, '2023-08-07 04:25:13', '2023-08-07 04:26:28'),
(27, 'Bảo hành', 'bao-hanh', 1, 1, NULL, '<p><strong><u>Thời hạn bảo h&agrave;nh thiết bị:</u>&nbsp;12 th&aacute;ng kể từ ng&agrave;y triển khai.</strong></p>\r\n<p><strong><u>Quy định về bảo h&agrave;nh</u></strong><br>-&nbsp;&nbsp;&nbsp;&nbsp; Sản phẩm được bảo h&agrave;nh miễn ph&iacute; nếu sản phẩm đ&oacute; c&ograve;n thời hạn bảo h&agrave;nh được t&iacute;nh kể từ ng&agrave;y giao h&agrave;ng.<br>-&nbsp;&nbsp;&nbsp;&nbsp; Thời hạn bảo h&agrave;nh được ghi tr&ecirc;n Phiếu Bảo H&agrave;nh v&agrave; theo quy định của từng h&atilde;ng sản xuất đối với tất cả c&aacute;c sự cố về mặt kỹ thuật của sản phẩm.<br>-&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; phiếu bảo h&agrave;nh v&agrave; tem bảo h&agrave;nh hợp lệ của c&ocirc;ng ty hoặc của h&atilde;ng sản xuất tr&ecirc;n sản phẩm.<br><strong><u>Những trường hợp kh&ocirc;ng được bảo h&agrave;nh</u></strong><br>-&nbsp;&nbsp;&nbsp;&nbsp; Sản phẩm đ&atilde; qu&aacute; hạn bảo h&agrave;nh ghi tr&ecirc;n phiếu hoặc mất Phiếu Bảo H&agrave;nh.<br>-&nbsp;&nbsp;&nbsp;&nbsp; Tem ni&ecirc;m phong bảo h&agrave;nh bị r&aacute;ch, vỡ, bị d&aacute;n đ&egrave; hoặc sửa đổi, tẩy x&oacute;a.<br>-&nbsp;&nbsp;&nbsp;&nbsp; Phiếu bảo h&agrave;nh kh&ocirc;ng ghi r&otilde; số Serial v&agrave; ng&agrave;y mua sản phẩm.<br>-&nbsp;&nbsp;&nbsp;&nbsp; Sản phẩm c&oacute; dấu hiệu hư hỏng do chuột bọ hoặc c&ocirc;n tr&ugrave;ng x&acirc;m nhập.</p>', NULL, 'sidebar-right', 'Bảo hành', NULL, NULL, '2023-08-07 04:27:20', '2023-08-07 04:27:30'),
(16, 'Hướng dẫn mua hàng', 'huong-dan-mua-hang', 1, 1, 'Để việc thanh toán cũng như việc giao nhận hàng thành công giữa đôi bên, Bạn vui lòng điền đầy đủ thông tin yêu cầu và chọn phương thức thanh toán thích hợp nhất.', NULL, 'images/thingsalwaysbuyonline.jpg', 'sidebar-right', 'Hướng dẫn mua hàng', NULL, NULL, '2023-02-09 01:42:19', '2023-08-07 04:12:35'),
(17, 'Hướng dẫn thanh toán', 'huong-dan-thanh-toan', 1, 1, 'Để việc thanh toán cũng như việc giao nhận hàng thành công giữa đôi bên, Bạn vui lòng điền đầy đủ thông tin yêu cầu và chọn phương thức thanh toán thích hợp nhất.', '<h2>PHƯƠNG THỨC THANH TO&Aacute;N &nbsp;</h2>\r\n<p>Để việc thanh to&aacute;n cũng như việc giao nhận h&agrave;ng th&agrave;nh c&ocirc;ng giữa đ&ocirc;i b&ecirc;n, Bạn vui l&ograve;ng điền đầy đủ th&ocirc;ng tin y&ecirc;u cầu v&agrave; chọn phương thức thanh to&aacute;n th&iacute;ch hợp nhất.</p>\r\n<p>C&aacute;c phương thức thanh to&aacute;n như sau:</p>\r\n<p>1.&nbsp;Thanh to&aacute;n tiền mặt cho người giao h&agrave;ng</p>\r\n<p>2.&nbsp;Chuyển khoản qua ng&acirc;n h&agrave;ng&nbsp;</p>\r\n<p>C&aacute;ch thức thanh to&aacute;n cụ thể như sau:</p>\r\n<h3>1.Thanh to&aacute;n tiền mặt cho người giao h&agrave;ng</h3>\r\n<p>a.Nếu địa điểm giao h&agrave;ng l&agrave; địa điểm thanh to&aacute;n th&igrave; AYZ VIỆT NAM sẽ thu tiền khi giao h&agrave;ng.</p>\r\n<p>b.Nếu địa điểm giao h&agrave;ng kh&aacute;c với địa điểm thanh to&aacute;n, AYZ VIỆT NAM sẽ thu tiền trước khi giao h&agrave;ng. Bạn sẽ được y&ecirc;u cầu cho biết cụ thể thời gian thanh to&aacute;n khi v&agrave;o đặt h&agrave;ng.C&aacute;c bạn c&oacute; thể thanh to&aacute;n bằng tiền mặt tại c&aacute;c văn ph&ograve;ng sau đ&acirc;y:</p>\r\n<p>TỔNG KHO M&Aacute;Y GIẶT SẤY C&Ocirc;NG NGHIỆP THĂNG LONG</p>\r\n<p>ĐỊA CHỈ : KHU Đ&Ocirc; THỊ PH&Uacute; LƯƠNG - ĐƯỜNG VĂN KH&Ecirc; - QUẬN H&Agrave; Đ&Ocirc;NG - H&Agrave; NỘI</p>\r\n<p>Hotline: 0935873868 &nbsp;- &nbsp;0948367009</p>\r\n<h3>2. Chuyển khoản qua ng&acirc;n h&agrave;ng</h3>\r\n<p>Qu&yacute; kh&aacute;ch thanh to&aacute;n qua ng&acirc;n h&agrave;ng, vui l&ograve;ng chuyển tiền đến c&ocirc;ng ty ch&uacute;ng t&ocirc;i theo như t&ecirc;n người nh&acirc;n dưới đ&acirc;y. Khi nhận được giấy b&aacute;o nhận tiền từ ng&acirc;n h&agrave;ng, ch&uacute;ng t&ocirc;i sẽ thực hiện đơn h&agrave;ng theo y&ecirc;u cầu của Qu&yacute; kh&aacute;ch.Th&ocirc;ng tin người nhận như sau:</p>\r\n<p>T&Agrave;I KHOẢN 1 : C&Ocirc;NG TY CỔ PHẦN XUẤT NHẬP KHẨU AYZ VIỆT NAM</p>\r\n<p>STK &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : 1032 1482 886018</p>\r\n<p>TẠI &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : NG&Acirc;N H&Agrave;NG TECHCOMBANK LINH Đ&Agrave;M &ndash; CHI NH&Aacute;NH THĂNG LONG &ndash; H&Agrave; NỘI&nbsp;</p>\r\n<p></p>\r\n<p>T&Agrave;I KHOẢN 2: C&Ocirc;NG TY CỔ PHẦN XUẤT NHẬP KHẨU AYZ VIỆT NAM</p>\r\n<p>STK &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: 1500 2010 83880</p>\r\n<p>TẠI &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: NG&Acirc;N H&Agrave;NG N&Ocirc;NG NGHIỆP V&Agrave; PH&Aacute;T TRIỂN N&Ocirc;NG TH&Ocirc;N &ndash; CHI NH&Aacute;NH H&Agrave; NỘI</p>\r\n<p></p>\r\n<p>T&Agrave;I KHOẢN 3 &nbsp;: PHẠM TUẤN DƯƠNG</p>\r\n<p>STK &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: 1482 2050 15727</p>\r\n<p>TẠI &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: NG&Acirc;N H&Agrave;NG N&Ocirc;NG NGHIỆP H&Ugrave;NG VƯƠNG &ndash; CHI NH&Aacute;NH H&Agrave; NỘI</p>\r\n<p>Sau khi nhận được tiền, AYZ VIỆT NAM &nbsp;sẽ gửi h&agrave;ng tới qu&yacute; vị ngay.Qu&yacute; vị sẽ nhận được h&agrave;ng trong v&ograve;ng từ 1 đến 24h, tuỳ theo địa điểm giao h&agrave;ng, qua dịch vụ chuyển ph&aacute;t nhanh của bưu điện H&agrave; Nội hoặc một trong c&aacute;c nh&agrave; cung cấp dịch vụ chuyển ph&aacute;t nhanh kh&aacute;c (c&oacute; thể tuỳ theo y&ecirc;u cầu của qu&yacute; vị).&nbsp;</p>\r\n<p>&ndash; Về bảo h&agrave;nh, AYZ VIỆT NAM cam kết bảo h&agrave;nh sản phẩm trong &iacute;t nhất hết thời gian bảo h&agrave;nh sản phẩm, đ&uacute;ng như đ&atilde; cam kết.</p>\r\n<p>&ndash; Nếu qu&yacute; vị ở xa, kh&ocirc;ng thuận tiện đưa sản phẩm đế tận địa điểm bảo h&agrave;nh của AYZ VIỆT NAM. AYZ VIỆT NAM sẽ c&oacute; hỗ trợ kỹ thuật qua điện thoại hoặc email cho tới khi qu&yacute; kh&aacute;ch sử dụng tốt được sản phẩm của HO&Agrave;NG AYZ VIỆT NAM b&aacute;n ra.</p>\r\n<p>&ndash; Bản th&acirc;n AYZ VIỆT NAM &nbsp;cũng sẽ cung cấp đầy đủ hướng dẫn sử dụng tới qu&yacute; vị ngay khi giao h&agrave;ng ho&aacute;.</p>\r\n<p>&ndash; Trường hợp bất khả kh&aacute;ng, qu&yacute; vị c&oacute; thể gửi gi&uacute;p hộ sản phẩm cần bảo h&agrave;nh qua đường chuyển ph&aacute;t nhanh. AYZ VIỆT NAM &nbsp;sẽ bảo h&agrave;nh cho qu&yacute; kh&aacute;ch. Trường hợp sản phẩm kh&ocirc;ng thể bảo h&agrave;nh nhanh được, AYZ VIỆT NAM sẽ đổi mới (tất nhi&ecirc;n tuỳ theo từng sản phẩm c&oacute; hỗ trợ của nh&agrave; sản xuất hay kh&ocirc;ng). Ph&iacute; vận chuyển cho việc bảo h&agrave;nh rủi ro l&agrave; do hai b&ecirc;n c&ugrave;ng chịu, mỗi b&ecirc;n chịu một nửa.</p>\r\n<p>&ndash; Trường hợp, qu&yacute; vị c&oacute; thể chi trả được chi ph&iacute; đi lại, AYZ VIỆT NAM c&oacute; thể hỗ trợ bảo h&agrave;nh tại địa chỉ của qu&yacute; vị.</p>\r\n<p>&ndash; Đối với sản phẩm do AYZ VIỆT NAM &nbsp;lắp đặt tận nơi, trong nội th&agrave;nh H&agrave; Nội, AYZ VIỆT NAM chịu tr&aacute;ch nhiệm bảo h&agrave;nh miễn ph&iacute; tận nơi.</p>\r\n<p>Rất mong sự hợp t&aacute;c l&acirc;u d&agrave;i của qu&yacute; vị !</p>\r\n<p>K&iacute;nh ch&uacute;c qu&yacute; kh&aacute;ch h&agrave;ng l&agrave;m ăn ph&aacute;t đạt!</p>\r\n<p>H&atilde;y cho ch&uacute;ng t&ocirc;i biết bạn h&agrave;i l&ograve;ng với dịch vụ của ch&uacute;ng t&ocirc;i. Like v&agrave; comment nh&eacute;!</p>', 'images/Huong-dan-thanh-toan-anh-mo-ta.jpg', NULL, 'Hướng dẫn thanh toán', 'Để việc thanh toán cũng như việc giao nhận hàng thành công giữa đôi bên, Bạn vui lòng điền đầy đủ thông tin yêu cầu và chọn phương thức thanh toán thích hợp nhất.', NULL, '2023-02-09 01:46:10', '2023-02-09 01:46:10'),
(18, 'Phương thức vận chuyển', 'phuong-thuc-van-chuyen', 1, 1, 'Vận chuyển và lắp đặt toàn quốc', '<p>Vận chuyển v&agrave; lắp đặt to&agrave;n quốc&nbsp;</p>', 'images/phuong-thuc-van-chuyenb.jpg', 'sidebar-right', 'Phương thức vận chuyển', 'Vận chuyển và lắp đặt toàn quốc', NULL, '2023-02-09 01:47:25', '2023-08-07 04:12:22'),
(19, 'Chính sách đổi trả hàng', 'chinh-sach-doi-tra-hang', 1, 1, 'Chính sách đổi trả hàng', '<p><strong>Ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng</strong></p>', 'images/chinh-sach-doi-tra.jpg', 'sidebar-right', 'Chính sách đổi trả hàng', 'Chính sách đổi trả hàng', NULL, '2023-02-09 01:48:32', '2023-08-07 04:12:19'),
(20, 'Chính sách đại lý', 'chinh-sach-dai-ly', 1, 1, 'HIỆN TẠI CỞ SỞ SẢN XUẤT MÁY GIẶT CÔNG NGHIỆP THĂNG LONG ĐANG CÓ CHIẾN LƯỢC MỞ RỘNG KINH DOANH TẠI TẤT CẢ CÁC TỈNH THÀNH VIỆT NAM', '<p>Ch&iacute;nh s&aacute;ch đại l&yacute;</p>\r\n<p>HIỆN TẠI CỞ SỞ SẢN XUẤT M&Aacute;Y GIẶT C&Ocirc;NG NGHIỆP THĂNG LONG ĐANG C&Oacute; CHIẾN LƯỢC MỞ RỘNG KINH DOANH TẠI TẤT CẢ C&Aacute;C TỈNH TH&Agrave;NH VIỆT NAM</p>\r\n<p>VẬY C&Aacute;C ĐƠN VỊ N&Agrave;O MUỐN MUA BU&Ocirc;N VỚI CHIẾT KHẤU CAO VUI L&Ograve;NG LI&Ecirc;N LẠC TRỰC TIẾP&nbsp;</p>\r\n<p>GẶP A DƯƠNG ( GI&Aacute;M ĐỐC KINH DOANH ) 0935873868</p>\r\n<p><strong>TỔNG KHO M&Aacute;Y GIẶT SẤY C&Ocirc;NG NGHIỆP THĂNG LONG</strong></p>\r\n<p><strong>ĐỊA CHỈ : KHU Đ&Ocirc; THỊ PH&Uacute; LƯƠNG - ĐƯỜNG VĂN KH&Ecirc; - QUẬN H&Agrave; Đ&Ocirc;NG - H&Agrave; NỘI</strong></p>\r\n<p><strong>Hotline:&nbsp;0935873868&nbsp; -&nbsp; 0948367009</strong></p>\r\n<p><strong>Thăng Long</strong>&nbsp;xin k&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch , c&aacute;m ơn qu&yacute; kh&aacute;ch đ&atilde; quan t&acirc;m đến sản phẩm của ch&uacute;ng t&ocirc;i .&nbsp;</p>\r\n<p>L&agrave; một trong những c&ocirc;ng ty h&agrave;ng đầu tại Việt Nam trong lĩnh vực nhập khẩu ,&nbsp;ph&acirc;n phối, cung cấp, lắp đặt &nbsp;m&aacute;y m&oacute;c chuy&ecirc;n d&ugrave;ng trong hệ thống giặt l&agrave; c&ocirc;ng nghiệp, Thăng Long cung cấp hệ thống&nbsp;giặt,&nbsp;sấy,&nbsp;l&agrave;&nbsp;của c&aacute;c thương hiệu nổi tiếng như:&nbsp;SANYO, YAMAMOTO, ASAHI, NIPPER,INAMOTO,ELECTROLUX, UNIMAC, PRIMUS,IPSO, MILNOR&hellip;</p>\r\n<p>B&ecirc;n cạnh đ&oacute;&nbsp;<strong>Thăng Long</strong>&nbsp;l&agrave; ph&acirc;n phối độc quyền c&aacute;c loại m&aacute;y m&oacute;c, thiết bị ng&agrave;nh giặt l&agrave; của Shanghai Flying Fish Machinery Manufacturing CO., Ltd. Tại Việt Nam</p>\r\n<p><strong>Thăng Long</strong>&nbsp;c&oacute; đội ngũ tư vấn b&aacute;n h&agrave;ng nhiệt t&igrave;nh, sẵn s&agrave;ng đ&aacute;p ứng cao nhất những y&ecirc;u cầu của qu&yacute; kh&aacute;ch h&agrave;ng. Ch&uacute;ng t&ocirc;i&nbsp;c&oacute; đội ngũ kỹ thuật vi&ecirc;n, kỹ sư l&agrave;nh nghề c&oacute; khả năng ho&agrave;n th&agrave;nh những bản thiết kế phức tạp nhất đ&aacute;p ứng nhanh nhất cho kh&aacute;ch h&agrave;ng.</p>\r\n<p><strong>Thăng Long</strong>&nbsp;cung cấp h&oacute;a chất tẩy rửa, tư vấn cho kh&aacute;ch h&agrave;ng qu&aacute; tr&igrave;nh sử l&yacute; đồ vải, ch&uacute;ng t&ocirc;i luỗn hỗ trợ kh&aacute;ch h&agrave;ng bất kỳ l&uacute;c n&agrave;o kh&aacute;ch h&agrave;ng cần</p>\r\n<p><strong>Thăng Long</strong>nhận&nbsp;tư vấn, thiết kế, cung cấp, lắp đặt, thay thế, bảo tr&igrave;, bảo h&agrave;nh to&agrave;n bộ c&aacute;c sản phẩm m&agrave; ch&uacute;ng t&ocirc;i cung cấp cho qu&yacute; kh&aacute;ch h&agrave;ng trong thời gian nhanh nhất.</p>\r\n<p><strong>Thăng Long</strong>&nbsp;mong muốn mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm tốt nhất, dịch vụ chăm s&oacute;c kh&aacute;ch h&agrave;ng, dịch vụ kỹ thuật tốt nhất, chế độ bảo tr&igrave;, bảo h&agrave;nh l&acirc;u d&agrave;i, tận tụy với chi ph&iacute; hợp l&yacute; nhất nhằm tối ưu h&oacute;a khoản đầu tư cho hệ thống giặt l&agrave; của qu&yacute; kh&aacute;ch h&agrave;ng</p>\r\n<p>Sản phẩm&nbsp; m&aacute;y giặt c&ocirc;ng nghiệp ,&nbsp;m&aacute;y sấy c&ocirc;ng nghiệp&nbsp;của ch&uacute;ng t&ocirc;i&nbsp;được sử dụng rộng r&atilde;i trong c&aacute;c&nbsp;bệnh viện, c&aacute;c trung t&acirc;m giặt l&agrave; chuy&ecirc;n nghiệp, nh&agrave; h&agrave;ng, tiệm giặt l&agrave;,&nbsp;kh&aacute;ch sạn, trường học, t&agrave;u biển...</p>\r\n<p>Đến với&nbsp;<strong>Thăng Long</strong>, Qu&yacute; kh&aacute;ch h&agrave;ng sẽ lu&ocirc;n h&agrave;i l&ograve;ng về sản phẩm, dịch vụ, gi&aacute; cả m&agrave; ch&uacute;ng t&ocirc;i cung cấp.</p>\r\n<p><img src=\"/storage/uploads/WN7rBXZzNhOMJUQv7OTc9TKBCoBTvpcaXeH4NeVN.jpg\">&nbsp;</p>\r\n<p>Với ti&ecirc;u ch&iacute; mang đến cho kh&aacute;ch h&agrave;ng sản phẩm v&agrave; dịch vụ tốt nhất, ch&uacute;ng t&ocirc;i đồng thời tư vấn v&agrave; cung cấp cho kh&aacute;ch h&agrave;ng giải ph&aacute;p c&ocirc;ng nghệ giặt l&agrave; nhằm mục đ&iacute;ch:</p>\r\n<p>- Tối ưu ho&aacute; hoạt động của m&aacute;y m&oacute;c v&agrave; thiết bị giặt l&agrave; sao cho đạt hiệu suất cao nhất.</p>\r\n<p>- Tiết kiệm lượng nước ti&ecirc;u thụ cho mỗi mẻ giặt từ 15% đến 40% so với c&aacute;c hệ thống m&aacute;y giặt c&ocirc;ng nghiệp thường. C&oacute; chế độ t&aacute;i sử dụng&nbsp;nước t&ugrave;y&nbsp;theo chương tr&igrave;nh giặt.</p>\r\n<p>- Tiết kiệm năng lượng điện ti&ecirc;u thụ cho mỗi mẻ giặt: từ 20% đến 40% so với c&aacute;c hệ thống m&aacute;y giặt c&ocirc;ng nghiệp th&ocirc;ng thường. Tất cả c&aacute;c m&aacute;y đều sử dụng biến tần điều khiển động cơ tiết kiệm năng lượng. Hệ thống ph&acirc;n t&iacute;ch v&agrave; đo lường tải để lựa chọn chương tr&igrave;nh hoạt động ph&ugrave; hợp nhất.</p>\r\n<p>- Hệ thống xử l&yacute; nước thải th&ocirc;ng minh v&agrave; hiện đại gi&uacute;p đảm bảo nước thải ra m&ocirc;i trường đ&aacute;p ứng c&aacute;c ti&ecirc;u ch&iacute; bảo vệ m&ocirc;i trường, kh&ocirc;ng g&acirc;y hại.</p>\r\n<p>- Sử dụng hệ thống điều khiển th&ocirc;ng minh gi&uacute;p giảm chi ph&iacute; nh&acirc;n c&ocirc;ng vận h&agrave;nh v&agrave; chi ph&iacute; năng lượng, vật tư ti&ecirc;u hao</p>\r\n<p><img src=\"http://maygiatcongnghiepthanglong.com/source/909b2c1a4f51860fdf40.jpg\"></p>\r\n<p>&nbsp;D&acirc;y chuyền xưởng giặt l&agrave; c&ocirc;ng nghiệp</p>\r\n<p>Với phương ch&acirc;m&nbsp;đặt lợi&nbsp;&iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n cao nhất , Ch&uacute;ng t&ocirc;i xin :</p>\r\n<p>- Cam kết cung cấp hệ thống giặt l&agrave; theo c&ocirc;ng nghệ ti&ecirc;n tiến nhất.</p>\r\n<p>- Cam kết cung cấp cho kh&aacute;ch h&agrave;ng sản phẩm với thương hiệu h&agrave;ng đầu thế giới.</p>\r\n<p>- Cam kết cung cấp cho kh&aacute;ch h&agrave;ng sản phẩm v&agrave; dịch vụ với chất lượng cao nhất.</p>\r\n<p>- Cam kết cung cấp hệ thống giặt l&agrave; cho kh&aacute;ch h&agrave;ng với gi&aacute; cả hợp l&yacute; nhất.</p>\r\n<p>- Cam kết sẽ đồng h&agrave;nh với qu&yacute; kh&aacute;ch h&agrave;ng trong suốt thời gian v&ograve;ng đời của m&aacute;y m&oacute;c.&nbsp;</p>\r\n<p>&nbsp; &nbsp;Rất h&acirc;n hạnh&nbsp;được phục vụ qu&yacute; kh&aacute;ch !</p>\r\n<p><strong>TỔNG KHO M&Aacute;Y GIẶT SẤY C&Ocirc;NG NGHIỆP THĂNG LONG</strong></p>\r\n<p><strong>ĐỊA CHỈ : KHU Đ&Ocirc; THỊ PH&Uacute; LƯƠNG - ĐƯỜNG VĂN KH&Ecirc; - QUẬN H&Agrave; Đ&Ocirc;NG - H&Agrave; NỘI</strong></p>\r\n<p><strong>Hotline:&nbsp;0935873868&nbsp; -&nbsp; 0948367009</strong></p>', 'images/chinh-sach-dai-ly.jpg', 'sidebar-right', 'Chính sách đại lý', 'HIỆN TẠI CỞ SỞ SẢN XUẤT MÁY GIẶT CÔNG NGHIỆP THĂNG LONG ĐANG CÓ CHIẾN LƯỢC MỞ RỘNG KINH DOANH TẠI TẤT CẢ CÁC TỈNH THÀNH VIỆT NAM', NULL, '2023-02-09 01:49:51', '2023-08-07 04:12:16'),
(21, 'Giới thiệu', 'gioi-thieu', 1, 1, NULL, '<div class=\"container\">\r\n<h2 style=\"margin-top: 10px; margin-bottom: 20px; text-align: center;\"><span style=\"font-size: 36px;\"><span style=\"color: #ea3d01;\">TẠO RA C&Aacute;C SẢN PHẨM CHẤT LƯỢNG</span></span></h2>\r\n<h3 style=\"text-align: center; margin-top: 10px; margin-bottom: 20px;\"><span style=\"color: #000000;\"><span style=\"font-size: 28px;\">C&ocirc;ng ty Cổ Phần AMZ Việt Nam (AMZ., JSC)</span></span></h3>\r\n<p style=\"text-align: center;\">C&ocirc;ng ty AMZ Việt Nam hoạt động chuy&ecirc;n nghiệp trong lĩnh vực ph&acirc;n phối c&aacute;c thiết bị viễn th&ocirc;ng, c&ocirc;ng nghệ th&ocirc;ng tin, điện, ph&aacute;t thanh - truyền h&igrave;nh v&agrave; thiết bị đo lường, kiểm nghiệm.</p>\r\n<p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"/storage/trang/about-1.jpg.webp\" alt=\"giới thiệu\"></p>\r\n<p>&nbsp;</p>\r\n<p>Thế mạnh của AMZ Việt Nam l&agrave; đội ngũ kĩ thuật c&oacute; nền tảng s&acirc;u về c&ocirc;ng nghệ, ch&uacute;ng t&ocirc;i đ&atilde; trải qua việc sản xuất c&aacute;c sản phẩm đến h&agrave;ng triệu thiết bị, ch&uacute;ng t&ocirc;i chắc chắn rằng bạn sẽ h&agrave;i l&ograve;ng khi t&igrave;m kiếm c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ ở ch&uacute;ng t&ocirc;i, t&ocirc;n chỉ của ch&uacute;ng t&ocirc;i l&agrave; đem đến sản phẩm chất lượng cho kh&aacute;ch h&agrave;ng, ch&uacute;ng t&ocirc;i kh&ocirc;ng cạnh tranh về gi&aacute;, cũng như kh&ocirc;ng t&igrave;m c&aacute;ch giảm chất lượng sản phẩm của kh&aacute;ch h&agrave;ng. Vậy n&ecirc;n, triết l&yacute;&nbsp;x&acirc;y dựng sản phẩm của AMZ việt nam l&agrave;&nbsp;chất lượng tốt, dịch vụ chất lượng, ph&ugrave; hợp nhu cầu của c&aacute; nh&acirc;n, doanh nghiệp v&agrave; tổ chức.&nbsp;</p>\r\n<p>AMZ Việt Nam hy vọng c&oacute; cơ hội hợp t&aacute;c với c&aacute;c doanh nghiệp để tạo ra c&aacute;c sản phẩm chất lượng, cạnh tranh tr&ecirc;n thị trường, v&agrave; ghi những d&ograve;ng như &ldquo;<strong>Made in VietNam</strong>&rdquo;, &ldquo;<strong>Design in VietNam</strong>&rdquo;, &ldquo;<strong>Design by &lsquo;C&ocirc;ng ty AMZ&rsquo;</strong>&rdquo; l&ecirc;n ch&iacute;nh sản phẩm của người Việt.</p>\r\n</div>\r\n<div class=\"container-fluid bg-gray my-5\" style=\"padding: 85px 15px 85px 15px;\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-sm-4 mb-4\">\r\n<div class=\"about3col\">\r\n<div class=\"d-flex justify-content-start align-items-center mb-3\"><img class=\"img-responsive\" title=\"su-menh.svg\" src=\"/storage/uploads/wRQJf0sUJPkhwhj6NwdlsHTVbidQcCzWdG52pjx9.svg\" alt=\"\" width=\"50\" height=\"50\">\r\n<h3 class=\"ms-2 mb-0 text-uppercase\">Sứ mệnh</h3>\r\n</div>\r\n<p>Ứng dụng c&ocirc;ng nghệ mới về lĩnh vực điện tử viễn th&ocirc;ng, truyền thanh th&ocirc;ng minh IP 4G, truyền thanh kh&ocirc;ng d&acirc;y FM, truyền h&igrave;nh, &acirc;m thanh c&ocirc;ng cộng, &acirc;m thanh th&ocirc;ng b&aacute;o với c&aacute;c c&ocirc;ng nghệ nổi mới nhất như: truyền thanh th&ocirc;ng minh IP ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin-viễn th&ocirc;ng, &acirc;m thanh đa v&ugrave;ng ...</p>\r\n</div>\r\n</div>\r\n<div class=\"col-12 col-sm-4 mb-4\">\r\n<div class=\"about3col\">\r\n<div class=\"d-flex justify-content-start align-items-center mb-3\"><img class=\"img-responsive\" title=\"gia-tri.svg\" src=\"/storage/uploads/NPCCLDyzSHODzb61ep2xLJ0DiiU5ieXT0CLTKfbU.svg\" alt=\"\" width=\"50\" height=\"50\">\r\n<h3 class=\"ms-2 mb-0 text-uppercase\">Gi&aacute; trị</h3>\r\n</div>\r\n<p>Đo&agrave;n kết v&agrave; nhiệt huyết sẽ đi đến th&agrave;nh c&ocirc;ng!</p>\r\n</div>\r\n</div>\r\n<div class=\"col-12 col-sm-4 mb-4\">\r\n<div class=\"about3col\">\r\n<div class=\"d-flex justify-content-start align-items-center mb-3\"><img class=\"img-responsive\" title=\"muc-tieu.svg\" src=\"/storage/uploads/dQ6skoLP6tiC5jVwreRG38ouAjdlaF600AbrgdV5.svg\" alt=\"\" width=\"50\" height=\"50\">\r\n<h3 class=\"ms-2 mb-0 text-uppercase\">Mục ti&ecirc;u</h3>\r\n</div>\r\n<p>Trở th&agrave;nh đơn vị ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; viễn th&ocirc;ng lớn nhất trong nước cũng như Đ&ocirc;ng nam &aacute;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container\">\r\n<h3 class=\"my-4\">Ban gi&aacute;m đốc</h3>\r\n<div class=\"row\">\r\n<div class=\"col-12 col-sm-4\">\r\n<div class=\"about-image\"><img class=\"img-responsive\" title=\"ourteam-1.jpg.webp\" src=\"/storage/uploads/CIxL1eumHF1fiVk1232h2YAV4DzyWUo6sdYgjL1I.webp\" alt=\"\" width=\"450\" height=\"501\"></div>\r\n<div class=\"mt-2\"><strong>&Ocirc;ng Thẩm Việt Đức</strong></div>\r\n<div>\r\n<p class=\"text-gray\">Tổng gi&aacute;m đốc</p>\r\n<p><em>Chuy&ecirc;n gia cấp cao trong lĩnh vực truyền thanh, chuyển đổi số v&agrave; s&aacute;ng lập c&ocirc;ng ty.</em></p>\r\n</div>\r\n</div>\r\n<div class=\"col-12 col-sm-4\">\r\n<div class=\"about-image\"><img class=\"img-responsive\" title=\"ourteam-2.jpg.webp\" src=\"/storage/uploads/Y9222Ho53wMF10eHMAZSk9MzI1NBiddV5ox8FU7L.webp\" alt=\"\" width=\"450\" height=\"501\"></div>\r\n<div class=\"mt-2\"><strong>B&agrave; Vũ Thanh Thanh</strong></div>\r\n<div>\r\n<p class=\"text-gray\">Gi&aacute;m đốc T&agrave;i ch&iacute;nh</p>\r\n<p><em>Chuy&ecirc;n gia Trong lĩnh vực t&agrave;i ch&iacute;nh</em></p>\r\n</div>\r\n</div>\r\n<div class=\"col-12 col-sm-4\">\r\n<div class=\"about-image\"><img class=\"img-responsive\" title=\"ourteam-3.jpg.webp\" src=\"/storage/uploads/tnsPwz73ZG6cgWvbGegg246h1pC4YtapMQIMOZ51.webp\" alt=\"\" width=\"450\" height=\"501\"></div>\r\n<div class=\"mt-2\"><strong>&Ocirc;ng Nguyễn Huy T&ugrave;ng</strong></div>\r\n<div>\r\n<p class=\"text-gray\">Gi&aacute;m đốc C&ocirc;ng nghệ</p>\r\n<p><em>Chuy&ecirc;n gia cấp cao trong lĩnh vực ph&aacute;t triển phần mềm v&agrave; IoT</em></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, 'fullpage', 'Giới thiệu', NULL, NULL, '2023-02-09 01:51:49', '2023-08-08 19:59:34'),
(22, 'Liên hệ', 'lien-he', 1, 1, NULL, '<div class=\"mb-4\">\r\n<h3 style=\"font-size: 24px;\">C&Ocirc;NG TY CỔ PHẦN AMZ VIỆT NAM</h3>\r\n</div>\r\n<div class=\"mb-4\">\r\n<h3 style=\"font-size: 18px;\">TRỤ SỞ CH&Iacute;NH</h3>\r\n<hr>\r\n<p>Số 215 Đường Quyết Thắng, Tổ 8, P. Y&ecirc;n Nghĩa Q. H&agrave; Đ&ocirc;ng, TP. H&agrave; Nội</p>\r\n</div>\r\n<div class=\"mb-4\">\r\n<h3 style=\"font-size: 18px;\">THỜI GIAN L&Agrave;M VIỆC</h3>\r\n<hr>\r\n<p>Thứ 2 &ndash; Thứ 7: 8 AM &ndash; 6 PM</p>\r\n</div>\r\n<div class=\"mb-4\">\r\n<h3 style=\"font-size: 18px;\">TUYỂN DỤNG</h3>\r\n<hr>\r\n<p>Nếu bạn đang quan t&acirc;m tới c&ocirc;ng việc tại C&ocirc;ng ty cổ phần AMZ Việt Nam. Vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua email: <span style=\"background: yellow; color: #000; padding: 2px 5px;\">tuyendung@amz.com.vn</span></p>\r\n</div>', 'images/6601360f05d66f82a1e2757e16264bfb.jpg', 'fullpage', 'Liên hệ', NULL, NULL, '2023-02-09 01:55:37', '2023-08-07 04:12:10'),
(24, 'Giải pháp', 'giai-phap', 1, 1, NULL, '<div style=\"padding-top: 80px;\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-sm-5\"><img class=\"img-responsive\" title=\"giaiphap1.jpg\" src=\"/storage/uploads/QliuP111tmEiDvgaE4GyjwCL9IOMKTtST7Uiy2dt.jpg\" alt=\"\" width=\"100%\"></div>\r\n<div class=\"col-12 col-sm-7\">\r\n<h3 class=\"title\">Giải ph&aacute;p Audio &ndash; Video call độ trễ thấp d&agrave;nh cho nh&agrave; m&aacute;y, c&ocirc;ng sở</h3>\r\n<p>Giải ph&aacute;p Audio &ndash; Video call độ trễ thấp d&agrave;nh cho nh&agrave; m&aacute;y, c&ocirc;ng sở l&agrave; c&ocirc;ng nghệ cho ph&eacute;p bạn tổ chức cuộc họp với mọi người được đặt ở những nơi kh&aacute;c nhau trong khi nh&igrave;n thấy họ v&agrave; n&oacute;i chuyện với họ trong thời gian thực. N&oacute; kh&aacute;c với cuộc gọi video đơn giản, thường l&agrave; giao tiếp video một-một.</p>\r\n<p><a class=\"button-white border\" href=\"#\">Chi tiết</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div style=\"padding-top: 80px;\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-sm-7\">\r\n<h3 class=\"title\">Giải ph&aacute;p Audio &ndash; Video call độ trễ thấp d&agrave;nh cho nh&agrave; m&aacute;y, c&ocirc;ng sở</h3>\r\n<p>Giải ph&aacute;p Audio &ndash; Video call độ trễ thấp d&agrave;nh cho nh&agrave; m&aacute;y, c&ocirc;ng sở l&agrave; c&ocirc;ng nghệ cho ph&eacute;p bạn tổ chức cuộc họp với mọi người được đặt ở những nơi kh&aacute;c nhau trong khi nh&igrave;n thấy họ v&agrave; n&oacute;i chuyện với họ trong thời gian thực. N&oacute; kh&aacute;c với cuộc gọi video đơn giản, thường l&agrave; giao tiếp video một-một.</p>\r\n<p><a class=\"button-white border\" href=\"#\">Chi tiết</a></p>\r\n</div>\r\n<div class=\"col-12 col-sm-5\"><img class=\"img-responsive\" title=\"giaiphap1.jpg\" src=\"/storage/uploads/QliuP111tmEiDvgaE4GyjwCL9IOMKTtST7Uiy2dt.jpg\" alt=\"\" width=\"100%\"></div>\r\n</div>\r\n</div>', NULL, 'fullpage', 'Giải pháp', NULL, NULL, '2023-08-07 04:02:21', '2023-08-07 04:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_code` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `order` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `order` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `images` text DEFAULT NULL,
  `other_image` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `cate_id` varchar(255) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `deal_today` int(11) DEFAULT NULL,
  `best_seller` int(11) DEFAULT 0,
  `special_product` int(11) DEFAULT 0,
  `base_price` decimal(13,2) NOT NULL,
  `min_price` decimal(13,2) DEFAULT NULL,
  `sale_price` decimal(13,2) NOT NULL,
  `technical` longtext DEFAULT NULL,
  `seo_meta_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `order`, `active`, `images`, `other_image`, `banner`, `short_description`, `content`, `cate_id`, `brand_id`, `tags`, `hot`, `deal_today`, `best_seller`, `special_product`, `base_price`, `min_price`, `sale_price`, `technical`, `seo_meta_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Smartphone X Seri 02', 'smartphone-x-seri-02', 0, 1, 'images/Smartphone-X-seri-02-480x480.jpg.webp', 'images/Smartphone-X-seri-024-480x480.jpg.webp,images/Smartphone-X-seri-022-480x480.jpg.webp,images/071cd205a711842b5af831a361b8784c.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" style=\"height:571px; width:611px\" /></p>\r\n\r\n<h2 style=\"text-align:center\">Blast past fast.</h2>\r\n\r\n<p style=\"text-align:center\">A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p style=\"text-align:center\">An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" style=\"width:100%\" /></p>', '33', 1, '', 1, 1, 0, 0, 18500000.00, 16460000.00, 18000000.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Smartphone X Seri 02', NULL, '2023-08-03 23:47:17', '2023-08-08 03:25:38'),
(2, 'Bluetooth Wireless Speaker', 'bluetooth-wireless-speaker', 0, 1, 'images/bluetooth-wireless-speaker3-480x480.webp', 'images/bluetooth-wireless-speaker-480x480.webp,images/bluetooth-wireless-speaker2-480x480webp.webp,images/49bfcd80340189e6efcd84ac43486267.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera', '<h2><strong>Loa th&aacute;p Samsung MX-T40/XV &ndash; Khuấy động mọi bữa tiệc</strong></h2>\r\n\r\n<p>Tr&ecirc;n thị trường hiện c&oacute; rất nhiều sản phẩm &acirc;m thanh với kết cấu kỳ dị, nhưng d&ugrave; g&igrave;, th&igrave; &acirc;m thanh vẫn l&agrave; chất lượng cần quan t&acirc;m h&agrave;ng đầu. Nếu bạn cần t&igrave;m một chiếc loa sở hữu đầy đủ c&aacute;c yếu tố độc, lạ, hay th&igrave; h&atilde;y chọn loa<strong>&nbsp;Samsung MX-T40</strong>.</p>\r\n\r\n<h3><strong>Cấu tr&uacute;c th&aacute;p, dễ d&agrave;ng kết nối bluetooth</strong></h3>\r\n\r\n<p>Loa&nbsp;sở hữu kết cấu đặc biệt, khiến người ta li&ecirc;n tưởng đến c&aacute;c c&ocirc;ng tr&igrave;nh kiến tr&uacute;c vĩ đại như th&aacute;p Eiffel, Th&aacute;p Burj Khalifa,... V&igrave; thế kh&ocirc;ng chỉ để nghe nhạc m&agrave; sản phẩm c&ograve;n l&agrave; vật trang tr&iacute; nổi bật trong kh&ocirc;ng gian nh&agrave; bạn.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-7.jpg\" /></p>\r\n\r\n<p>Thiết kế của loa th&aacute;p Samsung MX T40 độc đ&aacute;o, ấn tượng. B&ecirc;n cạnh đ&oacute;, khả năng gh&eacute;p nối loa c&ugrave;ng 2 thiết bị di động 1 l&uacute;c gi&uacute;p bạn tận hưởng khoảnh khắc vui vẻ b&ecirc;n bạn b&egrave;, người th&acirc;n.</p>\r\n\r\n<h3><strong>C&ocirc;ng suất mạnh mẽ 300W, bass booster b&ugrave;ng nổ kh&ocirc;ng gian</strong></h3>\r\n\r\n<p>C&ocirc;ng suất của loa th&aacute;p&nbsp;<strong>MX-T40</strong>&nbsp;l&ecirc;n đến 300W - lớn gấp nhiều lần so với c&ocirc;ng suất loa th&ocirc;ng thường. Nhờ v&agrave;o kết cấu loa đa hướng, bạn sẽ lan tỏa &acirc;m thanh đến mọi ng&oacute;c ng&aacute;ch.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-3.jpg\" /></p>\r\n\r\n<p>Với t&iacute;nh năng bass booster hỗ trợ tăng cường &acirc;m trầm cho những bản nhạc s&ocirc;i động. Kết hợp c&ugrave;ng đ&egrave;n LED mang đến phong c&aacute;ch chuẩn DJ. &Acirc;m thanh của chiếc loa th&aacute;p Samsung MX-T40/XV t&aacute;i hiện những &acirc;m thanh ch&acirc;n thật nhất.</p>\r\n\r\n<h3><strong>Ngoại h&igrave;nh độc đ&aacute;o với đ&egrave;n LED phong c&aacute;ch DJ t&iacute;ch hợp</strong></h3>\r\n\r\n<p>Loa Samsung c&oacute; thiết kế được l&agrave;m bằng nhựa kết hợp c&ugrave;ng kim loại cứng c&aacute;p. Nhờ v&agrave;o đ&oacute;, chiếc loa đến từ thương hiệu Samsung được nhiều bạn y&ecirc;u mến với độ bền cao.&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"Thiết kế loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-1.jpg\" /></p>\r\n\r\n<p>Điểm nổi bật của chiếc loa nằm ở thiết kế c&acirc;n bằng ở 3 g&oacute;c gi&uacute;p sản phẩm c&oacute; thể đứng vững tr&ecirc;n mọi bề mặt. Thiết kế của loa cũng được đ&aacute;nh gi&aacute; l&agrave; mang đến sự tiện lợi tối ưu cho người d&ugrave;ng với bảng điều khiển được t&iacute;ch hợp ở mặt tr&ecirc;n. Th&ocirc;ng qua bảng điều khiển n&agrave;y, bạn c&oacute; thể t&ugrave;y chỉnh chiếc loa của m&igrave;nh như tăng/ giảm &acirc;m lượng, chuyển b&agrave;i h&aacute;t,...</p>\r\n\r\n<p>Ngo&agrave;i ra, th&acirc;n loa cũng được t&iacute;ch hợp th&ecirc;m đ&egrave;n LED với phong c&aacute;ch DJ bắt mắt nhằm mang đến kh&ocirc;ng kh&iacute; s&ocirc;i động cho những buổi tiệc của bạn. Bạn c&oacute; thể kết nối loa với ứng dụng của Samsung tr&ecirc;n điện thoại của m&igrave;nh để điều chỉnh c&aacute;c chế độ m&agrave;u h&ograve;a hợp với điệu nhạc như Party, Dance, Ambient,...</p>\r\n\r\n<h3><strong>T&iacute;ch hợp đa dạng t&iacute;nh năng ph&aacute;t nhạc hữu &iacute;ch</strong></h3>\r\n\r\n<p>Loa th&aacute;p Samsung MX-T40 được nhiều bạn biết đến bởi t&iacute;nh năng gh&eacute;p nối với nhiều d&ograve;ng loa th&aacute;p Samsung kh&aacute;c nhau. Từ đ&oacute;, bạn c&oacute; thể gi&uacute;p những buổi tiệc của m&igrave;nh th&ecirc;m phần sinh động hơn với những bản h&ograve;a nhạc đến từ nhiều chiếc loa kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>Hơn nữa, bạn cũng được thỏa th&iacute;ch tận hưởng c&aacute;c giai điệu nhạc kh&aacute;c nhau nhờ những chế độ ph&aacute;t nhạc đa dạng tr&ecirc;n thiết bị như HipHop, Party, Rock, Reggae,... Đặc biệt hơn, chiếc loa cũng thỏa m&atilde;n đam m&ecirc; ca h&aacute;t của bạn nhờ c&oacute; chế độ karaoke t&iacute;ch hợp. Với t&iacute;nh năng n&agrave;y, bạn sẽ được thể hiện giọng h&aacute;t của m&igrave;nh với những giai điệu s&acirc;u lắng, sắc n&eacute;t.</p>\r\n\r\n<p><img alt=\"Ghép đôi loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-4.jpg\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, chiếc loa cũng t&iacute;ch hợp th&ecirc;m cổng kết nối USB tiện lợi hỗ trợ người d&ugrave;ng c&oacute; thể gh&eacute;p nối với những thiết bị c&ocirc;ng nghệ kh&aacute;c. Nhờ v&agrave;o t&iacute;nh năng n&agrave;y, bạn c&oacute; thể tận hưởng những bản nhạc m&igrave;nh y&ecirc;u th&iacute;ch ở mọi l&uacute;c mọi nơi.</p>\r\n\r\n<p>Với t&iacute;nh năng kết nối nhờ c&oacute; c&ocirc;ng nghệ Bluetooth, mẫu loa cũng cho ph&eacute;p bạn kết nối với nhiều thiết bị di động c&ugrave;ng l&uacute;c. Th&ocirc;ng qua c&ocirc;ng nghệ kết nối bằng Bluetooth, bạn sẽ c&oacute; th&ecirc;m nhiều niềm vui khi được tận hướng những bản nhạc với bạn b&egrave;, người th&acirc;n của m&igrave;nh.&nbsp;</p>\r\n\r\n<h3><strong>Tuổi thọ l&acirc;u d&agrave;i với khả năng kh&aacute;ng nước tối ưu</strong></h3>\r\n\r\n<p>B&ecirc;n cạnh c&aacute;c ưu điểm về thiết kế v&agrave; khả năng ph&aacute;t nhạc, nhờ c&oacute; chất liệu bền bỉ d&ograve;ng loa n&agrave;y cũng mang khả năng kh&aacute;ng nước tối ưu. Bạn c&oacute; thể tổ chức những buổi tiệc ngo&agrave;i tr&ecirc;n ở những b&atilde;i biển hay hồ bơi với sản phẩm v&agrave; kh&ocirc;ng phải lo lắng thiết bị sẽ hư hỏng. Nhờ v&agrave;o đ&oacute;, tuổi thọ của loa cũng trở n&ecirc;n v&ocirc; c&ugrave;ng bền bỉ theo thời gian.&nbsp;</p>\r\n\r\n<p><img alt=\"loa tháp Samsung MX-T40/XV - Kháng nước\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-6.jpg\" /></p>\r\n\r\n<h2><strong>Mua loa th&aacute;p Samsung MX-T40 gi&aacute; rẻ, chất lượng tại CellphoneS</strong></h2>\r\n\r\n<p>Để sảng kho&aacute;i b&ugrave;ng nổ trong thế giới &acirc;m thanh sống động c&ugrave;ng với bạn b&egrave;, bạn h&atilde;y nhanh tay sở hữu loa th&aacute;p&nbsp;<strong>Samsung MX-T40 ch&iacute;nh h&atilde;ng</strong>. Sản phẩm hiện đang được b&aacute;n ra tại cửa h&agrave;ng CellphoneS với mức gi&aacute; hợp l&yacute; c&ugrave;ng bảo h&agrave;nh thời gian d&agrave;i.</p>', '35', 3, '', 0, 1, 1, 0, 3850000.00, 0.00, 0.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Bluetooth Wireless Speaker', NULL, '2023-08-04 02:29:34', '2023-08-08 03:25:34'),
(3, 'Smartphone X Seri 02', 'smartphone-x-seri-021', 0, 1, 'images/Smartphone-X-seri-02-480x480.jpg.webp', 'images/Smartphone-X-seri-024-480x480.jpg.webp,images/Smartphone-X-seri-022-480x480.jpg.webp,images/071cd205a711842b5af831a361b8784c.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" style=\"height:571px; width:611px\" /></p>\r\n\r\n<h2 style=\"text-align:center\">Blast past fast.</h2>\r\n\r\n<p style=\"text-align:center\">A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p style=\"text-align:center\">An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" style=\"width:100%\" /></p>', '33', 1, '', 1, 1, 0, 0, 18500000.00, 16460000.00, 18000000.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Smartphone X Seri 02', NULL, '2023-08-03 23:47:17', '2023-08-08 03:25:30'),
(4, 'Bluetooth Wireless Speaker', 'bluetooth-wireless-speaker1', 0, 1, 'images/bluetooth-wireless-speaker3-480x480.webp', 'images/bluetooth-wireless-speaker-480x480.webp,images/bluetooth-wireless-speaker2-480x480webp.webp,images/49bfcd80340189e6efcd84ac43486267.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera', '<h2><strong>Loa th&aacute;p Samsung MX-T40/XV &ndash; Khuấy động mọi bữa tiệc</strong></h2>\r\n\r\n<p>Tr&ecirc;n thị trường hiện c&oacute; rất nhiều sản phẩm &acirc;m thanh với kết cấu kỳ dị, nhưng d&ugrave; g&igrave;, th&igrave; &acirc;m thanh vẫn l&agrave; chất lượng cần quan t&acirc;m h&agrave;ng đầu. Nếu bạn cần t&igrave;m một chiếc loa sở hữu đầy đủ c&aacute;c yếu tố độc, lạ, hay th&igrave; h&atilde;y chọn loa<strong>&nbsp;Samsung MX-T40</strong>.</p>\r\n\r\n<h3><strong>Cấu tr&uacute;c th&aacute;p, dễ d&agrave;ng kết nối bluetooth</strong></h3>\r\n\r\n<p>Loa&nbsp;sở hữu kết cấu đặc biệt, khiến người ta li&ecirc;n tưởng đến c&aacute;c c&ocirc;ng tr&igrave;nh kiến tr&uacute;c vĩ đại như th&aacute;p Eiffel, Th&aacute;p Burj Khalifa,... V&igrave; thế kh&ocirc;ng chỉ để nghe nhạc m&agrave; sản phẩm c&ograve;n l&agrave; vật trang tr&iacute; nổi bật trong kh&ocirc;ng gian nh&agrave; bạn.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-7.jpg\" /></p>\r\n\r\n<p>Thiết kế của loa th&aacute;p Samsung MX T40 độc đ&aacute;o, ấn tượng. B&ecirc;n cạnh đ&oacute;, khả năng gh&eacute;p nối loa c&ugrave;ng 2 thiết bị di động 1 l&uacute;c gi&uacute;p bạn tận hưởng khoảnh khắc vui vẻ b&ecirc;n bạn b&egrave;, người th&acirc;n.</p>\r\n\r\n<h3><strong>C&ocirc;ng suất mạnh mẽ 300W, bass booster b&ugrave;ng nổ kh&ocirc;ng gian</strong></h3>\r\n\r\n<p>C&ocirc;ng suất của loa th&aacute;p&nbsp;<strong>MX-T40</strong>&nbsp;l&ecirc;n đến 300W - lớn gấp nhiều lần so với c&ocirc;ng suất loa th&ocirc;ng thường. Nhờ v&agrave;o kết cấu loa đa hướng, bạn sẽ lan tỏa &acirc;m thanh đến mọi ng&oacute;c ng&aacute;ch.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-3.jpg\" /></p>\r\n\r\n<p>Với t&iacute;nh năng bass booster hỗ trợ tăng cường &acirc;m trầm cho những bản nhạc s&ocirc;i động. Kết hợp c&ugrave;ng đ&egrave;n LED mang đến phong c&aacute;ch chuẩn DJ. &Acirc;m thanh của chiếc loa th&aacute;p Samsung MX-T40/XV t&aacute;i hiện những &acirc;m thanh ch&acirc;n thật nhất.</p>\r\n\r\n<h3><strong>Ngoại h&igrave;nh độc đ&aacute;o với đ&egrave;n LED phong c&aacute;ch DJ t&iacute;ch hợp</strong></h3>\r\n\r\n<p>Loa Samsung c&oacute; thiết kế được l&agrave;m bằng nhựa kết hợp c&ugrave;ng kim loại cứng c&aacute;p. Nhờ v&agrave;o đ&oacute;, chiếc loa đến từ thương hiệu Samsung được nhiều bạn y&ecirc;u mến với độ bền cao.&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"Thiết kế loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-1.jpg\" /></p>\r\n\r\n<p>Điểm nổi bật của chiếc loa nằm ở thiết kế c&acirc;n bằng ở 3 g&oacute;c gi&uacute;p sản phẩm c&oacute; thể đứng vững tr&ecirc;n mọi bề mặt. Thiết kế của loa cũng được đ&aacute;nh gi&aacute; l&agrave; mang đến sự tiện lợi tối ưu cho người d&ugrave;ng với bảng điều khiển được t&iacute;ch hợp ở mặt tr&ecirc;n. Th&ocirc;ng qua bảng điều khiển n&agrave;y, bạn c&oacute; thể t&ugrave;y chỉnh chiếc loa của m&igrave;nh như tăng/ giảm &acirc;m lượng, chuyển b&agrave;i h&aacute;t,...</p>\r\n\r\n<p>Ngo&agrave;i ra, th&acirc;n loa cũng được t&iacute;ch hợp th&ecirc;m đ&egrave;n LED với phong c&aacute;ch DJ bắt mắt nhằm mang đến kh&ocirc;ng kh&iacute; s&ocirc;i động cho những buổi tiệc của bạn. Bạn c&oacute; thể kết nối loa với ứng dụng của Samsung tr&ecirc;n điện thoại của m&igrave;nh để điều chỉnh c&aacute;c chế độ m&agrave;u h&ograve;a hợp với điệu nhạc như Party, Dance, Ambient,...</p>\r\n\r\n<h3><strong>T&iacute;ch hợp đa dạng t&iacute;nh năng ph&aacute;t nhạc hữu &iacute;ch</strong></h3>\r\n\r\n<p>Loa th&aacute;p Samsung MX-T40 được nhiều bạn biết đến bởi t&iacute;nh năng gh&eacute;p nối với nhiều d&ograve;ng loa th&aacute;p Samsung kh&aacute;c nhau. Từ đ&oacute;, bạn c&oacute; thể gi&uacute;p những buổi tiệc của m&igrave;nh th&ecirc;m phần sinh động hơn với những bản h&ograve;a nhạc đến từ nhiều chiếc loa kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>Hơn nữa, bạn cũng được thỏa th&iacute;ch tận hưởng c&aacute;c giai điệu nhạc kh&aacute;c nhau nhờ những chế độ ph&aacute;t nhạc đa dạng tr&ecirc;n thiết bị như HipHop, Party, Rock, Reggae,... Đặc biệt hơn, chiếc loa cũng thỏa m&atilde;n đam m&ecirc; ca h&aacute;t của bạn nhờ c&oacute; chế độ karaoke t&iacute;ch hợp. Với t&iacute;nh năng n&agrave;y, bạn sẽ được thể hiện giọng h&aacute;t của m&igrave;nh với những giai điệu s&acirc;u lắng, sắc n&eacute;t.</p>\r\n\r\n<p><img alt=\"Ghép đôi loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-4.jpg\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, chiếc loa cũng t&iacute;ch hợp th&ecirc;m cổng kết nối USB tiện lợi hỗ trợ người d&ugrave;ng c&oacute; thể gh&eacute;p nối với những thiết bị c&ocirc;ng nghệ kh&aacute;c. Nhờ v&agrave;o t&iacute;nh năng n&agrave;y, bạn c&oacute; thể tận hưởng những bản nhạc m&igrave;nh y&ecirc;u th&iacute;ch ở mọi l&uacute;c mọi nơi.</p>\r\n\r\n<p>Với t&iacute;nh năng kết nối nhờ c&oacute; c&ocirc;ng nghệ Bluetooth, mẫu loa cũng cho ph&eacute;p bạn kết nối với nhiều thiết bị di động c&ugrave;ng l&uacute;c. Th&ocirc;ng qua c&ocirc;ng nghệ kết nối bằng Bluetooth, bạn sẽ c&oacute; th&ecirc;m nhiều niềm vui khi được tận hướng những bản nhạc với bạn b&egrave;, người th&acirc;n của m&igrave;nh.&nbsp;</p>\r\n\r\n<h3><strong>Tuổi thọ l&acirc;u d&agrave;i với khả năng kh&aacute;ng nước tối ưu</strong></h3>\r\n\r\n<p>B&ecirc;n cạnh c&aacute;c ưu điểm về thiết kế v&agrave; khả năng ph&aacute;t nhạc, nhờ c&oacute; chất liệu bền bỉ d&ograve;ng loa n&agrave;y cũng mang khả năng kh&aacute;ng nước tối ưu. Bạn c&oacute; thể tổ chức những buổi tiệc ngo&agrave;i tr&ecirc;n ở những b&atilde;i biển hay hồ bơi với sản phẩm v&agrave; kh&ocirc;ng phải lo lắng thiết bị sẽ hư hỏng. Nhờ v&agrave;o đ&oacute;, tuổi thọ của loa cũng trở n&ecirc;n v&ocirc; c&ugrave;ng bền bỉ theo thời gian.&nbsp;</p>\r\n\r\n<p><img alt=\"loa tháp Samsung MX-T40/XV - Kháng nước\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-6.jpg\" /></p>\r\n\r\n<h2><strong>Mua loa th&aacute;p Samsung MX-T40 gi&aacute; rẻ, chất lượng tại CellphoneS</strong></h2>\r\n\r\n<p>Để sảng kho&aacute;i b&ugrave;ng nổ trong thế giới &acirc;m thanh sống động c&ugrave;ng với bạn b&egrave;, bạn h&atilde;y nhanh tay sở hữu loa th&aacute;p&nbsp;<strong>Samsung MX-T40 ch&iacute;nh h&atilde;ng</strong>. Sản phẩm hiện đang được b&aacute;n ra tại cửa h&agrave;ng CellphoneS với mức gi&aacute; hợp l&yacute; c&ugrave;ng bảo h&agrave;nh thời gian d&agrave;i.</p>', '35', 4, '', 0, 1, 1, 0, 3850000.00, 0.00, 0.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Bluetooth Wireless Speaker', NULL, '2023-08-04 02:29:34', '2023-08-08 03:25:24'),
(5, 'Smartphone X Seri 02', 'smartphone-x-seri-022', 0, 1, 'images/Smartphone-X-seri-02-480x480.jpg.webp', 'images/Smartphone-X-seri-024-480x480.jpg.webp,images/Smartphone-X-seri-022-480x480.jpg.webp,images/071cd205a711842b5af831a361b8784c.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" style=\"height:571px; width:611px\" /></p>\r\n\r\n<h2 style=\"text-align:center\">Blast past fast.</h2>\r\n\r\n<p style=\"text-align:center\">A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p style=\"text-align:center\">An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" style=\"width:100%\" /></p>', '33', 1, '', 1, 1, 0, 0, 18500000.00, 16460000.00, 18000000.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Smartphone X Seri 02', NULL, '2023-08-03 23:47:17', '2023-08-08 03:25:19'),
(6, 'Bluetooth Wireless Speaker', 'bluetooth-wireless-speaker2', 0, 1, 'images/bluetooth-wireless-speaker3-480x480.webp', 'images/bluetooth-wireless-speaker-480x480.webp,images/bluetooth-wireless-speaker2-480x480webp.webp,images/49bfcd80340189e6efcd84ac43486267.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera', '<h2><strong>Loa th&aacute;p Samsung MX-T40/XV &ndash; Khuấy động mọi bữa tiệc</strong></h2>\r\n\r\n<p>Tr&ecirc;n thị trường hiện c&oacute; rất nhiều sản phẩm &acirc;m thanh với kết cấu kỳ dị, nhưng d&ugrave; g&igrave;, th&igrave; &acirc;m thanh vẫn l&agrave; chất lượng cần quan t&acirc;m h&agrave;ng đầu. Nếu bạn cần t&igrave;m một chiếc loa sở hữu đầy đủ c&aacute;c yếu tố độc, lạ, hay th&igrave; h&atilde;y chọn loa<strong>&nbsp;Samsung MX-T40</strong>.</p>\r\n\r\n<h3><strong>Cấu tr&uacute;c th&aacute;p, dễ d&agrave;ng kết nối bluetooth</strong></h3>\r\n\r\n<p>Loa&nbsp;sở hữu kết cấu đặc biệt, khiến người ta li&ecirc;n tưởng đến c&aacute;c c&ocirc;ng tr&igrave;nh kiến tr&uacute;c vĩ đại như th&aacute;p Eiffel, Th&aacute;p Burj Khalifa,... V&igrave; thế kh&ocirc;ng chỉ để nghe nhạc m&agrave; sản phẩm c&ograve;n l&agrave; vật trang tr&iacute; nổi bật trong kh&ocirc;ng gian nh&agrave; bạn.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-7.jpg\" /></p>\r\n\r\n<p>Thiết kế của loa th&aacute;p Samsung MX T40 độc đ&aacute;o, ấn tượng. B&ecirc;n cạnh đ&oacute;, khả năng gh&eacute;p nối loa c&ugrave;ng 2 thiết bị di động 1 l&uacute;c gi&uacute;p bạn tận hưởng khoảnh khắc vui vẻ b&ecirc;n bạn b&egrave;, người th&acirc;n.</p>\r\n\r\n<h3><strong>C&ocirc;ng suất mạnh mẽ 300W, bass booster b&ugrave;ng nổ kh&ocirc;ng gian</strong></h3>\r\n\r\n<p>C&ocirc;ng suất của loa th&aacute;p&nbsp;<strong>MX-T40</strong>&nbsp;l&ecirc;n đến 300W - lớn gấp nhiều lần so với c&ocirc;ng suất loa th&ocirc;ng thường. Nhờ v&agrave;o kết cấu loa đa hướng, bạn sẽ lan tỏa &acirc;m thanh đến mọi ng&oacute;c ng&aacute;ch.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-3.jpg\" /></p>\r\n\r\n<p>Với t&iacute;nh năng bass booster hỗ trợ tăng cường &acirc;m trầm cho những bản nhạc s&ocirc;i động. Kết hợp c&ugrave;ng đ&egrave;n LED mang đến phong c&aacute;ch chuẩn DJ. &Acirc;m thanh của chiếc loa th&aacute;p Samsung MX-T40/XV t&aacute;i hiện những &acirc;m thanh ch&acirc;n thật nhất.</p>\r\n\r\n<h3><strong>Ngoại h&igrave;nh độc đ&aacute;o với đ&egrave;n LED phong c&aacute;ch DJ t&iacute;ch hợp</strong></h3>\r\n\r\n<p>Loa Samsung c&oacute; thiết kế được l&agrave;m bằng nhựa kết hợp c&ugrave;ng kim loại cứng c&aacute;p. Nhờ v&agrave;o đ&oacute;, chiếc loa đến từ thương hiệu Samsung được nhiều bạn y&ecirc;u mến với độ bền cao.&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"Thiết kế loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-1.jpg\" /></p>\r\n\r\n<p>Điểm nổi bật của chiếc loa nằm ở thiết kế c&acirc;n bằng ở 3 g&oacute;c gi&uacute;p sản phẩm c&oacute; thể đứng vững tr&ecirc;n mọi bề mặt. Thiết kế của loa cũng được đ&aacute;nh gi&aacute; l&agrave; mang đến sự tiện lợi tối ưu cho người d&ugrave;ng với bảng điều khiển được t&iacute;ch hợp ở mặt tr&ecirc;n. Th&ocirc;ng qua bảng điều khiển n&agrave;y, bạn c&oacute; thể t&ugrave;y chỉnh chiếc loa của m&igrave;nh như tăng/ giảm &acirc;m lượng, chuyển b&agrave;i h&aacute;t,...</p>\r\n\r\n<p>Ngo&agrave;i ra, th&acirc;n loa cũng được t&iacute;ch hợp th&ecirc;m đ&egrave;n LED với phong c&aacute;ch DJ bắt mắt nhằm mang đến kh&ocirc;ng kh&iacute; s&ocirc;i động cho những buổi tiệc của bạn. Bạn c&oacute; thể kết nối loa với ứng dụng của Samsung tr&ecirc;n điện thoại của m&igrave;nh để điều chỉnh c&aacute;c chế độ m&agrave;u h&ograve;a hợp với điệu nhạc như Party, Dance, Ambient,...</p>\r\n\r\n<h3><strong>T&iacute;ch hợp đa dạng t&iacute;nh năng ph&aacute;t nhạc hữu &iacute;ch</strong></h3>\r\n\r\n<p>Loa th&aacute;p Samsung MX-T40 được nhiều bạn biết đến bởi t&iacute;nh năng gh&eacute;p nối với nhiều d&ograve;ng loa th&aacute;p Samsung kh&aacute;c nhau. Từ đ&oacute;, bạn c&oacute; thể gi&uacute;p những buổi tiệc của m&igrave;nh th&ecirc;m phần sinh động hơn với những bản h&ograve;a nhạc đến từ nhiều chiếc loa kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>Hơn nữa, bạn cũng được thỏa th&iacute;ch tận hưởng c&aacute;c giai điệu nhạc kh&aacute;c nhau nhờ những chế độ ph&aacute;t nhạc đa dạng tr&ecirc;n thiết bị như HipHop, Party, Rock, Reggae,... Đặc biệt hơn, chiếc loa cũng thỏa m&atilde;n đam m&ecirc; ca h&aacute;t của bạn nhờ c&oacute; chế độ karaoke t&iacute;ch hợp. Với t&iacute;nh năng n&agrave;y, bạn sẽ được thể hiện giọng h&aacute;t của m&igrave;nh với những giai điệu s&acirc;u lắng, sắc n&eacute;t.</p>\r\n\r\n<p><img alt=\"Ghép đôi loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-4.jpg\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, chiếc loa cũng t&iacute;ch hợp th&ecirc;m cổng kết nối USB tiện lợi hỗ trợ người d&ugrave;ng c&oacute; thể gh&eacute;p nối với những thiết bị c&ocirc;ng nghệ kh&aacute;c. Nhờ v&agrave;o t&iacute;nh năng n&agrave;y, bạn c&oacute; thể tận hưởng những bản nhạc m&igrave;nh y&ecirc;u th&iacute;ch ở mọi l&uacute;c mọi nơi.</p>\r\n\r\n<p>Với t&iacute;nh năng kết nối nhờ c&oacute; c&ocirc;ng nghệ Bluetooth, mẫu loa cũng cho ph&eacute;p bạn kết nối với nhiều thiết bị di động c&ugrave;ng l&uacute;c. Th&ocirc;ng qua c&ocirc;ng nghệ kết nối bằng Bluetooth, bạn sẽ c&oacute; th&ecirc;m nhiều niềm vui khi được tận hướng những bản nhạc với bạn b&egrave;, người th&acirc;n của m&igrave;nh.&nbsp;</p>\r\n\r\n<h3><strong>Tuổi thọ l&acirc;u d&agrave;i với khả năng kh&aacute;ng nước tối ưu</strong></h3>\r\n\r\n<p>B&ecirc;n cạnh c&aacute;c ưu điểm về thiết kế v&agrave; khả năng ph&aacute;t nhạc, nhờ c&oacute; chất liệu bền bỉ d&ograve;ng loa n&agrave;y cũng mang khả năng kh&aacute;ng nước tối ưu. Bạn c&oacute; thể tổ chức những buổi tiệc ngo&agrave;i tr&ecirc;n ở những b&atilde;i biển hay hồ bơi với sản phẩm v&agrave; kh&ocirc;ng phải lo lắng thiết bị sẽ hư hỏng. Nhờ v&agrave;o đ&oacute;, tuổi thọ của loa cũng trở n&ecirc;n v&ocirc; c&ugrave;ng bền bỉ theo thời gian.&nbsp;</p>\r\n\r\n<p><img alt=\"loa tháp Samsung MX-T40/XV - Kháng nước\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-6.jpg\" /></p>\r\n\r\n<h2><strong>Mua loa th&aacute;p Samsung MX-T40 gi&aacute; rẻ, chất lượng tại CellphoneS</strong></h2>\r\n\r\n<p>Để sảng kho&aacute;i b&ugrave;ng nổ trong thế giới &acirc;m thanh sống động c&ugrave;ng với bạn b&egrave;, bạn h&atilde;y nhanh tay sở hữu loa th&aacute;p&nbsp;<strong>Samsung MX-T40 ch&iacute;nh h&atilde;ng</strong>. Sản phẩm hiện đang được b&aacute;n ra tại cửa h&agrave;ng CellphoneS với mức gi&aacute; hợp l&yacute; c&ugrave;ng bảo h&agrave;nh thời gian d&agrave;i.</p>', '35', 4, '', 0, 1, 1, 0, 3850000.00, 0.00, 0.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Bluetooth Wireless Speaker', NULL, '2023-08-04 02:29:34', '2023-08-08 03:25:13'),
(7, 'Smartphone X Seri 02', 'smartphone-x-seri-0213', 0, 1, 'images/Smartphone-X-seri-02-480x480.jpg.webp', 'images/Smartphone-X-seri-024-480x480.jpg.webp,images/Smartphone-X-seri-022-480x480.jpg.webp,images/071cd205a711842b5af831a361b8784c.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" style=\"height:571px; width:611px\" /></p>\r\n\r\n<h2 style=\"text-align:center\">Blast past fast.</h2>\r\n\r\n<p style=\"text-align:center\">A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p style=\"text-align:center\">An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" style=\"width:100%\" /></p>', '33', 1, '', 1, 1, 1, 0, 18500000.00, 16460000.00, 18000000.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Smartphone X Seri 02', NULL, '2023-08-03 23:47:17', '2023-08-08 03:25:08'),
(8, 'Bluetooth Wireless Speaker', 'bluetooth-wireless-speaker13', 0, 1, 'images/bluetooth-wireless-speaker3-480x480.webp', 'images/bluetooth-wireless-speaker-480x480.webp,images/bluetooth-wireless-speaker2-480x480webp.webp,images/49bfcd80340189e6efcd84ac43486267.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera', '<h2><strong>Loa th&aacute;p Samsung MX-T40/XV &ndash; Khuấy động mọi bữa tiệc</strong></h2>\r\n\r\n<p>Tr&ecirc;n thị trường hiện c&oacute; rất nhiều sản phẩm &acirc;m thanh với kết cấu kỳ dị, nhưng d&ugrave; g&igrave;, th&igrave; &acirc;m thanh vẫn l&agrave; chất lượng cần quan t&acirc;m h&agrave;ng đầu. Nếu bạn cần t&igrave;m một chiếc loa sở hữu đầy đủ c&aacute;c yếu tố độc, lạ, hay th&igrave; h&atilde;y chọn loa<strong>&nbsp;Samsung MX-T40</strong>.</p>\r\n\r\n<h3><strong>Cấu tr&uacute;c th&aacute;p, dễ d&agrave;ng kết nối bluetooth</strong></h3>\r\n\r\n<p>Loa&nbsp;sở hữu kết cấu đặc biệt, khiến người ta li&ecirc;n tưởng đến c&aacute;c c&ocirc;ng tr&igrave;nh kiến tr&uacute;c vĩ đại như th&aacute;p Eiffel, Th&aacute;p Burj Khalifa,... V&igrave; thế kh&ocirc;ng chỉ để nghe nhạc m&agrave; sản phẩm c&ograve;n l&agrave; vật trang tr&iacute; nổi bật trong kh&ocirc;ng gian nh&agrave; bạn.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-7.jpg\" /></p>\r\n\r\n<p>Thiết kế của loa th&aacute;p Samsung MX T40 độc đ&aacute;o, ấn tượng. B&ecirc;n cạnh đ&oacute;, khả năng gh&eacute;p nối loa c&ugrave;ng 2 thiết bị di động 1 l&uacute;c gi&uacute;p bạn tận hưởng khoảnh khắc vui vẻ b&ecirc;n bạn b&egrave;, người th&acirc;n.</p>\r\n\r\n<h3><strong>C&ocirc;ng suất mạnh mẽ 300W, bass booster b&ugrave;ng nổ kh&ocirc;ng gian</strong></h3>\r\n\r\n<p>C&ocirc;ng suất của loa th&aacute;p&nbsp;<strong>MX-T40</strong>&nbsp;l&ecirc;n đến 300W - lớn gấp nhiều lần so với c&ocirc;ng suất loa th&ocirc;ng thường. Nhờ v&agrave;o kết cấu loa đa hướng, bạn sẽ lan tỏa &acirc;m thanh đến mọi ng&oacute;c ng&aacute;ch.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-3.jpg\" /></p>\r\n\r\n<p>Với t&iacute;nh năng bass booster hỗ trợ tăng cường &acirc;m trầm cho những bản nhạc s&ocirc;i động. Kết hợp c&ugrave;ng đ&egrave;n LED mang đến phong c&aacute;ch chuẩn DJ. &Acirc;m thanh của chiếc loa th&aacute;p Samsung MX-T40/XV t&aacute;i hiện những &acirc;m thanh ch&acirc;n thật nhất.</p>\r\n\r\n<h3><strong>Ngoại h&igrave;nh độc đ&aacute;o với đ&egrave;n LED phong c&aacute;ch DJ t&iacute;ch hợp</strong></h3>\r\n\r\n<p>Loa Samsung c&oacute; thiết kế được l&agrave;m bằng nhựa kết hợp c&ugrave;ng kim loại cứng c&aacute;p. Nhờ v&agrave;o đ&oacute;, chiếc loa đến từ thương hiệu Samsung được nhiều bạn y&ecirc;u mến với độ bền cao.&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"Thiết kế loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-1.jpg\" /></p>\r\n\r\n<p>Điểm nổi bật của chiếc loa nằm ở thiết kế c&acirc;n bằng ở 3 g&oacute;c gi&uacute;p sản phẩm c&oacute; thể đứng vững tr&ecirc;n mọi bề mặt. Thiết kế của loa cũng được đ&aacute;nh gi&aacute; l&agrave; mang đến sự tiện lợi tối ưu cho người d&ugrave;ng với bảng điều khiển được t&iacute;ch hợp ở mặt tr&ecirc;n. Th&ocirc;ng qua bảng điều khiển n&agrave;y, bạn c&oacute; thể t&ugrave;y chỉnh chiếc loa của m&igrave;nh như tăng/ giảm &acirc;m lượng, chuyển b&agrave;i h&aacute;t,...</p>\r\n\r\n<p>Ngo&agrave;i ra, th&acirc;n loa cũng được t&iacute;ch hợp th&ecirc;m đ&egrave;n LED với phong c&aacute;ch DJ bắt mắt nhằm mang đến kh&ocirc;ng kh&iacute; s&ocirc;i động cho những buổi tiệc của bạn. Bạn c&oacute; thể kết nối loa với ứng dụng của Samsung tr&ecirc;n điện thoại của m&igrave;nh để điều chỉnh c&aacute;c chế độ m&agrave;u h&ograve;a hợp với điệu nhạc như Party, Dance, Ambient,...</p>\r\n\r\n<h3><strong>T&iacute;ch hợp đa dạng t&iacute;nh năng ph&aacute;t nhạc hữu &iacute;ch</strong></h3>\r\n\r\n<p>Loa th&aacute;p Samsung MX-T40 được nhiều bạn biết đến bởi t&iacute;nh năng gh&eacute;p nối với nhiều d&ograve;ng loa th&aacute;p Samsung kh&aacute;c nhau. Từ đ&oacute;, bạn c&oacute; thể gi&uacute;p những buổi tiệc của m&igrave;nh th&ecirc;m phần sinh động hơn với những bản h&ograve;a nhạc đến từ nhiều chiếc loa kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>Hơn nữa, bạn cũng được thỏa th&iacute;ch tận hưởng c&aacute;c giai điệu nhạc kh&aacute;c nhau nhờ những chế độ ph&aacute;t nhạc đa dạng tr&ecirc;n thiết bị như HipHop, Party, Rock, Reggae,... Đặc biệt hơn, chiếc loa cũng thỏa m&atilde;n đam m&ecirc; ca h&aacute;t của bạn nhờ c&oacute; chế độ karaoke t&iacute;ch hợp. Với t&iacute;nh năng n&agrave;y, bạn sẽ được thể hiện giọng h&aacute;t của m&igrave;nh với những giai điệu s&acirc;u lắng, sắc n&eacute;t.</p>\r\n\r\n<p><img alt=\"Ghép đôi loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-4.jpg\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, chiếc loa cũng t&iacute;ch hợp th&ecirc;m cổng kết nối USB tiện lợi hỗ trợ người d&ugrave;ng c&oacute; thể gh&eacute;p nối với những thiết bị c&ocirc;ng nghệ kh&aacute;c. Nhờ v&agrave;o t&iacute;nh năng n&agrave;y, bạn c&oacute; thể tận hưởng những bản nhạc m&igrave;nh y&ecirc;u th&iacute;ch ở mọi l&uacute;c mọi nơi.</p>\r\n\r\n<p>Với t&iacute;nh năng kết nối nhờ c&oacute; c&ocirc;ng nghệ Bluetooth, mẫu loa cũng cho ph&eacute;p bạn kết nối với nhiều thiết bị di động c&ugrave;ng l&uacute;c. Th&ocirc;ng qua c&ocirc;ng nghệ kết nối bằng Bluetooth, bạn sẽ c&oacute; th&ecirc;m nhiều niềm vui khi được tận hướng những bản nhạc với bạn b&egrave;, người th&acirc;n của m&igrave;nh.&nbsp;</p>\r\n\r\n<h3><strong>Tuổi thọ l&acirc;u d&agrave;i với khả năng kh&aacute;ng nước tối ưu</strong></h3>\r\n\r\n<p>B&ecirc;n cạnh c&aacute;c ưu điểm về thiết kế v&agrave; khả năng ph&aacute;t nhạc, nhờ c&oacute; chất liệu bền bỉ d&ograve;ng loa n&agrave;y cũng mang khả năng kh&aacute;ng nước tối ưu. Bạn c&oacute; thể tổ chức những buổi tiệc ngo&agrave;i tr&ecirc;n ở những b&atilde;i biển hay hồ bơi với sản phẩm v&agrave; kh&ocirc;ng phải lo lắng thiết bị sẽ hư hỏng. Nhờ v&agrave;o đ&oacute;, tuổi thọ của loa cũng trở n&ecirc;n v&ocirc; c&ugrave;ng bền bỉ theo thời gian.&nbsp;</p>\r\n\r\n<p><img alt=\"loa tháp Samsung MX-T40/XV - Kháng nước\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-6.jpg\" /></p>\r\n\r\n<h2><strong>Mua loa th&aacute;p Samsung MX-T40 gi&aacute; rẻ, chất lượng tại CellphoneS</strong></h2>\r\n\r\n<p>Để sảng kho&aacute;i b&ugrave;ng nổ trong thế giới &acirc;m thanh sống động c&ugrave;ng với bạn b&egrave;, bạn h&atilde;y nhanh tay sở hữu loa th&aacute;p&nbsp;<strong>Samsung MX-T40 ch&iacute;nh h&atilde;ng</strong>. Sản phẩm hiện đang được b&aacute;n ra tại cửa h&agrave;ng CellphoneS với mức gi&aacute; hợp l&yacute; c&ugrave;ng bảo h&agrave;nh thời gian d&agrave;i.</p>', '30', 2, '', 0, 1, 1, 0, 3850000.00, 0.00, 0.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Bluetooth Wireless Speaker', NULL, '2023-08-04 02:29:34', '2023-08-08 03:25:04'),
(9, 'Flat 32 4K UHD 11', 'flat-32-4k-uhd-11', 0, 1, 'images/feature-1-480x480.jpg.webp', NULL, NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera', '<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" /></p>\r\n\r\n<h2>Blast past fast.</h2>\r\n\r\n<p>A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p>An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" /></p>', '30', 2, '', 1, 0, 0, 0, 12050000.00, NULL, 0.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Flat 32 4K UHD 11', NULL, '2023-08-04 21:00:43', '2023-08-08 03:24:58'),
(10, 'Audio 5v 2a Us Hot', 'audio-5v-2a-us-hot', 0, 1, 'images/audio-5v-2a-us-hot2-480x480.jpg.webp', NULL, NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera\r\nSản phẩm giám sát, định vị\r\n\r\nĐịnh vị ô tô, xe máy\r\nĐịnh vị và giám sát xe lạnh trong vận tải\r\nThiết bị định vị ô tô, xe máy là loại thiết bị sử dụng nền tảng hệ thống định vị toàn cầu GPS (Global Positioning System) để xác định vị trí chính xác của xe ô tô theo thời gian thực.', '<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" /></p>\r\n\r\n<h2>Blast past fast.</h2>\r\n\r\n<p>A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p>An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" /></p>', '30', 2, '', 1, 0, 0, 0, 3650000.00, NULL, 0.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Audio 5v 2a Us Hot', NULL, '2023-08-04 21:01:38', '2023-08-08 03:24:50'),
(11, 'Camera Series Curved', 'camera-series-curved', 1, 1, 'images/camera-series-curved-27-480x480.jpg.webp', NULL, NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera\r\nSản phẩm giám sát, định vị\r\n\r\nĐịnh vị ô tô, xe máy\r\nĐịnh vị và giám sát xe lạnh trong vận tải\r\nThiết bị định vị ô tô, xe máy là loại thiết bị sử dụng nền tảng hệ thống định vị toàn cầu GPS (Global Positioning System) để xác định vị trí chính xác của xe ô tô theo thời gian thực.', '<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" /></p>\r\n\r\n<h2>Blast past fast.</h2>\r\n\r\n<p>A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p>An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" /></p>', '30', 2, '', 1, 0, 0, 0, 6530000.00, NULL, 0.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Camera Series Curved', NULL, '2023-08-04 21:02:54', '2023-08-08 03:24:45'),
(12, '3mm Lens Portable Quick Charging', '3mm-lens-portable-quick-charging', 0, 1, 'images/3-3mm-lens-portable-quick-charging-480x480.jpg.webp', 'images/237259e2a057eee2e858b5b755f1c367.webp,images/audio-5v-2a-us-hot-480x480.png.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera\r\nSản phẩm giám sát, định vị\r\n\r\nĐịnh vị ô tô, xe máy\r\nĐịnh vị và giám sát xe lạnh trong vận tải\r\nThiết bị định vị ô tô, xe máy là loại thiết bị sử dụng nền tảng hệ thống định vị toàn cầu GPS (Global Positioning System) để xác định vị trí chính xác của xe ô tô theo thời gian thực.', '<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" /></p>\r\n\r\n<h2>Blast past fast.</h2>\r\n\r\n<p>A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p>An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" /></p>', '30', 2, '', 1, 0, 0, 0, 680000.00, NULL, 0.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', '3mm Lens Portable Quick Charging', NULL, '2023-08-04 21:03:40', '2023-08-08 03:24:27'),
(13, 'Smartphone X Seri 02', 'smartphone-x-seri-02', 0, 1, 'images/Smartphone-X-seri-02-480x480.jpg.webp', 'images/Smartphone-X-seri-024-480x480.jpg.webp,images/Smartphone-X-seri-022-480x480.jpg.webp,images/071cd205a711842b5af831a361b8784c.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" style=\"height:571px; width:611px\" /></p>\r\n\r\n<h2 style=\"text-align:center\">Blast past fast.</h2>\r\n\r\n<p style=\"text-align:center\">A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p style=\"text-align:center\">An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" style=\"width:100%\" /></p>', '33', 1, '', 1, 1, 1, 0, 18500000.00, 16460000.00, 18000000.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Smartphone X Seri 02', NULL, '2023-08-03 23:47:17', '2023-08-08 03:24:23');
INSERT INTO `products` (`id`, `title`, `slug`, `order`, `active`, `images`, `other_image`, `banner`, `short_description`, `content`, `cate_id`, `brand_id`, `tags`, `hot`, `deal_today`, `best_seller`, `special_product`, `base_price`, `min_price`, `sale_price`, `technical`, `seo_meta_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(14, 'Bluetooth Wireless Speaker', 'bluetooth-wireless-speaker', 0, 1, 'images/bluetooth-wireless-speaker3-480x480.webp', 'images/bluetooth-wireless-speaker-480x480.webp,images/bluetooth-wireless-speaker2-480x480webp.webp,images/49bfcd80340189e6efcd84ac43486267.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera', '<h2><strong>Loa th&aacute;p Samsung MX-T40/XV &ndash; Khuấy động mọi bữa tiệc</strong></h2>\r\n\r\n<p>Tr&ecirc;n thị trường hiện c&oacute; rất nhiều sản phẩm &acirc;m thanh với kết cấu kỳ dị, nhưng d&ugrave; g&igrave;, th&igrave; &acirc;m thanh vẫn l&agrave; chất lượng cần quan t&acirc;m h&agrave;ng đầu. Nếu bạn cần t&igrave;m một chiếc loa sở hữu đầy đủ c&aacute;c yếu tố độc, lạ, hay th&igrave; h&atilde;y chọn loa<strong>&nbsp;Samsung MX-T40</strong>.</p>\r\n\r\n<h3><strong>Cấu tr&uacute;c th&aacute;p, dễ d&agrave;ng kết nối bluetooth</strong></h3>\r\n\r\n<p>Loa&nbsp;sở hữu kết cấu đặc biệt, khiến người ta li&ecirc;n tưởng đến c&aacute;c c&ocirc;ng tr&igrave;nh kiến tr&uacute;c vĩ đại như th&aacute;p Eiffel, Th&aacute;p Burj Khalifa,... V&igrave; thế kh&ocirc;ng chỉ để nghe nhạc m&agrave; sản phẩm c&ograve;n l&agrave; vật trang tr&iacute; nổi bật trong kh&ocirc;ng gian nh&agrave; bạn.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-7.jpg\" /></p>\r\n\r\n<p>Thiết kế của loa th&aacute;p Samsung MX T40 độc đ&aacute;o, ấn tượng. B&ecirc;n cạnh đ&oacute;, khả năng gh&eacute;p nối loa c&ugrave;ng 2 thiết bị di động 1 l&uacute;c gi&uacute;p bạn tận hưởng khoảnh khắc vui vẻ b&ecirc;n bạn b&egrave;, người th&acirc;n.</p>\r\n\r\n<h3><strong>C&ocirc;ng suất mạnh mẽ 300W, bass booster b&ugrave;ng nổ kh&ocirc;ng gian</strong></h3>\r\n\r\n<p>C&ocirc;ng suất của loa th&aacute;p&nbsp;<strong>MX-T40</strong>&nbsp;l&ecirc;n đến 300W - lớn gấp nhiều lần so với c&ocirc;ng suất loa th&ocirc;ng thường. Nhờ v&agrave;o kết cấu loa đa hướng, bạn sẽ lan tỏa &acirc;m thanh đến mọi ng&oacute;c ng&aacute;ch.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-3.jpg\" /></p>\r\n\r\n<p>Với t&iacute;nh năng bass booster hỗ trợ tăng cường &acirc;m trầm cho những bản nhạc s&ocirc;i động. Kết hợp c&ugrave;ng đ&egrave;n LED mang đến phong c&aacute;ch chuẩn DJ. &Acirc;m thanh của chiếc loa th&aacute;p Samsung MX-T40/XV t&aacute;i hiện những &acirc;m thanh ch&acirc;n thật nhất.</p>\r\n\r\n<h3><strong>Ngoại h&igrave;nh độc đ&aacute;o với đ&egrave;n LED phong c&aacute;ch DJ t&iacute;ch hợp</strong></h3>\r\n\r\n<p>Loa Samsung c&oacute; thiết kế được l&agrave;m bằng nhựa kết hợp c&ugrave;ng kim loại cứng c&aacute;p. Nhờ v&agrave;o đ&oacute;, chiếc loa đến từ thương hiệu Samsung được nhiều bạn y&ecirc;u mến với độ bền cao.&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"Thiết kế loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-1.jpg\" /></p>\r\n\r\n<p>Điểm nổi bật của chiếc loa nằm ở thiết kế c&acirc;n bằng ở 3 g&oacute;c gi&uacute;p sản phẩm c&oacute; thể đứng vững tr&ecirc;n mọi bề mặt. Thiết kế của loa cũng được đ&aacute;nh gi&aacute; l&agrave; mang đến sự tiện lợi tối ưu cho người d&ugrave;ng với bảng điều khiển được t&iacute;ch hợp ở mặt tr&ecirc;n. Th&ocirc;ng qua bảng điều khiển n&agrave;y, bạn c&oacute; thể t&ugrave;y chỉnh chiếc loa của m&igrave;nh như tăng/ giảm &acirc;m lượng, chuyển b&agrave;i h&aacute;t,...</p>\r\n\r\n<p>Ngo&agrave;i ra, th&acirc;n loa cũng được t&iacute;ch hợp th&ecirc;m đ&egrave;n LED với phong c&aacute;ch DJ bắt mắt nhằm mang đến kh&ocirc;ng kh&iacute; s&ocirc;i động cho những buổi tiệc của bạn. Bạn c&oacute; thể kết nối loa với ứng dụng của Samsung tr&ecirc;n điện thoại của m&igrave;nh để điều chỉnh c&aacute;c chế độ m&agrave;u h&ograve;a hợp với điệu nhạc như Party, Dance, Ambient,...</p>\r\n\r\n<h3><strong>T&iacute;ch hợp đa dạng t&iacute;nh năng ph&aacute;t nhạc hữu &iacute;ch</strong></h3>\r\n\r\n<p>Loa th&aacute;p Samsung MX-T40 được nhiều bạn biết đến bởi t&iacute;nh năng gh&eacute;p nối với nhiều d&ograve;ng loa th&aacute;p Samsung kh&aacute;c nhau. Từ đ&oacute;, bạn c&oacute; thể gi&uacute;p những buổi tiệc của m&igrave;nh th&ecirc;m phần sinh động hơn với những bản h&ograve;a nhạc đến từ nhiều chiếc loa kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>Hơn nữa, bạn cũng được thỏa th&iacute;ch tận hưởng c&aacute;c giai điệu nhạc kh&aacute;c nhau nhờ những chế độ ph&aacute;t nhạc đa dạng tr&ecirc;n thiết bị như HipHop, Party, Rock, Reggae,... Đặc biệt hơn, chiếc loa cũng thỏa m&atilde;n đam m&ecirc; ca h&aacute;t của bạn nhờ c&oacute; chế độ karaoke t&iacute;ch hợp. Với t&iacute;nh năng n&agrave;y, bạn sẽ được thể hiện giọng h&aacute;t của m&igrave;nh với những giai điệu s&acirc;u lắng, sắc n&eacute;t.</p>\r\n\r\n<p><img alt=\"Ghép đôi loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-4.jpg\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, chiếc loa cũng t&iacute;ch hợp th&ecirc;m cổng kết nối USB tiện lợi hỗ trợ người d&ugrave;ng c&oacute; thể gh&eacute;p nối với những thiết bị c&ocirc;ng nghệ kh&aacute;c. Nhờ v&agrave;o t&iacute;nh năng n&agrave;y, bạn c&oacute; thể tận hưởng những bản nhạc m&igrave;nh y&ecirc;u th&iacute;ch ở mọi l&uacute;c mọi nơi.</p>\r\n\r\n<p>Với t&iacute;nh năng kết nối nhờ c&oacute; c&ocirc;ng nghệ Bluetooth, mẫu loa cũng cho ph&eacute;p bạn kết nối với nhiều thiết bị di động c&ugrave;ng l&uacute;c. Th&ocirc;ng qua c&ocirc;ng nghệ kết nối bằng Bluetooth, bạn sẽ c&oacute; th&ecirc;m nhiều niềm vui khi được tận hướng những bản nhạc với bạn b&egrave;, người th&acirc;n của m&igrave;nh.&nbsp;</p>\r\n\r\n<h3><strong>Tuổi thọ l&acirc;u d&agrave;i với khả năng kh&aacute;ng nước tối ưu</strong></h3>\r\n\r\n<p>B&ecirc;n cạnh c&aacute;c ưu điểm về thiết kế v&agrave; khả năng ph&aacute;t nhạc, nhờ c&oacute; chất liệu bền bỉ d&ograve;ng loa n&agrave;y cũng mang khả năng kh&aacute;ng nước tối ưu. Bạn c&oacute; thể tổ chức những buổi tiệc ngo&agrave;i tr&ecirc;n ở những b&atilde;i biển hay hồ bơi với sản phẩm v&agrave; kh&ocirc;ng phải lo lắng thiết bị sẽ hư hỏng. Nhờ v&agrave;o đ&oacute;, tuổi thọ của loa cũng trở n&ecirc;n v&ocirc; c&ugrave;ng bền bỉ theo thời gian.&nbsp;</p>\r\n\r\n<p><img alt=\"loa tháp Samsung MX-T40/XV - Kháng nước\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-6.jpg\" /></p>\r\n\r\n<h2><strong>Mua loa th&aacute;p Samsung MX-T40 gi&aacute; rẻ, chất lượng tại CellphoneS</strong></h2>\r\n\r\n<p>Để sảng kho&aacute;i b&ugrave;ng nổ trong thế giới &acirc;m thanh sống động c&ugrave;ng với bạn b&egrave;, bạn h&atilde;y nhanh tay sở hữu loa th&aacute;p&nbsp;<strong>Samsung MX-T40 ch&iacute;nh h&atilde;ng</strong>. Sản phẩm hiện đang được b&aacute;n ra tại cửa h&agrave;ng CellphoneS với mức gi&aacute; hợp l&yacute; c&ugrave;ng bảo h&agrave;nh thời gian d&agrave;i.</p>', '35', 1, '', 0, 1, 1, 0, 3850000.00, 0.00, 0.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Bluetooth Wireless Speaker', NULL, '2023-08-04 02:29:34', '2023-08-08 03:24:35'),
(15, 'Smartphone X Seri 02', 'smartphone-x-seri-021', 0, 1, 'images/Smartphone-X-seri-02-480x480.jpg.webp', 'images/Smartphone-X-seri-024-480x480.jpg.webp,images/Smartphone-X-seri-022-480x480.jpg.webp,images/071cd205a711842b5af831a361b8784c.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera\r\nSản phẩm giám sát, định vị\r\n\r\nĐịnh vị ô tô, xe máy\r\nĐịnh vị và giám sát xe lạnh trong vận tải\r\nThiết bị định vị ô tô, xe máy là loại thiết bị sử dụng nền tảng hệ thống định vị toàn cầu GPS (Global Positioning System) để xác định vị trí chính xác của xe ô tô theo thời gian thực.', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" style=\"height:571px; width:611px\" /></p>\r\n\r\n<h2 style=\"text-align:center\">Blast past fast.</h2>\r\n\r\n<p style=\"text-align:center\">A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p style=\"text-align:center\">An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" style=\"width:100%\" /></p>', '33', 1, '', 1, 1, 0, 0, 18500000.00, 16460000.00, 18000000.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Smartphone X Seri 02', NULL, '2023-08-03 23:47:17', '2023-08-08 03:24:17'),
(16, 'Bluetooth Wireless Speaker', 'bluetooth-wireless-speaker1', 0, 1, 'images/bluetooth-wireless-speaker3-480x480.webp', 'images/bluetooth-wireless-speaker-480x480.webp,images/bluetooth-wireless-speaker2-480x480webp.webp,images/49bfcd80340189e6efcd84ac43486267.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera\r\nSản phẩm giám sát, định vị\r\n\r\nĐịnh vị ô tô, xe máy\r\nĐịnh vị và giám sát xe lạnh trong vận tải\r\nThiết bị định vị ô tô, xe máy là loại thiết bị sử dụng nền tảng hệ thống định vị toàn cầu GPS (Global Positioning System) để xác định vị trí chính xác của xe ô tô theo thời gian thực.', '<h2><strong>Loa th&aacute;p Samsung MX-T40/XV &ndash; Khuấy động mọi bữa tiệc</strong></h2>\r\n\r\n<p>Tr&ecirc;n thị trường hiện c&oacute; rất nhiều sản phẩm &acirc;m thanh với kết cấu kỳ dị, nhưng d&ugrave; g&igrave;, th&igrave; &acirc;m thanh vẫn l&agrave; chất lượng cần quan t&acirc;m h&agrave;ng đầu. Nếu bạn cần t&igrave;m một chiếc loa sở hữu đầy đủ c&aacute;c yếu tố độc, lạ, hay th&igrave; h&atilde;y chọn loa<strong>&nbsp;Samsung MX-T40</strong>.</p>\r\n\r\n<h3><strong>Cấu tr&uacute;c th&aacute;p, dễ d&agrave;ng kết nối bluetooth</strong></h3>\r\n\r\n<p>Loa&nbsp;sở hữu kết cấu đặc biệt, khiến người ta li&ecirc;n tưởng đến c&aacute;c c&ocirc;ng tr&igrave;nh kiến tr&uacute;c vĩ đại như th&aacute;p Eiffel, Th&aacute;p Burj Khalifa,... V&igrave; thế kh&ocirc;ng chỉ để nghe nhạc m&agrave; sản phẩm c&ograve;n l&agrave; vật trang tr&iacute; nổi bật trong kh&ocirc;ng gian nh&agrave; bạn.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-7.jpg\" /></p>\r\n\r\n<p>Thiết kế của loa th&aacute;p Samsung MX T40 độc đ&aacute;o, ấn tượng. B&ecirc;n cạnh đ&oacute;, khả năng gh&eacute;p nối loa c&ugrave;ng 2 thiết bị di động 1 l&uacute;c gi&uacute;p bạn tận hưởng khoảnh khắc vui vẻ b&ecirc;n bạn b&egrave;, người th&acirc;n.</p>\r\n\r\n<h3><strong>C&ocirc;ng suất mạnh mẽ 300W, bass booster b&ugrave;ng nổ kh&ocirc;ng gian</strong></h3>\r\n\r\n<p>C&ocirc;ng suất của loa th&aacute;p&nbsp;<strong>MX-T40</strong>&nbsp;l&ecirc;n đến 300W - lớn gấp nhiều lần so với c&ocirc;ng suất loa th&ocirc;ng thường. Nhờ v&agrave;o kết cấu loa đa hướng, bạn sẽ lan tỏa &acirc;m thanh đến mọi ng&oacute;c ng&aacute;ch.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-3.jpg\" /></p>\r\n\r\n<p>Với t&iacute;nh năng bass booster hỗ trợ tăng cường &acirc;m trầm cho những bản nhạc s&ocirc;i động. Kết hợp c&ugrave;ng đ&egrave;n LED mang đến phong c&aacute;ch chuẩn DJ. &Acirc;m thanh của chiếc loa th&aacute;p Samsung MX-T40/XV t&aacute;i hiện những &acirc;m thanh ch&acirc;n thật nhất.</p>\r\n\r\n<h3><strong>Ngoại h&igrave;nh độc đ&aacute;o với đ&egrave;n LED phong c&aacute;ch DJ t&iacute;ch hợp</strong></h3>\r\n\r\n<p>Loa Samsung c&oacute; thiết kế được l&agrave;m bằng nhựa kết hợp c&ugrave;ng kim loại cứng c&aacute;p. Nhờ v&agrave;o đ&oacute;, chiếc loa đến từ thương hiệu Samsung được nhiều bạn y&ecirc;u mến với độ bền cao.&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"Thiết kế loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-1.jpg\" /></p>\r\n\r\n<p>Điểm nổi bật của chiếc loa nằm ở thiết kế c&acirc;n bằng ở 3 g&oacute;c gi&uacute;p sản phẩm c&oacute; thể đứng vững tr&ecirc;n mọi bề mặt. Thiết kế của loa cũng được đ&aacute;nh gi&aacute; l&agrave; mang đến sự tiện lợi tối ưu cho người d&ugrave;ng với bảng điều khiển được t&iacute;ch hợp ở mặt tr&ecirc;n. Th&ocirc;ng qua bảng điều khiển n&agrave;y, bạn c&oacute; thể t&ugrave;y chỉnh chiếc loa của m&igrave;nh như tăng/ giảm &acirc;m lượng, chuyển b&agrave;i h&aacute;t,...</p>\r\n\r\n<p>Ngo&agrave;i ra, th&acirc;n loa cũng được t&iacute;ch hợp th&ecirc;m đ&egrave;n LED với phong c&aacute;ch DJ bắt mắt nhằm mang đến kh&ocirc;ng kh&iacute; s&ocirc;i động cho những buổi tiệc của bạn. Bạn c&oacute; thể kết nối loa với ứng dụng của Samsung tr&ecirc;n điện thoại của m&igrave;nh để điều chỉnh c&aacute;c chế độ m&agrave;u h&ograve;a hợp với điệu nhạc như Party, Dance, Ambient,...</p>\r\n\r\n<h3><strong>T&iacute;ch hợp đa dạng t&iacute;nh năng ph&aacute;t nhạc hữu &iacute;ch</strong></h3>\r\n\r\n<p>Loa th&aacute;p Samsung MX-T40 được nhiều bạn biết đến bởi t&iacute;nh năng gh&eacute;p nối với nhiều d&ograve;ng loa th&aacute;p Samsung kh&aacute;c nhau. Từ đ&oacute;, bạn c&oacute; thể gi&uacute;p những buổi tiệc của m&igrave;nh th&ecirc;m phần sinh động hơn với những bản h&ograve;a nhạc đến từ nhiều chiếc loa kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>Hơn nữa, bạn cũng được thỏa th&iacute;ch tận hưởng c&aacute;c giai điệu nhạc kh&aacute;c nhau nhờ những chế độ ph&aacute;t nhạc đa dạng tr&ecirc;n thiết bị như HipHop, Party, Rock, Reggae,... Đặc biệt hơn, chiếc loa cũng thỏa m&atilde;n đam m&ecirc; ca h&aacute;t của bạn nhờ c&oacute; chế độ karaoke t&iacute;ch hợp. Với t&iacute;nh năng n&agrave;y, bạn sẽ được thể hiện giọng h&aacute;t của m&igrave;nh với những giai điệu s&acirc;u lắng, sắc n&eacute;t.</p>\r\n\r\n<p><img alt=\"Ghép đôi loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-4.jpg\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, chiếc loa cũng t&iacute;ch hợp th&ecirc;m cổng kết nối USB tiện lợi hỗ trợ người d&ugrave;ng c&oacute; thể gh&eacute;p nối với những thiết bị c&ocirc;ng nghệ kh&aacute;c. Nhờ v&agrave;o t&iacute;nh năng n&agrave;y, bạn c&oacute; thể tận hưởng những bản nhạc m&igrave;nh y&ecirc;u th&iacute;ch ở mọi l&uacute;c mọi nơi.</p>\r\n\r\n<p>Với t&iacute;nh năng kết nối nhờ c&oacute; c&ocirc;ng nghệ Bluetooth, mẫu loa cũng cho ph&eacute;p bạn kết nối với nhiều thiết bị di động c&ugrave;ng l&uacute;c. Th&ocirc;ng qua c&ocirc;ng nghệ kết nối bằng Bluetooth, bạn sẽ c&oacute; th&ecirc;m nhiều niềm vui khi được tận hướng những bản nhạc với bạn b&egrave;, người th&acirc;n của m&igrave;nh.&nbsp;</p>\r\n\r\n<h3><strong>Tuổi thọ l&acirc;u d&agrave;i với khả năng kh&aacute;ng nước tối ưu</strong></h3>\r\n\r\n<p>B&ecirc;n cạnh c&aacute;c ưu điểm về thiết kế v&agrave; khả năng ph&aacute;t nhạc, nhờ c&oacute; chất liệu bền bỉ d&ograve;ng loa n&agrave;y cũng mang khả năng kh&aacute;ng nước tối ưu. Bạn c&oacute; thể tổ chức những buổi tiệc ngo&agrave;i tr&ecirc;n ở những b&atilde;i biển hay hồ bơi với sản phẩm v&agrave; kh&ocirc;ng phải lo lắng thiết bị sẽ hư hỏng. Nhờ v&agrave;o đ&oacute;, tuổi thọ của loa cũng trở n&ecirc;n v&ocirc; c&ugrave;ng bền bỉ theo thời gian.&nbsp;</p>\r\n\r\n<p><img alt=\"loa tháp Samsung MX-T40/XV - Kháng nước\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-6.jpg\" /></p>\r\n\r\n<h2><strong>Mua loa th&aacute;p Samsung MX-T40 gi&aacute; rẻ, chất lượng tại CellphoneS</strong></h2>\r\n\r\n<p>Để sảng kho&aacute;i b&ugrave;ng nổ trong thế giới &acirc;m thanh sống động c&ugrave;ng với bạn b&egrave;, bạn h&atilde;y nhanh tay sở hữu loa th&aacute;p&nbsp;<strong>Samsung MX-T40 ch&iacute;nh h&atilde;ng</strong>. Sản phẩm hiện đang được b&aacute;n ra tại cửa h&agrave;ng CellphoneS với mức gi&aacute; hợp l&yacute; c&ugrave;ng bảo h&agrave;nh thời gian d&agrave;i.</p>', '35', 2, '', 0, 1, 1, 0, 3850000.00, 0.00, 0.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Bluetooth Wireless Speaker', NULL, '2023-08-04 02:29:34', '2023-08-08 03:24:13'),
(17, 'Smartphone X Seri 02', 'smartphone-x-seri-022', 0, 1, 'images/Smartphone-X-seri-02-480x480.jpg.webp', 'images/Smartphone-X-seri-024-480x480.jpg.webp,images/Smartphone-X-seri-022-480x480.jpg.webp,images/071cd205a711842b5af831a361b8784c.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" style=\"height:571px; width:611px\" /></p>\r\n\r\n<h2 style=\"text-align:center\">Blast past fast.</h2>\r\n\r\n<p style=\"text-align:center\">A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p style=\"text-align:center\">An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" style=\"width:100%\" /></p>', '33', 1, '', 1, 1, 1, 0, 18500000.00, 16460000.00, 18000000.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Smartphone X Seri 02', NULL, '2023-08-03 23:47:17', '2023-08-08 03:24:07'),
(18, 'Bluetooth Wireless Speaker', 'bluetooth-wireless-speaker2', 0, 1, 'images/bluetooth-wireless-speaker3-480x480.webp', 'images/bluetooth-wireless-speaker-480x480.webp,images/bluetooth-wireless-speaker2-480x480webp.webp,images/49bfcd80340189e6efcd84ac43486267.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera\r\nSản phẩm giám sát, định vị\r\n\r\nĐịnh vị ô tô, xe máy\r\nĐịnh vị và giám sát xe lạnh trong vận tải\r\nThiết bị định vị ô tô, xe máy là loại thiết bị sử dụng nền tảng hệ thống định vị toàn cầu GPS (Global Positioning System) để xác định vị trí chính xác của xe ô tô theo thời gian thực.', '<h2><strong>Loa th&aacute;p Samsung MX-T40/XV &ndash; Khuấy động mọi bữa tiệc</strong></h2>\r\n\r\n<p>Tr&ecirc;n thị trường hiện c&oacute; rất nhiều sản phẩm &acirc;m thanh với kết cấu kỳ dị, nhưng d&ugrave; g&igrave;, th&igrave; &acirc;m thanh vẫn l&agrave; chất lượng cần quan t&acirc;m h&agrave;ng đầu. Nếu bạn cần t&igrave;m một chiếc loa sở hữu đầy đủ c&aacute;c yếu tố độc, lạ, hay th&igrave; h&atilde;y chọn loa<strong>&nbsp;Samsung MX-T40</strong>.</p>\r\n\r\n<h3><strong>Cấu tr&uacute;c th&aacute;p, dễ d&agrave;ng kết nối bluetooth</strong></h3>\r\n\r\n<p>Loa&nbsp;sở hữu kết cấu đặc biệt, khiến người ta li&ecirc;n tưởng đến c&aacute;c c&ocirc;ng tr&igrave;nh kiến tr&uacute;c vĩ đại như th&aacute;p Eiffel, Th&aacute;p Burj Khalifa,... V&igrave; thế kh&ocirc;ng chỉ để nghe nhạc m&agrave; sản phẩm c&ograve;n l&agrave; vật trang tr&iacute; nổi bật trong kh&ocirc;ng gian nh&agrave; bạn.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-7.jpg\" /></p>\r\n\r\n<p>Thiết kế của loa th&aacute;p Samsung MX T40 độc đ&aacute;o, ấn tượng. B&ecirc;n cạnh đ&oacute;, khả năng gh&eacute;p nối loa c&ugrave;ng 2 thiết bị di động 1 l&uacute;c gi&uacute;p bạn tận hưởng khoảnh khắc vui vẻ b&ecirc;n bạn b&egrave;, người th&acirc;n.</p>\r\n\r\n<h3><strong>C&ocirc;ng suất mạnh mẽ 300W, bass booster b&ugrave;ng nổ kh&ocirc;ng gian</strong></h3>\r\n\r\n<p>C&ocirc;ng suất của loa th&aacute;p&nbsp;<strong>MX-T40</strong>&nbsp;l&ecirc;n đến 300W - lớn gấp nhiều lần so với c&ocirc;ng suất loa th&ocirc;ng thường. Nhờ v&agrave;o kết cấu loa đa hướng, bạn sẽ lan tỏa &acirc;m thanh đến mọi ng&oacute;c ng&aacute;ch.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-3.jpg\" /></p>\r\n\r\n<p>Với t&iacute;nh năng bass booster hỗ trợ tăng cường &acirc;m trầm cho những bản nhạc s&ocirc;i động. Kết hợp c&ugrave;ng đ&egrave;n LED mang đến phong c&aacute;ch chuẩn DJ. &Acirc;m thanh của chiếc loa th&aacute;p Samsung MX-T40/XV t&aacute;i hiện những &acirc;m thanh ch&acirc;n thật nhất.</p>\r\n\r\n<h3><strong>Ngoại h&igrave;nh độc đ&aacute;o với đ&egrave;n LED phong c&aacute;ch DJ t&iacute;ch hợp</strong></h3>\r\n\r\n<p>Loa Samsung c&oacute; thiết kế được l&agrave;m bằng nhựa kết hợp c&ugrave;ng kim loại cứng c&aacute;p. Nhờ v&agrave;o đ&oacute;, chiếc loa đến từ thương hiệu Samsung được nhiều bạn y&ecirc;u mến với độ bền cao.&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"Thiết kế loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-1.jpg\" /></p>\r\n\r\n<p>Điểm nổi bật của chiếc loa nằm ở thiết kế c&acirc;n bằng ở 3 g&oacute;c gi&uacute;p sản phẩm c&oacute; thể đứng vững tr&ecirc;n mọi bề mặt. Thiết kế của loa cũng được đ&aacute;nh gi&aacute; l&agrave; mang đến sự tiện lợi tối ưu cho người d&ugrave;ng với bảng điều khiển được t&iacute;ch hợp ở mặt tr&ecirc;n. Th&ocirc;ng qua bảng điều khiển n&agrave;y, bạn c&oacute; thể t&ugrave;y chỉnh chiếc loa của m&igrave;nh như tăng/ giảm &acirc;m lượng, chuyển b&agrave;i h&aacute;t,...</p>\r\n\r\n<p>Ngo&agrave;i ra, th&acirc;n loa cũng được t&iacute;ch hợp th&ecirc;m đ&egrave;n LED với phong c&aacute;ch DJ bắt mắt nhằm mang đến kh&ocirc;ng kh&iacute; s&ocirc;i động cho những buổi tiệc của bạn. Bạn c&oacute; thể kết nối loa với ứng dụng của Samsung tr&ecirc;n điện thoại của m&igrave;nh để điều chỉnh c&aacute;c chế độ m&agrave;u h&ograve;a hợp với điệu nhạc như Party, Dance, Ambient,...</p>\r\n\r\n<h3><strong>T&iacute;ch hợp đa dạng t&iacute;nh năng ph&aacute;t nhạc hữu &iacute;ch</strong></h3>\r\n\r\n<p>Loa th&aacute;p Samsung MX-T40 được nhiều bạn biết đến bởi t&iacute;nh năng gh&eacute;p nối với nhiều d&ograve;ng loa th&aacute;p Samsung kh&aacute;c nhau. Từ đ&oacute;, bạn c&oacute; thể gi&uacute;p những buổi tiệc của m&igrave;nh th&ecirc;m phần sinh động hơn với những bản h&ograve;a nhạc đến từ nhiều chiếc loa kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>Hơn nữa, bạn cũng được thỏa th&iacute;ch tận hưởng c&aacute;c giai điệu nhạc kh&aacute;c nhau nhờ những chế độ ph&aacute;t nhạc đa dạng tr&ecirc;n thiết bị như HipHop, Party, Rock, Reggae,... Đặc biệt hơn, chiếc loa cũng thỏa m&atilde;n đam m&ecirc; ca h&aacute;t của bạn nhờ c&oacute; chế độ karaoke t&iacute;ch hợp. Với t&iacute;nh năng n&agrave;y, bạn sẽ được thể hiện giọng h&aacute;t của m&igrave;nh với những giai điệu s&acirc;u lắng, sắc n&eacute;t.</p>\r\n\r\n<p><img alt=\"Ghép đôi loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-4.jpg\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, chiếc loa cũng t&iacute;ch hợp th&ecirc;m cổng kết nối USB tiện lợi hỗ trợ người d&ugrave;ng c&oacute; thể gh&eacute;p nối với những thiết bị c&ocirc;ng nghệ kh&aacute;c. Nhờ v&agrave;o t&iacute;nh năng n&agrave;y, bạn c&oacute; thể tận hưởng những bản nhạc m&igrave;nh y&ecirc;u th&iacute;ch ở mọi l&uacute;c mọi nơi.</p>\r\n\r\n<p>Với t&iacute;nh năng kết nối nhờ c&oacute; c&ocirc;ng nghệ Bluetooth, mẫu loa cũng cho ph&eacute;p bạn kết nối với nhiều thiết bị di động c&ugrave;ng l&uacute;c. Th&ocirc;ng qua c&ocirc;ng nghệ kết nối bằng Bluetooth, bạn sẽ c&oacute; th&ecirc;m nhiều niềm vui khi được tận hướng những bản nhạc với bạn b&egrave;, người th&acirc;n của m&igrave;nh.&nbsp;</p>\r\n\r\n<h3><strong>Tuổi thọ l&acirc;u d&agrave;i với khả năng kh&aacute;ng nước tối ưu</strong></h3>\r\n\r\n<p>B&ecirc;n cạnh c&aacute;c ưu điểm về thiết kế v&agrave; khả năng ph&aacute;t nhạc, nhờ c&oacute; chất liệu bền bỉ d&ograve;ng loa n&agrave;y cũng mang khả năng kh&aacute;ng nước tối ưu. Bạn c&oacute; thể tổ chức những buổi tiệc ngo&agrave;i tr&ecirc;n ở những b&atilde;i biển hay hồ bơi với sản phẩm v&agrave; kh&ocirc;ng phải lo lắng thiết bị sẽ hư hỏng. Nhờ v&agrave;o đ&oacute;, tuổi thọ của loa cũng trở n&ecirc;n v&ocirc; c&ugrave;ng bền bỉ theo thời gian.&nbsp;</p>\r\n\r\n<p><img alt=\"loa tháp Samsung MX-T40/XV - Kháng nước\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-6.jpg\" /></p>\r\n\r\n<h2><strong>Mua loa th&aacute;p Samsung MX-T40 gi&aacute; rẻ, chất lượng tại CellphoneS</strong></h2>\r\n\r\n<p>Để sảng kho&aacute;i b&ugrave;ng nổ trong thế giới &acirc;m thanh sống động c&ugrave;ng với bạn b&egrave;, bạn h&atilde;y nhanh tay sở hữu loa th&aacute;p&nbsp;<strong>Samsung MX-T40 ch&iacute;nh h&atilde;ng</strong>. Sản phẩm hiện đang được b&aacute;n ra tại cửa h&agrave;ng CellphoneS với mức gi&aacute; hợp l&yacute; c&ugrave;ng bảo h&agrave;nh thời gian d&agrave;i.</p>', '35', NULL, '', 0, 1, 1, 0, 3850000.00, 0.00, 0.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Bluetooth Wireless Speaker', NULL, '2023-08-04 02:29:34', '2023-08-08 03:24:02'),
(19, 'Smartphone X Seri 02e3', 'smartphone-x-seri-02e3', 0, 1, 'images/Smartphone-X-seri-02-480x480.jpg.webp', 'images/Smartphone-X-seri-024-480x480.jpg.webp,images/Smartphone-X-seri-022-480x480.jpg.webp,images/071cd205a711842b5af831a361b8784c.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera\r\nSản phẩm giám sát, định vị\r\n\r\nĐịnh vị ô tô, xe máy\r\nĐịnh vị và giám sát xe lạnh trong vận tải\r\nThiết bị định vị ô tô, xe máy là loại thiết bị sử dụng nền tảng hệ thống định vị toàn cầu GPS (Global Positioning System) để xác định vị trí chính xác của xe ô tô theo thời gian thực.', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" style=\"height:571px; width:611px\" /></p>\r\n\r\n<h2 style=\"text-align:center\">Blast past fast.</h2>\r\n\r\n<p style=\"text-align:center\">A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p style=\"text-align:center\">An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" style=\"width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" style=\"width:100%\" /></p>', '33', 1, '', 1, 1, 0, 0, 18500000.00, 16460000.00, 18000000.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Smartphone X Seri 02e3', NULL, '2023-08-03 23:47:17', '2023-08-08 03:23:57'),
(20, 'Bluetooth Wireless Speaker', 'bluetooth-wireless-speaker13', 0, 1, 'images/bluetooth-wireless-speaker3-480x480.webp', 'images/bluetooth-wireless-speaker-480x480.webp,images/bluetooth-wireless-speaker2-480x480webp.webp,images/49bfcd80340189e6efcd84ac43486267.webp', NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera\r\nSản phẩm giám sát, định vị\r\n\r\nĐịnh vị ô tô, xe máy\r\nĐịnh vị và giám sát xe lạnh trong vận tải\r\nThiết bị định vị ô tô, xe máy là loại thiết bị sử dụng nền tảng hệ thống định vị toàn cầu GPS (Global Positioning System) để xác định vị trí chính xác của xe ô tô theo thời gian thực.', '<h2><strong>Loa th&aacute;p Samsung MX-T40/XV &ndash; Khuấy động mọi bữa tiệc</strong></h2>\r\n\r\n<p>Tr&ecirc;n thị trường hiện c&oacute; rất nhiều sản phẩm &acirc;m thanh với kết cấu kỳ dị, nhưng d&ugrave; g&igrave;, th&igrave; &acirc;m thanh vẫn l&agrave; chất lượng cần quan t&acirc;m h&agrave;ng đầu. Nếu bạn cần t&igrave;m một chiếc loa sở hữu đầy đủ c&aacute;c yếu tố độc, lạ, hay th&igrave; h&atilde;y chọn loa<strong>&nbsp;Samsung MX-T40</strong>.</p>\r\n\r\n<h3><strong>Cấu tr&uacute;c th&aacute;p, dễ d&agrave;ng kết nối bluetooth</strong></h3>\r\n\r\n<p>Loa&nbsp;sở hữu kết cấu đặc biệt, khiến người ta li&ecirc;n tưởng đến c&aacute;c c&ocirc;ng tr&igrave;nh kiến tr&uacute;c vĩ đại như th&aacute;p Eiffel, Th&aacute;p Burj Khalifa,... V&igrave; thế kh&ocirc;ng chỉ để nghe nhạc m&agrave; sản phẩm c&ograve;n l&agrave; vật trang tr&iacute; nổi bật trong kh&ocirc;ng gian nh&agrave; bạn.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-7.jpg\" /></p>\r\n\r\n<p>Thiết kế của loa th&aacute;p Samsung MX T40 độc đ&aacute;o, ấn tượng. B&ecirc;n cạnh đ&oacute;, khả năng gh&eacute;p nối loa c&ugrave;ng 2 thiết bị di động 1 l&uacute;c gi&uacute;p bạn tận hưởng khoảnh khắc vui vẻ b&ecirc;n bạn b&egrave;, người th&acirc;n.</p>\r\n\r\n<h3><strong>C&ocirc;ng suất mạnh mẽ 300W, bass booster b&ugrave;ng nổ kh&ocirc;ng gian</strong></h3>\r\n\r\n<p>C&ocirc;ng suất của loa th&aacute;p&nbsp;<strong>MX-T40</strong>&nbsp;l&ecirc;n đến 300W - lớn gấp nhiều lần so với c&ocirc;ng suất loa th&ocirc;ng thường. Nhờ v&agrave;o kết cấu loa đa hướng, bạn sẽ lan tỏa &acirc;m thanh đến mọi ng&oacute;c ng&aacute;ch.</p>\r\n\r\n<p><img alt=\"Loa tháp Samsung MX-T40\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-3.jpg\" /></p>\r\n\r\n<p>Với t&iacute;nh năng bass booster hỗ trợ tăng cường &acirc;m trầm cho những bản nhạc s&ocirc;i động. Kết hợp c&ugrave;ng đ&egrave;n LED mang đến phong c&aacute;ch chuẩn DJ. &Acirc;m thanh của chiếc loa th&aacute;p Samsung MX-T40/XV t&aacute;i hiện những &acirc;m thanh ch&acirc;n thật nhất.</p>\r\n\r\n<h3><strong>Ngoại h&igrave;nh độc đ&aacute;o với đ&egrave;n LED phong c&aacute;ch DJ t&iacute;ch hợp</strong></h3>\r\n\r\n<p>Loa Samsung c&oacute; thiết kế được l&agrave;m bằng nhựa kết hợp c&ugrave;ng kim loại cứng c&aacute;p. Nhờ v&agrave;o đ&oacute;, chiếc loa đến từ thương hiệu Samsung được nhiều bạn y&ecirc;u mến với độ bền cao.&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"Thiết kế loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-1.jpg\" /></p>\r\n\r\n<p>Điểm nổi bật của chiếc loa nằm ở thiết kế c&acirc;n bằng ở 3 g&oacute;c gi&uacute;p sản phẩm c&oacute; thể đứng vững tr&ecirc;n mọi bề mặt. Thiết kế của loa cũng được đ&aacute;nh gi&aacute; l&agrave; mang đến sự tiện lợi tối ưu cho người d&ugrave;ng với bảng điều khiển được t&iacute;ch hợp ở mặt tr&ecirc;n. Th&ocirc;ng qua bảng điều khiển n&agrave;y, bạn c&oacute; thể t&ugrave;y chỉnh chiếc loa của m&igrave;nh như tăng/ giảm &acirc;m lượng, chuyển b&agrave;i h&aacute;t,...</p>\r\n\r\n<p>Ngo&agrave;i ra, th&acirc;n loa cũng được t&iacute;ch hợp th&ecirc;m đ&egrave;n LED với phong c&aacute;ch DJ bắt mắt nhằm mang đến kh&ocirc;ng kh&iacute; s&ocirc;i động cho những buổi tiệc của bạn. Bạn c&oacute; thể kết nối loa với ứng dụng của Samsung tr&ecirc;n điện thoại của m&igrave;nh để điều chỉnh c&aacute;c chế độ m&agrave;u h&ograve;a hợp với điệu nhạc như Party, Dance, Ambient,...</p>\r\n\r\n<h3><strong>T&iacute;ch hợp đa dạng t&iacute;nh năng ph&aacute;t nhạc hữu &iacute;ch</strong></h3>\r\n\r\n<p>Loa th&aacute;p Samsung MX-T40 được nhiều bạn biết đến bởi t&iacute;nh năng gh&eacute;p nối với nhiều d&ograve;ng loa th&aacute;p Samsung kh&aacute;c nhau. Từ đ&oacute;, bạn c&oacute; thể gi&uacute;p những buổi tiệc của m&igrave;nh th&ecirc;m phần sinh động hơn với những bản h&ograve;a nhạc đến từ nhiều chiếc loa kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>Hơn nữa, bạn cũng được thỏa th&iacute;ch tận hưởng c&aacute;c giai điệu nhạc kh&aacute;c nhau nhờ những chế độ ph&aacute;t nhạc đa dạng tr&ecirc;n thiết bị như HipHop, Party, Rock, Reggae,... Đặc biệt hơn, chiếc loa cũng thỏa m&atilde;n đam m&ecirc; ca h&aacute;t của bạn nhờ c&oacute; chế độ karaoke t&iacute;ch hợp. Với t&iacute;nh năng n&agrave;y, bạn sẽ được thể hiện giọng h&aacute;t của m&igrave;nh với những giai điệu s&acirc;u lắng, sắc n&eacute;t.</p>\r\n\r\n<p><img alt=\"Ghép đôi loa tháp Samsung MX-T40/XV\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-4.jpg\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, chiếc loa cũng t&iacute;ch hợp th&ecirc;m cổng kết nối USB tiện lợi hỗ trợ người d&ugrave;ng c&oacute; thể gh&eacute;p nối với những thiết bị c&ocirc;ng nghệ kh&aacute;c. Nhờ v&agrave;o t&iacute;nh năng n&agrave;y, bạn c&oacute; thể tận hưởng những bản nhạc m&igrave;nh y&ecirc;u th&iacute;ch ở mọi l&uacute;c mọi nơi.</p>\r\n\r\n<p>Với t&iacute;nh năng kết nối nhờ c&oacute; c&ocirc;ng nghệ Bluetooth, mẫu loa cũng cho ph&eacute;p bạn kết nối với nhiều thiết bị di động c&ugrave;ng l&uacute;c. Th&ocirc;ng qua c&ocirc;ng nghệ kết nối bằng Bluetooth, bạn sẽ c&oacute; th&ecirc;m nhiều niềm vui khi được tận hướng những bản nhạc với bạn b&egrave;, người th&acirc;n của m&igrave;nh.&nbsp;</p>\r\n\r\n<h3><strong>Tuổi thọ l&acirc;u d&agrave;i với khả năng kh&aacute;ng nước tối ưu</strong></h3>\r\n\r\n<p>B&ecirc;n cạnh c&aacute;c ưu điểm về thiết kế v&agrave; khả năng ph&aacute;t nhạc, nhờ c&oacute; chất liệu bền bỉ d&ograve;ng loa n&agrave;y cũng mang khả năng kh&aacute;ng nước tối ưu. Bạn c&oacute; thể tổ chức những buổi tiệc ngo&agrave;i tr&ecirc;n ở những b&atilde;i biển hay hồ bơi với sản phẩm v&agrave; kh&ocirc;ng phải lo lắng thiết bị sẽ hư hỏng. Nhờ v&agrave;o đ&oacute;, tuổi thọ của loa cũng trở n&ecirc;n v&ocirc; c&ugrave;ng bền bỉ theo thời gian.&nbsp;</p>\r\n\r\n<p><img alt=\"loa tháp Samsung MX-T40/XV - Kháng nước\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Loa/Samsung/loa-thap-samsung-mx-t40-6.jpg\" /></p>\r\n\r\n<h2><strong>Mua loa th&aacute;p Samsung MX-T40 gi&aacute; rẻ, chất lượng tại CellphoneS</strong></h2>\r\n\r\n<p>Để sảng kho&aacute;i b&ugrave;ng nổ trong thế giới &acirc;m thanh sống động c&ugrave;ng với bạn b&egrave;, bạn h&atilde;y nhanh tay sở hữu loa th&aacute;p&nbsp;<strong>Samsung MX-T40 ch&iacute;nh h&atilde;ng</strong>. Sản phẩm hiện đang được b&aacute;n ra tại cửa h&agrave;ng CellphoneS với mức gi&aacute; hợp l&yacute; c&ugrave;ng bảo h&agrave;nh thời gian d&agrave;i.</p>', '32', 3, '', 0, 1, 1, 0, 3850000.00, 0.00, 0.00, '<p>5.0 inch HD Screen<br />\r\nAndroid 4.4 KitKat OS<br />\r\n1.4 GHz Quad Core&trade; Processor<br />\r\n20 MP front Camera<br />\r\nSản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<p>Định vị &ocirc; t&ocirc;, xe m&aacute;y<br />\r\nĐịnh vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải<br />\r\nThiết bị định vị &ocirc; t&ocirc;, xe m&aacute;y l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Bluetooth Wireless Speaker', NULL, '2023-08-04 02:29:34', '2023-08-08 03:23:51'),
(21, 'Flat 32″ 4K UHD 11 d', 'flat-32″-4k-uhd-11-d', 0, 1, 'images/feature-1-480x480.jpg.webp', NULL, NULL, '5.0 inch HD Screen\r\nAndroid 4.4 KitKat OS\r\n1.4 GHz Quad Core™ Processor\r\n20 MP front Camera', '<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" /></p>\r\n\r\n<h2>Blast past fast.</h2>\r\n\r\n<p>A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p>An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" /></p>', '30', 1, '', 1, 0, 0, 0, 12050000.00, NULL, 0.00, '<p>Sản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<ul>\r\n	<li>Định vị &ocirc; t&ocirc;, xe m&aacute;y</li>\r\n	<li>Định vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải</li>\r\n</ul>\r\n\r\n<p>Thiết bị định vị&nbsp;&ocirc; t&ocirc;, xe m&aacute;y&nbsp;l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Flat 32″ 4K UHD 11 d', NULL, '2023-08-04 21:00:43', '2023-08-08 03:23:43'),
(22, 'Audio 5v 2a Us Hot c', 'audio-5v-2a-us-hot-c', 0, 1, 'images/audio-5v-2a-us-hot2-480x480.jpg.webp', NULL, NULL, 'Sản phẩm giám sát, định vị\r\n\r\nĐịnh vị ô tô, xe máy\r\nĐịnh vị và giám sát xe lạnh trong vận tải\r\nThiết bị định vị ô tô, xe máy là loại thiết bị sử dụng nền tảng hệ thống định vị toàn cầu GPS (Global Positioning System) để xác định vị trí chính xác của xe ô tô theo thời gian thực.', '<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" /></p>\r\n\r\n<h2>Blast past fast.</h2>\r\n\r\n<p>A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p>An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" /></p>', '30', 2, '', 1, 0, 0, 0, 3650000.00, NULL, 0.00, '<p>Sản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<ul>\r\n	<li>Định vị &ocirc; t&ocirc;, xe m&aacute;y</li>\r\n	<li>Định vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải</li>\r\n</ul>\r\n\r\n<p>Thiết bị định vị&nbsp;&ocirc; t&ocirc;, xe m&aacute;y&nbsp;l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Audio 5v 2a Us Hot c', NULL, '2023-08-04 21:01:38', '2023-08-08 03:23:37'),
(23, 'Camera Series Curved b', 'camera-series-curved-b', 0, 1, 'images/camera-series-curved-27-480x480.jpg.webp', NULL, NULL, 'Sản phẩm giám sát, định vị\r\n\r\nĐịnh vị ô tô, xe máy\r\nĐịnh vị và giám sát xe lạnh trong vận tải\r\nThiết bị định vị ô tô, xe máy là loại thiết bị sử dụng nền tảng hệ thống định vị toàn cầu GPS (Global Positioning System) để xác định vị trí chính xác của xe ô tô theo thời gian thực.', '<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" /></p>\r\n\r\n<h2>Blast past fast.</h2>\r\n\r\n<p>A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p>An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" /></p>', '30', 2, '', 1, 0, 0, 0, 6530000.00, NULL, 0.00, '<p>Sản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<ul>\r\n	<li>Định vị &ocirc; t&ocirc;, xe m&aacute;y</li>\r\n	<li>Định vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải</li>\r\n</ul>\r\n\r\n<p>Thiết bị định vị&nbsp;&ocirc; t&ocirc;, xe m&aacute;y&nbsp;l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'Camera Series Curved b', NULL, '2023-08-04 21:02:54', '2023-08-08 03:23:30'),
(24, '3mm Lens Portable Quick Charginga', '3mm-lens-portable-quick-charginga', 0, 1, 'images/3-3mm-lens-portable-quick-charging-480x480.jpg.webp', 'images/237259e2a057eee2e858b5b755f1c367.webp,images/audio-5v-2a-us-hot-480x480.png.webp', NULL, 'Sản phẩm giám sát, định vị\r\n\r\nĐịnh vị ô tô, xe máy\r\nĐịnh vị và giám sát xe lạnh trong vận tải\r\nThiết bị định vị ô tô, xe máy là loại thiết bị sử dụng nền tảng hệ thống định vị toàn cầu GPS (Global Positioning System) để xác định vị trí chính xác của xe ô tô theo thời gian thực.', '<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single1.jpg.webp\" /></p>\r\n\r\n<h2>Blast past fast.</h2>\r\n\r\n<p>A14 Bionic, the fastest chip in a smartphone.</p>\r\n\r\n<p>An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all &mdash; in two perfect sizes.</p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single2.jpg.webp\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://smartaudio.local//storage/san-pham/iphone/img-single4.jpg.webp\" /></p>', '107', 1, '', 1, 0, 1, 0, 680000.00, NULL, 0.00, '<p>Sản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<ul>\r\n	<li>Định vị &ocirc; t&ocirc;, xe m&aacute;y</li>\r\n	<li>Định vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải</li>\r\n</ul>\r\n\r\n<p>Thiết bị định vị&nbsp;&ocirc; t&ocirc;, xe m&aacute;y&nbsp;l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', '3mm Lens Portable Quick Charginga', 'Sản phẩm giám sát, định vị\r\n\r\nĐịnh vị ô tô, xe máy\r\nĐịnh vị và giám sát xe lạnh trong vận tải\r\nThiết bị định vị ô tô, xe máy là loại thiết bị sử dụng nền tảng hệ thống định vị toàn cầu GPS (Global Positioning System) để xác định vị trí chính xác của xe ô tô theo thời gian thực.', '2023-08-04 21:03:40', '2023-08-08 03:23:22'),
(25, 'test', 'test', 0, 1, 'images/29d05611f7f0d365230c1f9fc17cc416.webp', NULL, NULL, 'Sản phẩm giám sát, định vị\r\n\r\nĐịnh vị ô tô, xe máy\r\nĐịnh vị và giám sát xe lạnh trong vận tải\r\nThiết bị định vị ô tô, xe máy là loại thiết bị sử dụng nền tảng hệ thống định vị toàn cầu GPS (Global Positioning System) để xác định vị trí chính xác của xe ô tô theo thời gian thực.', '<p>Sản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<ul>\r\n	<li>Định vị &ocirc; t&ocirc;, xe m&aacute;y</li>\r\n	<li>Định vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải</li>\r\n</ul>\r\n\r\n<p>Thiết bị định vị&nbsp;&ocirc; t&ocirc;, xe m&aacute;y&nbsp;l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', '107', NULL, NULL, 1, 1, 1, 0, 11111.00, NULL, 0.00, '<p>Sản phẩm gi&aacute;m s&aacute;t, định vị</p>\r\n\r\n<ul>\r\n	<li>Định vị &ocirc; t&ocirc;, xe m&aacute;y</li>\r\n	<li>Định vị v&agrave; gi&aacute;m s&aacute;t xe lạnh trong vận tải</li>\r\n</ul>\r\n\r\n<p>Thiết bị định vị&nbsp;&ocirc; t&ocirc;, xe m&aacute;y&nbsp;l&agrave; loại thiết bị sử dụng nền tảng hệ thống định vị to&agrave;n cầu GPS (Global Positioning System) để x&aacute;c định vị tr&iacute; ch&iacute;nh x&aacute;c của xe &ocirc; t&ocirc; theo thời gian thực.</p>', 'test', NULL, '2023-08-05 20:38:50', '2023-08-08 03:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `products_tag`
--

CREATE TABLE `products_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `content` longtext DEFAULT NULL,
  `seo_meta_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_brands`
--

CREATE TABLE `product_brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `logo` varchar(191) NOT NULL,
  `content` longtext DEFAULT NULL,
  `active` int(11) NOT NULL,
  `seo_meta_title` varchar(191) NOT NULL,
  `seo_meta_description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_brands`
--

INSERT INTO `product_brands` (`id`, `title`, `slug`, `logo`, `content`, `active`, `seo_meta_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'samsung', 'images/samsung-logo.jpg', '<p>Samsung</p>', 1, 'Samsung', 'Samsung', '2023-08-05 02:08:29', '2023-08-05 02:08:29'),
(2, 'Dell', 'dell', 'images/dell-logo.jpg', '<p>Dell</p>', 1, 'Dell', 'Dell', '2023-08-05 02:08:42', '2023-08-05 02:08:42'),
(3, 'HP', 'hp', 'images/hp-logo.jpg', '<p>HP</p>', 1, 'HP', 'HP', '2023-08-05 02:08:55', '2023-08-05 02:08:55'),
(4, 'Xiaomi', 'xiaomi', 'images/mi-logo.jpg', '<p>Xiaomi</p>', 1, 'Xiaomi', 'Xiaomi', '2023-08-05 02:09:16', '2023-08-05 02:09:16'),
(5, 'Logitech', 'logitech', 'images/logitech-logo.jpg', '<p>Logitech</p>', 1, 'Logitech', 'Logitech', '2023-08-05 02:09:33', '2023-08-05 02:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_rate` int(11) NOT NULL,
  `product_review_content` text NOT NULL,
  `product_reviewer_name` varchar(191) NOT NULL,
  `product_reviewer_email` varchar(191) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `product_rate`, `product_review_content`, `product_reviewer_name`, `product_reviewer_email`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'nội dung đánh giá', 'Tuấn Nguyễn', 'rubytech.net@gmail.com', 1, '2023-08-04 01:33:18', '2023-08-08 06:07:17'),
(2, 1, 4, '<p>Sản phẩm tốt</p>', 'Hải hà', 'hh@gmail.com', 1, '2023-08-04 01:58:06', '2023-08-08 06:07:16'),
(3, 6, 5, 'sản phẩm rất tốt', 'tuấn nguyễn', 'vtuan1989@gmail.com', 1, '2023-08-08 05:55:26', '2023-08-08 06:07:15'),
(4, 6, 5, 'alertModal', 'vtuan', 'alertModal', 1, '2023-08-08 05:56:15', '2023-08-08 06:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `slideshows`
--

CREATE TABLE `slideshows` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `sub_title` varchar(550) DEFAULT NULL,
  `link` varchar(191) NOT NULL,
  `location` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `images` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slideshows`
--

INSERT INTO `slideshows` (`id`, `title`, `sub_title`, `link`, `location`, `order`, `active`, `images`, `created_at`, `updated_at`) VALUES
(1, 'New arrivals <br/> Smartphone X11', '<div>UP TO 30% OFF <div class=\"button-green\">from <b>110</b> <small>$</small></div></div>', 'http://shop.local/', 'top-slideshow', 1, 1, 'images/slide1.webp', '2022-06-21 20:39:41', '2023-08-04 00:14:00'),
(2, 'Home pod <br/>mini 3', '<div>UP TO 30% OFF <div class=\"button-red\">from <b>110</b> <small>$</small></div></div>', 'http://shop.local/', 'top-slideshow', 1, 1, 'images/slide2.webp', '2022-06-21 20:41:03', '2023-08-04 00:14:10'),
(26, 'X-Game <br/> Controller 18', '<div>UP TO 30% OFF <div class=\"button-pink\">from <b>110</b> <small>$</small></div></div>', '#', 'top-slideshow', 3, 1, 'images/slide3.webp', '2023-08-03 03:50:38', '2023-08-04 00:14:20'),
(27, 'Table & <br/> SMARTPHONE', 'UP TO 30% OFF', '#', 'after-top-slideshow', 1, 1, 'images/banner1.webp', '2023-08-03 22:14:58', '2023-08-03 23:56:37'),
(28, 'Camera &<br>Video', 'UP TO 30% OFF', '#', 'after-top-slideshow', 2, 1, 'images/banner2.webp', '2023-08-03 22:15:52', '2023-08-03 23:56:46'),
(29, 'TELEVISION <br/>&HOME THEATER', 'UP TO 30% OFF', '#', 'after-top-slideshow', 3, 1, 'images/banner3.webp', '2023-08-03 22:16:36', '2023-08-03 23:56:58'),
(30, 'AMAZFIT <br/>POWERBUDS', 'Noise-blocking design', '#', 'left-feature', 1, 1, 'images/img1-5.webp', '2023-08-04 18:04:53', '2023-08-04 18:04:53'),
(31, 'X-BOX <br/>CONTROLER', 'The best products 2020', '#', 'left-feature', 2, 1, 'images/img1-6.webp', '2023-08-04 18:05:27', '2023-08-04 18:05:27'),
(32, 'New gadgets for new year', 'Up to 60% off consumer electronics', '#', 'after-feature-product', 1, 1, 'images/img1-7.jpg', '2023-08-04 19:27:40', '2023-08-04 19:27:40'),
(33, 'TMA-2 headphones', 'new wireless option', '#', 'after-bestseller-product', 1, 1, 'images/img1-8.jpg.webp', '2023-08-05 01:46:16', '2023-08-05 01:46:16'),
(34, 'Mi 10 Smartphone', '30% OFF BUY ONLINE', '#', 'after-bestseller-product', 2, 1, 'images/img1-9.jpg.webp', '2023-08-05 01:46:37', '2023-08-05 01:46:37'),
(35, 'Banner trang sản phẩm', NULL, '#', 'shop-page', 1, 1, 'images/banner-catrgory.jpg.webp', '2023-08-06 18:19:18', '2023-08-06 18:19:32'),
(36, 'Đối tác', NULL, '#', 'partner', 1, 1, 'images/dt1.jpg', '2023-08-07 01:56:46', '2023-08-07 01:56:46'),
(37, 'Đối tác 2', NULL, '#', 'partner', 2, 1, 'images/dt10.jpg', '2023-08-07 01:57:08', '2023-08-07 01:57:08'),
(38, 'Đối tác 3', NULL, '#', 'partner', 3, 1, 'images/dt2.jpg', '2023-08-07 01:57:28', '2023-08-07 01:57:28'),
(39, 'Đối tác 4', NULL, '#', 'partner', 4, 1, 'images/dt3.jpg', '2023-08-07 01:57:44', '2023-08-07 01:57:44'),
(40, 'Đối tác 5', NULL, '#', 'partner', 5, 1, 'images/dt4.jpg', '2023-08-07 01:57:59', '2023-08-07 01:57:59'),
(41, 'Đối tác 6', NULL, '#', 'partner', 6, 1, 'images/dt5.jpg', '2023-08-07 01:58:11', '2023-08-07 01:58:11'),
(42, 'Đối tác 7', NULL, '#', 'partner', 7, 1, 'images/dt6.jpg', '2023-08-07 01:58:24', '2023-08-07 01:58:24'),
(43, 'Đối tác 8', NULL, '#', 'partner', 8, 1, 'images/dt7.jpg', '2023-08-07 01:58:34', '2023-08-07 01:58:34'),
(44, 'Đối tác 9', NULL, '#', 'partner', 9, 1, 'images/dt8.jpg', '2023-08-07 01:58:48', '2023-08-07 01:58:48'),
(45, 'Đối tác 10', NULL, '#', 'partner', 10, 1, 'images/dt9.jpg', '2023-08-07 01:59:00', '2023-08-07 01:59:00'),
(46, 'Banner trang sản phẩm mới', NULL, '#', 'shop-new', 1, 1, 'images/banner-catrgory.jpg.webp', '2023-08-06 18:19:18', '2023-08-06 18:19:32'),
(47, 'Banner trang sản phẩm khuyến mãi', NULL, '#', 'shop-discount', 1, 1, 'images/banner-catrgory.jpg.webp', '2023-08-06 18:19:18', '2023-08-06 18:19:32'),
(48, 'Banner trang sản phẩm bán chạy', NULL, '#', 'shop-bestseller', 1, 1, 'images/banner-catrgory.jpg.webp', '2023-08-06 18:19:18', '2023-08-06 18:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `fullname` text DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `fullname`, `active`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '0976852147', 'rubytech.net@gmail.com', NULL, 'Nguyễn Tuấn', 1, '$2y$10$O/hpTiCs6VCUTmPpli7IJeU/.JyFvOl/KuWgHL2ZS7L/HYmBUFkli', NULL, '2023-08-07 23:18:30', '2023-08-08 21:40:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_config`
--
ALTER TABLE `admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_config_name_unique` (`name`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_reviews`
--
ALTER TABLE `customer_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `giapha_authors`
--
ALTER TABLE `giapha_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `giapha_authors_api_credential`
--
ALTER TABLE `giapha_authors_api_credential`
  ADD UNIQUE KEY `credential_ident` (`credential_ident`),
  ADD UNIQUE KEY `credential_secret` (`credential_secret`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `giapha_authors_api_role`
--
ALTER TABLE `giapha_authors_api_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `giapha_authors_config`
--
ALTER TABLE `giapha_authors_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Indexes for table `giapha_authors_module`
--
ALTER TABLE `giapha_authors_module`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Indexes for table `giapha_authors_oauth`
--
ALTER TABLE `giapha_authors_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`,`oauth_server`,`oauth_uid`),
  ADD KEY `oauth_email` (`oauth_email`);

--
-- Indexes for table `giapha_banners_click`
--
ALTER TABLE `giapha_banners_click`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`),
  ADD KEY `click_day` (`click_day`),
  ADD KEY `click_ip` (`click_ip`),
  ADD KEY `click_country` (`click_country`),
  ADD KEY `click_browse_key` (`click_browse_key`),
  ADD KEY `click_os_key` (`click_os_key`);

--
-- Indexes for table `giapha_banners_plans`
--
ALTER TABLE `giapha_banners_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `giapha_banners_rows`
--
ALTER TABLE `giapha_banners_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `clid` (`clid`);

--
-- Indexes for table `giapha_config`
--
ALTER TABLE `giapha_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Indexes for table `giapha_cookies`
--
ALTER TABLE `giapha_cookies`
  ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `giapha_counter`
--
ALTER TABLE `giapha_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Indexes for table `giapha_cronjobs`
--
ALTER TABLE `giapha_cronjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_sys` (`is_sys`);

--
-- Indexes for table `giapha_extension_files`
--
ALTER TABLE `giapha_extension_files`
  ADD PRIMARY KEY (`idfile`);

--
-- Indexes for table `giapha_ips`
--
ALTER TABLE `giapha_ips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`,`type`);

--
-- Indexes for table `giapha_language`
--
ALTER TABLE `giapha_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`,`langtype`);

--
-- Indexes for table `giapha_language_file`
--
ALTER TABLE `giapha_language_file`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Indexes for table `giapha_logs`
--
ALTER TABLE `giapha_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giapha_notification`
--
ALTER TABLE `giapha_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_to` (`send_to`),
  ADD KEY `admin_view_allowed` (`admin_view_allowed`),
  ADD KEY `logic_mode` (`logic_mode`);

--
-- Indexes for table `giapha_plugin`
--
ALTER TABLE `giapha_plugin`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Indexes for table `giapha_sessions`
--
ALTER TABLE `giapha_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `onl_time` (`onl_time`);

--
-- Indexes for table `giapha_setup_extensions`
--
ALTER TABLE `giapha_setup_extensions`
  ADD UNIQUE KEY `title` (`type`,`title`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `giapha_setup_language`
--
ALTER TABLE `giapha_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Indexes for table `giapha_upload_dir`
--
ALTER TABLE `giapha_upload_dir`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `name` (`dirname`);

--
-- Indexes for table `giapha_upload_file`
--
ALTER TABLE `giapha_upload_file`
  ADD UNIQUE KEY `did` (`did`,`title`),
  ADD KEY `userid` (`userid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `giapha_users`
--
ALTER TABLE `giapha_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Indexes for table `giapha_users_backupcodes`
--
ALTER TABLE `giapha_users_backupcodes`
  ADD UNIQUE KEY `userid` (`userid`,`code`);

--
-- Indexes for table `giapha_users_config`
--
ALTER TABLE `giapha_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `giapha_users_edit`
--
ALTER TABLE `giapha_users_edit`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `giapha_users_field`
--
ALTER TABLE `giapha_users_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `giapha_users_groups`
--
ALTER TABLE `giapha_users_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `kalias` (`alias`,`idsite`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `giapha_users_groups_detail`
--
ALTER TABLE `giapha_users_groups_detail`
  ADD UNIQUE KEY `group_id_lang` (`lang`,`group_id`);

--
-- Indexes for table `giapha_users_groups_users`
--
ALTER TABLE `giapha_users_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Indexes for table `giapha_users_info`
--
ALTER TABLE `giapha_users_info`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `giapha_users_openid`
--
ALTER TABLE `giapha_users_openid`
  ADD UNIQUE KEY `opid` (`openid`,`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `giapha_users_question`
--
ALTER TABLE `giapha_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Indexes for table `giapha_users_reg`
--
ALTER TABLE `giapha_users_reg`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `login` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `giapha_vi_about`
--
ALTER TABLE `giapha_vi_about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `giapha_vi_about_config`
--
ALTER TABLE `giapha_vi_about_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `giapha_vi_blocks_groups`
--
ALTER TABLE `giapha_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `theme` (`theme`),
  ADD KEY `module` (`module`),
  ADD KEY `position` (`position`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `giapha_vi_blocks_weight`
--
ALTER TABLE `giapha_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Indexes for table `giapha_vi_comment`
--
ALTER TABLE `giapha_vi_comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `mod_id` (`module`,`area`,`id`),
  ADD KEY `post_time` (`post_time`);

--
-- Indexes for table `giapha_vi_contact_department`
--
ALTER TABLE `giapha_vi_contact_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `giapha_vi_contact_reply`
--
ALTER TABLE `giapha_vi_contact_reply`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `giapha_vi_contact_send`
--
ALTER TABLE `giapha_vi_contact_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_name` (`sender_name`);

--
-- Indexes for table `giapha_vi_contact_supporter`
--
ALTER TABLE `giapha_vi_contact_supporter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giapha_vi_freecontent_blocks`
--
ALTER TABLE `giapha_vi_freecontent_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `giapha_vi_freecontent_rows`
--
ALTER TABLE `giapha_vi_freecontent_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giapha_vi_gia_pha`
--
ALTER TABLE `giapha_vi_gia_pha`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gid` (`gid`,`alias`) USING HASH,
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `giapha_vi_gia_pha_family`
--
ALTER TABLE `giapha_vi_gia_pha_family`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `alias` (`alias`) USING HASH;

--
-- Indexes for table `giapha_vi_gia_pha_genealogy`
--
ALTER TABLE `giapha_vi_gia_pha_genealogy`
  ADD PRIMARY KEY (`gid`),
  ADD UNIQUE KEY `alias` (`alias`) USING HASH,
  ADD KEY `locationid` (`locationid`);

--
-- Indexes for table `giapha_vi_gia_pha_location`
--
ALTER TABLE `giapha_vi_gia_pha_location`
  ADD PRIMARY KEY (`locationid`),
  ADD UNIQUE KEY `title` (`title`) USING HASH,
  ADD UNIQUE KEY `alias` (`alias`) USING HASH;

--
-- Indexes for table `giapha_vi_menu`
--
ALTER TABLE `giapha_vi_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `giapha_vi_menu_rows`
--
ALTER TABLE `giapha_vi_menu_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`,`mid`);

--
-- Indexes for table `giapha_vi_modfuncs`
--
ALTER TABLE `giapha_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`),
  ADD UNIQUE KEY `func_name` (`func_name`,`in_module`),
  ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Indexes for table `giapha_vi_modthemes`
--
ALTER TABLE `giapha_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Indexes for table `giapha_vi_modules`
--
ALTER TABLE `giapha_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `giapha_vi_news_1`
--
ALTER TABLE `giapha_vi_news_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `giapha_vi_news_2`
--
ALTER TABLE `giapha_vi_news_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `giapha_vi_news_3`
--
ALTER TABLE `giapha_vi_news_3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `giapha_vi_news_4`
--
ALTER TABLE `giapha_vi_news_4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `giapha_vi_news_5`
--
ALTER TABLE `giapha_vi_news_5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `giapha_vi_news_6`
--
ALTER TABLE `giapha_vi_news_6`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `giapha_vi_news_7`
--
ALTER TABLE `giapha_vi_news_7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `giapha_vi_news_admins`
--
ALTER TABLE `giapha_vi_news_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `giapha_vi_news_author`
--
ALTER TABLE `giapha_vi_news_author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `giapha_vi_news_authorlist`
--
ALTER TABLE `giapha_vi_news_authorlist`
  ADD UNIQUE KEY `id_aid` (`id`,`aid`),
  ADD KEY `aid` (`aid`),
  ADD KEY `alias` (`alias`);

--
-- Indexes for table `giapha_vi_news_block`
--
ALTER TABLE `giapha_vi_news_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `giapha_vi_news_block_cat`
--
ALTER TABLE `giapha_vi_news_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `giapha_vi_news_cat`
--
ALTER TABLE `giapha_vi_news_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `giapha_vi_news_config_post`
--
ALTER TABLE `giapha_vi_news_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `giapha_vi_news_detail`
--
ALTER TABLE `giapha_vi_news_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giapha_vi_news_logs`
--
ALTER TABLE `giapha_vi_news_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `log_key` (`log_key`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `giapha_vi_news_rows`
--
ALTER TABLE `giapha_vi_news_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `giapha_vi_news_row_histories`
--
ALTER TABLE `giapha_vi_news_row_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `new_id` (`new_id`),
  ADD KEY `historytime` (`historytime`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `giapha_vi_news_sources`
--
ALTER TABLE `giapha_vi_news_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `giapha_vi_news_tags`
--
ALTER TABLE `giapha_vi_news_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `giapha_vi_news_tags_id`
--
ALTER TABLE `giapha_vi_news_tags_id`
  ADD UNIQUE KEY `id_tid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `giapha_vi_news_tmp`
--
ALTER TABLE `giapha_vi_news_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giapha_vi_news_topics`
--
ALTER TABLE `giapha_vi_news_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `giapha_vi_news_voices`
--
ALTER TABLE `giapha_vi_news_voices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `weight` (`weight`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `giapha_vi_page`
--
ALTER TABLE `giapha_vi_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `giapha_vi_page_config`
--
ALTER TABLE `giapha_vi_page_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `giapha_vi_referer_stats`
--
ALTER TABLE `giapha_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `total` (`total`);

--
-- Indexes for table `giapha_vi_searchkeys`
--
ALTER TABLE `giapha_vi_searchkeys`
  ADD KEY `id` (`id`),
  ADD KEY `skey` (`skey`),
  ADD KEY `search_engine` (`search_engine`);

--
-- Indexes for table `giapha_vi_siteterms`
--
ALTER TABLE `giapha_vi_siteterms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `giapha_vi_siteterms_config`
--
ALTER TABLE `giapha_vi_siteterms_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `giapha_vi_voting`
--
ALTER TABLE `giapha_vi_voting`
  ADD PRIMARY KEY (`vid`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `giapha_vi_voting_rows`
--
ALTER TABLE `giapha_vi_voting_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- Indexes for table `giapha_vi_voting_voted`
--
ALTER TABLE `giapha_vi_voting_voted`
  ADD UNIQUE KEY `vid` (`vid`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_tag`
--
ALTER TABLE `news_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_tag`
--
ALTER TABLE `products_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_brands`
--
ALTER TABLE `product_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slideshows`
--
ALTER TABLE `slideshows`
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
-- AUTO_INCREMENT for table `admin_config`
--
ALTER TABLE `admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_reviews`
--
ALTER TABLE `customer_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_authors_api_role`
--
ALTER TABLE `giapha_authors_api_role`
  MODIFY `role_id` smallint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_authors_config`
--
ALTER TABLE `giapha_authors_config`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_authors_module`
--
ALTER TABLE `giapha_authors_module`
  MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `giapha_authors_oauth`
--
ALTER TABLE `giapha_authors_oauth`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_banners_click`
--
ALTER TABLE `giapha_banners_click`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_banners_plans`
--
ALTER TABLE `giapha_banners_plans`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `giapha_banners_rows`
--
ALTER TABLE `giapha_banners_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `giapha_cronjobs`
--
ALTER TABLE `giapha_cronjobs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `giapha_extension_files`
--
ALTER TABLE `giapha_extension_files`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `giapha_ips`
--
ALTER TABLE `giapha_ips`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_language`
--
ALTER TABLE `giapha_language`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_language_file`
--
ALTER TABLE `giapha_language_file`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_logs`
--
ALTER TABLE `giapha_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `giapha_notification`
--
ALTER TABLE `giapha_notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `giapha_plugin`
--
ALTER TABLE `giapha_plugin`
  MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `giapha_upload_dir`
--
ALTER TABLE `giapha_upload_dir`
  MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `giapha_users`
--
ALTER TABLE `giapha_users`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `giapha_users_backupcodes`
--
ALTER TABLE `giapha_users_backupcodes`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_users_field`
--
ALTER TABLE `giapha_users_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `giapha_users_groups`
--
ALTER TABLE `giapha_users_groups`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `giapha_users_question`
--
ALTER TABLE `giapha_users_question`
  MODIFY `qid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `giapha_users_reg`
--
ALTER TABLE `giapha_users_reg`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `giapha_vi_about`
--
ALTER TABLE `giapha_vi_about`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `giapha_vi_blocks_groups`
--
ALTER TABLE `giapha_vi_blocks_groups`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `giapha_vi_comment`
--
ALTER TABLE `giapha_vi_comment`
  MODIFY `cid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_vi_contact_department`
--
ALTER TABLE `giapha_vi_contact_department`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `giapha_vi_contact_reply`
--
ALTER TABLE `giapha_vi_contact_reply`
  MODIFY `rid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_vi_contact_send`
--
ALTER TABLE `giapha_vi_contact_send`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `giapha_vi_contact_supporter`
--
ALTER TABLE `giapha_vi_contact_supporter`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_vi_freecontent_blocks`
--
ALTER TABLE `giapha_vi_freecontent_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `giapha_vi_freecontent_rows`
--
ALTER TABLE `giapha_vi_freecontent_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `giapha_vi_gia_pha`
--
ALTER TABLE `giapha_vi_gia_pha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;

--
-- AUTO_INCREMENT for table `giapha_vi_gia_pha_family`
--
ALTER TABLE `giapha_vi_gia_pha_family`
  MODIFY `fid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `giapha_vi_gia_pha_genealogy`
--
ALTER TABLE `giapha_vi_gia_pha_genealogy`
  MODIFY `gid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `giapha_vi_gia_pha_location`
--
ALTER TABLE `giapha_vi_gia_pha_location`
  MODIFY `locationid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `giapha_vi_menu`
--
ALTER TABLE `giapha_vi_menu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `giapha_vi_menu_rows`
--
ALTER TABLE `giapha_vi_menu_rows`
  MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `giapha_vi_modfuncs`
--
ALTER TABLE `giapha_vi_modfuncs`
  MODIFY `func_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `giapha_vi_news_1`
--
ALTER TABLE `giapha_vi_news_1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `giapha_vi_news_2`
--
ALTER TABLE `giapha_vi_news_2`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `giapha_vi_news_3`
--
ALTER TABLE `giapha_vi_news_3`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `giapha_vi_news_4`
--
ALTER TABLE `giapha_vi_news_4`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `giapha_vi_news_5`
--
ALTER TABLE `giapha_vi_news_5`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `giapha_vi_news_6`
--
ALTER TABLE `giapha_vi_news_6`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `giapha_vi_news_7`
--
ALTER TABLE `giapha_vi_news_7`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `giapha_vi_news_author`
--
ALTER TABLE `giapha_vi_news_author`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `giapha_vi_news_block_cat`
--
ALTER TABLE `giapha_vi_news_block_cat`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `giapha_vi_news_cat`
--
ALTER TABLE `giapha_vi_news_cat`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `giapha_vi_news_logs`
--
ALTER TABLE `giapha_vi_news_logs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_vi_news_rows`
--
ALTER TABLE `giapha_vi_news_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `giapha_vi_news_row_histories`
--
ALTER TABLE `giapha_vi_news_row_histories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_vi_news_sources`
--
ALTER TABLE `giapha_vi_news_sources`
  MODIFY `sourceid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `giapha_vi_news_tags`
--
ALTER TABLE `giapha_vi_news_tags`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `giapha_vi_news_topics`
--
ALTER TABLE `giapha_vi_news_topics`
  MODIFY `topicid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `giapha_vi_news_voices`
--
ALTER TABLE `giapha_vi_news_voices`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_vi_page`
--
ALTER TABLE `giapha_vi_page`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giapha_vi_siteterms`
--
ALTER TABLE `giapha_vi_siteterms`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `giapha_vi_voting`
--
ALTER TABLE `giapha_vi_voting`
  MODIFY `vid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `giapha_vi_voting_rows`
--
ALTER TABLE `giapha_vi_voting_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news_tag`
--
ALTER TABLE `news_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products_tag`
--
ALTER TABLE `products_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_brands`
--
ALTER TABLE `product_brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slideshows`
--
ALTER TABLE `slideshows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
