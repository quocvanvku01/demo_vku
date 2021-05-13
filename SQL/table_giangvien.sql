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

 Date: 13/05/2021 15:49:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for table_giangvien
-- ----------------------------
DROP TABLE IF EXISTS `table_giangvien`;
CREATE TABLE `table_giangvien`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ma_gv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hodem` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `donvi_id` int NULL DEFAULT NULL,
  `is_gv` tinyint NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaysinh` datetime(0) NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucdanh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 223 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_giangvien
-- ----------------------------
INSERT INTO `table_giangvien` VALUES (0, '', 'Chuyên viên ', 'Đào tạo', 1, 1, 'todaotao', '', '0000-00-00 00:00:00', '', 'ThS', '', '', '', NULL, NULL);
INSERT INTO `table_giangvien` VALUES (1, '', 'Lê Văn ', 'Minh', 1, 1, 'lvminh', '', '0000-00-00 00:00:00', '0983830604', 'TS', 'lvminh@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (2, '', 'Văn Đỗ Cẩm', 'Vân', 1, 1, 'vdcvan', '', '0000-00-00 00:00:00', '', 'ThS', 'vdcvan@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (3, '', 'Trần Thị ', 'Kiều', 1, 1, 'ttkieu', '', '0000-00-00 00:00:00', '', 'ThS', 'ttkieu@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (4, '', 'Lê Hải ', 'Trung', 1, 1, 'lhtrung', '', '0000-00-00 00:00:00', '', 'TS', '‎trungybvnvr@yahoo.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (5, '', 'Ngô Thị Bích ', 'Thủy', 1, 1, 'ntbthuy', '', '0000-00-00 00:00:00', '', 'ThS', 'bichthuydhdnsp@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (6, '', 'Khoa ', 'CNTT&TT', 1, NULL, '', '', '0000-00-00 00:00:00', '', 'Khoa', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (7, '', 'Khoa ', 'GDTC', 1, NULL, '', '', '0000-00-00 00:00:00', '', 'Khoa', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (8, '', 'Huỳnh Công ', 'Pháp', 1, 1, 'hcphap', '', '0000-00-00 00:00:00', '', 'PGS.TS', 'hcphap@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (9, '', 'Nguyễn Đức', 'Hiển', 1, 1, 'ndhien', '', '0000-00-00 00:00:00', '0905734949', 'TS', 'ndhien@vku.udn.vn', NULL, NULL, NULL, '2020-03-18 10:10:27');
INSERT INTO `table_giangvien` VALUES (10, '', 'Hà Thị Minh ', 'Phương', 1, 1, 'htmphuong', '', '0000-00-00 00:00:00', '0987710719', 'ThS', 'htmphuong@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (11, '', 'Trần Lương ', 'Nguyệt', 1, 1, 'tlnguyet', '', '0000-00-00 00:00:00', '', 'ThS', 'tlnguyet@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (12, '', 'Đậu Ngọc ', 'Luận', 1, 1, 'dnluan', '', '0000-00-00 00:00:00', '', 'GV', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (13, '', 'Đoàn Gia ', 'Dũng', 1, 1, 'dgdung', '', '0000-00-00 00:00:00', '', 'TS', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (14, '', 'Tôn Nữ Xuân', 'Phương', 1, 1, 'tnxphuong', '', '0000-00-00 00:00:00', '0988877468', 'ThS', 'phuonganhaitay@gmail.com', NULL, NULL, NULL, '2020-06-08 14:12:11');
INSERT INTO `table_giangvien` VALUES (15, '', 'Trần Hữu Ngô ', 'Duy', 1, 1, 'thnduy', '', '0000-00-00 00:00:00', '', 'ThS', 'thnduy@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (16, '', 'Lê Xuân Việt', 'Hương', 1, 1, 'lxvhuong', '', '0000-00-00 00:00:00', '_', 'ThS', 'huongle280970@gmail.com', '', NULL, NULL, '2020-11-13 16:48:01');
INSERT INTO `table_giangvien` VALUES (17, '', 'Trần Thị Túy', 'Phượng', 1, 1, 'tttphuong', '', '0000-00-00 00:00:00', '_', 'ThS', 'tuyphuong2009@gmail.com', NULL, NULL, NULL, '2020-11-13 16:50:20');
INSERT INTO `table_giangvien` VALUES (18, '', 'Võ Hùng ', 'Cường', 1, 1, 'vhcuong', '', '0000-00-00 00:00:00', '0905672025', 'ThS', 'vhcuong@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (19, '', 'Nguyễn Thị Diệu ', 'Thanh', 1, 1, 'ntdthanh', '', '0000-00-00 00:00:00', '', 'ThS', 'dieuthanhvn1@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (20, '', 'Nguyễn Văn ', 'Bình', 1, 1, 'nvbinh', '', '0000-00-00 00:00:00', '0905551136', 'ThS', 'nvbinh@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (21, '', 'Trần Đình ', 'Sơn', 1, 1, 'tdson', '', '0000-00-00 00:00:00', '0903591955', 'ThS', 'tdson@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (22, '', 'Đinh Thị Mỹ ', 'Hạnh', 1, 1, 'dtmhanh', '', '0000-00-00 00:00:00', '0906755553', 'ThS', 'myhanh01t1@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (23, '', 'Nguyễn Anh', 'Tuấn', 3, 1, 'natuan', '', '0000-00-00 00:00:00', '0935.727727', 'ThS', 'natuan@vku.udn.vn', NULL, NULL, NULL, '2020-12-11 09:57:22');
INSERT INTO `table_giangvien` VALUES (24, '', 'Lê Minh ', 'Thái', 1, 1, 'lmthai', '', '0000-00-00 00:00:00', '', 'TS', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (25, '', 'Huỳnh Thị Kim', 'Hà', 1, 1, 'htkha', '', '0000-00-00 00:00:00', '0905100328', 'ThS', 'htkha2017@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (26, '', 'Phạm Anh', 'Phương', 1, 1, 'paphuong', '', '0000-00-00 00:00:00', '', 'TS', 'paphuong.spdn@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (27, '', 'Dương Thị Mai', 'Nga', 1, 1, 'dtmnga', '', '0000-00-00 00:00:00', '0935020683', 'ThS', 'dtmnga@vku.udn.vn', NULL, NULL, NULL, '2020-03-18 10:18:54');
INSERT INTO `table_giangvien` VALUES (28, '', 'Huỳnh Ngọc', 'Thọ', 1, 1, 'hntho', '', '0000-00-00 00:00:00', '0982191459', 'TS', 'hntho@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (29, '', 'Hồ Viết', 'Việt', 1, 1, 'hvviet', '', '0000-00-00 00:00:00', '0913443343', 'TS', 'hoviet.viet@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (30, '', 'Phan Thị Quỳnh', 'Hương', 1, 1, 'ptqhuong', '', '0000-00-00 00:00:00', '0988159624', 'ThS', 'ptqhuong@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (31, '', 'Mai', 'Lam', 1, 1, 'mlam', '', '0000-00-00 00:00:00', '', 'ThS', 'mlam@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (32, '', 'Cao Xuân', 'Tuấn', 12, 1, 'cxtuan', '', '0000-00-00 00:00:00', '1', 'TS', 'cxtuan@cit.udn.vn', NULL, NULL, NULL, '2020-08-13 22:47:08');
INSERT INTO `table_giangvien` VALUES (33, '', 'Phạm Thị Thanh', 'Mai', 1, 1, 'pttmai', '', '0000-00-00 00:00:00', '', 'ThS', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (34, '', 'Huỳnh Thị Thanh', 'Vân', 1, 1, 'httvan', '', '0000-00-00 00:00:00', '', 'ThS', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (35, '', 'Lương Văn', 'Thọ', 1, 1, 'lvtho', '', '0000-00-00 00:00:00', '', 'ThS', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (36, '', 'Dương Ngọc', 'Pháp', 1, 1, 'dnphap', '', '0000-00-00 00:00:00', '', 'ThS', 'dnphap@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (37, '', 'Đặng Thị Thanh', 'Minh', 1, 1, 'dttminh', '', '0000-00-00 00:00:00', '0973605603', 'ThS', 'dttminh@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (38, '', 'Nguyễn Thị Khánh', 'My', 1, 1, 'ntkmy', '', '0000-00-00 00:00:00', '0935721555', 'ThS', 'ntkmy@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (39, '', 'Đào Thị Thu', 'Hường', 1, 1, 'dtthuong', '', '0000-00-00 00:00:00', '0941309305', 'ThS', 'dtthuong@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (40, '', 'Đoàn Thị Hoài', 'Thanh', 1, 1, 'dththanh', '', '0000-00-00 00:00:00', '', 'ThS', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (41, '', 'Nguyễn Thanh', 'Liêm', 1, 1, 'ntliem', '', '0000-00-00 00:00:00', '', 'PGS.TS.', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (42, '', 'Vũ Thu', 'Hà', 1, 1, 'vtha', '', '0000-00-00 00:00:00', '0917981101', 'ThS', 'vtha@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (43, '', 'Nguyễn Tiến', 'Nam', 1, 1, 'ntnam', '', '0000-00-00 00:00:00', '0905698198', 'TS', 'nguyentiennam01011960@gmail.com', NULL, NULL, NULL, '2019-10-07 15:21:41');
INSERT INTO `table_giangvien` VALUES (45, '', 'Lê Thị', 'Nhi', 1, 1, 'ltnhi', '', '0000-00-00 00:00:00', '0934057126', 'ThS', 'ltnhi27march@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (47, '', 'Trương Thị Ánh', 'Tuyết', 1, 1, 'ttatuyet', '', '0000-00-00 00:00:00', '_', 'ThS', 'myanhtuyet@gmail.com', NULL, NULL, NULL, '2020-11-13 16:49:34');
INSERT INTO `table_giangvien` VALUES (48, '', 'Nguyễn Lê Lộc', 'Tiên', 1, 1, 'nlltien', '', '0000-00-00 00:00:00', '', 'ThS', 'nlltien@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (50, '', 'Nguyễn Vũ Anh', 'Quang', 3, 1, 'nvaquang', '', '0000-00-00 00:00:00', '0914113974', 'TS', 'nvaquang@vku.udn.vn', NULL, NULL, NULL, '2020-11-10 09:37:22');
INSERT INTO `table_giangvien` VALUES (51, '', 'Nguyễn Thế Xuân', 'Ly', 1, 1, 'ntxly', '', '0000-00-00 00:00:00', '', 'ThS', 'nguyenthexuanly@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (52, '', 'Võ Trung', 'Hùng', 1, 1, 'vthung', '', '0000-00-00 00:00:00', '', 'PGS.TS.', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (53, '', 'Nguyễn Thị Hoa', 'Huệ', 1, 1, 'nthhue', '', '0000-00-00 00:00:00', '', 'TS', 'huenth@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (54, '', 'Lê Hà Như', 'Thảo', 1, 1, 'lhnthao', '', '0000-00-00 00:00:00', '0905127138', 'ThS', 'lhnthao@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (55, '', 'Đinh Nguyễn Khánh', 'Phương', 1, 1, 'dnkphuong', '', '0000-00-00 00:00:00', '0905288186', 'ThS', 'dnkphuong@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (56, '', 'Phan Quang Như', 'Anh', 1, 1, 'pqnanh', '', '0000-00-00 00:00:00', '', 'ThS', 'nhuanh83@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (57, '', 'Nguyễn Thị', 'Tuyết', 1, 1, 'nttuyet', '', '0000-00-00 00:00:00', '0905772661', 'ThS', 'nttuyet@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (58, '', 'Trần Thị', 'Hiền', 1, 1, 'tthien', '', '0000-00-00 00:00:00', '', 'ThS', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (59, '', 'Trương Hoàng Tú', 'Nhi', 1, 1, 'thtnhi', '', '0000-00-00 00:00:00', '0905502488', 'ThS', 'thtnhi@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (60, '', 'Bùi Trần', 'Huân', 1, 1, 'bthuan', '', '0000-00-00 00:00:00', '0905295989', 'ThS', 'bthuan@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (61, '', 'Nguyễn Văn', 'Chức', 1, 1, 'nvchuc', '', '0000-00-00 00:00:00', '', 'ThS', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (62, '', 'Lâm Tùng', 'Giang', 1, 1, 'ltgiang', '', '0000-00-00 00:00:00', '', 'TS', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (63, '', 'Trần Thu', 'Thủy', 1, 1, 'ttthuy', '', '0000-00-00 00:00:00', '0905888069', 'ThS', 'ttthuy@vku.udn.vn', NULL, NULL, NULL, '2020-03-18 10:19:12');
INSERT INTO `table_giangvien` VALUES (64, '', 'Phan Trọng', 'Thanh', 1, 1, 'ptthanh', '', '0000-00-00 00:00:00', '0905665758', 'ThS', 'ptthanh@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (65, '', 'Lê Song', 'Toàn', 1, 1, 'lstoan', '', '0000-00-00 00:00:00', '0906148477', 'ThS', 'lstoan@vku.udn.vn', NULL, NULL, NULL, '2020-08-30 21:41:22');
INSERT INTO `table_giangvien` VALUES (66, '', 'Nguyễn Thanh', 'Bình', 3, 1, 'ntbinh', '', '0000-00-00 00:00:00', '0914747974', 'PGS.TS', 'ntbinh@vku.udn.vn', NULL, NULL, NULL, '2020-09-02 21:57:17');
INSERT INTO `table_giangvien` VALUES (68, '', 'Trần Lê Nhật', 'Quang', 1, 1, 'tlnquang', '', '0000-00-00 00:00:00', '', 'GV', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (69, '', 'Trần Thế', 'Vũ', 1, 1, 'ttvu', '', '0000-00-00 00:00:00', '', 'TS', 'anhvaut@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (70, '', 'Lê Thị Hải', 'Yến', 1, 1, 'lthyen', '', '0000-00-00 00:00:00', '11', 'ThS', 'haiyennn1111@gmail.com', NULL, NULL, NULL, '2020-11-13 16:48:43');
INSERT INTO `table_giangvien` VALUES (72, '', 'Trần Danh', 'Nhân', 1, 1, 'tdnhan', '', '0000-00-00 00:00:00', '', 'ThS', 'nhan.trandanh@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (73, '', 'Trần Thị Vi', 'Vân', 1, 1, 'ttvvan', '', '0000-00-00 00:00:00', '', 'CN', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (74, '', 'Đặng Quang', 'Hiển', 1, 1, 'dqhien', '', '0000-00-00 00:00:00', '09', 'TS', 'dqhien@vku.udn.vn', NULL, NULL, NULL, '2020-03-18 10:09:40');
INSERT INTO `table_giangvien` VALUES (75, '', 'Hoàng Hữu', 'Đức', 1, 1, 'hhduc', '', '0000-00-00 00:00:00', '0914 008899', 'TS', 'hhduc@vku.udn.vn', NULL, NULL, NULL, '2020-08-13 23:34:39');
INSERT INTO `table_giangvien` VALUES (76, '', 'Lê Thị Phương', 'Thảo', 1, 1, 'ltpthao', '', '0000-00-00 00:00:00', '', 'ThS', 'lethaospdn@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (77, '', 'Nguyễn Linh', 'Giang', 1, 1, 'nlgiang', '', '0000-00-00 00:00:00', '0983835046', 'ThS', 'nlgiang@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (78, '', 'Nguyễn Thị Hồng', 'Phượng', 1, 1, 'nthphuong', '', '0000-00-00 00:00:00', '', 'ThS', 'phuonguyenlaw@gmail.com ', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (79, '', 'Nguyễn Xuân', 'Pha', 1, 1, 'nxpha', '', '0000-00-00 00:00:00', '0917981177', 'ThS', 'nxpha@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (80, '', 'Tran Dinh', 'Tuan', 1, 1, 'tdtuan', '', '0000-00-00 00:00:00', '', 'ThS', 'tdtuan@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (82, '', 'Nguyễn Thị Minh', 'Hỷ', 1, 1, 'ntmhy', '', '0000-00-00 00:00:00', '', 'ThS', 'minhy81199@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (83, '', 'Lê Thị Thu', 'Nga', 1, 1, 'lttnga', '', '0000-00-00 00:00:00', '0942191079', 'TS', 'lttnga@vku.udn.vn', NULL, NULL, NULL, '2020-03-18 10:17:47');
INSERT INTO `table_giangvien` VALUES (84, '', 'Nguyễn Quang', 'Vũ', 1, 1, 'nqvu', '', '0000-00-00 00:00:00', '0901982982', 'TS', 'nqvu@vku.udn.vn', NULL, NULL, NULL, '2020-05-04 07:50:18');
INSERT INTO `table_giangvien` VALUES (85, '', 'Nguyễn Hà Huy', 'Cường', 1, 1, 'nhhcuong', '', '0000-00-00 00:00:00', '0935019929', 'TS', 'nhhcuong@vku.udn.vn', NULL, NULL, NULL, '2020-03-18 10:14:54');
INSERT INTO `table_giangvien` VALUES (87, '', 'Trần Thảo', 'An', 1, 1, 'ttan', '', '0000-00-00 00:00:00', '_', 'TS', 'ttan@vku.udn.vn', NULL, NULL, NULL, '2020-05-06 10:16:03');
INSERT INTO `table_giangvien` VALUES (88, '', 'Vũ Thị Tuyết', 'Mai', 1, 1, 'vttmai', '', '0000-00-00 00:00:00', '0917781643', 'ThS', 'vttmai@vku.udn.vn', NULL, NULL, NULL, '2020-10-23 13:52:27');
INSERT INTO `table_giangvien` VALUES (89, '', 'Trần Thị', 'Hải', 1, 1, 'tthai', '', '0000-00-00 00:00:00', '', 'TS', 'tranhai.bm@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (92, '', 'Đoàn Xuân', 'Trang', 1, 1, 'dxtrang', '', '0000-00-00 00:00:00', '', 'ThS', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (93, '', 'Trịnh Công', 'Duy', 1, 1, 'tcduy', '', '0000-00-00 00:00:00', '', 'TS', 'congduy@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (94, '', 'Phan Thanh', 'Tao', 1, 1, 'pttao', '', '0000-00-00 00:00:00', '', 'ThS', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (95, '', 'Trần Thị Quỳnh', 'Châu', 1, 1, 'ttqchau', '', '0000-00-00 00:00:00', '0905722057', 'ThS', 'tranquynhchau9991@gmail.com', NULL, NULL, NULL, '2020-11-11 08:51:44');
INSERT INTO `table_giangvien` VALUES (96, '', 'Nguyễn Thị Kim', 'Ngọc', 1, 1, 'ntkngoc', '', '0000-00-00 00:00:00', '0357898989', 'ThS', 'ntkngoc@vku.udn.vn', NULL, '', '0000-00-00 00:00:00', '2019-11-07 11:58:07');
INSERT INTO `table_giangvien` VALUES (97, '', 'Nguyễn Thị Thanh', 'Nhàn', 1, 1, 'nttnhan', '', '0000-00-00 00:00:00', '0367289854', 'ThS', 'nttnhan@vku.udn.vn', NULL, '', '0000-00-00 00:00:00', '2019-10-28 08:18:59');
INSERT INTO `table_giangvien` VALUES (98, '', 'Nguyễn Thị Thu', 'Ngân', 1, 1, 'nttngan', '', '0000-00-00 00:00:00', '0905603504', 'ThS', 'nttngan@vku.udn.vn', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `table_giangvien` VALUES (99, '', 'Trần Thị Mỹ', 'Châu', 1, 1, 'ttmchau', '', '0000-00-00 00:00:00', '0915856119', 'ThS', 'ttmchau@vku.udn.vn', NULL, '', '0000-00-00 00:00:00', '2020-03-18 10:14:34');
INSERT INTO `table_giangvien` VALUES (100, '', 'Nguyễn Lê Tùng', 'Khánh', 1, 1, 'nltkhanh', '', '0000-00-00 00:00:00', '0905410416', 'ThS', 'nltkhanh@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (101, '', 'Đặng', 'Vinh', 1, 1, 'dvinh', '', '0000-00-00 00:00:00', '0905954688', 'TS', 'dangvinh71@gmail.com', NULL, NULL, '2019-11-19 11:12:12', '2020-12-17 09:15:18');
INSERT INTO `table_giangvien` VALUES (102, '', 'Nguyễn Thị Thùy', 'Linh', 1, 1, 'nttlinh', '', '0000-00-00 00:00:00', '', '', 'nttlinh@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (103, '', 'Trương Quốc', 'Tuấn', 1, 1, 'tqtuan', '', '0000-00-00 00:00:00', '0913111576', 'DN', 'tuan.truongquoc@gmail.com', NULL, NULL, '2019-12-20 09:38:52', '2020-05-08 14:00:18');
INSERT INTO `table_giangvien` VALUES (104, '', 'Huỳnh Hữu', 'Hưng', 1, 1, 'hhhung', '', '0000-00-00 00:00:00', '1', 'TS', 'hhuuhung@gmail.com', NULL, NULL, NULL, '2020-08-14 11:54:57');
INSERT INTO `table_giangvien` VALUES (105, '', 'Phạm Công', 'Thắng', 2, 1, 'pcthang', '', '0000-00-00 00:00:00', '0905983126', 'TS', 'pacotha@gmail.com', NULL, NULL, NULL, '2020-08-28 23:41:13');
INSERT INTO `table_giangvien` VALUES (106, '', 'Lê Thị Mỹ', 'Hạnh', 1, 1, 'ltmhanh', '', '0000-00-00 00:00:00', '0911292955', 'TS', 'ltmhanh@vku.udn.vn', NULL, NULL, NULL, '2020-05-06 10:15:11');
INSERT INTO `table_giangvien` VALUES (107, '', 'Lê Phước Cửu', 'Long', 1, 1, 'lpclong', '', '0000-00-00 00:00:00', '0905150200', 'TS', 'lpclong@vku.udn.vn', NULL, NULL, NULL, '2020-04-18 07:05:44');
INSERT INTO `table_giangvien` VALUES (108, '', 'Bùi Thị Minh', 'Thu', 1, 1, 'btmthu', '', '0000-00-00 00:00:00', '0914180006', 'TS', 'thubtmgv@gmail.com', NULL, NULL, NULL, '2019-12-27 13:12:05');
INSERT INTO `table_giangvien` VALUES (109, '', 'Bùi Thị Thanh', 'Thanh', 1, 1, 'bttthanh', '', '0000-00-00 00:00:00', '0961055111', 'TS', 'thanhthanh037@gmail.com', NULL, NULL, NULL, '2019-12-25 08:05:50');
INSERT INTO `table_giangvien` VALUES (110, '', 'Tổ', 'Đào tạo', 1, 1, 'todaotao', '', '0000-00-00 00:00:00', '', 'ThS', '', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (111, '', 'Nguyễn Thị Hải', 'Yến', 1, 1, 'nthyen', '', '0000-00-00 00:00:00', '0984630996', 'ThS', 'hyensp@gmail.com', NULL, NULL, NULL, '2020-01-13 07:55:31');
INSERT INTO `table_giangvien` VALUES (112, '', 'Nguyễn Thị', 'Thân', 1, 1, 'ntthan', '', '0000-00-00 00:00:00', '', '', 'ntthan@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (113, '', 'Phan Thị Thu', 'Huyền', 1, 1, 'ptthuyen', '', '0000-00-00 00:00:00', '', '', 'ptthuyen@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (114, '', 'Nguyễn Ngọc Như', 'Trang', 1, 1, 'nnntrang', '', '0000-00-00 00:00:00', '09', 'CN', 'nnntrang@vku.udn.vn', NULL, NULL, '2020-04-22 11:11:25', '2020-04-22 11:11:25');
INSERT INTO `table_giangvien` VALUES (115, '', 'Phạm Hồ Trọng', 'Nguyên', 1, 1, 'phtnguyen', '', '0000-00-00 00:00:00', '_', 'ThS', 'phtnguyen@vku.udn.vn', NULL, NULL, '2020-05-09 14:03:49', '2020-05-09 14:03:49');
INSERT INTO `table_giangvien` VALUES (116, '', 'Ngô Minh', 'Thành', 1, 1, 'nmthanh', '', '0000-00-00 00:00:00', '', 'CN', 'nmthanh@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (117, '', 'Ngô Thị Sơn', 'Lâm', 1, 1, 'ntslam', '', '0000-00-00 00:00:00', '', 'CV', 'ntslam@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (118, '', 'Dương Thị', 'Phượng', 3, 1, 'dtphuong', '', '0000-00-00 00:00:00', '1', 'TS', 'dtphuong@vku.udn.vn', NULL, NULL, '2020-08-01 16:36:04', '2020-08-01 16:36:04');
INSERT INTO `table_giangvien` VALUES (119, '', 'Trần Văn', 'Thái', 1, 1, 'tvthai', '', '0000-00-00 00:00:00', '0941 749618', 'ThS', 'tvthai@vku.udn.vn', NULL, NULL, '2020-08-01 16:38:58', '2020-08-11 22:33:31');
INSERT INTO `table_giangvien` VALUES (120, '', 'Trần Hoàng', 'Hạnh', 1, 1, 'tvthai', '', '0000-00-00 00:00:00', '0935160285', 'ThS', 'thhanh@vku.udn.vn', NULL, NULL, '2020-08-01 16:44:48', '2020-08-06 15:25:09');
INSERT INTO `table_giangvien` VALUES (121, '', 'Nguyễn Thị Phương', 'Thảo', 1, 1, 'ntpthao', '', '0000-00-00 00:00:00', '1', 'ThS', 'ntpthao@vku.udn.vn', NULL, NULL, '2020-08-01 16:45:26', '2020-08-01 16:45:26');
INSERT INTO `table_giangvien` VALUES (122, '', 'Nguyễn', 'Thanh', 3, 1, 'thanhn', '', '0000-00-00 00:00:00', '0914014179', 'TS', 'thanhn@vku.udn.vn', NULL, NULL, '2020-08-01 16:46:12', '2020-09-25 14:02:38');
INSERT INTO `table_giangvien` VALUES (123, '', 'Trần Thế', 'Sơn', 3, 1, 'ttson', '', '0000-00-00 00:00:00', '1', 'TS', 'ttson@vku.udn.vn', NULL, NULL, '2020-08-01 16:48:45', '2020-08-01 16:48:45');
INSERT INTO `table_giangvien` VALUES (124, '', 'K.', 'Khoa học máy tính', 3, 1, 'kkhmt', '', '0000-00-00 00:00:00', '1', 'Khoa', 'khmt@vku.udn.vn', NULL, NULL, '2020-08-01 16:50:39', '2020-08-01 16:50:39');
INSERT INTO `table_giangvien` VALUES (125, '', 'Đặng Hoài', 'Phương', 2, 1, 'dhphuong', '', '0000-00-00 00:00:00', '1', 'TS', 'danghoaiphuongdn@gmail.com', NULL, NULL, '2020-08-01 17:06:29', '2020-08-01 17:06:29');
INSERT INTO `table_giangvien` VALUES (126, '', 'Lê Thành', 'Công', 3, 1, 'ltcong', '', '0000-00-00 00:00:00', '1', 'ThS', 'ltcong@vku.udn.vn', NULL, NULL, '2020-08-01 17:07:31', '2020-08-01 17:07:31');
INSERT INTO `table_giangvien` VALUES (127, '', 'K.', 'Kinh tế số & TMĐT', 3, 1, 'kts', '', '0000-00-00 00:00:00', '1', 'Khoa', 'kts@vku.udn.vn', NULL, NULL, '2020-08-01 17:09:46', '2020-08-01 17:09:46');
INSERT INTO `table_giangvien` VALUES (128, '', 'Trương Thị', 'Viên', 3, 1, 'ttvien', '', '0000-00-00 00:00:00', '1', 'ThS', 'ttvien@vku.udn.vn', NULL, NULL, '2020-08-01 17:10:37', '2020-08-01 17:10:37');
INSERT INTO `table_giangvien` VALUES (129, '', 'Lê Thị Minh', 'Đức', 3, 1, 'ltmduc', '', '0000-00-00 00:00:00', '1', 'TS', 'ltmduc@vku.udn.vn', NULL, NULL, '2020-08-01 17:17:51', '2020-08-01 17:17:51');
INSERT INTO `table_giangvien` VALUES (130, '', 'Nguyễn Thị', 'Mai', 3, 1, 'ltmduc', '', '0000-00-00 00:00:00', '1', 'ThS', 'ntmai@vku.udn.vn', NULL, NULL, '2020-08-01 17:23:06', '2020-08-01 17:23:06');
INSERT INTO `table_giangvien` VALUES (131, '', 'Lương Xuân', 'Thành', 3, 1, 'lxthanh', '', '0000-00-00 00:00:00', '1', 'ThS', 'lxthanh@vku.udn.vn', NULL, NULL, '2020-08-01 17:25:14', '2020-08-01 17:25:14');
INSERT INTO `table_giangvien` VALUES (132, '', 'Dương Hữu', 'Ái', 3, 1, 'dhai', '', '0000-00-00 00:00:00', '1', 'TS', 'dhai@vku.udn.vn', NULL, NULL, '2020-08-01 17:39:12', '2020-08-01 17:39:12');
INSERT INTO `table_giangvien` VALUES (133, '', 'Trần Thị Trà', 'Vinh', 3, 1, 'tttvinh', '', '0000-00-00 00:00:00', '1', 'ThS', 'tttvinh@vku.udn.vn', NULL, NULL, '2020-08-01 17:39:54', '2020-08-01 17:39:54');
INSERT INTO `table_giangvien` VALUES (134, '', 'Phạm Nguyễn Minh', 'Nhựt', 3, 1, 'pnmnhut', '', '0000-00-00 00:00:00', '1', 'TS', 'pnmnhut@vku.udn.vn', NULL, NULL, '2020-08-01 17:40:39', '2020-08-01 17:40:39');
INSERT INTO `table_giangvien` VALUES (135, '', 'Nguyễn Thanh', 'Cẩm', 3, 1, 'ntcam', '', '0000-00-00 00:00:00', '079.5586.272', 'ThS', 'ntcam@vku.udn.vn', NULL, NULL, '2020-08-01 17:41:37', '2020-08-06 16:58:10');
INSERT INTO `table_giangvien` VALUES (136, '', 'Võ Văn', 'Lường', 3, 1, 'vvluong', '', '0000-00-00 00:00:00', '0905511676', 'ThS', 'vvluong@vku.udn.vn', NULL, NULL, '2020-08-01 17:42:16', '2021-01-11 17:37:33');
INSERT INTO `table_giangvien` VALUES (137, '', 'Nguyễn Thanh', 'Tuấn', 3, 1, 'nttuan', '', '0000-00-00 00:00:00', '1', 'ThS', 'nttuan@vku.udn.vn', NULL, NULL, '2020-08-01 17:42:44', '2020-08-01 17:42:44');
INSERT INTO `table_giangvien` VALUES (138, '', 'Lê Tự', 'Thanh', 3, 1, 'ltthanh', '', '0000-00-00 00:00:00', '1', 'ThS', 'ltthanh@vku.udn.vn', NULL, NULL, '2020-08-01 17:43:27', '2020-08-01 17:45:13');
INSERT INTO `table_giangvien` VALUES (139, '', 'Lê Kim', 'Trọng', 3, 1, 'lktrong', '', '0000-00-00 00:00:00', '1', 'ThS', 'lktrong@vku.udn.vn', NULL, NULL, '2020-08-01 17:51:12', '2020-08-01 17:51:57');
INSERT INTO `table_giangvien` VALUES (140, '', 'Lê', 'Tân', 3, 1, 'ltan', '', '0000-00-00 00:00:00', '1', 'TS', 'ltan@vku.udn.vn', NULL, NULL, '2020-08-01 17:52:16', '2020-08-01 17:52:16');
INSERT INTO `table_giangvien` VALUES (141, '', 'Nguyễn Đỗ Công', 'Pháp', 3, 1, 'ndcphap', '', '0000-00-00 00:00:00', '1', 'ThS', 'ndcphap@vku.udn.vn', NULL, NULL, '2020-08-01 17:52:58', '2020-08-01 17:52:58');
INSERT INTO `table_giangvien` VALUES (142, '', 'Nguyễn Lê Ngọc', 'Trâm', 3, 1, 'nlntram', '', '0000-00-00 00:00:00', '1', 'ThS', 'nlntram@vku.udn.vn', NULL, NULL, '2020-08-01 17:53:39', '2020-08-01 17:53:39');
INSERT INTO `table_giangvien` VALUES (143, '', 'Văn Hùng', 'Trọng', 3, 1, 'vhtrong', '', '0000-00-00 00:00:00', '1', 'TS', 'vhtrong@vku.udn.vn', NULL, NULL, '2020-08-01 17:54:23', '2020-08-01 17:54:23');
INSERT INTO `table_giangvien` VALUES (144, '', 'Ngô Hải', 'Quỳnh', 3, 1, 'nhquynh', '', '0000-00-00 00:00:00', '1', 'TS', 'nhquynh@vku.udn.vn', NULL, NULL, '2020-08-01 17:55:19', '2020-08-01 17:55:19');
INSERT INTO `table_giangvien` VALUES (145, '', 'Nguyễn Thị Kiều', 'Trang', 3, 1, 'ntktrang', '', '0000-00-00 00:00:00', '1', 'TS', 'ntktrang@vku.udn.vn', NULL, NULL, '2020-08-01 17:55:56', '2020-08-01 17:55:56');
INSERT INTO `table_giangvien` VALUES (146, '', 'Ngô Lê', 'Quân', 3, 1, 'nlquan', '', '0000-00-00 00:00:00', '0905710048', 'ThS', 'nlquan@vku.udn.vn', NULL, NULL, '2020-08-01 17:56:31', '2020-08-12 21:07:57');
INSERT INTO `table_giangvien` VALUES (147, '', 'Võ Ngọc', 'Đạt', 3, 1, 'vndat', '', '0000-00-00 00:00:00', '1', 'ThS', 'vndat@vku.udn.vn', NULL, NULL, '2020-08-01 17:57:22', '2020-08-01 17:57:22');
INSERT INTO `table_giangvien` VALUES (148, '', 'Vương Công', 'Đạt', 3, 1, 'vcdat', '', '0000-00-00 00:00:00', '0905536553', 'TS', 'vcdat@vku.udn.vn', NULL, NULL, '2020-08-01 17:58:48', '2020-11-04 23:54:58');
INSERT INTO `table_giangvien` VALUES (150, '', 'Ninh Khánh', 'Chi', 3, 1, 'nkchi', '', '0000-00-00 00:00:00', '0984229980', 'ThS', 'nkchi@vku.udn.vn', NULL, NULL, '2020-08-01 18:01:16', '2020-08-31 09:44:30');
INSERT INTO `table_giangvien` VALUES (151, '', 'Hồ Phan', 'Hiếu', 12, 1, 'hphieu', '', '0000-00-00 00:00:00', '1', 'TS', 'hophanhieu@gmail.com', NULL, NULL, '2020-08-01 18:02:01', '2020-08-13 22:48:46');
INSERT INTO `table_giangvien` VALUES (152, '', 'Nguyễn Thị', 'Hạnh', 3, 1, 'hanhnt', '', '0000-00-00 00:00:00', '+84905688551', 'ThS', 'hanhnt@vku.udn.vn', NULL, NULL, '2020-08-01 18:11:03', '2020-10-18 21:49:00');
INSERT INTO `table_giangvien` VALUES (153, '', 'Võ Thị Thanh', 'Ngà', 3, 1, 'vttnga', '', '0000-00-00 00:00:00', '1', 'ThS', 'vttnga@vku.udn.vn', NULL, NULL, '2020-08-01 18:12:09', '2020-08-01 18:12:09');
INSERT INTO `table_giangvien` VALUES (154, '', 'Lê Thị Kim', 'Tuyến', 3, 1, 'ltktuyen', '', '0000-00-00 00:00:00', '1', 'ThS', 'ltktuyen@vku.udn.vn', NULL, NULL, '2020-08-01 18:12:40', '2020-08-01 18:12:40');
INSERT INTO `table_giangvien` VALUES (155, '', 'Phạm Trần Mộc', 'Miêng', 3, 1, 'ptmmieng', '', '0000-00-00 00:00:00', '1', 'ThS', 'ptmmieng@vku.udn.vn', NULL, NULL, '2020-08-01 18:13:15', '2020-08-01 18:13:15');
INSERT INTO `table_giangvien` VALUES (156, '', 'Lý Quỳnh', 'Trân', 3, 1, 'lqtran', '', '0000-00-00 00:00:00', '1', 'TS', 'lqtran@vku.udn.vn', NULL, NULL, '2020-08-01 18:13:55', '2020-08-01 18:13:55');
INSERT INTO `table_giangvien` VALUES (157, '', 'Đặng Thị Kim', 'Ngân', 3, 1, 'dtkngan', '', '0000-00-00 00:00:00', '0931646818', 'Th.S', 'dtkngan@vku.udn.vn', NULL, NULL, '2020-08-01 18:14:27', '2020-08-28 09:37:58');
INSERT INTO `table_giangvien` VALUES (158, '', 'Trần Ngọc Phương', 'Thảo', 3, 1, 'tnpthao', '', '0000-00-00 00:00:00', '1', 'ThS', 'tnpthao@vku.udn.vn', NULL, NULL, '2020-08-01 18:15:04', '2020-08-01 18:15:04');
INSERT INTO `table_giangvien` VALUES (159, '', 'Lê Thị Thanh', 'Vân', 3, 1, 'lttvan', '', '0000-00-00 00:00:00', '0905519529', 'ThS', 'lttvan@vku.udn.vn', NULL, NULL, '2020-08-01 18:15:37', '2021-01-15 13:39:23');
INSERT INTO `table_giangvien` VALUES (160, '', 'Võ Thành', 'Thiên', 3, 1, 'vtthien', '', '0000-00-00 00:00:00', '1', 'ThS', 'vtthien@vku.udn.vn', NULL, NULL, '2020-08-01 18:16:10', '2020-08-01 18:16:10');
INSERT INTO `table_giangvien` VALUES (161, '', 'K.', 'Kỹ thuật máy tính & điện tử', 3, 1, 'ktmt', '', '0000-00-00 00:00:00', '1', 'Khoa', 'ktmt@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (162, '', 'Lế Viết', 'Trương', 3, 1, 'lvtruong', '', '0000-00-00 00:00:00', '0905129921', 'ThS', 'lvtruong@vku.udn.vn', NULL, NULL, '2020-08-14 11:30:17', '2020-08-14 11:30:17');
INSERT INTO `table_giangvien` VALUES (163, '', 'Trần Thị Thúy', 'Ngọc', 3, 1, 'tttngoc', '', '0000-00-00 00:00:00', '', 'ThS', 'tttngoc@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (164, '', 'Phan Thị Lan', 'Anh', 1, 1, 'ptlanh', '', '0000-00-00 00:00:00', '0', 'TS', 'ptlanh@vku.udn.vn', NULL, NULL, '2020-09-27 08:53:00', '2020-09-27 08:53:00');
INSERT INTO `table_giangvien` VALUES (165, '', 'Phan Đăng Thiếu', 'Hiệp', 3, 1, 'pdthiep', '', '0000-00-00 00:00:00', '0', 'ThS', 'pdthiep@vku.udn.vn', NULL, NULL, '2020-09-27 09:25:42', '2020-09-27 09:25:42');
INSERT INTO `table_giangvien` VALUES (166, '', 'Nguyễn Quốc', 'Thịnh', 3, 1, 'nqthinh', '', '0000-00-00 00:00:00', '0', 'ThS', 'nqthinh@vku.udn.vn', NULL, NULL, '2020-09-28 15:46:46', '2020-09-28 15:46:46');
INSERT INTO `table_giangvien` VALUES (167, '', 'Trần Thị Bích', 'Hòa', 3, 1, 'ttbhoa', '', '0000-00-00 00:00:00', '0', 'ThS', 'ttbhoa@vku.udn.vn', NULL, NULL, '2020-09-29 08:34:22', '2020-09-29 08:34:22');
INSERT INTO `table_giangvien` VALUES (168, '', 'Nguyễn Phương', 'Tâm', 3, 1, 'nptam', '', '0000-00-00 00:00:00', '0', 'ThS', 'nptam@vku.udn.vn', NULL, NULL, '2020-09-29 08:34:50', '2020-09-29 08:34:50');
INSERT INTO `table_giangvien` VALUES (169, '', 'Hồ Văn', 'Phi', 3, 1, 'hvphi', '', '0000-00-00 00:00:00', '0', 'TS', 'hvphi@vku.udn.vn', NULL, NULL, '2020-09-29 08:35:15', '2020-09-29 08:35:15');
INSERT INTO `table_giangvien` VALUES (170, '', 'Lê Thị Bích', 'Tra', 3, 1, 'ltbtra', '', '0000-00-00 00:00:00', '0', 'ThS', 'ltbtra@vku.udn.vn', NULL, NULL, '2020-09-29 08:35:45', '2020-09-29 08:35:45');
INSERT INTO `table_giangvien` VALUES (171, '', 'Nguyễn Văn', 'Lợi', 3, 1, 'nvloi', '', '0000-00-00 00:00:00', '0', 'TS', 'nvloi@vku.udn.vn', NULL, NULL, '2020-09-29 08:36:20', '2020-09-29 08:36:20');
INSERT INTO `table_giangvien` VALUES (172, '', 'Trần Văn', 'Đại', 3, 1, 'tvdai', '', '0000-00-00 00:00:00', '0', 'TS', 'tvdai@vku.udn.vn', NULL, NULL, '2020-09-29 08:36:53', '2020-09-29 08:36:53');
INSERT INTO `table_giangvien` VALUES (173, '', 'Võ Hoàng Phương', 'Dung', 3, 1, 'vhpdung', '', '0000-00-00 00:00:00', '0', 'ThS', 'vhpdung@vku.udn.vn', NULL, NULL, '2020-09-29 08:37:20', '2020-09-29 08:37:20');
INSERT INTO `table_giangvien` VALUES (174, '', 'Nguyễn Sĩ', 'Thìn', 3, 1, 'nsthin', '', '0000-00-00 00:00:00', '0906561584', 'TS', 'nsthin@vku.udn.vn', NULL, NULL, '2020-09-29 08:37:38', '2020-10-16 08:56:36');
INSERT INTO `table_giangvien` VALUES (175, '', 'Đỗ Công', 'Đức', 3, 1, 'dcduc', '', '0000-00-00 00:00:00', '0', 'ThS', 'dcduc@vku.udn.vn', NULL, NULL, '2020-09-29 08:38:12', '2020-09-29 08:38:12');
INSERT INTO `table_giangvien` VALUES (176, '', 'Lương Khánh', 'Tý', 3, 1, 'lkty', '', '0000-00-00 00:00:00', '0', 'ThS', 'lkty@vku.udn.vn', NULL, NULL, '2020-09-29 08:38:36', '2020-09-29 08:38:36');
INSERT INTO `table_giangvien` VALUES (177, '', 'Trịnh Thị Ngọc', 'Linh', 3, 1, 'ttnlinh', '', '0000-00-00 00:00:00', '0', 'ThS', 'ttnlinh@vku.udn.vn', NULL, NULL, '2020-09-29 08:39:04', '2020-09-29 08:39:04');
INSERT INTO `table_giangvien` VALUES (178, '', 'Nguyễn Hoàng', 'Hải', 3, 1, 'nhhai', '', '0000-00-00 00:00:00', '0', 'TS', 'nhhai@vku.udn.vn', NULL, NULL, '2020-09-29 08:41:37', '2020-09-29 08:41:37');
INSERT INTO `table_giangvien` VALUES (179, '', 'Nguyễn Ngọc', 'Huy', 3, 1, 'nnhuy', '', '0000-00-00 00:00:00', '0', 'ThS', 'nnhuy@vku.udn.vn', NULL, NULL, '2020-09-29 08:42:24', '2020-09-29 08:42:24');
INSERT INTO `table_giangvien` VALUES (180, '', 'Nguyễn Trọng', 'Minh', 3, 1, 'ntminh', '', '0000-00-00 00:00:00', '0', 'ThS', 'ntminh@vku.udn.vn', NULL, NULL, '2020-09-29 08:42:41', '2020-09-29 08:42:41');
INSERT INTO `table_giangvien` VALUES (181, '', 'Nguyễn Văn', 'Thắng', 3, 1, 'nvthang', '', '0000-00-00 00:00:00', '0', 'ThS', 'nvthang@vku.udn.vn', NULL, NULL, '2020-09-29 08:43:24', '2020-09-29 08:43:24');
INSERT INTO `table_giangvien` VALUES (182, '', 'Nguyễn Thị Như', 'Quỳnh', 3, 1, 'ntnquynh', '', '0000-00-00 00:00:00', '0', 'ThS', 'ntnquynh@vku.udn.vn', NULL, NULL, '2020-09-29 08:44:24', '2020-09-29 08:44:24');
INSERT INTO `table_giangvien` VALUES (183, '', 'Nguyễn Viết', 'Đức', 3, 1, 'nvduc', '', '0000-00-00 00:00:00', '0', 'ThS', 'nvduc@vku.udn.vn', NULL, NULL, '2020-09-29 08:44:24', '2020-09-29 08:44:24');
INSERT INTO `table_giangvien` VALUES (184, '', 'Vũ Thị Quỳnh', 'Anh', 3, 1, 'vtqanh', '', '0000-00-00 00:00:00', '', 'ThS', 'vtqanh@vku.udn.vn', NULL, NULL, '2020-09-29 08:44:24', '2020-09-29 08:44:24');
INSERT INTO `table_giangvien` VALUES (185, '', 'Lê Thị Hải', 'Vân', 3, 1, 'lthvan', '', '0000-00-00 00:00:00', '', 'ThS', 'lthvan@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (186, '', 'Trần Thiện', 'Vũ', 3, 1, 'ttvu', '', '0000-00-00 00:00:00', '', 'TS', 'ttvu@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (187, '', 'Trần Văn', 'Thành', 3, 1, 'tvthanh', '', '0000-00-00 00:00:00', '', 'ThS', 'tvthanh@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (188, '', 'Nguyễn Thị Huyền', 'Trang', 3, 1, 'trangnth', '', '0000-00-00 00:00:00', '0', 'ThS', 'trangnth@vku.udn.vn', NULL, NULL, NULL, '2021-01-20 16:04:24');
INSERT INTO `table_giangvien` VALUES (189, '', 'Trần Uyên', 'Trang', 3, 1, 'tutrang', '', '0000-00-00 00:00:00', '', 'ThS', 'tutrang@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (190, '', 'Nguyễn Ngọc Huyền', 'Trân', 3, 1, 'nnhtran', '', '0000-00-00 00:00:00', '', 'ThS', 'nnhtran@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (191, '', 'Lê Mai', 'Anh', 3, 1, 'lmanh', '', '0000-00-00 00:00:00', '_', 'TS', 'lmanhmos@gmail.com', NULL, NULL, NULL, '2020-11-13 16:49:11');
INSERT INTO `table_giangvien` VALUES (192, '', 'Nguyễn Thị Kim', 'Ánh', 3, 1, 'ntkanh', '', '0000-00-00 00:00:00', '', 'ThS', 'ntkanh@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (193, '', 'Huỳnh Bá Thúy', 'Diệu', 3, 1, 'hbtdieu', '', '0000-00-00 00:00:00', '', 'ThS', 'hbtdieu@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (195, '', 'Nguyễn Thanh', 'Hoài', 3, 1, 'nthoai', '', '0000-00-00 00:00:00', '', 'TS', 'nthoai@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (196, '', 'Trần Phạm Huyền', 'Trang', 3, 1, 'tphtrang', '', '0000-00-00 00:00:00', '', 'ThS', 'tphtrang@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (197, '', 'Ngô Thị Hiền', 'Trang', 3, 1, 'nthtrang', '', '0000-00-00 00:00:00', '09095889918', 'ThS', 'nthtrang@vku.udn.vn', NULL, NULL, NULL, '2020-11-05 13:55:13');
INSERT INTO `table_giangvien` VALUES (198, '', 'Lê Thị', 'Bình', 3, 1, 'ltbinh', '', '0000-00-00 00:00:00', '', 'ThS', 'ltbinh@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (199, '', 'Trần Thị Hạ', 'Quyên', 3, 1, 'tthquyen', '', '0000-00-00 00:00:00', '', 'ThS', 'tthquyen@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (200, '', 'Nguyễn Trọng Công', 'Thành', 3, 1, 'ntcthanh', '', '0000-00-00 00:00:00', '', 'ThS', 'ntcthanh@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (201, '', 'Thái Thị', 'Hồng', 3, 1, 'tthong', '', '0000-00-00 00:00:00', '', 'ThS', 'tthong@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (202, '', 'NTS', 'Lâm', 3, 1, 'ntslam', '', '0000-00-00 00:00:00', '', 'ThS', 'ntslam@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (203, '', 'P', 'Đào tạo', 3, 1, 'daotao', '', '0000-00-00 00:00:00', '', 'Phòng', 'daotao@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (204, '', 'Nguyễn Thị Mỹ', 'Hạnh', 3, 1, 'ntmhanh', '', '0000-00-00 00:00:00', '', 'ThS', 'ntmhanh@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (205, '', 'Hồ Thị Hồng', 'Liên', 3, 1, 'hthlien', '', '0000-00-00 00:00:00', '', 'ThS', 'hthlien@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (206, '', 'Vũ Đình', 'Chinh', 3, 1, 'vdchinh', '', '0000-00-00 00:00:00', '0947246898', 'TS', 'chinh.vudinhhueuni@gmail.com', NULL, NULL, NULL, '2021-01-21 15:36:16');
INSERT INTO `table_giangvien` VALUES (207, '', 'Trần Thị Hương', 'Xuân', 3, 1, 'tthxuan', '', '0000-00-00 00:00:00', '', 'ThS', 'huongxuansp@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (208, '', 'Nguyễn Thị Minh', 'Ngọc', 3, 1, 'ntmngoc', '', '0000-00-00 00:00:00', '', 'ThS', 'minhngoc.dn55@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (209, '', 'Lê Văn Thanh', 'Sơn', 3, 1, 'lvtson', '', '0000-00-00 00:00:00', '', 'ThS', 'sonlethanh1968@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (210, '', 'Hoàng Đình', 'Triển', 3, 1, 'hdtrien', '', '0000-00-00 00:00:00', '', 'ThS', 'hoangtrien@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (211, '', 'Nguyễn Thị Khánh\r\n', 'Hà', 3, 1, 'ntkha', '', '0000-00-00 00:00:00', '', 'ThS', 'ntkha@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (212, '', 'Nguyễn Thị', 'Mai', 3, 1, 'ntmai', '', '0000-00-00 00:00:00', '', 'ThS', 'ntmai@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (213, '', 'Trần Thị Nam', 'Trân', 3, 1, 'ttntran', '', '0000-00-00 00:00:00', '', 'ThS', 'ttntran@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (214, '', 'Nguyễn Hà', 'Phương', 3, 1, 'nhphuong', '', '0000-00-00 00:00:00', '', 'ThS', 'nhphuong@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (215, '', 'Nguyễn Lê Thảo', 'Hạnh', 3, 1, 'nlthanh', '', '0000-00-00 00:00:00', '', 'ThS', 'thaohanhnguyenle@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (216, '', 'Nguyễn Thị Thanh', 'Trúc', 3, 1, 'ntttruc', '', '0000-00-00 00:00:00', '', 'ThS', 'nttkhuc@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (217, '', 'Phan Thị Hồng', 'Việt', 3, 1, 'pthviet', '', '0000-00-00 00:00:00', '', 'ThS', 'pthviet@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (218, '', 'Vũ Thu', 'Huyền', 3, 1, 'vthuyen', '', '0000-00-00 00:00:00', '', 'ThS', 'vthuyen@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (219, '', 'Hoàng Thị', 'Trang', 3, 1, 'httrang', '', '0000-00-00 00:00:00', '', 'ThS', 'httrang@vku.udn.vn', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (220, '', 'Phạm Thị Lệ', 'Diễm', 3, 1, 'ptldiem', '', '0000-00-00 00:00:00', '', 'CN', 'eunhedt@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (221, '', 'Bùi Thị Kim', 'Ngân', 3, 1, 'btkngan', '', '0000-00-00 00:00:00', '', 'CN', 'kina307@gmail.com', NULL, NULL, NULL, NULL);
INSERT INTO `table_giangvien` VALUES (222, '', 'Văn Ngọc', 'Dương', 3, 1, 'vnduong', '', '0000-00-00 00:00:00', '', 'KS', 'vnduongit@gmail.com', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
