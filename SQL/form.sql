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

 Date: 13/05/2021 15:47:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for form
-- ----------------------------
DROP TABLE IF EXISTS `form`;
CREATE TABLE `form`  (
  `id_form` int NOT NULL AUTO_INCREMENT,
  `ten_form` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `don_vi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loai` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mo_ta` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `duong_dan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `luot_tai` int NOT NULL,
  `ngay_dang` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_form`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form
-- ----------------------------
INSERT INTO `form` VALUES (6, 'Mẫu đơn xin học lại các học phần', 'ttd', 'maudon', 'Đơn xin học lại là một trong những biểu mẫu không thể thiếu để sinh viên đăng ký học lại các học phần', '1603354074_Donxinhoclai (1)(33).doc', 2, '2021-01-09');
INSERT INTO `form` VALUES (7, 'Mẫu báo cáo đồ án/ đề án/thực tập', 'ttd', 'bieumau', 'Để thống nhất định dạng báo cáo đồ án, báo cáo thực tập', 'Huong dan trinh bay khoa luan do an (2)(84).doc', 1, '2021-01-09');
INSERT INTO `form` VALUES (8, 'Hướng dẫn trình bày đồ án cơ sở/thực tập', 'ttd', 'baocao', 'Để thống nhất cách trình bày đồ án, nhà trường hướng dẫn một số vấn đề khi viết và trình bày', 'Huong dan trinh bay khoa luan do an (3)(29).doc', 1, '2021-01-09');

SET FOREIGN_KEY_CHECKS = 1;
