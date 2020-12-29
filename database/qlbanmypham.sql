-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2020 at 07:40 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlbanmypham`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdh`
--

CREATE TABLE `chitietdh` (
  `MaDH` int(11) NOT NULL,
  `TenUS` varchar(50) NOT NULL,
  `emailUS` varchar(100) NOT NULL,
  `diachiUS` varchar(200) NOT NULL,
  `SĐT` int(11) NOT NULL,
  `ptvc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietdh`
--

INSERT INTO `chitietdh` (`MaDH`, `TenUS`, `emailUS`, `diachiUS`, `SĐT`, `ptvc`) VALUES
(5, 'ngoc anh', '123@gmail.com', '123 cao lo q8', 1234556897, NULL),
(6, 'ngoc anh', '123@gmail.com', '123 cao lo q8', 1234556897, NULL),
(7, 'ngoc anh', '123@gmail.com', '123 cao lo q8', 1234556897, NULL),
(8, 'ngoc anh', 'phduc99@gmail.com', '123 cao lo q8', 1234556897, NULL),
(9, 'ngoc anh', 'wonyeong36@gmail.com', '123 cao lo q8', 1234556897, NULL),
(10, 'HD', 'wonyeong36@gmail.com', '123 cao lo q8', 1234556897, NULL),
(11, 'ngoc anh', 'wonyeong36@gmail.com', '123 cao lo q8', 1234556897, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `madm` varchar(20) NOT NULL,
  `tendm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`madm`, `tendm`) VALUES
('csd', 'Chăm sóc da'),
('pk', 'Phụ kiện'),
('td', 'Trang điểm');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `us_id` int(11) NOT NULL,
  `TkUS` varchar(50) DEFAULT NULL,
  `MkUS` varchar(100) DEFAULT NULL,
  `TenUS` varchar(50) DEFAULT NULL,
  `emailUS` varchar(100) DEFAULT NULL,
  `SDT` int(11) NOT NULL,
  `diachiUS` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`us_id`, `TkUS`, `MkUS`, `TenUS`, `emailUS`, `SDT`, `diachiUS`) VALUES
(1, 'ling123', '123456789', 'Gia Le', 'giale4545@gmail.com', 389579611, '180 cao lo'),
(2, NULL, NULL, 'ngoc anh', '123@gmail.com', 1234556897, '123 cao lo q8'),
(3, 'tttttttttttttttttttt', '123455', 'ngoc anh', '123@gmail.com', 1234556897, '123 cao lo q8');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `gia` double NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `img` varchar(100) NOT NULL,
  `mota` text,
  `madm` varchar(20) NOT NULL,
  `danhgia` int(5) DEFAULT NULL COMMENT '1: san pham binh thuong, 5: san pham ban chay'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `gia`, `soluong`, `img`, `mota`, `madm`, `danhgia`) VALUES
(1, 'Innisfree Green Tea Foam Cleanser', 159000, 100, 'image\\chăm sóc da\\sữa rửa mặt trà xanh 2', 'Sữa Rửa Mặt Chiết Xuất Từ Trà Xanh Innisfree Green Tea Foam Cleanser.<br>\r\n- Dung tích: 150ml. <br>\r\n1. Dành cho mọi loại da, da dầu, có mụn. <br>\r\n2. Sữa rửa mặt làm sạch bụi bẩn, hút nhờn, làm sáng da.<br>\r\n3. Chiết xuất Trà Xanh chống oxy hóa, ngăn ngừa mụn, viêm.<br>\r\n', 'csd', 5),
(2, 'Bông Tẩy Trang Silcot Velvet Touch Cotton (82 Miếng)', 29000, 82, 'image\\phụ kiện\\bông tẩy trang silcot', 'Bông Tẩy Trang Silcot Velvet Touch Cotton (82 Miếng)<br>\r\n- Thương hiệu: Silcot<br>\r\n- Số lượng: 82 Miếng <br>\r\nSilcot là một thương hiệu nổi tiếng của tập đoàn Unicharm Nhật Bản được sản xuất dựa trên công thức chăm sóc da của phụ nữ Nhật Bản, những sản phẩm bông tẩy trang của Silcot luôn được người dùng ưa chuộng và lựa chọn tin dùng.<br>\r\nHướng dẫn sử dụng và bảo quản:<br>\r\n- Thấm dung dịch dưỡng da hoặc tẩy trang vào miếng bông.<br>\r\n- Vỗ nhẹ nhàng vào từng vùng trên da mặt<br>\r\n- Bảo quản ở nơi khô ráo, thoáng mát<br>\r\n- Để xa tầm tay trẻ em<br>\r\n', 'pk', NULL),
(3, 'Bông Tẩy Trang 100% Cotton Ceiba Tree', 19000, 120, 'image\\phụ kiện\\bông tẩy trang ceiba', 'Bông Tẩy Trang 100% Cotton Ceiba Tree<br>\r\n Sử dụng nguồn nguyên liệu 100% cotton tự nhiên, sạch và tinh khiết, không sử dụng chất tẩy trắng hay các tạp chất để sơ chế bông tẩy trang tạo độ an toàn và dịu nhẹ cho làn da nhạy cảm, mặt bông mềm mịn mang đến cảm giác mềm mại dễ chịu trên da khi sử dụng<br>\r\n• Thương hiệu: Ceiba Organic<br>\r\n• Xuất xứ: Pháp<br>\r\n• Số lượng: 120 miếng<br>\r\n• Đối tượng khuyên dùng:<br>\r\n- Dành cho bất kì bề mặt da cần được lau và làm sạch<br>\r\n• Hướng dẫn sử dụng: Dùng với nước tẩy trang hoặc với nước hoa hồng để làm sạch da. <br>\r\n', 'pk', NULL),
(4, 'Khăn Giấy Tẩy Trang, Làm Sạch Da Dearmay Green Line Easy Dry Cleansing Tissue', 70000, 5, 'image\\phụ kiện\\khăn giẩy tẩy trang dearmay', 'Khăn Giấy Tẩy Trang, Làm Sạch Da Dearmay Green Line Easy Dry Cleansing Tissue<br>\r\n- Thương hiệu: Dearmay<br>\r\n- Số lượng: Gói/5 miếng<br>\r\n- Hạn sử dụng: 2 năm kể từ ngày sản xuất/ NSX xem trên bao bì <br>\r\n', 'pk', NULL),
(5, 'Nước Tẩy Trang Kiềm Dầu, Ngăn Ngừa Mụn Chiết Xuất Trà Xanh Senka', 109000, 100, 'image\\chăm sóc da\\nước tẩy trang senka 1', 'Nước Tẩy Trang Kiềm Dầu, Ngăn Ngừa Mụn Chiết Xuất Trà Xanh Senka<br>\r\nNước tẩy trang cùng với chiết xuất Trà Xanh Uji Nhật Bản giúp loại bỏ lớp trang điểm - dầu thừa - bụi bẩn trên da, giúp kiểm soát dầu thừa, ngăn ngừa mụn và chống oxy hóa.<br>\r\n• Thương hiệu: Senka<br>\r\n• Xuất xử: Nhật Bản<br>\r\n• Dung tích: 230ml<br>\r\n• Hướng dẫn sử dụng: Đổ 1 lượng vừa đủ vào bông tẩy trang và lau đều khắp mặt theo chiều kết cấu da để loại bỏ hoàn toàn bụi bẩn và lớp trang điểm và bụi bẩn.<br>\r\n• Hạn sử dụng: 3 năm kể từ ngày sản xuất/NSX xem trên bao bì sản phẩm.<br>\r\n', 'csd', NULL),
(6, 'L\'Oreal Micellar Water 3-in-1 Refreshing Even For Sensitive Skin', 169000, 82, 'image\\chăm sóc da\\nước tẩy trang l\'oreal', 'L\'Oreal Micellar Water 3-in-1 Refreshing Even For Sensitive Skin<br>\r\nMang đến các bước tẩy trang, làm sạch, giữ ẩm và dưỡng mềm da đồng thời chỉ trong một sản phẩm. Sản phẩm giúp lấy đi sạch cặn trang điểm nhưng không làm khô da. Hơn thế, thành phần an toàn và công nghệ tiên tiến giúp da giữ nước, thông thoáng, mềm mượt chỉ trong một bước<br>\r\n• Thương hiệu: L\'Oreal<br>\r\n• Xuất xứ: Pháp<br>\r\n• Dung tích: 95ml/400m<br>\r\n• Hướng dẫn sử dụng: Đổ 1 lượng vừa đủ vào bông tẩy trang và lau đều khắp mặt theo chiều kết cấu da để loại bỏ hoàn toàn bụi bẩn và lớp trang điểm và bụi bẩn<br>\r\n• Hạn sử dụng: 3 năm kể từ ngày sản xuất/NSX xem trên bao bì<br>\r\n', 'csd', NULL),
(7, 'SỮA RỬA MẶT TRO NÚI LỬA INNISFREE JEJU VOLCANIC PORE CLEANSING FOAM ', 20000, 100, 'image\\chăm sóc da\\sữa rửa mặt innisfree', 'SỮA RỬA MẶT TRO NÚI LỬA INNISFREE JEJU VOLCANIC PORE CLEANSING FOAM <br>\r\nDung tích: 150ml<br>\r\n1. Dành cho da dầu, da hỗn hợp, da nhạy cảm\r\n2. Sữa rửa mặt làm sạch da, giảm mụn, se khít lỗ chân lông<br>\r\n3. Chiết xuất Tro Núi Lửa hút mụn đầu đen, mụn cám, bã nhờn<br>\r\n• Hạn sử dụng: 36 tháng kể từ ngày sản xuất/NSX xem trên bao bì sản phẩm (12 tháng kể từ ngày mở nắp)<br>\r\n', 'csd', NULL),
(8, 'Mặt nạ miếng Innisfree My Real Squeeze Mask ', 30000, 100, 'image\\chăm sóc da\\mặt nak innisfree', 'Mặt nạ miếng Innisfree My Real Squeeze Mask <br>\r\n- Thương hiệu: Innisfree<br>\r\nMặt nạ miếng Innisfree My Real Squeeze Mask  hiện có 3 dòng thuộc dạng nước ( phù hợp cho da dầu, mụn), dạng tinh chất (cho mọi loại da) và dạng kem ( phù hợp với da khô, thiếu ẩm).\r\nMặt nạ dạng nước: thích hợp với làn da dầu, da hỗn hợp dầu, da nhiều bã nhờn, lỗ chân lông to và có mụn; giúp cấp nước sâu, hạn chế bã nhờn, dịu nhẹ phù hợp với da nhạy cảm, da mụn.<br>\r\n1.	GREEN TEA - TRÀ XANH <br>\r\n2.	BAMBO – TRE<br>\r\n3.	TEA TRE - TRÀM TRÀ<br>\r\n4.	LIME – CHANH<br>\r\n5.	ROSE - HOA HỒNG<br>\r\n6.	BROCCOLI - BÔNG CẢI XANH<br>\r\nMặt nạ dạng tinh chất: phù hợp với mọi loại da, da thiếu ẩm và tối màu, giúp cấp ẩm nhẹ nhàng.<br>\r\nCUCUMBER - DƯA LEO<br>\r\nALOE - NHA ĐAM<br>\r\nMANUKA HONEY - MẬT ONG MANUKA<br>\r\nPOMEGRANATE - LỰU<br>\r\nTOMATO - CÀ CHUA<br>\r\nFIG - QUẢ SUNG<br>\r\n<br>\r\nMặt nạ dạng kem: phù hợp với da khô, da hỗn hợp khô, da khô ráp, thiếu ẩm.<br>\r\nSHEA BUTTER - BƠ HẠT MỠ<br>\r\nACAI BERRY - QUẢ ACAI BERRY<br>\r\nRICE - GẠO<br>\r\nGINSENG - NHÂN SÂM<br>\r\nOAT MEAL - YẾN MẠCH<br>\r\n• Hạn sử dụng: 36 tháng kể từ ngày sản xuất. Chiết xuất lựu, nhân sâm, chanh, hoa hồng 24 tháng kể từ ngày sản xuất/NSX xem trên bao bì sản phẩm <br>\r\n', 'csd', 5),
(9, 'Mặt Nạ Phục Hồi Dưỡng Trắng Da Skinsomnia Brightening X2 Beauty Sleep Mask Pack', 37000, 200, 'image\\chăm sóc da\\mặt nạ skinsomnia', 'Mặt Nạ Phục Hồi Dưỡng Trắng Da Skinsomnia Brightening X2 Beauty Sleep Mask Pack<br>\r\n Có khả năng giải độc da tuyệt vời, tấm mặt nạ được làm bằng sợi bông tự nhiên nhỏ mềm và có khả năng bám sát toàn bộ bề mặt da, đồng thời độ thấm hút cao của mặt nạ giữ được nhiều tinh chất hơn mang lại hiệu quả cao hơn cho da.<br>\r\n• Thương hiệu: Skinsomnia.<br>\r\n• Xuất xứ: Hàn Quốc.<br>\r\n• Dung tích: 30ml.<br>\r\n• Hướng dẫn sử dụng: Sau khi làm sạch da, sử dụng nước hoa hồng cần bằng da, lấy miếng mặt nạ ra đắp lên mặt canh đều các góc mắt, mũi, miệng, thư giãn 10 - 20 phút, tháo mặt nạ và tiếp tục vỗ nhẹ để các dưỡng chất được hấp thụ tối đa.<br>\r\n• Hạn sử dụng: 3 năm kể từ ngày sản xuất/NSX xem trên bao bì sản phẩm.<br>\r\n', 'csd', NULL),
(10, 'Tinh Chất Dưỡng Ẩm Sâu, Phục Hồi Da Mụn Innisfree Green Tea Seed Serum', 390000, 20, 'image\\chăm sóc da\\tinh chất dưỡng some by mi', 'Tinh Chất Dưỡng Ẩm Sâu, Phục Hồi Da Mụn Innisfree Green Tea Seed Serum. <br>\r\n- Thương hiệu: Innisfree.<br>\r\n- Dung tích: 80ml.<br>\r\n1. Dành cho mọi loại da, da mụn<br>\r\n2. Tinh chất dưỡng ẩm sâu, khóa ẩm, chống khô da, làm sáng da.<br>\r\n3. Chiết xuất Hạt Trà Xanh chống oxy hóa, ngăn mụn, phục hồi da.<br>\r\n• Hạn sử dụng: 36 tháng kể từ ngày sản xuất/NSX xem trên bao bì sản phẩm (12 tháng kể từ ngày mở nắp).<br>\r\n', 'csd', NULL),
(11, 'Kem Dưỡng Trắng Da, Đặc Trị Nám DongSung Rannce Cream', 220000, 20, 'image\\chăm sóc da\\kem dongsung', 'Kem Dưỡng Trắng Da, Đặc Trị Nám DongSung Rannce Cream.<br>\r\n- Thương hiệu: DongSung.<br>\r\n- Khối lượng: 10g.<br>\r\n1. Dành cho mọi loại da.<br>\r\n2. Kem dưỡng đặc trị thâm nám, tàn nhang, dưỡng trắng và giúp da sáng hồng từ sâu bên trong. Đồng thời còn nuôi dưỡng khô ráp trở nên mịn màng, mềm mại với độ ẩm tuyệt vời.<br>\r\n3. Hoạt chất dưỡng trắng an toàn Alpha-Bisabolol, Nọc ong, Axit Kojic... giúp loại bỏ độc tố, mờ thâm nám, ngăn ngừa nám sạm, cải thiện làn da trắng sáng.\r\nHướng dẫn sử dụng:<br>\r\n- Sau bước làm sạch da, sử dụng các bước dưỡng da cơ bản.<br>\r\n- Lấy một lượng kem vừa đủ thoa đều lên da, vỗ nhẹ để sản phẩm được hấp thụ tối đa.<br>\r\n- Dùng hai lần sáng tối mỗi ngày, lưu ý nên sử dụng kem chống nắng để bảo vệ da khỏi ánh nắng mặt trời để sản phẩm được phát huy tối đa hiệu quả.<br>\r\n• Hạn sử dụng: 2 năm kể từ ngày sản xuất/NSX xem trên bao bì sản phẩm.<br>\r\n', 'csd', 5),
(12, 'Innisfree Jeju Cherry Blossom Tone Up Cream', 450000, 50, 'image\\chăm sóc da\\kem innisfree', 'Innisfree Jeju Cherry Blossom Tone Up Cream<br>\r\nKem Dưỡng Trắng Da Nâng Tone Tức Thì Innisfree Jeju Cherry Blossom Tone-Up Cream với các chiết xuất thiên nhiên vừa giúp da dưỡng ẩm, vừa nâng tông nhẹ nhàng mang đến làn sáng mịn tự nhiên như cánh hoa anh đào ở đảo Jeju.<br>\r\n• Thương hiệu: Innisfree.<br>\r\n• Xuất Xứ: Hàn Quốc.<br>\r\n• Dung tích: 50ml.<br>\r\n• Hướng dẫn sử dụng: Sử dụng vào buổi sáng, ở bước cuối cùng trong chu trình chăm sóc da. Lấy một lượng vừa đủ thoa đều lên da vỗ nhẹ để dưỡng chất được hấp thụ tối đa nâng cao hiệu quả của sản phẩm.<br>\r\n• Hạn sử dụng: 3 năm kể ngày sản xuất/NSX xem trên bao bì (12 tháng sau khi mở nắp).<br>\r\n', 'csd', 5),
(13, 'Kem Chống Nắng The Saem Eco Earth Power Pink Sun Cream SPF50+ PA++++', 240000, 82, 'image\\chăm sóc da\\chống nắng eco 2', 'Kem Chống Nắng Giảm Dầu, Giúp Da Sáng Hồng Tự Nhiên The Saem Eco Earth Power Pink Sun Cream SPF50+ PA++++.<br>\r\n- Thương hiệu: The Saem.<br>\r\n- Trọng lượng: 50g.<br>\r\n- Chăm sóc cho làn da căng thẳng do tác hại của tia UV bằng cách làm dịu và cung cấp độ ẩm cho da. Với thành phần thực vật tự nhiên chứa 4 loại cây có sức sống mạnh mẽ giúp hóa giải cho sự căng thẳng của da sau nhiều giờ liền ở ngoài trời hay trang điểm.<br>\r\n• Hạn sử dụng: 3 năm kể từ ngày sản xuất/NSX xem trên bao bì  (12 tháng sau khi mở nắp).<br>\r\n', 'csd', NULL),
(14, 'Kem Chống Nắng Nâng Tone, Kiềm Dầu Innisfree Tone Up No Sebum Sunscreen SPF50/PA++++', 320000, 30, 'image\\chăm sóc da\\chống nắng innisfree', 'Kem Chống Nắng Nâng Tone, Kiềm Dầu Innisfree Tone Up No Sebum Sunscreen SPF50/PA++++.<br>\r\n- Thương hiệu: Innisfree.<br>\r\n- Dung tích: 50ml.<br>\r\n1. Dành cho da dầu, da hỗn hợp thiên dầu.\r\n2. Có khả năng nâng tone da, kiềm dầu, bảo vệ da dưới tác động của tia UV.<br>\r\n3. Thành phần chiết xuất rau má và trà xanh giúp cấp nước và làm dịu da hiệu quả.<br>\r\n• Hạn sử dụng: 36 tháng kể từ ngày sản xuất/NSX xem trên bao bì sản phẩm (12 tháng kể từ ngày mở nắp).<br>\r\n', 'csd', NULL),
(15, 'Kem lót Maybelline', 158000, 100, 'image\\trang điểm\\kem lót', 'Kem lót.<br>\r\n• Thương hiệu: Maybelline.<br>\r\n• Xuất xứ: Trung Quốc.<br>\r\n• Dung tích: 22ml.<br>\r\n• Hạn sử dụng: 3 năm kể từ ngày sản xuất/NSX xem trên bao bì.<br>\r\n', 'td', 5),
(16, 'Kem Che Khuyết Điểm Che Phủ Mịn Nhẹ, Tự Nhiên Lilybyred Magnet Fit Liquid Concealer SPF30/PA++ 8g', 159000, 20, 'image\\trang điểm\\che khuyết điểm lily', 'Kem che khuyết điểm Lilybyred với khả năng che phủ hoàn hảo các loại khuyết điểm khác nhau, kết cấu mịn nhẹ tự nhiên, dễ tán giúp bạn duy trì làn da mịn nhẹ như nhung, hoàn hảo không tì vết.<br>\r\n• Thương hiệu: Lilybyred.<br>\r\n\r\n• Xuất xứ: Hàn Quốc.<br>\r\n\r\n• Dung tích: 8g.<br>\r\n\r\n• Đặc trưng:<br>\r\n\r\n- Thiết kế có dạng thon dài với phần thân trong suốt giúp bạn quan sát màu sản phẩm dễ dàng hơn.<br>\r\n\r\n- Đầu cọ chéo dễ tán đều, dễ dàng lấy lượng kem vừa đủ và tiết kiệm.<br>\r\n\r\n- Phần trên thân sản phẩm in dòng chữ logo Lilybyred màu trắng đậm đơn giản mà tinh tế, nổi bật.<br>\r\n\r\n- Che khuyết điểm có kết cấu kem mịn nhẹ, dễ tán.<br>\r\n\r\n- Độ bám màu tốt vô cùng tự nhiên, không bị bí, dày, không tạo cảm giác nặng nề hay khó chịu.<br>\r\n\r\n- Độ che phủ hoàn hảo, tự nhiên giúp che phủ các khuyết điểm như mụn, vết thâm, tàn nhang, mẩn đỏ,...<br>\r\n\r\n- Phù hợp cho mọi loại da đặc biệt là làn da dầu, mụn.<br>\r\n\r\n- Chỉ số chống nắng SPF30 PA++ giúp bảo vệ da khỏi tác hại từ môi trường bên ngoài.<br>\r\nKem che khuyết điểm Lilybyred Magnet Fit Liquid Concealer có 3 tông màu, hiện tại Thế giới Skinfood có đầy đủ các màu:<br> \r\n\r\n #19: Pure Fit: da sáng.<br>\r\n\r\n #21: Nude Fit: da tự nhiên.<br>\r\n# 23: Natural Fit: da tối màu .\r\n<br>\r\n• Đối tượng khuyên dùng:<br>\r\n\r\n- Dành cho mặt.<br>\r\n\r\n- Dành cho những bạn muốn tìm sản phẩm trang điểm che khuyết điểm che phủ mịn nhẹ tự nhiên.<br>\r\n\r\n• Hướng dẫn sử dụng: Lấy một lượng nhỏ kem che khuyết điểm vừa đủ thoa lên những vùng da có mụn, quầng thâm, dùng bông mút dặm nhẹ kem lên từng điểm sau đó tán đều ra xung quanh. Nên thoa một lớp kem mỏng hoặc vừa đủ khi cần thiết để che phủ trông tự nhiên hoàn hảo hơn.<br>\r\n\r\n• Hạn sử dụng: 2 năm 6 tháng kể từ ngày sản xuất/NSX xem trên bao bì (12 tháng sau khi mở nắp).<br>', 'td', NULL),
(17, 'Chì Kẻ Mày Ngang Thế Hệ Mới Innisfree Auto Eyebrow Pencil', 59000, 20, 'image\\trang điểm\\kẻ chân mày', 'Chì Kẻ Mày Ngang Thế Hệ Mới Innisfree Auto Eyebrow Pencil.<br>\r\n\r\n- Thương hiệu: Innisfree.<br>\r\n\r\n- Khối lượng: 0.3g.<br>\r\n\r\n"Câu chuyện thương hiệu Innisfree:\r\nTHƯƠNG HIỆU MỸ PHẨM THIÊN NHIÊN HÀNG ĐẦU HÀN QUỐC."<br>\r\n\r\n- Innisfree thuộc tập đoàn Amore Pacific Hàn Quốc (đồng sở hữu các thương hiệu Sulwhasoo, Laneige, Mamonde, Etude house…).<br>\r\n\r\n- Innisfree là thương hiệu mỹ phẩm theo chủ nghĩa tự nhiên đầu tiên tại Hàn Quốc, nhằm mục đích chia sẻ lợi ích từ thiên nhiên tinh khiết và hướng tới vẻ đẹp khỏe mạnh thực sự.<br>\r\n\r\n- Innisfree sử dụng nguyên liệu tự nhiên đáng tin cậy từ hòn đảo Jeju- nơi có không khí trong lành, đất đai màu mỡ, ánh nắng ấm áp và nguồn nước sạch không bị ô nhiễm.<br>\r\n\r\nThế giới Skinfood mong muốn mang những sản phẩm làm đẹp nổi tiếng, uy tín và chất lượng từ thương hiệu Innisfree tại Hàn Quốc này, đến với người tiêu dùng Việt Nam. Với sự cam kết về chất lượng và tin cậy nhất. "<br>\r\n\r\nChì kẻ mày ngang lâu phai Innisfree Auto Eyebrow Pencil với thiết kế 2 đầu: <br>\r\n\r\n- 1 đầu chì mềm cực kỳ tiện lợi cho các bạn mới tập kẻ.<br>\r\n\r\n- 1 đầu chổi dễ dàng tạo dáng mày và đều chỉnh màu sắc đậm nhạt.<br>\r\n\r\n - Thành phần tự nhiên không gây kích ứng cho da.<br>\r\n\r\n- Bản nâng cấp với nhiều màu sắc đậm nhạt khác nhau giúp tạo nên nhiều phong cách cho đôi mày đẹp mà vẫn tự nhiên như tiêu chí của các dòng Makeup Innisfree. <br>\r\n\r\n• Hạn sử dụng: 36 tháng kể từ ngày sản xuất/NSX xem trên bao bì sản phẩm.<br>', 'td', NULL),
(18, 'Son Thỏi Lì, Lên Màu Siêu Xinh Romand New Zero Matte Lipstick 3g [SHELL BEACH NUDE COLLECTION]', 122000, 20, 'image\\trang điểm\\son', 'Son Thỏi Lì, Lên Màu Siêu Xinh Romand New Zero Matte Lipstick<br>\r\n\r\n- Thương hiệu: Romand <br>\r\n\r\n- Dung tích: 3g <br>\r\n\r\n- Hạn sử dụng: 3 năm kể từ ngày sản xuất/ NSX xem trên bao bì <br>', 'td', NULL),
(19, 'Set 3 Sản Phẩm Phấn Tạo Khối Và Cọ Cho Đường Nét Hoàn Hảo Romand Better Than Cereal Edition 9.5g', 499000, 20, 'image\\trang điểm\\tạo khối', 'Set 3 Sản Phẩm Phấn Tạo Khối Và Cọ Cho Đường Nét Hoàn Hảo Romand Better Than Cereal Edition 9.5g<br>\r\n\r\n- Thương hiệu: Romand<br>\r\n\r\n- Dung tích: 9.5g <br>\r\n\r\n- Hạn sử dụng: 3 năm kể từ ngày sản xuất/ NSX xem trên bao bì <br>\r\n', 'td', NULL),
(20, 'Cọ Viền Môi & Mắt Vacosi Lip & Eyeliner Brush - L03', 39000, 20, 'image\\phụ kiện\\co', 'Cọ Viền Môi & Mắt Vacosi Lip & Eyeliner Brush - L03<br>\r\n\r\n- Thương Hiệu: Vacosi<br>\r\n\r\nCọ môi Vacosi L-03 giúp bước vẽ môi thêm phần dễ dàng, đồng thời có thể sử dụng kẻ đường viền mắt đúng chuẩn hơn.<br>\r\n\r\nVới đầu lông mềm, mượt khi đánh lên môi sẽ làm cho đôi môi của bạn trông đẹp, quyến rũ và màu son đều hơn.<br>\r\n\r\nDùng cọ để kẻ viền mắt dạng kem, bột hoặc gel<br>\r\n\r\nDùng với sản phẩm: dạng kem (cream), Gel\r\n<br>\r\n***Ưu điểm nổi bật:<br>\r\n\r\nChất liệu lông cọ mềm.<br>\r\n\r\nThiết kế nhỏ gọn tiện lợi.<br>\r\n\r\nNắp đậy đi kèm bảo vệ cọ và chống bụi bẩn.<br>', 'pk', 5),
(21, 'Phấn Nước Mỏng Mịn, Che Phủ Tốt, Lâu Trôi Missha Velvet Finish Cushion SPF50+ PA+++', 142000, 20, 'image\\trang điểm\\cushion', 'Phấn Nước Mỏng Mịn, Che Phủ Tốt, Lâu Trôi Missha Velvet Finish Cushion SPF50+ PA+++<br>\r\n\r\n- Thương hiệu: Missha<br>\r\n\r\n\r\nPhấn nước Missha Velvet Finish Cushion SPF50+ PA+++ giúp che phủ khuyết điểm hoàn hảo, đồng thời có khả năng chống nắng giúp bảo vệ làn da mỏng manh dưới tác hại của UV với các thành phần không gây kích ứng và phù hợp với mọi làn da.\r\n<br>\r\n- Kết cấu mỏng mịn tự nhiên, khả năng giữ tone màu tốt thách thức thời gian, mồ hôi trong quá trình hoạt động.\r\n<br>\r\n- Khi apply lên da, phấn nước không gây bết dính khó chịu, không tạo độ bóng dầu sau khi sử dụng; mang lại sự thoải mái khi sử dụng điện thoại mà không lo bị hằn dấu.<br>\r\n\r\n- Tone màu tự nhiên cùng độ che phủ cao giúp dễ dàng che đi những khuyết điểm, kể cả vùng da mụn, những vùng có lỗ chân lông to hay những vùng da không đều màu; đem lại làn da căng bóng, rạng rỡ.\r\n<br>\r\n- Chỉ số chống nắng lên đến SPF50+ PA+++ sẽ tạo lớp màng bảo vệ cho làn da mỏng manh khỏi tác hại của tia UV, giảm sự tổn thương từ nhiệt độ ánh sáng mặt trời gây lên bề mặt da.\r\n<br>\r\n- Giúp cung cấp độ ẩm cho da, cùng với thành phần có tác dụng dưỡng trắng, giúp da mịn màng.<br>\r\n\r\n• Hạn sử dụng: 3 năm kể từ ngày sản xuất/NSX xem trên bao bì <br>', 'td', NULL),
(22, 'Máy Rửa Mặt Làm Sạch Sâu, Kết Hợp Chức Năng Massage WellDerma Cleansing Fish', 262000, 20, 'image\\phụ kiện\\mayruamat', 'Máy Rửa Mặt Làm Sạch Sâu, Kết Hợp Chức Năng Massage WellDerma Cleansing Fish<br>\r\n\r\n- Thương hiệu: WellDerma.<br>\r\n- Kích cỡ: 130 mm x 55 mm<br>\r\n\r\n- Trọng lượng: 96 gram<br>\r\n\r\n-  1 hộp sản phẩm bao gồm: 1 máy rửa mặt và một dây sạc cổng USB<br>\r\n\r\nLưu ý: Sản phẩm không có chế độ bảo hành. Thế Giới Skinfood hỗ trợ đổi sản phẩm trong vòng 7 ngày kể từ ngày mua hàng, nếu có lỗi từ nhà sản xuất, lỗi phần mềm. <br>\r\n\r\n** Sản phẩm có kèm theo dây sạt nằm phía dưới bên trong hộp trắng. <br>\r\n\r\n***Đôi nét về thương hiệu: WellDerma là một hãng chuyên nghiên cứu và sản xuất về các sản phẩm làm đẹp và thiết bị làm đẹp với phương châm chọn lựa những điều tốt nhất cho khách hàng, sử dụng những nguyên liệu sạch từ nhiều nơi trên thế giới. Thương hiệu xuất xứ từ Hàn Quốc này nổi tiếng với các sản phẩm về mặt nạ, thanh lăn và máy rửa mặt, hiện tại hãng có rất nhiều các cửa hàng chi nhánh ở Hàn, Trung bao gồm Hồng Kông với quy mô lớn.<br>\r\n\r\nTại sao phải sử dụng máy rửa mặt lại là lựa chọn đúng đắn?<br>\r\n\r\nYếu tố bên ngoài như môi trường ô nhiễm, nhiệt độ tăng cao cộng hưởng với sự phát triển mất kiểm soát của các tuyến dầu, tuyến mồ hôi và cách sinh hoạt, vệ sinh mặt không cẩn thận, luôn luôn là những nguyên nhân khiến làn da hứng chịu những rắc rối gây mất thẩm mỹ và ảnh hưởng đến sức khoẻ của da mỗi ngày.\r\n\r\nCác tác nhân gây hại luôn có kích thước nhỏ, ngày một biến đổi mạnh mẽ và ồ ạt hơn. Và điều đặc biệt chúng ta không thể làm sạch mọi tạp chất hoàn toàn những đầu ngón tay vì tay không có chức năng xoáy sâu vào lỗ chân lông. Vì vậy sự kết hợp giữa sản phẩm làm sạch + thiết bị làm sạch như máy rửa mặt, sẽ là chiếc chìa khoá giúp bạn chiến thắng trước những yếu tố xấu xa này.\r\n\r\nCông dụng 1: Làm sạch sâu – phần thân máy<br>\r\n\r\n- Đem lại độ mịn màng trên toàn bộ gương mặt.<br>\r\n\r\n- Hạn chế bị lên mụn, ngăn chặn sự sần sùi do mụn ẩn, sợi bã nhờn gây ra<br>. \r\n\r\n- Dưới tác động rung hợp lý của máy sẽ giúp lưu thông tuần hoàn máu<br>\r\n\r\n- Làm sạch cặn trang điểm còn sót lại khi bạn tẩy trang chưa kĩ<br>\r\n\r\n- Làm sạch những tạp chất được sản sinh dư thừa từ tuyến nhờn và tuyến mồ hôi\r\n<br>\r\n- Cải thiện độ sáng của da<br>\r\n\r\n- Không ảnh hưởng đến độ săn chắc của da về lâu dài. <br>\r\n\r\nCông dụng 2: Massage mặt – phần đuôi máy\r\n<br>\r\n- Duy trì độ săn chắc và độ đàn hồi cho da khi bạn massage đều đặn<br>\r\n\r\n- Làm thư giãn các cơ hàm, vùng trán, vai và xương đòn<br>\r\n\r\n- Giảm mệt mỏi, giảm sự hình thành của các nếp nhăn, dùng lâu dài giúp trẻ hơn\r\n<br>\r\nNHỮNG LƯU Ý CẦN BIẾT ĐỂ SỬ DỤNG VÀ BẢO QUẢN MÁY RỬA MẶT WELLDERMA<br>\r\n\r\n- Về cách sạc:<br>\r\n\r\nTrên thông số sản phẩm để thông tin "Power supply 5V", tức sản phẩm có nguồn điện vào tương đương với điện thoại di động thông dụng. Vậy nên cách chăm sóc pin của sản phẩm này tương tự như các chăm sóc và sạc pin cho điện thoại.<br>\r\n\r\nSản phẩm sẽ kèm 1 dây có cổng usb, tuy nhiên để bảo quản pin tốt nhất nên cắm trực tiếp vào nguồn điện. Sử dụng đầu sạc điện thoại của khách hàng cắm dây cổng usb của sản phẩm vào để sạc.<br>\r\n\r\n***Khuyến cáo khách hàng cần sử dụng đầu sạc chính hãng để có nguồn điện ổn định nhất. Sử dụng những linh kiện không chính hãng nguồn điện vào sẽ không ổn định dễ gây hư hỏng pin, và gây nóng thiết bị.<br>\r\n\r\n- Về thời lượng sử dụng sản phẩm:<br>\r\n\r\nTheo thông số trên bao bìa của hãng: Thời gian sạc: 2 tiếng.<br>\r\n\r\nĐể bảo quản pin tốt nhất lần đầu sạc nên sạc 8 tiếng.<br>\r\n\r\nThời gian sử dụng ước tính: 4-5 tiếng\r\n<br>\r\nĐây là thời gian ước tính dựa trên tình trạng pin tốt nhất. Giao động phụ thuộc vào cách bảo quản pin, thời lượng cũng như tốc độ (mạnh nhẹ) sử dụng của mỗi người.<br>\r\n\r\n \r\n\r\n- Về cách sử dụng:<br>\r\n\r\nSản phẩm khi khởi động và tắt nguồn, đều cần nhấn giữ nút nguồn 3 giây để khởi động. <br>\r\n\r\nNút "+" "-" để điều chỉnh độ rung mạnh nhẹ phù hợp với nhu cầu rửa mặt và massega của mỗi người.<br>\r\n\r\n***Máy rửa mặt Massage WellDerma Cleansing Fish được sản xuất tại nhà máy ở Trung Quốc, với thiết kế chất lượng của hãng Wellderma Hàn Quốc. Đặc biệt sản phẩm được kí kết bảo trợ công nghệ bởi tập đoàn công nghệ Samsung Hàn Quốc về bảo hiểm trách nhiệm khi sử dụng.<br>', 'pk', NULL),
(23, 'Thanh Lăn Đá Lạnh Massage Đa Năng Dearmay Icy Massager 42g', 102000, 20, 'image\\phụ kiện\\thanhlan', 'Thanh lăn lạnh Dearmay Icy Massager với nhiều công dụng hiệu quả như làm dịu da mệt mỏi tức thì với cảm giác mát lạnh, sảng khoái, giảm sưng, se lỗ chân lông, giúp da đàn hồi hơn.<br>\r\n• Thương hiệu: Dearmay\r\n<br>\r\n• Xuất xứ: Hàn Quốc<br>\r\n\r\n• Khối lượng: 42g<br>\r\n\r\n• Đặc trưng:<br>\r\n\r\n- Thanh lăn lạnh Dearmay Icy Massager mát lạnh cho làn da thư giãn tối đa sau 1 ngày làm việc mệt mỏi.<br>\r\n\r\n- Khả năng giữ lạnh cực tốt giúp se khít lỗ chân lông hiệu quả. <br>\r\n\r\n- Làm dịu, giảm sưng vùng da bị tổn thương mệt mỏi hoặc do côn trùng cắn.<br>\r\n\r\n- Nâng cơ, giúp da đàn hồi, săn chắc và hạn chế quá trình lão hóa da. \r\n\r\n- Hỗ trợ hấp thụ và làm tăng tác dụng của các loại kem dưỡng, mặt nạ,..<br>\r\n\r\n- Sản phẩm được làm từ kim loại cao cấp không rỉ, với thiết kế nhỏ gọn, dễ thao tác và vệ sinh<br>\r\n\r\n• Đối tượng khuyên dùng:<br>\r\n\r\n- Dành cho những bạn thường xuyên bị sưng mặt vào buổi sáng mỗi khi thức dậy \r\n<br>\r\n- Dành cho những bạn đang gặp vấn đề về lỗ chân lông to, đàn hồi kém <br>\r\n\r\n- Dành cho những bạn thường xuyên bị mẩn đỏ do các tác động của môi trường bên ngoài như nhiệt độ cao <br>\r\n\r\n- Dành cho những bạn thường xuyên bị mỏi mắt, tay, chân <br>\r\n\r\n- Dành cho những bạn thường xuyên bị bấm tím chân, tay.<br>\r\n\r\n• Hướng dẫn sử dụng: <br>\r\n\r\n- Đặt thanh lăn lạnh vào ngăn đá tủ lạnh khoảng 1 tiếng<br>\r\n\r\n- Sau khi dùng kem dưỡng, serum,...hoặc mặt nạ, dùng thanh lăn lăn đều khắp mặt theo hướng từ trong ra ngoài ,lăn đều tay cho đến khi kem thấm đều. <br>\r\n\r\n- Rửa lại thanh lăn lạnh bằng nước sạch<br>', 'pk', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdh`
--
ALTER TABLE `chitietdh`
  ADD PRIMARY KEY (`MaDH`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`madm`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`us_id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `madm` (`madm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdh`
--
ALTER TABLE `chitietdh`
  MODIFY `MaDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`madm`) REFERENCES `danhmuc` (`madm`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
