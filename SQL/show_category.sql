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

 Date: 13/05/2021 15:48:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for show_category
-- ----------------------------
DROP TABLE IF EXISTS `show_category`;
CREATE TABLE `show_category`  (
  `showCategoryID` int NOT NULL AUTO_INCREMENT,
  `CmsID` int NOT NULL,
  `id_khoa` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`showCategoryID`) USING BTREE,
  INDEX `khoa`(`id_khoa`) USING BTREE,
  INDEX `CategoryID`(`CmsID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 276 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of show_category
-- ----------------------------
INSERT INTO `show_category` VALUES (111, 1444, 'ktmtvdt');
INSERT INTO `show_category` VALUES (162, 1154, 'khmt');
INSERT INTO `show_category` VALUES (163, 1154, 'ktmtvdt');
INSERT INTO `show_category` VALUES (215, 1145, 'khmt');
INSERT INTO `show_category` VALUES (216, 1145, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (217, 1145, 'ktmtvdt');
INSERT INTO `show_category` VALUES (224, 1160, 'khmt');
INSERT INTO `show_category` VALUES (225, 1160, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (226, 1160, 'ktmtvdt');
INSERT INTO `show_category` VALUES (227, 1159, 'khmt');
INSERT INTO `show_category` VALUES (228, 1159, 'ktmtvdt');
INSERT INTO `show_category` VALUES (229, 1158, 'khmt');
INSERT INTO `show_category` VALUES (230, 1158, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (231, 1158, 'ktmtvdt');
INSERT INTO `show_category` VALUES (232, 1157, 'khmt');
INSERT INTO `show_category` VALUES (233, 1157, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (234, 1157, 'ktmtvdt');
INSERT INTO `show_category` VALUES (235, 1156, 'khmt');
INSERT INTO `show_category` VALUES (236, 1156, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (237, 1156, 'ktmtvdt');
INSERT INTO `show_category` VALUES (238, 1161, 'khmt');
INSERT INTO `show_category` VALUES (239, 1161, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (240, 1161, 'ktmtvdt');
INSERT INTO `show_category` VALUES (241, 1155, 'khmt');
INSERT INTO `show_category` VALUES (242, 1155, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (243, 1155, 'ktmtvdt');
INSERT INTO `show_category` VALUES (244, 1153, 'khmt');
INSERT INTO `show_category` VALUES (245, 1153, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (246, 1153, 'ktmtvdt');
INSERT INTO `show_category` VALUES (247, 1152, 'khmt');
INSERT INTO `show_category` VALUES (248, 1152, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (249, 1152, 'ktmtvdt');
INSERT INTO `show_category` VALUES (250, 1151, 'khmt');
INSERT INTO `show_category` VALUES (251, 1151, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (252, 1151, 'ktmtvdt');
INSERT INTO `show_category` VALUES (253, 1150, 'khmt');
INSERT INTO `show_category` VALUES (254, 1150, 'ktmtvdt');
INSERT INTO `show_category` VALUES (255, 1149, 'khmt');
INSERT INTO `show_category` VALUES (256, 1149, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (257, 1149, 'ktmtvdt');
INSERT INTO `show_category` VALUES (258, 1148, 'khmt');
INSERT INTO `show_category` VALUES (259, 1148, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (260, 1148, 'ktmtvdt');
INSERT INTO `show_category` VALUES (261, 1147, 'khmt');
INSERT INTO `show_category` VALUES (262, 1147, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (263, 1147, 'ktmtvdt');
INSERT INTO `show_category` VALUES (264, 1146, 'khmt');
INSERT INTO `show_category` VALUES (265, 1146, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (266, 1143, 'khmt');
INSERT INTO `show_category` VALUES (267, 1143, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (268, 1143, 'ktmtvdt');
INSERT INTO `show_category` VALUES (269, 1162, 'khmt');
INSERT INTO `show_category` VALUES (270, 1162, 'ktsvtmdt');
INSERT INTO `show_category` VALUES (271, 1162, 'ktmtvdt');
INSERT INTO `show_category` VALUES (272, 1163, 'khmt');
INSERT INTO `show_category` VALUES (273, 1163, 'ktmtvdt');
INSERT INTO `show_category` VALUES (274, 1164, 'khmt');
INSERT INTO `show_category` VALUES (275, 1164, 'ktsvtmdt');

SET FOREIGN_KEY_CHECKS = 1;
