-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2021 at 03:36 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_laptop_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2020_05_21_093138_create_tbl_admin_table', 1),
(25, '2020_05_22_035318_create_tbl_category_product', 1),
(26, '2020_05_23_073209_create_tbl_product_table', 1),
(27, '2020_06_09_015800_create_tbl_customer_table', 2),
(28, '2020_06_09_021654_create_tbl_customer_table', 3),
(29, '2020_06_09_041408_create_tbl_customer_table', 4),
(30, '2020_06_11_032430_create_tbl_detail_table', 5),
(31, '2020_06_14_140834_create_orders_table', 6),
(32, '2020_06_14_141050_create_order_details_table', 6),
(33, '2020_07_10_133115_create_revenues_table', 7),
(34, '2020_07_11_032934_create_revenue_details_table', 8),
(35, '2020_07_11_080152_create_revenue_years_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `order_day` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_total_price` int(50) DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `customer_id`, `order_day`, `order_total_price`, `order_status`, `created_at`, `updated_at`) VALUES
(19, 'dtpfxg6yn4wh7l95ri2z', 3, '2020-07-06 02:28:44', 32990000, 3, '2020-07-05 19:28:44', '2020-07-05 19:28:44'),
(20, 'u1e6kh9s4tpr7zxaqj50', 3, '2020-07-06 02:29:21', 24990000, 2, '2020-07-05 19:29:21', '2020-07-05 19:29:21'),
(21, '98oevk314wufhtsgnjdy', 3, '2020-05-06 02:29:44', 34380000, 2, '2020-07-05 19:29:44', '2020-07-05 19:29:44'),
(22, 'mb87vuqtdg2pi01fsyce', 3, '2020-07-06 02:30:57', 13750000, 0, '2020-07-05 19:30:57', '2020-07-05 19:30:57'),
(23, '9amd8ibo7h3jkyt2pr4u', 6, '2020-07-06 05:37:54', 76270000, 2, '2020-07-05 22:37:54', '2020-07-05 22:37:54'),
(24, 'rtzmlikahn4pdc0372sb', 4, '2020-07-10 02:51:03', 13690000, 0, '2020-07-09 19:51:03', '2020-07-09 19:51:03'),
(25, 'nd27h50lxyomcr8zs9b1', 7, '2020-07-10 14:38:29', 56990000, 2, '2020-07-10 07:38:29', '2020-07-10 07:38:29'),
(26, '1e08b9vijr4a7mkqpwsd', 7, '2020-06-09 03:21:41', 27500000, 2, '2020-07-10 20:21:41', '2020-07-10 20:21:41'),
(27, '4fo0lvm98k2uzsxceiw5', 6, '2020-05-11 07:30:54', 52480000, 2, '2020-07-11 00:30:54', '2020-07-11 00:30:54'),
(28, '5gf2yuow70sck34ieqhn', 6, '2020-07-11 07:31:09', 10290000, 1, '2020-07-11 00:31:09', '2020-07-11 00:31:09'),
(29, 'o4vrkpj9lxiztfgbnqdu', 3, '2021-12-27 19:13:27', 115960000, 0, '2021-12-27 12:13:27', '2021-12-27 12:13:27'),
(30, 'zcby3jm26kfahps5gued', 3, '2021-12-28 02:19:22', 13750000, 0, '2021-12-27 19:19:22', '2021-12-27 19:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_product_id` int(10) NOT NULL,
  `order_product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_qty` int(10) UNSIGNED NOT NULL,
  `order_product_price` int(50) NOT NULL,
  `order_total_price` int(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `order_product_id`, `order_product_image`, `order_product_name`, `order_qty`, `order_product_price`, `order_total_price`, `created_at`, `updated_at`) VALUES
(23, 'dtpfxg6yn4wh7l95ri2z', 4, 'MB4.jpg', 'Laptop Apple MacBook Air 2019 i5 1.6GHz/8GB/256GB (MVFL2SA/A)', 1, 32990000, 32990000, '2020-07-05 19:28:44', '2020-07-05 19:28:44'),
(24, 'u1e6kh9s4tpr7zxaqj50', 25, 'MSI1.jpg', 'Laptop MSI Gaming 15 GF63 9SC i7 9750H/8GB/256GB/4GB ', 1, 24990000, 24990000, '2020-07-05 19:29:21', '2020-07-05 19:29:21'),
(25, '98oevk314wufhtsgnjdy', 14, 'A2.jpg', 'Laptop Asus VivoBook X509JP i5 1035G1/8GB/512GB/2GB MX330/Win10', 2, 17190000, 34380000, '2020-07-05 19:29:44', '2020-07-05 19:29:44'),
(26, 'mb87vuqtdg2pi01fsyce', 7, 'D3.jpg', 'Laptop Dell Inspiron 3493 i5 1035G1/8GB/256GB/Win10', 1, 13750000, 13750000, '2020-07-05 19:30:57', '2020-07-05 19:30:57'),
(27, '9amd8ibo7h3jkyt2pr4u', 4, 'MB4.jpg', 'Laptop Apple MacBook Air 2019 i5 1.6GHz/8GB/256GB (MVFL2SA/A)', 2, 32990000, 65980000, '2020-07-05 22:37:54', '2020-07-05 22:37:54'),
(28, '9amd8ibo7h3jkyt2pr4u', 6, 'D2.jpg', 'Laptop Dell Inspiron 3581 i3 7020U/4GB/1TB/Win10 (P75F005N81A)', 1, 10290000, 10290000, '2020-07-05 22:37:54', '2020-07-05 22:37:54'),
(29, 'rtzmlikahn4pdc0372sb', 16, 'A4.jpg', 'Laptop Asus VivoBook A512FA i3 8145U/4GB/512GB/Win10', 1, 13690000, 13690000, '2020-07-09 19:51:03', '2020-07-09 19:51:03'),
(30, 'nd27h50lxyomcr8zs9b1', 3, 'MB3.jpg', 'Laptop Macbook Pro Touch 16 inch 2019 i7 2.6GHz/16GB/512GB/4GB', 1, 56990000, 56990000, '2020-07-10 07:38:29', '2020-07-10 07:38:29'),
(31, '1e08b9vijr4a7mkqpwsd', 7, 'D3.jpg', 'Laptop Dell Inspiron 3493 i5 1035G1/8GB/256GB/Win10', 2, 13750000, 27500000, '2020-07-10 20:21:41', '2020-07-10 20:21:41'),
(32, '4fo0lvm98k2uzsxceiw5', 4, 'MB4.jpg', 'Laptop Apple MacBook Air 2019 i5 1.6GHz/8GB/256GB (MVFL2SA/A)', 1, 32990000, 32990000, '2020-07-11 00:30:54', '2020-07-11 00:30:54'),
(33, '4fo0lvm98k2uzsxceiw5', 20, 'AC4.jpg', 'Laptop Acer Nitro AN515 43 R9FD R5 3550H/8GB/512GB/4GB', 1, 19490000, 19490000, '2020-07-11 00:30:54', '2020-07-11 00:30:54'),
(34, '5gf2yuow70sck34ieqhn', 6, 'D2.jpg', 'Laptop Dell Inspiron 3581 i3 7020U/4GB/1TB/Win10 (P75F005N81A)', 1, 10290000, 10290000, '2020-07-11 00:31:09', '2020-07-11 00:31:09'),
(35, 'o4vrkpj9lxiztfgbnqdu', 2, 'MB2.jpg', 'Laptop Apple Macbook Air 2020 i3 1.1GHz/8GB/256GB (MWTL2SA/A)', 4, 28990000, 115960000, '2021-12-27 12:13:27', '2021-12-27 12:13:27'),
(36, 'zcby3jm26kfahps5gued', 7, 'D3.jpg', 'Laptop Dell Inspiron 3493 i5 1035G1/8GB/256GB/Win10', 1, 13750000, 13750000, '2021-12-27 19:19:22', '2021-12-27 19:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `revenues`
--

CREATE TABLE `revenues` (
  `id` int(10) UNSIGNED NOT NULL,
  `thang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tong_doanh_thu` int(50) DEFAULT NULL,
  `tong_don_hang` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revenues`
--

INSERT INTO `revenues` (`id`, `thang`, `tong_doanh_thu`, `tong_don_hang`, `created_at`, `updated_at`) VALUES
(10, '2020-6', 27500000, 1, NULL, NULL),
(13, '2020-7', 158250000, 3, NULL, NULL),
(14, '2020-5', 86860000, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `revenue_years`
--

CREATE TABLE `revenue_years` (
  `id` int(10) UNSIGNED NOT NULL,
  `nam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tong_doanh_thu` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revenue_years`
--

INSERT INTO `revenue_years` (`id`, `nam`, `tong_doanh_thu`, `created_at`, `updated_at`) VALUES
(1, '2020', 272610000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(3, 'daotrang2001@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '????o Th??? Thu Trang', NULL, '2020-06-09 01:05:55', NULL),
(5, 'trangtrang@gmail.com', '123456', '????o Th??? Thu Trang', '0921813872', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `id` int(10) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`id`, `category_name`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'MAC', 1, NULL, NULL),
(2, 'HP', 1, NULL, NULL),
(3, 'DELL', 1, NULL, NULL),
(4, 'ASUS', 1, NULL, NULL),
(5, 'ACER', 1, NULL, NULL),
(6, 'LENOVO', 1, NULL, NULL),
(7, 'MSI', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_account`, `customer_password`, `customer_name`, `customer_phone`, `customer_address`, `created_at`, `updated_at`) VALUES
(3, 'daothithutrang', 'e10adc3949ba59abbe56e057f20f883e', 'Dao Thi Thu Trang', '0978123456', 'Que Vo -Bac Ninh', NULL, NULL),
(4, 'nguyen thi thuy', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen Thi Thuy', '0978123123', 'Ha Noi', NULL, NULL),
(6, 'thuthuy', 'e10adc3949ba59abbe56e057f20f883e', 'Nguy???n Th??? Thu???', '0978456123', 'Thanh Tri -Ha Noi', NULL, NULL),
(7, 'trinhhonglanh', 'e10adc3949ba59abbe56e057f20f883e', 'Tr???nh H???ng L??nh', '0978567567', 'Th??ng B??nh - Qu???ng Nam', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(10) NOT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_desc` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `product_status` int(11) DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chip` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ram` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hard_drive` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `product_img`, `product_name`, `product_desc`, `product_price`, `product_status`, `category_id`, `chip`, `ram`, `weight`, `hard_drive`, `created_at`, `updated_at`) VALUES
(1, 'MSI4.jpg', 'Laptop Apple MacBook Air 2017 i5 1.8GHz/8GB/128GB (MQD32SA/A)', 'MacBook Air 2017 i5 128GB l?? m???u laptop v??n ph??ng, c?? thi???t k??? si??u m???ng v?? nh???, v??? nh??m nguy??n kh???i sang tr???ng. M??y c?? hi???u n??ng ???n ?????nh, th???i l?????ng pin c???c l??u 12 gi???, ph?? h???p cho h???u h???t c??c nhu c???u l??m vi???c v?? gi???i tr??.', 19990000, 1, 'MAC', 'Intel Core i5 Broadwell, 1.80 GHz', '8 GB, DDR3L(On board), 1600 MHz', '1.35kg', 'SSD: 128 GB', NULL, NULL),
(2, 'MB2.jpg', 'Laptop Apple Macbook Air 2020 i3 1.1GHz/8GB/256GB (MWTL2SA/A)', 'MacBook Air 2020 i3 m???i v???i thi???t k??? sang tr???ng, hi???u n??ng kh??, b??n ph??m Magic l???n ?????u ti??n xu???t hi???n tr??n d??ng Macbook Air. V???i nhi???u t??nh n??ng hi???n ?????i, ????y l?? chi???c MacBook Air r???t ????ng s??? h???u v???i m???c gi?? g???n nh?? r??? nh???t t??? tr?????c ?????n nay.\"', 28990000, 1, 'MAC', 'Intel Core i3 Th??? h??? 10, 1.10 GHz', '8 GB, LPDDR4X (On board), 3733 MHz', '1.29kg', 'SSD: 256 GB', NULL, NULL),
(3, 'MB3.jpg', 'Laptop Macbook Pro Touch 16 inch 2019 i7 2.6GHz/16GB/512GB/4GB', 'MacBook ProTouch 2019 i7 chi???c laptop c???u h??nh m???nh m??? c???a Apple s??? ??em ?????n nh???ng tr???i nghi???m m?? kh??ng ph???i chi???c laptop n??o c??ng c?? ???????c. Thi???t k??? sang tr???ng tinh t???, c???u h??nh kh???ng, ???????c trang b??? card ????? h???a v?? c??c c??ng ngh??? ?????c quy???n c???a Apple.\"', 56990000, 1, 'MAC', 'Intel Core i7 Coffee Lake, 2.60 GHz', '16 GB, DDR4 (1 khe), 2666 MHz', '2.0kg', 'SSD 512GB', NULL, NULL),
(4, 'MB4.jpg', 'Laptop Apple MacBook Air 2019 i5 1.6GHz/8GB/256GB (MVFL2SA/A)', 'Apple Macbook Air 2019 i5 (MVFL2SA/A) l?? phi??n b???n n??ng c???p nh??? so v???i MacBook Air 2018. M??n h??nh Retina nay ???????c trang b??? c??ng ngh??? Truetone hi???n ?????i, c?? nhi???u c???i ti???n tr??n b??n ph??m c??nh b?????m.\"', 32990000, 1, 'MAC', 'Intel Core i5 Coffee Lake, 1.60 GHz', '8 GB, LPDDR3, 2133 MHz', '1.25kg', 'SSD: 256 GB', NULL, NULL),
(5, 'D1.jpg', 'Laptop Dell Vostro 3580 i5 8265U/4GB/1TB/2GB AMD520/Win10', 'Dell v???a cho ra m???t laptop Dell Vostro 3580 i5 (P75F010V80I) v???i thi???t k??? trang nh??, c???u h??nh ????p ???ng t???t nhu c???u v??n ph??ng v?? ????? h???a c?? b???n, ????y ch??nh l?? chi???c laptop v??n ph??ng ????ng c??n nh???c ?????i v???i kh??ch h??ng l?? h???c sinh, nh??n vi??n v??n ph??ng.', 12220000, 1, 'DELL', 'Intel Core i5 Coffee Lake, 8265U, 1.60 GHz', '4 GB, DDR4 (2 khe), 2666 MHz', '2.1kg', 'HDD: 1 TB SATA3, H??? tr??? khe c???m SSD M.2 PCIe', NULL, NULL),
(6, 'D2.jpg', 'Laptop Dell Inspiron 3581 i3 7020U/4GB/1TB/Win10 (P75F005N81A)', 'Laptop Dell Inspiron 3581 c?? thi???t k??? ????n gi???n, ????? b???n cao, l?? chi???c laptop 15.6 inch gi?? r??? ph?? h???p v???i sinh vi??n.\r\nThi???t k??? ????n gi???n\r\nKh??ng qu?? c???u k???, laptop Dell Inspiron 3581 c?? thi???t k??? truy???n th???ng v???i c??n n???ng 2.28 kg. Tr???ng l?????ng n??y kh?? c???ng k???n', 10290000, 1, 'DELL', 'Intel Core i3 Kabylake, 7020U, 2.30 GHz', '4 GB, DDR4 (2 khe), 2133 MHz', '2.28kg', 'HDD: 1 TB SATA3, H??? tr??? khe c???m SSD M.2 PCIe', NULL, NULL),
(7, 'D3.jpg', 'Laptop Dell Inspiron 3493 i5 1035G1/8GB/256GB/Win10', 'Laptop Dell Inspiron 3493 i5 (N4I5122W) l?? m???u m??y laptop v??n ph??ng ?????n t??? nh?? Dell. H?????ng t???i kh??ch h??ng l?? h???c sinh sinh vi??n v?? nh??n vi??n v??n ph??ng, m??y ???????c trang b??? c???u h??nh ????? d??ng cho c??ng vi???c l???n gi???i tr?? th?????ng ng??y.', 13750000, 1, 'DELL', 'Intel Core i5 Ice Lake, 1035G1, 1.00 GHz', '8 GB, DDR4 (2 khe), 2666 MHz', '1.79kg', 'SSD 256GB NVMe PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(9, 'HP1.jpg', 'Laptop HP Envy 13 aq1022TU i5 10210U/8GB/512GB/Win10 (8QN69PA)', 'Laptop HP Envy 13 aq1022TU i5 (8QN69PA) l?? chi???c laptop doanh nh??n cao c???p c?? thi???t k??? si??u m???ng nh??? v?? c???u h??nh m???nh. B???o m???t v??n tay hi???n ?????i, ??? c???ng SSD c???c nhanh l?? nh???ng ??i???m c???ng n???i b???t c???a chi???c laptop n??y.', 22690000, 0, 'HP', 'Intel Core i5 Comet Lake, 10210U, 1.60 GHz', '8 GB, DDR4 (On board), 2400 MHz', '1.17kg', 'SSD 512 GB M.2 PCIe', NULL, NULL),
(10, 'HP2.jpg', 'Laptop HP Pavilion 15 cs3061TX i5 1035G1/8GB/512GB/2G MX250/Win10', 'Laptop HP Pavilion 15 cs3061TX l?? m???u laptop d??nh cho sinh vi??n, nh??n vi??n v??n ph??ng, c?? th??? s??? d???ng ????? thi???t k??? ????? ho??? c?? b???n, v???i c???u h??nh m???nh m???. Thi???t k??? g???n nh??? d??? d??ng mang theo b??n m??nh.', 18190000, 1, 'HP', 'Intel Core i5 Ice Lake, 1035G1, 1.00 GHz', '8 GB, DDR4 (2 khe), 2666 MHz', '1.761kg', 'SSD 512 GB M.2 PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(11, 'HP3.jpg', 'Laptop HP 348 G7 i3 8130U/4GB/256GB/Win10 (9PG83PA)', '???????c x?????ng t??n trong ph??n kh??c laptop h???c t???p - v??n ph??ng l???n n??y l?? m???t chi???c laptop nh??? g???n n???a ?????n t??? th????ng hi???u HP - laptop HP 348 G7 i3 8130U (9PG83PA), h???a h???n s??? ????p ???ng t???t m???i nhu c???u s??? d???ng laptop th?????ng ng??y.', 11390000, 1, 'HP', 'Intel Core i3 Coffee Lake, 8130U, 2.20 GHz', '4 GB, DDR4 (2 khe), 2666 MHz', '1.5kg', 'SSD 256GB NVMe PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(12, 'HP4.jpg', 'Laptop HP 15s du1035TX i5 10210U/8GB/512GB/2GB MX130/Win10', '?????c ??i???m n???i b???t c???a HP 15s du1035TX i5  B??? s???n ph???m chu???n: D??y ngu???n (2 d??y)Laptop HP 15s du1035TX (8RK36PA) l?? m???u laptop c?? m???c gi?? trung b??nh d??nh cho sinh vi??n v?? nh??n vi??n v??n ph??ng v???i c???u h??nh m???nh v?? thi???t k??? sang tr???ng.', 17790000, 1, 'HP', 'Intel Core i5 Comet Lake, 10210U, 1.60 GHz', '8 GB, DDR4 (2 khe), 2666 MHz', '1.744kg', 'SSD 512 GB M.2 PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(13, 'A1.jpg', 'Laptop Asus VivoBook X409FA i3 8145U/4GB/256GB/Win10 (EK468T)', 'Laptop Asus VivoBook X409FA i3 (EK468T) l?? m???u m??y t??nh x??ch tay h???c t???p v??n ph??ng c?? b???n, c?? c???u h??nh ????? d??ng cho nhu c???u h???c t???p v?? gi???i tr?? th?????ng ng??y. V???i thi???t k??? m???ng nh???, Asus VivoBook X409FA c?? th??? ?????ng h??nh c??ng b???n m???i l??c m???i n??i.', 10790000, 1, 'ASUS', 'Intel Core i3 Coffee Lake, 8145U, 2.10 GHz', '4 GB, DDR4 (On board +1 khe), 2400 MHz', '1.423kg', 'SSD 256GB NVMe PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(14, 'A2.jpg', 'Laptop Asus VivoBook X509JP i5 1035G1/8GB/512GB/2GB MX330/Win10', 'Asus VivoBook X509JP i5 (EJ023T) l?? chi???c laptop h???c t???p - v??n ph??ng m???ng nh???, c???u h??nh m???nh v?? ???n ?????nh cho nhu c???u l??m vi???c, gi???i tr?? h???ng ng??y. Ngo??i ra, m??y c??ng c?? kh??? n??ng ????? h???a kh?? nh??? c?? card ????? h???a r???i.', 17190000, 1, 'ASUS', 'Intel Core i5 Ice Lake, 1035G1, 1.00 GHz', '8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz', '1.73kg', 'SSD 512 GB M.2 PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(15, 'A3.jpg', 'Laptop Asus VivoBook X509MA N4000/4GB/256GB/Win10 (BR061T)', 'Laptop Asus VivoBook X509MA l?? s???n ph???m ?????n t??? th????ng hi???u Asus n???i ti???ng v???i thi???t k??? m???ng nh???, c???u h??nh t???m trung, SSD nhanh ????p ???ng t???t c??c t??c v??? c?? b???n c???a ?????i t?????ng c?? nhu c???u v??n ph??ng - h???c t???p.\r\nThi???t k??? tinh t??? sang tr???ng.', 6990000, 1, 'ASUS', 'Intel Celeron, N4000, 1.10 GHz', '4 GB, DDR4 (1 khe), 2400 MHz', '1.8kg', 'SSD 256GB NVMe PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(16, 'A4.jpg', 'Laptop Asus VivoBook A512FA i3 8145U/4GB/512GB/Win10', 'V???i thi???t k??? g???n nh??? v?? c???u h??nh v???a ph???i, Asus VivoBook A512FA s??? l?? m???t ng?????i b???n ?????ng h??nh c??ng v???i c??c b???n sinh vi??n, c??ng nh?? nh??n vi??n v??n ph??ng trong m???i ho???t ?????ng t??? h???c t???p, l??m vi???c cho ?????n gi???i tr?? th?????ng ng??y.', 13690000, 1, 'ASUS', 'Intel Core i3 Coffee Lake, 8145U, 2.10 GHz', '4 GB, DDR4 (On board +1 khe), 2400 MHz', '1.7kg', 'SSD 512GB, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(17, 'AC1.jpg', 'Laptop Acer Aspire A515 55 55HG i5 1035G1/8GB/512GB/Win10', 'Laptop Acer Aspire A515 55 55HG c???u h??nh m???nh m??? ????p ???ng ???????c nhu c???u ????? h???a c?? b???n v?? c??n h???t m???i t??c v??? v??n ph??ng, ?????ng h??nh c??ng b???n t???o n??n 1 ng??y l??m vi???c hi???u qu???.\r\nTh??n m??y g???n, n???p l??ng kim lo???i th???i th?????ng.', 17190000, 1, 'ACER', 'Intel Core i5 Ice Lake, 1035G1, 1.00 GHz', '8 GB, DDR4 (On board 4GB +1 khe 4GB), 2400 MHz', '1.7kg', 'SSD 512 GB M.2 PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(18, 'AC2.jpg', 'Laptop Acer Aspire A315 34 C2H9 N4000/4GB/256GB/Win10', 'Laptop Acer Aspire A315 34 C2H9 h?????ng ?????n ?????i t?????ng h???c sinh - sinh vi??n ????i h???i c???u h??nh ????? d??ng ????? l?????t web, so???n th???o, c??ng v???i ???? l?? m???c ph???i ch??ng v?? thi???t k??? g???n nh???. M??y l?? m???t trong s??? ??t s???n ph???m ?????m b???o c??c y???u t??? gi?? r???, th???i l?????ng pin cao.', 6990000, 1, 'ACER', 'Intel Celeron, N4000, 1.10 GHz', '4 GB, DDR4 (On board +1 khe), 2400 MHz', '1.7kg', 'SSD 256GB NVMe PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(19, 'AC3.jpg', 'Laptop Acer Aspire 3 A315 54K 37B0 i3 8130U/4GB/256GB/Win10', 'L?? m???u laptop h???c t???p - v??n ph??ng ???????c thi???t k??? g???n nh???, v???n mang ?????n nhi???u ??i???m n???i b???t khi s??? h???u c???u h??nh t???t, ??? c???ng SSD c???c nhanh v?? m??n h??nh Full HD s???c n??t. S???n ph???m s??? l?? l???a ch???n tuy???t v???i trong t???m gi??.', 10690000, 0, 'ACER', 'Intel Core i3 Coffee Lake, 8130U, 2.20 GHz', '4 GB, DDR4 (On board +1 khe), 2400 MHz', '1.7kg', 'SSD 256GB NVMe PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(20, 'AC4.jpg', 'Laptop Acer Nitro AN515 43 R9FD R5 3550H/8GB/512GB/4GB', 'Laptop Acer Nitro AN515 (NH.Q6ZSV.003) phi??n b???n 2019 l?? m???u laptop gaming t???m trung c?? thi???t k??? h???m h???, c???u h??nh m???nh, ????? h???a m?????t m?? v???i card m??n h??nh Geforce GTX 1650. ????y l?? chi???c laptop kh??ng ch??? ph?? h???p cho ch??i game m?? c??n l??m vi???c, thi???t k??? ????? h???a t???t.', 19490000, 1, 'ACER', 'AMD Ryzen 5, 3550H, 2.10 GHz', '8 GB, DDR4 (2 khe), 2400 MHz', '2.3kg', 'SSD 512 GB M.2 PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(21, 'L1.jpg', 'Laptop Lenovo IdeaPad S145 15IIL i3 1005G1/4GB/256GB/Win10', 'Laptop Lenovo IdeaPad S145 15IIL i3 (81W8001XVN) thu???c ph??n kh??c laptop h???c t???p v??n ph??ng c?? b???n v???i m???c gi?? t???t. M??y c?? c???u h??nh ???n, ????? ch???y c??c ???ng d???ng v??n ph??ng ph??? bi???n, ??i???m n???i b???t c???a Lenovo IdeaPad S145 l?? ??? c???ng SSD si??u nhanh, thi???t k??? m???ng g???n', 11190000, 1, 'LENOVO', 'Intel Core i3 Ice Lake, 1005G1, 1.20 GHz', '4 GB, DDR4 (On board +1 khe), 2666 MHz', '1.79kg', 'SSD 256GB NVMe PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(22, 'L2.jpg', 'Laptop Lenovo IdeaPad S145 15IIL i5 1035G1/8GB/512GB/Win10', 'Lenovo IdeaPad S145 15IIL i5 (81W80021VN) l?? m???u laptop c?? c???u h??nh ????p ???ng t???t c??ng vi???c v??n ph??ng, h???c t???p. Thi???t b??? s??? h???u ??? c???ng SSD cho t???c ????? x??? l?? nhanh ch??ng, m??n h??nh Full HD s???c n??t.', 14790000, 1, 'LENOVO', 'Intel Core i5 Ice Lake, 1035G1, 1.00 GHz', '8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz', '1.79kg', 'SSD 512 GB M.2 PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(23, 'L3.jpg', 'Laptop Lenovo IdeaPad S340 14IIL i3 1005G1/8GB/512GB/Win10', 'Lenovo IdeaPad S340 14IIL (81VV003VVN) s??? h???u c???u h??nh kh??, hi???u n??ng ???n ?????nh v?? thi???t k??? tinh t??? ?????p m???t. ????y s??? l?? chi???c laptop v??n ph??ng ph?? h???p v???i ?????i t?????ng sinh vi??n, d??n v??n ph??ng th?????ng xuy??n x??? l?? c??c t??c v??? v??n ph??ng, h???c t???p v?? ch???nh s???a h??nh ???nh c?? b???n.', 13690000, 1, 'LENOVO', 'Intel Core i3 Ice Lake, 1005G1, 1.20 GHz', '8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz', '1.6kg', 'SSD 512 GB M.2 PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(24, 'L4.jpg', 'Laptop Lenovo IdeaPad S340 14IIL i5 1035G1/8GB/512GB/Win10', 'Laptop Lenovo IdeaPad S340 14IIL i5 (81VV003SVN) l?? m???t l???a ch???n ph?? h???p d??nh cho nh??n vi??n v??n ph??ng, h???c sinh sinh vi??n. M??y c?? c???u h??nh kh?? v???i vi x??? l?? m???i nh???t ?????n t??? Intel, ??? c???ng SSD c???c nhanh, thi???t k??? sang tr???ng, m???ng nh??? s???n s??ng ?????ng h??nh c??ng b???n m???i l??c m???i n??i.', 15490000, 1, 'LENOVO', 'Intel Core i5 Ice Lake, 1035G1, 1.00 GHz', '8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz', '1.6kg', 'SSD 512 GB M.2 PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(25, 'MSI1.jpg', 'Laptop MSI Gaming 15 GF63 9SC i7 9750H/8GB/256GB/4GB ', 'Laptop gaming MSI ???? ??em l???i cho ng?????i d??ng ph??n kh??c Laptop MSI Gaming GF63 9SC gi?? r??? - ch??? h??n 20 tri???u ?????ng. B???n s??? c?? m???t thi???t k??? gaming h???m h??? nh??ng l???i thanh l???ch, t???i gi???n v?? t??nh di ?????ng cao h??n c??ng v???i c???u h??nh m???i nh???t ??em l???i hi???u n??ng m???nh m??? kh??ng thua k??m qu?? nhi???u so v???i c??c laptop t???m trung hay c???n cao c???p. ????y l?? m???t l???a ch???n r???t ????ng c??n nh???c v?? h???p d???n cho ng?????i d??ng.', 24990000, 1, 'MSI', 'Intel Core i7 Coffee Lake, 9750H, 2.60 GHz', '8 GB, DDR4 (2 khe), 2666 MHz', '1.86kg', 'SSD 256GB NVMe PCIe, H??? tr??? khe c???m HDD SATA', NULL, NULL),
(26, 'MSI2.jpg', 'Laptop MSI GS60 Ghost Pro 6QE 415XVN', 'D??ng si??u m???u nh??ng ch???a c???u h??nh kh???ng.\r\nGS60 Ghost Pro d?????ng nh?? nh???m ?????n ?????i th??? tr???c ti???p trong ph??n kh??c l?? Razer Blade. Nh??n b??? ngo??i nh?? m???t chi???c laptop v??n ph??ng GS60 Ghost Pro ch??? v???n v???n n???ng 1.9 kg bao g???m pin. Nh??ng b??n trong l???i l?? m???t c??u chuy???n kh??c.', 43800000, 1, 'MSI', 'Intel Core i7 6700HQ, 2.60 GHz', '16 GB, DDR4 (On board), 2133 MHz', '1.9kg', 'SSD: 128 GB + HDD: 1TB 7200rpm', NULL, NULL),
(27, 'MSI4.jpg', 'MSI Modern 15 A10M i7 10510U/8 GB ??LPDDR4/SSD ??512 GB', 'Mang tr??n m??nh b??? vi x??? l?? Intel Core i7 th??? h??? th??? 10 m???nh m???, MSI Modern 15 A10M ????p ???ng ho??n h???o nhu c???u l??m vi???c c???a b???n. H??n n???a, ????y c??n l?? chi???c laptop th???i trang v???i ki???u d??ng nh??? g???n ????ng kinh ng???c.', 23990000, 0, 'MAC', 'Intel Core i7', '8 GB  LPDDR4', '1.86kg', 'SSD  512 GB', NULL, NULL),
(28, 'MSI4.jpg', 'MSI Alpha 15 A3DDK R7 3750H', 'MSI Alpha 15 A3DDK R7 3750H/8Gb/512Gb/RX 5500M 4Gb/15.6\"FHD/Win10.\r\nMSI Alpha 15 A3DDK l?? chi???c laptop ?????u ti??n tr??n th??? gi???i trang b??? c??ng ngh??? 7nm ti??n ti???n v?? mang tr??n m??nh s???c m???nh ?????ng nh???t c???a nh?? AMD, l?? m???t s???n ph???m kh??ng ch??? m???nh m??? m?? c??n tinh t??? ?????n t???ng ???????ng n??t.', 26490000, 0, 'MSI', 'AMD  Ryzen??? 7', '8 GB, DDR6', '2.3kg', 'SSD 512 GB', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `order_product_id` (`order_product_id`);

--
-- Indexes for table `revenues`
--
ALTER TABLE `revenues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thang` (`thang`);

--
-- Indexes for table `revenue_years`
--
ALTER TABLE `revenue_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`category_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `revenues`
--
ALTER TABLE `revenues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `revenue_years`
--
ALTER TABLE `revenue_years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`customer_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_4` FOREIGN KEY (`order_product_id`) REFERENCES `tbl_product` (`id`),
  ADD CONSTRAINT `order_details_ibfk_5` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tbl_category_product` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
