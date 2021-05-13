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

 Date: 13/05/2021 15:49:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for table_nganh
-- ----------------------------
DROP TABLE IF EXISTS `table_nganh`;
CREATE TABLE `table_nganh`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `manganh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tennganh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_chuyennganh` int NULL DEFAULT NULL,
  `mota` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_nganh
-- ----------------------------
INSERT INTO `table_nganh` VALUES (1, '7480201', 'Công nghệ Thông tin', 0, '', 0, NULL, NULL, '2019-10-15 11:08:55');
INSERT INTO `table_nganh` VALUES (2, '7340101', 'Quản trị kinh doanh', 0, '', 0, NULL, NULL, '2019-10-15 11:08:56');
INSERT INTO `table_nganh` VALUES (3, '7480108', 'Công nghệ kỹ thuật máy tính', 0, '', 0, NULL, NULL, '2019-10-15 11:08:56');
INSERT INTO `table_nganh` VALUES (4, '', 'Chuyên ngành Khoa học dữ liệu vào Trí tuệ nhân tạo', 1, '', 0, NULL, NULL, '2021-03-12 22:00:41');
INSERT INTO `table_nganh` VALUES (5, '', 'Chuyên ngành Thiết Kế mỹ thuật số', 1, '', 0, NULL, NULL, '2021-03-12 22:00:35');
INSERT INTO `table_nganh` VALUES (6, '', 'Chuyên ngành Logistic & Chuỗi cung ứng số', 2, '', 0, NULL, NULL, '2021-03-12 22:01:42');
INSERT INTO `table_nganh` VALUES (7, '', 'Chuyên ngành quản trị dịch vụ và lữ hành số', 2, '', 0, NULL, NULL, '2021-03-12 22:02:11');

SET FOREIGN_KEY_CHECKS = 1;
