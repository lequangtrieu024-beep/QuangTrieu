-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 01, 2026 lúc 01:00 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(4, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1),
(5, 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(1, 'test', '  Chào bạn', 'Chào Bạn ', 4, 1, '1772000957_received_671494109111734.jpeg'),
(7, 'test 1', '<p>Chao</p>\r\n', '<p><a href=\"javascript:void(0)\" onclick=\"return shareFace();\"><img alt=\"Chia sẻ Facebook\" src=\"https://cdnstatic.baotintuc.vn/web_images/iconfb1.png\" style=\"width:24px\" /></a><a href=\"https://button-share.zalo.me/share_external?d=https://baotintuc.vn/y-te/dot-pha-vacxin-xit-mui-van-nang-chong-covid-cum-viem-phoi-va-di-ung-20260224063824026.htm\" target=\"_blank\"><img alt=\"Chia sẻ Zalo\" src=\"https://cdnstatic.baotintuc.vn/web_images/iconzl1.png\" style=\"width:24px\" /></a></p>\r\n\r\n<p>Tuy nhi&ecirc;n, c&aacute;c nh&agrave; khoa học tại Stanford Medicine (Mỹ) vừa c&ocirc;ng bố một bước tiến mang t&iacute;nh bước ngoặt tr&ecirc;n tạp ch&iacute; khoa học Science. Họ đ&atilde; ph&aacute;t triển th&agrave;nh c&ocirc;ng một loại vắc-xin thử nghiệm dạng xịt mũi, gi&uacute;p bảo vệ cơ thể trước h&agrave;ng loạt virus, vi khuẩn đường h&ocirc; hấp v&agrave; thậm ch&iacute; cả c&aacute;c t&aacute;c nh&acirc;n g&acirc;y dị ứng trong nhiều th&aacute;ng liền.</p>\r\n\r\n<p>Kể từ cuối thế kỷ 18, c&aacute;c loại vắc-xin truyền thống đều hoạt động dựa tr&ecirc;n nguy&ecirc;n tắc t&iacute;nh đặc hiệu kh&aacute;ng nguy&ecirc;n, theo đ&oacute; giới thiệu cho hệ miễn dịch một phần nhận diện của mầm bệnh, chẳng hạn như protein gai của SARS-CoV-2, để cơ thể tấn c&ocirc;ng khi gặp virus thật. Tiến sĩ Bali Pulendran, t&aacute;c giả cấp cao của nghi&ecirc;n cứu, cho biết: &quot;Đ&oacute; l&agrave; m&ocirc; h&igrave;nh của ng&agrave;nh nghi&ecirc;n cứu vắc-xin trong suốt 230 năm qua&quot;. Tuy nhi&ecirc;n, th&aacute;ch thức lớn nhất l&agrave; c&aacute;c mầm bệnh biến đổi rất nhanh. &Ocirc;ng nhấn mạnh: &quot;Ng&agrave;y c&agrave;ng c&oacute; nhiều bằng chứng r&otilde; r&agrave;ng cho thấy nhiều mầm bệnh c&oacute; khả năng đột biến nhanh ch&oacute;ng&hellip; một loại virus c&oacute; thể thay đổi c&aacute;c kh&aacute;ng nguy&ecirc;n tr&ecirc;n bề mặt của n&oacute;&quot;. Đ&oacute; l&agrave; l&yacute; do ch&uacute;ng ta li&ecirc;n tục cần c&aacute;c mũi ti&ecirc;m nhắc lại h&agrave;ng năm.</p>\r\n\r\n<p>Pause</p>\r\n\r\n<p>Mute</p>\r\n\r\n<p>Remaining Time&nbsp;-13:24</p>\r\n\r\n<p><a href=\"https://unibots.com/\" target=\"_blank\"><img alt=\"Unibots.com\" src=\"https://cdn.unibotscdn.com/ubplayer/logo/player_logo.svg\" /></a></p>\r\n\r\n<p>Thay v&igrave; nhắm v&agrave;o một mầm bệnh cụ thể, vắc-xin xịt mũi mới hoạt động bằng c&aacute;ch bắt chước c&aacute;c t&iacute;n hiệu giao tiếp giữa c&aacute;c tế b&agrave;o miễn dịch, từ đ&oacute; đ&aacute;nh thức v&agrave; li&ecirc;n kết cả hai hệ thống ph&ograve;ng thủ ch&iacute;nh của cơ thể: miễn dịch bẩm sinh v&agrave; miễn dịch th&iacute;ch ứng. Hệ miễn dịch bẩm sinh phản ứng rộng r&atilde;i với c&aacute;c mối đe dọa ngay trong v&agrave;i ph&uacute;t, nhưng thường chỉ duy tr&igrave; hoạt động trong v&agrave;i ng&agrave;y. Tiến sĩ Pulendran nhận định: &quot;Điều đ&aacute;ng ch&uacute; &yacute; về hệ thống bẩm sinh l&agrave; n&oacute; c&oacute; thể bảo vệ chống lại một loạt c&aacute;c vi sinh vật kh&aacute;c nhau&quot;. Bằng c&aacute;ch bổ sung một loại protein v&ocirc; hại để thu h&uacute;t tế b&agrave;o T đến phổi, vắc-xin đ&atilde; tạo ra c&aacute;c t&iacute;n hiệu li&ecirc;n tục, gi&uacute;p hệ miễn dịch bẩm sinh duy tr&igrave; trạng th&aacute;i &quot;cảnh gi&aacute;c cao độ&quot; k&eacute;o d&agrave;i tới ba th&aacute;ng.</p>\r\n\r\n<p>Trong c&aacute;c thử nghiệm tr&ecirc;n chuột, những con vật được xịt mũi đ&atilde; được bảo vệ an to&agrave;n trước SARS-CoV-2, c&aacute;c loại virus corona kh&aacute;c, cũng như c&aacute;c vi khuẩn g&acirc;y nhiễm tr&ugrave;ng phổ biến như Staphylococcus aureus v&agrave; Acinetobacter baumannii. Lượng virus trong phổi của ch&uacute;ng giảm tới 700 lần. &Ocirc;ng Pulendran giải th&iacute;ch cơ chế ph&ograve;ng thủ k&eacute;p n&agrave;y: &quot;Hệ thống miễn dịch ở phổi sẵn s&agrave;ng v&agrave; cảnh gi&aacute;c đến mức n&oacute; c&oacute; thể khởi động c&aacute;c phản ứng th&iacute;ch ứng điển h&igrave;nh - c&aacute;c tế b&agrave;o T đặc hiệu với virus v&agrave; kh&aacute;ng thể - trong thời gian ngắn nhất l&agrave; ba ng&agrave;y, đ&acirc;y l&agrave; một khoảng thời gian cực kỳ ngắn. Th&ocirc;ng thường, ở một con chuột kh&ocirc;ng được ti&ecirc;m vắc-xin, phải mất hai tuần&quot;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kh&ocirc;ng dừng lại ở việc chống lại virus v&agrave; vi khuẩn, nh&oacute;m nghi&ecirc;n cứu tiếp tục mở rộng thử nghiệm. Tiến sĩ Pulendran chia sẻ: &quot;Sau đ&oacute; ch&uacute;ng t&ocirc;i nghĩ, &#39;Điều g&igrave; kh&aacute;c c&oacute; thể đi v&agrave;o phổi?&#39; C&aacute;c chất g&acirc;y dị ứng&quot;. Khi tiếp x&uacute;c với mạt bụi nh&agrave;, một nguy&ecirc;n nh&acirc;n phổ biến g&acirc;y hen suyễn, những con chuột chưa ti&ecirc;m ph&ograve;ng xuất hiện phản ứng dị ứng mạnh v&agrave; t&iacute;ch tụ chất nhầy đường thở. Ngược lại, chuột đ&atilde; được xịt mũi c&oacute; đường thở th&ocirc;ng tho&aacute;ng v&agrave; phản ứng dị ứng yếu hơn hẳn.</p>\r\n\r\n<p>Đ&aacute;nh gi&aacute; về th&agrave;nh quả n&agrave;y, tiến sĩ Pulendran khẳng định: &quot;T&ocirc;i nghĩ những g&igrave; ch&uacute;ng ta c&oacute; l&agrave; một loại vắc-xin vạn năng chống lại c&aacute;c mối đe dọa đường h&ocirc; hấp đa dạng&quot;. Nh&oacute;m nghi&ecirc;n cứu đang chuẩn bị cho c&aacute;c thử nghiệm an to&agrave;n Giai đoạn 1 tr&ecirc;n người. Nếu c&aacute;c thử nghiệm l&acirc;m s&agrave;ng th&agrave;nh c&ocirc;ng v&agrave; c&oacute; đủ nguồn t&agrave;i trợ, loại vắc-xin h&ocirc; hấp n&agrave;y c&oacute; thể ra mắt trong 5 đến 7 năm tới. &Ocirc;ng kết luận đầy kỳ vọng: &quot;H&atilde;y tưởng tượng việc nhận một liều xịt mũi v&agrave;o những th&aacute;ng m&ugrave;a Thu gi&uacute;p bảo vệ bạn khỏi tất cả c&aacute;c loại virus đường h&ocirc; hấp bao gồm COVID-19, c&uacute;m, virus hợp b&agrave;o h&ocirc; hấp v&agrave; cảm lạnh th&ocirc;ng thường, cũng như vi&ecirc;m phổi do vi khuẩn v&agrave; c&aacute;c chất g&acirc;y dị ứng đầu m&ugrave;a xu&acirc;n. Điều đ&oacute; sẽ l&agrave;m biến đổi thực h&agrave;nh y khoa&quot;.</p>\r\n', 5, 1, '1772009686_489730784_3978269762441733_2652812272219525903_n.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL,
  `cart_payment` varchar(50) NOT NULL,
  `cart_shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`, `cart_payment`, `cart_shipping`) VALUES
(16, 11, '9669', 0, '2026-03-01 16:45:15', 'tien mat', 8),
(17, 11, '4841', 0, '2026-03-01', 'tien mat', 8),
(18, 11, '1609', 0, '2026-03-01', 'tien mat', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(14, '9669', 19, 4),
(15, '4841', 19, 1),
(16, '1609', 18, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(1, 'Lê Quang Triệu', 'lequangtrieu024@gmail.com', 'Nam định', 'e10adc3949ba59abbe56e057f20f883e', '0359017235'),
(8, 'Lê Quang Triệu 1', 'lequangtrieu025@gmail.com', 'Nam định 1', 'e10adc3949ba59abbe56e057f20f883e', '0359017235'),
(9, 'Dương', 'duong@gmail.com', 'Nam định', '25d55ad283aa400af464c76d713c07ad', '003333333'),
(10, 'Lê Quang Triệu', 'lequangtrieu026@gmail.com', 'Yên cường', 'e10adc3949ba59abbe56e057f20f883e', '0359017235678'),
(11, 'Lê Đức Dương', 'leducduong@gmail.com', 'Mậu lưc - yên cường - Ninh Bình', 'e10adc3949ba59abbe56e057f20f883e', '0359017235');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(1, 'Kính cường lực ', 1),
(3, 'ốp lưng apple', 2),
(6, 'Tai Nghe', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(4, 'Tin kinh tế', 2),
(5, 'Tin thời sự', 3),
(7, 'Tin bóng đá', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<p><strong>1. Số điện thoại : 0359017235&nbsp;<br />\r\n<br />\r\n2. Zalo : <a href=\"http://zalo.me/0359017235\">0359017235</a> L&ecirc; Quang Triệu&nbsp;<br />\r\n<br />\r\n3.Fb :<a href=\"http://www.facebook.com/profile.php?id=61552037403121\"> Le Quang Trieu&nbsp;</a><br />\r\n<br />\r\nLi&ecirc;n hệ với ch&uacute;ng t&ocirc;i để được hỗ trợ nhanh nhất c&oacute; thể&nbsp;</strong><br />\r\n&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(250) NOT NULL,
  `soluong` text NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(12, 'Tai Nghe Có Dây Màu Trắng Và đen Của Razer', '1', '1000000', '1', '1770535680_pexels-pixabay-159472.jpg', 'đẹp ', 'Có Dây Màu Trắng Và đen Của Razer', 1, 6),
(13, 'Điện thoại ', '2', '15000000', '2', '1770535845_pexels-keifercosta-11216260.jpg', 'đệp', '', 1, 5),
(14, 'anh', '3', '12000', '1', '1770540786_pexels-keifercosta-11216260.jpg', '', '', 1, 4),
(15, 'anh 1', '4', '150000', '2', '1770540841_pexels-pixabay-159472.jpg', '', '', 1, 3),
(16, 'anh 2', '5', '130000', '1', '1770540862_pexels-keifercosta-11216260.jpg', '', '', 1, 1),
(17, 'anh 3', '6', '1400000', '3', '1770540894_pexels-pixabay-159472.jpg', '', '', 1, 6),
(18, 'anh 4', '7', '1200000', '1', '1770540920_pexels-pixabay-159472.jpg', '', '', 1, 6),
(19, 'test', '8', '1000000', '2', '1772015280_Screenshot 2026-02-25 171740.png', '<ol>\r\n	<li><strong>dsssssssssssssssssssssssssssssdsdsdsdsddsdsdddddsdsdsdsdsds</strong></li>\r\n	<li><strong>dsssssssssssssssssssssssssssssdsdsdsdsddsdsdddddsdsdsdsdsds</strong></li>\r\n	<li><strong>dsssssssssssssssssssssssssssssdsdsdsdsddsdsdddddsdsdsdsdsds<', '<p>dsdsdsdsdsdsdsdsdsdsddsdsdsdssdsdsdsdsdsdsdsdsdssdsdsdsdsdsdsddsdsdsdsdsdsdsdsd</p>\r\n', 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(255) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangky`) VALUES
(3, 'triệu lê quang', '0359017235', 'nam định', 'hello', 1),
(6, 'Lê Quang Triệu', '0333950337', 'Nam định', 'Chào bạn hello', 10),
(8, 'Lê Quang Triệu ', '0333333333', 'Mậu lực -yên cường', 'Chào', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(11, '2026-03-01', 2, '7000000', 6),
(12, '2026-03-03', 3, '12000', 10);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
