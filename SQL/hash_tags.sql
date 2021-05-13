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

 Date: 13/05/2021 15:48:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hash_tags
-- ----------------------------
DROP TABLE IF EXISTS `hash_tags`;
CREATE TABLE `hash_tags`  (
  `id_tags` int NOT NULL AUTO_INCREMENT,
  `name_tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CmsID` int NULL DEFAULT NULL,
  `Slug_tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_tags`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 251 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hash_tags
-- ----------------------------
INSERT INTO `hash_tags` VALUES (1, 'bwd', 1073, 'bwd');
INSERT INTO `hash_tags` VALUES (2, 'bwd', 1021, 'bwd');
INSERT INTO `hash_tags` VALUES (5, 'etc', 1028, 'etc');
INSERT INTO `hash_tags` VALUES (6, 'etc', 1032, 'etc');
INSERT INTO `hash_tags` VALUES (7, 'etc', 1037, 'etc');
INSERT INTO `hash_tags` VALUES (16, 'demo5', 1128, 'demo5');
INSERT INTO `hash_tags` VALUES (70, 'asd', 1139, 'asd');
INSERT INTO `hash_tags` VALUES (161, 'ĐHĐN', 1154, 'dhdn');
INSERT INTO `hash_tags` VALUES (209, 'iccci', 1145, 'iccci');
INSERT INTO `hash_tags` VALUES (210, 'hội thảo', 1145, 'hoi-thao');
INSERT INTO `hash_tags` VALUES (218, 'vku', 1160, 'vku');
INSERT INTO `hash_tags` VALUES (219, 'vku', 1159, 'vku');
INSERT INTO `hash_tags` VALUES (220, 'bwd', 1159, 'bwd');
INSERT INTO `hash_tags` VALUES (221, 'vku', 1158, 'vku');
INSERT INTO `hash_tags` VALUES (222, 'Đọc sách', 1158, 'doc-sach');
INSERT INTO `hash_tags` VALUES (223, 'Học tập', 1157, 'hoc-tap');
INSERT INTO `hash_tags` VALUES (224, 'Kỹ năng', 1156, 'ky-nang');
INSERT INTO `hash_tags` VALUES (225, 'Học tập', 1156, 'hoc-tap');
INSERT INTO `hash_tags` VALUES (226, 'vku', 1161, 'vku');
INSERT INTO `hash_tags` VALUES (227, 'bwd', 1161, 'bwd');
INSERT INTO `hash_tags` VALUES (228, '2020', 1161, '2020');
INSERT INTO `hash_tags` VALUES (229, 'bw', 1161, 'bw');
INSERT INTO `hash_tags` VALUES (230, 'Mã độc', 1155, 'ma-doc');
INSERT INTO `hash_tags` VALUES (231, 'ĐHĐN', 1153, 'dhdn');
INSERT INTO `hash_tags` VALUES (232, 'Sinh Viên', 1153, 'sinh-vien');
INSERT INTO `hash_tags` VALUES (233, 'vku', 1152, 'vku');
INSERT INTO `hash_tags` VALUES (234, 'Tình nguyện', 1152, 'tinh-nguyen');
INSERT INTO `hash_tags` VALUES (235, 'vku', 1151, 'vku');
INSERT INTO `hash_tags` VALUES (236, 'Bóng đá', 1151, 'bong-da');
INSERT INTO `hash_tags` VALUES (237, 'Khoa học', 1150, 'khoa-hoc');
INSERT INTO `hash_tags` VALUES (238, 'vku', 1149, 'vku');
INSERT INTO `hash_tags` VALUES (239, 'Got Talent', 1149, 'got-talent');
INSERT INTO `hash_tags` VALUES (240, 'hội thảo', 1148, 'hoi-thao');
INSERT INTO `hash_tags` VALUES (241, 'vku', 1148, 'vku');
INSERT INTO `hash_tags` VALUES (242, 'hội thảo', 1147, 'hoi-thao');
INSERT INTO `hash_tags` VALUES (243, 'vku', 1147, 'vku');
INSERT INTO `hash_tags` VALUES (244, 'hội thảo', 1146, 'hoi-thao');
INSERT INTO `hash_tags` VALUES (245, 'vku', 1143, 'vku');
INSERT INTO `hash_tags` VALUES (246, 'vku', 1162, 'vku');
INSERT INTO `hash_tags` VALUES (247, 'Hàn Quốc', 1162, 'han-quoc');
INSERT INTO `hash_tags` VALUES (248, 'vku', 1163, 'vku');
INSERT INTO `hash_tags` VALUES (249, 'Quốc tế', 1163, 'quoc-te');
INSERT INTO `hash_tags` VALUES (250, 'demo', 1164, 'demo');

SET FOREIGN_KEY_CHECKS = 1;
