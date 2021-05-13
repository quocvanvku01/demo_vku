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

 Date: 13/05/2021 15:48:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for list_khoa
-- ----------------------------
DROP TABLE IF EXISTS `list_khoa`;
CREATE TABLE `list_khoa`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_khoa` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_khoa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_khoa`(`id_khoa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of list_khoa
-- ----------------------------
INSERT INTO `list_khoa` VALUES (1, 'khmt', 'Khoa học máy tính');
INSERT INTO `list_khoa` VALUES (2, 'ktsvtmdt', 'Kinh tế số và thương mại điện tử');
INSERT INTO `list_khoa` VALUES (3, 'ktmtvdt', 'Kỹ thuật máy tính và điện tử');
INSERT INTO `list_khoa` VALUES (4, 'dtn', 'Đoàn thanh niên');

SET FOREIGN_KEY_CHECKS = 1;
