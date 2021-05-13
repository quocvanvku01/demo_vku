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

 Date: 13/05/2021 15:47:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_categories
-- ----------------------------
DROP TABLE IF EXISTS `cms_categories`;
CREATE TABLE `cms_categories`  (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `ParentID` int NULL DEFAULT NULL,
  `Name_l0` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Color_bl` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Name_l1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Name_l2` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Slug_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Slug_en` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Index` int NULL DEFAULT 0,
  `Khoa` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CategoryID`) USING BTREE,
  UNIQUE INDEX `Slug`(`Slug_category`, `ParentID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 217 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_categories
-- ----------------------------
INSERT INTO `cms_categories` VALUES (82, 0, 'Giới thiệu', NULL, 'About Us', '', 'gioi-thieu', 'introduce', 1, NULL);
INSERT INTO `cms_categories` VALUES (84, 0, 'Hướng nghiệp', NULL, 'Vocational Guidance', '', 'huong-nghiep', 'vocational-guidance', 3, NULL);
INSERT INTO `cms_categories` VALUES (108, 0, 'Bí quyết học tập', NULL, 'Learning Secrets', '', 'bi-quyet-hoc-tap', 'learning-secrets', 5, NULL);
INSERT INTO `cms_categories` VALUES (109, 0, 'Hợp tác quốc tế', NULL, 'International cooperation', '', 'hop-tac-quoc-te', 'international-cooperation', 5, NULL);
INSERT INTO `cms_categories` VALUES (112, 0, 'Thông tin nhà ở, phòng trọ', NULL, 'Information On Houses And Rooms', '', 'thong-tin-nha-o-phong-tro', 'information-on-houses-and-rooms', 9, NULL);
INSERT INTO `cms_categories` VALUES (113, 0, 'Thực tập, Việc làm thêm', NULL, 'Internships Part time jobs', '', 'viec-lam-them', 'internships-Part-time-jobs', 10, NULL);
INSERT INTO `cms_categories` VALUES (117, 1, 'Giới thiệu', NULL, 'Introduce', '', 'gioi-thieu', 'introduce', 0, NULL);
INSERT INTO `cms_categories` VALUES (118, 0, 'Tin tức hoạt động', NULL, 'News Event', '', 'tin-tuc-hoat-dong', 'news-event', 1, NULL);
INSERT INTO `cms_categories` VALUES (119, 0, 'Chương trình đào tạo', NULL, 'Training Program', '', 'chuong-trinh-dao-tao', 'training-program', 2, NULL);
INSERT INTO `cms_categories` VALUES (123, 0, 'Tin tức và hoạt động', NULL, 'News &amp; Event', '', 'tin-tuc-va-hoat-dong', 'news-event', 1, NULL);
INSERT INTO `cms_categories` VALUES (127, 0, 'Khoa học công nghệ', NULL, 'Science and technology', '', 'khoa-hoc-cong-nghe', 'science-and-technology', 3, NULL);
INSERT INTO `cms_categories` VALUES (131, 0, 'Tin tức - thông báo', NULL, '', '', 'tin-tuc-thong-bao-ctsv', 'tin-tuc-thong-bao-ctsv', 2, NULL);
INSERT INTO `cms_categories` VALUES (134, 0, 'Quyết định', NULL, '', '', 'quyet-dinh-ctsv', 'quyet-dinh-ctsv', 5, NULL);
INSERT INTO `cms_categories` VALUES (139, 0, 'Học bổng', NULL, '', '', 'hoc-bong-ctsv', 'hoc-bong-ctsv', 10, NULL);
INSERT INTO `cms_categories` VALUES (171, 0, 'Tuyển dụng', NULL, '', '', '', '', 1, NULL);
INSERT INTO `cms_categories` VALUES (140, 0, 'Đào tạo', NULL, 'Training Affairs', '', 'dao-tao', 'training', 2, NULL);
INSERT INTO `cms_categories` VALUES (179, 0, 'Khoa Khoa học máy tính', NULL, 'Information Technology', '', 'khoa-khoa-hoc-may-tinh', 'information-technology', 1, NULL);
INSERT INTO `cms_categories` VALUES (180, 0, 'Khoa Kỹ thuật máy tính và Điện tử', NULL, 'Computer Engineering and Technology', '', 'khoa-ky-thuat-may-tinh-va-dien-tu', 'computer-engineering-and-technology', 1, NULL);
INSERT INTO `cms_categories` VALUES (181, 0, 'Khoa Kinh tế số và Thương Mại điện tử', NULL, 'Bussiness Administration', '', 'khoa-kinh-te-so-va-thuong-mai-dien-tu', 'bussiness-administration', 1, NULL);
INSERT INTO `cms_categories` VALUES (182, 0, 'Cuộc thi', NULL, 'Competitions', '', 'cuoc-thi', 'competitions', 1, NULL);
INSERT INTO `cms_categories` VALUES (183, 1, 'Đoàn thanh niên', NULL, 'Đoàn thanh niên', 'Đoàn thanh niên', 'doan-thanh-nien', 'youth', 1, NULL);
INSERT INTO `cms_categories` VALUES (159, 0, 'Tuyển sinh', NULL, 'Admissions', '', 'tuyen-sinh', 'admissions', 8, NULL);
INSERT INTO `cms_categories` VALUES (162, 1, 'Giới thiệu', NULL, 'About Us', '', 'gioi-thieu-ts', 'about-admission', 1, NULL);
INSERT INTO `cms_categories` VALUES (163, 1, 'Tin tức hoạt động', NULL, 'News &amp; Event', '', 'tin-tuc-hoat-dong-ts', 'tin-tuc-hoat-dong-ts', 0, NULL);
INSERT INTO `cms_categories` VALUES (164, 1, 'Chương trình đào tạo', NULL, 'Training Program', '', 'chuong-trinh-dao-tao-khoa-cntt', 'chuong-trinh-dao-tao-khoa-cntt', 0, NULL);
INSERT INTO `cms_categories` VALUES (170, 1, 'Nghiên cứu khoa học', NULL, 'Scientific research', '', 'nghien-cuu-khoa-hoc', 'nghien-cuu-khoa-hoc', 4, NULL);
INSERT INTO `cms_categories` VALUES (184, 1, 'Hoạt động chung', NULL, 'Activity', 'Activity', 'hoat-dong-chung', 'activity', 1, NULL);
INSERT INTO `cms_categories` VALUES (185, 1, 'Bản tin Đại học Đà Nẵng', NULL, ' University of Danang Newsletter', ' University of Danang Newsletter', 'ban-tin-dai-hoc-da-nang', 'ban-tin-dai-hoc-da-nang', 1, NULL);
INSERT INTO `cms_categories` VALUES (186, 1, 'Thông báo chung', NULL, 'Thông báo chung', 'Thông báo chung', 'thong-bao-chung', 'thong-bao-chung', 1, NULL);
INSERT INTO `cms_categories` VALUES (187, 1, 'Phòng Thanh Tra Pháp Chế', NULL, 'Phòng Thanh Tra Pháp Chế', 'Phòng Thanh Tra Pháp Chế', 'phong-thanh-tra-phap-che', 'phong-thanh-tra-phap-che', 1, NULL);
INSERT INTO `cms_categories` VALUES (188, 1, 'Thư viện', NULL, 'Thư viện', 'Thư viện', 'thu-vien', 'thu-vien', 1, NULL);
INSERT INTO `cms_categories` VALUES (189, 1, 'Văn phòng Đảng Uy - Văn phòng', NULL, 'Văn phòng Đảng Uy - Văn phòng', 'Văn phòng Đảng Uy - Văn phòng', 'van-phong-dang-uy-van-phong', 'van-phong-dang-uy-van-phong', 1, NULL);
INSERT INTO `cms_categories` VALUES (190, 1, 'Tổ chức Hành chính', NULL, 'Tổ chức Hành chính', 'Tổ chức Hành chính', 'to-chuc-hanh-chinh', 'to-chuc-hanh-chinh', 1, NULL);
INSERT INTO `cms_categories` VALUES (191, 1, 'Cơ sở vật chất', NULL, 'Cơ sở vật chất', 'Cơ sở vật chất', 'co-so-vat-chat', 'co-so-vat-chat', 1, NULL);
INSERT INTO `cms_categories` VALUES (192, 1, 'Kế hoạch tài chính', NULL, 'Kế hoạch tài chính', 'Kế hoạch tài chính', 'ke-hoach-tai-chinh', 'ke-hoach-tai-chinh', 1, NULL);
INSERT INTO `cms_categories` VALUES (193, 1, 'Công đoàn', NULL, 'Công đoàn', 'Union', 'cong-doan', 'union', 1, NULL);
INSERT INTO `cms_categories` VALUES (194, 1, 'Tuyển sinh', NULL, 'Tuyển sinh', 'Tuyển sinh', 'tuyen-sinh', 'admission', 1, NULL);
INSERT INTO `cms_categories` VALUES (195, 1, 'Cuộc thi', NULL, 'Cuộc thi', 'Cuộc thi', 'cuoc-thi', 'competition', 1, NULL);
INSERT INTO `cms_categories` VALUES (196, 140, 'Công nghệ thông tin', NULL, '', '', 'cong-nghe-thong-tin', 'cong-nghe-thong-tin', 1, NULL);
INSERT INTO `cms_categories` VALUES (197, 140, 'Công nghệ kỹ thuật máy tính', NULL, '', '', 'cong-nghe-ky-thuat-may-tinh', 'cong-nghe-ky-thuat-may-tinh', 1, NULL);
INSERT INTO `cms_categories` VALUES (198, 140, 'Quản trị kinh doanh', NULL, '', '', 'quan-tri-kinh-doanh', 'quan-tri-kinh-doanh', 1, NULL);
INSERT INTO `cms_categories` VALUES (199, 220, 'Giới thiệu khoa', NULL, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `cms_categories` VALUES (200, 221, 'Thế mạnh của khoa', '#2AA830', NULL, NULL, 'the-manh', NULL, 0, NULL);
INSERT INTO `cms_categories` VALUES (201, 222, 'Đội ngũ GV-CB', '#2AA830', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `cms_categories` VALUES (202, 223, 'Thông tin liên hệ', '#2AA830', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `cms_categories` VALUES (203, 224, 'Chương trình đào tạo', '#2AA830', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `cms_categories` VALUES (204, 225, 'Danh sách môn học', '#2AA830', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `cms_categories` VALUES (205, 226, 'Tuyển sinh', '#2AA830', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `cms_categories` VALUES (206, 227, 'Thông tin - thông báo', '#dd3333', NULL, NULL, 'thong-tin-thong-bao', NULL, 0, NULL);
INSERT INTO `cms_categories` VALUES (207, 228, 'Hoạt động ngoại khoá', '#2AA830', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `cms_categories` VALUES (213, 234, 'Góc kỹ năng', '#444', NULL, NULL, 'goc-ky-nang', NULL, 0, NULL);
INSERT INTO `cms_categories` VALUES (209, 230, 'Tin tức ngành', '#2AA830', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `cms_categories` VALUES (210, 231, 'Nghiên cứu khoa học', '#dd9933', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `cms_categories` VALUES (211, 232, 'Hoạt động sinh viên', '#2AA830', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `cms_categories` VALUES (212, 233, 'Vinh danh sinh viên', '#2AA830', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `cms_categories` VALUES (214, 0, 'Giới thiệu', NULL, NULL, NULL, 'abc', NULL, 0, 'khmt');
INSERT INTO `cms_categories` VALUES (215, 0, 'Ngành đào tạo', NULL, NULL, NULL, 'nganh-dao-tao', NULL, 0, 'khmt');
INSERT INTO `cms_categories` VALUES (216, 214, 'Gioi thieu 1', NULL, NULL, NULL, 'gioi-thieu-1', NULL, 0, 'khmt');

SET FOREIGN_KEY_CHECKS = 1;
