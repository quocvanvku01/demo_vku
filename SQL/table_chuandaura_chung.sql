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

 Date: 13/05/2021 15:48:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for table_chuandaura_chung
-- ----------------------------
DROP TABLE IF EXISTS `table_chuandaura_chung`;
CREATE TABLE `table_chuandaura_chung`  (
  `id_cdr_chung` int NOT NULL AUTO_INCREMENT,
  `noidung_cdr_chung` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_nganh` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_cdr_chung`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_chuandaura_chung
-- ----------------------------
INSERT INTO `table_chuandaura_chung` VALUES (1, 'Có đạo đức, trách nhiệm nghề nghiệp và ý thức phục vụ cộng đồng;', 1);
INSERT INTO `table_chuandaura_chung` VALUES (2, 'Có khả năng tư duy phản biện, tư duy sáng tạo, tư duy khởi nghiệp, làm việc nhóm, giao tiếp hiệu quả và tự học nâng cao trình độ;', 1);
INSERT INTO `table_chuandaura_chung` VALUES (3, 'Có năng lực ngoại ngữ tương đương TOEIC 500;', 1);
INSERT INTO `table_chuandaura_chung` VALUES (4, 'Có kiến thức cơ sở chuyên môn vững chắc để đáp ứng tốt các công việc khác nhau trong lĩnh vực rộng của ngành CNTT.', 1);
INSERT INTO `table_chuandaura_chung` VALUES (5, 'Có khả năng áp dụng kiến thức cơ bản về khoa học tự nhiên, khoa học xã hội, kiến thức toàn diện, chuyên sâu và tiên tiến về ngành CNTT để giải quyết các vấn đề phức tạp, mới trong lĩnh vực chuyên ngành, liên ngành;', 1);
INSERT INTO `table_chuandaura_chung` VALUES (6, 'Có khả năng nghiên cứu, đề xuất, cải tiến các hệ thống, sản phẩm, giải pháp CNTT trong bối cảnh kinh tế, xã hội và môi trường.', 1);
INSERT INTO `table_chuandaura_chung` VALUES (7, 'Có khả năng áp dụng kiến thức chuyên sâu và tiên tiến về lĩnh vực khoa học\r\ndữ liệu và trí tuệ nhân tạo để giải quyết các bài toán phân tích dữ liệu, dự\r\nCó khả năng áp dụng kiến thức chuyên sâu và tiên tiến về lĩnh vực khoa học dữ liệu và trí tuệ nhân tạ', 4);
INSERT INTO `table_chuandaura_chung` VALUES (8, 'Có khả năng nghiên cứu phát triển các công cụ, phần mềm phân tích dữ liệu và các hệ thống thông minh.', 4);
INSERT INTO `table_chuandaura_chung` VALUES (9, 'Có kiến thức cơ bản về nghệ thuật, mỹ thuật tạo hình, mỹ thuật ứng dụng; có chuyên môn vững chắc về thiết kế đồ họa để đáp ứng tốt các công việc khác nhau trong lĩnh vực rộng của ngành CNTT chuyên ngành Thiết kế mỹ thuật số;', 5);
INSERT INTO `table_chuandaura_chung` VALUES (10, 'Có khả năng thiết kế ý tưởng quảng cáo xây dựng thương hiệu, thực hiện các sản phẩm thiết kế đồ họa ứng dụng, đồ họa đa phương tiện tĩnh và động trong các lĩnh vực khác nhau;', 5);
INSERT INTO `table_chuandaura_chung` VALUES (11, 'Có khả năng nghiên cứu, đề xuất, cải tiến các ý tưởng, sản phẩm, giải pháp thiết kế về CNTT ứng dụng mỹ thuật số trong bối cảnh kinh tế, xã hội và môi trường.', 5);
INSERT INTO `table_chuandaura_chung` VALUES (12, 'Có đạo đức, trách nhiệm nghề nghiệp và ý thức phục vụ cộng đồng;', 3);
INSERT INTO `table_chuandaura_chung` VALUES (13, 'Có khả năng tư duy phản biện, tư duy sáng tạo, tư duy khởi nghiệp, làm việc nhóm, giao tiếp hiệu quả và tự học nâng cao trình độ;', 3);
INSERT INTO `table_chuandaura_chung` VALUES (14, 'Có năng lực ngoại ngữ tương đương TOEIC 450;', 3);
INSERT INTO `table_chuandaura_chung` VALUES (15, 'Có kiến thức cơ sở chuyên môn vững chắc để đáp ứng tốt các công việc khác nhau trong lĩnh vực rộng của ngành CNKTMT.', 3);
INSERT INTO `table_chuandaura_chung` VALUES (16, 'Có khả năng áp dụng kiến thức cơ bản về khoa học tự nhiên, khoa học xã hội, kiến thức toàn diện, chuyên sâu và tiên tiến về ngành CNKTMT để giải quyết các vấn đề phức tạp, mới trong lĩnh vực chuyên ngành, liên ngành;', 3);
INSERT INTO `table_chuandaura_chung` VALUES (17, 'Có khả năng phân tích, tổng hợp các kiến thức chuyên sâu về lĩnh vực CNKTMT trong việc thiết kế, xây dựng, triển khai phần cứng, phần mềm các hệ thống vi điều khiển, chip điện tử, cảm biến, sản phẩm và giải pháp thông minh, tự động hóa phục vụ trong công ', 3);
INSERT INTO `table_chuandaura_chung` VALUES (18, 'Có đạo đức, trách nhiệm nghề nghiệp và ý thức phục vụ cộng đồng;', 2);
INSERT INTO `table_chuandaura_chung` VALUES (19, 'Vận dụng kiến thức trong lĩnh vực kinh tế, chính trị, xã hội, pháp luật và quản trị kinh doanh để giải quyết các vấn đề phát sinh trong lĩnh vực ngành, chuyên ngành.', 2);
INSERT INTO `table_chuandaura_chung` VALUES (20, 'Đánh giá những thay đổi của môi trường kinh doanh trong bối cảnh biến đổi không ngừng và toàn cầu hóa và vận dụng được những chức năng cơ bản của nhà quản trị ở mức độ quản trị doanh nghiệp cấp trung.', 2);
INSERT INTO `table_chuandaura_chung` VALUES (21, 'Phân tích được hoạt động kinh doanh, các lĩnh vực cơ bản trong tổ chức bao gồm quản trị, tài chính, nguồn nhân lực, marketing, thương mại điện tử.', 2);
INSERT INTO `table_chuandaura_chung` VALUES (22, 'Có tư duy phản biện, tư duy đổi mới sáng tạo, tinh thần khởi nghiệp', 2);
INSERT INTO `table_chuandaura_chung` VALUES (23, 'Có khả năng làm việc nhóm, giao tiếp hiệu quả và năng lực học tập suốt đời', 2);
INSERT INTO `table_chuandaura_chung` VALUES (24, 'Có khả năng sử dụng Tiếng Anh tốt trong lĩnh vực kinh doanh (Đạt chuẩn Tiếng Anh tương đương TOEIC 500).', 2);
INSERT INTO `table_chuandaura_chung` VALUES (25, 'Đạt chuẩn kỹ năng sử dụng Công nghệ thông tin cơ bản và sử dụng hiệu quả các phần mềm đồ họa ứng dụng, công cụ thống kê để giải quyết các vấn đề Quản trị kinh doanh', 2);
INSERT INTO `table_chuandaura_chung` VALUES (26, 'Vận dụng kiến thức Quản trị kinh doanh, logistics, chuỗi cung ứng để giải quyết các vấn đề trong lĩnh vực Logistics và chuỗi cung ứng trên nền tảng số nhằm khai thác các nguồn lực trong sản xuất, kinh doanh và xã hội.', 6);
INSERT INTO `table_chuandaura_chung` VALUES (27, 'Có kỹ năng phân tích, đánh giá, tư duy phản biện, đổi mới sáng tạo và giải quyết các vấn đề trong Logistics & Chuỗi Cung ứng trên nền tảng số.', 6);
INSERT INTO `table_chuandaura_chung` VALUES (28, 'Có kỹ năng điều tra nghiên cứu, thực nghiệm và khai thác thông tin để đưa ra các giải pháp trong quản trị Logistics và vận hành chuỗi cung ứng trên nền tảng số.', 6);
INSERT INTO `table_chuandaura_chung` VALUES (29, 'Có kỹ năng làm việc trong môi trường kinh doanh quốc tế.', 6);
INSERT INTO `table_chuandaura_chung` VALUES (30, 'Vận dụng các kiến thức cơ bản và chuyên sâu về quản trị kinh doanh, tài chính, nhân sự, marketing, khởi nghiệp & đổi mới sáng tạo làm nền tảng nghiên cứu, giải quyết các vấn đề kinh doanh du lịch và lữ hành.', 7);
INSERT INTO `table_chuandaura_chung` VALUES (31, 'Vận dụng kiến thức về văn hóa, địa lý, lịch sử, các tuyến điểm du lịch để phân tích, thực hiện và đánh giá hoạt động kinh doanh du lịch & lữ hành', 7);
INSERT INTO `table_chuandaura_chung` VALUES (32, 'Có khả năng lập kế hoạch, xây dựng và tổ chức thực hiện các chương trình kinh doanh dịch vụ du lịch và lữ hành, thiết kế và điều hành tour du lịch; tổ chức xúc tiến và bán sản phẩm du lịch trên nền tảng số', 7);
INSERT INTO `table_chuandaura_chung` VALUES (33, 'Có khả năng phân tích & đánh giá tâm lý, hành vi tiêu dùng của du khách trong kinh doanh dịch vụ du lịch trên nền tảng số', 7);

SET FOREIGN_KEY_CHECKS = 1;
