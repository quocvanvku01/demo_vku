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

 Date: 13/05/2021 15:49:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for table_kehoachgiangday
-- ----------------------------
DROP TABLE IF EXISTS `table_kehoachgiangday`;
CREATE TABLE `table_kehoachgiangday`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `noidung` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `hoatdongdayhoc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `baidanhgia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cdrhocphan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_hocphan` int NULL DEFAULT NULL,
  `thuochocphan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `namhoc` int NULL DEFAULT NULL,
  `hocky` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 160 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_kehoachgiangday
-- ----------------------------
INSERT INTO `table_kehoachgiangday` VALUES (117, '1. Giới thiệu tổng quan_a. Giới thiệu về bảo mật_b. Các rủi ro_c. Lỗ hổng', 'Phương pháp giảng dạy:_-Giảng giải_-Chất vấn_Phương pháp học tập_-Quan sát và lắng nghe_-Hỏi và trả lời câu hỏi', 'A1.1_A2.1', '1', 85, 'lythuyet', 2, 2);
INSERT INTO `table_kehoachgiangday` VALUES (118, '2. Xác thực, kiểm soát truy cập_a. Xác thực_b. Kiểm soát truy cập_c. Các giao thức mã hóa_d. Hạ tầng khóa công khai', 'Phương pháp giảng dạy:_-Giảng giải_-Chất vấn_Phương pháp học tập_-Quan sát và lắng nghe_-Hỏi và trả lời câu hỏi', 'A1.1_A2.1', '1_7_8', 85, 'lythuyet', 2, 2);
INSERT INTO `table_kehoachgiangday` VALUES (119, '3. Bảo mật web_a. Tấn công trình duyệt_b. Khai thác dữ liệu người dùng và website_c. Tấn công email', 'Phương pháp giảng dạy:_-Giảng giải_-Chất vấn_Phương pháp học tập_-Quan sát và lắng nghe_-Hỏi và trả lời câu hỏi', 'A1.1_A2.1', '3_4_7', 85, 'lythuyet', 2, 2);
INSERT INTO `table_kehoachgiangday` VALUES (120, 'Bài 1: Sử dụng lệnh trên Linux', 'Thực hành với một số lệnh căn bản trong Linux', 'A2.1', '3_4_7', 85, 'thuchanh', 2, 2);
INSERT INTO `table_kehoachgiangday` VALUES (121, 'Bài 2: Sử dụng các công cụ cơ bản trong Metasploit', 'Áp dụng các lệnh đã học ở bài 1 và thực hành thêm 1 số lệnh đặc thù của Metasploit để sử dụng các công cụ cơ bản', 'A2.1', '3_4_7', 85, 'thuchanh', 2, 2);
INSERT INTO `table_kehoachgiangday` VALUES (122, 'Bài 3: Thăm dò và thu thập thông tin đối tượng', 'Sử dụng Nmap, Metasploit, Kali và Wireshark để thu thập thông tin về mục tiêu', 'A2.1', '1_3_4_7', 85, 'thuchanh', 2, 2);
INSERT INTO `table_kehoachgiangday` VALUES (123, 'Chương 1. Giới thiệu về hệ thống di động và tính toán di động_1.1. Giới thiệu_1.2. Mô hình tính toán di động_1.3. Mạng không dây và mạng di động_1.3.1 Hệ thống vệ tinh_1.3.2 Mạng Ad-hoc_1.3.3 Mạng cảm biến_1.3.4 Mạng WPAN, WLAN, WMAN', 'Giảng dạy lý thuyết;_Phát vấn;_Hỏi/đáp;_Làm bài tập', 'A1.1_A2.1_A4.1_A4.2', '1', 111, 'lythuyet', 2, 2);
INSERT INTO `table_kehoachgiangday` VALUES (124, 'Chương 2. Giao thức truy cập trên thiết bị di động và không dây_2.1. Môi trường truyền không dây_2.2. Giới thiệu Ethernet MAC_2.3. Giao thức IEEE 802.11_2.5. Bluetooth and Zigbee (IEEE 802.15.4)_2.6. Lora và Mạng Lorawan_2.7. Mạng di động GSM, 2G, 3G, LTE-4G, 5G', 'Giảng dạy lý thuyết;_Phát vấn;_Hỏi/đáp;_Làm bài tập', 'A1.1_A2.1_A4.2', '1_2', 111, 'lythuyet', 2, 2);
INSERT INTO `table_kehoachgiangday` VALUES (125, 'Bài thực hành 1: Lập trình điều khiển cảm biến trên Arduino và Raspberry', 'GV Hướng dẫn mẫu;_SV tự thực hiện', '', '', 111, 'thuchanh', 2, 2);
INSERT INTO `table_kehoachgiangday` VALUES (126, 'Bài thực hành 2:_Thực hành Lora và LoraWan', 'GV Hướng dẫn mẫu;_SV tự thực hiện', 'A2.2', '4', 111, 'thuchanh', 2, 2);
INSERT INTO `table_kehoachgiangday` VALUES (127, 'Bài thực hành 3:_Thực hành Mạng cảm biến Zigbee', 'GV Hướng dẫn mẫu;_SV tự thực hiện', 'A2.2', '4', 111, 'thuchanh', 2, 2);
INSERT INTO `table_kehoachgiangday` VALUES (128, 'Chương 1. Tổng quan về xử lý ảnh_1.1	Khái niệm về ảnh số - xử lý ảnh_1.2	Lịch sử của xử lý ảnh_1.3	Ứng dụng xử lý ảnh số_1.4	Các bước cơ bản trong xử lý ảnh_1.5	Các thành phần trong hệ thống xử lý ảnh', 'Dạy: Trình bày bài giảng_Học ở lớp: Nghe và trao đổi_Tự học: Đọc trước bài giảng', 'A1.1_A2.1', '1_5', 91, 'lythuyet', 3, 1);
INSERT INTO `table_kehoachgiangday` VALUES (129, 'Chương 2. Cơ sở xử lý ảnh._2.1	Hệ thống thị giác của con người_2.2	Ánh sáng và quan phổ điện từ_2.3	Cảm biến và thu nhận ảnh_2.4  Số hóa ảnh - độ phân giải_2.5  Quan hệ cơ bản giữa các pixel_2.6 Một số công cụ toán học trong xử lý ảnh số', 'Dạy: Trình bày bài giảng_Học ở lớp: Nghe và trao đổi, làm bài tập_Tự học: Đọc trước bài giảng', 'A1.1_A2.1', '1_2_5', 91, 'lythuyet', 3, 1);
INSERT INTO `table_kehoachgiangday` VALUES (130, 'TH 1. Cài đặt OpenCV_- Cấu hình OpenCV_- Viết chương trình cơ bản sử dụng OpenCV và Python/C++_- Đọc và hiển thị ảnh_- Nộp bài trên hệ thống elearing', 'Dạy: Trình bày bài thực hành_Học ở lớp: Thực hành trên máy tính_Tự học: làm bài tập', 'A1.1_A2.1', '2_5', 91, 'thuchanh', 3, 1);
INSERT INTO `table_kehoachgiangday` VALUES (131, 'TH 2. Biến đổi cường độ điểm ảnh và Histogram_- Thay đổi độ sáng ảnh_- Thay đổi độ tương phản ảnh_- Tạo ảnh âm bản._- Biến đổi ảnh bằng hàm_-Biến đổi ảnh bằng hàm mũ(Gamma)_- Tính histogram của 1 ảnh_- Cân bằng histogram', 'Dạy: Trình bày bài bài thực hành_Học ở lớp: Thực hành trên máy tính_Tự học: làm bài tập', 'A1.1_A2.1', '2_3_4_5', 91, 'thuchanh', 3, 1);
INSERT INTO `table_kehoachgiangday` VALUES (132, 'Giới thiệu học phần_Chương 1. Tổng quan về hệ CSDL phân tán_1.1. Xử lý phân tán và hệ thống xử lý phân tán_1.1.1. Xử lý phân tán_1.1.2. Hệ thống phân tán 1.2. Hệ CSDL phân tán là gì 1.3. Sự cần thiết của hệ CSDL phân tán_1.4. Các đặc điểm của CSDL phân tán so với CSDL tập trung_1.5. Các mô hình cơ sở dữ liệu Client/Server_1.6. Mô hình cơ sở dữ liệu Server/Server_1.7. Mô hình tham chiếu CSDL phân tán_1.7.1. Lược đồ toàn cục 1.7.2. Lược đồ phân mảnh 1.7.3. Lược đồ cấp phát 1.7.4. Lược đồ ánh xạ cục bộ', 'Dạy:_- Giảng viên giới thiệu đến sinh viên mục tiêu môn học; vị trí và vai trò của môn học trong chương trình đào tạo của ngành; chuẩn đầu ra môn học, các hình thức kiểm tra đánh giá và trọng số của các bài đánh giá, nội dung học phần theo chương._- Giảng bài kết hợp trình chiếu slide bài giảng._- Đặt câu hỏi cho sinh viên suy nghĩ và trả lời._Học ở lớp:_- Nghe giảng._- Trả lời các câu hỏi của giảng viên đưa ra._- Đặt câu hỏi các vấn đề quan tâm._- Thảo luận: Chia nhóm thảo luận về các đặc trưng mạng máy tính_Học ở nhà:_- Ôn lại lý thuyết', 'A1.1', '1', 114, 'lythuyet', 3, 2);
INSERT INTO `table_kehoachgiangday` VALUES (133, 'Chương 1. Tổng quan về CSDL phân tán_1.8. Cấu trúc logic của CSDL phân tán._1.9. Lợi ích phân tán dữ liệu trên mạng_1.10. Hệ quản trị CSDL quan hệ_1.11. Tổng quan về hệ quản trị CSDL phân tán_1.11.1. Giới thiệu_1.11.2. Hệ quản trị CSDL phân tán thuần nhất_1.11.3. Hệ quản trị CSDL phân tán không thuần nhất 1.12. Mô hình kiến trúc hệ quản trị CSDL phân tán 1.13. Kiến trúc hệ quản trị CSDL phân tán', 'Dạy:_- Giảng bài kết hợp trình chiếu slide bài giảng._- Đặt câu hỏi/ bài tập cho sinh viên suy nghĩ và trả lời._Học ở lớp:_- Nghe giảng._- Suy nghĩ, thảo luận và trả lời các câu hỏi/ bài tập của giảng viên đưa ra._- Đặt câu hỏi các vấn đề quan tâm liên quan đến nội dung bài học._Học ở nhà:_- Ôn lại lý thuyết._- Làm bài tập về nhà', 'A1.1', '1_2_3_4_7', 114, 'lythuyet', 3, 2);
INSERT INTO `table_kehoachgiangday` VALUES (134, 'Chương 2. Thiết kế hệ CSDL phân tán_2.1. Các vấn đề về phân mảnh dữ liệu_2.1.1. Lý do phân mảnh 2.1.2. Các kiểu phân mảnh 2.1.3. Mức độ phân mảnh 2.1.4. Các quy tắc phân mảnh_2.1.5. Các kiểu cấp phát 2.1.6. Các yêu cầu thông tin 2.2. Phương pháp phân mảnh ngang_2.2.1. Khái niệm_2.2.2. Thông tin cần thiết của phân mảnh ngang_2.2.3. Phân mảnh ngang nguyên thủy_2.2.4. Tính đầy đủ và tính cực tiểu của vị từ đơn giản 2.2.5. Thuật toán xác định phân mảnh ngang nguyên thủy', 'Dạy:_- Giảng bài kết hợp trình chiếu slide bài giảng._- Đặt câu hỏi/ bài tập cho sinh viên suy nghĩ và trả lời._Học ở lớp:_- Nghe giảng._- Suy nghĩ, thảo luận và trả lời các câu hỏi/ bài tập của giảng viên đưa ra._- Đặt câu hỏi các vấn đề quan tâm liên quan đến nội dung bài học._Học ở nhà:_- Ôn lại lý thuyết._- Làm bài tập về nhà', 'A1.1', '1_2_3_4', 114, 'lythuyet', 3, 2);
INSERT INTO `table_kehoachgiangday` VALUES (135, 'Hướng dẫn cài đặt SQL Server phân tán', '- Giới thiệu về các hệ quản trị CSDL dùng trên phân tán và phiên bản dành cho database server._- Hướng dẫn cài đặt cấu hình kết nối từ các database server trong mạng LAN_- Hướng dẫn sinh viên thực hiện', 'A1.1', '2', 114, 'thuchanh', 3, 2);
INSERT INTO `table_kehoachgiangday` VALUES (136, 'BÀI THỰC HÀNH 1 (tt)', '- Giới thiệu LinkServer_- Hướng dẫn kết nối Link server_từ Access, SQL Server, Excel_- Theo dõi sinh viên làm bài', 'A1.1', '1', 114, 'thuchanh', 3, 2);
INSERT INTO `table_kehoachgiangday` VALUES (137, 'BÀI THỰC HÀNH 2:_Thiết kế phân tán Bài tập tình huống 1', '- Hướng dẫn thiết kế phân tán_- Hướng dẫn thực thi phân tán_trên mạng LAN_- Theo dõi sinh viên làm bài', 'A2.1', '6', 114, 'thuchanh', 3, 2);
INSERT INTO `table_kehoachgiangday` VALUES (138, 'Chương 1: Basic Ruby_1.	Syntax_2.	Array and Hashes_3.	Loop_4.	Blocks and Iterators_5.	Class, Object and Mudules_6.	Exceptions_7.	Exercises', 'Phương pháp giảng dạy:_- Giảng viên giới thiệu đến sinh viên mục tiêu môn học; vị trí và vai trò của môn học trong chương trình đào tạo của ngành; chuẩn đầu ra môn học, các hình thức kiểm tra đánh giá và trọng số của các bài đánh giá, nội dung học phần theo chương._- Giảng bài kết hợp trình chiếu slide bài giảng._- Đặt câu hỏi cho sinh viên suy nghĩ và trả lời._Phương pháp học tập_- Nghe giảng._- Trả lời các câu hỏi của giảng viên đưa ra._- Đặt câu hỏi các vấn đề quan tâm._- Thảo luận: Chia nhóm thảo luận các vấn đề về ưu điểm và nhược điểm của các ngôn ngữ lập trình hướng đối tượng thông dụng hiện nay; Tại sao nên sử dụng ngôn ngữ lập trình Ruby và Ruby On Rails?', 'A1.1', '1_2', 47, 'lythuyet', 2, 2);
INSERT INTO `table_kehoachgiangday` VALUES (139, 'Chương 2: Basic Ruby On Rails_1.	Introduction_2.	Setup_3.	Active Records_4.	Migrations_5.	Controller_6.	Routers_7.	Views_8.	Layouts_9.	Scaffolding_10.	Exercises', 'Phương pháp giảng dạy:_- Giảng bài kết hợp trình chiếu slide bài giảng._- Đặt câu hỏi cho sinh viên suy nghĩ và trả lời._Phương pháp học tập_- Nghe giảng._- Suy nghĩ, thảo luận và trả lời các câu hỏi của giảng viên đưa ra._- Đặt câu hỏi các vấn đề quan tâm liên quan đến nội dung bài học._- Thảo luận về hiệu quả của việc sử dụng Ruby On Rails', 'A1.1', '1', 47, 'lythuyet', 2, 2);
INSERT INTO `table_kehoachgiangday` VALUES (140, 'Kiểm tra giữa kỳ', 'Kiểm tra giữa kỳ', 'A3.1', '1_2_3', 47, 'lythuyet', 2, 2);
INSERT INTO `table_kehoachgiangday` VALUES (149, 'CHƯƠNG 1. TỔNG QUAN VỀ KTMT_1.1.	Các khái niệm cơ bản_1.1.1.	Kiến trúc và tổ chức_1.1.2.	Cấu trúc và chức năng_1.1.3.	Lịch sử phát triển_1.2.	Nguyên lý Von Neuman_1.3.	Phân loại kiến trúc_1.4.	Hiệu năng và luật Moore_1.5.	Một số kiến trúc máy tính hiện đại_1.5.1. Kiến trúc x86 và x86-64_1.5.2. Kiến trúc UltraSparc', 'Dạy: Trình bày bài giảng Slide. Đặt câu hỏi cho sinh viên suy nghĩ và trả lời._Học ở lớp: Nghe, thảo luận và trao đổi._Tự học: Ôn lại lý thuyết. Đọc trước bài giảng, tham khảo thêm tài liệu.', 'A1.1_A2.1_A3.1', '1', 19, 'lythuyet', 1, 2);
INSERT INTO `table_kehoachgiangday` VALUES (150, 'CHƯƠNG 2. CHỨC NĂNG MÁY TÍNH VÀ HỆ THỐNG BUS_2.1.	Các thành phần chính của máy tính_2.1.1. CPU_2.1.2. Bộ nhớ_2.1.3. Thiết bị vào/ra_2.1.4. Hệ thống Bus_2.2. Chức năng của máy tính_2.2.1. Nạp và thực thi lệnh_2.2.2. Khái niệm ngắt_2.2.3. Lược đồ trạng thái chu trình lệnh_2.2.4. Chức năng vào/ra_2.3. Hệ thống Bus_2.3.1. Mô hình liên kết thành phần trong máy tính_2.3.2. Các kiểu truyền thông trong hệ thống liên kết_2.3.3. Lược đồ liên kết bus_2.3.4. Các đặc điểm của Bus', 'Dạy: Trình bày bài giảng Slide. Đặt câu hỏi cho sinh viên suy nghĩ và trả lời._Học ở lớp: Nghe, thảo luận và trao đổi._Tự học: Ôn lại lý thuyết. Đọc trước bài giảng, tham khảo thêm tài liệu', 'A1.1_A2.1_A3.1', '2_3_4_5', 19, 'lythuyet', 1, 2);
INSERT INTO `table_kehoachgiangday` VALUES (151, 'CHƯƠNG 3. HỆ THỐNG BỘ NHỚ_3.1. Khái niệm và các đặc điểm của bộ nhớ_3.2. Phân cấp bộ nhớ_3.3. Bộ nhớ chính_3.3.1. Tổ chức_3.3.2. DRAM & SRAM_3.3.3. Một số kiểu ROM_3.3.4. DRAM hiệu năng cao SDRAM, DDR-SDRAM, Cache DRAM, …_3.3.5. Tổ chức bộ nhớ lớn', 'Dạy: Trình bày bài giảng Slide. Đặt câu hỏi cho sinh viên suy nghĩ và trả lời._Học ở lớp: Nghe, thảo luận và trao đổi._Tự học: Ôn lại lý thuyết. Đọc trước bài giảng, tham khảo thêm tài liệu.', 'A1.1_A2.1_A3.1', '2_3_4_5', 19, 'lythuyet', 1, 2);
INSERT INTO `table_kehoachgiangday` VALUES (152, 'Bài thực hành 1:_Sử dụng phần mềm CPU-Z kiểm tra chi tiết các thành phần: CPU, RAM, DISK,... của máy tính', 'Dạy: Giảng viên giao và hướng dẫn bài thực hành._Học ở lớp: Sinh viên thực hành trên máy._Tự học: Sinh viên hoàn thành đầy đủ bài tập về nhà.', 'A1.1_A2.1_A3.1', '2_4_5', 19, 'thuchanh', 1, 2);
INSERT INTO `table_kehoachgiangday` VALUES (153, 'Bài thực hành 2:_Assembly: Viết chương trình nhập vào các số nguyên dương và cộng dồn đến khi nào gặp một số âm thì kết thúc. Rồi in ra kết quả (Không cộng dồn số âm cuối vào).', 'Dạy: Giảng viên giao và hướng dẫn bài thực hành._Học ở lớp: Sinh viên thực hành trên máy._Tự học: Sinh viên hoàn thành đầy đủ bài tập về nhà.', 'A1.1_A3.1_A4.1', '1_3_4_5', 19, 'thuchanh', 1, 2);
INSERT INTO `table_kehoachgiangday` VALUES (154, 'Bài thực hành 3:_Kiểm tra cách máy tính thực hiện 1 chương trình (Sử dụng chương trình nguồn Assembly trong bài thực hành 2)._- Sử dụng phần mềm CPUSim xem cách CPU xử lý một chương trình._Các thông số mặc định của CPU và Main memory._+ CPU: Gồm các thanh ghi với số bít tương ứng_+ Xem kết quả và nhận xét', 'Dạy: Giảng viên giao và hướng dẫn bài thực hành. Hướng dẫn sử dụng phần mềm CPUSim và các phần mềm tương đương_Học ở lớp: Sinh viên thực hành trên máy._Tự học: Sinh viên hoàn thành đầy đủ bài tập về nhà.', 'A1.1_A2.1_A3.1', '2_3_4_5', 19, 'thuchanh', 1, 2);
INSERT INTO `table_kehoachgiangday` VALUES (155, 'Chương 1. Phần tử và hệ thống điều khiển tự động_1.1 Khái niệm điều khiển_1.2 Các nguyên tắc điều khiển_1.3 Phân loại điều khiển_1.4 Một số ví dụ về các hệ thống điều khiển', 'Đặt vấn đề_Thuyết trình__Lắng nghe_Làm bài tập', 'A1.1_A1.2', '1_2', 112, 'lythuyet', 3, 2);
INSERT INTO `table_kehoachgiangday` VALUES (156, 'Chương 2. Mô tả toán học hệ thống điều khiển liên tục_2.1 Khái niệm về mô hình toán học_2.2 Hàm truyền_2.3 Hàm truyền của hệ thống tự động_2.4 Phương trình trạng thái', 'Đặt vấn đề_Thuyết trình_Phát vấn__Lắng nghe_Làm bài tập', 'A1.1_A1.2', '1_2_3', 112, 'lythuyet', 3, 2);
INSERT INTO `table_kehoachgiangday` VALUES (157, 'Chương 3. Khảo sát tính ổn định của hệ thống_3.1 Khái niệm ổn định_3.2 Tiêu chuẩn ổn định đại số_3.3 Phương pháp quỹ đạo nghiệm số (QĐNS)_3.4 Tiêu chuẩn ổn định tần số', 'Đặt vấn đề_Thuyết trình__Lắng nghe_Làm bài tập', 'A1.1_A1.2', '1_2_3_6', 112, 'lythuyet', 3, 2);
INSERT INTO `table_kehoachgiangday` VALUES (158, 'noi dung buoi 1', 'buoi 1', 'A1.1', '1', 92, 'lythuyet', 2, 2);
INSERT INTO `table_kehoachgiangday` VALUES (159, 'noi dung buoi 2', 'buoi 2', 'A1.1_A2.1', '1_2_5', 92, 'lythuyet', 2, 2);

SET FOREIGN_KEY_CHECKS = 1;