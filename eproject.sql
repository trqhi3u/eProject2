-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2020 lúc 01:48 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `eproject`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Panasonic'),
(2, 'Daikin'),
(3, 'Samsung'),
(4, 'Toshiba'),
(5, 'Beko');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `orderdetail_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `orderdetail_quantity` float NOT NULL,
  `orderdetail_price` float NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`orderdetail_id`, `product_id`, `orderdetail_quantity`, `orderdetail_price`, `order_id`) VALUES
(52, 1, 1, 29.99, 1603185643),
(53, 2, 2, 15.19, 1603185643),
(54, 3, 3, 99.99, 1603185643),
(55, 4, 4, 79.99, 1603185643),
(56, 8, 5, 39.99, 1603185643),
(57, 7, 6, 29.99, 1603185643),
(58, 6, 7, 19.99, 1603185643),
(59, 1, 2, 29.99, 1603187064),
(60, 2, 5, 15.19, 1603187064),
(61, 54, 5, 1500, 1603270664);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `datecreate` text NOT NULL,
  `order_address` text NOT NULL,
  `order_name` text NOT NULL,
  `order_phone` text NOT NULL,
  `order_email` text NOT NULL,
  `total_price` float NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `datecreate`, `order_address`, `order_name`, `order_phone`, `order_email`, `total_price`, `status`) VALUES
(1603185643, '2020-10-20 11:20:43', 'Ha Noi', 'Thinh', '0333374982', 'a@gmail.com', 1200.12, 'Waiting'),
(1603187064, '2020-10-20 11:44:24', 'Lĩnh Nam', 'Trang ', '03337', 'a@gmail.com', 135.93, 'Waiting'),
(1603270664, '2020-10-21 10:57:44', '313 Lĩnh Nam', 'Chú Thịnh', '0333374982', 'a@gmail.com', 7500, 'Waiting');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text COLLATE utf8_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_word` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `cat_id`, `product_price`, `product_quantity`, `product_description`, `product_image`, `product_word`) VALUES
(1, 'Điều hòa 1 chiều Inverter 9000BTU Panasonic CS-PU9WKH-8M', 0, 660, 1000, 'Máy lạnh Inverter duy trì nhiệt độ ổn định, tiết kiệm điện tối ưu.<br> Làm lạnh nhanh gần như ngay lập tức với tính năng Powerful.<br> Nâng cao hiệu quả tiết kiệm điện hơn với chế độ một người dùng Econo.<br> Độc đáo với chế độ gió dễ chịu ngăn ngừa nguy cơ cảm lạnh cho người già và trẻ nhỏ.<br> Chế độ hút ẩm giúp căn phòng của bạn luôn khô ráo, dễ chịu vào những ngày mưa ẩm ướt.<br>', 'daikin.jpg', 'description.docx'),
(2, 'Điều hòa 1 chiều Inverter 12000BTU Panasonic CS-PU12WKH-8M', 1, 700, 1000, 'Công nghệ lọc không khí độc quyền Nanoe-G cho bầu không khí sạch và tươi mát hơn.<br>\r\nCông nghệ Inverter và eco tích hợp AI giúp tiết kiệm điện tối đa và hơi lạnh lan tỏa đều.<br>\r\nChế độ làm lạnh nhanh Powerful, Chế độ hút ẩm giúp phòng luôn khô ráo.<br>\r\nTiện lợi hơn với chế độ hẹn giờ bật/tắt máy, Sử dung Gas R32<br>', 'panasonic2.jpg', 'description.docx'),
(3, 'Điều hòa Panasonic 2 chiều Inverter 12000BTU CS-YZ12WKH-8', 1, 800, 1000, 'Công nghệ lọc không khí độc quyền Nanoe-G cho bầu không khí sạch và tươi mát hơn.<br>\r\nCông nghệ Inverter và eco tích hợp AI giúp tiết kiệm điện tối đa và hơi lạnh lan tỏa đều.<br>\r\nChế độ làm lạnh nhanh Powerful, Chế độ hút ẩm giúp phòng luôn khô ráo.<br>\r\nTiện lợi hơn với chế độ hẹn giờ bật/tắt máy, Sử dung Gas R32<br>', 'panasonic3.jpg', 'description.docx'),
(4, 'Điều hòa Panasonic 2 chiều Inverter CS-YZ9UKH-8 9.000BTU', 1, 900, 1000, 'Công nghệ lọc không khí độc quyền Nanoe-G cho bầu không khí sạch và tươi mát hơn.<br>\r\nCông nghệ Inverter và eco tích hợp AI giúp tiết kiệm điện tối đa và hơi lạnh lan tỏa đều.<br>\r\nChế độ làm lạnh nhanh Powerful, Chế độ hút ẩm giúp phòng luôn khô ráo.<br>\r\nTiện lợi hơn với chế độ hẹn giờ bật/tắt máy, Sử dung Gas R32<br>', 'panasonic4.jpg', 'description.docx'),
(6, 'Điều hòa Daikin 1 chiều Inverter 8.500 BTU ATKA25UAVMV', 2, 450, 1000, 'Máy lạnh Inverter duy trì nhiệt độ ổn định, tiết kiệm điện tối ưu.<br>\r\nLàm lạnh nhanh gần như ngay lập tức với tính năng Powerful.<br>\r\nNâng cao hiệu quả tiết kiệm điện hơn với chế độ một người dùng Econo.<br>\r\nĐộc đáo với chế độ gió dễ chịu ngăn ngừa nguy cơ cảm lạnh cho người già và trẻ nhỏ.<br>\r\nChế độ hút ẩm giúp căn phòng của bạn luôn khô ráo, dễ chịu vào những ngày mưa ẩm ướt.<br>', 'daikin5.jpg', 'description.docx'),
(7, 'Điều hòa Daikin 1 chiều Inverter 11.900 BTU ATKA35UAVMV', 2, 290, 1000, 'Máy lạnh Inverter duy trì nhiệt độ ổn định, tiết kiệm điện tối ưu.<br>\r\nLàm lạnh nhanh gần như ngay lập tức với tính năng Powerful.<br>\r\nNâng cao hiệu quả tiết kiệm điện hơn với chế độ một người dùng Econo.<br>\r\nĐộc đáo với chế độ gió dễ chịu ngăn ngừa nguy cơ cảm lạnh cho người già và trẻ nhỏ.<br>\r\nChế độ hút ẩm giúp căn phòng của bạn luôn khô ráo, dễ chịu vào những ngày mưa ẩm ướt.<br>', 'daikin2.jpg', 'description.docx'),
(8, 'Điều hòa Daikin 1 chiều 9000BTU ATF25UV1V', 2, 390, 1000, 'Máy lạnh Inverter duy trì nhiệt độ ổn định, tiết kiệm điện tối ưu.<br>\r\nLàm lạnh nhanh gần như ngay lập tức với tính năng Powerful.<br>\r\nNâng cao hiệu quả tiết kiệm điện hơn với chế độ một người dùng Econo.<br>\r\nĐộc đáo với chế độ gió dễ chịu ngăn ngừa nguy cơ cảm lạnh cho người già và trẻ nhỏ.<br>\r\nChế độ hút ẩm giúp căn phòng của bạn luôn khô ráo, dễ chịu vào những ngày mưa ẩm ướt.<br>', 'daikin3.jpg', 'description.docx'),
(9, 'Điều hòa Samsung 1 chiều Inverter 18000BTU AR18TYHYCWKNSV', 3, 990, 1000, 'Công nghệ Inverter, Loại bỏ bụi siêu mụn, các tác nhân gây dị ứng<br>\r\nLuồng khí lạnh dịu nhẹ nhờ công nghệ Wind Free<br>\r\nGiữ căn phòng luôn khô ráo, thoải mái với chế độ hút ẩm<br>', 'samsung.jpg', 'description.docx'),
(10, 'Điều hòa Samsung Digital Inverter AR18RYFTAURNSV 1 chiều 18.000BTU\r\n', 3, 199, 1000, 'Công nghệ Inverter, Loại bỏ bụi siêu mụn, các tác nhân gây dị ứng<br>\r\nLuồng khí lạnh dịu nhẹ nhờ công nghệ Wind Free<br>\r\nGiữ căn phòng luôn khô ráo, thoải mái với chế độ hút ẩm<br>', 'samsung1.jpg', 'description.docx'),
(11, 'Điều hòa Samsung Digital Inverter AR24RYFTAURNSV 1 chiều 21.500BTU\r\n', 3, 870, 1000, 'Công nghệ Inverter, Loại bỏ bụi siêu mụn, các tác nhân gây dị ứng<br>\r\nLuồng khí lạnh dịu nhẹ nhờ công nghệ Wind Free<br>\r\nGiữ căn phòng luôn khô ráo, thoải mái với chế độ hút ẩm<br>', 'samsung2.jpg', 'description.docx'),
(12, 'Điều hòa Samsung Wind-Free Digital Inverter AR24NVFXAWKNSV 1 chiều 24.000BTU\r\n\r\n', 3, 2000, 1000, 'Công nghệ Inverter, Loại bỏ bụi siêu mụn, các tác nhân gây dị ứng<br>\r\nLuồng khí lạnh dịu nhẹ nhờ công nghệ Wind Free<br>\r\nGiữ căn phòng luôn khô ráo, thoải mái với chế độ hút ẩm<br>', 'samsung3.jpg', 'description.docx'),
(37, 'Điều hòa Panasonic 1 chiều Inverter U24VKH-8 24.000BTU', 1, 950, 1000, 'Công nghệ lọc không khí độc quyền Nanoe-G cho bầu không khí sạch và tươi mát hơn.<br>\r\nCông nghệ Inverter và eco tích hợp AI giúp tiết kiệm điện tối đa và hơi lạnh lan tỏa đều.<br>\r\nChế độ làm lạnh nhanh Powerful, Chế độ hút ẩm giúp phòng luôn khô ráo.<br>\r\nTiện lợi hơn với chế độ hẹn giờ bật/tắt máy, Sử dung Gas R32<br>', 'panasonic5.jpg', 'description.docx'),
(38, 'Điều hòa Panasonic 1 chiều inverter XU12UKH-8 12.000BTU', 1, 1000, 1000, 'Công nghệ lọc không khí độc quyền Nanoe-G cho bầu không khí sạch và tươi mát hơn.<br> Công nghệ Inverter và eco tích hợp AI giúp tiết kiệm điện tối đa và hơi lạnh lan tỏa đều.<br> Chế độ làm lạnh nhanh Powerful, Chế độ hút ẩm giúp phòng luôn khô ráo.<br> Tiện lợi hơn với chế độ hẹn giờ bật/tắt máy, Sử dung Gas R32<br>', 'panasonic6.jpg', 'description.docx'),
(39, 'Điều hòa Panasonic 1 chiều Inverter U12VKH-8 12.000BTU', 1, 1200, 1000, 'Công nghệ lọc không khí độc quyền Nanoe-G cho bầu không khí sạch và tươi mát hơn.<br> Công nghệ Inverter và eco tích hợp AI giúp tiết kiệm điện tối đa và hơi lạnh lan tỏa đều.<br> Chế độ làm lạnh nhanh Powerful, Chế độ hút ẩm giúp phòng luôn khô ráo.<br> Tiện lợi hơn với chế độ hẹn giờ bật/tắt máy, Sử dung Gas R32<br>', 'panasonic7.jpg', 'description.docx'),
(40, 'Điều hòa Panasonic 2 chiều Inverter CS-YZ18UKH-8 18.000BTU', 1, 1300, 1000, 'Công nghệ lọc không khí độc quyền Nanoe-G cho bầu không khí sạch và tươi mát hơn.<br> Công nghệ Inverter và eco tích hợp AI giúp tiết kiệm điện tối đa và hơi lạnh lan tỏa đều.<br> Chế độ làm lạnh nhanh Powerful, Chế độ hút ẩm giúp phòng luôn khô ráo.<br> Tiện lợi hơn với chế độ hẹn giờ bật/tắt máy, Sử dung Gas R32<br>', 'panasonic1.jpg', 'description.docx'),
(41, 'Điều hòa Panasonic 1 chiều N24UKH-8 24.000BTU ', 1, 1500, 1000, 'Công nghệ lọc không khí độc quyền Nanoe-G cho bầu không khí sạch và tươi mát hơn.<br> Công nghệ Inverter và eco tích hợp AI giúp tiết kiệm điện tối đa và hơi lạnh lan tỏa đều.<br> Chế độ làm lạnh nhanh Powerful, Chế độ hút ẩm giúp phòng luôn khô ráo.<br> Tiện lợi hơn với chế độ hẹn giờ bật/tắt máy, Sử dung Gas R32<br>', 'panasonic3.jpg', 'description.docx'),
(42, 'Điều hòa Panasonic 1 chiều Inverter U24VKH-8 24.000BTU', 1, 2000, 1000, 'Công nghệ lọc không khí độc quyền Nanoe-G cho bầu không khí sạch và tươi mát hơn.<br> Công nghệ Inverter và eco tích hợp AI giúp tiết kiệm điện tối đa và hơi lạnh lan tỏa đều.<br> Chế độ làm lạnh nhanh Powerful, Chế độ hút ẩm giúp phòng luôn khô ráo.<br> Tiện lợi hơn với chế độ hẹn giờ bật/tắt máy, Sử dung Gas R32<br>', 'panasonic2.jpg', 'description.docx'),
(43, 'Điều hòa Daikin 1 chiều inverter FTKQ35SAVMV 12000BTU\r\n', 2, 450, 1000, 'Máy lạnh Inverter duy trì nhiệt độ ổn định, tiết kiệm điện tối ưu.<br> Làm lạnh nhanh gần như ngay lập tức với tính năng Powerful.<br> Nâng cao hiệu quả tiết kiệm điện hơn với chế độ một người dùng Econo.<br> Độc đáo với chế độ gió dễ chịu ngăn ngừa nguy cơ cảm lạnh cho người già và trẻ nhỏ.<br> Chế độ hút ẩm giúp căn phòng của bạn luôn khô ráo, dễ chịu vào những ngày mưa ẩm ướt.<br>', 'daikin4.jpg', 'description.docx'),
(44, 'Điều hòa 1 chiều Daikin FTC50NV1V- 18.000BTU\r\n', 2, 1300, 1000, 'Máy lạnh Inverter duy trì nhiệt độ ổn định, tiết kiệm điện tối ưu.<br> Làm lạnh nhanh gần như ngay lập tức với tính năng Powerful.<br> Nâng cao hiệu quả tiết kiệm điện hơn với chế độ một người dùng Econo.<br> Độc đáo với chế độ gió dễ chịu ngăn ngừa nguy cơ cảm lạnh cho người già và trẻ nhỏ.<br> Chế độ hút ẩm giúp căn phòng của bạn luôn khô ráo, dễ chịu vào những ngày mưa ẩm ướt.<br>', 'daikin5.jpg', 'description.docx'),
(45, 'Điều hòa Daikin 1 chiều Inverter 11.950BTU ATKC35UAVMV\r\n', 2, 870, 1000, 'Máy lạnh Inverter duy trì nhiệt độ ổn định, tiết kiệm điện tối ưu.<br> Làm lạnh nhanh gần như ngay lập tức với tính năng Powerful.<br> Nâng cao hiệu quả tiết kiệm điện hơn với chế độ một người dùng Econo.<br> Độc đáo với chế độ gió dễ chịu ngăn ngừa nguy cơ cảm lạnh cho người già và trẻ nhỏ.<br> Chế độ hút ẩm giúp căn phòng của bạn luôn khô ráo, dễ chịu vào những ngày mưa ẩm ướt.<br>', 'daikin2.jpg', 'description.docx'),
(46, 'Điều hòa Daikin 1 chiều Inverter 18.000BTU FTKA50UAVMV', 2, 1290, 1000, 'Máy lạnh Inverter duy trì nhiệt độ ổn định, tiết kiệm điện tối ưu.<br> Làm lạnh nhanh gần như ngay lập tức với tính năng Powerful.<br> Nâng cao hiệu quả tiết kiệm điện hơn với chế độ một người dùng Econo.<br> Độc đáo với chế độ gió dễ chịu ngăn ngừa nguy cơ cảm lạnh cho người già và trẻ nhỏ.<br> Chế độ hút ẩm giúp căn phòng của bạn luôn khô ráo, dễ chịu vào những ngày mưa ẩm ướt.<br>', 'daikin3.jpg', 'description.docx'),
(47, 'Điều hòa Daikin 1 chiều Inverter 18.000BTU FTKA50UAVMV', 2, 1300, 1000, 'Máy lạnh Inverter duy trì nhiệt độ ổn định, tiết kiệm điện tối ưu.<br> Làm lạnh nhanh gần như ngay lập tức với tính năng Powerful.<br> Nâng cao hiệu quả tiết kiệm điện hơn với chế độ một người dùng Econo.<br> Độc đáo với chế độ gió dễ chịu ngăn ngừa nguy cơ cảm lạnh cho người già và trẻ nhỏ.<br> Chế độ hút ẩm giúp căn phòng của bạn luôn khô ráo, dễ chịu vào những ngày mưa ẩm ướt.<br>', 'daikin1.jpg', 'description.docx'),
(48, 'Điều hòa Daikin 2 chiều inverter FTHF60RVMV- 22000BTU\r\n\r\n', 2, 1500, 1000, 'Máy lạnh Inverter duy trì nhiệt độ ổn định, tiết kiệm điện tối ưu.<br> Làm lạnh nhanh gần như ngay lập tức với tính năng Powerful.<br> Nâng cao hiệu quả tiết kiệm điện hơn với chế độ một người dùng Econo.<br> Độc đáo với chế độ gió dễ chịu ngăn ngừa nguy cơ cảm lạnh cho người già và trẻ nhỏ.<br> Chế độ hút ẩm giúp căn phòng của bạn luôn khô ráo, dễ chịu vào những ngày mưa ẩm ướt.<br>', 'daikin4.jpg', 'description.docx'),
(49, 'Điều hòa 2 chiều Inverter Daikin FTXS60GVMV/RXS60GVMV, 21.800BTU\r\n\r\n', 2, 1100, 1000, 'Máy lạnh Inverter duy trì nhiệt độ ổn định, tiết kiệm điện tối ưu.<br> Làm lạnh nhanh gần như ngay lập tức với tính năng Powerful.<br> Nâng cao hiệu quả tiết kiệm điện hơn với chế độ một người dùng Econo.<br> Độc đáo với chế độ gió dễ chịu ngăn ngừa nguy cơ cảm lạnh cho người già và trẻ nhỏ.<br> Chế độ hút ẩm giúp căn phòng của bạn luôn khô ráo, dễ chịu vào những ngày mưa ẩm ướt.<br>', 'daikin5.jpg', 'description.docx'),
(50, 'Điều hòa Samsung Wind-Free 1 chiều Inverter 9400BTU AR10TYGCDWKNSV', 3, 879, 1000, 'Công nghệ Inverter, Loại bỏ bụi siêu mụn, các tác nhân gây dị ứng<br> Luồng khí lạnh dịu nhẹ nhờ công nghệ Wind Free<br> Giữ căn phòng luôn khô ráo, thoải mái với chế độ hút ẩm<br>', 'samsung3.jpg', 'description.docx'),
(51, 'Điều hòa Samsung 1 chiều Inverter 21500BTU AR24TYHYCWKNSV', 3, 1100, 1000, 'Công nghệ Inverter, Loại bỏ bụi siêu mụn, các tác nhân gây dị ứng<br> Luồng khí lạnh dịu nhẹ nhờ công nghệ Wind Free<br> Giữ căn phòng luôn khô ráo, thoải mái với chế độ hút ẩm<br>', 'samsung3.jpg', 'description.docx'),
(52, 'Điều hòa Samsung Wind-Free 1 chiều Inverter 18000BTU AR18TYGCDWKNSV', 3, 598, 1000, 'Công nghệ Inverter, Loại bỏ bụi siêu mụn, các tác nhân gây dị ứng<br> Luồng khí lạnh dịu nhẹ nhờ công nghệ Wind Free<br> Giữ căn phòng luôn khô ráo, thoải mái với chế độ hút ẩm<br>', 'samsung2.jpg', 'description.docx'),
(53, 'Điều hòa Samsung Wind-Free 1 chiều Inverter 21500BTU AR24TYGCDWKNSV', 3, 1150, 1000, 'Công nghệ Inverter, Loại bỏ bụi siêu mụn, các tác nhân gây dị ứng<br> Luồng khí lạnh dịu nhẹ nhờ công nghệ Wind Free<br> Giữ căn phòng luôn khô ráo, thoải mái với chế độ hút ẩm<br>', 'samsung1.jpg', 'description.docx'),
(54, 'Điều hòa Samsung Wind-Free 1 chiều Inverter 21500BTU AR24TYCACWKNSV', 3, 1500, 1000, 'Công nghệ Inverter, Loại bỏ bụi siêu mụn, các tác nhân gây dị ứng<br> Luồng khí lạnh dịu nhẹ nhờ công nghệ Wind Free<br> Giữ căn phòng luôn khô ráo, thoải mái với chế độ hút ẩm<br>', 'samsung.jpg', 'description.docx'),
(55, 'Điều hòa Samsung Wind-Free Digital Inverter AR13NVFXAWKNSV 1 chiều 12.000BTU\r\n', 3, 550, 1000, 'Công nghệ Inverter, Loại bỏ bụi siêu mụn, các tác nhân gây dị ứng<br> Luồng khí lạnh dịu nhẹ nhờ công nghệ Wind Free<br> Giữ căn phòng luôn khô ráo, thoải mái với chế độ hút ẩm<br>', 'samsung1.jpg', 'description.docx');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phonenumber`, `level`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 333374982, 1),
(2, 'user1', '123456', 'user1@gmail.com', 333374982, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`orderdetail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `orderdetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
