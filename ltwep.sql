-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2022 lúc 04:22 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ltwep`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `brand_id` tinyint(3) UNSIGNED NOT NULL,
  `brand_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_keyword`, `brand_description`, `created_at`, `updated_at`) VALUES
(1, 'Phòng khách', 'phòng khách', 'phòng khách', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(2, 'Phòng ngủ', 'phòng ngủ', 'phòng ngủ', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(3, 'Phòng bếp', 'phòng bếp', 'phòng bếp', '2022-12-15 12:53:39', '2022-12-15 12:53:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorys`
--

CREATE TABLE `categorys` (
  `category_id` tinyint(3) UNSIGNED NOT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categorys`
--

INSERT INTO `categorys` (`category_id`, `category_name`, `category_keyword`, `category_description`, `created_at`, `updated_at`) VALUES
(1, 'Đèn trần decor', 'đèn trần', 'đèn trần', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(2, 'Đèn tường decor', 'đèn tường, đèn', 'đèn tường', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(3, 'Đèn ngủ decor', 'đèn ngủ, đèn', 'đèn ngủ', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(4, 'Gương decor', 'gương, gương decor', 'gương decor', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(5, 'Tranh decor', 'tranh, tranh decor', 'tranh decor', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(6, 'Bàn ghế decor', 'bàn ghế', 'bàn ghế decor', '2022-12-15 12:53:39', '2022-12-15 12:53:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `citys`
--

CREATE TABLE `citys` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `citys`
--

INSERT INTO `citys` (`city_id`, `city_name`, `city_type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `comment_customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_admin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_rating` int(11) DEFAULT NULL,
  `comment_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_status` int(11) NOT NULL,
  `coupon_expiry` date NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `districts`
--

INSERT INTO `districts` (`district_id`, `district_name`, `district_type`, `city_id`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(16, 'Huyện Sóc Sơn', 'Huyện', 1),
(17, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R\'Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `image_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`image_id`, `product_id`, `image_name`, `created_at`, `updated_at`) VALUES
(1, 1, '/storage/images_product/DkaPBH68J9_guong-decor-hien-dai-gs-044-9.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(2, 1, '/storage/images_product/ZID0i7qmtz_guong-decor-hien-dai-gs-044-10.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(3, 1, '/storage/images_product/Ei2EjFKHFk_guong-decor-hien-dai-gs-044-11.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(4, 2, '/storage/images_product/x6K3SURf88_den-chum-nhap-khau-trang-tri-phong-khach-dcc-135-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(5, 2, '/storage/images_product/Twf8jUAmNh_den-chum-nhap-khau-trang-tri-phong-khach-dcc-135-11.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(6, 2, '/storage/images_product/6Ngstj4T0K_den-chum-nhap-khau-trang-tri-phong-khach-dcc-135-13.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(7, 3, '/storage/images_product/MD6kulqucT_den-gan-tuong-ma-vang-dgt-003-.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(8, 3, '/storage/images_product/vGITJ6ZNCF_den-gan-tuong-ma-vang-dgt-003-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(9, 3, '/storage/images_product/amx01sbhv9_den-gan-tuong-ma-vang-dgt-003-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(10, 4, '/storage/images_product/9LIE3Y0C1Z_den-trang-tri-phong-ngu-nhap-khau-cao-cap-dn.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(11, 4, '/storage/images_product/Um2hl5MtYz_den-trang-tri-phong-ngu-nhap-khau-cao-cap-dn-086-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(12, 5, '/storage/images_product/qMYg1V7Z3K_tranh-decor-hien-dai-trang-tri-phong-khach-ts-941-10.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(13, 5, '/storage/images_product/YbipzxeRED_tranh-decor-hien-dai-trang-tri-phong-khach-ts-941-11.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(14, 5, '/storage/images_product/4vbkhWZX8C_tranh-decor-hien-dai-trang-tri-phong-khach-ts-941-12.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(15, 6, '/storage/images_product/3qzFP6xGrt_sofa-da-kieu-dang-hien-dai-sf-022-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(16, 6, '/storage/images_product/s23UcixxEW_sofa-da-kieu-dang-hien-dai-sf-022-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(17, 6, '/storage/images_product/ghCtxTfLBN_sofa-da-kieu-dang-hien-dai-sf-022-6.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(18, 7, '/storage/images_product/kNXuWrvLze_den-chum-nghe-thuat-thong-tang-dtt-013-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(19, 7, '/storage/images_product/BBLZbw3I9m_den-chum-nghe-thuat-thong-tang-dtt-013-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(20, 7, '/storage/images_product/C3bZLi4Gqb_den-chum-nghe-thuat-thong-tang-dtt-013-12.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(21, 8, '/storage/images_product/f7KmiSvBJp_den-ban-nghe-thuat-trang-tri-phong-ngu-dn-093.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(22, 8, '/storage/images_product/vwxNxjLnvH_den-ban-nghe-thuat-trang-tri-phong-ngu-dn-093-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(23, 8, '/storage/images_product/uYG3uoC1XP_den-ban-nghe-thuat-trang-tri-phong-ngu-dn-093-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(24, 9, '/storage/images_product/OUZ5BezLon_tranh-noi-3d-treo-tuong-ton-ngo-khong-tsa-110-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(25, 9, '/storage/images_product/EiLuFRD2qt_tranh-noi-3d-treo-tuong-ton-ngo-khong-tsa-110-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(26, 9, '/storage/images_product/pAJlX3KX7F_tranh-noi-3d-treo-tuong-ton-ngo-khong-tsa-110-7.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(27, 10, '/storage/images_product/zJSEnWb9uO_tranh-decor-3d-trang-tri-noi-that-phong-khach-tsa-102-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(28, 10, '/storage/images_product/2JXHHx6kqO_tranh-decor-3d-trang-tri-noi-that-phong-khach-tsa-102-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(29, 10, '/storage/images_product/heSc6r3Bw3_tranh-decor-3d-trang-tri-noi-that-phong-khach-tsa-102-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(30, 11, '/storage/images_product/Ww50kcl2UG_guong-trang-tri-nhap-khau-gs-036.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(31, 11, '/storage/images_product/Ha9gEOax44_guong-trang-tri-nhap-khau-gs-036-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(32, 11, '/storage/images_product/R0vEayAhto_guong-trang-tri-nhap-khau-gs-036-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(33, 12, '/storage/images_product/30GwIZCZAC_den-led-trang-tri-ban-an-led-046-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(34, 12, '/storage/images_product/BSQskAGt9u_den-led-trang-tri-ban-an-led-046-5.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(35, 12, '/storage/images_product/ISiKLONhVY_den-led-trang-tri-ban-an-led-046-6.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(36, 13, '/storage/images_product/DZ0cap9zNq_sofa-da-hien-dai-nhap-khau-sf-023-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(37, 13, '/storage/images_product/DQgWOLhvvg_sofa-da-hien-dai-nhap-khau-sf-023-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(38, 13, '/storage/images_product/4bm9B8z7Os_sofa-da-hien-dai-nhap-khau-sf-023-7.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(39, 14, '/storage/images_product/bfq8OKBjnM_den-chum-pha-le-la-trang-tri-phong-khach-dcc-156-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(40, 14, '/storage/images_product/6H0lQ5EWI3_den-chum-pha-le-la-trang-tri-phong-khach-dcc-156-5.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(41, 14, '/storage/images_product/gZKGguontu_den-chum-pha-le-la-trang-tri-phong-khach-dcc-156-10.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(42, 15, '/storage/images_product/5BS5cWVTlG_bo-3-tranh-trang-guong-treo-tuong-ttga-031.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(43, 15, '/storage/images_product/VtwV7jmsF8_bo-3-tranh-trang-guong-treo-tuong-ttga-031-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(44, 15, '/storage/images_product/FM8FaR5L4C_bo-3-tranh-trang-guong-treo-tuong-ttga-031-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(45, 16, '/storage/images_product/fHBmMokudC_tranh-noi-3d-co-gai-trang-tri-phong-khach-tsa-108-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(46, 16, '/storage/images_product/BeuTAr7pZw_tranh-noi-3d-co-gai-trang-tri-phong-khach-tsa-108-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(47, 16, '/storage/images_product/4E3kSGk6GR_tranh-noi-3d-co-gai-trang-tri-phong-khach-tsa-108-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(48, 17, '/storage/images_product/1LIM3zQoFA_den-ban-hien-dai-cao-cap-dn-089-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(49, 17, '/storage/images_product/L5OE7XydVV_den-ban-hien-dai-cao-cap-dn-089-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(50, 17, '/storage/images_product/cbG0mhB6yZ_den-ban-hien-dai-cao-cap-dn-089-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(51, 18, '/storage/images_product/2VTsCp9wS0_den-chum-nghe-thuat-cao-cap-dcc-130-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(52, 18, '/storage/images_product/cu5z80OrtD_den-chum-nghe-thuat-cao-cap-dcc-130-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(53, 18, '/storage/images_product/TBTq0vnzz9_den-chum-nghe-thuat-cao-cap-dcc-130-10.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(54, 19, '/storage/images_product/zkxiNth0xf_sofa-nhap-khau-phong-khach-hien-dai-sf-009-10.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(55, 19, '/storage/images_product/NGdIm9vnDj_sofa-nhap-khau-phong-khach-hien-dai-sf-009-11.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(56, 19, '/storage/images_product/gbhglX3DAN_sofa-nhap-khau-phong-khach-hien-dai-sf-009-12.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(57, 20, '/storage/images_product/V3OrabJ7Op_bo-tranh-3d-nghe-thuat-trang-tri-phong-khach-tsa-086-1 (1) - Copy.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(58, 20, '/storage/images_product/CFNPjHhfLP_bo-tranh-3d-nghe-thuat-trang-tri-phong-khach-tsa-086-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(59, 20, '/storage/images_product/2ZvUBc16zW_bo-tranh-3d-nghe-thuat-trang-tri-phong-khach-tsa-086-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(60, 21, '/storage/images_product/Si9MhX69Qj_den-chum-dong-co-dien-sang-trong-dcda-009-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(61, 21, '/storage/images_product/iOUbHcMJQD_den-chum-dong-co-dien-sang-trong-dcda-009-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(62, 21, '/storage/images_product/UDrGAk0zyy_den-chum-dong-co-dien-sang-trong-dcda-009-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(63, 22, '/storage/images_product/0iwNas0J5e_den-chum-trang-tri-tan-co-dien-dcda-003-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(64, 22, '/storage/images_product/WbXIa9Ms3m_den-chum-trang-tri-tan-co-dien-dcda-003-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(65, 22, '/storage/images_product/3uWuFHckxw_den-chum-trang-tri-tan-co-dien-dcda-003-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(66, 23, '/storage/images_product/TnoGKbPccp_den-chum-nghe-thuat-cao-cap-dcc-147-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(67, 23, '/storage/images_product/kWWyMNklZh_den-chum-nghe-thuat-cao-cap-dcc-147-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(68, 23, '/storage/images_product/KPVgHq5dcI_den-chum-nghe-thuat-cao-cap-dcc-147-5.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(69, 24, '/storage/images_product/7EPpQawzvo_den-chum-pha-le-nhap-khau-cao-cap-dcc-142-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(70, 24, '/storage/images_product/MkbmSLVEAR_den-chum-pha-le-nhap-khau-cao-cap-dcc-142-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(71, 24, '/storage/images_product/758r8qrzU7_den-chum-pha-le-nhap-khau-cao-cap-dcc-142-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(72, 25, '/storage/images_product/AOzhOFWI0m_den-tha-ban-an-hien-dai-da-005-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(73, 26, '/storage/images_product/lvNQnX61Ob_den-ban-an-hinh-cau-tre-trung-da-003-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(74, 26, '/storage/images_product/7u1Q33ZCRi_den-ban-an-hinh-cau-tre-trung-da-003-5.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(75, 27, '/storage/images_product/KNnY9EWsTG_den-ban-an-doc-dao-da-002-5.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(76, 27, '/storage/images_product/FJnZVjdnbg_den-ban-an-doc-dao-da-002-7.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(77, 27, '/storage/images_product/mJq4eafWMs_den-ban-an-doc-dao-da-002-14.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(78, 28, '/storage/images_product/jcgkPpNPrO_ban-an-tron-hien-dai-bnk-017.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(79, 29, '/storage/images_product/v6z7JdWA9s_ban-nhap-khau-mat-da-bnk-003.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(80, 30, '/storage/images_product/tyWTXQh0If_ban-an-tron-nhap-khau-bnk-010.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(81, 31, '/storage/images_product/tbiROHgNaC_ban-an-tron-trang-tri-bnk-015.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(82, 32, '/storage/images_product/51kTPp3rVQ_sofa-da-nhap-khau-kieu-dang-hien-dai-sf-025-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(83, 32, '/storage/images_product/fPynFczBj9_sofa-da-nhap-khau-kieu-dang-hien-dai-sf-025-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(84, 32, '/storage/images_product/uIQpKdrV1A_sofa-da-nhap-khau-kieu-dang-hien-dai-sf-025-5.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(85, 33, '/storage/images_product/ZZwNMHHZqc_den-gan-tuong-trang-tri-dgt-005-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(86, 33, '/storage/images_product/nd16s8lBEJ_den-gan-tuong-trang-tri-dgt-005-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(87, 33, '/storage/images_product/Rk4EmT7CBl_den-gan-tuong-trang-tri-dgt-005-8.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(88, 34, '/storage/images_product/TBSd1uYwPn_den-gan-tuong-nordic-dgt-009-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(89, 34, '/storage/images_product/fY2aJDVHBB_den-gan-tuong-nordic-dgt-009-5.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(90, 35, '/storage/images_product/STQ1rSvhVu_den-gan-tuong-pha-le-trang-tri-dgt-010-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(91, 35, '/storage/images_product/vndBbhMqdN_den-gan-tuong-pha-le-trang-tri-dgt-010-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(92, 35, '/storage/images_product/NQ6ys75VuJ_den-gan-tuong-pha-le-trang-tri-dgt-010-7.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(93, 36, '/storage/images_product/pJv2iQyvMr_den-gan-tuong-hien-dai-dgt-011-5.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(94, 36, '/storage/images_product/6JUUmuhuOl_den-gan-tuong-hien-dai-dgt-011-7.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(95, 37, '/storage/images_product/NwpdLxkzhT_den-gan-tuong-nhap-khau-dgt-012-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(96, 37, '/storage/images_product/RuN1G7yOTk_den-gan-tuong-nhap-khau-dgt-012-7.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(97, 38, '/storage/images_product/Quu3InCEJ3_guong-treo-tuong-trang-tri-noi-that-gs-046-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(98, 38, '/storage/images_product/dz1Y5UbFJ6_guong-treo-tuong-trang-tri-noi-that-gs-046-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(99, 38, '/storage/images_product/tlQu8vnVAf_guong-treo-tuong-trang-tri-noi-that-gs-046-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(100, 39, '/storage/images_product/Cb4LsJS2RS_guong-trang-tri-noi-that-hien-dai-gs-047-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(101, 39, '/storage/images_product/bBS8oVRsrh_guong-trang-tri-noi-that-hien-dai-gs-047-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(102, 39, '/storage/images_product/OFRCHM0ihw_guong-trang-tri-noi-that-hien-dai-gs-047-10.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(103, 40, '/storage/images_product/0sBBwvbgwX_guong-decor-hinh-khoi-trang-tri-gs-057-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(104, 40, '/storage/images_product/Hbo6uXh0eJ_guong-decor-hinh-khoi-trang-tri-gs-057-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(105, 41, '/storage/images_product/VrPm3jGN3J_guong-decor-la-ginko-gs-065.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(106, 42, '/storage/images_product/mAO6an5OOe_guong-decor-hien-dai-trang-tri-gs-063-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(107, 42, '/storage/images_product/jnAMC5rbiZ_guong-decor-hien-dai-trang-tri-gs-063-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(108, 42, '/storage/images_product/o6jx5TuOVA_guong-decor-hien-dai-trang-tri-gs-063-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(109, 43, '/storage/images_product/QquQnVJEEu_guong-nhap-khau-trang-tri-gs-066-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(110, 43, '/storage/images_product/Qu9qYk2svQ_guong-nhap-khau-trang-tri-gs-066-10.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(111, 43, '/storage/images_product/xuESCjNQ2x_guong-nhap-khau-trang-tri-gs-066-13.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(112, 44, '/storage/images_product/dCfs8lp3Sv_bo-tranh-buom-trang-guong-ttga-018-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(113, 44, '/storage/images_product/OwFPqDIJPY_bo-tranh-buom-trang-guong-ttga-018-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(114, 44, '/storage/images_product/07dcYNQ4Hd_bo-tranh-buom-trang-guong-ttga-018-5.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(115, 45, '/storage/images_product/wgsNrn4Ypb_tranh-decor-trang-guong-trang-tri-ttga-032-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(116, 45, '/storage/images_product/4j01XGKdj1_tranh-decor-trang-guong-trang-tri-ttga-032-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(117, 45, '/storage/images_product/R46MqrdU7S_tranh-decor-trang-guong-trang-tri-ttga-032-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(118, 46, '/storage/images_product/RbbfFKM1Q5_tranh-nghe-thuat-trang-guong-ttga-030-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(119, 47, '/storage/images_product/FqeCi7TQEn_tranh-decor-trang-guong-ttga-029-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(120, 47, '/storage/images_product/JWzFVdLu3m_tranh-decor-trang-guong-ttga-029-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(121, 48, '/storage/images_product/VGna9S5UKb_tranh-bo-trang-guong-nhap-khau-ttga-025-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(122, 48, '/storage/images_product/gmCOR5eopW_tranh-bo-trang-guong-nhap-khau-ttga-025-5.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(123, 48, '/storage/images_product/8c6QhOlhAj_tranh-bo-trang-guong-nhap-khau-ttga-025-7.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(124, 49, '/storage/images_product/MQBufoNAat_tranh-decor-trang-guong-tron-ttga-015-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(125, 49, '/storage/images_product/vr1UkwtR0R_tranh-decor-trang-guong-tron-ttga-015-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(126, 49, '/storage/images_product/2fmpQRc5eb_tranh-decor-trang-guong-tron-ttga-015-4.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(127, 50, '/storage/images_product/P4ZpOzCcov_den-ban-hien-dai-trang-tri-dn-097.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(128, 50, '/storage/images_product/daWTF3qZ4k_den-ban-hien-dai-trang-tri-dn-097-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(129, 51, '/storage/images_product/aYb5btrIYX_den-ngu-decor-hien-dai-dn-100-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(130, 51, '/storage/images_product/wxON0qsZ6y_den-ngu-decor-hien-dai-dn-100-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(131, 52, '/storage/images_product/6XkxPawGkL_den-ngu-trang-tri-noi-that-dn-098-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(132, 52, '/storage/images_product/LgGd8g2vRL_den-ngu-trang-tri-noi-that-dn-098-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(133, 52, '/storage/images_product/xsnHZdijvL_den-ngu-trang-tri-noi-that-dn-098-3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(134, 53, '/storage/images_product/du76zfbU8s_guong-decor-nhap-khau-gs-067.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(135, 53, '/storage/images_product/7OrZ944fGO_guong-decor-nhap-khau-gs-067-11.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(136, 53, '/storage/images_product/zupLFEjLWe_guong-decor-nhap-khau-gs-067-12.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_10_12_000000_create_users_table', 1),
(2, '2022_07_23_173754_create_categorys_table', 1),
(3, '2022_07_23_191036_create_brands_table', 1),
(4, '2022_07_26_183015_create_citys_table', 1),
(5, '2022_07_26_183309_create_districts_table', 1),
(6, '2022_07_26_193520_create_ships_table', 1),
(7, '2022_07_27_155013_create_coupons_table', 1),
(8, '2022_07_27_173951_create_products_table', 1),
(9, '2022_07_28_071501_create_images_table', 1),
(10, '2022_07_30_190602_create_orders_table', 1),
(11, '2022_07_30_191330_create_orderdetail_table', 1),
(12, '2022_07_31_175756_create_comments_table', 1),
(13, '2022_08_01_145126_create_wishlist_table', 1),
(14, '2022_11_27_135149_create_slide_table', 1),
(15, '2022_11_28_093707_create_requirement_table', 1),
(16, '2022_12_01_152558_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `order_detail_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) NOT NULL,
  `order_detail_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`order_detail_id`, `order_id`, `product_id`, `order_detail_quantity`, `order_detail_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 5400000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(2, 2, 20, 1, 13580000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(3, 2, 19, 1, 14550000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(4, 3, 12, 1, 2940000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(5, 4, 4, 1, 1710000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(6, 5, 15, 1, 2940000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(7, 6, 13, 1, 33950000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(8, 7, 19, 1, 14550000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(9, 8, 18, 1, 7760000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(10, 9, 17, 1, 5820000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(11, 10, 18, 1, 7760000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(12, 11, 10, 1, 8820000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(13, 12, 3, 1, 1900000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(14, 13, 9, 1, 77600000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(15, 14, 20, 1, 13580000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(16, 15, 18, 1, 7760000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(17, 16, 15, 1, 2940000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(18, 17, 14, 1, 5880000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(19, 18, 5, 1, 3600000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(20, 19, 16, 1, 6790000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(21, 20, 13, 1, 33950000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(22, 21, 14, 1, 5880000, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(23, 22, 51, 1, 2700000, '2022-11-22 17:54:23', '2022-11-22 17:54:23'),
(24, 23, 51, 1, 2700000, '2022-11-22 18:07:19', '2022-11-22 18:07:19'),
(25, 23, 50, 1, 1350000, '2022-11-22 18:07:19', '2022-11-22 18:07:19'),
(26, 24, 51, 1, 2700000, '2022-11-22 18:14:30', '2022-11-22 18:14:30'),
(27, 24, 50, 1, 1350000, '2022-11-22 18:14:30', '2022-11-22 18:14:30'),
(28, 25, 51, 1, 2700000, '2022-11-22 18:15:32', '2022-11-22 18:15:32'),
(29, 25, 50, 1, 1350000, '2022-11-22 18:15:32', '2022-11-22 18:15:32'),
(30, 26, 51, 1, 2700000, '2022-11-22 18:16:13', '2022-11-22 18:16:13'),
(31, 26, 50, 1, 1350000, '2022-11-22 18:16:13', '2022-11-22 18:16:13'),
(32, 27, 51, 1, 2700000, '2022-11-22 18:21:29', '2022-11-22 18:21:29'),
(33, 27, 50, 2, 1350000, '2022-11-22 18:21:29', '2022-11-22 18:21:29'),
(34, 28, 51, 1, 2700000, '2022-11-22 18:23:47', '2022-11-22 18:23:47'),
(35, 28, 50, 2, 1350000, '2022-11-22 18:23:47', '2022-11-22 18:23:47'),
(36, 29, 51, 1, 2700000, '2022-11-22 18:31:26', '2022-11-22 18:31:26'),
(37, 29, 50, 2, 1350000, '2022-11-22 18:31:26', '2022-11-22 18:31:26'),
(38, 30, 51, 1, 2700000, '2022-11-22 18:33:25', '2022-11-22 18:33:25'),
(39, 31, 51, 1, 2700000, '2022-11-22 18:41:58', '2022-11-22 18:41:58'),
(40, 32, 51, 1, 2700000, '2022-11-22 18:47:40', '2022-11-22 18:47:40'),
(41, 33, 51, 1, 2700000, '2022-11-22 18:53:20', '2022-11-22 18:53:20'),
(42, 34, 51, 1, 2700000, '2022-11-22 18:56:11', '2022-11-22 18:56:11'),
(43, 35, 51, 2, 2700000, '2022-11-22 19:02:23', '2022-11-22 19:02:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_shipping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_pay_type` int(11) NOT NULL,
  `order_profit` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `order_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_shipping`, `order_note`, `order_pay_type`, `order_profit`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tên người nhận: Nguyễn Văn Thuận - Email: thuannv06022001@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: hoa thủy - Thị xã Sơn Tây - Thành phố Hà Nội', 'đẹp', 1, 420000, 5420000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(2, 2, 'Tên người nhận: Phạm Phan Gia Kin - Email: giakin123@gmail.com - Số điện thoại: 0946864646 - Địa chỉ: Hòa Khánh - Quận Liên Chiểu - Thành phố Đà Nẵng', 'Hàng Đẹp', 1, 6150000, 28150000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(3, 12, 'Tên người nhận: Nguyễn Văn Kim Quyên - Email: kimquyen123@gmail.com - Số điện thoại: 0922941923 - Địa chỉ: Đông Thới - Huyện Cái Nước - Tỉnh Cà Mau', NULL, 1, 2860000, 2960000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(4, 6, 'Tên người nhận: Lê Cân - Email: lecan123@gmail.com - Số điện thoại: 0831275341 - Địa chỉ: Hòa Khánh - Quận Liên Chiểu - Thành phố Đà Nẵng', NULL, 1, 830000, 1730000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(5, 10, 'Tên người nhận: Nguyễn Tấn - Email: nguyentan123@gmail.com - Số điện thoại: 0966574123 - Địa chỉ: Mỹ Thành - Huyện Châu Thành - Tỉnh Bến Tre', NULL, 1, -40000, 2960000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(6, 9, 'Tên người nhận: Trần Đức Duy - Email: ducduy123@gmail.com - Số điện thoại: 0985432743 - Địa chỉ: Ninh Xá - Huyện Thuận Thành - Tỉnh Bắc Ninh', NULL, 1, 3970000, 33970000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(7, 8, 'Tên người nhận: Mai Trung Kiên - Email: trungkien123@gmail.com - Số điện thoại: 0986534123 - Địa chỉ: Hòa Khánh - Quận Liên Chiểu - Thành phố Đà Nẵng', NULL, 1, 3570000, 14570000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(8, 5, 'Tên người nhận: Nguyễn Xuân Trường - Email: xuantruong123@gmail.com - Số điện thoại: 0988765543 - Địa chỉ: Hòa Khánh - Quận Liên Chiểu - Thành phố Đà Nẵng', NULL, 1, 2780000, 7780000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(9, 5, 'Tên người nhận: Nguyễn Xuân Trường - Email: xuantruong123@gmail.com - Số điện thoại: 0988765543 - Địa chỉ: Hòa Khánh - Quận Liên Chiểu - Thành phố Đà Nẵng', NULL, 1, 1840000, 5840000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(10, 1, 'Tên người nhận: Nguyễn Văn Thuận - Email: thuannv06022001@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, 1, 2780000, 7780000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(11, 13, 'Tên người nhận: Trần Văn Mạnh - Email: vanmanh123@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, 1, 840000, 8840000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(12, 13, 'Tên người nhận: Trần Văn Mạnh - Email: vanmanh123@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, 1, 1420000, 1920000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(13, 13, 'Tên người nhận: Trần Văn Mạnh - Email: vanmanh123@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, 1, 70620000, 77620000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(14, 13, 'Tên người nhận: Trần Văn Mạnh - Email: vanmanh123@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, 1, 2600000, 13600000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(15, 17, 'Tên người nhận: Trương Hồng Khánh - Email: hongkhanh123@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, 1, 2780000, 7780000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(16, 17, 'Tên người nhận: Trương Hồng Khánh - Email: hongkhanh123@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, 1, -40000, 2960000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(17, 17, 'Tên người nhận: Trương Hồng Khánh - Email: hongkhanh123@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, 1, 2900000, 5900000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(18, 17, 'Tên người nhận: Trương Hồng Khánh - Email: hongkhanh123@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, 1, 1620000, 3620000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(19, 17, 'Tên người nhận: Trương Hồng Khánh - Email: hongkhanh123@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, 1, 3810000, 6810000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(20, 1, 'Tên người nhận: Nguyễn Văn Thuận - Email: thuannv06022001@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, 1, 3970000, 33970000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(21, 1, 'Tên người nhận: Nguyễn Văn Thuận - Email: thuannv06022001@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, 1, 2900000, 5900000, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(22, 24, 'Tên người nhận: lucccc - Email: doanbaluc@gmail.com - Số điện thoại: 0335007674 - Địa chỉ: da bang - Huyện Định Hóa - Tỉnh Thái Nguyên', 'hus', 1, 1720000, 2720000, 1, '2022-11-22 17:00:00', '2022-11-22 17:54:23'),
(23, 24, 'Tên người nhận: lucccc - Email: doanbaluc@gmail.com - Số điện thoại: 0335007674 - Địa chỉ: da bang - Huyện Định Hóa - Tỉnh Thái Nguyên', 'hus', 1, 2570000, 4070000, 1, '2022-11-22 17:00:00', '2022-11-22 18:07:19'),
(24, 24, 'Tên người nhận: lucccc - Email: doanbaluc@gmail.com - Số điện thoại: 0335007674 - Địa chỉ: da bang - Huyện Định Hóa - Tỉnh Thái Nguyên', 'hus', 1, 2570000, 4070000, 1, '2022-11-22 17:00:00', '2022-11-22 18:14:30'),
(25, 24, 'Tên người nhận: lucccc - Email: doanbaluc@gmail.com - Số điện thoại: 0335007674 - Địa chỉ: da bang - Huyện Định Hóa - Tỉnh Thái Nguyên', 'hus', 1, 2570000, 4070000, 1, '2022-11-22 17:00:00', '2022-11-22 18:15:32'),
(26, 24, 'Tên người nhận: lucccc - Email: doanbaluc@gmail.com - Số điện thoại: 0335007674 - Địa chỉ: da bang - Huyện Hữu Lũng - Tỉnh Lạng Sơn', 'hus', 1, 2570000, 4070000, 1, '2022-11-22 17:00:00', '2022-11-22 18:16:13'),
(27, 24, 'Tên người nhận: lucccc - Email: doanbaluc@gmail.com - Số điện thoại: 0335007674 - Địa chỉ: da bang - Huyện Bảo Lạc - Tỉnh Cao Bằng', 'hus', 1, 3420000, 5420000, 1, '2022-11-22 17:00:00', '2022-11-22 18:21:29'),
(28, 24, 'Tên người nhận: lucccc - Email: doanbaluc@gmail.com - Số điện thoại: 0335007674 - Địa chỉ: da bang - Huyện Bảo Lạc - Tỉnh Cao Bằng', 'hus', 1, 3420000, 5420000, 1, '2022-11-22 17:00:00', '2022-11-22 18:23:47'),
(29, 24, 'Tên người nhận: lucccc - Email: doanbaluc@gmail.com - Số điện thoại: 0335007674 - Địa chỉ: da bang - Huyện Bảo Lạc - Tỉnh Cao Bằng', 'hus', 1, 3420000, 5420000, 1, '2022-11-22 17:00:00', '2022-11-22 18:31:26'),
(30, 24, 'Tên người nhận: lucccc - Email: doanbaluc@gmail.com - Số điện thoại: 0335007674 - Địa chỉ: da bang - Huyện Kim Bôi - Tỉnh Hoà Bình', 'hus', 1, 1720000, 2720000, 1, '2022-11-22 17:00:00', '2022-11-22 18:33:25'),
(31, 25, 'Tên người nhận: baluc - Email: doanluc197@gmail.com - Số điện thoại: 0335007675 - Địa chỉ: hjg - Huyện Tân Lạc - Tỉnh Hoà Bình', 'hjg', 1, 1720000, 2720000, 1, '2022-11-22 17:00:00', '2022-11-22 18:41:58'),
(32, 25, 'Tên người nhận: baluc - Email: doanluc197@gmail.com - Số điện thoại: 0335007675 - Địa chỉ: hjg - Huyện Văn Quan - Tỉnh Lạng Sơn', 'hjg', 1, 1720000, 2720000, 1, '2022-11-22 17:00:00', '2022-11-22 18:47:40'),
(33, 25, 'Tên người nhận: baluc - Email: doanluc197@gmail.com - Số điện thoại: 0335007675 - Địa chỉ: hjg - Huyện Chiêm Hóa - Tỉnh Tuyên Quang', 'B', 1, 1720000, 2720000, 1, '2022-11-22 17:00:00', '2022-11-22 18:53:20'),
(34, 25, 'Tên người nhận: baluc - Email: doanluc197@gmail.com - Số điện thoại: 0335007675 - Địa chỉ: bà rịa - Thành phố Sông Công - Tỉnh Thái Nguyên', '12h', 1, 1720000, 2720000, 1, '2022-11-22 17:00:00', '2022-11-22 18:56:11'),
(35, 24, 'Tên người nhận: lucccc - Email: doanbaluc@gmail.com - Số điện thoại: 0335007674 - Địa chỉ: da bang - Huyện Bắc Sơn - Tỉnh Lạng Sơn', 'hus', 1, 3420000, 5420000, 1, '2022-11-22 17:00:00', '2022-11-22 19:02:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_title`, `post_content`, `post_image`, `created_at`, `updated_at`) VALUES
(1, 1, '5 cách decor phòng trọ không gác cực đơn giản', '<p style=\"text-align:justify\">Để c&oacute; được một ph&ograve;ng trọ đẹp v&agrave; đơn giản chắc hẳn l&agrave; điều m&agrave; c&aacute;c bạn sinh vi&ecirc;n hay những người đi thu&ecirc; trọ rất quan t&acirc;m. Vậy l&agrave;m sao để decor ph&ograve;ng trọ kh&ocirc;ng g&aacute;c thật đẹp thật đơn giản lại h&agrave;i h&ograve;a. Điều n&agrave;y tưởng dễ m&agrave; lại rất kh&oacute;. Phải l&agrave;m sao b&acirc;y giờ ? H&atilde;y để Vinaneon&nbsp;gi&uacute;p bạn c&aacute;ch decor ph&ograve;ng trọ kh&ocirc;ng g&aacute;c cực đơn giản nh&eacute;.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/phong-tro-khong-gac-768x451.jpg\" style=\"height:451px; width:768px\" /></p>\r\n\r\n<p>Hiện nay, c&aacute;c&nbsp;ph&ograve;ng trọ&nbsp;trung b&igrave;nh c&oacute; diện t&iacute;ch từ 20m2 .Sẽ c&oacute; những ph&ograve;ng c&oacute; diện t&iacute;ch lớn hơn, nhưng gi&aacute; lại rất cao v&agrave; kh&ocirc;ng phổ biến. Vậy bạn cần chuẩn bị những g&igrave; cho việc&nbsp;decor ph&ograve;ng trọ nhỏ kh&ocirc;ng g&aacute;c?</p>\r\n\r\n<ul>\r\n	<li>&nbsp;Đầu ti&ecirc;n th&igrave; ch&uacute;ng ta cần l&ecirc;n &yacute; tưởng&nbsp;trang tr&iacute;: X&aacute;c định&nbsp; phong c&aacute;ch căn ph&ograve;ng m&agrave; bạn hướng đến. Sang trọng, hiện đại, đơn giản, đ&aacute;ng y&ecirc;u ?</li>\r\n	<li>Giường: &nbsp;Với những căn ph&ograve;ng trọ nhỏ, ch&uacute;ng ta n&ecirc;n chọn sử dụng giường bệt hoặc giường tầng. Hoặc c&oacute; điều kiện hơn c&oacute; thể sử dụng giường th&ocirc;ng minh kết hợp tủ hoặc b&agrave;n. Việc Sử dụng giường bệt sẽ gi&uacute;p ph&ograve;ng tho&aacute;ng hơn, c&ograve;n với giường tầng sẽ tiết kiệm diện t&iacute;ch hơn.</li>\r\n	<li style=\"text-align: justify;\">Tủ quần &aacute;o: N&ecirc;n sử dụng những chiếc tủ mở với gi&aacute; đỡ, kết hợp với tủ gi&agrave;y v&agrave; v&agrave;i ngăn để đồ k&iacute;n đ&aacute;o.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/tu-quan-ao-decor-1.jpg\" style=\"height:424px; width:600px\" /></p>\r\n\r\n<ul>\r\n	<li>Đồ trang tr&iacute; kh&aacute;c: Để c&oacute; một ph&ograve;ng trọ thật nổi bật v&agrave; mang t&iacute;nh nghệ thuật. Bạn n&ecirc;n c&oacute; những thứ sau: Tranh treo tường, gương, đ&egrave;n, thảm, kệ&hellip; Hoặc bất cứ thứ g&igrave; theo phong c&aacute;ch v&agrave; sở th&iacute;ch của bạn.</li>\r\n</ul>\r\n\r\n<h2><span style=\"color:#e67e22\">5 c&aacute;ch decor ph&ograve;ng trọ kh&ocirc;ng g&aacute;c cực đơn giản</span></h2>\r\n\r\n<h3><span style=\"color:#e67e22\">Chọn m&agrave;u sắc ph&ograve;ng trọ tinh tế</span></h3>\r\n\r\n<p>Về m&agrave;u sắc, c&aacute;c bạn n&ecirc;n chọn những m&agrave;u s&aacute;ng sẽ gi&uacute;p căn ph&ograve;ng của bạn trở l&ecirc;n h&agrave;i h&ograve;a v&agrave; sang trọng hơn cũng như tạo cảm gi&aacute;c rộng hơn.</p>\r\n\r\n<p style=\"text-align:justify\">Nếu bạn l&agrave; người c&oacute; c&aacute; t&iacute;nh bạn c&oacute; thể sử dụng nhiều vật dụng với nhiều m&agrave;u kh&aacute;c nhau để l&agrave;m nổi bận căn ph&ograve;ng. Nhưng h&atilde;y xếp ch&uacute;ng thật khoa học v&agrave; ngăn nắp nh&eacute;.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/decor-phong-tro-nho-khong-gac.jpg\" style=\"height:345px; width:640px\" /></p>\r\n\r\n<h3><span style=\"color:#e67e22\">Sắp xếp lại nội thất trong ph&ograve;ng</span></h3>\r\n\r\n<p>H&atilde;y sắp xếp giường ngủ một c&aacute;c hợp l&iacute; nhất. Nếu c&oacute; thể bận h&atilde;y sử dụng giường tầng để tiết kiệm kh&ocirc;ng gian. Những nếu kh&ocirc;ng c&oacute; điều kiện th&igrave; bạn c&oacute; thể sử dụng giường bệt hoặc giường th&ocirc;ng minh cũng l&agrave; một lựa chọn kh&ocirc;ng tệ để decor ph&ograve;ng trọ đẹp kh&ocirc;ng g&aacute;c.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/giuong.jpg\" style=\"height:510px; width:806px\" /></p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"color:#e67e22\">Sử dụng những đồ d&ugrave;ng như kệ đỡ.</span></h3>\r\n\r\n<p style=\"text-align:justify\">Ph&ograve;ng bạn sẽ tr&ocirc;ng tho&aacute;i hơn v&agrave; đơn giản, nhưng kh&ocirc;ng k&eacute;m phần gọn g&agrave;ng khi bạn sử dụng những chiếc kệ đỡ xinh xắn. Về kệ đỡ bạn c&oacute; thể sử dụng những loại kệ gỗ hoặc kim loại đều được.</p>\r\n\r\n<p style=\"text-align:justify\">Việc sử dụng kệ đỡ&nbsp; trong ph&ograve;ng l&agrave; một giải ph&aacute;p hợp l&iacute; để bạn c&oacute; thể tận dụng tối đa kh&ocirc;ng gian ph&ograve;ng của bạn.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/ke-do-768x591.jpg\" style=\"height:591px; width:768px\" /></p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"color:#e67e22\">&nbsp;Decor ph&ograve;ng trọ nhỏ kh&ocirc;ng g&aacute;c&nbsp;bằng tranh</span></h3>\r\n\r\n<p style=\"text-align:justify\">Căn ph&ograve;ng của bạn sẽ trở l&ecirc;n tuyệt vời hơn khi c&oacute; những bức tranh. V&igrave; vậy trong ph&ograve;ng của bạn l&ecirc;n c&oacute; những bức tranh kỉ niệm của bạn hoặc tranh ảnh nghệ thuật hay cũng c&oacute; thể l&agrave; những bức tranh m&agrave; bạn y&ecirc;u th&iacute;ch. H&atilde;y biến kh&ocirc;ng gian trọ của bạn trở l&ecirc;n nổi bật hơn với những bức tranh nh&eacute;. Sẽ rất tuyệt vời đ&oacute; !</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/tranh-decor-768x512 (1).jpg\" style=\"height:512px; width:768px\" /></p>\r\n\r\n<h3><span style=\"color:#e67e22\">Sử dụng đ&egrave;n để trang tr&iacute;</span></h3>\r\n\r\n<p style=\"text-align:justify\">Sẽ thật tuyệt khi&nbsp; thấy căn ph&ograve;ng với những &aacute;nh s&aacute;ng lung linh đ&uacute;ng kh&ocirc;ng n&agrave;o. Nếu bạn th&iacute;ch sự linh lung v&agrave; thơ mộng th&igrave; đ&egrave;n thật sự l&agrave; một đồ vật kh&ocirc;ng thể thiếu. Việc sử dụng đ&egrave;n sẽ gi&uacute;p căn phong của bạn trở l&ecirc;n đẹp v&agrave; sang trọng hơn cũng như kh&ocirc;ng thiếu phần lung linh thơ mộng đ&acirc;u nh&eacute;.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/den-decor-phong.jpg\" style=\"height:464px; width:696px\" />​​​​​​​</p>', '/storage/images_blog/eRjtqulBkE_Thiet-ke-khong-ten-12 (1).jpg', '2022-11-10 08:53:58', '2022-11-10 08:53:58'),
(2, 1, 'Tổng hợp ý tưởng decor phòng trọ', '<h2><span style=\"color:#e67e22\">Những mẫu trang tr&iacute; ph&ograve;ng trọ đẹp</span></h2>\r\n\r\n<p>Qu&atilde;ng thời gian sinh vi&ecirc;n l&agrave; qu&atilde;ng thời gian đẹp nhất của mỗi người, v&agrave; nếu bạn đang l&agrave; sinh vi&ecirc;n th&igrave; h&atilde;y thử biến tấu một ch&uacute;t để cuộc sống sinh vi&ecirc;n th&ecirc;m phần th&uacute; vị. Dưới đ&acirc;y Vinaneon xin gửi đến bạn đọc một số mẫu nh&agrave; trọ, decor ph&ograve;ng trọ hoặc nh&agrave; nhỏ nhỏ xinh xinh.</p>\r\n\r\n<h3><span style=\"color:#e67e22\">Mẫu ph&ograve;ng số 1: Tinh tế, gọn g&agrave;ng, sạch sẽ.</span></h3>\r\n\r\n<p>D&agrave;nh cho những ai th&iacute;ch ph&ograve;ng m&igrave;nh gọn g&agrave;ng, sạch sẽ th&igrave; đ&acirc;y sẽ l&agrave; một &yacute; tưởng tuyệt vời. Kh&ocirc;ng gian ấm c&uacute;ng, đơn giản m&agrave; đẹp. Đặc biệt chi ph&iacute; để ho&agrave;n thiện mẫu nh&agrave; trọ kiểu n&agrave;y cũng kh&ocirc;ng tốn qu&aacute; nhiều tiền của chủ nh&acirc;n</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/s1.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p style=\"text-align:justify\">C&oacute; thể thấy, đ&acirc;y l&agrave; mẫu ph&ograve;ng trọ tuyệt nhất. Chi ph&iacute; kh&ocirc;ng qu&aacute; lớn nhưng chắc chắn sẽ cảm thấy h&agrave;i h&ograve;a kh&ocirc;ng gian, mang cảm gi&aacute;c an to&agrave;n, ấm c&uacute;ng cho chủ nh&acirc;n sử dụng.</p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"color:#e67e22\">Mẫu ph&ograve;ng số 2: D&agrave;nh cho người th&iacute;ch gỗ</span></h3>\r\n\r\n<p style=\"text-align:justify\">Với phong c&aacute;ch tạo một kh&ocirc;ng gian m&agrave;u gỗ thật s&aacute;ng, cho cảm gi&aacute;c m&aacute;t lạnh khi trời n&oacute;ng v&agrave; ấm &aacute;p khi trời thu, se se khi trời lạnh th&igrave; đ&acirc;y chuẩn l&agrave; mẫu m&agrave; bạn n&ecirc;n tham khảo.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/s2.jpg\" style=\"height:499px; width:430px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Với căn ph&ograve;ng n&agrave;y chắc chắn sau mỗi ng&agrave;y l&agrave;m việc bạn sẽ cảm thấy thoải m&aacute;i khi bạn y&ecirc;u th&iacute;ch sự ch&acirc;n th&agrave;nh mộc mạc. C&ograve;n với m&igrave;nh th&igrave; m&agrave;u gỗ chiếm hơi nhiều kh&ocirc;ng gian. Nếu k&eacute;o xuống một x&iacute;u bạn sẽ thấy việc t&ocirc; điểm giữa m&agrave;u gỗ v&agrave; m&agrave;u trắng sẽ mang lại một kh&ocirc;ng gian h&agrave;i h&ograve;a hơn.</p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"color:#e67e22\">Mẫu ph&ograve;ng số 3:</span></h3>\r\n\r\n<p style=\"text-align:justify\">Nếu thật th&agrave; m&agrave; n&oacute;i th&igrave; ph&ograve;ng số 3 đ&uacute;ng phong c&aacute;ch của Việt Nam m&igrave;nh hơn, với gi&aacute; ở khu vực H&agrave; Nội rơi v&agrave;o tầm dưới 2 triệu /th&aacute;ng th&igrave; ph&ograve;ng số 2 l&agrave; lựa chọn tuyệt vời d&agrave;nh cho những người độc th&acirc;n vui t&iacute;nh</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/s3-267x400.jpg\" style=\"height:400px; width:267px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Tuy nhi&ecirc;n, với phong c&aacute;ch bố tr&iacute; n&agrave;y th&igrave; m&igrave;nh nhận thấy l&agrave; G&aacute;c x&eacute;p hơi cao v&agrave; gần l&ecirc;n trần nh&agrave;, điều n&agrave;y kh&aacute; b&iacute; đặc biệt l&agrave; sinh vi&ecirc;n hiện tại phần nhiều vẫn chưa c&oacute; điều h&ograve;a, lại th&ecirc;m m&aacute;i ph&iacute;a tr&ecirc;n kh&ocirc;ng c&oacute; ph&ograve;ng kh&aacute;c hoặc kh&ocirc;ng c&oacute; chống n&oacute;ng th&igrave; đ&uacute;ng l&agrave; cực h&igrave;nh</p>\r\n\r\n<p style=\"text-align:justify\">V&igrave; thế c&oacute; lẽ cần cho thấp xuống một x&iacute;u ( từ đất l&ecirc;n khoảng 2m l&agrave; ổn ) th&ecirc;m v&agrave;o lan can để an to&agrave;n hơn.</p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"color:#e67e22\">Mẫu Ph&ograve;ng số 4: Căn hộ mini kh&aacute; ph&ugrave; hợp</span></h3>\r\n\r\n<p style=\"text-align:justify\">Cũng tại Việt Nam m&igrave;nh, th&igrave; thấy c&oacute; một số nh&agrave; người ta cho thu&ecirc; ở c&ugrave;ng chủ. Điều n&agrave;y cũng kh&aacute; bất tiện chứ kh&ocirc;ng phải kh&ocirc;ng, đặc biệt c&aacute;c bạn nữ th&igrave; th&iacute;ch ở kiểu vầy để an to&agrave;n.</p>\r\n\r\n<p style=\"text-align:justify\">Phong c&aacute;ch thiết kế ph&ograve;ng số 4 kh&aacute; ph&ugrave; hợp với những người đang ở theo kiểu như vậy</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/s4-510x567.jpg\" style=\"height:567px; width:510px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Đơn giản hơn th&igrave; bạn c&oacute; thể cải tạo ng&ocirc;i nh&agrave; của m&igrave;nh th&agrave;nh một kh&ocirc;ng gian ri&ecirc;ng,với ph&iacute;a dưới l&agrave;m việc, ph&iacute;a tr&ecirc;n để nghỉ ngơi cho thoải m&aacute;i.</p>', '/storage/images_blog/OaXK8VrMVs_tranh-decor-768x512 (1).jpg', '2022-11-10 08:58:03', '2022-11-10 08:58:03'),
(3, 1, 'TRANH TREO TƯỜNG QUÁN CÀ PHÊ – PHƯƠNG THỨC CŨ, HIỆU QUẢ CAO', '<p>Trang tr&iacute; qu&aacute;n caf&eacute; như thế n&agrave;o để tạo điểm nhấn, định h&igrave;nh được phong c&aacute;ch thương hiệu ri&ecirc;ng của qu&aacute;n, cũng như thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng? L&agrave; một trong những băn khoăn, lo lắng của rất nhiều người đang c&oacute; &yacute; định kinh doanh qu&aacute;n caf&eacute;. Kh&ocirc;ng chỉ c&oacute; &ldquo;start up&rdquo; m&agrave; những qu&aacute;n kinh doanh l&acirc;u năm cũng đang &ldquo;đau đầu&rdquo; kh&ocirc;ng biết đ&acirc;u mới l&agrave; xu hướng trang tr&iacute; qu&aacute;n caf&eacute; mới nhất hiện nay. Nếu bạn đang quan t&acirc;m tới vấn đề n&agrave;y, h&atilde;y c&ugrave;ng H&agrave; Linh d&eacute;cor t&igrave;m hiểu qua b&agrave;i viết dưới đ&acirc;y nh&eacute;.</p>\r\n\r\n<h2><span style=\"color:#e67e22\"><strong>Tranh treo tường qu&aacute;n caf&eacute; &ndash; Phương thức cũ, hiệu quả cao</strong></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trang tr&iacute; qu&aacute;n c&agrave; ph&ecirc; bằng tranh treo tường&nbsp;l&agrave; c&aacute;ch trang tr&iacute; tuy cũ nhưng hiệu quả m&agrave; n&oacute; mang lại kh&ocirc;ng l&agrave;m chủ qu&aacute;n phải thất vọng. Bởi ngo&agrave;i c&aacute;c yếu tố cần như hương vị thơm ngon, chất lượng phục vụ tốt, vị tr&iacute; đẹp th&igrave; yếu tổ đủ l&agrave; kh&ocirc;ng gian đẹp sẽ thu h&uacute;t được rất nhiều kh&aacute;ch h&agrave;ng đến với qu&aacute;n. Hơn thế nữa nữa, ấn tượng về qu&aacute;n tốt sẽ khiến kh&aacute;ch h&agrave;ng phải quay lại v&agrave;o những lần sau gi&uacute;p chủ qu&aacute;n tăng lợi nhuận.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/tranhcafe4.jpg\" style=\"height:650px; width:650px\" /></p>\r\n\r\n<p>V&agrave; những bức tranh d&eacute;cor qu&aacute;n caf&eacute; lu&ocirc;n l&agrave; lựa chọn tối ưu nhất, n&oacute; kh&ocirc;ng những mang đến sự c&acirc;n bằng về kh&ocirc;ng gian, nội thất m&agrave; c&ograve;n định h&igrave;nh phong c&aacute;ch ri&ecirc;ng biệt l&agrave;m n&ecirc;n thương hiệu của qu&aacute;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để t&igrave;m cho qu&aacute;n caf&eacute; của m&igrave;nh những mẫu tranh treo tường đẹp v&agrave; ph&ugrave; hợp với kh&ocirc;ng gian qu&aacute;n nh&agrave; m&igrave;nh. Chủ qu&aacute;n cần x&aacute;c định ch&iacute;nh x&aacute;c phong c&aacute;ch thiết kế nội thất m&agrave; qu&aacute;n hướng tới, chẳng hạn như phong c&aacute;ch thiết kế retro, vintage, cổ điển, t&acirc;n cổ điển, hiện đại hay phong c&aacute;ch tối giản&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nhưng chủ qu&aacute;n cũng đừng qu&aacute; n&ecirc;n lo lắng bởi, tranh qu&aacute;n caf&eacute; đẹp c&oacute; đa dạng mẫu m&atilde;, k&iacute;ch thước gi&uacute;p bạn dễ d&agrave;ng lựa chọn những bức tranh ưng &yacute; nhất cho bất kể kh&ocirc;ng gian n&agrave;o. Từ kh&ocirc;ng gian lớn đến hẹp, từ những bức tường nhỏ, g&oacute;c cạnh cũng dễ d&agrave;ng t&ocirc; điểm bằng những bức tranh treo tường qu&aacute;n caf&eacute; gi&aacute; rẻ đẹp, m&agrave; kh&ocirc;ng hề c&oacute; kh&oacute; khăn g&igrave;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"color:#e67e22\"><strong>Những mẫu tranh trang tr&iacute; qu&aacute;n caf&eacute; đẹp, hot trend 2022</strong></span></h2>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e67e22\"><strong><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/pa-7.jpg\" style=\"height:650px; width:511px\" /><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/pa-5.jpg\" style=\"height:650px; width:511px\" /><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/pa-2.jpg\" style=\"height:650px; width:511px\" /></strong></span></p>\r\n\r\n<p>&nbsp;</p>', '/storage/images_blog/ZoN65NpWOh_tranhcafe2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(4, 1, 'TOP 6 BỨC TRANH BÁT MÃ ĐƯỢC ƯA CHUỘNG NHẤT HIỆN NAY', '<p>Nhắc đến tranh b&aacute;t m&atilde; kh&ocirc;ng ai l&agrave; kh&ocirc;ng biết về gi&aacute; trị cũng như &yacute; nghĩa phong thủy to lớn m&agrave; n&oacute; mang lại. Tuy nhi&ecirc;n, việc xuất hiện nhiều loại tranh, cửa h&agrave;ng b&aacute;n tranh b&aacute;t m&atilde; khiến c&aacute;c kh&aacute;ch h&agrave;ng cảm thấy băn khoăn, lo lắng kh&ocirc;ng biết đ&acirc;u mới l&agrave; lựa chọn tốt nhất. H&atilde;y c&ugrave;ng HaLinh d&eacute;cor t&igrave;m ra những bức tranh trang tr&iacute; b&aacute;t m&atilde; đẹp ph&ugrave; hợp với kh&ocirc;ng gian nh&agrave; trong b&agrave;i viết dưới đ&acirc;y nh&eacute;!</p>\r\n\r\n<h2><span style=\"color:#e67e22\"><strong>C&aacute;c loại tranh b&aacute;t m&atilde; đẹp&nbsp; tr&ecirc;n thị trường hiện nay</strong></span></h2>\r\n\r\n<h3><span style=\"color:#e67e22\"><strong><em>&nbsp;C&aacute;c loại tranh b&aacute;t m&atilde; đẹp tr&ecirc;n thị trường hiện nay</em></strong></span></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tranh b&aacute;t m&atilde; sơn dầu: l&agrave; d&ograve;ng tranh được vẽ tr&ecirc;n vải canvas, sử dụng m&agrave;u vẽ từ bột m&agrave;u pha với c&aacute;c loại dầu như dầu hạt lanh, dầu &oacute;c ch&oacute;, dầu hạt anh t&uacute;c&hellip; C&ugrave;ng với kỹ thuật vẽ tranh đi&ecirc;u luyện, tỉ mỉ c&aacute;c họa sĩ đ&atilde; tạo n&ecirc;n những bức tranh b&aacute;t m&atilde; v&ocirc; c&ugrave;ng sinh động, đẹp mắt.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/free-shipping-3d-diy-diamond-painting-grassland-font-b-running-b-font-horse-household-decor-square.jpg\" style=\"height:420px; width:1000px\" /></p>\r\n\r\n<p>Tranh b&aacute;t m&atilde; sơn dầu n&ecirc;n được trưng b&agrave;y ở những nơi tho&aacute;ng m&aacute;t, tr&aacute;nh nhưng khu vực tường bị ẩm mốc sẽ g&acirc;y hỏng h&oacute;c v&agrave; l&agrave;m mất đi t&iacute;nh thẩm mỹ cho bức tranh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tranh m&atilde; đ&aacute;o th&agrave;nh c&ocirc;ng tr&ecirc;n gỗ: Tranh được tạo h&igrave;nh tạc tượng tr&ecirc;n những chất liệu gỗ tự nhi&ecirc;n cao cấp như gỗ hương, gỗ gụ, gỗ cẩm lại, trắc hay m&iacute;t&hellip; Để tạo n&ecirc;n những bức tranh b&aacute;t m&atilde; bằng gỗ đ&ograve;i hỏi người thợ phải c&oacute; tay nghề cao, kh&eacute;o l&eacute;o, tỉ mỉ.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/bat-ma-trang-tri-1-1-720x379.png\" style=\"height:379px; width:720px\" /></p>\r\n\r\n<p>Sau khi ho&agrave;n th&agrave;nh phần tạo h&igrave;nh, bức tranh sẽ được mang đi ch&agrave; nh&aacute;m, sơn l&oacute;t v&agrave; phun PU b&oacute;ng mờ sang trọng. Ch&iacute;nh v&igrave; sự tỉ mỉ v&agrave; trau chuốt đến từng milimets đ&atilde; l&agrave;m cho những bức tranh b&aacute;t m&atilde; gỗ trở n&ecirc;n sang trọng, gi&aacute; trị. Nhược điểm của d&ograve;ng tranh n&agrave;y đ&oacute; l&agrave; gi&aacute; cả ph&acirc;n kh&uacute;c ở mức cao v&agrave; rất cao.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">Chất liệu tranh th&ecirc;u: Đ&acirc;y l&agrave; d&ograve;ng tranh đ&ograve;i hỏi sự c&ocirc;ng phu, tỉ mỉ, kh&eacute;o l&eacute;o của người thợ. N&oacute; mang vẻ đẹp mềm mại, uyển chuyển nhờ m&agrave;u sắc tươi tắn, chỉ th&ecirc;u c&oacute; m&agrave;u b&oacute;ng đẹp l&agrave;m cho bức tranh B&aacute;t m&atilde; rất c&oacute; hồn. D&ograve;ng tranh n&agrave;y thường c&oacute; gi&aacute; cả phải chăng, n&ecirc;n ai cũng c&oacute; thể sở hữu một c&aacute;ch dễ d&agrave;ng.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/bm-4961-1597044487-2.jpg\" style=\"height:500px; width:600px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>', '/storage/images_blog/NB0LVvhrAw_bat-ma-trang-tri-1-1-720x379.png', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(5, 1, 'NOEL SẮP ĐẾN RỒI, BẠN ĐÃ CÓ Ý TƯỞNG TRANG TRÍ NHÀ CỬA NÀO CHƯA?', '<p style=\"text-align:justify\">Một m&ugrave;a Noel nữa lại về trong sự h&aacute;o hức, chờ đợi của tất cả mọi người. Bởi Noel, theo giải nghĩa của người C&ocirc;ng gi&aacute;o l&agrave; m&ugrave;a của sự hy vọng, m&ugrave;a mong đợi sự b&igrave;nh an. Ch&iacute;nh v&igrave; thế, m&agrave; v&agrave;o dịp n&agrave;y mọi người lại n&ocirc; nức trang tr&iacute; nh&agrave; cửa trở n&ecirc;n lộng lẫy v&agrave; lung linh hơn để ch&agrave;o đ&oacute;n những điều tốt đẹp nhất đến với gia đ&igrave;nh m&igrave;nh.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Bạn đ&atilde; c&oacute; &yacute; tưởng g&igrave; mới cho việc trang tr&iacute; ch&agrave;o đ&oacute;n noel chưa? Cần những g&igrave; để l&agrave;m ng&ocirc;i nh&agrave; của bạn trở n&ecirc;n sinh động, lộng lẫy hơn? Dưới đ&acirc;y l&agrave; 9 &yacute; tưởng trang tr&iacute; nh&agrave; cửa đơn giản, tiết kiệm nhưng lại lung linh ch&agrave;o đ&oacute;n noel 2022 n&agrave;y.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"color:#e67e22\"><strong>Trang&nbsp;</strong><strong>tr&iacute; nh&agrave; bằng c&acirc;y th&ocirc;ng</strong></span></h2>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">C&acirc;y th&ocirc;ng l&agrave; m&oacute;n đồ trang tr&iacute; nh&agrave; v&agrave;o dịp Noel được rất nhiều người lựa chọn. Bởi c&acirc;y th&ocirc;ng tượng trưng cho sự bất diệt, sức sống mạnh mẽ. D&ugrave; cho thời tiết m&ugrave;a đ&ocirc;ng c&oacute; khắc nghiệt thế n&agrave;o, th&igrave; lo&agrave;i th&ocirc;ng vẫn xanh mướt, tr&agrave;n đầy sức sống. Kh&ocirc;ng những thế, trong phong thủy c&acirc;y th&ocirc;ng c&ograve;n gi&uacute;p xua đuổi t&agrave; ma v&agrave; những điều kh&ocirc;ng may mắn.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/noel1.jpg\" style=\"height:600px; width:960px\" /></p>\r\n\r\n<p>Bạn c&oacute; biết, chỉ cần một c&acirc;y th&ocirc;ng hiện diện ở trong ng&ocirc;i nh&agrave; của bạn, l&agrave; bạn sẽ cảm nhận được kh&ocirc;ng kh&iacute; gi&aacute;ng sinh tr&agrave;n ngập khắp kh&ocirc;ng gian. Với c&acirc;y th&ocirc;ng Noel, bạn c&oacute; rất nhiều &yacute; tưởng trang tr&iacute; như, sử dụng những m&oacute;n qu&agrave; đ&atilde; được g&oacute;i sẵn đặt ở dưới gốc c&acirc;y c&acirc;y k&egrave;m theo d&acirc;y đ&egrave;n trang tr&iacute; nhấp nh&aacute;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Viết những lời cầu ch&uacute;c tốt l&agrave;nh treo tr&ecirc;n th&acirc;n c&acirc;y để cầu ch&uacute;c những điều may mắn cho gia đ&igrave;nh v&agrave; người th&acirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"color:#e67e22\"><strong>Sử dụng decal trang tr&iacute; nh&agrave; Noel</strong></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đ&acirc;y l&agrave; &yacute; tưởng được nhiều người lựa chọn để trang ho&agrave;ng cho ng&ocirc;i nh&agrave; của m&igrave;nh trong mỗi dịp gi&aacute;ng sinh. Những tấm decal mang m&agrave;u sắc noel hiện cũng rất đa dạng cho bạn lựa chọn với c&aacute;c h&igrave;nh ảnh phong ph&uacute; từ b&ocirc;ng tuyết, &ocirc;ng gi&agrave; Noel, tuần lộc, hay c&acirc;y th&ocirc;ng&hellip;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/noel2.jpg\" style=\"height:650px; width:956px\" /></p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"color:#e67e22\"><strong>Trang tr&iacute; nh&agrave; bằng tranh noel treo tường</strong></span></h2>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Trang tr&iacute; nh&agrave; bằng tranh treo tường c&oacute; chủ đề noel cũng l&agrave; một trong những &yacute; tưởng độc đ&aacute;o v&agrave; th&uacute; vị. N&oacute; kh&ocirc;ng những gi&uacute;p bức tường trống đơn điệu được kho&aacute;c l&ecirc;n m&igrave;nh tấm &aacute;o mới, lại c&ograve;n tạo ra bầu kh&ocirc;ng kh&iacute; gi&aacute;ng sinh ngập tr&agrave;n.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/noel3.jpg\" style=\"height:650px; width:975px\" /></p>\r\n\r\n<h2><span style=\"color:#e67e22\"><strong>Trang tr&iacute; cầu thang</strong></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cầu thang cũng l&agrave; điểm nhấn trong mỗi ng&ocirc;i nh&agrave; m&agrave; bạn đừng bỏ qua nếu muốn ng&agrave;y lễ Noel c&oacute; được kh&ocirc;ng gian ấn tượng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/noel4-1.jpg\" style=\"height:650px; width:908px\" /></p>\r\n\r\n<p>&nbsp;</p>', '/storage/images_blog/YTvntWH2li_noel2.jpg', '2022-11-10 09:26:21', '2022-11-10 09:26:21'),
(6, 1, 'TRANH TREO TƯỜNG CHỦ ĐỀ HOA LÁ CHO NGƯỜI MỆNH KIM', '<p>Thưởng tranh l&agrave; một nghệ thuật, tổng h&ograve;a được sự tinh tế, tao nh&atilde; của ch&iacute;nh chủ nh&acirc;n trong căn nh&agrave; đ&oacute;. Ch&igrave;nh v&igrave; vậy m&agrave; ngo&agrave;i việc lựa chọn được bức tranh hoa l&aacute; đẹp, gia chủ mệnh&nbsp; Kim cũng cần để &yacute; tới những yếu tố như m&agrave;u sắc, chất liệu, v&agrave; nội dung tranh&hellip; để vừa gia tăng t&agrave;i lộc, may mắn, đồng thời trang ho&agrave;ng cho kh&ocirc;ng gian sự thanh tịnh, b&igrave;nh y&ecirc;n.</p>\r\n\r\n<h2><span style=\"color:#e67e22\"><strong>Nghệ thuật chọn tranh treo tường cho người mệnh Kim</strong></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Về m&agrave;u sắc</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gam m&agrave;u chủ đạo&nbsp;tranh phong thủy cho người mệnh Kim&nbsp;hợp nhất l&agrave; tone m&agrave;u n&acirc;u, hay v&agrave;ng sậm. Bởi trong học thuật phong thủy, th&igrave; Thổ sinh Kim n&ecirc;n c&aacute;c m&agrave;u sắc thuộc h&agrave;nh thổ như v&agrave;ng sậm hay n&acirc;u đất sẽ gi&uacute;p gia chủ nu&ocirc;i dưỡng sinh kh&iacute;, gia đ&igrave;nh v&agrave; sự nghiệp sẽ l&ecirc;n như diều gặp gi&oacute;.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/npt-393-40x60-50x70-3.jpg\" style=\"height:650px; width:780px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, những gam m&agrave;u gần với m&agrave;u v&agrave;ng như v&agrave;ng nhạt, v&agrave;ng cam,&hellip; cũng l&agrave; m&agrave;u tranh m&agrave; gia chủ mệnh Kim n&ecirc;n chọn để k&iacute;ch th&iacute;ch lộc l&agrave;m ăn cũng như bồi đắp th&ecirc;m sức khỏe, gia cố sự b&igrave;nh an.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kh&ocirc;ng những thế, người mệnh Kim c&ograve;n c&oacute; thể trang tr&iacute; nh&agrave; bằng tranh trang tr&iacute; c&oacute; m&agrave;u xanh lam, đen, hay những m&agrave;u thể hiện cho mệnh Thủy. V&igrave; rằng, Kim sinh Thủy, sử dụng những bức tranh c&oacute; m&agrave;u sắc chủ đạo&nbsp; n&agrave;y đều mang &yacute; nghĩa tiền v&ocirc; như nước, thuận buồm xu&ocirc;i gi&oacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lưu &yacute;: Gia chủ mệnh Kim kh&ocirc;ng n&ecirc;n chọn những bức tranh c&oacute; c&aacute;c gam m&agrave;u như xanh l&aacute; c&acirc;y, xanh da trời, đỏ, hồng, hay t&iacute;m.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Về nội dung</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Những bức tranh treo tường c&oacute; nội dung sau đ&acirc;y sẽ vừa gi&uacute;p t&ocirc; điểm cho kh&ocirc;ng gian th&ecirc;m lung linh m&agrave; c&ograve;n mang lại may mắn, t&agrave;i lộc cho gia chủ mệnh kim.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/055tc.jpg\" style=\"height:650px; width:650px\" /></p>\r\n\r\n<ul>\r\n	<li>Tranh t&ugrave;ng hạc, tranh kh&oacute;m tr&uacute;c, tranh hoa phong lan: Gia đ&igrave;nh an y&ecirc;n, tiền v&ocirc; như nước, thuận buồm xu&ocirc;i gi&oacute;.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tranh n&uacute;i non, đất đai, nh&agrave; cửa, thổ nhưỡng: sự nghiệp hanh th&ocirc;ng, con ch&aacute;u sum vầy, gia đ&igrave;nh thuận h&ograve;a.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tranh hoa mẫu đơn, chim c&ocirc;ng: Thay đổi vận kh&iacute;, gia đạo ấm &ecirc;m</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Tranh c&aacute; ch&eacute;p, sơn thủy, tranh b&aacute;t m&atilde;, tranh hoa l&aacute;: Gi&uacute;p khai vận, đường c&ocirc;ng danh thuận lợi v&agrave; gia đ&igrave;nh vi&ecirc;n m&atilde;n.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Trang phong cảnh, tranh đại thụ, tranh n&uacute;i non: Sự nghiệp vững chắc, c&ocirc;ng việc thăng tiến, gia kh&iacute; hưng thịnh.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lưu &yacute;, người mệnh kim kh&ocirc;ng n&ecirc;n lựa chọn tranh treo tường c&oacute; nội dung li&ecirc;n quan đến c&aacute;c yếu tố của mệnh hỏa như lửa, nắng, n&oacute;ng,&hellip; c&aacute;c tranh c&oacute; t&ocirc;ng m&agrave;u đỏ, hồng, t&iacute;m qu&aacute; mạnh, qu&aacute; rực rỡ&hellip; V&igrave; trong phong thủy kim sẽ bị thi&ecirc;u đốt bởi hỏa, n&ecirc;n gia chủ cần tr&aacute;nh xa những thể loại tranh n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Về chất liệu:</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Người mệnh Kim n&ecirc;n chọn những bức tranh c&oacute; chất liệu từ gốm sứ, kim loại qu&yacute; (như v&agrave;ng &ndash; bạc &ndash; đồng), gỗ hay tranh in canvas cao cấp&hellip; v&igrave; đ&acirc;y l&agrave; những chất liệu tượng trưng cho mệnh Thủy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kim &ndash; Thổ kết hợp sẽ gi&uacute;p gia chủ lu&ocirc;n may mắn trong cuộc sống, gi&uacute;p c&ocirc;ng việc l&agrave;m ăn lu&ocirc;n vững chắc v&agrave; th&agrave;nh đạt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"color:#e67e22\"><strong>Những bức tranh hoa l&aacute; treo tường đẹp d&agrave;nh cho người mệnh Kim</strong></span></h2>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e67e22\"><strong><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/hc-08.jpg\" style=\"height:650px; width:780px\" /><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/hc-10.jpg\" style=\"height:650px; width:780px\" /><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/hc-28.jpg\" style=\"height:650px; width:780px\" /></strong></span></p>', '/storage/images_blog/pOk73MWCng_hc-06.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(7, 1, '3 SAI LẦM KHI TREO ẢNH CƯỚI TRONG NHÀ :CÁC CẶP VỢ CHỒNG SON CẦN LƯU Ý ĐỂ TRÁNH BẤT HÒA, CÃI VÃ', '<p>C&oacute; rất nhiều cặp vợ chồng c&ograve;n đang loay hoay kh&ocirc;ng biết n&ecirc;n treo ảnh cưới ở đ&acirc;u cho vừa đẹp, vừa thể hiện được t&igrave;nh cảm tr&acirc;n trọng đối với bạn đời của m&igrave;nh, lại c&ograve;n hợp phong thủy. C&aacute;c cặp đ&ocirc;i c&oacute; thể treo ảnh cưới của m&igrave;nh ở bất cứ đ&acirc;u, nhưng chỉ cần bạn nắm r&otilde; một v&agrave;i lưu &yacute; sau th&igrave; gia đ&igrave;nh bạn sẽ lu&ocirc;n vui vẻ, v&agrave; hạnh ph&uacute;c</p>\r\n\r\n<p><span style=\"color:#e67e22\"><strong>Tr&aacute;nh treo ảnh cưới ở đầu giường ngủ</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e67e22\"><strong><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/photo-1-16169494596771122277695 (1).jpg\" style=\"height:650px; width:537px\" /></strong></span></p>\r\n\r\n<p>Đ&acirc;y l&agrave; vị tr&iacute; m&agrave; rất nhiều cặp đ&ocirc;i lựa chọn để treo ảnh cưới. Tuy nhi&ecirc;n, vị tr&iacute; n&agrave;y lại tiềm t&agrave;ng rất nhiều nguy hiểm bởi n&oacute; c&oacute; khả năng rơi xuống giường, mang đến cảm gi&aacute;c lo lắng sợ h&atilde;i cho người nằm dưới. Hơn thế nữa, trong phong thủy nếu bạn treo tranh ảnh ngay đầu giường sẽ mang đến cảm gi&aacute;c bị đ&egrave; n&eacute;n, khiến c&aacute;c cặp đ&ocirc;i dễ nảy sinh c&atilde;i v&atilde;, kh&ocirc;ng h&ograve;a thuận</p>\r\n\r\n<p><span style=\"color:#e67e22\"><strong>Treo ảnh&nbsp; cưới đối diện gương soi</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e67e22\"><strong><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/photo-1-1616949146801631004001.jpg\" style=\"height:465px; width:620px\" /></strong></span></p>\r\n\r\n<p>Việc treo ảnh cưới đối diện gương soi cũng kh&ocirc;ng tốt cho đời sống h&ocirc;n nh&acirc;n của c&aacute;c cặp vợ chồng. L&yacute; giải cho điều n&agrave;y, c&aacute;c chuy&ecirc;n gia phong thủy cho rằng gương soi c&oacute; t&aacute;c dụng phản chiếu, nh&acirc;n đ&ocirc;i sự vật, do đ&oacute; 1 cặp vợ chồng sẽ th&agrave;nh 2 cặp vợ chồng. Điều n&agrave;y giống như 1 điềm xấu cho cuộc sống h&ocirc;n nh&acirc;n: Hai vợ chồng sớm muộn sẽ ly t&aacute;n.</p>\r\n\r\n<p><span style=\"color:#e67e22\"><strong>Treo ảnh cưới đối diện cửa ch&iacute;nh</strong></span></p>\r\n\r\n<p>Khi &nbsp;treo ảnh cưới đối diện cửa ch&iacute;nh, bạn mở cửa ra l&agrave; đ&atilde;&nbsp; thấy ảnh cưới của 2 vợ chồng. Ảnh cưới đại diện cho hạnh ph&uacute;c lứa đ&ocirc;i. L&agrave; điều thầm k&iacute;n n&ecirc;n khi treo n&oacute; ở vị tr&iacute; n&agrave;y, người ngo&agrave;i sẽ dễ d&agrave;ng nh&ograve;m ng&oacute;, ph&aacute; hoại hạnh ph&uacute;c gia đ&igrave;nh</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/photo-1-16169494048951442790783.jpg\" style=\"height:470px; width:564px\" /></p>', '/storage/images_blog/MGJxfkELm3_photo-1-16169494596771122277695.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(8, 1, '5 Cách Chọn Đèn Cầu Thang Trang Trí “Siêu Sang” Cho Biệt Thự', '<h2>Đ&egrave;n cầu thang trang tr&iacute; n&agrave;o th&iacute;ch hợp cho biệt thự?</h2>\r\n\r\n<p>Để lựa chọn c&aacute;c thiết bị chiếu s&aacute;ng nội thất, đặc biệt l&agrave;&nbsp;đ&egrave;n cầu thang trang tr&iacute;,&nbsp;gia chủ cần lưu &yacute; đến phong c&aacute;ch thiết kế của to&agrave;n bộ căn nh&agrave; từ kiến tr&uacute;c b&ecirc;n ngo&agrave;i, b&ecirc;n trong cho đến c&aacute;c vật dụng để việc chọn v&agrave; b&agrave;y tr&iacute; đ&egrave;n được h&agrave;i h&ograve;a với kh&ocirc;ng gian tổng thể. Thiết kế biệt thự ng&agrave;y nay rất đa dạng với nhiều phong c&aacute;ch như: cổ điển, b&aacute;n cổ điển hoặc hiện đại. Ch&iacute;nh v&igrave; vậy, việc lựa chọn&nbsp;đ&egrave;n cầu thang trang tr&iacute;&nbsp;c&ograve;n t&ugrave;y thuộc v&agrave;o kiến tr&uacute;c ban đầu của ng&ocirc;i nh&agrave; m&agrave; gia chủ lựa chọn, nghĩa l&agrave; &yacute; tưởng chọn đ&egrave;n cầu thang trang tr&iacute; cần được bắt đầu c&ugrave;ng l&uacute;c gia chủ chuẩn bị x&acirc;y nh&agrave; v&agrave; kiến tr&uacute;c sư sẽ đưa ra phương &aacute;n tốt nhất cho qu&aacute; tr&igrave;nh thi c&ocirc;ng được thuận lợi v&agrave; hiệu quả hơn.</p>\r\n\r\n<p>Đặc biệt, cấu tr&uacute;c của cầu thang ảnh hưởng rất lớn đến việc lựa chọn, mỗi kiểu cầu thang sẽ kết hợp với loại&nbsp;đ&egrave;n cầu thang trang tr&iacute;&nbsp;kh&aacute;c nhau, chẳng hạn như: cầu thang uốn cong hoặc h&igrave;nh chữ U sẽ ph&ugrave; hợp với những mẫu đ&egrave;n c&oacute; k&iacute;ch thước lớn, thiết kế tinh xảo. Ngược lại, những chiếc cầu thang c&oacute; diện t&iacute;ch nhỏ hẹp, bạn chỉ n&ecirc;n chọn đ&egrave;n led dải, đ&egrave;n led &acirc;m tường để lắp đặt.</p>\r\n\r\n<h2><span style=\"color:#d35400\">C&aacute;c mẫu đ&egrave;n cầu thang trang tr&iacute; cho biệt thự</span></h2>\r\n\r\n<p>Sau nhiều c&ocirc;ng tr&igrave;nh thi c&ocirc;ng tr&ecirc;n thực tế, NVC Lighting tổng hợp những mẫu đ&egrave;n c&oacute; thể gi&uacute;p cho biệt thự của bạn c&agrave;ng th&ecirc;m sang trọng, bạn c&oacute; thể chi&ecirc;m ngưỡng ngay nh&eacute;:</p>\r\n\r\n<h3><span style=\"color:#e67e22\">Đ&egrave;n ch&ugrave;m, đ&egrave;n d&acirc;y chuyền hay đ&egrave;n thả</span></h3>\r\n\r\n<p>Đ&egrave;n ch&ugrave;m, đ&egrave;n d&acirc;y chuyền hay đ&egrave;n thả l&agrave; những lựa chọn đầu ti&ecirc;n của gia chủ đang sở hữu căn biệt thự c&oacute; thiết kế cầu thang theo phong c&aacute;ch cổ điển của ch&acirc;u &Acirc;u. Đ&acirc;y l&agrave; những loại&nbsp;đ&egrave;n cầu thang trang tr&iacute;&nbsp;d&agrave;nh ri&ecirc;ng cho những chiếc cầu thang xoắn ốc hoặc cầu thang đ&ocirc;i rộng lớn c&oacute; thiết kế mở. Sự hiện diện của đ&egrave;n cũng như &aacute;nh s&aacute;ng ph&aacute;t ra từ đ&egrave;n gi&uacute;p cho kh&ocirc;ng gian cầu thang bớt trống tr&atilde;i v&agrave; trở n&ecirc;n ấm &aacute;p hơn hẳn.</p>\r\n\r\n<p>So với những chiếc đ&egrave;n ốp tường hay đ&egrave;n Led &acirc;m bậc th&igrave; đ&egrave;n ch&ugrave;m, đ&egrave;n d&acirc;y chuyền mang một phong c&aacute;ch ri&ecirc;ng cho chiếc cầu thang uốn lượn xoắn ốc, đ&oacute; l&agrave; sự quyến rũ v&agrave; qu&yacute; ph&aacute;i đầy m&ecirc; hoặc.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/den-tha-day.jpg\" style=\"height:600px; width:800px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Ri&ecirc;ng đ&egrave;n thả cầu thang, bạn c&oacute; thể thấy n&oacute; ph&ugrave; hợp với thiết kế cầu thang gấp kh&uacute;c với sự mới mẻ v&agrave; hiện đại.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/moi-moi.jpg\" style=\"height:600px; width:800px\" /></p>\r\n\r\n<h3><span style=\"color:#e67e22\">Đ&egrave;n tường trang tr&iacute; cầu thang</span></h3>\r\n\r\n<p>Để chiếc cầu thang nhỏ hẹp của bạn trở n&ecirc;n ấm &aacute;p v&agrave; mềm mại hơn th&igrave; chọn đ&egrave;n tường để trang tr&iacute; l&agrave; một giải ph&aacute;p l&yacute; tưởng cho những ai y&ecirc;u th&iacute;ch sự đơn giản nhưng qu&yacute; ph&aacute;i. Đ&acirc;y l&agrave; loại&nbsp;đ&egrave;n cầu thang trang tr&iacute;&nbsp;đầy t&iacute;nh nghệ thuật khi &aacute;nh s&aacute;ng hắt ra từ đ&egrave;n sẽ tạo c&aacute;i nh&igrave;n hấp dẫn hơn, khiến mọi vật xung quanh trở n&ecirc;n huyền ảo v&agrave; cuốn h&uacute;t hơn bao giờ hết.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/op-tuong.jpg\" style=\"height:600px; width:800px\" /></p>\r\n\r\n<h3><span style=\"color:#e67e22\">Đ&egrave;n led dải trang tr&iacute; cầu thang</span></h3>\r\n\r\n<p>Đặc điểm của loại đ&egrave;n led dải l&agrave; mang đến cho bạn kh&ocirc;ng gian cầu thang lung linh v&agrave; thanh lịch hơn. Thiết kế dải đ&egrave;n đơn giản, tinh tế v&agrave; nhỏ gọn gi&uacute;p gia chủ thuận tiện hơn trong qu&aacute; tr&igrave;nh lắp đặt. Bạn c&oacute; thể t&ugrave;y chỉnh chiều d&agrave;i của đ&egrave;n ph&ugrave; hợp với k&iacute;ch thước v&agrave; kiểu d&aacute;ng của cầu thang bởi v&igrave; n&oacute; c&oacute; thể uốn lượn, bẻ cong một c&aacute;ch dễ d&agrave;ng.</p>\r\n\r\n<p>Với loại&nbsp;đ&egrave;n cầu thang trang tr&iacute;&nbsp;n&agrave;y, bạn c&oacute; thể lắp đặt n&oacute; ở dưới mỗi cầu thang, tay vịn cầu thang hoặc ở tr&ecirc;n tường. Đặc biệt, gia chủ c&oacute; thể hiệu chỉnh &aacute;nh s&aacute;ng của đ&egrave;n, c&oacute; thể l&agrave;m ch&uacute;ng s&aacute;ng hơn hoặc lưu mờ hơn để mang lại &aacute;nh s&aacute;ng ho&agrave;n hảo nhất. Gia chủ chỉ cần sử dụng dải đ&egrave;n Led 10W l&agrave; đủ mang lại &aacute;nh s&aacute;ng ấm &aacute;p, dịu nhẹ cho đ&ocirc;i mắt.</p>\r\n\r\n<h3><span style=\"color:#e67e22\">Đ&egrave;n led &acirc;m bậc hoặc &acirc;m trần</span></h3>\r\n\r\n<p>Tuy k&iacute;ch thước nhỏ nhắn nhưng nếu đặt đ&uacute;ng vị tr&iacute;, chọn đ&uacute;ng loại đ&egrave;n th&igrave; loại&nbsp;đ&egrave;n cầu thang trang tr&iacute;&nbsp;n&agrave;y sẽ l&agrave;m kh&ocirc;ng gian sống động, trẻ trung hơn khi &aacute;nh s&aacute;ng lan tỏa đều xung quanh. Tốt nhất bạn n&ecirc;n chọn mẫu đ&egrave;n led &acirc;m trần lắp ch&igrave;m ở bậc cầu thang hoặc &acirc;m tr&ecirc;n tường để đem lại hiệu quả chiếu s&aacute;ng tốt nhất, &aacute;nh s&aacute;ng ph&aacute;t ra kh&ocirc;ng ch&oacute;i l&oacute;a. Th&ocirc;ng thường, người ta sử dụng loại đ&egrave;n c&oacute; c&ocirc;ng suất từ 3W đến 5W l&agrave; đ&aacute;p ứng đủ nhu cầu chiếu s&aacute;ng cầu thang.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/den-led-cau-thang.jpg\" style=\"height:600px; width:800px\" /></p>', '/storage/images_blog/3abQkVty16_5-cach-chon-den-cau-thang-trang-tri-sieu-sang-cho-biet-thu-1.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(9, 1, 'TRANH TREO CẦU THANG – NGƯỜI TÌNH CỦA “LỐI NHỎ”', '<p>Kh&aacute;i niệm tranh treo cầu thang kh&ocirc;ng c&ograve;n qu&aacute; xa lạ bởi đ&acirc;y l&agrave; c&aacute;ch l&agrave;m đơn giản nhưng đem lại hiệu quả thẩm mỹ rất cao. Tuy nhi&ecirc;n, để lựa chọn được&nbsp; tranh treo cầu thang đẹp ph&ugrave; hợp với tổng thể kh&ocirc;ng gian sống th&igrave; kh&ocirc;ng phải ai cũng biết. B&agrave;i viết n&agrave;y sẽ hướng dẫn bạn c&aacute;ch để lựa được tranh treo cầu thang vừa hợp phong thủy vừa mang lại vẻ đẹp sang trọng cho ng&ocirc;i nh&agrave;.</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#e67e22\"><strong><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/tranh-treo-tuong-cau-thang-6.jpg\" style=\"height:650px; width:765px\" /></strong></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong kết cấu kiến tr&uacute;c của ng&ocirc;i nh&agrave;, cầu thang l&agrave; vị tr&iacute; v&ocirc; c&ugrave;ng quan trọng bởi n&oacute; kh&ocirc;ng những l&agrave; lối đi giữa tầng tr&ecirc;n với tầng dưới m&agrave; c&ograve;n l&agrave; nơi để bạn thể hiện con mắt thẩm mỹ của ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc trang tr&iacute; cầu thang bằng tranh treo tường kh&ocirc;ng những gi&uacute;p cho kh&ocirc;ng gian kh&ocirc;ng c&ograve;n đơn điệu nh&agrave;m ch&aacute;n, m&agrave; c&ograve;n mang đến cho gia chủ sự thịnh vượng, may mắn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e67e22\"><strong>2. Tranh treo cầu thang l&agrave;m bằng chất liệu g&igrave;?</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bạn c&oacute; biết, v&igrave; sao tranh treo cầu thang lại tạo n&ecirc;n sự hấp dẫn v&agrave; được ưa chuộng đến thế?</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/tranh-treo-tuong-cau-thang-7.jpg\" style=\"height:650px; width:650px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Tranh treo cầu thang thường được l&agrave;m bằng rất nhiều chất liệu kh&aacute;c nhau. Mỗi một chất liệu lại c&oacute; ưu &ndash; nhược điểm ri&ecirc;ng, do đ&oacute; m&agrave; t&ugrave;y v&agrave;o sở th&iacute;ch cũng như điều kiện kinh tế của mỗi nh&agrave;, m&agrave; gia chủ sẽ lựa chọn loại tranh ph&ugrave; hợp ri&ecirc;ng cho kh&ocirc;ng gian nh&agrave; m&igrave;nh.</p>', '/storage/images_blog/yXSy74yzYF_tranh-treo-cau-thang-dep-nhat-8.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(10, 1, 'MÁCH BẠN TUYỆT CHIÊU CHỌN TRANH TRANG TRÍ NHÀ Ở VỪA ĐẸP VỪA SANG', '<p style=\"text-align:center\">C&oacute; thể bạn đ&atilde; biết: Tranh trang tr&iacute; nh&agrave; ở l&agrave; c&aacute;ch tốt nhất để n&acirc;ng tầm kh&ocirc;ng gian sống. Nhưng chọn tranh trang tr&iacute; thế n&agrave;o để ph&ugrave; hợp với từng kh&ocirc;ng gian ph&ograve;ng th&igrave; nhiều người vẫn c&ograve;n chưa biết. H&atilde;y theo d&otilde;i b&agrave;i viết dưới đ&acirc;y để bỏ t&uacute;i những tuyệt chi&ecirc;u chọn tranh trang tr&iacute; nh&agrave; ở vừa đẹp vừa sang nh&eacute;.<img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/hc-35.jpg\" style=\"height:650px; width:780px\" /></p>\r\n\r\n<h2><span style=\"color:#e67e22\"><strong>Tranh trang tr&iacute; ph&ograve;ng kh&aacute;ch</strong></span></h2>\r\n\r\n<p>Nếu coi ph&ograve;ng kh&aacute;ch l&agrave; trung t&acirc;m của ng&ocirc;i nh&agrave;&nbsp; th&igrave; bức tranh phong thủy hay tranh trang tr&iacute; ch&iacute;nh l&agrave; tr&aacute;i tim của ph&ograve;ng kh&aacute;ch. Bởi ph&ograve;ng kh&aacute;ch l&agrave; nơi quan trọng để bạn tạo ấn tượng cũng như khẳng định vị thế với những vị kh&aacute;ch khi đến thăm nh&agrave;. Do đ&oacute;, đ&acirc;y ch&iacute;nh l&agrave; kh&ocirc;ng gian cần bạn quan t&acirc;m v&agrave; đầu tư hơn cả. Những bức tranh c&oacute; k&iacute;ch thước lớn, m&agrave;u sắc tươi s&aacute;ng, nội dung &yacute; nghĩa, quan trọng hơn hết l&agrave; phải hợp phong thủy mang nhiều năng lượng t&iacute;ch cực cho gia chủ... ch&iacute;nh l&agrave; sự lựa chọn tối ưu nhất m&agrave; bạn n&ecirc;n lựa chọn.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/hc-08.jpg\" style=\"height:650px; width:780px\" /></p>\r\n\r\n<p>Bạn c&oacute; thể chọn tranh m&atilde; đ&aacute;o th&agrave;nh c&ocirc;ng, tranh t&ugrave;ng c&uacute;c tr&uacute;c mai, tranh hoa mẫu đơn, tranh thuận buồm xu&ocirc;i gi&oacute; hay tranh chim c&ocirc;ng... l&agrave; những d&ograve;ng tranh phong thủy mang nhiều điều may mắn, thuận lợi trong l&agrave;m ăn, gia đ&igrave;nh vui vẻ hạnh ph&uacute;c.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"color:#e67e22\"><strong>Tranh trang tr&iacute; ph&ograve;ng l&agrave;m việc</strong></span></h2>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e67e22\"><strong><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/unnamed-1.jpg\" style=\"height:308px; width:512px\" /></strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trang tr&iacute; kh&ocirc;ng gian l&agrave;m việc sẽ k&iacute;ch th&iacute;ch khả năng s&aacute;ng tạo v&agrave; khiến t&acirc;m trạng bạn trở n&ecirc;n thoải m&aacute;i. Thay v&igrave; treo tranh trực tiếp l&ecirc;n tường, bạn c&oacute; thể tạo ra một chiếc kệ trưng b&agrave;y tranh ảnh để kh&ocirc;ng gian kh&ocirc;ng bị nh&agrave;m ch&aacute;n hay đơn điệu. Với &yacute; tưởng trưng b&agrave;y n&agrave;y bạn c&oacute; thể dễ d&agrave;ng thay thế, đổi chỗ c&aacute;c t&aacute;c phẩm nghệ thuật bất cứ khi n&agrave;o.</p>\r\n\r\n<p>&nbsp;</p>', '/storage/images_blog/tebbzBRGGU_bm-4961-1597044487-2.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(11, 1, 'Góc Chơi Game Đẹp Ngây Ngất Của Gamer Cùng Đèn Led Neon', '<p><em>G&oacute;c l&agrave;m việc, g&oacute;c giải tr&iacute; kh&ocirc;ng dừng lại l&agrave; nơi khoe c&aacute; t&iacute;nh bản th&acirc;n, đ&oacute; c&ograve;n l&agrave; nơi thể hiện sở th&iacute;ch của bạn cũng như tạo cho bạn niềm cảm hứng l&agrave;m việc, giải tr&iacute; v&ocirc; tận. Đ&egrave;n Led Neon l&agrave; một sự lựa chọn ho&agrave;n hảo d&agrave;nh cho mọi đối tượng. C&ugrave;ng CCNeon tham khảo những g&oacute;c m&aacute;y si&ecirc;u đẹp để bạn c&oacute; những &yacute; tưởng cho ri&ecirc;ng m&igrave;nh.</em></p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#e67e22\"><strong><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/create.jpg\" style=\"height:794px; width:794px\" /><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/chu-han.jpg\" style=\"height:792px; width:792px\" /><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/untitled-9.jpg\" style=\"height:563px; width:563px\" /><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/untitled-7.jpg\" style=\"height:564px; width:564px\" /></strong></span></h3>', '/storage/images_blog/WFKnPTt7eX_ekf5atkau-mid-b94ff12c-d6c3-42b8-822f-daeb059ca6c3.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(12, 1, 'Tại sao nên dùng đèn Led Neon Sign trang trí tiệc sinh nhật', '<p>C&aacute;c mẫu thiết kế đ&egrave;n Led Neon Sign kh&ocirc;ng chỉ l&agrave; một &yacute; tưởng độc đ&aacute;o cho qu&aacute;n bar, cafe hay cửa h&agrave;ng kinh doanh... m&agrave; đ&acirc;y c&ograve;n l&agrave; một phong c&aacute;ch trang tr&iacute; thiết kế d&agrave;nh cho c&aacute;c bữa tiệc sinh nhật đang được y&ecirc;u th&iacute;ch.</p>\r\n\r\n<p>Đ&egrave;n Led Neon Sign c&oacute; thể uốn chữ thoải m&aacute;i m&agrave; kh&ocirc;ng sợ bị bể vỡ như đ&egrave;n neon thủy tinh truyền thống. Hơn nữa đ&egrave;n Flex Neon Sign c&oacute; độ mềm mại cao, ch&uacute;ng ra c&oacute; thể uốn theo nhiều mẫu chữ v&agrave; hoa văn kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/il-794xn-2630829502-n1ic.jpg\" style=\"height:794px; width:794px\" /></p>\r\n\r\n<p><strong>Đ&egrave;n Led Neon</strong>&nbsp;trang Tr&iacute; Sinh Nhật l&agrave; một lựa chọn ho&agrave;n hảo gi&uacute;p buổi tiệc sinh nhật của bạn th&ecirc;m phần nổi bật, tạo n&ecirc;n một kh&ocirc;ng gian ấm cũng v&agrave; một vị tr&iacute; check-in kh&ocirc;ng thể tuyệt vời hơn</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/il-794xn-3060186310-g2ps.jpg\" style=\"height:794px; width:794px\" /></p>\r\n\r\n<h2 dir=\"ltr\"><span style=\"color:#e67e22\"><strong>L&yacute; do đầy sức thuyết phục khiến bạn n&ecirc;n chọn led Neon Sign cho bữa&nbsp;tiệc sinh nhật&nbsp;</strong></span></h2>\r\n\r\n<ul dir=\"ltr\">\r\n	<li>Với đ&egrave;n Flex&nbsp; Neon Sign bạn c&oacute; thể uốn th&agrave;nh nhiều mẫu chữ độc lạ kh&aacute;c&nbsp;</li>\r\n	<li>Đường n&eacute;t tạo kiểu&nbsp;sắc sảo, dạng d&acirc;y dẻo tạo điểm nhấn tốt</li>\r\n	<li>Tuổi thọ của b&oacute;ng đ&egrave;n cao tr&ecirc;n 20.000h sử dụng, nếu bữa tiệc sinh nhật của bạn đ&atilde; th&agrave;nh c&ocirc;ng tốt đẹp, bạn c&oacute; thể cất đ&egrave;n led neon sign của m&igrave;nh đi để sử dụng v&agrave;o nhiều những dịp kh&aacute;c.</li>\r\n	<li>&nbsp;Hạn chế được tối đa sự va đập, vỡ trong qu&aacute; tr&igrave;nh thi c&ocirc;ng hay di chuyển.&nbsp;</li>\r\n	<li>&nbsp;Đ&egrave;n neon sign kh&ocirc;ng tỏa nhiệt trong qu&aacute; sử dụng, n&ecirc;n sẽ kh&ocirc;ng tạo n&ecirc;n sự b&iacute; b&aacute;ch, n&oacute;ng nực cho bữa tiệc sinh nhật của bạn.</li>\r\n	<li>&nbsp;Kh&ocirc;ng thải ra m&ocirc;i trường kh&iacute; C02 g&acirc;y độc hại cho sức khỏe.</li>\r\n	<li>&nbsp;Đ&egrave;n led d&acirc;y Neon Sign mang tới sự sang trọng, mang t&iacute;nh thẩm mỹ cao.</li>\r\n	<li><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/img_blogs/il-794xn-3192186931-a7ef.jpg\" style=\"height:794px; width:794px\" /></li>\r\n</ul>', '/storage/images_blog/Q1bXxd5QIr_il-794xn-2630829502-n1ic.jpg', '2022-12-15 12:53:39', '2022-12-15 12:53:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `brand_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price_buy` int(11) NOT NULL,
  `product_price_sell` int(11) NOT NULL,
  `product_amount` int(11) NOT NULL,
  `product_sale` int(11) NOT NULL,
  `product_attribute` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_image`, `product_price_buy`, `product_price_sell`, `product_amount`, `product_sale`, `product_attribute`, `product_detail`, `product_keyword`, `product_description`) VALUES
(1, 'Gương decor hiện đại GS 044', 4, 2, '/storage/images_product/9V5Qtj51vR_guong-decor-hien-dai-gs-044-1.jpg', 5000000, 6000000, 9, 10, '<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Gương Khung Th&eacute;p Treo Tường Decor, Độ Ho&agrave;n Thiện Tuyệt Đối, M&agrave;u Sơn S&aacute;ng B&oacute;ng. Cạnh Viền Xung Quanh Gương Được Bao Bọc Khung Th&eacute;p, Lớp Sơn Tĩnh Điện Độ B&aacute;m Chắc Chắn Kh&ocirc;ng Bị Bong Tr&oacute;c. Thiết Kế Hiện Đại, Nhẹ Nh&agrave;ng, Tinh Tế. Gương Treo Tường Decor L&agrave; Sự Lựa Chọn H&agrave;ng Đầu Cho Những Kh&ocirc;ng Gian Nội Thất Hiện Đại</span></span></p>', '<p>Cạnh viền xung quanh gương được bọc bằng d&acirc;y da tổng hợp cao cấp nhập khẩu H&agrave;n Quốc.</p>\r\n\r\n<p>Đai d&acirc;y da v&agrave; d&acirc;y treo da sử dụng những đường may tỉ mỉ tạo n&ecirc;n n&eacute;t sang trọng cho chiếc gương. Thiết kế hiện đại, nhẹ nh&agrave;ng, tinh tế. Gương d&acirc;y da treo tường l&agrave; sự lựa chọn h&agrave;ng đầu cho những kh&ocirc;ng gian nội thất hiện đại.</p>\r\n\r\n<p>✔ K&iacute;ch thước: Đường k&iacute;nh 40cm - 50cm</p>\r\n\r\n<p>✔ M&agrave;u sắc: Da đen, n&acirc;u, v&agrave;ng da b&ograve;, trắng</p>\r\n\r\n<p>✔ Bao gồm đầy đủ ốc v&iacute;t, trụ treo</p>\r\n\r\n<p>✔ Da c&ocirc;ng nghiệp cao cấp</p>\r\n\r\n<p>✔ Chất liệu gương cao cấp, ch&acirc;n thực, trong n&eacute;t.</p>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/guong-decor-hien-dai-gs-044-1.jpg\" style=\"height:1009px; width:750px\" /></p>', 'gương decor', 'Gương decor hiện đại GS 044'),
(2, 'Đèn Chùm Nhập Khẩu Cao Cấp DCC 135', 1, 1, '/storage/images_product/JtrqRKPUe5_den-chum-nhap-khau-trang-tri-phong-khach-dcc-135-10.jpg', 20000000, 25000000, 5, 15, '<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">Sản Phẩm Đước Đ&oacute;ng G&oacute;i Trong Hộp Xốp Cẩn Thận, Qu&yacute; Kh&aacute;ch Ho&agrave;n To&agrave;n C&oacute; Thể Y&ecirc;n T&acirc;m Trong Qu&aacute; Tr&igrave;nh Vận Chuyển</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">&nbsp;Nếu Bạn L&agrave; Người Kh&ocirc;ng Y&ecirc;u Th&iacute;ch Sự Cầu K&igrave; Nhưng Th&iacute;ch Sự Tinh Tế Th&igrave; Đ&acirc;y Ch&iacute;nh L&agrave; Mẫu Đ&egrave;n Ch&ugrave;m Pha L&ecirc; L&yacute; Tưởng D&agrave;nh Cho Kh&ocirc;ng Gian Nh&agrave; Bạn.</span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">T&iacute;nh nghệ thuật v&agrave; tinh tế: Họa tiết tr&ecirc;n khung đ&egrave;n được khắc họa tinh tế tạo ra điểm ấn tượng cho kh&ocirc;ng gian.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Khung đ&egrave;n:Khung hợp kim sơn tĩnh điện bền, đẹp. Khung đ&egrave;n được kh&eacute;o l&eacute;o mạ một lớp v&agrave;ng 24k gi&uacute;p l&agrave;m tăng độ sang trọng của to&agrave;n thể chiếc đ&egrave;n ch&ugrave;m.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">&Aacute;nh s&aacute;ng: &Aacute;nh s&aacute;ng v&agrave;ng nhẹ nh&agrave;ng, ấm &aacute;p. Sử dụng &aacute;nh s&aacute;ng m&agrave;u v&agrave;ng sẽ tạo ra được kh&ocirc;ng gian ấm c&uacute;ng v&agrave; dễ chịu hơn.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">B&oacute;ng đ&egrave;n cao cấp c&oacute; tuổi thọ trung b&igrave;nh cao. th&acirc;n đ&egrave;n bằng hợp kim mạ v&agrave;ng 24k bền m&agrave;u với thời gian</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">*K&iacute;ch thước sản phẩm: chiều rộng: 740mm. Chiều cao: 1020mm</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/den-chum-nhap-khau-trang-tri-phong-khach-dcc-135-13.jpg\" style=\"height:666px; width:750px\" /></span></span></p>', 'đèn, đèn chùm', 'Đèn Chùm Nhập Khẩu Cao Cấp DCC 135'),
(3, 'Đèn Gắn Tường Mạ Vàng DGT 003', 2, 2, '/storage/images_product/ccNTKXhpre_den-gan-tuong-ma-vang-dgt-003-1.jpg', 500000, 2000000, 14, 5, '<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">Đ&egrave;n Trang Tr&iacute; Tường Vỏ&nbsp; Đồng Mạ V&agrave;ng Nguy&ecirc;n Chất. L&agrave; Loại Đ&egrave;n Sử Dụng Chip Led C&ocirc;ng Nghệ Mới C&oacute; Ưu Điểm Vượt Trội Hơn Loại Chip Led Thường C&oacute; &Aacute;nh S&aacute;ng Ổn Định, Kh&ocirc;ng Ch&oacute;i, Kh&ocirc;ng Nhấp Nh&aacute;y, Bật Tắt Tức Th&igrave;. Chip Led Cũng Cho Khả Năng Tiết Kiệm Năng Lượng L&ecirc;n Tới 80% So Với Đ&egrave;n Sợi Đốt Th&ocirc;ng Thường.</span></span></p>', '<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">T&Iacute;NH NĂNG - ƯU ĐIỂM</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">- Tiết kiệm điện so với c&aacute;c loại b&oacute;ng chiếu s&aacute;ng kh&aacute;c.</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">- Vật liệu sử dụng l&agrave; nh&ocirc;m sơn tĩnh điện thiết kế hiện đại.</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">- Thiết kế của đ&egrave;n dễ lắp đặt, dễ sử dụng, giảm thiểu thời gian thi c&ocirc;ng</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">- Tuổi thọ đ&egrave;n cao, th&acirc;n thiện với m&ocirc;i trường, kh&ocirc;ng chứa chất độc hại, c&oacute; thể t&aacute;i chế. Đ&egrave;n tường LED l&agrave; loại đ&egrave;n tường trang tr&iacute; thường được sử dụng trong chiếu s&aacute;ng trang tr&iacute; tại c&aacute;c qu&aacute;n c&agrave; ph&ecirc;, khu đọc s&aacute;ch, hay c&ograve;n c&oacute; thể sử dụng l&agrave;m đ&egrave;n ngủ. Đ&egrave;n trang tr&iacute; LONstar Chuy&ecirc;n cung cấp c&aacute;c loại đ&egrave;n led trang tr&iacute;, đ&egrave;n ngủ để b&agrave;n, đ&egrave;n led d&acirc;n dụng, đ&egrave;n thả, đ&egrave;n d&acirc;y led,... tiết kiệm 70% điện năng so với c&aacute;c loai đ&egrave;n th&ocirc;ng thường bảo h&agrave;nh l&ecirc;n đến 12 th&aacute;ng</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/den-gan-tuong-ma-vang-dgt-003-.jpg\" style=\"height:800px; width:800px\" /></span></span></p>', 'đèn, đèn tường', 'Đèn Gắn Tường Mạ Vàng DGT 003'),
(4, 'Đèn Trang Trí Phòng Ngủ Cao Cấp DN 086', 3, 1, '/storage/images_product/BKYLw3yChL_den-trang-tri-phong-ngu-nhap-khau-cao-cap-dn.jpg', 900000, 1900000, 9, 10, '<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Đ&Egrave;N NGỦ - Vật Dụng Cần Thiết Cho Giấc Ngủ Ngon Khoảng Thời Gian Trong Ph&ograve;ng Ngủ Mỗi Ng&agrave;y Lu&ocirc;n L&agrave; L&uacute;c Tuyệt Vời Nhất, Khi Ch&uacute;ng Ta Ho&agrave;n To&agrave;n Rũ Bỏ Mọi &Aacute;p Lực Cuộc Sống Để Thư Gi&atilde;n V&agrave; Nghỉ Ngơi. Yếu Tố &Aacute;nh S&aacute;ng Trong Ph&ograve;ng Ngủ Rất Quan Trọng Để Mang Lại Cảm Gi&aacute;c Thư Gi&atilde;n Thoải M&aacute;i. V&igrave; Thế, Đ&egrave;n Ngủ Ra Đời V&agrave; C&oacute; Mặt Trong Hầu Hết C&aacute;c Ng&ocirc;i Nh&agrave;.</span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">- K&iacute;ch thước: cao 28,5 cm; đường k&iacute;nh chụp đ&egrave;n 25cm; đường k&iacute;nh đế 12 cm. - Trọng lượng: 530g. - Chất liệu: Đế đ&egrave;n bằng gỗ tre thi&ecirc;n nhi&ecirc;n, Chụp đ&egrave;n hai lớp, lớp trong bằng nhựa tạo khung c&aacute;ch nhiệt, lớp ngo&agrave;i l&agrave;m bằng vải trang tr&iacute; cao cấp.. - Ph&acirc;n loại sản phẩm: + Loại 1: c&oacute; điều khiển từ xa, &aacute;nh s&aacute;ng ba m&agrave;u (trắng, v&agrave;ng, trắng v&agrave;ng) điều chỉnh cường độ &aacute;nh s&aacute;ng, c&oacute; chức năng hẹn giờ ngủ. + Loại 2: C&ocirc;ng tắc on/off , &aacute;nh s&aacute;ng m&agrave;u v&agrave;ng cố định. - C&ocirc;ng suất: Nguồn s&aacute;ng tiết kiệm năng lượng LED 3W - Điện &aacute;p: &le; 36V - D&acirc;y điện: đầu cắm USB.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/den-trang-tri-phong-ngu-nhap-khau-cao-cap-dn.jpg\" style=\"height:693px; width:800px\" /></span></span></p>', 'đèn, đèn bàn', 'Đèn Trang Trí Phòng Ngủ Cao Cấp DN 086'),
(5, 'Tranh Decor Trang Trí Phòng Khách TS 941', 5, 1, '/storage/images_product/0OweKsLXAe_tranh-decor-hien-dai-trang-tri-phong-khach-ts-941-1.jpg', 2000000, 4000000, 9, 10, '<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">D&ograve;ng Sản Phẩm Nghệ Thuật Trang Tr&iacute; Nội Thất Sang Trọng, Bắt Mắt, L&agrave; Xu Hướng Mới. &nbsp;Đa Dạng Mẫu M&atilde;, Ph&ugrave; Hợp Với Kh&ocirc;ng Gian Hiện Đại, Sang Trọng,....</span></span></p>', '<p><span style=\"font-size:14px\">✔ CHẤT LIỆU</span></p>\r\n\r\n<p><span style=\"font-size:14px\">+ Tranh c&oacute; 2 chất liệu c&aacute;n pvc mica b&oacute;ng gương độ d&agrave;y 7mm hoặc lụa mờ theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch</span></p>\r\n\r\n<p><span style=\"font-size:14px\">+ K&iacute;ch thước khung 2x2cm composite đen, trắng, v&agrave;ng v&acirc;n gỗ&hellip; t&ugrave;y theo sản phẩm</span></p>\r\n\r\n<p><span style=\"font-size:14px\">+ Tranh nhẹ treo bằng đinh chuy&ecirc;n dụng gửi k&egrave;m dễ d&agrave;ng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">+Tranh sử dụng trang tr&iacute; ph&ograve;ng kh&aacute;ch, nh&agrave; ăn ph&ograve;ng ngủ , l&agrave;m việc&hellip;kh&ocirc;ng lo phai, bạc m&agrave;u</span></p>\r\n\r\n<p><span style=\"font-size:14px\">+ Khung gỗ c&aacute;c loại, chắc chắn,kh&ocirc;ng ẩm mốc, mối mọt, cong v&ecirc;nh. Kh&aacute;ch h&agrave;ng y&ecirc;n t&acirc;m sử dụng trong nhiều năm.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">+ Tặng k&egrave;m đầy đủ phụ kiện đinh 3 ch&acirc;n đ&oacute;ng tường chuy&ecirc;n dụng, dễ d&agrave;ng treo tranh chỉ với 1 chiếc b&uacute;a nhỏ.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">✔CAM KẾT:</span></p>\r\n\r\n<p><span style=\"font-size:14px\">+ Tranh được gia c&ocirc;ng mới ho&agrave;n to&agrave;n kh&ocirc;ng tồn kho cũ</span></p>\r\n\r\n<p><span style=\"font-size:14px\">+ Cam kết sản phẩm y h&igrave;nh</span></p>\r\n\r\n<p><span style=\"font-size:14px\">+ Tư vấn nhiệt t&igrave;nh, chu đ&aacute;o</span></p>\r\n\r\n<p><span style=\"font-size:14px\">+ Gi&aacute; tốt nhất tr&ecirc;n thị trường</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/tranh-decor-hien-dai-trang-tri-phong-khach-ts-941-1.jpg\" style=\"height:800px; width:800px\" /></span></p>', 'tranh decor', 'Tranh Decor Trang Trí Phòng Khách TS 941'),
(6, 'Sofa Da Kiểu Dáng Hiện Đại SF 022', 6, 1, '/storage/images_product/mJrqKXILVy_sofa-da-kieu-dang-hien-dai-sf-022-9.jpg', 20000000, 30000000, 10, 5, '<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Chất Liệu Da Nhập Khẩu Cao Cấp N&ecirc;n Kh&aacute;ch H&agrave;ng Y&ecirc;n T&acirc;m Về Chất Lượng , Độn Bền Với Thời Gian. Nệm D40 D&agrave;y V&agrave; &Ecirc;m Cho Bạn Cảm Gi&aacute;c Thỏa M&aacute;i Khi Ngồi, Khung Sườn Gỗ Tự Nhi&ecirc;n Đảm Bảo Chất Lượng, Chịu Trọng Lượng Cao.</span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">K&iacute;ch thước: vừa phải, ph&ugrave; hợp với v&oacute;c d&aacute;ng trung b&igrave;nh của người Việt Nam với mặt tr&ograve;n 18 x cao 20cm</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Chất liệu: Khung gỗ tự nhi&ecirc;n, m&uacute;t xốp bọc vải cao cấp chuy&ecirc;n dụng sofa.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Thiết kế: hiện đại, mới lạ, v&ocirc; c&ugrave;ng trẻ trung. Với những mẫu vải v&agrave; m&agrave;u sắc đang c&oacute;, ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn c&oacute; được một mẫu ghế đ&ocirc;n kh&ocirc;ng &ldquo;đụng h&agrave;ng&rdquo; với bất kỳ mẫu n&agrave;o đang c&oacute; tr&ecirc;n thị trường</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/sofa-da-kieu-dang-hien-dai-sf-022-9.jpg\" style=\"height:667px; width:790px\" /></span></span></p>', 'sofa', 'Sofa Da Kiểu Dáng Hiện Đại SF 022'),
(7, 'Đèn chùm nghệ thuật thông tầng DTT 013', 1, 1, '/storage/images_product/g0Lwy3w0UT_den-chum-nghe-thuat-thong-tang-dtt-013-11.jpg', 3000000, 4000000, 3, 2, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">T&iacute;nh nghệ thuật v&agrave; tinh tế: Họa tiết tr&ecirc;n khung đ&egrave;n được khắc họa tinh tế tạo ra điểm ấn tượng cho kh&ocirc;ng gian.</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">Khung đ&egrave;n:Khung hợp kim sơn tĩnh điện bền, đẹp. Khung đ&egrave;n được kh&eacute;o l&eacute;o mạ một lớp v&agrave;ng 24k gi&uacute;p l&agrave;m tăng độ sang trọng của to&agrave;n thể chiếc đ&egrave;n ch&ugrave;m.</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">&Aacute;nh s&aacute;ng: &Aacute;nh s&aacute;ng v&agrave;ng nhẹ nh&agrave;ng, ấm &aacute;p. Sử dụng &aacute;nh s&aacute;ng m&agrave;u v&agrave;ng sẽ tạo ra được kh&ocirc;ng gian ấm c&uacute;ng v&agrave; dễ chịu hơn.</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">B&oacute;ng đ&egrave;n cao cấp c&oacute; tuổi thọ trung b&igrave;nh cao. th&acirc;n đ&egrave;n bằng hợp kim mạ v&agrave;ng 24k bền m&agrave;u với thời gian</span></span></span></span></span></p>', '<div style=\"border-bottom:solid windowtext 1.0pt; padding:0in 0in 1.0pt 0in\">\r\n<p><span style=\"background-color:white\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">*K&iacute;ch thước sản phẩm: chiều rộng: 740mm. Chiều cao: 1020mm</span></span></span></span></span></span></p>\r\n</div>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Sản Phẩm Đước Đ&oacute;ng G&oacute;i Trong Hộp Xốp Cẩn Thận, Qu&yacute; Kh&aacute;ch Ho&agrave;n To&agrave;n C&oacute; Thể Y&ecirc;n T&acirc;m Trong Qu&aacute; Tr&igrave;nh Vận Chuyển</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;</span></span></p>\r\n\r\n<div style=\"border-bottom:solid windowtext 1.0pt; padding:0in 0in 1.0pt 0in\">\r\n<p><span style=\"background-color:white\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Nếu Bạn L&agrave; Người Kh&ocirc;ng Y&ecirc;u Th&iacute;ch Sự Cầu K&igrave; Nhưng Th&iacute;ch Sự Tinh Tế Th&igrave; Đ&acirc;y Ch&iacute;nh L&agrave; Mẫu Đ&egrave;n Ch&ugrave;m Pha L&ecirc; L&yacute; Tưởng D&agrave;nh Cho Kh&ocirc;ng Gian Nh&agrave; Bạn.</span></span></span></span></span></span></span></p>\r\n</div>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">- C&aacute;nh tay đ&egrave;n: l&agrave;m bằng hợp kim sơn tĩnh điện được kh&eacute;o l&eacute;o mạ một lớp v&agrave;ng b&ecirc;n ngo&agrave;i v&agrave; uốn lượn theo đường cong mềm mại gi&uacute;p l&agrave;m tăng độ sang trọng cho to&agrave;n thể chiếc đ&egrave;n ch&ugrave;m. </span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">- Chao đ&egrave;n: L&agrave;m từ thủy tinh cao cấp, d&agrave;y dặn, được bọc trong hộp xốp rất cẩn thận, cho &aacute;nh s&aacute;ng hiển thị cực đẹp do sử dụng b&oacute;ng LED chuy&ecirc;n dụng. </span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">- Cột đ&egrave;n trung t&acirc;m: được l&agrave;m thủ c&ocirc;ng tinh xảo, b&oacute;ng lo&aacute;ng tạo kh&ocirc;ng gian tao nh&atilde;, đẹp mắt</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">- Th&acirc;n đ&egrave;n bằng vật liệu hợp kim k&egrave;m mạ điện chống oxi h&oacute;a với cảm gi&aacute;c &aacute;nh s&aacute;ng tuyệt đẹp v&agrave; đầy kh&iacute; chất.</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">&nbsp;- Hạt pha l&ecirc;: qu&aacute; tr&igrave;nh cắt ch&iacute;nh x&aacute;c, bề mặt cắt mịn v&agrave; phẳng, c&aacute;c g&oacute;c v&agrave; cạnh sắc n&eacute;t, &aacute;nh s&aacute;ng kh&uacute;c xạ quyến rũ. </span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">K&iacute;ch thước sản phẩm: D95xH65 (cm) Ứng dụng: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ăn, ph&ograve;ng ngủ, nh&agrave; h&agrave;ng, sảnh, kh&aacute;ch sạn,ại đ&egrave;n n&agrave;y kh&aacute; đa năng khi n&oacute; c&oacute; thể sử dụng ở mọi kh&ocirc;ng gian. Tuy nhi&ecirc;n để lựa chọn loại đ&egrave;n th&iacute;ch hợp bạn cần ch&uacute; &yacute; tới m&agrave;u sắc, kiểu d&aacute;ng, k&iacute;ch thước ph&ugrave; hợp với kh&ocirc;ng gian. Tổng thể thiết kế của đ&egrave;n như một kiệt t&aacute;c nghệ thuật ph&aacute;t s&aacute;ng biến mọi kh&ocirc;ng gian trở n&ecirc;n đẳng cấp, qu&yacute; ph&aacute;i nhờ hiệu ứng t&aacute;n sắc của pha l&ecirc; v&agrave; thủy tinh cao cấp. Kh&ocirc;ng những vậy, c&aacute;c d&acirc;y x&iacute;ch pha l&ecirc; được treo đối xứng quanh tay v&agrave; chao đ&egrave;n đem đến vẻ mềm mại, nhẹ nh&agrave;ng cho thiết bị chiếu s&aacute;ng th&ocirc;ng thường tưởng chừng như kh&ocirc; khan, nh&agrave;m ch&aacute;n. Đ&egrave;n ch&ugrave;m t&ocirc;n l&ecirc;n sự đẹp đẽ nội thất b&ecirc;n trong gian ph&ograve;ng gia đ&igrave;nh bạn. </span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">Đ&egrave;n ch&ugrave;m trang tr&iacute; c&oacute; kiểu c&aacute;ch mỹ thuật, thanh lịch v&agrave; độc đ&aacute;o tạo ra phong th&aacute;i b&agrave;i tr&iacute; cho căn nh&agrave;, bừng s&aacute;ng kh&ocirc;ng gian bằng sự sang trọng l&ocirc;i cuốn của n&oacute;. Nếu bạn l&agrave; người kh&ocirc;ng y&ecirc;u th&iacute;ch sự cầu k&igrave; nhưng th&iacute;ch sự tinh tế th&igrave; đ&acirc;y ch&iacute;nh l&agrave; mẫu đ&egrave;n ch&ugrave;m l&yacute; tưởng d&agrave;nh cho kh&ocirc;ng gian nh&agrave; bạn.</span></span></span></span></span></p>\r\n\r\n<div style=\"border-bottom:solid windowtext 1.0pt; border-left:none; border-right:none; border-top:solid windowtext 1.0pt; padding:1.0pt 0in 1.0pt 0in\">\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Ứng dụng: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ăn, ph&ograve;ng ngủ, nh&agrave; h&agrave;ng, sảnh, kh&aacute;ch </span></span></span></span><span style=\"font-size:14.0pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">sạn.</span></span></span></span><span style=\"font-size:14.0pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"> đ&egrave;n n&agrave;y kh&aacute; đa năng khi n&oacute; c&oacute; thể sử dụng ở mọi kh&ocirc;ng gian. Tuy nhi&ecirc;n để lựa chọn loại đ&egrave;n th&iacute;ch hợp bạn cần ch&uacute; &yacute; tới m&agrave;u sắc, kiểu d&aacute;ng, k&iacute;ch thước ph&ugrave; hợp với kh&ocirc;ng gian.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/den-chum-nghe-thuat-thong-tang-dtt-013-11.jpg\" style=\"height:1184px; width:750px\" /></p>\r\n</div>', 'đèn, đèn tường', 'Đèn chùm nghệ thuật thông tầng DTT 013'),
(8, 'Đèn bàn nghệ thuật trang trí phòng ngủ DN 093', 3, 2, '/storage/images_product/89xFYzbWYt_den-ban-nghe-thuat-trang-tri-phong-ngu-dn-093-4.jpg', 4000000, 5000000, 4, 2, '<div style=\"border-bottom:solid windowtext 1.0pt; padding:0in 0in 1.0pt 0in\">\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Đ&Egrave;N NGỦ - vật dụng cần thiết cho giấc ngủ ngon Khoảng thời gian trong ph&ograve;ng ngủ mỗi ng&agrave;y lu&ocirc;n l&agrave; l&uacute;c tuyệt vời nhất, khi ch&uacute;ng ta ho&agrave;n to&agrave;n rũ bỏ mọi &aacute;p lực cuộc sống để thư gi&atilde;n v&agrave; nghỉ ngơi. Yếu tố &aacute;nh s&aacute;ng trong ph&ograve;ng ngủ rất quan trọng để mang lại cảm gi&aacute;c thư gi&atilde;n thoải m&aacute;i. V&igrave; thế, đ&egrave;n ngủ ra đời v&agrave; c&oacute; mặt trong hầu hết c&aacute;c ng&ocirc;i nh&agrave;.</span></span></span></span></span></span></p>\r\n</div>', '<div style=\"border-bottom:solid windowtext 1.0pt; padding:0in 0in 1.0pt 0in\">\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,sans-serif\"><span style=\"color:black\">✔</span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:black\"> CHẤT LIỆU + Tranh c&oacute; 2 chất liệu c&aacute;n pvc mica b&oacute;ng gương độ d&agrave;y 7mm hoặc lụa mờ theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch + K&iacute;ch thước khung 2x2cm composite đen, trắng, v&agrave;ng v&acirc;n gỗ&hellip; t&ugrave;y theo sản phẩm + Tranh nhẹ treo bằng đinh chuy&ecirc;n dụng gửi k&egrave;m dễ d&agrave;ng. +Tranh sử dụng trang tr&iacute; ph&ograve;ng kh&aacute;ch, nh&agrave; ăn ph&ograve;ng ngủ , l&agrave;m việc&hellip;kh&ocirc;ng lo phai, bạc m&agrave;u + Khung gỗ c&aacute;c loại, chắc chắn,kh&ocirc;ng ẩm mốc, mối mọt, cong v&ecirc;nh. Kh&aacute;ch h&agrave;ng y&ecirc;n t&acirc;m sử dụng trong nhiều năm. + Tặng k&egrave;m đầy đủ phụ kiện đinh 3 ch&acirc;n đ&oacute;ng tường chuy&ecirc;n dụng, dễ d&agrave;ng treo tranh chỉ với 1 chiếc b&uacute;a nhỏ. </span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,sans-serif\"><span style=\"color:black\">✔</span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:black\">CAM KẾT: + Tranh được gia c&ocirc;ng mới ho&agrave;n to&agrave;n kh&ocirc;ng tồn kho cũ + Cam kết sản phẩm y h&igrave;nh + Tư vấn nhiệt t&igrave;nh, chu đ&aacute;o + Gi&aacute; tốt nhất tr&ecirc;n thị trường + Nhận h&agrave;ng v&agrave; thanh to&aacute;n tại nh&agrave; + Hỗ trợ đổi trả nếu vỡ, g&atilde;y do vận chuyển.</span></span></span></span></span></span></p>\r\n</div>', 'đèn, đèn bàn', 'Đèn bàn nghệ thuật trang trí phòng ngủ DN 093'),
(9, 'Tranh nổi 3D treo tường Tôn Ngộ Không TSA 110', 5, 1, '/storage/images_product/3ilKXTtED3_tranh-noi-3d-treo-tuong-ton-ngo-khong-tsa-110-2.jpg', 7000000, 80000000, 2, 3, '<p>Gương Khung Th&eacute;p Treo Tường Decor, Độ Ho&agrave;n Thiện Tuyệt Đối, M&agrave;u Sơn S&aacute;ng B&oacute;ng. Cạnh Viền Xung Quanh Gương Được Bao Bọc Khung Th&eacute;p, Lớp Sơn Tĩnh Điện Độ B&aacute;m Chắc Chắn Kh&ocirc;ng Bị Bong Tr&oacute;c. Thiết Kế Hiện Đại, Nhẹ Nh&agrave;ng, Tinh Tế. Gương Treo Tường Decor L&agrave; Sự Lựa Chọn H&agrave;ng Đầu Cho Những Kh&ocirc;ng Gian Nội Thất Hiện Đại</p>', '<p>Cạnh viền xung quanh gương được bọc bằng d&acirc;y da tổng hợp cao cấp nhập khẩu H&agrave;n Quốc.</p>\r\n\r\n<p>Đai d&acirc;y da v&agrave; d&acirc;y treo da sử dụng những đường may tỉ mỉ tạo n&ecirc;n n&eacute;t sang trọng cho chiếc gương. Thiết kế hiện đại, nhẹ nh&agrave;ng, tinh tế. Gương d&acirc;y da treo tường l&agrave; sự lựa chọn h&agrave;ng đầu cho những kh&ocirc;ng gian nội thất hiện đại.</p>\r\n\r\n<p>✔ K&iacute;ch thước: Đường k&iacute;nh 40cm - 50cm</p>\r\n\r\n<p>✔ M&agrave;u sắc: Da đen, n&acirc;u, v&agrave;ng da b&ograve;, trắng</p>\r\n\r\n<p>✔ Bao gồm đầy đủ ốc v&iacute;t, trụ treo</p>\r\n\r\n<p>✔ Da c&ocirc;ng nghiệp cao cấp</p>\r\n\r\n<p>✔ Chất liệu gương cao cấp, ch&acirc;n thực, trong n&eacute;t.<img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/tranh-noi-3d-treo-tuong-ton-ngo-khong-tsa-110-7.jpg\" style=\"height:750px; width:750px\" /></p>', 'tranh decor', 'Tranh nổi 3D treo tường Tôn Ngộ Không TSA 110'),
(10, 'Tranh  3D trang trí nội thất phòng khách TSA 102', 5, 1, '/storage/images_product/tvJjLYh6Q8_tranh-decor-3d-trang-tri-noi-that-phong-khach-tsa-102-5.jpg', 8000000, 9000000, 2, 2, '<p>D&ograve;ng Sản Phẩm Nghệ Thuật Trang Tr&iacute; Nội Thất Sang Trọng, Bắt Mắt, L&agrave; Xu Hướng Mới. &nbsp;Đa Dạng Mẫu M&atilde;, Ph&ugrave; Hợp Với Kh&ocirc;ng Gian Hiện Đại, Sang Trọng,....</p>', '<p>✔ CHẤT LIỆU</p>\r\n\r\n<p>+ Tranh c&oacute; 2 chất liệu c&aacute;n pvc mica b&oacute;ng gương độ d&agrave;y 7mm hoặc lụa mờ theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch</p>\r\n\r\n<p>+ K&iacute;ch thước khung 2x2cm composite đen, trắng, v&agrave;ng v&acirc;n gỗ&hellip; t&ugrave;y theo sản phẩm</p>\r\n\r\n<p>+ Tranh nhẹ treo bằng đinh chuy&ecirc;n dụng gửi k&egrave;m dễ d&agrave;ng.</p>\r\n\r\n<p>+Tranh sử dụng trang tr&iacute; ph&ograve;ng kh&aacute;ch, nh&agrave; ăn ph&ograve;ng ngủ , l&agrave;m việc&hellip;kh&ocirc;ng lo phai, bạc m&agrave;u</p>\r\n\r\n<p>+ Khung gỗ c&aacute;c loại, chắc chắn,kh&ocirc;ng ẩm mốc, mối mọt, cong v&ecirc;nh. Kh&aacute;ch h&agrave;ng y&ecirc;n t&acirc;m sử dụng trong nhiều năm.</p>\r\n\r\n<p>+ Tặng k&egrave;m đầy đủ phụ kiện đinh 3 ch&acirc;n đ&oacute;ng tường chuy&ecirc;n dụng, dễ d&agrave;ng treo tranh chỉ với 1 chiếc b&uacute;a nhỏ.</p>\r\n\r\n<p>✔CAM KẾT:</p>\r\n\r\n<p>+ Tranh được gia c&ocirc;ng mới ho&agrave;n to&agrave;n kh&ocirc;ng tồn kho cũ</p>\r\n\r\n<p>+ Cam kết sản phẩm y h&igrave;nh</p>\r\n\r\n<p>+ Tư vấn nhiệt t&igrave;nh, chu đ&aacute;o</p>\r\n\r\n<p>+ Gi&aacute; tốt nhất tr&ecirc;n thị trường<img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/tranh-decor-3d-trang-tri-noi-that-phong-khach-tsa-102-5.jpg\" style=\"height:350px; width:270px\" /></p>', 'tranh decor', 'Tranh decor 3D trang trí nội thất phòng khách TSA 102'),
(11, 'Gương trang trí nhập khẩu GS 036', 4, 1, '/storage/images_product/vaYftoQSNs_guong-trang-tri-nhap-khau-gs-036-1.jpg', 1000000, 3000000, 3, 2, '<p>&nbsp;</p>\r\n\r\n<p>Gương Khung Th&eacute;p Treo Tường Decor, Độ Ho&agrave;n Thiện Tuyệt Đối, M&agrave;u Sơn S&aacute;ng B&oacute;ng. Cạnh Viền Xung Quanh Gương Được Bao Bọc Khung Th&eacute;p, Lớp Sơn Tĩnh Điện Độ B&aacute;m Chắc Chắn Kh&ocirc;ng Bị Bong Tr&oacute;c. Thiết Kế Hiện Đại, Nhẹ Nh&agrave;ng, Tinh Tế. Gương Treo Tường Decor L&agrave; Sự Lựa Chọn H&agrave;ng Đầu Cho Những Kh&ocirc;ng Gian Nội Thất Hiện Đại</p>', '<p>Cạnh viền xung quanh gương được bọc bằng d&acirc;y da tổng hợp cao cấp nhập khẩu H&agrave;n Quốc.</p>\r\n\r\n<p>Đai d&acirc;y da v&agrave; d&acirc;y treo da sử dụng những đường may tỉ mỉ tạo n&ecirc;n n&eacute;t sang trọng cho chiếc gương. Thiết kế hiện đại, nhẹ nh&agrave;ng, tinh tế. Gương d&acirc;y da treo tường l&agrave; sự lựa chọn h&agrave;ng đầu cho những kh&ocirc;ng gian nội thất hiện đại.</p>\r\n\r\n<p>✔ K&iacute;ch thước: Đường k&iacute;nh 40cm - 50cm</p>\r\n\r\n<p>✔ M&agrave;u sắc: Da đen, n&acirc;u, v&agrave;ng da b&ograve;, trắng</p>\r\n\r\n<p>✔ Bao gồm đầy đủ ốc v&iacute;t, trụ treo</p>\r\n\r\n<p>✔ Da c&ocirc;ng nghiệp cao cấp<img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/guong-trang-tri-nhap-khau-gs-036-4.jpg\" style=\"height:310px; width:350px\" /></p>', 'gương decor', 'Gương trang trí nhập khẩu GS 036'),
(12, 'Đèn Led trang trí bàn ăn LED 046', 2, 1, '/storage/images_product/0M8ZS2wNdV_den-led-trang-tri-ban-an-led-046-3.jpg', 100000, 3000000, 1, 2, '<p>&nbsp;</p>\r\n\r\n<p>Đ&egrave;n Trang Tr&iacute; Tường Vỏ&nbsp; Đồng Mạ V&agrave;ng Nguy&ecirc;n Chất. L&agrave; Loại Đ&egrave;n Sử Dụng Chip Led C&ocirc;ng Nghệ Mới C&oacute; Ưu Điểm Vượt Trội Hơn Loại Chip Led Thường C&oacute; &Aacute;nh S&aacute;ng Ổn Định, Kh&ocirc;ng Ch&oacute;i, Kh&ocirc;ng Nhấp Nh&aacute;y, Bật Tắt Tức Th&igrave;. Chip Led Cũng Cho Khả Năng Tiết Kiệm Năng Lượng L&ecirc;n Tới 80% So Với Đ&egrave;n Sợi Đốt Th&ocirc;ng Thường.</p>', '<p>T&Iacute;NH NĂNG - ƯU ĐIỂM</p>\r\n\r\n<p>- Tiết kiệm điện so với c&aacute;c loại b&oacute;ng chiếu s&aacute;ng kh&aacute;c.</p>\r\n\r\n<p>- Vật liệu sử dụng l&agrave; nh&ocirc;m sơn tĩnh điện thiết kế hiện đại.</p>\r\n\r\n<p>- Thiết kế của đ&egrave;n dễ lắp đặt, dễ sử dụng, giảm thiểu thời gian thi c&ocirc;ng</p>\r\n\r\n<p>- Tuổi thọ đ&egrave;n cao, th&acirc;n thiện với m&ocirc;i trường, kh&ocirc;ng chứa chất độc hại, c&oacute; thể t&aacute;i chế. Đ&egrave;n tường LED l&agrave; loại đ&egrave;n tường trang tr&iacute; thường được sử dụng trong chiếu s&aacute;ng trang tr&iacute; tại c&aacute;c qu&aacute;n c&agrave; ph&ecirc;, khu đọc s&aacute;ch, hay c&ograve;n c&oacute; thể sử dụng l&agrave;m đ&egrave;n ngủ. Đ&egrave;n trang tr&iacute; LONstar Chuy&ecirc;n cung cấp c&aacute;c loại đ&egrave;n led trang tr&iacute;, đ&egrave;n ngủ để b&agrave;n, đ&egrave;n led d&acirc;n dụng, đ&egrave;n thả, đ&egrave;n d&acirc;y led,... tiết kiệm 70% điện năng so với c&aacute;c loai đ&egrave;n th&ocirc;ng thường bảo h&agrave;nh l&ecirc;n đến 12 th&aacute;ng<img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/den-led-trang-tri-ban-an-led-046-3.jpg\" style=\"height:750px; width:750px\" /></p>', 'đèn, đèn bàn', 'Đèn Led trang trí bàn ăn LED 046'),
(13, 'Sofa da hiện đại nhập khẩu SF 023', 6, 1, '/storage/images_product/z1xBxm0U8Z_sofa-da-hien-dai-nhap-khau-sf-023-2.jpg', 30000000, 35000000, 8, 3, '<p>Chất Liệu Da Nhập Khẩu Cao Cấp N&ecirc;n Kh&aacute;ch H&agrave;ng Y&ecirc;n T&acirc;m Về Chất Lượng , Độn Bền Với Thời Gian. Nệm D40 D&agrave;y V&agrave; &Ecirc;m Cho Bạn Cảm Gi&aacute;c Thỏa M&aacute;i Khi Ngồi, Khung Sườn Gỗ Tự Nhi&ecirc;n Đảm Bảo Chất Lượng, Chịu Trọng Lượng Cao.</p>', '<p>K&iacute;ch thước: vừa phải, ph&ugrave; hợp với v&oacute;c d&aacute;ng trung b&igrave;nh của người Việt Nam với mặt tr&ograve;n 18 x cao 20cm</p>\r\n\r\n<p>Chất liệu: Khung gỗ tự nhi&ecirc;n, m&uacute;t xốp bọc vải cao cấp chuy&ecirc;n dụng sofa.</p>\r\n\r\n<p>Thiết kế: hiện đại, mới lạ, v&ocirc; c&ugrave;ng trẻ trung. Với những mẫu vải v&agrave; m&agrave;u sắc đang c&oacute;, ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn c&oacute; được một mẫu ghế đ&ocirc;n kh&ocirc;ng &ldquo;đụng h&agrave;ng&rdquo; với bất kỳ mẫu n&agrave;o đang c&oacute; tr&ecirc;n thị trường<img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/sofa-da-hien-dai-nhap-khau-sf-023-2.jpg\" style=\"height:761px; width:750px\" /></p>', 'sofa', 'Sofa da hiện đại nhập khẩu SF 023'),
(14, 'Đèn chùm pha lê lá  phòng khách DCC 156', 1, 1, '/storage/images_product/LWTr50IRUx_den-chum-pha-le-la-trang-tri-phong-khach-dcc-156-4.jpg', 3000000, 6000000, 2, 2, '<p>&nbsp;</p>\r\n\r\n<p>Sản Phẩm Đước Đ&oacute;ng G&oacute;i Trong Hộp Xốp Cẩn Thận, Qu&yacute; Kh&aacute;ch Ho&agrave;n To&agrave;n C&oacute; Thể Y&ecirc;n T&acirc;m Trong Qu&aacute; Tr&igrave;nh Vận Chuyển</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;Nếu Bạn L&agrave; Người Kh&ocirc;ng Y&ecirc;u Th&iacute;ch Sự Cầu K&igrave; Nhưng Th&iacute;ch Sự Tinh Tế Th&igrave; Đ&acirc;y Ch&iacute;nh L&agrave; Mẫu Đ&egrave;n Ch&ugrave;m Pha L&ecirc; L&yacute; Tưởng D&agrave;nh Cho Kh&ocirc;ng Gian Nh&agrave; Bạn.</p>', '<p>T&iacute;nh nghệ thuật v&agrave; tinh tế: Họa tiết tr&ecirc;n khung đ&egrave;n được khắc họa tinh tế tạo ra điểm ấn tượng cho kh&ocirc;ng gian.</p>\r\n\r\n<p>Khung đ&egrave;n:Khung hợp kim sơn tĩnh điện bền, đẹp. Khung đ&egrave;n được kh&eacute;o l&eacute;o mạ một lớp v&agrave;ng 24k gi&uacute;p l&agrave;m tăng độ sang trọng của to&agrave;n thể chiếc đ&egrave;n ch&ugrave;m.</p>\r\n\r\n<p>&Aacute;nh s&aacute;ng: &Aacute;nh s&aacute;ng v&agrave;ng nhẹ nh&agrave;ng, ấm &aacute;p. Sử dụng &aacute;nh s&aacute;ng m&agrave;u v&agrave;ng sẽ tạo ra được kh&ocirc;ng gian ấm c&uacute;ng v&agrave; dễ chịu hơn.</p>\r\n\r\n<p>B&oacute;ng đ&egrave;n cao cấp c&oacute; tuổi thọ trung b&igrave;nh cao. th&acirc;n đ&egrave;n bằng hợp kim mạ v&agrave;ng 24k bền m&agrave;u với thời gian</p>\r\n\r\n<p>*K&iacute;ch thước sản phẩm: chiều rộng: 740mm. Chiều cao: 1020mm<img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/den-chum-pha-le-la-trang-tri-phong-khach-dcc-156-4.jpg\" style=\"height:713px; width:750px\" /></p>', 'đèn, đèn bàn', 'Đèn chùm pha lê lá trang trí phòng khách DCC 156'),
(15, 'Bộ 3 tranh tráng gương treo tường TTGA 031', 5, 1, '/storage/images_product/s80tFDRZ20_bo-3-tranh-trang-guong-treo-tuong-ttga-031-2.jpg', 3000000, 3000000, 1, 2, '<p>&nbsp;</p>\r\n\r\n<p>D&ograve;ng Sản Phẩm Nghệ Thuật Trang Tr&iacute; Nội Thất Sang Trọng, Bắt Mắt, L&agrave; Xu Hướng Mới. &nbsp;Đa Dạng Mẫu M&atilde;, Ph&ugrave; Hợp Với Kh&ocirc;ng Gian Hiện Đại, Sang Trọng,....</p>', '<p>* K&iacute;ch thước : 40x60cmx3 =&nbsp;<strong>4,000,000đ</strong></p>\r\n\r\n<p>* K&iacute;ch thước : 50x70cmx3 =<strong>&nbsp;5,000,000đ</strong></p>\r\n\r\n<p>* K&iacute;ch thước : 60x80cmx3 =&nbsp;<strong>6,000,000đ</strong></p>\r\n\r\n<p>* Nhận Thiết Kế Tranh Theo K&iacute;ch Thước Y&ecirc;u Cầu</p>\r\n\r\n<p>* K&egrave;m Đinh Treo Đa Năng ( Kh&ocirc;ng Cần Khoan Tường )</p>\r\n\r\n<p>* Bảo H&agrave;nh 2 Năm</p>\r\n\r\n<p>* Giao H&agrave;ng To&agrave;n Quốc, Ship COD.<img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/bo-3-tranh-trang-guong-treo-tuong-ttga-031.jpg\" style=\"height:744px; width:750px\" /></p>', 'gương decor', 'Bộ 3 tranh tráng gương treo tường TTGA 031'),
(16, 'Tranh nổi 3D cô gái trang trí phòng khách TSA 108', 5, 1, '/storage/images_product/4j1ZlAZm93_tranh-noi-3d-co-gai-trang-tri-phong-khach-tsa-108-4.jpg', 3000000, 7000000, 1, 3, '<p>&nbsp;</p>\r\n\r\n<p>D&ograve;ng Sản Phẩm Nghệ Thuật Trang Tr&iacute; Nội Thất Sang Trọng, Bắt Mắt, L&agrave; Xu Hướng Mới. &nbsp;Đa Dạng Mẫu M&atilde;, Ph&ugrave; Hợp Với Kh&ocirc;ng Gian Hiện Đại, Sang Trọng,....</p>', '<p>✔ CHẤT LIỆU</p>\r\n\r\n<p>+ Tranh c&oacute; 2 chất liệu c&aacute;n pvc mica b&oacute;ng gương độ d&agrave;y 7mm hoặc lụa mờ theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch</p>\r\n\r\n<p>+ K&iacute;ch thước khung 2x2cm composite đen, trắng, v&agrave;ng v&acirc;n gỗ&hellip; t&ugrave;y theo sản phẩm</p>\r\n\r\n<p>+ Tranh nhẹ treo bằng đinh chuy&ecirc;n dụng gửi k&egrave;m dễ d&agrave;ng.</p>\r\n\r\n<p>+Tranh sử dụng trang tr&iacute; ph&ograve;ng kh&aacute;ch, nh&agrave; ăn ph&ograve;ng ngủ , l&agrave;m việc&hellip;kh&ocirc;ng lo phai, bạc m&agrave;u</p>\r\n\r\n<p>+ Khung gỗ c&aacute;c loại, chắc chắn,kh&ocirc;ng ẩm mốc, mối mọt, cong v&ecirc;nh. Kh&aacute;ch h&agrave;ng y&ecirc;n t&acirc;m sử dụng trong nhiều năm.</p>\r\n\r\n<p>+ Tặng k&egrave;m đầy đủ phụ kiện đinh 3 ch&acirc;n đ&oacute;ng tường chuy&ecirc;n dụng, dễ d&agrave;ng treo tranh chỉ với 1 chiếc b&uacute;a nhỏ.</p>\r\n\r\n<p>✔CAM KẾT:</p>\r\n\r\n<p>+ Tranh được gia c&ocirc;ng mới ho&agrave;n to&agrave;n kh&ocirc;ng tồn kho cũ</p>\r\n\r\n<p>+ Cam kết sản phẩm y h&igrave;nh</p>\r\n\r\n<p>+ Tư vấn nhiệt t&igrave;nh, chu đ&aacute;o</p>\r\n\r\n<p>+ Gi&aacute; tốt nhất tr&ecirc;n thị trường<img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/tranh-noi-3d-co-gai-trang-tri-phong-khach-tsa-108-2.jpg\" style=\"height:800px; width:800px\" /></p>', 'tranh decor', 'Tranh nổi 3D cô gái trang trí phòng khách TSA 108'),
(17, 'Đèn bàn hiện đại, cao cấp DN 089', 3, 2, '/storage/images_product/GNZm7Xt14w_den-ban-hien-dai-cao-cap-dn-089-3.jpg', 4000000, 6000000, 2, 3, '<p>&nbsp;</p>\r\n\r\n<p>Đ&Egrave;N NGỦ - Vật Dụng Cần Thiết Cho Giấc Ngủ Ngon Khoảng Thời Gian Trong Ph&ograve;ng Ngủ Mỗi Ng&agrave;y Lu&ocirc;n L&agrave; L&uacute;c Tuyệt Vời Nhất, Khi Ch&uacute;ng Ta Ho&agrave;n To&agrave;n Rũ Bỏ Mọi &Aacute;p Lực Cuộc Sống Để Thư Gi&atilde;n V&agrave; Nghỉ Ngơi. Yếu Tố &Aacute;nh S&aacute;ng Trong Ph&ograve;ng Ngủ Rất Quan Trọng Để Mang Lại Cảm Gi&aacute;c Thư Gi&atilde;n Thoải M&aacute;i. V&igrave; Thế, Đ&egrave;n Ngủ Ra Đời V&agrave; C&oacute; Mặt Trong Hầu Hết C&aacute;c Ng&ocirc;i Nh&agrave;.</p>', '<p>- K&iacute;ch thước: cao 28,5 cm; đường k&iacute;nh chụp đ&egrave;n 25cm; đường k&iacute;nh đế 12 cm. - Trọng lượng: 530g. - Chất liệu: Đế đ&egrave;n bằng gỗ tre thi&ecirc;n nhi&ecirc;n, Chụp đ&egrave;n hai lớp, lớp trong bằng nhựa tạo khung c&aacute;ch nhiệt, lớp ngo&agrave;i l&agrave;m bằng vải trang tr&iacute; cao cấp.. - Ph&acirc;n loại sản phẩm: + Loại 1: c&oacute; điều khiển từ xa, &aacute;nh s&aacute;ng ba m&agrave;u (trắng, v&agrave;ng, trắng v&agrave;ng) điều chỉnh cường độ &aacute;nh s&aacute;ng, c&oacute; chức năng hẹn giờ ngủ. + Loại 2: C&ocirc;ng tắc on/off , &aacute;nh s&aacute;ng m&agrave;u v&agrave;ng cố định. - C&ocirc;ng suất: Nguồn s&aacute;ng tiết kiệm năng lượng LED 3W - Điện &aacute;p: &le; 36V - D&acirc;y điện: đầu cắm USB.</p>', 'đèn, đèn bàn', 'Đèn bàn hiện đại, cao cấp DN 089'),
(18, 'Đèn chùm nghệ thuật cao cấp DCC 130', 2, 1, '/storage/images_product/kzwFZbhxHq_den-chum-nghe-thuat-cao-cap-dcc-130-5.jpg', 5000000, 8000000, 8, 3, '<p>&nbsp;</p>\r\n\r\n<p>Đ&egrave;n Trang Tr&iacute; Tường Vỏ&nbsp; Đồng Mạ V&agrave;ng Nguy&ecirc;n Chất. L&agrave; Loại Đ&egrave;n Sử Dụng Chip Led C&ocirc;ng Nghệ Mới C&oacute; Ưu Điểm Vượt Trội Hơn Loại Chip Led Thường C&oacute; &Aacute;nh S&aacute;ng Ổn Định, Kh&ocirc;ng Ch&oacute;i, Kh&ocirc;ng Nhấp Nh&aacute;y, Bật Tắt Tức Th&igrave;. Chip Led Cũng Cho Khả Năng Tiết Kiệm Năng Lượng L&ecirc;n Tới 80% So Với Đ&egrave;n Sợi Đốt Th&ocirc;ng Thường.</p>', '<p>T&Iacute;NH NĂNG - ƯU ĐIỂM</p>\r\n\r\n<p>- Tiết kiệm điện so với c&aacute;c loại b&oacute;ng chiếu s&aacute;ng kh&aacute;c.</p>\r\n\r\n<p>- Vật liệu sử dụng l&agrave; nh&ocirc;m sơn tĩnh điện thiết kế hiện đại.</p>\r\n\r\n<p>- Thiết kế của đ&egrave;n dễ lắp đặt, dễ sử dụng, giảm thiểu thời gian thi c&ocirc;ng</p>\r\n\r\n<p>- Tuổi thọ đ&egrave;n cao, th&acirc;n thiện với m&ocirc;i trường, kh&ocirc;ng chứa chất độc hại, c&oacute; thể t&aacute;i chế. Đ&egrave;n tường LED l&agrave; loại đ&egrave;n tường trang tr&iacute; thường được sử dụng trong chiếu s&aacute;ng trang tr&iacute; tại c&aacute;c qu&aacute;n c&agrave; ph&ecirc;, khu đọc s&aacute;ch, hay c&ograve;n c&oacute; thể sử dụng l&agrave;m đ&egrave;n ngủ. Đ&egrave;n trang tr&iacute; LONstar Chuy&ecirc;n cung cấp c&aacute;c loại đ&egrave;n led trang tr&iacute;, đ&egrave;n ngủ để b&agrave;n, đ&egrave;n led d&acirc;n dụng, đ&egrave;n thả, đ&egrave;n d&acirc;y led,... tiết kiệm 70% điện năng so với c&aacute;c loai đ&egrave;n th&ocirc;ng thường bảo h&agrave;nh l&ecirc;n đến 12 th&aacute;ng<img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/den-chum-nghe-thuat-cao-cap-dcc-130-5.jpg\" style=\"height:350px; width:310px\" /></p>', 'đèn, đèn tường', 'Đèn chùm nghệ thuật cao cấp DCC 130'),
(19, 'Sofa nhập khẩu phòng khách hiện đại SF 009', 6, 1, '/storage/images_product/9qpll2nTcM_sofa-nhap-khau-phong-khach-hien-dai-sf-009-1.jpg', 11000000, 15000000, 9, 3, '<p>&nbsp;</p>\r\n\r\n<p>Chất Liệu Da Nhập Khẩu Cao Cấp N&ecirc;n Kh&aacute;ch H&agrave;ng Y&ecirc;n T&acirc;m Về Chất Lượng , Độn Bền Với Thời Gian. Nệm D40 D&agrave;y V&agrave; &Ecirc;m Cho Bạn Cảm Gi&aacute;c Thỏa M&aacute;i Khi Ngồi, Khung Sườn Gỗ Tự Nhi&ecirc;n Đảm Bảo Chất Lượng, Chịu Trọng Lượng Cao.</p>', '<p>K&iacute;ch thước: vừa phải, ph&ugrave; hợp với v&oacute;c d&aacute;ng trung b&igrave;nh của người Việt Nam với mặt tr&ograve;n 18 x cao 20cm</p>\r\n\r\n<p>Chất liệu: Khung gỗ tự nhi&ecirc;n, m&uacute;t xốp bọc vải cao cấp chuy&ecirc;n dụng sofa.</p>\r\n\r\n<p>Thiết kế: hiện đại, mới lạ, v&ocirc; c&ugrave;ng trẻ trung. Với những mẫu vải v&agrave; m&agrave;u sắc đang c&oacute;, ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn c&oacute; được một mẫu ghế đ&ocirc;n kh&ocirc;ng &ldquo;đụng h&agrave;ng&rdquo; với bất kỳ mẫu n&agrave;o đang c&oacute; tr&ecirc;n thị trườn<img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/sofa-nhap-khau-phong-khach-hien-dai-sf-009-12.jpg\" style=\"height:800px; width:800px\" /></p>', 'sofa', 'Sofa nhập khẩu phòng khách hiện đại SF 009'),
(20, 'Bộ tranh  trang trí phòng khách TSA 086', 5, 1, '/storage/images_product/CZuCpyFdZu_bo-tranh-3d-nghe-thuat-trang-tri-phong-khach-tsa-086-1.jpg', 11000000, 14000000, 10, 3, '<p>&nbsp;</p>\r\n\r\n<p>D&ograve;ng Sản Phẩm Nghệ Thuật Trang Tr&iacute; Nội Thất Sang Trọng, Bắt Mắt, L&agrave; Xu Hướng Mới. &nbsp;Đa Dạng Mẫu M&atilde;, Ph&ugrave; Hợp Với Kh&ocirc;ng Gian Hiện Đại, Sang Trọng,....</p>', '<p>✔ CHẤT LIỆU</p>\r\n\r\n<p>+ Tranh c&oacute; 2 chất liệu c&aacute;n pvc mica b&oacute;ng gương độ d&agrave;y 7mm hoặc lụa mờ theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch</p>\r\n\r\n<p>+ K&iacute;ch thước khung 2x2cm composite đen, trắng, v&agrave;ng v&acirc;n gỗ&hellip; t&ugrave;y theo sản phẩm</p>\r\n\r\n<p>+ Tranh nhẹ treo bằng đinh chuy&ecirc;n dụng gửi k&egrave;m dễ d&agrave;ng.</p>\r\n\r\n<p>+Tranh sử dụng trang tr&iacute; ph&ograve;ng kh&aacute;ch, nh&agrave; ăn ph&ograve;ng ngủ , l&agrave;m việc&hellip;kh&ocirc;ng lo phai, bạc m&agrave;u</p>\r\n\r\n<p>+ Khung gỗ c&aacute;c loại, chắc chắn,kh&ocirc;ng ẩm mốc, mối mọt, cong v&ecirc;nh. Kh&aacute;ch h&agrave;ng y&ecirc;n t&acirc;m sử dụng trong nhiều năm.</p>\r\n\r\n<p>+ Tặng k&egrave;m đầy đủ phụ kiện đinh 3 ch&acirc;n đ&oacute;ng tường chuy&ecirc;n dụng, dễ d&agrave;ng treo tranh chỉ với 1 chiếc b&uacute;a nhỏ.</p>\r\n\r\n<p>✔CAM KẾT:</p>\r\n\r\n<p>+ Tranh được gia c&ocirc;ng mới ho&agrave;n to&agrave;n kh&ocirc;ng tồn kho cũ</p>\r\n\r\n<p>+ Cam kết sản phẩm y h&igrave;nh</p>\r\n\r\n<p>+ Tư vấn nhiệt t&igrave;nh, chu đ&aacute;o</p>\r\n\r\n<p>+ Gi&aacute; tốt nhất tr&ecirc;n thị trường<img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/images_product/bo-tranh-3d-nghe-thuat-trang-tri-phong-khach-tsa-086-1 (1).jpg\" style=\"height:350px; width:293px\" /></p>', 'tranh decor', 'Bộ tranh 3D nghệ thuật trang trí phòng khách TSA 086'),
(21, 'Đèn chùm đồng cổ điển DCDA 009', 1, 1, '/storage/images_product/ECWit0Gwmk_den-chum-dong-co-dien-sang-trong-dcda-009-0.jpg', 10000000, 15000000, 5, 15, '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Sản Phẩm Đước Đ&oacute;ng G&oacute;i Trong Hộp Xốp Cẩn Thận, Qu&yacute; Kh&aacute;ch Ho&agrave;n To&agrave;n C&oacute; Thể Y&ecirc;n T&acirc;m Trong Qu&aacute; Tr&igrave;nh Vận Chuyển</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;</span><span style=\"background-color:white\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Nếu Bạn L&agrave; Người Kh&ocirc;ng Y&ecirc;u Th&iacute;ch Sự Cầu K&igrave; Nhưng Th&iacute;ch Sự Tinh Tế Th&igrave; Đ&acirc;y Ch&iacute;nh L&agrave; Mẫu Đ&egrave;n Ch&ugrave;m Pha L&ecirc; L&yacute; Tưởng D&agrave;nh Cho Kh&ocirc;ng Gian Nh&agrave; Bạn.</span></span></span></span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- C&aacute;nh tay đ&egrave;n: l&agrave;m bằng hợp kim sơn tĩnh điện được kh&eacute;o l&eacute;o mạ một lớp v&agrave;ng b&ecirc;n ngo&agrave;i v&agrave; uốn lượn theo đường cong mềm mại gi&uacute;p l&agrave;m tăng độ sang trọng cho to&agrave;n thể chiếc đ&egrave;n ch&ugrave;m. </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- Chao đ&egrave;n: L&agrave;m từ thủy tinh cao cấp, d&agrave;y dặn, được bọc trong hộp xốp rất cẩn thận, cho &aacute;nh s&aacute;ng hiển thị cực đẹp do sử dụng b&oacute;ng LED chuy&ecirc;n dụng. </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- Cột đ&egrave;n trung t&acirc;m: được l&agrave;m thủ c&ocirc;ng tinh xảo, b&oacute;ng lo&aacute;ng tạo kh&ocirc;ng gian tao nh&atilde;, đẹp mắt</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- Th&acirc;n đ&egrave;n bằng vật liệu hợp kim k&egrave;m mạ điện chống oxi h&oacute;a với cảm gi&aacute;c &aacute;nh s&aacute;ng tuyệt đẹp v&agrave; đầy kh&iacute; chất.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/den-chum-dong-co-dien-sang-trong-dcda-009-2.jpg\" style=\"height:564px; width:750px\" /></span></span></span></p>', 'đèn, đèn chùm', 'Đèn chùm đồng cổ điển DCDA 009');
INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_image`, `product_price_buy`, `product_price_sell`, `product_amount`, `product_sale`, `product_attribute`, `product_detail`, `product_keyword`, `product_description`) VALUES
(22, 'Đèn chùm trang trí tân cổ điển DCDA 003', 1, 1, '/storage/images_product/5iKV1JRjwI_den-chum-trang-tri-tan-co-dien-dcda-003.jpg', 12000000, 17000000, 10, 5, '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Ứng dụng: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ăn, ph&ograve;ng ngủ, nh&agrave; h&agrave;ng, sảnh, kh&aacute;ch sạn. đ&egrave;n n&agrave;y kh&aacute; đa năng khi n&oacute; c&oacute; thể sử dụng ở mọi kh&ocirc;ng gian. Tuy nhi&ecirc;n để lựa chọn loại đ&egrave;n th&iacute;ch hợp bạn cần ch&uacute; &yacute; tới m&agrave;u sắc, kiểu d&aacute;ng, k&iacute;ch thước ph&ugrave; hợp với kh&ocirc;ng gian</span></span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">K&iacute;ch thước sản phẩm: D95xH65 (cm) Ứng dụng: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ăn, ph&ograve;ng ngủ, nh&agrave; h&agrave;ng, sảnh, kh&aacute;ch sạn,ại đ&egrave;n n&agrave;y kh&aacute; đa năng khi n&oacute; c&oacute; thể sử dụng ở mọi kh&ocirc;ng gian. Tuy nhi&ecirc;n để lựa chọn loại đ&egrave;n th&iacute;ch hợp bạn cần ch&uacute; &yacute; tới m&agrave;u sắc, kiểu d&aacute;ng, k&iacute;ch thước ph&ugrave; hợp với kh&ocirc;ng gian. Tổng thể thiết kế của đ&egrave;n như một kiệt t&aacute;c nghệ thuật ph&aacute;t s&aacute;ng biến mọi kh&ocirc;ng gian trở n&ecirc;n đẳng cấp, qu&yacute; ph&aacute;i nhờ hiệu ứng t&aacute;n sắc của pha l&ecirc; v&agrave; thủy tinh cao cấp. Kh&ocirc;ng những vậy, c&aacute;c d&acirc;y x&iacute;ch pha l&ecirc; được treo đối xứng quanh tay v&agrave; chao đ&egrave;n đem đến vẻ mềm mại, nhẹ nh&agrave;ng cho thiết bị chiếu s&aacute;ng th&ocirc;ng thường tưởng chừng như kh&ocirc; khan, nh&agrave;m ch&aacute;n. Đ&egrave;n ch&ugrave;m t&ocirc;n l&ecirc;n sự đẹp đẽ nội thất b&ecirc;n trong gian ph&ograve;ng gia đ&igrave;nh bạn. </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/den-chum-trang-tri-tan-co-dien-dcda-003.jpg\" style=\"height:890px; width:750px\" /></span></span></span></p>', 'đèn, đèn chùm', 'Đèn chùm trang trí tân cổ điển DCDA 003'),
(23, 'Đèn chùm nghệ thuật cao cấp DCC 147', 1, 1, '/storage/images_product/yupMFCNzrC_den-chum-nghe-thuat-cao-cap-dcc-147-.jpg', 20000000, 30000000, 10, 10, '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Đ&egrave;n ch&ugrave;m trang tr&iacute; c&oacute; kiểu c&aacute;ch mỹ thuật, thanh lịch v&agrave; độc đ&aacute;o tạo ra phong th&aacute;i b&agrave;i tr&iacute; cho căn nh&agrave;, bừng s&aacute;ng kh&ocirc;ng gian bằng sự sang trọng l&ocirc;i cuốn của n&oacute;. Nếu bạn l&agrave; người kh&ocirc;ng y&ecirc;u th&iacute;ch sự cầu k&igrave; nhưng th&iacute;ch sự tinh tế th&igrave; đ&acirc;y ch&iacute;nh l&agrave; mẫu đ&egrave;n ch&ugrave;m l&yacute; tưởng d&agrave;nh cho kh&ocirc;ng gian nh&agrave; bạn.</span></span></span></p>', '<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\">T&iacute;nh nghệ thuật v&agrave; tinh tế: Họa tiết tr&ecirc;n khung đ&egrave;n được khắc họa tinh tế tạo ra điểm ấn tượng cho kh&ocirc;ng gian.</span></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\">Khung đ&egrave;n:Khung hợp kim sơn tĩnh điện bền, đẹp. Khung đ&egrave;n được kh&eacute;o l&eacute;o mạ một lớp v&agrave;ng 24k gi&uacute;p l&agrave;m tăng độ sang trọng của to&agrave;n thể chiếc đ&egrave;n ch&ugrave;m.</span></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\">&Aacute;nh s&aacute;ng: &Aacute;nh s&aacute;ng v&agrave;ng nhẹ nh&agrave;ng, ấm &aacute;p. Sử dụng &aacute;nh s&aacute;ng m&agrave;u v&agrave;ng sẽ tạo ra được kh&ocirc;ng gian ấm c&uacute;ng v&agrave; dễ chịu hơn.</span></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\">B&oacute;ng đ&egrave;n cao cấp c&oacute; tuổi thọ trung b&igrave;nh cao. th&acirc;n đ&egrave;n bằng hợp kim mạ v&agrave;ng 24k bền m&agrave;u với thời gian</span></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">*K&iacute;ch thước sản phẩm: chiều rộng: 740mm. Chiều cao: 1020mm</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/den-chum-nghe-thuat-cao-cap-dcc-147-.jpg\" style=\"height:680px; width:750px\" /></span></span></p>', 'đèn, đèn chùm', 'Đèn chùm nghệ thuật cao cấp DCC 147'),
(24, 'Đèn chùm pha lê nhập khẩu DCC 142', 1, 1, '/storage/images_product/pTpXoZ5plP_den-chum-pha-le-nhap-khau-cao-cap-dcc-142.jpg', 15000000, 20000000, 10, 10, '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Sản Phẩm Đước Đ&oacute;ng G&oacute;i Trong Hộp Xốp Cẩn Thận, Qu&yacute; Kh&aacute;ch Ho&agrave;n To&agrave;n C&oacute; Thể Y&ecirc;n T&acirc;m Trong Qu&aacute; Tr&igrave;nh Vận Chuyển</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;</span><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Nếu Bạn L&agrave; Người Kh&ocirc;ng Y&ecirc;u Th&iacute;ch Sự Cầu K&igrave; Nhưng Th&iacute;ch Sự Tinh Tế Th&igrave; Đ&acirc;y Ch&iacute;nh L&agrave; Mẫu Đ&egrave;n Ch&ugrave;m Pha L&ecirc; L&yacute; Tưởng D&agrave;nh Cho Kh&ocirc;ng Gian Nh&agrave; Bạn</span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- C&aacute;nh tay đ&egrave;n: l&agrave;m bằng hợp kim sơn tĩnh điện được kh&eacute;o l&eacute;o mạ một lớp v&agrave;ng b&ecirc;n ngo&agrave;i v&agrave; uốn lượn theo đường cong mềm mại gi&uacute;p l&agrave;m tăng độ sang trọng cho to&agrave;n thể chiếc đ&egrave;n ch&ugrave;m. </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- Chao đ&egrave;n: L&agrave;m từ thủy tinh cao cấp, d&agrave;y dặn, được bọc trong hộp xốp rất cẩn thận, cho &aacute;nh s&aacute;ng hiển thị cực đẹp do sử dụng b&oacute;ng LED chuy&ecirc;n dụng. </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- Cột đ&egrave;n trung t&acirc;m: được l&agrave;m thủ c&ocirc;ng tinh xảo, b&oacute;ng lo&aacute;ng tạo kh&ocirc;ng gian tao nh&atilde;, đẹp mắt</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- Th&acirc;n đ&egrave;n bằng vật liệu hợp kim k&egrave;m mạ điện chống oxi h&oacute;a với cảm gi&aacute;c &aacute;nh s&aacute;ng tuyệt đẹp v&agrave; đầy kh&iacute; chất.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/den-chum-pha-le-nhap-khau-cao-cap-dcc-142.jpg\" style=\"height:750px; width:750px\" /></span></span></span></p>', 'đèn, đèn chùm', 'Đèn chùm pha lê nhập khẩu DCC 142'),
(25, 'Đèn thả bàn ăn hiện đại DA 005', 1, 3, '/storage/images_product/r4cUX9AvpX_den-tha-ban-an-hien-dai-da-005-1.jpg', 10000000, 15000000, 10, 15, '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Ứng dụng: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ăn, ph&ograve;ng ngủ, nh&agrave; h&agrave;ng, sảnh, kh&aacute;ch sạn. đ&egrave;n n&agrave;y kh&aacute; đa năng khi n&oacute; c&oacute; thể sử dụng ở mọi kh&ocirc;ng gian. Tuy nhi&ecirc;n để lựa chọn loại đ&egrave;n th&iacute;ch hợp bạn cần ch&uacute; &yacute; tới m&agrave;u sắc, kiểu d&aacute;ng, k&iacute;ch thước ph&ugrave; hợp với kh&ocirc;ng gian</span></span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\">- Hạt pha l&ecirc;: qu&aacute; tr&igrave;nh cắt ch&iacute;nh x&aacute;c, bề mặt cắt mịn v&agrave; phẳng, c&aacute;c g&oacute;c v&agrave; cạnh sắc n&eacute;t, &aacute;nh s&aacute;ng kh&uacute;c xạ quyến rũ. </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\">K&iacute;ch thước sản phẩm: D95xH65 (cm) Ứng dụng: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ăn, ph&ograve;ng ngủ, nh&agrave; h&agrave;ng, sảnh, kh&aacute;ch sạn,ại đ&egrave;n n&agrave;y kh&aacute; đa năng khi n&oacute; c&oacute; thể sử dụng ở mọi kh&ocirc;ng gian. Tuy nhi&ecirc;n để lựa chọn loại đ&egrave;n th&iacute;ch hợp bạn cần ch&uacute; &yacute; tới m&agrave;u sắc, kiểu d&aacute;ng, k&iacute;ch thước ph&ugrave; hợp với kh&ocirc;ng gian. Tổng thể thiết kế của đ&egrave;n như một kiệt t&aacute;c nghệ thuật ph&aacute;t s&aacute;ng biến mọi kh&ocirc;ng gian trở n&ecirc;n đẳng cấp, qu&yacute; ph&aacute;i nhờ hiệu ứng t&aacute;n sắc của pha l&ecirc; v&agrave; thủy tinh cao cấp. Kh&ocirc;ng những vậy, c&aacute;c d&acirc;y x&iacute;ch pha l&ecirc; được treo đối xứng quanh tay v&agrave; chao đ&egrave;n đem đến vẻ mềm mại, nhẹ nh&agrave;ng cho thiết bị chiếu s&aacute;ng th&ocirc;ng thường tưởng chừng như kh&ocirc; khan, nh&agrave;m ch&aacute;n. Đ&egrave;n ch&ugrave;m t&ocirc;n l&ecirc;n sự đẹp đẽ nội thất b&ecirc;n trong gian ph&ograve;ng gia đ&igrave;nh bạn. </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Đ&egrave;n ch&ugrave;m trang tr&iacute; c&oacute; kiểu c&aacute;ch mỹ thuật, thanh lịch v&agrave; độc đ&aacute;o tạo ra phong th&aacute;i b&agrave;i tr&iacute; cho căn nh&agrave;, bừng s&aacute;ng kh&ocirc;ng gian bằng sự sang trọng l&ocirc;i cuốn của n&oacute;. Nếu bạn l&agrave; người kh&ocirc;ng y&ecirc;u th&iacute;ch sự cầu k&igrave; nhưng th&iacute;ch sự tinh tế th&igrave; đ&acirc;y ch&iacute;nh l&agrave; mẫu đ&egrave;n ch&ugrave;m l&yacute; tưởng d&agrave;nh cho kh&ocirc;ng gian nh&agrave; bạn</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/den-tha-ban-an-hien-dai-da-005-1.jpg\" style=\"height:600px; width:800px\" /></span></span></p>', 'đèn, đèn bàn ăn', 'Đèn thả bàn ăn hiện đại DA 005'),
(26, 'Đèn bàn ăn hình cầu trẻ trung DA 003', 1, 3, '/storage/images_product/srlKjjVJXS_den-ban-an-hinh-cau-tre-trung-da-003-2.jpg', 9000000, 15000000, 10, 15, '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Ứng dụng: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ăn, ph&ograve;ng ngủ, nh&agrave; h&agrave;ng, sảnh, kh&aacute;ch sạn. đ&egrave;n n&agrave;y kh&aacute; đa năng khi n&oacute; c&oacute; thể sử dụng ở mọi kh&ocirc;ng gian. Tuy nhi&ecirc;n để lựa chọn loại đ&egrave;n th&iacute;ch hợp bạn cần ch&uacute; &yacute; tới m&agrave;u sắc, kiểu d&aacute;ng, k&iacute;ch thước ph&ugrave; hợp với kh&ocirc;ng gian</span></span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- C&aacute;nh tay đ&egrave;n: l&agrave;m bằng hợp kim sơn tĩnh điện được kh&eacute;o l&eacute;o mạ một lớp v&agrave;ng b&ecirc;n ngo&agrave;i v&agrave; uốn lượn theo đường cong mềm mại gi&uacute;p l&agrave;m tăng độ sang trọng cho to&agrave;n thể chiếc đ&egrave;n ch&ugrave;m. </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- Chao đ&egrave;n: L&agrave;m từ thủy tinh cao cấp, d&agrave;y dặn, được bọc trong hộp xốp rất cẩn thận, cho &aacute;nh s&aacute;ng hiển thị cực đẹp do sử dụng b&oacute;ng LED chuy&ecirc;n dụng. </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- Cột đ&egrave;n trung t&acirc;m: được l&agrave;m thủ c&ocirc;ng tinh xảo, b&oacute;ng lo&aacute;ng tạo kh&ocirc;ng gian tao nh&atilde;, đẹp mắt</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- Th&acirc;n đ&egrave;n bằng vật liệu hợp kim k&egrave;m mạ điện chống oxi h&oacute;a với cảm gi&aacute;c &aacute;nh s&aacute;ng tuyệt đẹp v&agrave; đầy kh&iacute; chất.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/den-ban-an-hinh-cau-tre-trung-da-003-2.jpg\" style=\"height:964px; width:800px\" /></span></span></span></p>', 'đèn, đèn bàn ăn', 'Đèn bàn ăn hình cầu trẻ trung DA 003'),
(27, 'Đèn bàn ăn độc đáo DA 002', 1, 3, '/storage/images_product/tAnSoP8gC9_den-ban-an-doc-dao-da-002-14.jpg', 15000000, 20000000, 5, 10, '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Đ&egrave;n ch&ugrave;m trang tr&iacute; c&oacute; kiểu c&aacute;ch mỹ thuật, thanh lịch v&agrave; độc đ&aacute;o tạo ra phong th&aacute;i b&agrave;i tr&iacute; cho căn nh&agrave;, bừng s&aacute;ng kh&ocirc;ng gian bằng sự sang trọng l&ocirc;i cuốn của n&oacute;. Nếu bạn l&agrave; người kh&ocirc;ng y&ecirc;u th&iacute;ch sự cầu k&igrave; nhưng th&iacute;ch sự tinh tế th&igrave; đ&acirc;y ch&iacute;nh l&agrave; mẫu đ&egrave;n ch&ugrave;m l&yacute; tưởng d&agrave;nh cho kh&ocirc;ng gian nh&agrave; bạn.</span></span></span></p>', '<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\">T&iacute;nh nghệ thuật v&agrave; tinh tế: Họa tiết tr&ecirc;n khung đ&egrave;n được khắc họa tinh tế tạo ra điểm ấn tượng cho kh&ocirc;ng gian.</span></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\">Khung đ&egrave;n:Khung hợp kim sơn tĩnh điện bền, đẹp. Khung đ&egrave;n được kh&eacute;o l&eacute;o mạ một lớp v&agrave;ng 24k gi&uacute;p l&agrave;m tăng độ sang trọng của to&agrave;n thể chiếc đ&egrave;n ch&ugrave;m.</span></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\">&Aacute;nh s&aacute;ng: &Aacute;nh s&aacute;ng v&agrave;ng nhẹ nh&agrave;ng, ấm &aacute;p. Sử dụng &aacute;nh s&aacute;ng m&agrave;u v&agrave;ng sẽ tạo ra được kh&ocirc;ng gian ấm c&uacute;ng v&agrave; dễ chịu hơn.</span></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\">B&oacute;ng đ&egrave;n cao cấp c&oacute; tuổi thọ trung b&igrave;nh cao. th&acirc;n đ&egrave;n bằng hợp kim mạ v&agrave;ng 24k bền m&agrave;u với thời gian</span></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">*K&iacute;ch thước sản phẩm: chiều rộng: 740mm. Chiều cao: 1020mm</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/den-ban-an-doc-dao-da-002-14.jpg\" style=\"height:912px; width:800px\" /></span></span></p>', 'đèn, đèn bàn ăn', 'Đèn bàn ăn độc đáo DA 002'),
(28, 'Bàn ăn tròn hiện đại BNK 017', 6, 3, '/storage/images_product/g9915WMI3k_ban-an-tron-hien-dai-bnk-017.jpg', 10000000, 15000000, 10, 15, '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Ứng dụng: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ăn, ph&ograve;ng ngủ, nh&agrave; h&agrave;ng, sảnh, kh&aacute;ch sạn. đ&egrave;n n&agrave;y kh&aacute; đa năng khi n&oacute; c&oacute; thể sử dụng ở mọi kh&ocirc;ng gian. Tuy nhi&ecirc;n để lựa chọn loại đ&egrave;n th&iacute;ch hợp bạn cần ch&uacute; &yacute; tới m&agrave;u sắc, kiểu d&aacute;ng, k&iacute;ch thước ph&ugrave; hợp với kh&ocirc;ng gian</span></span></span></p>', '<p>Bộ&nbsp;<strong>b&agrave;n ghế ăn hiện đại</strong>&nbsp;gi&uacute;p mang tới kh&ocirc;ng gian nội thất ph&ograve;ng bếp đẹp v&agrave; tiện nghi hơn. Bởi vậy những mẫu thiết kế đẹp lu&ocirc;n được nhiều người ch&uacute; &yacute;, bộ b&agrave;n ghế ăn m&atilde; XBA190 l&agrave; một trong những mẫu thiết kế đẹp mới được giới thiệu bởi Nội Thất Xinh.</p>\r\n\r\n<p><strong>Bộ b&agrave;n ghế ăn</strong>&nbsp;n&agrave;y được thiết kế theo phong c&aacute;ch hiện đại với sự tối giản trong những chi tiết trang tr&iacute;. Mặt b&agrave;n sử dụng mặt đ&aacute; cẩm thạch c&oacute; v&acirc;n đẹp vừa mang tới sự s&aacute;ng trọng lại vừa mang tới sự tiện lợi trong qu&aacute; tr&igrave;nh vệ sinh mặt b&agrave;n sau mỗi bữa ăn.&nbsp;B&agrave;n ghế ăn m&atilde; XBA190 được phối m&agrave;u tương phản giữa trắng - n&acirc;u gi&uacute;p mang tới kh&ocirc;ng gian nội thất nổi bật hơn.</p>\r\n\r\n<h2><strong>Th&ocirc;ng tin về bộ b&agrave;n&nbsp;ăn</strong></h2>\r\n\r\n<ul>\r\n	<li>K&iacute;ch thước b&agrave;n ăn: 1300*800*760 mm</li>\r\n	<li>Gồm 1 b&agrave;n v&agrave; 6 ghế</li>\r\n	<li>Chất liệu gỗ Sồi cao cấp, tự nhi&ecirc;n được tuyển chọn</li>\r\n	<li>Sử dụng mặt đ&aacute; cẩm thạch mang tới vẻ đẹp sang trọng</li>\r\n	<li>Gam m&agrave;u nổi bật giữa tone n&acirc;u v&agrave; trắng</li>\r\n	<li>B&agrave;n ghế ăn ph&ugrave; hợp b&agrave;y tr&iacute; cả với ph&ograve;ng ăn nhỏ</li>\r\n	<li>Thiết kế theo phong c&aacute;ch hiện đại v&agrave; trẻ trung</li>\r\n	<li>Lưu &yacute;: kh&ocirc;ng b&aacute;n lẻ ghế ăn với b&agrave;n ghế ăn nhập khẩu</li>\r\n	<li><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/ban-an-tron-hien-dai-bnk-017.jpg\" style=\"height:800px; width:800px\" /></li>\r\n</ul>', 'bàn ghế, bàn ăn', 'Bàn ăn tròn hiện đại BNK 017'),
(29, 'Bàn nhập khẩu mặt đá BNK 003', 6, 3, '/storage/images_product/mSgoLaloyI_ban-nhap-khau-mat-da-bnk-003.jpg', 15000000, 20000000, 5, 10, '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Ứng dụng: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ăn, ph&ograve;ng ngủ, nh&agrave; h&agrave;ng, sảnh, kh&aacute;ch sạn. đ&egrave;n n&agrave;y kh&aacute; đa năng khi n&oacute; c&oacute; thể sử dụng ở mọi kh&ocirc;ng gian. Tuy nhi&ecirc;n để lựa chọn loại đ&egrave;n th&iacute;ch hợp bạn cần ch&uacute; &yacute; tới m&agrave;u sắc, kiểu d&aacute;ng, k&iacute;ch thước ph&ugrave; hợp với kh&ocirc;ng gian</span></span></span></p>', '<h2>Nếu qu&yacute; vị đang t&igrave;m kiếm bộ&nbsp;<strong><a href=\"https://noithatxinh.vn/ban-ghe-an\" target=\"_blank\">b&agrave;n ghế ph&ograve;ng ăn</a></strong>&nbsp;đẹp, sang trọng v&agrave; tinh tế. Gợi &yacute; mẫu&nbsp;<strong>b&agrave;n ăn hiện đại</strong>&nbsp;nhập khẩu ch&iacute;nh h&atilde;ng từ thương hiệu Nội Thất Xinh l&agrave; lựa chọn tốt nhất. Bộ b&agrave;n ghế ăn được cải tiến với thiết kế Ch&acirc;u &Acirc;u sang trọng, chất liệu mặt b&agrave;n đ&aacute; cẩm thạch kết hợp với khung inox chắc chắn, mới lạ.</h2>\r\n\r\n<p>Sản phẩm hiện đang c&oacute; sẵn tại Nội Thất Xinh v&agrave; nằm trong bộ sưu tập những mẫu b&agrave;n ghế ăn đẹp nhất hiện nay.</p>\r\n\r\n<h3><strong>Th&ocirc;ng tin chi tiết về bộ b&agrave;n ghế ăn nhập khẩu BA205</strong></h3>\r\n\r\n<ul>\r\n	<li>Xuất xứ:&nbsp;<strong>bộ b&agrave;n ghế ph&ograve;ng ăn</strong>&nbsp;nhập khẩu ch&iacute;nh h&atilde;ng.</li>\r\n	<li>K&iacute;ch thước: 1400*800mm</li>\r\n	<li>Chất liệu:&nbsp;B&agrave;n ăn sử dụng chất liệu&nbsp;mặt đ&aacute; cẩm thạch kết hợp khung th&eacute;p sơn tĩnh điện cao cấp.</li>\r\n	<li>Phần ghế bọc da cao cấp - loại da chuy&ecirc;n sử dụng để sản xuất&nbsp;<strong>sofa đẹp</strong>. Thiết kế khung b&agrave;n ăn l&agrave;m từ&nbsp;th&eacute;p chắc chắn, sơn tĩnh điện</li>\r\n	<li>Sản phẩm gồm 1 b&agrave;n v&agrave; 6 ghế.</li>\r\n	<li>Thiết kế b&agrave;n ăn kiểu d&aacute;ng hiện đại, sang trọng rất hợp cho c&aacute;c kh&ocirc;ng gian nội thất nh&agrave; bếp hiện đại.</li>\r\n	<li>Gam m&agrave;u bộ b&agrave;n ghế ph&ograve;ng ăn l&agrave; sự kết hợp h&agrave;i h&ograve;a giữa m&agrave;u trắng - x&aacute;m - đen vừa sạch sẽ, vừa tăng th&ecirc;m sức h&uacute;t sang trọng</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/ban-nhap-khau-mat-da-bnk-003.jpg\" style=\"height:750px; width:750px\" /></p>', 'bàn ghế, bàn ăn', 'Bàn nhập khẩu mặt đá BNK 003'),
(30, 'Bàn ăn tròn nhập khẩu BNK 010', 6, 3, '/storage/images_product/9y0htnES1G_ban-an-tron-nhap-khau-bnk-010.jpg', 15000000, 25000000, 5, 15, '<p><span style=\"font-size:14px\">Bộ b&agrave;n ghế ăn với m&agrave;u sắc thanh lịch rất dễ khi kết hợp c&ugrave;ng với&nbsp;<a href=\"https://noithatxinh.vn/tham-sofa\"><strong>thảm sofa</strong></a>&nbsp;v&agrave; c&aacute;c m&oacute;n đồ trong nh&agrave; ăn, nh&agrave; bếp của bạn. Bộ b&agrave;n ghế ăn cao cấp cho qu&yacute; kh&aacute;ch h&agrave;ng chọn lựa.&nbsp;</span></p>', '<p>Thiết kế h&igrave;nh tr&ograve;n của&nbsp;<a href=\"https://noithatxinh.vn/ban-an-mat-da\"><strong>B&agrave;n ăn tr&ograve;n nhập khẩu BNK 010</strong></a> nhận được sự quan t&acirc;m của kh&aacute;ch h&agrave;ng. B&agrave;n ăn đ&aacute; h&igrave;nh tr&ograve;n tiết kiệm diện t&iacute;ch v&agrave; vẫn đem lại gi&aacute; trị thẩm mĩ cực cao cho nh&agrave; bếp của bạn.&nbsp;</p>\r\n\r\n<h2><strong>Th&ocirc;ng tin chi tiết b&agrave;n ăn cao cấp BNK 010</strong></h2>\r\n\r\n<ul>\r\n	<li>Xuất xứ: Nhập Khẩu</li>\r\n	<li>K&iacute;ch thước: 1350x1350 mm</li>\r\n	<li>M&agrave;u sắc: Trắng x&aacute;m nhẹ rất sang v&agrave; thanh lịch</li>\r\n	<li>Chất liệu: Gỗ Sồi + mặt đ&aacute; cẩm thạch</li>\r\n	<li>Mặt b&agrave;n c&oacute; c&aacute;c đường v&acirc;n cực đẹp, mặt đ&aacute; tạo n&ecirc;n sự đẳng cấp</li>\r\n	<li>B&agrave;n ghế ăn th&iacute;ch hợp với nhiều nh&agrave; bếp hiện đại, b&agrave;n tr&ograve;n tiết kiệm diện t&iacute;ch</li>\r\n	<li>Ghế ăn thiết kế theo phong c&aacute;ch Ch&acirc;u &Acirc;u được bọc da cao cấp như da thật</li>\r\n	<li>Sản phầm gồm 1 b&agrave;n v&agrave; 6 ghế</li>\r\n	<li>Thiết kế b&agrave;n ghế ăn sang trọng v&agrave; vẫn giữ được sự mềm mại</li>\r\n	<li>Bảo h&agrave;nh 12 th&aacute;ng về chất lượng, bảo tr&igrave; trọn đời</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/ban-an-tron-nhap-khau-bnk-010.jpg\" style=\"height:800px; width:800px\" /></p>', 'bàn ghế, bàn ăn', 'Bàn ăn tròn nhập khẩu BNK 010'),
(31, 'Bàn ăn tròn trang trí BNK 015', 6, 3, '/storage/images_product/plNytHiGBl_ban-an-tron-trang-tri-bnk-015.jpg', 15000000, 20000000, 5, 20, '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Ứng dụng: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ăn, ph&ograve;ng ngủ, nh&agrave; h&agrave;ng, sảnh, kh&aacute;ch sạn. đ&egrave;n n&agrave;y kh&aacute; đa năng khi n&oacute; c&oacute; thể sử dụng ở mọi kh&ocirc;ng gian. Tuy nhi&ecirc;n để lựa chọn loại đ&egrave;n th&iacute;ch hợp bạn cần ch&uacute; &yacute; tới m&agrave;u sắc, kiểu d&aacute;ng, k&iacute;ch thước ph&ugrave; hợp với kh&ocirc;ng gian</span></span></span></p>', '<p><span style=\"font-size:14px\">Nh&agrave; bếp khi được bố tr&iacute;&nbsp;<a href=\"https://noithatxinh.vn/ban-an-mat-da\"><strong>B&agrave;n ăn tr&ograve;n trang tr&iacute; BNK 015</strong></a>&nbsp;lu&ocirc;n v&ocirc; c&ugrave;ng sang trọng, đẳng cấp. Với bộ B&agrave;n ăn tr&ograve;n trang tr&iacute; BNK 015 tạo n&ecirc;n sức h&uacute;t rất đặc biệt, thiết kế của sản phẩm mang lại sự ấn tượng v&agrave; rất mềm mại.&nbsp;</span></p>\r\n\r\n<h2><span style=\"font-size:14px\"><strong>Th&ocirc;ng tin chi tiết B&agrave;n ăn tr&ograve;n trang tr&iacute; BNK 015</strong></span></h2>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Xuất xứ: Nội Thất Xinh</span></li>\r\n	<li><span style=\"font-size:14px\">K&iacute;ch thước: 1300x1300 mm</span></li>\r\n	<li><span style=\"font-size:14px\">M&agrave;u sắc: đen - n&acirc;u cho sự sang trọng v&agrave; thời thượng</span></li>\r\n	<li><span style=\"font-size:14px\">Chất liệu: Gỗ Sồi + mặt đ&aacute; cẩm thạch</span></li>\r\n	<li><span style=\"font-size:14px\">Mặt b&agrave;n đ&aacute; cẩm thạch sang trọng chọn lọc v&acirc;n tự nhi&ecirc;n tinh tế</span></li>\r\n	<li><span style=\"font-size:14px\">B&agrave;n ăn phong c&aacute;ch hiện đại kết hợp ghế ăn mang phong c&aacute;ch cổ điển tạo sự mới mẻ v&agrave; ấn tượng</span></li>\r\n	<li><span style=\"font-size:14px\">Ghế ăn c&oacute; c&aacute;c họa tiết hoa cầu k&igrave; h&uacute;t mắt</span></li>\r\n	<li><span style=\"font-size:14px\">Sản phầm gồm 1 b&agrave;n (nhập khẩu)&nbsp;v&agrave; 6 ghế (gia c&ocirc;ng tinh tế theo kỹ nghệ trong nước).</span></li>\r\n	<li><span style=\"font-size:14px\">Bảo h&agrave;nh 12 th&aacute;ng về chất lượng, bảo tr&igrave; trọn đời</span></li>\r\n	<li><span style=\"font-size:14px\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/ban-an-tron-trang-tri-bnk-015.jpg\" style=\"height:800px; width:800px\" /></span></li>\r\n</ul>', 'bàn ghế, bàn ăn', 'Bàn ăn tròn trang trí BNK 015'),
(32, 'Sofa da nhập khẩu hiện đại SF 025', 6, 1, '/storage/images_product/351yH0lSW0_sofa-da-nhap-khau-kieu-dang-hien-dai-sf-025-5.jpg', 15000000, 25000000, 10, 10, '<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\">D&ograve;ng sản phẩm Nghệ thuật Trang tr&iacute; nội thất Sang trọng, Bắt mắt, l&agrave; xu hướng Mới.&nbsp; Đa dạng mẫu m&atilde;, ph&ugrave; hợp với kh&ocirc;ng gian hiện đại, sang trọng, hay cổ điển....</span></span></span></span></p>', '<p>Qu&yacute; kh&aacute;ch h&agrave;ng muốn mua&nbsp;<a href=\"https://noithatxinh.vn/sofa-nhap-khau\"><strong>Sofa da nhập khẩu hiện đại SF 025</strong></a>.&nbsp;H91029-G-1 với thiết kế hiện đại, tinh tế c&ugrave;ng kiểu d&aacute;ng được cập nhật mới nhất lu&ocirc;n đem lại sức h&uacute;t v&ocirc; c&ugrave;ng đặc biệt.&nbsp;</p>\r\n\r\n<h2><strong>Th&ocirc;ng tin chi tiết Sofa da nhập khẩu hiện đại SF 025</strong></h2>\r\n\r\n<ul>\r\n	<li>Chất liệu: bọc da b&ograve; thật, c&oacute; độ d&agrave;y 1,4mm, da thật cực k&igrave; bền m&agrave;u, &ecirc;m &aacute;i v&agrave; an to&agrave;n</li>\r\n	<li>Nh&agrave; sản xuất: LANOUVA</li>\r\n	<li>Khung xương ghế l&agrave;m bằng gỗ tự nhi&ecirc;n c&oacute; độ bền cao, chắc chắn</li>\r\n	<li>Đệm m&uacute;t 3 lớp cực &ecirc;m &aacute;i khi sử dụng</li>\r\n	<li>Thiết kế d&aacute;ng g&oacute;c hiện đại ph&ugrave; hợp nhiều kh&ocirc;ng gian, cỏ đủ g&oacute;c tr&aacute;i, phải</li>\r\n	<li>Thiết kế hướng đến người d&ugrave;ng với phần lưng tựa, tay vịn thoải m&aacute;i</li>\r\n	<li>Lưng tựa gật g&ugrave; thoải m&aacute;i cho bạn nghỉ ngơi</li>\r\n	<li>Kiểu d&aacute;ng hiện đại, sang trọng ph&ugrave; hợp với nhiều kh&ocirc;ng gian</li>\r\n	<li>Được sản xuất theo c&aacute;c ti&ecirc;u chuẩn Ch&acirc;u &Acirc;u, chất lượng tốt nhất</li>\r\n	<li>C&oacute; đầy đủ giấy tờ chứng minh nguồn gốc xuất xứ sản phẩm</li>\r\n	<li><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/sofa-da-nhap-khau-kieu-dang-hien-dai-sf-025-5.jpg\" style=\"height:800px; width:800px\" /></li>\r\n</ul>', 'bàn ghế, sofa', 'Sofa da nhập khẩu hiện đại SF 025'),
(33, 'Đèn gắn tường trang trí DGT 005', 2, 2, '/storage/images_product/b8Rnp86raP_den-gan-tuong-trang-tri-dgt-005-1.jpg', 1000000, 3000000, 20, 20, '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\">Đ&egrave;n trang tr&iacute; tường vỏ trắng s&aacute;ng v&agrave;ng l&agrave; loại đ&egrave;n sử dụng chip led c&ocirc;ng nghệ mới c&oacute; ưu điểm vượt trội hơn loại chip led thường c&oacute; &aacute;nh s&aacute;ng ổn định, kh&ocirc;ng ch&oacute;i, kh&ocirc;ng nhấp nh&aacute;y, bật tắt tức th&igrave;. Chip led cũng cho khả năng tiết kiệm năng lượng l&ecirc;n tới 80% so với đ&egrave;n sợi đốt th&ocirc;ng thường</span></span></span></p>', '<p><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\">Đ&egrave;n trang tr&iacute; tường vỏ trắng s&aacute;ng v&agrave;ng l&agrave; loại đ&egrave;n sử dụng chip led c&ocirc;ng nghệ mới c&oacute; ưu điểm vượt trội hơn loại chip led thường c&oacute; &aacute;nh s&aacute;ng ổn định, kh&ocirc;ng ch&oacute;i, kh&ocirc;ng nhấp nh&aacute;y, bật tắt tức th&igrave;. Chip led cũng cho khả năng tiết kiệm năng lượng l&ecirc;n tới 80% so với đ&egrave;n sợi đốt th&ocirc;ng thường</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/den-gan-tuong-trang-tri-dgt-005-1.jpg\" style=\"height:926px; width:800px\" /></span></span></span></p>', 'đèn, đèn tường', 'Đèn gắn tường trang trí DGT 005'),
(34, 'Đèn gắn tường Nordic DGT 009', 2, 2, '/storage/images_product/4wMlE3kWzy_den-gan-tuong-nordic-dgt-009-1.jpg', 2500000, 4000000, 10, 10, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\">D</span></span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\">&ograve;ng sản phẩm Nghệ thuật Trang tr&iacute; nội thất Sang trọng, Bắt mắt, l&agrave; xu hướng Mới.&nbsp; Đa dạng mẫu m&atilde;, ph&ugrave; hợp với kh&ocirc;ng gian hiện đại, sang trọng, hay cổ điển....</span></span></span></span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">T&Iacute;NH NĂNG - ƯU ĐIỂM - Tiết kiệm điện so với c&aacute;c loại b&oacute;ng chiếu s&aacute;ng kh&aacute;c.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;- Vật liệu sử dụng l&agrave; nh&ocirc;m sơn tĩnh điện thiết kế hiện đại. </span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- Thiết kế của đ&egrave;n dễ lắp đặt, dễ sử dụng, giảm thiểu thời gian thi c&ocirc;ng </span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- Tuổi thọ đ&egrave;n cao, th&acirc;n thiện với m&ocirc;i trường, kh&ocirc;ng chứa chất độc hại, c&oacute; thể t&aacute;i chế.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Đ&egrave;n tường LED l&agrave; loại đ&egrave;n tường trang tr&iacute; thường được sử dụng trong chiếu s&aacute;ng trang tr&iacute; tại c&aacute;c qu&aacute;n c&agrave; ph&ecirc;, khu đọc s&aacute;ch, hay c&ograve;n c&oacute; thể sử dụng l&agrave;m đ&egrave;n ngủ. Đ&egrave;n trang tr&iacute; LONstar Chuy&ecirc;n cung cấp c&aacute;c loại đ&egrave;n led trang tr&iacute;, đ&egrave;n ngủ để b&agrave;n, đ&egrave;n led d&acirc;n dụng, đ&egrave;n thả, đ&egrave;n d&acirc;y led,... tiết kiệm 70% điện năng so với c&aacute;c loai đ&egrave;n th&ocirc;ng thường </span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Bảo h&agrave;nh l&ecirc;n đến 12 th&aacute;ng</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/den-gan-tuong-nordic-dgt-009-1.jpg\" style=\"height:776px; width:750px\" /></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 'đèn, đèn tường', 'Đèn gắn tường Nordic DGT 009'),
(35, 'Đèn gắn tường pha lê trang trí DGT 010', 2, 2, '/storage/images_product/JSeggbmYxf_den-gan-tuong-pha-le-trang-tri-dgt-010-1.jpg', 2000000, 4000000, 20, 5, '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Sản Phẩm Đước Đ&oacute;ng G&oacute;i Trong Hộp Xốp Cẩn Thận, Qu&yacute; Kh&aacute;ch Ho&agrave;n To&agrave;n C&oacute; Thể Y&ecirc;n T&acirc;m Trong Qu&aacute; Tr&igrave;nh Vận Chuyển</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;</span><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Nếu Bạn L&agrave; Người Kh&ocirc;ng Y&ecirc;u Th&iacute;ch Sự Cầu K&igrave; Nhưng Th&iacute;ch Sự Tinh Tế Th&igrave; Đ&acirc;y Ch&iacute;nh L&agrave; Mẫu Đ&egrave;n Ch&ugrave;m Pha L&ecirc; L&yacute; Tưởng D&agrave;nh Cho Kh&ocirc;ng Gian Nh&agrave; Bạn</span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">T&iacute;nh nghệ thuật v&agrave; tinh tế: Họa tiết tr&ecirc;n khung đ&egrave;n được khắc họa tinh tế tạo ra điểm ấn tượng cho kh&ocirc;ng gian.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Khung đ&egrave;n:Khung hợp kim sơn tĩnh điện bền, đẹp. Khung đ&egrave;n được kh&eacute;o l&eacute;o mạ một lớp v&agrave;ng 24k gi&uacute;p l&agrave;m tăng độ sang trọng của to&agrave;n thể chiếc đ&egrave;n ch&ugrave;m.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&Aacute;nh s&aacute;ng: &Aacute;nh s&aacute;ng v&agrave;ng nhẹ nh&agrave;ng, ấm &aacute;p. Sử dụng &aacute;nh s&aacute;ng m&agrave;u v&agrave;ng sẽ tạo ra được kh&ocirc;ng gian ấm c&uacute;ng v&agrave; dễ chịu hơn.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">B&oacute;ng đ&egrave;n cao cấp c&oacute; tuổi thọ trung b&igrave;nh cao. th&acirc;n đ&egrave;n bằng hợp kim mạ v&agrave;ng 24k bền m&agrave;u với thời gian</span></span></span></p>\r\n\r\n<div style=\"border-bottom:solid windowtext 1.0pt; padding:0cm 0cm 1.0pt 0cm\">\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">*K&iacute;ch thước sản phẩm: chiều rộng: 740mm. Chiều cao: 1020mm</span></span></span></span></p>\r\n\r\n<p><span style=\"background-color:white\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\"><span style=\"font-size:14px\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/den-gan-tuong-pha-le-trang-tri-dgt-010-1.jpg\" style=\"height:931px; width:750px\" /></span></span></span></span></span></span></p>\r\n</div>', 'đèn, đèn tường', 'Đèn gắn tường pha lê trang trí DGT 010'),
(36, 'Đèn gắn tường hiện đại DGT 011', 2, 2, '/storage/images_product/TwKwK7uX6i_den-gan-tuong-hien-dai-dgt-011.jpg', 500000, 2000000, 20, 10, '<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Đ&egrave;n ch&ugrave;m trang tr&iacute; c&oacute; kiểu c&aacute;ch mỹ thuật, thanh lịch v&agrave; độc đ&aacute;o tạo ra phong th&aacute;i b&agrave;i tr&iacute; cho căn nh&agrave;, bừng s&aacute;ng kh&ocirc;ng gian bằng sự sang trọng l&ocirc;i cuốn của n&oacute;. Nếu bạn l&agrave; người kh&ocirc;ng y&ecirc;u th&iacute;ch sự cầu k&igrave; nhưng th&iacute;ch sự tinh tế th&igrave; đ&acirc;y ch&iacute;nh l&agrave; mẫu đ&egrave;n ch&ugrave;m l&yacute; tưởng d&agrave;nh cho kh&ocirc;ng gian nh&agrave; bạn</span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">T&iacute;nh nghệ thuật v&agrave; tinh tế: Họa tiết tr&ecirc;n khung đ&egrave;n được khắc họa tinh tế tạo ra điểm ấn tượng cho kh&ocirc;ng gian.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Khung đ&egrave;n:Khung hợp kim sơn tĩnh điện bền, đẹp. Khung đ&egrave;n được kh&eacute;o l&eacute;o mạ một lớp v&agrave;ng 24k gi&uacute;p l&agrave;m tăng độ sang trọng của to&agrave;n thể chiếc đ&egrave;n ch&ugrave;m.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&Aacute;nh s&aacute;ng: &Aacute;nh s&aacute;ng v&agrave;ng nhẹ nh&agrave;ng, ấm &aacute;p. Sử dụng &aacute;nh s&aacute;ng m&agrave;u v&agrave;ng sẽ tạo ra được kh&ocirc;ng gian ấm c&uacute;ng v&agrave; dễ chịu hơn.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">B&oacute;ng đ&egrave;n cao cấp c&oacute; tuổi thọ trung b&igrave;nh cao. th&acirc;n đ&egrave;n bằng hợp kim mạ v&agrave;ng 24k bền m&agrave;u với thời gian</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">*K&iacute;ch thước sản phẩm: chiều rộng: 740mm. Chiều cao: 1020mm</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/den-gan-tuong-hien-dai-dgt-011.jpg\" style=\"height:920px; width:750px\" /></span></span></p>', 'đèn, đèn tường', 'Đèn gắn tường hiện đại DGT 011'),
(37, 'Đèn gắn tường nhập khẩu DGT 012', 2, 2, '/storage/images_product/eyWB6a8zFF_den-gan-tuong-nhap-khau-dgt-012-3.jpg', 2000000, 4000000, 50, 20, '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Ứng dụng: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ăn, ph&ograve;ng ngủ, nh&agrave; h&agrave;ng, sảnh, kh&aacute;ch sạn. đ&egrave;n n&agrave;y kh&aacute; đa năng khi n&oacute; c&oacute; thể sử dụng ở mọi kh&ocirc;ng gian. Tuy nhi&ecirc;n để lựa chọn loại đ&egrave;n th&iacute;ch hợp bạn cần ch&uacute; &yacute; tới m&agrave;u sắc, kiểu d&aacute;ng, k&iacute;ch thước ph&ugrave; hợp với kh&ocirc;ng gian</span></span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">K&iacute;ch thước sản phẩm: D95xH65 (cm) Ứng dụng: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ăn, ph&ograve;ng ngủ, nh&agrave; h&agrave;ng, sảnh, kh&aacute;ch sạn,ại đ&egrave;n n&agrave;y kh&aacute; đa năng khi n&oacute; c&oacute; thể sử dụng ở mọi kh&ocirc;ng gian. Tuy nhi&ecirc;n để lựa chọn loại đ&egrave;n th&iacute;ch hợp bạn cần ch&uacute; &yacute; tới m&agrave;u sắc, kiểu d&aacute;ng, k&iacute;ch thước ph&ugrave; hợp với kh&ocirc;ng gian. Tổng thể thiết kế của đ&egrave;n như một kiệt t&aacute;c nghệ thuật ph&aacute;t s&aacute;ng biến mọi kh&ocirc;ng gian trở n&ecirc;n đẳng cấp, qu&yacute; ph&aacute;i nhờ hiệu ứng t&aacute;n sắc của pha l&ecirc; v&agrave; thủy tinh cao cấp. Kh&ocirc;ng những vậy, c&aacute;c d&acirc;y x&iacute;ch pha l&ecirc; được treo đối xứng quanh tay v&agrave; chao đ&egrave;n đem đến vẻ mềm mại, nhẹ nh&agrave;ng cho thiết bị chiếu s&aacute;ng th&ocirc;ng thường tưởng chừng như kh&ocirc; khan, nh&agrave;m ch&aacute;n. Đ&egrave;n ch&ugrave;m t&ocirc;n l&ecirc;n sự đẹp đẽ nội thất b&ecirc;n trong gian ph&ograve;ng gia đ&igrave;nh bạn. </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/den-gan-tuong-nhap-khau-dgt-012-7.jpg\" style=\"height:1004px; width:750px\" /></span></span></span></p>', 'đèn, đèn tường', 'Đèn gắn tường nhập khẩu DGT 012'),
(38, 'Gương treo tường trang trí nội thất GS 046', 4, 1, '/storage/images_product/BzBpsq2AqZ_guong-treo-tuong-trang-tri-noi-that-gs-046-1.jpg', 1900000, 3000000, 30, 10, '<p><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\">D</span></span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\">&ograve;ng sản phẩm Nghệ thuật Trang tr&iacute; nội thất Sang trọng, Bắt mắt, l&agrave; xu hướng Mới.&nbsp; Đa dạng mẫu m&atilde;, ph&ugrave; hợp với kh&ocirc;ng gian hiện đại, sang trọng, hay cổ điển</span></span></span></p>', '<p dir=\"ltr\"><span style=\"font-size:14px\"><em><strong>Gương treo tường trang tr&iacute; nội thất GS 046</strong></em>&nbsp;kh&ocirc;ng chỉ gi&uacute;p bạn thực hiện c&aacute;c bước makeup chuy&ecirc;n nghiệp &ldquo;ảo thuật gia&rdquo; trang điểm m&agrave; n&oacute; c&ograve;n l&agrave; vật trang tr&iacute; cho kh&ocirc;ng gian th&ecirc;m phần trang nh&atilde;. Điều đ&oacute; sẽ tạo n&ecirc;n điểm nhấn độc đ&aacute;o v&agrave; thu h&uacute;t đối với căn ph&ograve;ng của bạn.</span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:14px\">H&atilde;y đến để thỏa sức lựa chọn những mẫu gương nghệ thuật đẹp ứng &yacute; m&igrave;nh, ph&ugrave; hợp cho nhu cầu sử dụng.Gia B&igrave;nh chuy&ecirc;n cung cấp c&aacute;c loại gương nội thất cao cấp mang đẳng cấp quốc tế, mẫu m&atilde; đa dạng, kiểu d&aacute;ng phong ph&uacute; lu&ocirc;n được cập nhật để gi&uacute;p bạn bắt kịp xu hướng mới nhất. Nếu bạn c&ograve;n đang ph&acirc;n v&acirc;n kh&ocirc;ng biết chọn loại gương nghệ thuật n&agrave;o cho nh&agrave; m&igrave;nh cho do c&oacute; qu&aacute; nhiều mẫu m&atilde;, h&atilde;y để Gia B&igrave;nh gi&uacute;p bạn. Với đội ngũ chuy&ecirc;n gia nội thất nhiệt t&igrave;nh, được đ&agrave;o tạo chuy&ecirc;n s&acirc;u của ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn trong việc chọn lựa được sản phẩm ưng &yacute; nhất.</span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:14px\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/guong-treo-tuong-trang-tri-noi-that-gs-046-4.jpg\" style=\"height:904px; width:750px\" /></span></p>', 'gương, gương decor', 'Gương treo tường trang trí nội thất GS 046'),
(39, 'Gương trang trí nội thất hiện đại GS 047', 4, 1, '/storage/images_product/4NuikHdRyk_guong-trang-tri-noi-that-hien-dai-gs-047-1.jpg', 2000000, 5000000, 20, 5, '<p><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\">Sản Phẩm Đước Đ&oacute;ng G&oacute;i Trong Hộp Xốp Cẩn Thận, Qu&yacute; Kh&aacute;ch Ho&agrave;n To&agrave;n C&oacute; Thể Y&ecirc;n T&acirc;m Trong Qu&aacute; Tr&igrave;nh Vận Chuyển</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">&nbsp;Nếu Bạn L&agrave; Người Kh&ocirc;ng Y&ecirc;u Th&iacute;ch Sự Cầu K&igrave; Nhưng Th&iacute;ch Sự Tinh Tế Th&igrave; Đ&acirc;y Ch&iacute;nh L&agrave; Mẫu Đ&egrave;n Ch&ugrave;m Pha L&ecirc; L&yacute; Tưởng D&agrave;nh Cho Kh&ocirc;ng Gian Nh&agrave; Bạn</span></span></p>', '<p><span style=\"font-size:14px\">Gương trang tr&iacute; nội thất hiện đại GS 047</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&ndash; Đường K&iacute;nh 60cm (K&Egrave;M V&Iacute;T TREO)</span></p>\r\n\r\n<p><span style=\"font-size:14px\">✔️ KHUYẾN KH&Iacute;CH KH&Aacute;CH XEM H&Agrave;NG TRƯỚC KHI THANH TO&Aacute;N.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp;✔️ K&iacute;ch thước: D60 (cm)</span></p>\r\n\r\n<p><span style=\"font-size:14px\">✔️ Chất liệu:Ph&ocirc;i gương Việt Nhật.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">✔️ Trọn bộ sản phẩm bao gồm gương tr&ograve;n treo tường, d&acirc;y da v&agrave; v&iacute;t treo</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;</span></p>\r\n\r\n<p><span style=\"font-size:14px\">ỨNG DỤNG:</span></p>\r\n\r\n<p><span style=\"font-size:14px\">✔️ Gương Tr&ograve;n Treo Tường D&acirc;y Da c&oacute; thể sử dụng trong kh&ocirc;ng gian ph&ograve;ng ngủ, ph&ograve;ng tắm hoặc trang tr&iacute; nội thất gi&uacute;p kh&ocirc;ng gian th&ecirc;m phần sang trọng, tinh tế.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/guong-trang-tri-noi-that-hien-dai-gs-047-3.jpg\" style=\"height:1065px; width:750px\" /></span></p>', 'gương, gương decor', 'Gương trang trí nội thất hiện đại GS 047'),
(40, 'Gương decor hình khối trang trí GS 057', 4, 1, '/storage/images_product/OaIim1oz7Q_guong-decor-hinh-khoi-trang-tri-gs-057.jpg', 3000000, 7000000, 20, 7, '<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\">Ứng dụng: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ăn, ph&ograve;ng ngủ, nh&agrave; h&agrave;ng, sảnh, kh&aacute;ch sạn. đ&egrave;n n&agrave;y kh&aacute; đa năng khi n&oacute; c&oacute; thể sử dụng ở mọi kh&ocirc;ng gian. Tuy nhi&ecirc;n để lựa chọn th&iacute;ch hợp bạn cần ch&uacute; &yacute; tới m&agrave;u sắc, kiểu d&aacute;ng, k&iacute;ch thước ph&ugrave; hợp với kh&ocirc;ng gian</span></span></span></p>', '<p><span style=\"font-size:14px\">Sản ph&acirc;̉m được thi&ecirc;́t k&ecirc;́ với 2 kích thước:</span></p>\r\n\r\n<p><span style=\"font-size:14px\">D70cm:&nbsp;Kích thước t&ocirc;̉ng th&ecirc;̉ 70cm x 70cm</span></p>\r\n\r\n<p><span style=\"font-size:14px\">D100cm: Kích thước t&ocirc;̉ng th&ecirc;̉ 100cm x 100cm</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Vi&ecirc;̀n: Kim loại sơn tĩnh đi&ecirc;̣n</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Màu sắc: Vàng s&acirc;m banh (Champage Gold)</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Xu&acirc;́t xứ: Đài Loan</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Tính năng: Gương treo tường trang trí decor phòng ngủ, phòng khách, spa, th&acirc;̉m mỹ vi&ecirc;̣n, khách sạn.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/guong-decor-hinh-khoi-trang-tri-gs-057.jpg\" style=\"height:750px; width:750px\" /></span></p>', 'gương, gương decor', 'Gương decor hình khối trang trí GS 057');
INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_image`, `product_price_buy`, `product_price_sell`, `product_amount`, `product_sale`, `product_attribute`, `product_detail`, `product_keyword`, `product_description`) VALUES
(41, 'Gương decor lá Ginko GS 065', 4, 2, '/storage/images_product/osXS873Bgu_guong-decor-la-ginko-gs-065-1.jpg', 3000000, 6000000, 20, 10, '<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\">Sản Phẩm Đước Đ&oacute;ng G&oacute;i Trong Hộp Xốp Cẩn Thận, Qu&yacute; Kh&aacute;ch Ho&agrave;n To&agrave;n C&oacute; Thể Y&ecirc;n T&acirc;m Trong Qu&aacute; Tr&igrave;nh Vận Chuyển</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">&nbsp;Nếu Bạn L&agrave; Người Kh&ocirc;ng Y&ecirc;u Th&iacute;ch Sự Cầu K&igrave; Nhưng Th&iacute;ch Sự Tinh Tế Th&igrave; Đ&acirc;y Ch&iacute;nh L&agrave; Mẫu Đ&egrave;n Ch&ugrave;m Pha L&ecirc; L&yacute; Tưởng D&agrave;nh Cho Kh&ocirc;ng Gian Nh&agrave; Bạn</span></span></p>', '<p><span style=\"font-size:14px\">M&Ocirc; TẢ SẢN PHẨM</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Gương decor l&aacute; Ginko GS 065</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&ndash; Đường K&iacute;nh 60cm (K&Egrave;M V&Iacute;T TREO)</span></p>\r\n\r\n<p><span style=\"font-size:14px\">✔️ KHUYẾN KH&Iacute;CH KH&Aacute;CH XEM H&Agrave;NG TRƯỚC KHI THANH TO&Aacute;N.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp;✔️ K&iacute;ch thước: D60 (cm)</span></p>\r\n\r\n<p><span style=\"font-size:14px\">✔️ Chất liệu:Ph&ocirc;i gương Việt Nhật.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">✔️ Trọn bộ sản phẩm bao gồm gương tr&ograve;n treo tường, d&acirc;y da v&agrave; v&iacute;t treo</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;</span></p>\r\n\r\n<p><span style=\"font-size:14px\">ỨNG DỤNG:</span></p>\r\n\r\n<p><span style=\"font-size:14px\">✔️ Gương Tr&ograve;n Treo Tường D&acirc;y Da c&oacute; thể sử dụng trong kh&ocirc;ng gian ph&ograve;ng ngủ, ph&ograve;ng tắm hoặc trang tr&iacute; nội thất gi&uacute;p kh&ocirc;ng gian th&ecirc;m phần sang trọng, tinh tế.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/guong-decor-la-ginko-gs-065-1.jpg\" style=\"height:890px; width:750px\" /></span></p>', 'gương, gương decor', 'Gương decor lá Ginko GS 065'),
(42, 'Gương decor hiện đại trang trí GS 063', 4, 1, '/storage/images_product/z0HUnuBuGM_guong-decor-hien-dai-trang-tri-gs-063-1.jpg', 2000000, 4000000, 10, 10, '<p><span style=\"font-size:14px\">Ng&agrave;y nay, gương trang tr&iacute; bắt đầu trở th&agrave;nh một sản phẩm nổi bật trong trang tr&iacute; nội thất, bởi t&iacute;nh biến h&oacute;a linh hoạt như tắc k&egrave; hoa v&agrave; dễ d&agrave;ng h&ograve;a hợp với phối cảnh. D&ugrave; đ&oacute;ng vai tr&ograve; l&agrave; vật trung t&acirc;m, nhưng gương trang tr&iacute; thường được d&ugrave;ng để gắn kết c&aacute;c trang tr&iacute; trong một căn ph&ograve;ng m&agrave; vẫn kh&ocirc;ng chiếm qu&aacute; nhiều kh&ocirc;ng gian.</span></p>', '<p><span style=\"font-size:14px\">&ndash; Chất liệu: Ph&ocirc;i Gương nhập khẩu từ Bỉ chống mờ trong m&ocirc;i trường ẩm ướt v&agrave; cho h&igrave;nh ảnh ch&acirc;n thực. Viền gương được viền đ&egrave;n LED sang trọng đẳng cấp gi&uacute;p bạn xinh đẹp lạ thường.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&ndash; K&iacute;ch thước: Đường k&iacute;nh gương 50 &ndash; 60cm. Độ d&agrave;y gương 20mm.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&ndash; M&agrave;u sắc đ&egrave;n led: &Aacute;nh s&aacute;ng trắng &ndash; C&ocirc;ng năng: Gương soi treo tường bằng d&acirc;y da được sử dụng phổ biến tại ph&ograve;ng kh&aacute;ch ph&ograve;ng tắm v&agrave; spa salon&hellip;Ngo&agrave;i chức năng soi gương c&ograve;n l&agrave; sản phẩm trang tr&iacute; độc đ&aacute;o v&agrave; sang trọng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&ndash; Trọn bộ sản phẩm bao gồm gương v&agrave; m&oacute;c treo</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&ndash; Thương hiệu: Decor Gia B&igrave;nh 🆘 LƯU &Yacute;🆘</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&ndash; Nếu bạn nhận h&agrave;ng chất lượng k&eacute;m kh&ocirc;ng giống m&ocirc; tả shop ho&agrave;n tiền ngay 100% cho bạn.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&ndash; Nếu sản phẩm bị lỗi do vận chuyển shop đổi sản phẩm mới miễn ph&iacute; cho bạn.</span></p>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/guong-decor-hien-dai-trang-tri-gs-063-1.jpg\" style=\"height:750px; width:750px\" /></p>', 'gương, gương decor', 'Gương decor hiện đại trang trí GS 063'),
(43, 'Gương nhập khẩu trang trí GS 066', 4, 2, '/storage/images_product/K1OtqQE2Lq_guong-nhap-khau-trang-tri-gs-066-10.jpg', 1000000, 4000000, 40, 10, '<p><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Gương Khung Th&eacute;p Treo Tường Decor, Độ Ho&agrave;n Thiện Tuyệt Đối, M&agrave;u Sơn S&aacute;ng B&oacute;ng. Cạnh Viền Xung Quanh Gương Được Bao Bọc Khung Th&eacute;p, Lớp Sơn Tĩnh Điện Độ B&aacute;m Chắc Chắn Kh&ocirc;ng Bị Bong Tr&oacute;c. Thiết Kế Hiện Đại, Nhẹ Nh&agrave;ng, Tinh Tế. Gương Treo Tường Decor L&agrave; Sự Lựa Chọn H&agrave;ng Đầu Cho Những Kh&ocirc;ng Gian Nội Thất Hiện Đại</span></span></p>', '<p>Cạnh viền xung quanh gương được bọc bằng d&acirc;y da tổng hợp cao cấp nhập khẩu H&agrave;n Quốc.</p>\r\n\r\n<p>Đai d&acirc;y da v&agrave; d&acirc;y treo da sử dụng những đường may tỉ mỉ tạo n&ecirc;n n&eacute;t sang trọng cho chiếc gương. Thiết kế hiện đại, nhẹ nh&agrave;ng, tinh tế. Gương d&acirc;y da treo tường l&agrave; sự lựa chọn h&agrave;ng đầu cho những kh&ocirc;ng gian nội thất hiện đại.</p>\r\n\r\n<p>✔ K&iacute;ch thước: Đường k&iacute;nh 40cm - 50cm</p>\r\n\r\n<p>✔ M&agrave;u sắc: Da đen, n&acirc;u, v&agrave;ng da b&ograve;, trắng</p>\r\n\r\n<p>✔ Bao gồm đầy đủ ốc v&iacute;t, trụ treo</p>\r\n\r\n<p>✔ Da c&ocirc;ng nghiệp cao cấp</p>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/guong-nhap-khau-trang-tri-gs-066-13.jpg\" style=\"height:507px; width:750px\" /></p>', 'gương, gương decor', 'Gương nhập khẩu trang trí GS 066'),
(44, 'Bộ tranh Bướm tráng gương TTGA 018', 5, 1, '/storage/images_product/XcpNjMzzG1_bo-tranh-buom-trang-guong-ttga-018.jpg', 4000000, 10000000, 8, 10, '<p><span style=\"font-size:14px\"><strong>Tranh treo tường tr&aacute;ng gương</strong>&nbsp;l&agrave; loại tranh được phủ l&ecirc;n tr&ecirc;n bề mặt một lớp Mica pha l&ecirc;, gi&uacute;p mang lại độ b&oacute;ng vừa phải cho ảnh tạo cảm gi&aacute;c như soi gương được, khi chạm v&agrave;o c&oacute; cảm gi&aacute;c mịn tay hơn tr&ocirc;ng rất sang trọng v&agrave; đẹp. Tranh tr&aacute;ng gương vừa mang lại sự b&oacute;ng bẩy vừa thuận tiện trong việc lau ch&ugrave;i.</span></p>', '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,sans-serif\">✔</span><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"> CHẤT LIỆU + Tranh c&oacute; 2 chất liệu c&aacute;n pvc mica b&oacute;ng gương độ d&agrave;y 7mm hoặc lụa mờ theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch + K&iacute;ch thước khung 2x2cm composite đen, trắng, v&agrave;ng v&acirc;n gỗ&hellip; t&ugrave;y theo sản phẩm + Tranh nhẹ treo bằng đinh chuy&ecirc;n dụng gửi k&egrave;m dễ d&agrave;ng. +Tranh sử dụng trang tr&iacute; ph&ograve;ng kh&aacute;ch, nh&agrave; ăn ph&ograve;ng ngủ , l&agrave;m việc&hellip;kh&ocirc;ng lo phai, bạc m&agrave;u + Khung gỗ c&aacute;c loại, chắc chắn,kh&ocirc;ng ẩm mốc, mối mọt, cong v&ecirc;nh. Kh&aacute;ch h&agrave;ng y&ecirc;n t&acirc;m sử dụng trong nhiều năm. + Tặng k&egrave;m đầy đủ phụ kiện đinh 3 ch&acirc;n đ&oacute;ng tường chuy&ecirc;n dụng, dễ d&agrave;ng treo tranh chỉ với 1 chiếc b&uacute;a nhỏ. </span><span style=\"font-family:&quot;Segoe UI Symbol&quot;,sans-serif\">✔</span><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\">CAM KẾT: + Tranh được gia c&ocirc;ng mới ho&agrave;n to&agrave;n kh&ocirc;ng tồn kho cũ + Cam kết sản phẩm y h&igrave;nh + Tư vấn nhiệt t&igrave;nh, chu đ&aacute;o + Gi&aacute; tốt nhất tr&ecirc;n thị trường + Nhận h&agrave;ng v&agrave; thanh to&aacute;n tại nh&agrave; + Hỗ trợ đổi trả nếu vỡ, g&atilde;y do vận chuyển</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/bo-tranh-buom-trang-guong-ttga-018-4.jpg\" style=\"height:821px; width:750px\" /></span></span></span></p>', 'tranh, tranh decor', 'Bộ tranh Bướm tráng gương TTGA 018'),
(45, 'Tranh decor tráng gương trang trí TTGA 032', 5, 1, '/storage/images_product/ny8eOnFKz8_tranh-decor-trang-guong-trang-tri-ttga-032.jpg', 3000000, 5000000, 40, 10, '<p><span style=\"font-size:14px\"><strong><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Tranh treo tường tr&aacute;ng gương</span></strong><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">&nbsp;l&agrave; loại tranh được phủ l&ecirc;n tr&ecirc;n bề mặt một lớp Mica pha l&ecirc;, gi&uacute;p mang lại độ b&oacute;ng vừa phải cho ảnh tạo cảm gi&aacute;c như soi gương được, khi chạm v&agrave;o c&oacute; cảm gi&aacute;c mịn tay hơn tr&ocirc;ng rất sang trọng v&agrave; đẹp. Tranh tr&aacute;ng gương vừa mang lại sự b&oacute;ng bẩy vừa thuận tiện trong việc lau ch&ugrave;i.</span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\">K&iacute;ch thước : 1 Bộ gồm 3 bức: + 30x40x3 (mỗi bức k&iacute;ch thước 30x40cm) + 40x60x3 (mỗi bức k&iacute;ch thước 40x60cm) </span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\">Chiều d&agrave;y: 10mm </span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\">Chất liệu : Tranh in UV 2 lớp c&ocirc;ng nghệ Nhật Bản mới nhất l&ecirc;n vải canvas ( vải canvas trơn- kết hợp PVC) căng l&ecirc;n bề mặt khung gỗ th&ocirc;ng </span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\">Sản phẩm k&egrave;m sẵn đinh, được bắn m&oacute;c treo v&agrave; c&acirc;n chỉnh trước khi gửi, kh&aacute;ch chỉ cần về đ&oacute;ng đinh v&agrave;o tường rồi treo l&ecirc;n, treo lắp dễ d&agrave;ng </span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\">M&agrave;u sang tươi s&aacute;ng, ch&acirc;n thật, kh&ocirc;ng bay m&agrave;u </span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\">Độ b&ecirc;n l&ecirc;n tới 15 năm trong điều kiện tốt </span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\">C&aacute;ch vệ sinh: D&ugrave;ng khăn lau, tranh in tr&ecirc;n chất liệu vải canvas ( vải canvas trơn- kết hợp PVC) tăng khả năng chống nước v&agrave; độ bền của vải n&ecirc;n tranh vệ sinh rất dễ d&agrave;ng </span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\">C&aacute;ch thức đ&oacute;ng g&oacute;i: Shop đ&oacute;ng g&oacute;i rất kĩ c&agrave;ng gồm bọt kh&iacute; chống sốc, ngăn giữa c&aacute;c bức v&agrave; bọc hộp cứng b&ecirc;n ngo&agrave;i</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/tranh-decor-trang-guong-trang-tri-ttga-032.jpg\" style=\"height:750px; width:750px\" /></span></span></p>', 'tranh, tranh decor', 'Tranh decor tráng gương trang trí TTGA 032'),
(46, 'Tranh nghệ thuật tráng gương TTGA 030', 5, 1, '/storage/images_product/S0AtT8vssL_tranh-nghe-thuat-trang-guong-ttga-030.jpg', 3000000, 6000000, 5, 10, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\">D</span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\">&ograve;ng sản phẩm Nghệ thuật Trang tr&iacute; nội thất Sang trọng, Bắt mắt, l&agrave; xu hướng Mới.&nbsp; Đa dạng mẫu m&atilde;, ph&ugrave; hợp với kh&ocirc;ng gian hiện đại, sang trọng, hay cổ điển....</span></span></span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\">✔ CHẤT LIỆU </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\">+ Tranh c&oacute; 2 chất liệu c&aacute;n pvc mica b&oacute;ng gương độ d&agrave;y 7mm hoặc lụa mờ theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\">+ K&iacute;ch thước khung 2x2cm composite đen, trắng, v&agrave;ng v&acirc;n gỗ&hellip; t&ugrave;y theo sản phẩm </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\">+ Tranh nhẹ treo bằng đinh chuy&ecirc;n dụng gửi k&egrave;m dễ d&agrave;ng. </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\">+Tranh sử dụng trang tr&iacute; ph&ograve;ng kh&aacute;ch, nh&agrave; ăn ph&ograve;ng ngủ , l&agrave;m việc&hellip;kh&ocirc;ng lo phai, bạc m&agrave;u </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\">+ Khung gỗ c&aacute;c loại, chắc chắn,kh&ocirc;ng ẩm mốc, mối mọt, cong v&ecirc;nh. Kh&aacute;ch h&agrave;ng y&ecirc;n t&acirc;m sử dụng trong nhiều năm. </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\">+ Tặng k&egrave;m đầy đủ phụ kiện đinh 3 ch&acirc;n đ&oacute;ng tường chuy&ecirc;n dụng, dễ d&agrave;ng treo tranh chỉ với 1 chiếc b&uacute;a nhỏ. </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\">✔CAM KẾT: </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\">+ Tranh được gia c&ocirc;ng mới ho&agrave;n to&agrave;n kh&ocirc;ng tồn kho cũ </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\">+ Cam kết sản phẩm y h&igrave;nh </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\">+ Tư vấn nhiệt t&igrave;nh, chu đ&aacute;o </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\">+ Gi&aacute; tốt nhất tr&ecirc;n thị trường </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/tranh-nghe-thuat-trang-guong-ttga-030.jpg\" style=\"height:973px; width:750px\" /></span></span></span></p>', 'tranh, tranh decor', 'Tranh nghệ thuật tráng gương TTGA 030'),
(47, 'Tranh decor tráng gương TTGA 029', 5, 1, '/storage/images_product/58rFhuwbjf_tranh-decor-trang-guong-ttga-029.jpg', 4000000, 6000000, 10, 20, '<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\">Ứng dụng: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ăn, ph&ograve;ng ngủ, nh&agrave; h&agrave;ng, sảnh, kh&aacute;ch sạn. đ&egrave;n n&agrave;y kh&aacute; đa năng khi n&oacute; c&oacute; thể sử dụng ở mọi kh&ocirc;ng gian. Tuy nhi&ecirc;n để lựa chọn loại đ&egrave;n th&iacute;ch hợp bạn cần ch&uacute; &yacute; tới m&agrave;u sắc, kiểu d&aacute;ng, k&iacute;ch thước ph&ugrave; hợp với kh&ocirc;ng gian</span></span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,sans-serif\">✔</span><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"> CHẤT LIỆU + Tranh c&oacute; 2 chất liệu c&aacute;n pvc mica b&oacute;ng gương độ d&agrave;y 7mm hoặc lụa mờ theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch + K&iacute;ch thước khung 2x2cm composite đen, trắng, v&agrave;ng v&acirc;n gỗ&hellip; t&ugrave;y theo sản phẩm + Tranh nhẹ treo bằng đinh chuy&ecirc;n dụng gửi k&egrave;m dễ d&agrave;ng. +Tranh sử dụng trang tr&iacute; ph&ograve;ng kh&aacute;ch, nh&agrave; ăn ph&ograve;ng ngủ , l&agrave;m việc&hellip;kh&ocirc;ng lo phai, bạc m&agrave;u + Khung gỗ c&aacute;c loại, chắc chắn,kh&ocirc;ng ẩm mốc, mối mọt, cong v&ecirc;nh. Kh&aacute;ch h&agrave;ng y&ecirc;n t&acirc;m sử dụng trong nhiều năm. + Tặng k&egrave;m đầy đủ phụ kiện đinh 3 ch&acirc;n đ&oacute;ng tường chuy&ecirc;n dụng, dễ d&agrave;ng treo tranh chỉ với 1 chiếc b&uacute;a nhỏ. </span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,sans-serif\">✔</span><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\">CAM KẾT: + Tranh được gia c&ocirc;ng mới ho&agrave;n to&agrave;n kh&ocirc;ng tồn kho cũ + Cam kết sản phẩm y h&igrave;nh + Tư vấn nhiệt t&igrave;nh, chu đ&aacute;o + Gi&aacute; tốt nhất tr&ecirc;n thị trường + Nhận h&agrave;ng v&agrave; thanh to&aacute;n tại nh&agrave; + Hỗ trợ đổi trả nếu vỡ, g&atilde;y do vận chuyển</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/tranh-decor-trang-guong-ttga-029-1.jpg\" style=\"height:760px; width:750px\" /></span></span></span></p>', 'tranh, tranh decor', 'Tranh decor tráng gương TTGA 029'),
(48, 'Tranh bộ tráng gương nhập khẩu TTGA 025', 5, 1, '/storage/images_product/ceNr9H5n9L_tranh-bo-trang-guong-nhap-khau-ttga-025-1.jpg', 4000000, 8000000, 7, 15, '<p>D&ograve;ng Sản Phẩm Nghệ Thuật Trang Tr&iacute; Nội Thất Sang Trọng, Bắt Mắt, L&agrave; Xu Hướng Mới. &nbsp;Đa Dạng Mẫu M&atilde;, Ph&ugrave; Hợp Với Kh&ocirc;ng Gian Hiện Đại, Sang Trọng,....</p>', '<p>✔ CHẤT LIỆU</p>\r\n\r\n<p>+ Tranh c&oacute; 2 chất liệu c&aacute;n pvc mica b&oacute;ng gương độ d&agrave;y 7mm hoặc lụa mờ theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch</p>\r\n\r\n<p>+ K&iacute;ch thước khung 2x2cm composite đen, trắng, v&agrave;ng v&acirc;n gỗ&hellip; t&ugrave;y theo sản phẩm</p>\r\n\r\n<p>+ Tranh nhẹ treo bằng đinh chuy&ecirc;n dụng gửi k&egrave;m dễ d&agrave;ng.</p>\r\n\r\n<p>+Tranh sử dụng trang tr&iacute; ph&ograve;ng kh&aacute;ch, nh&agrave; ăn ph&ograve;ng ngủ , l&agrave;m việc&hellip;kh&ocirc;ng lo phai, bạc m&agrave;u</p>\r\n\r\n<p>+ Khung gỗ c&aacute;c loại, chắc chắn,kh&ocirc;ng ẩm mốc, mối mọt, cong v&ecirc;nh. Kh&aacute;ch h&agrave;ng y&ecirc;n t&acirc;m sử dụng trong nhiều năm.</p>\r\n\r\n<p>+ Tặng k&egrave;m đầy đủ phụ kiện đinh 3 ch&acirc;n đ&oacute;ng tường chuy&ecirc;n dụng, dễ d&agrave;ng treo tranh chỉ với 1 chiếc b&uacute;a nhỏ.</p>\r\n\r\n<p>✔CAM KẾT:</p>\r\n\r\n<p>+ Tranh được gia c&ocirc;ng mới ho&agrave;n to&agrave;n kh&ocirc;ng tồn kho cũ</p>\r\n\r\n<p>+ Cam kết sản phẩm y h&igrave;nh</p>\r\n\r\n<p>+ Tư vấn nhiệt t&igrave;nh, chu đ&aacute;o</p>\r\n\r\n<p>+ Gi&aacute; tốt nhất tr&ecirc;n thị trường</p>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/tranh-bo-trang-guong-nhap-khau-ttga-025-5.jpg\" style=\"height:769px; width:750px\" /></p>', 'tranh, tranh decor', 'Tranh bộ tráng gương nhập khẩu TTGA 025'),
(49, 'Tranh decor trang gương Tròn TTGA 015', 5, 1, '/storage/images_product/TxciHXZ87N_tranh-decor-trang-guong-tron-ttga-015-1.jpg', 2000000, 5000000, 33, 15, '<p><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\">Sản Phẩm Đước Đ&oacute;ng G&oacute;i Trong Hộp Xốp Cẩn Thận, Qu&yacute; Kh&aacute;ch Ho&agrave;n To&agrave;n C&oacute; Thể Y&ecirc;n T&acirc;m Trong Qu&aacute; Tr&igrave;nh Vận Chuyển</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">&nbsp;Nếu Bạn L&agrave; Người Kh&ocirc;ng Y&ecirc;u Th&iacute;ch Sự Cầu K&igrave; Nhưng Th&iacute;ch Sự Tinh Tế Th&igrave; Đ&acirc;y Ch&iacute;nh L&agrave; Mẫu Đ&egrave;n Ch&ugrave;m Pha L&ecirc; L&yacute; Tưởng D&agrave;nh Cho Kh&ocirc;ng Gian Nh&agrave; Bạn</span></span></p>', '<p><span style=\"font-size:14px\"><a href=\"https://sencom.vn/category/tranh-trang-guong\"><strong>Trang tr&aacute;ng gương</strong></a>&nbsp;hay c&ograve;n gọi l&agrave; tranh pha l&ecirc;, tranh gương 3D &ndash; đ&acirc;y l&agrave; những mẫu tranh treo tường cao cấp, độc đ&aacute;o được l&agrave;m đa dạng chất liệu, phủ l&ecirc;n một lớp b&oacute;ng gương tạo độ b&oacute;ng v&agrave; chiều s&acirc;u cho sản phẩm. Lựa chọn những mẫu tranh tr&aacute;ng gương treo tường&nbsp;<a href=\"https://sencom.vn/\"><strong>decor trang tr&iacute;</strong></a>&nbsp;với đa dạng chủ đề mang tới vẻ đẹp hiện đại, sang trọng c&ugrave;ng nhiều &yacute; nghĩa phong thuỷ, t&agrave;i lộc, sức khoẻ cho gia chủ.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/tranh-decor-trang-guong-tron-ttga-015-3.jpg\" style=\"height:770px; width:750px\" /></span></p>', 'gương, gương decor', 'Tranh decor trang gương Tròn TTGA 015'),
(50, 'Đèn bàn hiện đại trang trí DN 097', 3, 2, '/storage/images_product/uEfkwuVVRm_den-ban-hien-dai-trang-tri-dn-097-1.jpg', 500000, 1500000, 0, 10, '<p><span style=\"font-size:14px\">Đ&Egrave;N NGỦ - Vật Dụng Cần Thiết Cho Giấc Ngủ Ngon Khoảng Thời Gian Trong Ph&ograve;ng Ngủ Mỗi Ng&agrave;y Lu&ocirc;n L&agrave; L&uacute;c Tuyệt Vời Nhất, Khi Ch&uacute;ng Ta Ho&agrave;n To&agrave;n Rũ Bỏ Mọi &Aacute;p Lực Cuộc Sống Để Thư Gi&atilde;n V&agrave; Nghỉ Ngơi. Yếu Tố &Aacute;nh S&aacute;ng Trong Ph&ograve;ng Ngủ Rất Quan Trọng Để Mang Lại Cảm Gi&aacute;c Thư Gi&atilde;n Thoải M&aacute;i. V&igrave; Thế, Đ&egrave;n Ngủ Ra Đời V&agrave; C&oacute; Mặt Trong Hầu Hết C&aacute;c Ng&ocirc;i Nh&agrave;.</span></p>', '<p>- K&iacute;ch thước: cao 28,5 cm; đường k&iacute;nh chụp đ&egrave;n 25cm; đường k&iacute;nh đế 12 cm.</p>\r\n\r\n<p>- Trọng lượng: 530g.</p>\r\n\r\n<p>- Chất liệu: Đế đ&egrave;n bằng gỗ tre thi&ecirc;n nhi&ecirc;n, Chụp đ&egrave;n hai lớp, lớp trong bằng nhựa tạo khung c&aacute;ch nhiệt, lớp ngo&agrave;i l&agrave;m bằng vải trang tr&iacute; cao cấp..</p>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/den-ban-hien-dai-trang-tri-dn-097-2.jpg\" style=\"height:800px; width:800px\" /></p>', 'đèn ngủ', 'Đèn bàn hiện đại trang trí DN 097'),
(51, 'Đèn ngủ decor hiện đại DN 100', 3, 2, '/storage/images_product/tBjECxoN3J_den-ngu-decor-hien-dai-dn-100.jpg', 1000000, 3000000, 25, 10, '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Ứng dụng: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ăn, ph&ograve;ng ngủ, nh&agrave; h&agrave;ng, sảnh, kh&aacute;ch sạn. đ&egrave;n n&agrave;y kh&aacute; đa năng khi n&oacute; c&oacute; thể sử dụng ở mọi kh&ocirc;ng gian. Tuy nhi&ecirc;n để lựa chọn loại đ&egrave;n th&iacute;ch hợp bạn cần ch&uacute; &yacute; tới m&agrave;u sắc, kiểu d&aacute;ng, k&iacute;ch thước ph&ugrave; hợp với kh&ocirc;ng gian</span></span></span></p>', '<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">T&iacute;nh nghệ thuật v&agrave; tinh tế: Họa tiết tr&ecirc;n khung đ&egrave;n được khắc họa tinh tế tạo ra điểm ấn tượng cho kh&ocirc;ng gian.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Khung đ&egrave;n:Khung hợp kim sơn tĩnh điện bền, đẹp. Khung đ&egrave;n được kh&eacute;o l&eacute;o mạ một lớp v&agrave;ng 24k gi&uacute;p l&agrave;m tăng độ sang trọng của to&agrave;n thể chiếc đ&egrave;n ch&ugrave;m.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&Aacute;nh s&aacute;ng: &Aacute;nh s&aacute;ng v&agrave;ng nhẹ nh&agrave;ng, ấm &aacute;p. Sử dụng &aacute;nh s&aacute;ng m&agrave;u v&agrave;ng sẽ tạo ra được kh&ocirc;ng gian ấm c&uacute;ng v&agrave; dễ chịu hơn.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">B&oacute;ng đ&egrave;n cao cấp c&oacute; tuổi thọ trung b&igrave;nh cao. th&acirc;n đ&egrave;n bằng hợp kim mạ v&agrave;ng 24k bền m&agrave;u với thời gian</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">*K&iacute;ch thước sản phẩm: chiều rộng: 740mm. Chiều cao: 1020mm</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/den-ngu-decor-hien-dai-dn-100-2.jpg\" style=\"height:553px; width:800px\" /></span></span></p>', 'đèn ngủ', 'Đèn ngủ decor hiện đại DN 100'),
(52, 'Đèn ngủ trang trí nội thất DN 098', 3, 2, '/storage/images_product/biFpJQxytB_den-ngu-trang-tri-noi-that-dn-098.jpg', 2000000, 3000000, 40, 10, '<p><span style=\"font-size:14px\">Đ&Egrave;N NGỦ - Vật Dụng Cần Thiết Cho Giấc Ngủ Ngon Khoảng Thời Gian Trong Ph&ograve;ng Ngủ Mỗi Ng&agrave;y Lu&ocirc;n L&agrave; L&uacute;c Tuyệt Vời Nhất, Khi Ch&uacute;ng Ta Ho&agrave;n To&agrave;n Rũ Bỏ Mọi &Aacute;p Lực Cuộc Sống Để Thư Gi&atilde;n V&agrave; Nghỉ Ngơi. Yếu Tố &Aacute;nh S&aacute;ng Trong Ph&ograve;ng Ngủ Rất Quan Trọng Để Mang Lại Cảm Gi&aacute;c Thư Gi&atilde;n Thoải M&aacute;i. V&igrave; Thế, Đ&egrave;n Ngủ Ra Đời V&agrave; C&oacute; Mặt Trong Hầu Hết C&aacute;c Ng&ocirc;i Nh&agrave;.</span></p>', '<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">T&Iacute;NH NĂNG - ƯU ĐIỂM - Tiết kiệm điện so với c&aacute;c loại b&oacute;ng chiếu s&aacute;ng kh&aacute;c.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;- Vật liệu sử dụng l&agrave; nh&ocirc;m sơn tĩnh điện thiết kế hiện đại. </span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- Thiết kế của đ&egrave;n dễ lắp đặt, dễ sử dụng, giảm thiểu thời gian thi c&ocirc;ng </span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">- Tuổi thọ đ&egrave;n cao, th&acirc;n thiện với m&ocirc;i trường, kh&ocirc;ng chứa chất độc hại, c&oacute; thể t&aacute;i chế.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Đ&egrave;n tường LED l&agrave; loại đ&egrave;n tường trang tr&iacute; thường được sử dụng trong chiếu s&aacute;ng trang tr&iacute; tại c&aacute;c qu&aacute;n c&agrave; ph&ecirc;, khu đọc s&aacute;ch, hay c&ograve;n c&oacute; thể sử dụng l&agrave;m đ&egrave;n ngủ. Đ&egrave;n trang tr&iacute; LONstar Chuy&ecirc;n cung cấp c&aacute;c loại đ&egrave;n led trang tr&iacute;, đ&egrave;n ngủ để b&agrave;n, đ&egrave;n led d&acirc;n dụng, đ&egrave;n thả, đ&egrave;n d&acirc;y led,... tiết kiệm 70% điện năng so với c&aacute;c loai đ&egrave;n th&ocirc;ng thường </span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Bảo h&agrave;nh l&ecirc;n đến 12 th&aacute;ng</span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/den-ngu-trang-tri-noi-that-dn-098-3.jpg\" style=\"height:755px; width:800px\" /></span></span></span></p>', 'đèn ngủ', 'Đèn ngủ trang trí nội thất DN 098'),
(53, 'Gương decor nhập khẩu GS 067', 4, 2, '/storage/images_product/JVzc5wAiGQ_guong-decor-nhap-khau-gs-067-9.jpg', 2000000, 4000000, 10, 10, '<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\">Sản Phẩm Đước Đ&oacute;ng G&oacute;i Trong Hộp Xốp Cẩn Thận, Qu&yacute; Kh&aacute;ch Ho&agrave;n To&agrave;n C&oacute; Thể Y&ecirc;n T&acirc;m Trong Qu&aacute; Tr&igrave;nh Vận Chuyển</span></span></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;</span></span><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Nếu Bạn L&agrave; Người Kh&ocirc;ng Y&ecirc;u Th&iacute;ch Sự Cầu K&igrave; Nhưng Th&iacute;ch Sự Tinh Tế Th&igrave; Đ&acirc;y Ch&iacute;nh L&agrave; Mẫu Đ&egrave;n Ch&ugrave;m Pha L&ecirc; L&yacute; Tưởng D&agrave;nh Cho Kh&ocirc;ng Gian Nh&agrave; Bạn</span></span></p>', '<p>Cạnh viền xung quanh gương được bọc bằng d&acirc;y da tổng hợp cao cấp nhập khẩu H&agrave;n Quốc.</p>\r\n\r\n<p>Đai d&acirc;y da v&agrave; d&acirc;y treo da sử dụng những đường may tỉ mỉ tạo n&ecirc;n n&eacute;t sang trọng cho chiếc gương. Thiết kế hiện đại, nhẹ nh&agrave;ng, tinh tế. Gương d&acirc;y da treo tường l&agrave; sự lựa chọn h&agrave;ng đầu cho những kh&ocirc;ng gian nội thất hiện đại.</p>\r\n\r\n<p>✔ K&iacute;ch thước: Đường k&iacute;nh 40cm - 50cm</p>\r\n\r\n<p>✔ M&agrave;u sắc: Da đen, n&acirc;u, v&agrave;ng da b&ograve;, trắng</p>\r\n\r\n<p>✔ Bao gồm đầy đủ ốc v&iacute;t, trụ treo</p>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/23/img_product/guong-decor-nhap-khau-gs-067-9.jpg\" style=\"height:750px; width:750px\" /></p>', 'gương, gương decor', 'Gương decor nhập khẩu GS 067');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `requirement`
--

CREATE TABLE `requirement` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `requirement_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement_active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ships`
--

CREATE TABLE `ships` (
  `ship_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `ship_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slide_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_addres` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_district` int(11) DEFAULT NULL,
  `user_city` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `password`, `user_phone`, `user_addres`, `user_district`, `user_city`, `provider`, `provider_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$w4XMnAAImAcEWHbOZxea6.kZYVIwynKb5vKfm9s7aBry9QV9PwRWe', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-12-15 12:53:39', '2022-12-15 12:53:39'),
(24, 'lucccc', 'doanbaluc@gmail.com', '$2y$10$LNy4/halE/6nahljVOt03eJ2y3mDh/StD.9Uz1K59STTZl8GhJQrC', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-11-22 17:52:11', '2022-11-22 17:52:11'),
(25, 'baluc', 'doanluc197@gmail.com', '$2y$10$Ss0F9ivmsKBLWC/Y4tbp2e2jbFn34JyYhh2SIaAE3cmpXImW3fXfu', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-11-22 18:41:20', '2022-11-22 18:41:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `product_id`, `user_id`) VALUES
(1, 19, 5),
(2, 15, 17);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `citys`
--
ALTER TABLE `citys`
  ADD PRIMARY KEY (`city_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`district_id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `orderdetail_order_id_foreign` (`order_id`),
  ADD KEY `orderdetail_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `requirement`
--
ALTER TABLE `requirement`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ships`
--
ALTER TABLE `ships`
  ADD PRIMARY KEY (`ship_id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_user_email_unique` (`user_email`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `wishlist_user_id_foreign` (`user_id`),
  ADD KEY `wishlist_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categorys`
--
ALTER TABLE `categorys`
  MODIFY `category_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `image_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `order_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `requirement`
--
ALTER TABLE `requirement`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ships`
--
ALTER TABLE `ships`
  MODIFY `ship_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orderdetail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
