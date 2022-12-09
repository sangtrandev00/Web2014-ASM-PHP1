-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 03:18 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asm_myclass`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(4) NOT NULL,
  `idsanpham` int(4) NOT NULL,
  `iddonhang` int(4) NOT NULL,
  `soluong` int(11) NOT NULL DEFAULT 1,
  `dongia` double(10,0) NOT NULL DEFAULT 0,
  `tensp` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `idsanpham`, `iddonhang`, `soluong`, `dongia`, `tensp`, `hinhanh`) VALUES
(30, 10, 18, 4, 14, 'Áo khoác dù thể thao – Nike Sportswear Essential Windrunner', './assets/images/esc-jumper-m3zZGG-247x296.jpg'),
(31, 6, 18, 3, 14, 'Quần short nam thể thao Movement 7″ co giãn', './assets/images/DSC01693-copyngocxxan_61-683x1024.png'),
(32, 4, 19, 6, 56, 'Giày chạy bộ – Nike Air Zoom Pegasus 39 Shield', './assets/images/air-zoom-pegasus-39-shield-womens-weatherized-road-running-shoes-dXsmXn-3-768x960.jpg'),
(33, 11, 19, 4, 9, 'Quần skinny – Women’s Mid-Rise Leggings', './assets/images/one-mid-rise-7-8-graphic-leggings-fFRFtt.jpg'),
(34, 9, 20, 1, 26, 'Áo thun thể thao nam Recycle Active V1', './assets/images/Ao-thun-the-thao-nam-Recycle-Active-V1-xanh-2.jpg'),
(35, 6, 20, 2, 14, 'Quần short nam thể thao Movement 7″ co giãn', './assets/images/DSC01693-copyngocxxan_61-683x1024.png'),
(36, 4, 21, 3, 56, 'Giày chạy bộ – Nike Air Zoom Pegasus 39 Shield', './assets/images/air-zoom-pegasus-39-shield-womens-weatherized-road-running-shoes-dXsmXn-3-768x960.jpg'),
(37, 6, 22, 4, 14, 'Quần short nam thể thao Movement 7″ co giãn', './assets/images/DSC01693-copyngocxxan_61-683x1024.png'),
(38, 8, 22, 5, 24, 'Áo khoác gió thể thao HeiQ ViroBlock, chống UV & trượt nước', './assets/images/heiQ_reu_xam_xanh_2-695x1024.png'),
(39, 1, 23, 4, 20, 'Áo thun nữ thể thao Nike SportWear Collection Essentials', './assets/images/sportswear-collection-essentials-womens-sleeveless-mock-top-HnV565-2-768x960.jpg'),
(40, 7, 23, 3, 32, 'Outlet – Áo Tank top thể thao nam thoáng khí', './assets/images/DSC04707-copy-695x1024.png'),
(41, 4, 24, 4, 56, 'Giày chạy bộ – Nike Air Zoom Pegasus 39 Shield', './assets/images/air-zoom-pegasus-39-shield-womens-weatherized-road-running-shoes-dXsmXn-3-768x960.jpg'),
(42, 12, 24, 3, 22, 'Áo lót thể thao – Nike Dri-FIT Alate Coverage', './assets/images/dri-fit-alate-coverage-light-support-padded-sports-bra-bNHtWb.jpg'),
(43, 1, 25, 1, 20, 'Áo thun nữ thể thao Nike SportWear Collection Essentials', './assets/images/sportswear-collection-essentials-womens-sleeveless-mock-top-HnV565-2-768x960.jpg'),
(44, 11, 25, 3, 9, 'Quần skinny – Women’s Mid-Rise Leggings', './assets/images/one-mid-rise-7-8-graphic-leggings-fFRFtt.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id` int(3) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tieude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `home` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id`, `tendanhmuc`, `tieude`, `home`) VALUES
(1, 'For men', 'Sportwear for men', 1),
(2, 'For Women', 'Sportwear for Women', 1),
(3, 'For shoes', 'Sportwear for shoes', 1),
(32, 'Danh mục khác', 'Danh mục sản phẩm khác', 1),
(36, 'Danh mục mới', 'Dòng sản phẩm dành cho bơi lội', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(4) NOT NULL,
  `madonhang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tongdonhang` double(10,0) NOT NULL,
  `pttt` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `iduser` int(4) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `dienThoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ghichu` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `timeorder` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `madonhang`, `tongdonhang`, `pttt`, `iduser`, `name`, `dienThoai`, `email`, `address`, `ghichu`, `timeorder`) VALUES
(18, 'intelsport271726', 103, 'Thanh toán khi nhận hàng', 1, 'TrầnSang', '0937988510', 'nhatsang0101@gmail.com', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương', 'Hello World', '12/01/2022 04:47:03 am'),
(19, 'intelsport1900585', 377, 'Thanh toán khi nhận hàng', 3, 'TânLê', '0937988510', 'tanle0202@gmail.com', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương', 'Nguyen Van A', '12/01/2022 07:33:09 am'),
(20, 'intelsport3749780', 59, 'Thanh toán khi nhận hàng', 4, 'TrầnSang', '0937988510', 'nhatsang0101@gmail.com', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương', 'Khong co gi', '12/01/2022 11:30:41 am'),
(21, 'intelsport6315624', 173, 'Thanh toán khi nhận hàng', 4, 'NguyenSang', '0937988510', 'nhatsang0103@gmail.com', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương', 'Phai thanh cong dau do', '12/01/2022 11:43:33 am'),
(22, 'intelsport2955152', 181, 'Thanh toán khi nhận hàng', 1, 'TrầnSang', '0937988510', 'nhatsang0101@gmail.com', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương', 'Demo đặt hàng', '12/06/2022 03:50:09 am'),
(23, 'intelsport660065', 181, 'Thanh toán khi nhận hàng', 26, 'TrầnSang', '0937988510', 'nhatsang0101@gmail.com', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương', 'Ghi chu san pham', '12/06/2022 04:36:38 am'),
(24, 'intelsport93724', 295, 'Thanh toán khi nhận hàng', 27, 'TrầnSang', '0937988510', 'nhatsang0101@gmail.com', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương', 'Dat hang', '12/06/2022 08:56:59 am'),
(25, 'intelsport9580734', 52, 'Thanh toán khi nhận hàng', 1, 'TrầnSang', '0937988510', 'nhatsang0101@gmail.com', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương', 'Dat Hang Nhé', '12/06/2022 02:51:10 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id` int(4) NOT NULL,
  `tensp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `giasp` double(10,0) NOT NULL DEFAULT 0,
  `iddm` int(3) NOT NULL,
  `shortdesc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fulldesc` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `giacu` double(10,0) NOT NULL DEFAULT 0,
  `view` int(5) NOT NULL DEFAULT 1,
  `new` tinyint(1) NOT NULL DEFAULT 0,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `hinhanh1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhanh3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhanh4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhanh5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id`, `tensp`, `giasp`, `iddm`, `shortdesc`, `fulldesc`, `giacu`, `view`, `new`, `sale`, `hinhanh1`, `hinhanh2`, `hinhanh3`, `hinhanh4`, `hinhanh5`) VALUES
(1, 'Áo thun nữ thể thao Nike SportWear Collection Essentials', 20, 2, 'Bộ sưu tập đồ thể thao Nike Essentials Mock Top được làm bằng vải dệt kim mịn, co giãn, tạo cảm giác thoải mái nhưng vẫn rất phong cách. Sự vừa vặn, ôm sát cơ thể một cách vô tư khiến nó trở thành một lựa chọn phù hợp để tạo kiểu tóc hàng ngày.', 'Nike Element Crew trở lại với một thiết kế cập nhật được làm bằng vật liệu tái chế. Tay áo hoàn toàn mới có cửa sổ cho phép bạn dễ dàng kiểm tra đồng hồ của mình. Sử dụng nó như một lớp giữa, lớp đầu tiên hoặc riêng của nó. Sản phẩm này được làm từ ít nhất 75% sợi polyester tái chế.\r\nLợi ích\r\nSản phẩm này được làm từ ít nhất 75% vải polyester tái chế.\r\nCổ tay áo và tay áo được cập nhật có cửa sổ đồng hồ để bạn có thể theo dõi số dặm của mình trên thiết bị của mình.\r\nCác ngón tay cái giúp bạn mở rộng phạm vi phủ sóng trên bàn tay của mình.\r\nThiết kế 1/2 khóa kéo cho phép bạn điều chỉnh luồng gió.\r\nTúi đựng đồ bên trái cho phép bạn cất giữ chìa khóa hoặc thẻ.\r\nCông nghệ Dri-FIT giúp bạn luôn khô ráo và thoải mái.', 24, 1, 0, 1, '../assets/images/sportswear-collection-essentials-womens-sleeveless-mock-top-HnV565-2-768x960.jpg', '../assets/images/Nike-Sportswear-Collection-Essentials-Women_s-Sleeveless-M-1-510x638.jpg', '../assets/images/Nike-Sportswear-Collection-Essentials-Women_s-Sleeveless-M-2-768x960.jpg', '../assets/images/Nike-Sportswear-Collection-Essentials-Women_s-Sleeveless-M-247x296.jpg', '../assets/images/'),
(3, 'Áo Polo nam Pique Cotton USA thấm hút tối đa (kẻ sọc)', 19, 1, 'Giới thiệu đến bạn chiếc áo polo namchiếc áo sẽ giúp cho các chàng trai trở nên lịch lãm, sang trọng và trẻ trung hơn', 'Đặc điểm nổi bật Áo Polo nam Pique Cotton USA thấm hút tối đa\r\nCoolmate đã có những cải tiến để đem đến cho bạn chiếc áo tốt hơn đó chính là với chất liệu Cotton USA chất lượng cao.\r\nSự mềm mại và thấm hút mồ hôi tốt, co giãn 4 chiều\r\nĐem đến cho bạn chiếc áo với phiên bản cải tiến hơn và trải nghiệm thực sự ổn so với những chiếc áo bạn đang mặc và chắc chắn đây sẽ là chiếc áo đưa “sự thoải mái” lên hàng đầu.\r\n\r\nKiểu dáng Áo Polo nam Pique Cotton USA thấm hút tối đa\r\nVới Form áo hơi ôm eo và phù hợp với dáng nam giới Việt, áo polo nam là một trong những chiếc áo đơn giản nhưng lịch lãm và sang trọng, và sẽ là một lựa chọn ” xứng đáng ” mỗi khi chúng ta không biết mặc gì.', 21, 1, 0, 1, '../assets/images/Áo Polo nam Pique Cotton USA thấm hút tối_yy.png', '../assets/images/USA_den_soc_xanh_bien_2-695x1024.png', '../assets/images/USA_den_soc_xanh_bien_6-695x1024.png', '../assets/images/USA_den_soc_xanh_bien_7-695x1024.png', '../assets/images/'),
(4, 'Giày chạy bộ – Nike Air Zoom Pegasus 39 Shield', 56, 3, 'Con ngựa của bạn với đôi cánh quay trở lại để giúp bạn vượt qua cơn mưa. Lớp hoàn thiện chống thấm nước giúp giữ cho bạn khô ráo trong khi lớp lông cừu ấm áp bên trong giúp giữ ấm cho đôi chân của bạn khi chạy trong thời tiết khó chịu. Lực kéo chắc chắn v', 'Con ngựa của bạn với đôi cánh quay trở lại để giúp bạn vượt qua cơn mưa. Lớp hoàn thiện chống thấm nước giúp giữ cho bạn khô ráo trong khi lớp lông cừu ấm áp bên trong giúp giữ ấm cho đôi chân của bạn khi chạy trong thời tiết khó chịu. Lực kéo chắc chắn và 2 bộ phận Zoom Air cung cấp độ bám và lớp đệm mềm để bạn có thể tiếp thêm sức mạnh cho các bộ phận.', 65, 1, 0, 1, '../assets/images/air-zoom-pegasus-39-shield-womens-weatherized-road-running-shoes-dXsmXn-3-768x960.jpg', '../assets/images/air-zoom-pegasus-39-shield-womens-weatherized-road-running-shoes-dXsmXn-768x960.jpg', '../assets/images/Nike-Air-Zoom-Pegasus-39-Shield-Women_s-Weatherized-1-768x960.jpg', '../assets/images/Nike-Air-Zoom-Pegasus-39-Shield-Women_s-Weatherized-2-768x960.jpg', '../assets/images/'),
(5, 'Giày chạy bộ nữ – Nike Alphafly NEXT% 2', 45, 3, 'Sau khi bạn sải một vài bước trong Nike Alphafly NEXT% 2, bạn sẽ không bao giờ nhìn lại đôi giày đua cũ yêu thích của mình theo cách cũ nữa. Những con tàu tên lửa này được tạo ra để giúp tiết kiệm thời gian quý báu khỏi hồ sơ cá nhân của bạn mà không làm ', 'Sau khi bạn sải một vài bước trong Nike Alphafly NEXT% 2, bạn sẽ không bao giờ nhìn lại đôi giày đua cũ yêu thích của mình theo cách cũ nữa. Những con tàu tên lửa này được tạo ra để giúp tiết kiệm thời gian quý báu khỏi hồ sơ cá nhân của bạn mà không làm mất nền tảng bạn cần để đi hết quãng đường. Một hệ thống hỗ trợ dày, nhẹ kết hợp 2 thế giới của sự thoải mái và tốc độ trong cuộc hôn nhân thần thánh. Tận hưởng khả năng hồi phục năng lượng lớn nhất từ ​​tất cả các đôi giày đua của chúng tôi trong khi bạn theo đuổi thành tích cá nhân tốt nhất của mình và bỏ cuộc thi trong cát bụi.', 55, 1, 0, 1, '../assets/images/alphafly-next-2-womens-road-racing-shoes-6grcms-768x960.jpg', '../assets/images/alphafly-next-2-womens-road-racing-shoes-6grcms-4-768x960.jpg', '../assets/images/alphafly-next-2-womens-road-racing-shoes-6grcms-5-768x960.jpg', '../assets/images/alphafly-next-2-womens-road-racing-shoes-6grcms-6-768x960.jpg', '../assets/images/'),
(6, 'Quần short nam thể thao Movement 7″ co giãn', 14, 1, 'Đặc điểm nổi bật của Quần short nam thể thao Movement 7″ co giãn\r\nTạo sự thoải mái cho tất cả nam giới khi sử dụng chiếc quần short nam , Coolmate đã tạo ra những chiếc quần short nam thể thao Movement 7″ co giãn với một vài đặc điểm nổi bật:\r\nVới trọng l', 'Đặc điểm nổi bật của Quần short nam thể thao Movement 7″ co giãn\r\nTạo sự thoải mái cho tất cả nam giới khi sử dụng chiếc quần short nam , Coolmate đã tạo ra những chiếc quần short nam thể thao Movement 7″ co giãn với một vài đặc điểm nổi bật:\r\nVới trọng lượng vải siêu nhẹ chỉ 106 gsm, mang lại cảm giác mặc như không mặc\r\nVải được nhuộm bằng công nghệ Zero Water Discharge (Không nước thải) theo đuổi xu hướng yếu tố thời trang bền vững\r\nChất liệu vải thấm hút nhanh, co giãn 4 chiều và nhanh khô\r\n\r\nGợi ý mix đồ với Quần short nam thể thao Movement 7″ co giãn\r\nVới chiếc quần short thể thao kết hợp mặc đa chức năng, bạn có vô vàn cách mix&match với chiếc quần Promax-S1:\r\nPhối theo phong cách Sporty/Athleisure cùng áo ba lỗ tank top kết hợp giày thể thao, giày chạy bộ\r\nPhối theo phong cách casual cùng áo thun, áo polo\r\nĐừng quên mix màu để bộ outfit trở nên tuyệt hơn nhé: quần short nam đen có thể kết hợp cùng áo nam màu trắng, màu xanh navy hoặc áo hoạ tiết\r\nMột vài món phụ kiện đi kèm bạn có thể tham khảo như mũ lưỡi trai, đồng hồ, balo, …', 0, 1, 0, 0, '../assets/images/DSC01693-copyngocxxan_61-683x1024.png', '../assets/images/Quần short nam thể thao Movement 7.png', '../assets/images/xanh_ngoc_4-2-510x751.png', '../assets/images/xanh_ngoc_8-2-695x1024.png', '../assets/images/'),
(7, 'Outlet – Áo Tank top thể thao nam thoáng khí', 32, 1, 'Dáng áo suông phù hợp với nhiều dáng người khác nhau, giúp bạn vận động tự nhiên, cùng với công nghệ hoàn thiện vải Quick-dry (Nhanh khô) & Wicking (Thấm hút) sẽ giúp bạn luôn khô thoáng.', 'Đặc điểm nổi bật áo Tank top thể thao nam thoáng khí\r\nMột chiếc áo sát nách thể thao nam thoáng mát tối đa sẽ giúp cho bạn thoải mái vận động tự nhiên :\r\n\r\nSợi tính năng Quick-dry giúp vải có khả năng thấm hút mồ hôi nhanh và thoát nhiệt tốt\r\n\r\nKiểu dệt Twill (chéo) mới mang lại cảm giác thoải mái khi mặc\r\n\r\nLogo được in phản quang hiện đại tăng độ nhận biết khi vào chiều tối\r\n\r\nSiêu nhẹ\r\n\r\nCo giãn thoải mái\r\n\r\nChất liệu áo Tank top thể thao nam thoáng khí\r\nÁo tanktop thể thao nam thoáng khí được làm từ chất liệu quick – dry giúp nhanh khô – thoát ẩm.\r\n\r\nQuick-dry là loại vải đặc biệt được dệt theo từng thớ vải với từng lỗ nhỏ phía trên, gia tăng sự thoát ẩm để chiếc áo nhanh khô hơn. Bên cạnh đó đây là loại vải tạo cảm giác thoải mái, mát mẻ dù trong thời tiết nào nắng hay mưa.', 0, 1, 0, 0, '../assets/images/DSC04707-copy-695x1024.png', '../assets/images/DSC04721-Edit-copy-695x1024.png', '../assets/images/DSC04735-copy-695x1024.png', '../assets/images/DSC04745-copy-695x1024.png', '../assets/images/'),
(8, 'Áo khoác gió thể thao HeiQ ViroBlock, chống UV & trượt nước', 24, 1, 'Collection áo khoác nam mùa đông của IntelSport tiếp tục với chiếc Áo khoác gió thể thao HeiQ ViroBlock, chống UV & trượt nước. Hãy cùng tìm hiểu xem chiếc áo khoác nam này Coolmate đã thiết kế và mang những công nghệ gì áp dụng vào chiếc áo này nhé !', 'CÁC TÍNH NĂNG NỔI BẬT CỦA ÁO KHOÁC GIÓ THỂ THAO HeiQ ViroBlock.\r\n\r\nChiếc áo khoác nam thể thao được Coolmate thiết kế và xử lý với công nghệ Water Repellent C6, có khả năng trượt và chống thấm nước và chống tia UV\r\n\r\nNgoài ra, chiếc áo khoác nam được kiểm nghiệm và đạt tiêu chuẩn AATCC 183. Vì thế, bạn hoàn toàn tự tin khi mặc chiếc áo nam này ngoài trời nắng mùa hè\r\n\r\nChất liệu của ÁO KHOÁC GIÓ THỂ THAO HeiQ ViroBlock.\r\n\r\nChất liệu xử lý công nghệ HeiQ ViroBlock có khả năng diệt 99.99% SARS-CoV2 trong vòng 30p và đạt tiêu chuẩn 4/5 với hiệu quả giữ nguyên sau 30 lần giặt\r\nVới chiếc áo khoác gió nam bạn sẽ không còn lo lắng đến việc mặc chiếc áo này chạy bộ có bị mùi mồ hôi không, hay đi mưa ướt chiếc áo của bạn vẫn luôn đảm bảo sẽ không bị các mùi khó chịu, ẩm mốc.', 0, 1, 0, 0, '../assets/images/heiQ_reu_xam_xanh_2-695x1024.png', '../assets/images/heiQ_reu_xam_xanh_1-247x296.png', '../assets/images/heiQ_reu_xam_xanh_3-510x751.png', '../assets/images/heiQ_reu_xam_xanh_5-510x751.png', '../assets/images/'),
(9, 'Áo thun thể thao nam Recycle Active V1', 26, 1, 'Là một chàng trai đam mê thể thao chắc chắn không thể thiếu những chiếc áo thun thể thao. Thấu hiểu điều đó Coolmate tạo ra những chiếc áo thun thể thao nam Recycle Active V1', 'Đặc điểm nổi bật Áo thun thể thao nam Recycle Active V1\r\nLà một chiếc áo thun thể thao cần đáp ứng những điều gì, cùng IntelSport tìm hiểu về những đặc điểm nổi bật:\r\n\r\nThoáng khí: Chất liệu được hoàn thiện công nghệ Wicking ( thoáng khí)\r\nNhanh khô: Quick – dry ( Nhanh khô) đem đến trải nghiệm thoải mái và thoáng mát\r\nThân thiện môi trường: Chất liệu 100% Poly Recycle theo xu hướng thời trang bền vững', 0, 1, 0, 0, '../assets/images/Ao-thun-the-thao-nam-Recycle-Active-V1-xanh-2.jpg', '../assets/images/tee_recy_navy_2-1-247x296.jpg', '../assets/images/tee_recy_navy_2-1-683x1024.jpg', '../assets/images/', '../assets/images/teeactivenavytruoc_23-695x1024.png'),
(10, 'Áo khoác dù thể thao – Nike Sportswear Essential Windrunner', 14, 2, 'Vẫn được che chắn mà không mất một đường may nào trong chiếc áo khoác quá khổ, vô tư này. Được xây dựng dựa trên Windrunner cổ điển, vải dệt thoi của nó được lót bằng lưới để tăng thêm sự thoải mái và dễ dàng xếp lớp. Hình dạng chữ V mang tính biểu tượng ', 'Vẫn được che chắn mà không mất một đường may nào trong chiếc áo khoác quá khổ, vô tư này. Được xây dựng dựa trên Windrunner cổ điển, vải dệt thoi của nó được lót bằng lưới để tăng thêm sự thoải mái và dễ dàng xếp lớp. Hình dạng chữ V mang tính biểu tượng và logo Futura mang đến một diện mạo đặc trưng của Nike. Sản phẩm này được làm từ 100% polyester tái chế và sợi nylon tái chế.\r\nRộng rãi và thư thái\r\nKiểu áo dễ mặc này có thêm khoảng trống ở tay áo và thân áo giúp bạn thoải mái di chuyển và phối đồ.\r\nVải dệt thoi\r\nLoại vải dệt thoi nhẹ này tạo cảm giác mềm mại và mịn màng. Thân áo được lót vải lưới giúp bạn luôn thoáng mát và dễ chịu.', 0, 1, 0, 0, '../assets/images/esc-jumper-m3zZGG-247x296.jpg', '../assets/images/nikecourt-dri-fit-heritage-tennis-polo-NZTVFP-247x296.jpg', '../assets/images/sportswear-club-fleece-oversized-hoodie-zCNxXb-247x296.jpg', '../assets/images/sportswear-over-oversized-pullover-hoodie-7s0xCm-510x510.jpg', '../assets/images/'),
(11, 'Quần skinny – Women’s Mid-Rise Leggings', 9, 2, 'Bất kể tập luyện như thế nào, Nike One Leggings sẽ là lựa chọn phù hợp của bạn cho dù bạn đang đánh thảm hay chạy việc vặt. Được làm từ công nghệ thấm mồ hôi và ít nhất 50% sợi polyester tái chế, những chiếc quần legging mềm mại này giúp bạn luôn khô ráo', 'Tiếp tục chạy như bay với những chiếc quần legging nhẹ, co giãn này. Các tấm lưới ở phía sau đầu gối giúp thông gió mát mẻ hàng dặm. Dây thắt lưng nằm ngay dưới rốn của bạn và có dây rút cho phép bạn tìm thấy sự vừa vặn hoàn hảo. Ngoài ra, nhiều túi—bao gồm 1 túi trong bảng điều khiển có gân ở đùi—giữ tất cả các vật dụng chạy bộ nhỏ cần thiết trong tầm tay bạn.\r\nGiữ cho nó mát mẻ\r\nCông nghệ Nike Dri-FIT di chuyển mồ hôi ra khỏi da của bạn để bốc hơi nhanh hơn, giúp bạn luôn khô ráo và thoải mái. Các tấm lưới ở mặt sau của cả hai đầu gối mang lại khả năng thở ở những nơi bạn cần.', 0, 1, 0, 0, '../assets/images/one-mid-rise-7-8-graphic-leggings-fFRFtt.jpg', '../assets/images/one-mid-rise-crop-leggings-zl2Pkg.jpg', '../assets/images/sportswear-essential-7-8-mid-rise-leggings-0Ss6JW.jpg', '../assets/images/', '../assets/images/sportswear-swoosh-high-waisted-leggings-xNKC3T.jpg'),
(12, 'Áo lót thể thao – Nike Dri-FIT Alate Coverage', 22, 2, 'Chỉ vì bạn đang thay đổi khung cảnh không có nghĩa là bạn phải thay áo ngực. Cung cấp sự hỗ trợ cả ngày mà không làm mất đi sự thoải mái, Nike Alate Coverage Bra nhẹ đến mức bạn sẽ khó nhận thấy rằng bạn đang mặc nó cho dù bạn đang đạt đến một tầm cao mới', 'Chỉ vì bạn đang thay đổi khung cảnh không có nghĩa là bạn phải thay áo ngực. Cung cấp sự hỗ trợ cả ngày mà không làm mất đi sự thoải mái, Nike Alate Coverage Bra nhẹ đến mức bạn sẽ khó nhận thấy rằng bạn đang mặc nó cho dù bạn đang đạt đến một tầm cao mới hay tận hưởng một khoảnh khắc tĩnh lặng. Với các miếng đệm co giãn, sáng tạo, dây đai có thể điều chỉnh và vải mịn, thấm mồ hôi, chiếc áo ngực có độ che phủ hoàn toàn này giúp bạn giải quyết mọi thứ mà bạn cần hàng ngày. Sản phẩm này được làm từ ít nhất 50% sợi polyester tái chế.', 0, 1, 0, 0, '../assets/images/dri-fit-alate-coverage-light-support-padded-sports-bra-bNHtWb.jpg', '../assets/images/alate-light-support-padded-strappy-sports-bra-1HJfhZ.jpg', '../assets/images/alpha-high-support-padded-zip-front-sports-bra-cFvqwr.jpg', '../assets/images/swoosh-support-non-padded-metallic-graphic-sports-bra-h6rFbS-510x510.jpg', '../assets/images/'),
(13, 'Váy thể thao nữ – Nike Sportswear Essential', 0, 2, 'Chất liệu vải dệt mềm mại, co giãn và độ vừa vặn tiêu chuẩn mang lại cho chiếc váy ngắn cổ cao này một cảm giác giản dị, hoàn hảo cho trang phục hàng ngày. Được thiết kế để vừa với rốn của bạn, cạp chun co giãn có dây rút bên trong để giúp bạn cá nhân hóa', 'Chất liệu vải dệt mềm mại, co giãn và độ vừa vặn tiêu chuẩn mang lại cho chiếc váy ngắn cổ cao này một cảm giác giản dị, hoàn hảo cho trang phục hàng ngày. Được thiết kế để vừa với rốn của bạn, cạp chun co giãn có dây rút bên trong để giúp bạn cá nhân hóa sự vừa vặn.\r\nVải dệt thoi\r\nVải dệt mềm mại, co giãn có độ mờ và cảm giác tự nhiên.\r\nChức năng hàng ngày\r\nMột dây thắt lưng đàn hồi và dây rút bên trong giúp bạn cá nhân hóa sự vừa vặn. Các túi có đường may bên hông giúp cất giữ các món đồ nhỏ một cách nhanh chóng.\r\nThông tin chi tiết sản phẩm\r\nPhù hợp tiêu chuẩn cho cảm giác thư thái, dễ dàng\r\nPhần thân: 68% cotton / 28% nylon / 4% elastane. Túi túi: 100% polyester\r\nMáy giặt\r\nĐã nhập khẩu\r\nMàu sắc hiển thị: Đen / Trắng\r\nPhong cách: DM6252-010\r\nQuốc gia / Khu vực xuất xứ: Việt Nam', 0, 1, 0, 0, '../assets/images/air-pique-skirt-4FKPr1-510x510.jpg', '../assets/images/club-skirt-regular-golf-skirt-vdgkSB-510x510.jpg', '../assets/images/nikecourt-dri-fit-advantage-pleated-tennis-skirt-zb35vD-510x510.jpg', '../assets/images/nikecourt-dri-fit-slam-tennis-skirt-rMHMtK-510x510.jpg', '../assets/images/'),
(18, 'Giày Chạy Bộ Nam – Nike Air Zoom Pegasus 39 Shield', 110, 3, 'Con ngựa của bạn với đôi cánh quay trở lại để giúp bạn vượt qua cơn mưa. Lớp hoàn thiện không thấm nước giúp giữ cho bạn khô ráo trong khi cảm giác ấm cúng như lông cừu ở bên trong giúp giữ ấm cho đôi chân của bạn khi chạy trong thời tiết khắc nghiệt. Lực', 'Con ngựa của bạn với đôi cánh quay trở lại để giúp bạn vượt qua cơn mưa. Lớp hoàn thiện không thấm nước giúp giữ cho bạn khô ráo trong khi cảm giác ấm cúng như lông cừu ở bên trong giúp giữ ấm cho đôi chân của bạn khi chạy trong thời tiết khắc nghiệt. Lực kéo chắc chắn và 2 bộ phận Zoom Air cung cấp độ bám và đệm mềm, vì vậy bạn có thể cung cấp năng lượng qua các phần tử.\r\nẤm áp cho đôi chân của bạn\r\nGiống như một chiếc áo ấm cho đôi chân, chất liệu dệt kim ở phía trên giúp giữ ấm cho đôi chân của bạn. Da đặt xung quanh ngón chân — ở những nơi nước có thể thấm vào — giúp giữ cho bạn khô ráo. Lớp cách nhiệt ở mặt sau của lưỡi gà giúp chân bạn luôn ấm áp và dễ chịu.\r\nThiết kế khô\r\nLớp hoàn thiện không thấm nước và lưỡi trai kết hợp với nhau để giúp giữ chân bạn khô ráo. Lớp lót bằng lông ở cổ áo giúp giữ ấm và khô ráo cho mắt cá chân của bạn.\r\nLực kéo sẵn sàng đi mưa\r\nĐế ngoài Storm-Tread cung cấp lực kéo trong thời tiết ẩm ướt. Nó có kết cấu lấy cảm hứng từ lốp xe mùa đông. Các rãnh siêu nhỏ bám lấy mặt đường, trong khi các hình dạng đa hướng giúp thoát nước khi tiếp xúc trực tiếp với mặt đường.\r\nChuyển tiếp mượt mà\r\nCông nghệ Nike React là một loại bọt nhẹ, bền, mang lại cảm giác êm ái và nhạy bén. Chúng tôi đã ghép nối nó với 2 bộ phận Zoom Air (ở bàn chân trước và gót chân) để mang lại cảm giác tràn đầy năng lượng khi bắt đầu. Kết quả là tạo ra một sự chuyển đổi trơn tru từ gót chân sang ngón chân.\r\nThông tin chi tiết sản phẩm\r\nKhông nhằm mục đích sử dụng làm Thiết bị Bảo vệ Cá nhân (PPE)\r\nĐược hiển thị: Đen / Tắt Noir / Xám khói tối / Đen\r\nPhong cách: DO7625-001', 0, 1, 0, 0, '../assets/images/Men_s-Waterproof-Trail-Running-Shoes-510x510.jpg', '../assets/images/air-zoom-pegasus-39-shield-mens-weatherized-road-running-shoes-MNDLg2-2-768x960.jpg', '../assets/images/air-zoom-pegasus-39-shield-mens-weatherized-road-running-shoes-MNDLg2-510x638.jpg', '../assets/images/Men_s-Weatherized-Road-Running-Shoes-510x510.jpg', '../assets/images/'),
(19, 'Giày Chạy Bộ Nam – Nike ZoomX Vaporfly Next', 150, 3, 'Tiếp tục quá trình phát triển tiếp theo của tốc độ với một chiếc giày đua được sản xuất để giúp bạn theo đuổi các mục tiêu và kỷ lục mới. Nó giúp cải thiện sự thoải mái và thoáng khí với phần trên được thiết kế lại. Từ cự ly 10 km đến chạy ma-ra-tông, mẫu', 'Tiếp tục quá trình phát triển tiếp theo của tốc độ với một chiếc giày đua được sản xuất để giúp bạn theo đuổi các mục tiêu và kỷ lục mới. Nó giúp cải thiện sự thoải mái và thoáng khí với phần trên được thiết kế lại. Từ cự ly 10 km đến chạy ma-ra-tông, mẫu này, giống như phiên bản trước, có lớp đệm êm ái và hỗ trợ an toàn để giúp bạn đạt được thành tích tốt nhất của cá nhân mình.\r\n\r\n \r\n\r\nVẫn là sự trở lại năng lượng tốt nhất\r\n\r\nBọt Nike ZoomX mang đến khả năng hồi phục năng lượng tốt nhất cho Nike Running. Một tấm sợi carbon có chiều dài đầy đủ tạo ra cảm giác nhạy bén giúp bạn di chuyển liên tục trong sải chân của mình.\r\n\r\n \r\n\r\nSiêu thoáng khí và mềm mại\r\n\r\nPhần trên được thiết kế lại sử dụng vải lưới được đặt ở những nơi bạn cần thoáng khí. Kết quả là một thiết kế mềm hơn, mát hơn phù hợp với bàn chân của bạn.\r\n\r\n \r\n\r\nNgăn chặn an toàn\r\n\r\nGia cố dọc theo bàn chân trước cung cấp thêm độ bền và sự thoải mái an toàn.\r\n\r\n \r\n\r\nnhiều lợi ích hơn\r\n\r\nMột lớp đệm xốp bên trong ở gót chân mang lại cho bạn thêm lớp đệm.\r\nLớp đệm nhẹ trên lưỡi gà giúp giảm áp lực ren ở đầu bàn chân của bạn.\r\nVòng dây buộc qua các giá đỡ bên trọng lượng nhẹ giúp loại bỏ sự cần thiết của dải vòm. Điều này giúp giảm trọng lượng của giày.\r\nKhu vực ngón chân rộng hơn mang lại cảm giác vừa vặn hơn.\r\nCác rãnh linh hoạt trên đế mang lại cho bạn lực kéo trên nhiều bề mặt trong nhiều điều kiện thời tiết khác nhau.\r\n \r\n\r\nThông tin chi tiết sản phẩm\r\n\r\nĐiền kinh thế giới đã được phê duyệt\r\nHiển thị: Vân sam sáng/Trắng/Kem đào/Xanh nhạt\r\nPhong cách: CU4111-301', 0, 1, 0, 0, '../assets/images/zoomx-vaporfly-next-2-mens-road-racing-shoes-glWqfm-2-768x960.jpg', '../assets/images/zoomx-vaporfly-next-2-mens-road-racing-shoes-glWqfm-768x960.jpg', '../assets/images/Nike-ZoomX-Vaporfly-Next_-2-Men_s-Road-Racing_yythk-3-768x960.jpg', '../assets/images/Nike-ZoomX-Vaporfly-Next_-2-Men_s-Road-Racing_yythk-1-768x960.jpg', '../assets/images/'),
(20, 'Giày chạy bộ Nữ – Nike React Infinity Run Flyknit 3', 200, 3, 'Được thiết kế để giúp bạn theo đuổi mục tiêu chạy bộ của mình một cách thoải mái, Nike React Infinity Run Flyknit 3 cho phép bạn chạy nhanh 2 dặm hôm nay trước khi quay trở lại đúng lúc để chạy lâu hơn vào ngày mai. Phần trên thoáng khí giúp bàn chân của ', 'Được thiết kế để giúp bạn theo đuổi mục tiêu chạy bộ của mình một cách thoải mái, Nike React Infinity Run Flyknit 3 cho phép bạn chạy nhanh 2 dặm hôm nay trước khi quay trở lại đúng lúc để chạy lâu hơn vào ngày mai. Phần trên thoáng khí giúp bàn chân của bạn có cảm giác chắc chắn nhưng linh hoạt trong khi lớp đệm xung quanh gót chân và mắt cá chân giúp mang lại cảm giác hỗ trợ hết quãng đường này đến quãng đường khác. Thêm vào đó, đế hình bập bênh độc đáo giúp mang lại một chuyến đi êm ái và ổn định trên cả quãng đường dài và ngắn. Vì vậy, hãy tiếp tục chạy, chúng tôi đã có bạn.\r\n\r\n \r\n\r\nFlex an toàn, thoáng khí\r\n\r\nChúng tôi đã thêm Flyknit vào khắp phần trên để tạo ra các vùng thoáng khí, linh hoạt và ngăn chặn cụ thể. Kết quả là tạo ra cảm giác mát mẻ giúp bàn chân của bạn cảm thấy an toàn trong khi vẫn cho phép nó di chuyển trong sải chân của bạn mà không bị hạn chế.\r\n\r\n \r\n\r\nđệm đáp ứng\r\n\r\nCông nghệ Nike React là một loại bọt nhẹ, bền, mang đến một chuyến đi êm ái, nhạy bén.\r\n\r\n \r\n\r\nMịn màng và ổn định\r\n\r\nCó hình dáng như một chiếc bập bênh, đế giày đã được thiết kế để hỗ trợ trong cả 3 giai đoạn sải chân của người chạy bộ. Nó tạo cảm giác linh hoạt khi bạn đẩy ra, di chuyển êm ái khi chân bạn di chuyển về phía trước và đệm khi bạn chạm đất. Đáy rộng hơn cho phép ổn định hơn khi tiếp xúc.\r\n\r\n \r\n\r\nCảm giác đệm, ngăn xếp cao hơn\r\n\r\nĐệm cao tầng được đặt ngay dưới chân bạn để bạn ở gần bọt hơn để có trải nghiệm thực sự nhạy bén.\r\n\r\n \r\n\r\nnhiều lợi ích hơn\r\n\r\nLưỡi lai kết hợp cảm giác giống như tất với khả năng điều chỉnh của thiết kế truyền thống.\r\nLớp đệm mềm dọc theo cổ áo tạo điểm tiếp xúc có đệm.\r\nCao su bổ sung ở đế ngoài mang lại lực kéo và độ bền.\r\nHiển thị: Màu bạch kim/Cam đồng đội/Đen/Trắng ánh kim\r\nPhong cách: DZ5215-001', 0, 1, 0, 0, '../assets/images/Nike-React-Infinity-Run-Flyknit-3-Women_s-Road_yyth-768x960.jpg', '../assets/images/Nike-React-Infinity-Run-Flyknit-3-Women_s-Road_yyth-1-768x960.jpg', '../assets/images/Nike-React-Infinity-Run-Flyknit-3-Women_s-Road_yyth-2-768x960.jpg', '../assets/images/react-infinity-run-flyknit-3-womens-road-running-shoes-XpNmlR-247x296.jpg', '../assets/images/'),
(21, 'Giày chạy bộ nữ – ULTRA 4DFWD SHOES', 84, 3, 'Cú bắt tuyệt vời! Sản phẩm độc quyền này chỉ có tại adidas và không thể tìm thấy ở bất kỳ nơi nào khác.\r\n\r\nTHANH TOÁN THEO THỜI GIAN THÀNH 4 THANH TOÁN KHÔNG LÃI & NHIỀU LỰA CHỌN LINH HOẠT VỚI AFFIRM, KLARNA HOẶC SAU TRẢ\r\n', 'GIÀY CHẠY BỘ CHO CHẠY ĐI MỊN MÀNG, ĐƯỢC LÀM BẰNG NHỰA PARLEY OCEAN.\r\nTrải nghiệm bước chạy mượt mà với giày chạy bộ Ultra 4DFWD. Chúng kết hợp phần trên của Ultraboost mang tính biểu tượng của chúng tôi với đế giữa adidas 4DFWD in 3D được cải tiến để nén về phía trước, giảm lực phanh và biến năng lượng tác động thành chuyển động về phía trước. Kết quả mang lại sự chuyển đổi suôn sẻ và trải nghiệm trượt độc đáo. Phần trên adidas PRIMEKNIT ôm sát bàn chân với các khu vực hỗ trợ được nhắm mục tiêu, trong khi đế ngoài Cao su Continental™ cung cấp thêm độ bám trong mọi điều kiện thời tiết. Phần trên của giày này được làm bằng sợi hiệu suất cao chứa ít nhất 50% nhựa Parley Ocean — rác thải nhựa được mô phỏng lại, được thu gom trên các hòn đảo, bãi biển, cộng đồng ven biển và bờ biển xa xôi, ngăn không cho rác thải này gây ô nhiễm đại dương của chúng ta. 50% còn lại của sợi là polyester tái chế.\r\n\r\nren đóng cửa\r\nadidas PRIMEKNIT dệt trên\r\nđế giữa adidas 4D\r\nDệt lót\r\nTrọng lượng: 13,9 ounce\r\nĐộ sụt đế giữa: 11 mm (gót chân: 32 mm / bàn chân trước: 21 mm)\r\nĐế ngoài bằng cao su Continental™\r\nSợi ở trên chứa ít nhất 50% nhựa Parley Ocean và 50% polyester tái chế\r\nnhập khẩu\r\nMàu sắc sản phẩm: Nhôm / Zero Metalic / Magic Beige\r\nMã sản phẩm: GY9837', 0, 1, 0, 0, '../assets/images/Product-color_-Aluminium-Zero-Metalic-_yy.jpg', '../assets/images/Beige-Ultra-4DFWD-Shoes-LWE84-1.jpg', '../assets/images/', '../assets/images/Beige-Ultra-4DFWD-Shoes-LWE84-3.jpg', '../assets/images/Beige-Ultra-4DFWD-Shoes-LWE84-4-510x510.jpg'),
(22, 'Áo ORGANIC COTTON T-SHIRT DISCIPLINE', 23, 1, 'Chiếc áo phông Ron Dorff cổ điển có in màn hình KỶ LUẬT. Được thiết kế với kiểu dáng hơi thuôn và được may bằng vải jersey cao cấp 100% cotton hữu cơ. Cổ tròn và cổ áo có gân và được giặt sơ để giảm thiểu độ co rút.', 'Màu trắng\r\n\r\nKích thước: XS, S, M, L, XL, XXL\r\n\r\nGiao hàng miễn phí cho các đơn hàng trên 150 € ở Châu Âu, Vương quốc Anh và Bắc Mỹ. Đặt hàng ngay hôm nay và nhận hàng trong vòng 2-3 ngày làm việc. Nhấp và Thu thập có sẵn tại tất cả các Cửa hàng Ron Dorff.\r\n\r\nVà bây giờ, trả lại miễn phí và dễ dàng trong Châu Âu. Đối với việc trả lại hoặc trao đổi đồ lót và đồ bơi, vui lòng đảm bảo rằng chúng chưa được mặc và chúng được trả lại trong gói ban đầu.\r\n\r\nBạn có thể thanh toán thành 3 đợt miễn phí cho tất cả các đơn hàng trên €100 tại Pháp, Tây Ban Nha, Bỉ, Đức, Ý, Áo, Ireland, Luxembourg và Hà Lan với Alma hoặc 4 đợt với PayPal (ngưỡng trả góp được đặt bằng PayPal khác nhau tùy theo quốc gia). Để biết thêm thông tin, vui lòng tham khảo Câu hỏi thường gặp của chúng tôi.', 0, 1, 0, 0, '../assets/images/Organic-Cotton-T-Shirt-DISCIPLINE_-White-3-768x922.jpg', '../assets/images/Organic-Cotton-T-Shirt-DISCIPLINE_-White-1-510x612.jpg', '../assets/images/Organic-Cotton-T-Shirt-DISCIPLINE_-White-2-510x612.jpg', '../assets/images/Organic-Cotton-T-Shirt-DISCIPLINE_-White-768x922.jpg', '../assets/images/'),
(23, 'Quần Leggingss – Women’s Mid-Rise Allover Print', 12, 2, 'Hãy sẵn sàng để chạy nước rút, lao nhanh và vươn vai với những chiếc quần legging Nike Pro in kim loại này. Chất liệu vải mềm mại, co giãn và dây thắt lưng đàn hồi rộng hỗ trợ bạn di chuyển trong suốt quá trình tập luyện.\r\n\r\nTìm hiểu thêm về hành trình Mo', 'Hãy sẵn sàng để chạy nước rút, lao nhanh và vươn vai với những chiếc quần legging Nike Pro in kim loại này. Chất liệu vải mềm mại, co giãn và dây thắt lưng đàn hồi rộng hỗ trợ bạn di chuyển trong suốt quá trình tập luyện.\r\n\r\nTìm hiểu thêm về hành trình Move to Zero hướng tới không có carbon và không chất thải của chúng tôi, bao gồm cả cách chúng tôi đang làm việc để thiết kế sản phẩm có tính đến tính bền vững và giúp bảo vệ tương lai của nơi chúng ta sống và vui chơi.\r\n\r\nGiao hàng tiêu chuẩn miễn phí và trả lại hàng miễn phí trong 60 ngày cho các Thành viên Nike. Tìm hiểu thêm. Áp dụng loại trừ chính sách hoàn trả.\r\nNhận hàng tại các Cửa hàng Nike chọn lọc.', 0, 1, 0, 0, '../assets/images/pro-womens-mid-rise-allover-print-leggings-N3mK2Q-1-768x960.jpg', '../assets/images/Nike-Pro-Women_s-Mid-Rise-Allover-Print-Leggings-768x960.jpg', '../assets/images/pro-womens-mid-rise-allover-print-leggings-N3mK2Q-2-768x960.jpg', '../assets/images/pro-womens-mid-rise-allover-print-leggings-N3mK2Q.jpg', '../assets/images/'),
(24, 'Quần short nữ – Nike Dri-FIT Run Division Tempo Luxe', 45, 2, 'Với chất liệu vải mềm, nhẹ và nhiều độ co giãn, những chiếc quần đùi này sẵn sàng giúp bạn truyền nguồn năng lượng thô cho quá trình chạy của mình. Các tấm thoáng khí được kết hợp với công nghệ thấm mồ hôi để giúp bạn luôn khô ráo khi bay qua lộ trình của', 'Với chất liệu vải mềm, nhẹ và nhiều độ co giãn, những chiếc quần đùi này sẵn sàng giúp bạn truyền nguồn năng lượng thô cho quá trình chạy của mình. Các tấm thoáng khí được kết hợp với công nghệ thấm mồ hôi để giúp bạn luôn khô ráo khi bay qua lộ trình của mình.\r\n\r\nLợi ích\r\n\r\nCông nghệ Nike Dri-FIT di chuyển mồ hôi ra khỏi da để bay hơi nhanh hơn, giúp bạn luôn khô ráo và thoải mái.\r\nTúi ở cạp quần cho phép bạn cất giữ chìa khóa hoặc thẻ.\r\n\r\nThông tin chi tiết sản phẩm\r\n\r\nPhần thân: 80% polyester / 20% elastane. Tấm: 90% polyester / 10% nylon. Lớp lót: 100% polyester.\r\nCác yếu tố thiết kế phản chiếu\r\nMáy giặt\r\nĐã nhập khẩu\r\nKhông nhằm mục đích sử dụng làm Thiết bị Bảo vệ Cá nhân (PPE)\r\nMàu sắc hiển thị: Valerian Blue / Black\r\nPhong cách: DQ6633-460\r\nQuốc gia / Khu vực xuất xứ: Việt Nam', 0, 1, 0, 0, '../assets/images/dri-fit-swoosh-run-mid-rise-brief-lined-running-shorts-NLHlXB.jpg', '../assets/images/dri-fit-victory-13cm-golf-shorts-jrHFjL.jpg', '../assets/images/one-luxe-18cm-mid-rise-printed-training-shorts-MRtNk4.jpg', '../assets/images/pro-365-13cm-shorts-Xtrrs6-510x510.jpg', '../assets/images/'),
(25, 'Quần short thể thao – Nike Sportswear Phoenix Fleece', 38, 2, 'Tăng và biến tủ quần áo lông cừu của bạn với những rung cảm ấm cúng mạnh mẽ. Cầu nối giữa phong cách táo bạo và cảm giác giản dị, quần short Phoenix Fleece lưng cao rộng rãi này nâng cao sự thoải mái của bạn với các chi tiết phóng đại như đường gân kéo dà', 'Tăng và biến tủ quần áo lông cừu của bạn với những rung cảm ấm cúng mạnh mẽ. Cầu nối giữa phong cách táo bạo và cảm giác giản dị, quần short Phoenix Fleece lưng cao rộng rãi này nâng cao sự thoải mái của bạn với các chi tiết phóng đại như đường gân kéo dài và dây rút để có vẻ ngoài nổi bật.\r\nLợi ích\r\nFleece có cảm giác siêu mềm và có cảm giác hơi mờ bên trong để bạn có thể giữ ấm và thoải mái.\r\nĐường gân kéo dài ở eo tạo thêm sự thoải mái và cấu trúc.\r\nTúi cung cấp khả năng lưu trữ nhanh chóng cho chìa khóa, điện thoại và bàn tay lạnh.\r\nThông tin chi tiết sản phẩm\r\nPhần thân: 80% cotton / 20% polyester. Sườn: 97% cotton / 3% spandex. Túi túi: 100% cotton.\r\nTúi bên\r\nLogo Swoosh thêu\r\nDây rút tròn có nút\r\nMáy giặt\r\nĐã nhập khẩu\r\nĐược hiển thị: Cây thạch nam xám đậm / Cánh buồm\r\nPhong cách: FD1409-063', 0, 1, 0, 0, '../assets/images/Nike-Sportswear-Phoenix-Fleece-Women_s-High-Waisted-Shorts-247x296.jpg', '../assets/images/Nike-Sportswear-Phoenix-Fleece-Women_s-High-Waisted-Shorts-1-768x960.jpg', '../assets/images/sportswear-phoenix-fleece-womens-high-waisted-shorts-vbsV9p.png', '../assets/images/sportswear-phoenix-fleece-womens-high-waisted-shorts-vbsV9p-1-768x960.jpg', '../assets/images/'),
(31, 'Áo polo nam', 23, 1, 'sfsdf sdfjsaldfjsdlfhsdklafhkjashdfklhsadjkl', 'sfsdf sdfjsaldfjsdlfhsdklafhkjashdfklhsadjkl', 32, 1, 0, 1, '../assets/images/anh-dai-dien-ao-polo-nam-hang-hieu-fifa-world-cup-2022-intelsport.png', '../assets/images/Grey FIFA World Cup 2022™ Official Emblem Polo_yyth (2).jpg', '../assets/images/Grey FIFA World Cup 2022™ Official Emblem Polo_yyth (3).jpg', '../assets/images/Grey FIFA World Cup 2022™ Official Emblem Polo_yyth (5).jpg', '../assets/images/Grey FIFA World Cup 2022™ Official Emblem Polo_yyth (4).jpg'),
(32, 'Áo Ngực Thể Thao – Nike Alate Minimalist', 23, 2, 'Với dây đai rộng rãi, thoải mái trong thiết kế racerback cổ điển, chiếc áo ngực này mang đến cho bạn một giải pháp nâng đỡ cao mới. Trải nghiệm cảm giác ấm cúng và an toàn trong khi bạn thực hiện các bài tập có tác động cao hơn. Chất liệu vải mềm mịn, nhẹ', 'Đối với những nhà thám hiểm, những người đi khắp thế giới mà không có gì ngoài những thứ cần thiết trần trụi đeo sau lưng họ. Những người không ngại lặp lại trang phục và biết phong cách của họ. Tận hưởng sự hỗ trợ cả ngày mà không phải hy sinh sự thoải mái trong Áo ngực thể thao tối giản Alate, mang đến trải nghiệm đệm độc đáo, dây đai có thể điều chỉnh hoàn toàn và thiết kế dáng thấp phù hợp với mọi thứ. Với chất liệu vải mềm mại, thấm mồ hôi, chiếc áo ngực này giúp bạn luôn khô ráo và thoải mái suốt cả ngày dài. Sản phẩm này được làm với ít nhất 50% sợi polyester tái chế.\r\nĐược hiển thị: Valerian Blue / Valerian Blue / Blackened Blue\r\nPhong cách: DM0526-460', 0, 0, 0, 0, '../assets/images/alate-minimalist-womens-light-support-padded-sports-bra-sJ0vZD-768x960.jpg', '../assets/images/alate-minimalist-womens-light-support-padded-sports-bra-sJ0vZD-4-510x638.jpg', '../assets/images/Nike-Alate-Minimalist-Women_s-Light-Support-Padded-Sports_-1-768x960.jpg', '../assets/images/Nike-Alate-Minimalist-Women_s-Light-Support-Padded-Sports_-2-768x960.jpg', '../assets/images/Nike-Alate-Minimalist-Women_s-Light-Support-Padded-Sports_-768x960.jpg'),
(34, 'quan-short-the-thao-adidas-essentials-plain-chelseapng-pts', 22, 1, 'Quần short đẹp', 'Quần short đẹp tuyệt vời', 0, 1, 0, 0, '../assets/images/quan-short-the-thao-adidas-essentials-plain-chelseapng-pts.png', '../assets/images/quan-short-the-thao-adidas-training-short-intelsport-pts.png', '../assets/images/quan-short-the-thao-primeblue-intelsport-pts.png', '../assets/images/quan-short-the-thao-run-it-short-intelsport-pts.png', '../assets/images/'),
(38, 'Recycled Polyester Swim Shorts_ Grassy Green updated', 24, 1, 'Quần short tuyệt vời 3', 'Quần short tuyệt vời 24', 0, 1, 0, 0, '../assets/images/dark-grey-4.png', '../assets/images/dark-grey-1.png', '../assets/images/dark-grey-2.png', '../assets/images/dark-grey-3.png', '../assets/images/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(4) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `address`, `email`, `phonenumber`, `user`, `pass`, `role`, `avatar`) VALUES
(1, 'Trần nhật Sang 3', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương 3', 'nhatsang0231@gmail.com', '0937988512', 'trannhatsang', '12345', 0, 'assets/images/Organic-Cotton-T-Shirt-DISCIPLINE_-White-3-768x922.jpg'),
(2, 'Trần nhật Sang', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương', 'nhatsang0101@gmail.com', '0937988510', 'admin', '123456', 1, 'assets/images/quan-short-the-thao-adidas-training-short-intelsport-pts.png'),
(3, 'Trần nhật Sang 00', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương', 'nhatsang0101@gmail.com', '0937988510', 'nhatsang0101@gmail.co', '123', 0, 'assets/images/Anh Bong Da SVD.jpg'),
(4, 'Trần nhật Sang', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương', 'nhatsang0101@gmail.com', '0937988510', 'nhatsang0101@gmail.c', 'phaithanhcong11', 0, 'assets/images/mat-truoc-cccd.jpg'),
(6, 'Trần nhật Sang 100', '19/7c khu phố Đông Hòa, phường Đông Hòa, thành phố Dĩ An, tỉnh Bình Dương', 'nhatsang0102@gmail.com', '0937988510', 'nhatsang0101234@gmai', '123', 0, 'assets/images/mat-sau-cccd.jpg'),
(10, 'Trần nhật Sang ASM', '19/7c khu phố Đông Tân, phường Tân Đông Tân, thành phố Dĩ An, tỉnh Bình Dương', 'nhatsang3032@gmail.com', '0937988410', 'trannhatsang2000', 'phaithanhcong10', 0, 'assets/images/Bằng toeic.jpg'),
(11, 'Trần nhật Sang mail', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương', 'nhatsang0101@gmail.com', '0937988510', 'trannhatsangtestmail', 'phaithanhcong10', 0, 'assets/images/FPT_Polytechnic.png'),
(12, 'Trần nhật Sang 100', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương', 'nhatsang0133@gmail.com', '0937988510', 'trannhatsang100', '12345', 0, 'assets/images/yellow-gray.png'),
(15, 'Vo Van Nam', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Phước', 'nhatsang0103@gmail.com', '0937988241', 'admin22', '1234', 1, 'assets/images/quan-short-the-thao-primeblue-intelsport-pts.png'),
(16, 'Trần nhật Sang 234', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An 2, tỉnh Bình Dương', 'nhatsang2341@gmail.com', '0937988111', 'admin33', '123', 1, 'assets/images/13SR23.GG_A_706d6e90-d5d7-4d12-8dcd-690b089b8c2a.jpg'),
(22, 'Sang Admin', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An 4, tỉnh Bình Dương', 'nhatsang4444@gmail.com', '0937988241', 'sangadmin', '12345', 1, 'assets/images/purple-2.png'),
(23, 'Nguyễn Văn Admin', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương 3', 'nhatsang0303@gmail.com', '0937988234', 'admin114', '12345', 1, 'assets/images/dark-grey-1.png'),
(24, 'Trần nhật Sang 2000', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An 2,  tỉnh Bình Dương', 'nhatsang2525@gmail.com', '0937988143', 'trannhatsang456', '456', 0, ''),
(25, 'Nguyễn Văn A', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương 4', 'vana@gmail.com', '0937988211', 'vana123', '12345', 0, 'assets/images/light-blue.png'),
(26, 'Trần nhật Sang 612', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương', 'nhatsang0102@gmail.com', '0937988513', 'trannhatsang612', '123456', 0, 'assets/images/dark-grey-1.png'),
(27, 'Nguyen Ty Phu 3', '19/7c khu phố Đông Tác, phường Tân Đông Hiệp, thành phố Dĩ An, tỉnh Bình Dương', 'typhu@gmail.com', '0937988513', 'typhu123', '1234', 0, 'assets/images/dark-grey-1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_user` (`iduser`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sanpham_danhmuc` (`iddm`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `fk_order_user` FOREIGN KEY (`iduser`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `fk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `tbl_danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
