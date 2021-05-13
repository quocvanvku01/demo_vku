/*
 Navicat Premium Data Transfer

 Source Server         : Mysql_DB
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : demovku

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 13/05/2021 15:48:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for table_chuandaura_monhoc
-- ----------------------------
DROP TABLE IF EXISTS `table_chuandaura_monhoc`;
CREATE TABLE `table_chuandaura_monhoc`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cdr_chung` int NULL DEFAULT NULL,
  `noi_dung` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `id_decuong` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 221 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_chuandaura_monhoc
-- ----------------------------
INSERT INTO `table_chuandaura_monhoc` VALUES (107, 12, 'Hiểu được các thách thức của bảo mật thông tin và giải thích được tầm quan trọng của chúng. Sinh viên có thể nhận biết các loại tấn công cơ bản.', 19);
INSERT INTO `table_chuandaura_monhoc` VALUES (108, 12, 'Liệt kê và hiểu các loại mã độc hại khác nhau.', 19);
INSERT INTO `table_chuandaura_monhoc` VALUES (109, 12, 'Mô tả các loại tấn công phi kỹ thuật', 19);
INSERT INTO `table_chuandaura_monhoc` VALUES (110, 13, 'Hiểu được các khái niệm cơ bản về bảo mật mạng thông qua các thiết bị mạng, các thiết bị bảo mật mạng, kỹ thuật và thiết kế mạng.', 19);
INSERT INTO `table_chuandaura_monhoc` VALUES (111, 14, 'Giải thích được các loại tấn công ứng dụng web phía server và client.', 19);
INSERT INTO `table_chuandaura_monhoc` VALUES (112, 14, 'Hiểu được các loại tấn công tầng ứng dụng.', 19);
INSERT INTO `table_chuandaura_monhoc` VALUES (113, 14, 'Giải thích các loại tấn công thông dụng dựa trên mạng.', 19);
INSERT INTO `table_chuandaura_monhoc` VALUES (114, 21, 'Phân tích các loại tấn công trên các thiết bị không dây và giải thích các cơ chế bảo mật không dây.', 19);
INSERT INTO `table_chuandaura_monhoc` VALUES (115, 12, 'Mô tả, nhận diện được các phần tử cơ bản, các nguyên tắc điều khiển và các phương pháp mô tả toán học của hệ thống điều khiển tự động.', 20);
INSERT INTO `table_chuandaura_monhoc` VALUES (116, 12, 'Các phương pháp để khảo sát tính ổn định của hệ thống, đánh giá chất lượng hệ thống điều khiển và thiết kế hệ thống điều khiển liên tục.', 20);
INSERT INTO `table_chuandaura_monhoc` VALUES (117, 14, 'Rèn luyện kỹ năng phân tích hệ thống, nhận diện các nguyên tắc điều khiển, các khâu động học cơ bản, mô tả toán học các hệ thống điều khiển tự động.', 20);
INSERT INTO `table_chuandaura_monhoc` VALUES (118, 15, '- Xác định được các tiêu chuẩn xét ổn định, phân tích chất lượng hệ thống và tổng hợp thiết kế hệ thống điều khiển tự động.', 20);
INSERT INTO `table_chuandaura_monhoc` VALUES (119, 17, 'Rèn luyện được tác phong làm việc tỉ mỉ, nghiêm túc, chủ động, tích cực, chăm chỉ, cẩn thận, chủ động trong học tập, hoàn thành nhiệm vụ học tập.', 20);
INSERT INTO `table_chuandaura_monhoc` VALUES (120, 17, 'Có tính trung thực và có trách nhiệm trong quá trình làm bài tập cá nhân, làm bài tập nhóm và làm bài kiểm tra. Thực hiện các nhiệm vụ được giao đúng thời gian quy định.', 20);
INSERT INTO `table_chuandaura_monhoc` VALUES (144, 12, 'Phân loại tín hiệu và hệ thống', 23);
INSERT INTO `table_chuandaura_monhoc` VALUES (145, 12, 'Mô tả lý thuyết lấy mẫu của tín hiệu theo thời gian.', 23);
INSERT INTO `table_chuandaura_monhoc` VALUES (146, 12, 'Biểu diễn tín hiệu và hệ thống trên miền thời gian.', 23);
INSERT INTO `table_chuandaura_monhoc` VALUES (147, 12, 'Phân tích tín hiệu và hệ thống LTI.', 23);
INSERT INTO `table_chuandaura_monhoc` VALUES (148, 13, 'Biểu diễn tín hiệu và hệ thống trong miền Z', 23);
INSERT INTO `table_chuandaura_monhoc` VALUES (149, 13, 'Ứng dụng biến đổi Z trong xử lý tín hiệu số', 23);
INSERT INTO `table_chuandaura_monhoc` VALUES (150, 14, 'Biểu diễn tín hiệu và hệ thống trên miền tần số', 23);
INSERT INTO `table_chuandaura_monhoc` VALUES (151, 14, 'Diễn giải phép biến đổi Fourier rời rạc', 23);
INSERT INTO `table_chuandaura_monhoc` VALUES (152, 14, 'Ứng dụng giải thuật của phép biến đổi Fourier nhanh', 23);
INSERT INTO `table_chuandaura_monhoc` VALUES (153, 17, 'Nâng cao kỹ năng làm việc nhóm.', 23);
INSERT INTO `table_chuandaura_monhoc` VALUES (154, 17, 'Phát triển kỹ năng giải quyết vấn đề.', 23);
INSERT INTO `table_chuandaura_monhoc` VALUES (155, 17, 'Phát triển kỹ năng lập trình matlab.', 23);
INSERT INTO `table_chuandaura_monhoc` VALUES (156, 12, 'Hiểu được kiến thức tổng quan về VĐK.', 24);
INSERT INTO `table_chuandaura_monhoc` VALUES (157, 12, 'Nắm vững kiến thức cơ bản về MCS-8051 và Kit Arduino', 24);
INSERT INTO `table_chuandaura_monhoc` VALUES (158, 13, 'Áp dụng kiến thức lập trình C để giải quyết các bài toán ứng dụng', 24);
INSERT INTO `table_chuandaura_monhoc` VALUES (159, 15, 'Rèn luyện các kỹ năng giải quyết vấn đề, tư duy, giao tiếp và tự học', 24);
INSERT INTO `table_chuandaura_monhoc` VALUES (160, 17, 'Rèn luyện thái độ và trách nhiệm trong học tập', 24);
INSERT INTO `table_chuandaura_monhoc` VALUES (161, 12, 'Mô tả được sự giống nhau và khác nhau giữa những hệ thống phân bố chuẩn so với hệ thống di động và cảm biến', 17);
INSERT INTO `table_chuandaura_monhoc` VALUES (162, 13, 'Diễn giải những vấn đề cơ bản để cân bằng sự hạn chế về năng lượng và nhu cầu giao tiếp trên các hệ thống di động và cảm biến', 17);
INSERT INTO `table_chuandaura_monhoc` VALUES (163, 16, 'Chỉ ra được sự khác nhau giữa các kiến trúc và giao thức trong hệ thống di động và cảm biến', 17);
INSERT INTO `table_chuandaura_monhoc` VALUES (164, 16, 'Mô phỏng/Thực nghiệm được hoạt động của các node mạng di động và hệ thống cảm biến theo chuẩn Lora và Zigbee', 17);
INSERT INTO `table_chuandaura_monhoc` VALUES (165, 17, 'Rèn luyện thái độ và trách nhiệm trong học tập', 17);
INSERT INTO `table_chuandaura_monhoc` VALUES (166, 17, 'ren luyen', 17);
INSERT INTO `table_chuandaura_monhoc` VALUES (172, 1, 'Nắm được các khái niệm cơ bản về hệ cơ sở dữ liệu phân tán; so sánh được những ưu và hạn chế giữa cơ sở dữ liệu tập trung và cơ sở dữ liệu phân tán.', 26);
INSERT INTO `table_chuandaura_monhoc` VALUES (173, 1, 'Có kiến về các hướng thức tiếp cận và thiết kế một cơ sở dữ liệu phân tán: các phương pháp phân mãnh dữ liệu, nhân bản, điều khiển đồng thời; quản lý giao tác, kiểm soát dữ liệu ngữ nghĩa và truy vấn phân tán', 26);
INSERT INTO `table_chuandaura_monhoc` VALUES (174, 2, 'Có kiến thức về ứng dụng của CSDL phân tán trong quản lý các tổ chức doanh nghiệp', 26);
INSERT INTO `table_chuandaura_monhoc` VALUES (175, 4, 'Truy vấn và cập nhật đồng bộ dữ liệu trên các database server.', 26);
INSERT INTO `table_chuandaura_monhoc` VALUES (176, 4, 'Biết tối ưu hóa truy vấn phân tán.', 26);
INSERT INTO `table_chuandaura_monhoc` VALUES (177, 5, 'Cài đặt được cơ sở dữ liệu phân tán cho bài toán trên một hệ quản trị CSDL(SQL Server, DB2 IBM, Oracle…)', 26);
INSERT INTO `table_chuandaura_monhoc` VALUES (178, 6, 'Có kỹ năng làm việc nhóm, kỹ năng thuyết trình một đề tài.', 26);
INSERT INTO `table_chuandaura_monhoc` VALUES (179, 4, 'Hiểu các khái niệm cơ bản, lịch sử phát triển của Công nghệ phần mềm', 27);
INSERT INTO `table_chuandaura_monhoc` VALUES (180, 4, 'Hiểu được các mô hình phát triển phần mềm, cách lựa chọn mô hình phù hợp với dự án.', 27);
INSERT INTO `table_chuandaura_monhoc` VALUES (181, 4, 'Hiểu về kiểm thử & các kỹ thuật kiểm thử', 27);
INSERT INTO `table_chuandaura_monhoc` VALUES (182, 4, 'Hiểu về triển khai & bảo trì phần mềm', 27);
INSERT INTO `table_chuandaura_monhoc` VALUES (183, 5, 'Hiểu về yêu cầu và phương pháp thu thập yêu cầu', 27);
INSERT INTO `table_chuandaura_monhoc` VALUES (184, 5, 'Hiểu về các phương pháp phân tích & đặc tả yêu cầu', 27);
INSERT INTO `table_chuandaura_monhoc` VALUES (185, 5, 'Hiểu về lập trình & các phương pháp lập trình', 27);
INSERT INTO `table_chuandaura_monhoc` VALUES (186, 5, 'Hiểu về phương pháp quản lý dự án phần mềm', 27);
INSERT INTO `table_chuandaura_monhoc` VALUES (187, 4, 'Hiểu được các khái niệm, cấu trúc, cú pháp của ngôn ngữ Ruby', 28);
INSERT INTO `table_chuandaura_monhoc` VALUES (188, 4, 'Hiểu được các khái niệm, phương pháp, kỹ thuật lập trình với Ruby On Rails', 28);
INSERT INTO `table_chuandaura_monhoc` VALUES (189, 5, 'Áp dụng được các phương pháp, cấu trúc và cú pháp của Ruby cũng như Ruby On Rails để phát triển được một phần mềm thực tế.', 28);
INSERT INTO `table_chuandaura_monhoc` VALUES (190, 5, 'Vận dụng được các kỹ năng giao tiếp, kỹ năng tư duy, làm việc nhóm và kỹ năng giải quyết vấn đề.', 28);
INSERT INTO `table_chuandaura_monhoc` VALUES (191, 6, 'Phát triển ý thức làm việc trong môi trường chuyên nghiệp.', 28);
INSERT INTO `table_chuandaura_monhoc` VALUES (192, 1, 'Hiểu được các khái niệm kiểm thử phần mềm, quy trình kiểm thử phần mềm', 29);
INSERT INTO `table_chuandaura_monhoc` VALUES (193, 1, 'Hiểu được các khái niệm, phương pháp, kỹ thuật thiết kế ca kiểm thử và lập kế hoạch kiểm thử.', 29);
INSERT INTO `table_chuandaura_monhoc` VALUES (194, 4, 'Áp dụng được các kỹ thuật thiết kế ca kiểm thử và sử dụng các công cụ kiểm thử cho một phần mềm thực tế.', 29);
INSERT INTO `table_chuandaura_monhoc` VALUES (195, 5, 'Vận dụng được các kỹ năng giao tiếp, kỹ năng tư duy, làm việc nhóm và kỹ năng giải quyết vấn đề.', 29);
INSERT INTO `table_chuandaura_monhoc` VALUES (196, 6, 'Phát triển ý thức làm việc trong môi trường chuyên nghiệp.', 29);
INSERT INTO `table_chuandaura_monhoc` VALUES (197, 2, 'Hiểu các khái niệm cơ bản của lập trình Android. Kiến trúc Android, vòng đời của một ứng dụng Android', 30);
INSERT INTO `table_chuandaura_monhoc` VALUES (198, 4, 'Xây dựng giao diện cho một ứng dụng Android với các thành phần cơ bản', 30);
INSERT INTO `table_chuandaura_monhoc` VALUES (199, 4, 'Lập trình với cơ sở dữ liệu SQLite, web service', 30);
INSERT INTO `table_chuandaura_monhoc` VALUES (200, 4, 'Lập trình với Service, Notification, Activity State and preferences, Maps and GPS, Using the Camera.', 30);
INSERT INTO `table_chuandaura_monhoc` VALUES (201, 4, 'Áp dụng kiến thức đã học để viết một ứng dụng Android', 30);
INSERT INTO `table_chuandaura_monhoc` VALUES (202, 2, 'Hiểu được tiếng anh chuyên ngành cơ bản về máy tính', 31);
INSERT INTO `table_chuandaura_monhoc` VALUES (203, 4, 'Áp dụng được kiến thức vào tìm kiếm tài liệu, xây dựng bài thuyết trình bằng tiếng anh.', 31);
INSERT INTO `table_chuandaura_monhoc` VALUES (204, 5, 'Vận dụng được các kỹ năng giao tiếp bằng tiếng anh trong công nghệ thông tin với người nước ngoài, kỹ năng tư duy, làm việc nhóm', 31);
INSERT INTO `table_chuandaura_monhoc` VALUES (205, 5, 'Vận dụng kiến thức vào làm báo cáo dự án bằng tiếng anh', 31);
INSERT INTO `table_chuandaura_monhoc` VALUES (206, 1, 'Hiểu được các cấu trúc dữ liệu và giải thuật cơ bản.', 32);
INSERT INTO `table_chuandaura_monhoc` VALUES (207, 4, 'Vận dụng được kỹ năng giao tiếp, kỹ năng tư duy và giải quyết vấn đề.', 32);
INSERT INTO `table_chuandaura_monhoc` VALUES (208, 5, 'Áp dụng được các kỹ thuật thiết kế để giải quyết các bài toán tin học.', 32);
INSERT INTO `table_chuandaura_monhoc` VALUES (209, 6, 'Phát triển ý thức làm việc trong môi trường chuyên nghiệp.', 32);
INSERT INTO `table_chuandaura_monhoc` VALUES (210, 2, 'Hiểu được ngôn ngữ HTML5, CSS, Javascript', 33);
INSERT INTO `table_chuandaura_monhoc` VALUES (211, 4, 'Sử dụng thành thạo trình để tạo lập một trang Web', 33);
INSERT INTO `table_chuandaura_monhoc` VALUES (212, 5, 'Xây dựng được ứng dụng Website tĩnh và triển khai trên môi trường trực tuyến', 33);
INSERT INTO `table_chuandaura_monhoc` VALUES (213, 2, 'Áp dụng kiến thức để xây dựng một sản phẩm phần mềm thông như giao diện window', 34);
INSERT INTO `table_chuandaura_monhoc` VALUES (214, 4, 'Áp dụng kiến thức để xây dựng một sản phẩm phần mềm liên quan đến ứng dụng lập trình mạng, lập trình servlet', 34);
INSERT INTO `table_chuandaura_monhoc` VALUES (215, 5, 'Vận dụng được các kiến thức đã học xây dựng một sản phẩm phần mềm liên quan Java Framework như Spring, Hibernate,..', 34);
INSERT INTO `table_chuandaura_monhoc` VALUES (216, 2, 'Hiểu được các khái niệm cơ bản, lý thuyết và phương pháp trong xử lý ảnh', 25);
INSERT INTO `table_chuandaura_monhoc` VALUES (217, 2, 'Vận dụng các kiến thức đã học và sử dụng thư viện, ngôn ngữ lập trình (OpenCV, Python/C++) để hiện thực các kỹ thuật trong xử lý ảnh', 25);
INSERT INTO `table_chuandaura_monhoc` VALUES (218, 4, 'Phát triển được một số ứng dụng đơn giản liên quan xử lý ảnh', 25);
INSERT INTO `table_chuandaura_monhoc` VALUES (219, 4, 'Đề xuất được các giải pháp trong đánh giá, phân tích, thiết kế các ứng dụng liên quan đến xử lý ảnh', 25);
INSERT INTO `table_chuandaura_monhoc` VALUES (220, 5, 'Phát triển kỹ năng tư duy, phản biện, làm việc nhóm, ý thức làm việc trong môi trường chuyên nghiệp', 25);

SET FOREIGN_KEY_CHECKS = 1;
