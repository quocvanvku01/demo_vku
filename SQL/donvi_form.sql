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

 Date: 13/05/2021 15:47:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for donvi_form
-- ----------------------------
DROP TABLE IF EXISTS `donvi_form`;
CREATE TABLE `donvi_form`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_dvf` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name_dvf` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of donvi_form
-- ----------------------------
INSERT INTO `donvi_form` VALUES (1, 'ttd', 'Tổ đào tạo');
INSERT INTO `donvi_form` VALUES (2, 'tctsv', 'Tổ công tác sinh viên');
INSERT INTO `donvi_form` VALUES (3, 'gtht', 'Giáo trình học tập');
INSERT INTO `donvi_form` VALUES (4, 'tkhtc', 'Tổ kế hoạc tài chính');

SET FOREIGN_KEY_CHECKS = 1;
