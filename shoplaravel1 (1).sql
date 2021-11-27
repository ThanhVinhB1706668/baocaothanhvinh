-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2021 at 12:26 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoplaravel1`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_06_11_145812_create_tbl_admin_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_02_080855_create_tbl_category_product', 2),
(6, '2021_10_03_053939_create_tbl_brand_product', 3),
(7, '2021_10_03_082200_create_tbl_sanpham', 4),
(8, '2021_10_03_082441_create_tbl_product', 5),
(9, '2021_10_03_083514_create_tbl_product', 6),
(10, '2021_10_12_022238_tbl_customers', 7),
(11, '2021_10_12_033931_tbl_shipping', 8),
(15, '2021_10_16_021158_tbl_payment', 9),
(16, '2021_10_16_021314_tbl_order', 9),
(17, '2021_10_16_021332_tbl_order_details', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(2, 'thanhvinh@gmail.com', '123456', 'Thanh Vình', '0123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand_product`
--

CREATE TABLE `tbl_brand_product` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_brand_product`
--

INSERT INTO `tbl_brand_product` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(8, 'Toshiba', 'Toshiba', 1, NULL, NULL),
(9, 'Mitsubishi', 'Mitsubishi', 1, NULL, NULL),
(10, 'LG', 'LG', 1, NULL, NULL),
(11, 'Samsung', 'Samsung', 1, NULL, NULL),
(12, 'Toyota', 'Toyota', 1, NULL, NULL),
(13, 'Sunhouse', 'Sunhouse', 1, NULL, NULL),
(14, 'Electrolux', 'Electrolux', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(12, 'Máy điều hòa', 'Máy điều hòa', 1, NULL, NULL),
(13, 'Máy giặt', 'Máy giặt', 1, NULL, NULL),
(14, 'Tivi', 'Tivi', 1, NULL, NULL),
(15, 'Tủ lạnh', 'Tủ lạnh', 1, NULL, NULL),
(16, 'Máy hút bụi', 'Máy hút bụi', 1, NULL, NULL),
(17, 'Máy xay sinh tố', 'Máy xay sinh tố', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(13, 'Thanh Vình', 'Thanhvinh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0123456', NULL, NULL),
(14, 'Thanh Vình', 'thanhvinh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0123456', NULL, NULL),
(16, 'Minh Thành', 'minhthanh1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '012345678', NULL, NULL),
(17, 'Thanh Vình', 'thanhvinh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0123', NULL, NULL),
(18, 'Thanh Vình', 'thanhvinh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0123456', NULL, NULL),
(19, 'Thanh Vình', 'thanhvinh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0123456789', NULL, NULL),
(20, 'Thanh Vình', 'thanhvinh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0123456789', NULL, NULL),
(21, 'Thanh Vình', 'thanhvinh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0123456789', NULL, NULL),
(22, 'Thanh Vình', 'thanhvinh@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '0123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(8, 14, 14, 8, '25,000,000', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(11, 8, 17, 'Tivi màn hình LG', '25000000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(8, '2', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `brand_id`, `product_name`, `product_price`, `product_desc`, `product_content`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(17, 14, 10, 'Tivi màn hình LG', '25000000', 'Màn hình vô cực có độ phân giải 4K (3840×2160) hiển thị hình ảnh sắc nét\r\nCông nghệ Dual LED tăng cường độ tương phản, độ chính xác của màu sắc\r\nCông nghệ Quantum Dot hiển thị 100% dải màu cho hình ảnh chân thực\r\nCông nghệ Quantum HDR mang đến khung hình chi tiết, độ tương phản cao\r\nTận hưởng âm thanh vòm theo chuyển động hình ảnh nhờ công nghệ OTS\r\nTrải nghiệm hình ảnh mượt mà với công nghệ Motion Xcelerator Turbo+', '<p>L&agrave; sản phẩm tốt nhất hiện nay&nbsp;</p>', '10049304-smart-tivi-lg-4k-43-inch-43up7550ptc-1_b7vq-w182.jpg', 1, NULL, NULL),
(18, 14, 11, 'Smart Tivi Samsung 4K 55 inch UA55TU6900', '17900000', 'Thiết kế không viền 3 cạnh tinh tế\r\nSmart Tivi Samsung 4K 55 inch 55TU6900 được thiết kế màn hình không viền 3 cạnh tinh tế, màu đen thanh lịch. Kiểu dáng thanh mảnh, hứa hẹn sẽ làm nổi bật không gian nội thất nhà bạn.\r\n\r\nTivi Samsung 55 inch phù hợp trưng bày những không gian vừa như: phòng khách, phòng ngủ,...\r\nHiển thị hình ảnh sắc nét gấp 4 lần Full HD nhờ độ phân giải 4K\r\nChất lượng hình ảnh hiển thị đẹp mắt với bộ xử lý Crystal 4K\r\nVới khả năng tự động tối ưu tỷ lệ tương phản, điều chỉnh màu sắc và dải màu động của Bộ xử lý Crystal 4K, bạn có thể xem được những hình ảnh có chất lượng tuyệt đẹp và sắc nét.', 'Smart Tivi Samsung 4K 55 inch UA55TU6900', '10046844-smart-tivi-crystal-4k-samsung-55-inch-ua55tu6900kxxv-1_b299-if49.jpg', 1, NULL, NULL),
(21, 17, 13, 'Máy xay sinh tố đa năng Sunhouse MAMA SHD5353W', '1390000', 'Máy xay sinh tố đa năng Sunhouse MAMA SHD5353W có thiết kế hiện đại, tinh tế mang phong cách Châu Âu\r\nMáy xay sinh tố với lưỡi dao 8 cánh bằng inox 304 sắc bén, chống rỉ kết hợp công suất 1000W mạnh mẽ xay nhuyễn mịn thực phẩm nhanh chóng. Có thể tháo rời dễ dàng vệ sinh và tiện lợi, giúp xay nhỏ thay thế cách sơ chế bằng tay truyền thống tiết kiệm thời gian, công sức.\r\nCối xay lớn bằng thủy tinh có dung tích 1.5 lít, đáp ứng nhu cầu xay nhiều sinh tố cho gia đình', 'Xay cháo nóng\r\n\r\nXay rau củ\r\n\r\nXay sinh tố\r\n\r\nXay súp\r\n\r\nXay đá nhỏ', '10046799-may-xay-sinh-to-da-nang-sunhouse-mama-shd5353w-156.jpg', 1, NULL, NULL),
(22, 14, 11, 'Smart Tivi QLED Samsung 4K 43 inch', '22300000', 'Màn hình vô cực có độ phân giải 4K (3840×2160) hiển thị hình ảnh sắc nét\r\nCông nghệ Dual LED tăng cường độ tương phản, độ chính xác của màu sắc\r\nCông nghệ Quantum Dot hiển thị 100% dải màu cho hình ảnh chân thực\r\nCông nghệ Quantum HDR mang đến khung hình chi tiết, độ tương phản cao\r\nTận hưởng âm thanh vòm theo chuyển động hình ảnh nhờ công nghệ OTS\r\nTrải nghiệm hình ảnh mượt mà với công nghệ Motion Xcelerator Turbo+', 'Smart Tivi QLED Samsung 4K 43 inch', '10048764-smart-tivi-qled-samsung-4k-43-inch-qa43q60aakxxv-1_ga4z-qa8.jpg', 1, NULL, NULL),
(23, 17, 13, 'Máy xay sinh tố Electrolux', '1230000', 'Máy xay sinh tố Electrolux EBR3416 có màu xanh thời trang, tươi trẻ\r\nThiết kế gọn nhẹ, tiện lợi khi sử dụng, di chuyển và bảo quản sản phẩm\r\nMáy xay sinh tố đa năng chất liệu bằng nhựa tốt, không chứa BPA, kháng vỡ, an toàn cho sức khỏe, làm sạch dễ dàng\r\nCối xay lớn dung tích sử dụng 1.25 lít (dung tích tổng 1.5 lít) đáp ứng nhu cầu xay sinh tố tối đa của gia đình\r\nCối xay nhỏ dung tích sử dụng 200 ml thích hợp dùng xay hạt, tiêu, hành, tỏi…', 'Máy xay sinh tố Electrolux', 'may-xay-sinh-to-electrolux-ebr3416-org-1-org94.jpg', 1, NULL, NULL),
(24, 12, 11, 'Máy lạnh Samsung Inverter 1 HP', '8900000', 'Bộ lọc Tri-Care loại bỏ 99% virus, vi khuẩn và bụi siêu mịn \r\nCông suất 1 HP thích hợp với không gian phòng dưới 15m2\r\nCông nghệ Digital Inverter Boost giúp tiết kiệm điện 73%\r\nLưới lọc Easy Filter Plus giúp vệ sinh bụi bẩn dễ dàng\r\nTinh năng tự động làm sạch Auto Clean, bảo vệ sức khỏe \r\nSử dụng gas R32 làm lạnh sâu, thân thiện với môi trường', 'Máy lạnh Samsung Inverter 1 HP', 'samsung-ar10tyhycwknsv-1-1-org5.jpg', 1, NULL, NULL),
(25, 12, 9, 'Máy lạnh Mitsubishi Electric Inverter 1 HP MSY-JP25VF', '10900000', 'Công suất 1 HP thích hợp không gian phòng dưới 15m2\r\nCông nghệ Inverter vận hành êm ái, tiết kiệm điện năng\r\nCông nghệ làm lạnh nhanh cho cảm giác mát lạnh tức thì\r\nCông nghệ chống bám bẩn ngăn tích tụ bụi, khói thuốc\r\nMàng lọc kháng khuẩn khử mùi, lọc sạch không khí\r\nHệ thống trao đổi nhiệt phủ lớp Blue Fin kháng ăn mòn', 'Máy lạnh Mitsubishi Electric Inverter 1 HP MSY-JP25VF', 'samsung-ar10tygcdwknsv-1-3-org80.jpg', 1, NULL, NULL),
(26, 16, 11, 'Máy hút bụi cầm tay Midea MVC-SC861B 600W', '3500000', 'Công suất 1 HP thích hợp không gian phòng dưới 15m2\r\nCông nghệ Inverter vận hành êm ái, tiết kiệm điện năng\r\nCông nghệ làm lạnh nhanh cho cảm giác mát lạnh tức thì\r\nCông nghệ chống bám bẩn ngăn tích tụ bụi, khói thuốc\r\nMàng lọc kháng khuẩn khử mùi, lọc sạch không khí\r\nHệ thống trao đổi nhiệt phủ lớp Blue Fin kháng ăn mòn', 'Máy hút bụi cầm tay Midea MVC-SC861B 600W', 'midea-mvc-sc861b-5-1-org54.jpg', 1, NULL, NULL),
(27, 15, 8, 'Tủ lạnh Toshiba Inverter 417 lít', '20300000', 'Bảo quản thực phẩm tươi ngon lên đến 7 ngày với ngăn cấp đông mềm Prime Fresh+\r\nTủ lạnh Panasonic Inverter 417 lít NR-BX471GPKV trang bị ngăn đông mềm Frime Fresh+ bảo quản thực phẩm nhờ một lớp đông nhẹ trên bề mặt thực phẩm ở mức nhiệt độ -3 độ C. Nhờ đó, giữ trọn chất dinh dưỡng, hương vị tươi ngon của thực phẩm và không phải mất thời gian rã đông trước khi chế biến.\r\n\r\nBên cạnh đó, với khả năng cấp đông nhanh gấp 4 lần, giảm tốc độ oxi hóa thực phẩm lên đến 20%, ngăn đông mềm có thể bảo quản thực phẩm lên đến 7 ngày.', 'Tủ lạnh Toshiba Inverter 417 lít', 'panasonic-nr-bx471gpkv-1-2-org15.jpg', 1, NULL, NULL),
(28, 13, 8, 'Máy giặt Toshiba Inverter 9.5 Kg TW-BK105S2V(WS)', '8900000', 'Giặt sạch vết bẩn cứng đầu, bảo vệ sợi vải nhờ công nghệ Greatwaves siêu sóng\r\nMáy giặt Toshiba Inverter 9.5 Kg TW-BK105S2V(WS) được tích hợp công nghệ siêu sóng Greatwaves độc quyền của Toshiba, mang lại sức mạnh siêu sóng đánh bật vết bẩn cứng đầu cũng như giảm đến 39% độ phai màu của quần áo sau khi giặt. Greatwaves tích hợp 3 công nghệ tiên tiến của Toshiba là: Real Inverter - giúp tiết kiệm điện hiệu quả, Flush Waves - giặt sạch với sóng nước mạnh mẽ và Color Care - chống phai màu quần áo', 'Máy giặt Toshiba Inverter 9.5 Kg TW-BK105S2V(WS)', 'toshiba-tw-bk105s2v-ws-1-2-org49.jpg', 1, NULL, NULL),
(29, 16, 11, 'Máy hút bụi Samsung VC18M21M0VN/SV-N', '1900000', 'Máy hút bụi Samsung thiết kế với màu xanh đen sang trọng, quý phái, công suất lớn 1800 W giúp hút sạch bụi bẩn nhanh chóng\r\nMáy ứng dụng công nghệ lốc xoáy bụi Cyclone Force và Anti-tangle Turbine giúp hút sạch các bụi bẩn như tóc, lông thú trên sàn nhà dễ dàng\r\nĐảm bảo không gây tắc nghẽn máy đồng thời giúp bạn ít đổ bụi hơn những loại máy thông thường.', 'Máy hút bụi Samsung VC18M21M0VN/SV-N', 'samsung-vc18m21m0vn-sv-n-1-org90.jpg', 1, NULL, NULL),
(30, 15, 12, 'Tủ lạnh Toyota 541 lít', '17600000', 'Kiểu tủ side by side lớn - sang trọng, mặt thép kháng khuẩn tiện lợi\r\nAqua Inverter 541 lít AQR-S541XA(BL) thuộc kiểu tủ lạnh side by side đáp ứng cho nhu cầu lưu trữ thực phẩm nhiều cùng với chất liệu cửa tủ làm bằng chất liệu thép kháng khuẩn, nhằm tránh nấm mốc và vi khuẩn tích tụ, góp phần bảo vệ sức khỏe người dùng và tăng độ bền cho sản phẩm.\r\nNâng cao hiệu quả tiết kiệm điện năng với công nghệ Twin Inverter\r\nCông nghệ Twin Inverter sử dụng cả động cơ Inverter lẫn quạt Inverter, mang lại hiệu quả tiết kiệm điện năng vượt trội khi công nghệ Inverter kiểm soát tốc độ quay của máy nén, giúp điều chỉnh và duy trì nhiệt độ phù hợp với lượng thực phẩm, cùng với quạt Inverter hỗ trợ thổi luồng khí lạnh chuẩn xác và khoa học hơn. \r\n\r\nNgoài ra, công nghệ này còn giúp tủ lạnh hoạt động êm ái và bền bỉ trong suốt thời gian sử dụng.', 'Tủ lạnh Toyota 541 lít', 'tu-lanh-aqua-aqr-cmsbl-1-org57.jpg', 1, NULL, NULL),
(31, 13, 14, 'Máy giặt Electrolux Inverter 9 Kg', '7600000', 'Máy giặt cửa trước màu bạc sang trọng, hiện đại\r\nMáy giặt Electrolux Inverter 9 Kg EWF9025BQSA với kiểu dáng cửa trước cùng sắc bạc sang trọng, hiện đại và viền cửa chrome bóng bẩy sẽ là điểm nhấn cho không gian nội thất của gia đình.\r\n\r\nBên cạnh đó, cửa máy giặt được thiết kế khá rộng, giúp bạn thuận tiện trong việc bỏ vào và lấy quần áo ra.', 'Máy giặt Electrolux Inverter 9 Kg', 'may-giat-electrolux-ewf9025bqsa-1-2-org15.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `created_at`, `updated_at`) VALUES
(14, 'Thanh Vình', 'Cần Thơ', '012345678', 'thanhvinh@gmail.com', 'Không ghi chú', NULL, NULL),
(17, 'Thanh Vình', 'Cần Thơ', '0123456', 'thanhvinh@gmail.com', 'Không có ghi chú', NULL, NULL),
(18, 'Thanh Vình', 'Cần Thơ', '012345678', 'thanhvinh@gmail.com', 'Không ghi chú', NULL, NULL),
(19, 'Thanh Vình', 'Cần Thơ', '012345678', 'thanhvinh@gmail.com', 'Không ghi chú', NULL, NULL),
(20, 'Thanh Vình', 'Cần Thơ', '012345678', 'thanhvinh@gmail.com', 'Không ghi chú', NULL, NULL),
(21, 'Thanh Vình', 'Cần Thơ', '0123456789', 'thanhvinh@gmail.com', 'Không ghi chú', NULL, NULL),
(22, 'Thanh Vình', 'Cần Thơ', '0123456789', 'thanhvinh@gmail.com', 'Không ghi chú', NULL, NULL),
(23, 'Thanh Vình', 'Cần Thơ', '012345678', 'thanhvinh@gmail.com', 'Không ghi chú', NULL, NULL);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_brand_product`
--
ALTER TABLE `tbl_brand_product`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_brand_product`
--
ALTER TABLE `tbl_brand_product`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
