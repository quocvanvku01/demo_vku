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

 Date: 13/05/2021 15:48:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for table_danhgiahocphan
-- ----------------------------
DROP TABLE IF EXISTS `table_danhgiahocphan`;
CREATE TABLE `table_danhgiahocphan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `phuongphapdanhgia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trongsobaidanhgia` int NULL DEFAULT NULL,
  `cdr_hocphan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_baidanhgia` int NULL DEFAULT NULL,
  `id_baidanhgia_parent` int NULL DEFAULT NULL,
  `id_hocphan` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 282 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_danhgiahocphan
-- ----------------------------
INSERT INTO `table_danhgiahocphan` VALUES (198, 'Điểm danh', 100, '5', 5, 1, 111);
INSERT INTO `table_danhgiahocphan` VALUES (199, 'Trình bày tại lớp/Trắc nghiệm', 30, '1', 6, 2, 111);
INSERT INTO `table_danhgiahocphan` VALUES (200, 'Cuốn báo cáo và trình bày tại lớp', 70, '1_2_4', 7, 2, 111);
INSERT INTO `table_danhgiahocphan` VALUES (201, 'Tự luận', 100, '3_4', 8, 3, 111);
INSERT INTO `table_danhgiahocphan` VALUES (202, 'Tự luận', 50, '1_2_3', 9, 4, 111);
INSERT INTO `table_danhgiahocphan` VALUES (203, 'Báo cáo; Hỏi & Đáp', 50, '1_3_4', 10, 4, 111);
INSERT INTO `table_danhgiahocphan` VALUES (209, 'Dựa vào % vắng học trên hệ thống điểm danh', 100, '1_2_3_4_5', 5, 1, 85);
INSERT INTO `table_danhgiahocphan` VALUES (210, 'Thực hành', 100, '1_2_3_4_5_6_7_8', 6, 2, 85);
INSERT INTO `table_danhgiahocphan` VALUES (211, 'Trắc nghiệm', 100, '1_2_3_4_5', 8, 3, 85);
INSERT INTO `table_danhgiahocphan` VALUES (212, 'Báo cáo đồ án môn học', 100, '1_2_3_4_5_6_7_8', 9, 4, 85);
INSERT INTO `table_danhgiahocphan` VALUES (221, 'Kiểm tra chuyên cần', 100, '6', 5, 1, 114);
INSERT INTO `table_danhgiahocphan` VALUES (222, 'Chấm bài kiểm tra', 100, '6', 6, 2, 114);
INSERT INTO `table_danhgiahocphan` VALUES (223, 'Viết', 100, '1_2_3_4_7', 8, 3, 114);
INSERT INTO `table_danhgiahocphan` VALUES (224, 'Vấn đáp', 50, '1_2_3_4_5_6_7', 9, 4, 114);
INSERT INTO `table_danhgiahocphan` VALUES (225, 'Bài tập nhóm', 50, '1_2_3_4_5_6_7', 10, 4, 114);
INSERT INTO `table_danhgiahocphan` VALUES (226, 'Điểm danh', 100, '5', 5, 1, 47);
INSERT INTO `table_danhgiahocphan` VALUES (227, 'Trình bày tại lớp', 100, '1_2_3_4', 6, 2, 47);
INSERT INTO `table_danhgiahocphan` VALUES (228, 'Tự luận', 100, '1_2_3', 8, 3, 47);
INSERT INTO `table_danhgiahocphan` VALUES (229, 'Bài tập lớn', 100, '1_2_3_4_5', 9, 4, 47);
INSERT INTO `table_danhgiahocphan` VALUES (238, 'Điểm danh', 100, '1', 5, 1, 51);
INSERT INTO `table_danhgiahocphan` VALUES (239, 'Trình bày tại lớp', 100, '1_2_3_4', 6, 2, 51);
INSERT INTO `table_danhgiahocphan` VALUES (240, 'Bài thực hành', 100, '1_2', 8, 3, 51);
INSERT INTO `table_danhgiahocphan` VALUES (241, 'Cuốn báo cáo và trình bày tại lớp', 100, '1_2_3_4_5', 9, 4, 51);
INSERT INTO `table_danhgiahocphan` VALUES (246, 'Điểm danh', 100, '1_2_5', 5, 1, 91);
INSERT INTO `table_danhgiahocphan` VALUES (247, 'Bài thực hành', 100, '1_2_5', 6, 2, 91);
INSERT INTO `table_danhgiahocphan` VALUES (248, 'Xây dựng ứng dụng', 100, '1_2_3_4_5', 8, 3, 91);
INSERT INTO `table_danhgiahocphan` VALUES (249, 'Tự luận', 100, '1_2_3_4_5', 9, 4, 91);
INSERT INTO `table_danhgiahocphan` VALUES (250, 'Trình bày tại lớp/Trắc nghiệm', 30, '1_2_6', 6, 2, 112);
INSERT INTO `table_danhgiahocphan` VALUES (251, 'Cuốn báo cáo và trình bày tại lớp', 70, '1_2_3', 7, 2, 112);
INSERT INTO `table_danhgiahocphan` VALUES (252, 'Tự luận', 100, '1_2_3', 8, 3, 112);
INSERT INTO `table_danhgiahocphan` VALUES (253, 'Bài tập lớn', 100, '1_2_3_4', 9, 4, 112);
INSERT INTO `table_danhgiahocphan` VALUES (272, 'Diem danh', 100, '1', 5, 1, 52);
INSERT INTO `table_danhgiahocphan` VALUES (273, 'bai tap', 100, '1', 6, 2, 52);
INSERT INTO `table_danhgiahocphan` VALUES (278, 'diem danh', 100, '1_2_12', 5, 1, 92);
INSERT INTO `table_danhgiahocphan` VALUES (279, 'bai tap', 100, '1', 6, 2, 92);
INSERT INTO `table_danhgiahocphan` VALUES (280, 'giua ki', 100, '1', 8, 3, 92);
INSERT INTO `table_danhgiahocphan` VALUES (281, 'cuoi ki', 100, '1', 9, 4, 92);

SET FOREIGN_KEY_CHECKS = 1;
