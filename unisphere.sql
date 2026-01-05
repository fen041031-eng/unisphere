/*
 Navicat Premium Dump SQL

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3306
 Source Schema         : unisphere

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 05/01/2026 14:15:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity_activityapplication
-- ----------------------------
DROP TABLE IF EXISTS `activity_activityapplication`;
CREATE TABLE `activity_activityapplication`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `club_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact_person` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `activity_time` datetime(6) NOT NULL,
  `location` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apply_time` datetime(6) NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `admin_comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applicant_id` int NOT NULL,
  `reviewed_at` datetime(6) NULL DEFAULT NULL,
  `reviewed_by_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `activity_activityapp_applicant_id_e130e395_fk_auth_user`(`applicant_id` ASC) USING BTREE,
  INDEX `activity_activityapp_reviewed_by_id_7725485e_fk_auth_user`(`reviewed_by_id` ASC) USING BTREE,
  CONSTRAINT `activity_activityapp_applicant_id_e130e395_fk_auth_user` FOREIGN KEY (`applicant_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `activity_activityapp_reviewed_by_id_7725485e_fk_auth_user` FOREIGN KEY (`reviewed_by_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_activityapplication
-- ----------------------------
INSERT INTO `activity_activityapplication` VALUES (1, 'OwnJudge', 'OJ', '徐凌飞', '18100657513', '2025-12-07 15:50:00.000000', '108', '大家一起“OwnJudge”!', '2025-12-07 15:51:05.782844', 'rejected', 'oj', 3, '2026-01-02 21:58:20.930767', 3);
INSERT INTO `activity_activityapplication` VALUES (2, '12', 'OJ', '徐凌飞', '18100657513', '2026-01-02 21:26:00.000000', '108', '1', '2026-01-02 21:27:04.619115', 'approved', '', 3, '2026-01-02 21:57:55.742952', 3);
INSERT INTO `activity_activityapplication` VALUES (3, 'oj', 'oj', 'oj', 'oj', '2026-01-10 22:06:00.000000', '108', 'oj', '2026-01-02 22:06:42.953680', 'pending', '', 3, NULL, NULL);
INSERT INTO `activity_activityapplication` VALUES (4, 'w', 'w', 'w', 'w', '2026-01-02 22:07:00.000000', 'w', 'w', '2026-01-02 22:07:16.414312', 'pending', '', 3, NULL, NULL);
INSERT INTO `activity_activityapplication` VALUES (5, 'oj', 'oj', 'oj', 'oj', '2026-01-02 22:09:00.000000', 'oj', 'oj', '2026-01-02 22:09:51.017831', 'pending', '', 3, NULL, NULL);
INSERT INTO `activity_activityapplication` VALUES (6, 'w', 'w', 'w', 'w', '2026-01-02 22:07:00.000000', 'w', 'w', '2026-01-02 22:11:53.281562', 'rejected', '不行', 3, '2026-01-04 18:09:34.327049', 3);
INSERT INTO `activity_activityapplication` VALUES (7, 'g', 'g', 'g', 'g', '2026-01-04 22:17:00.000000', 'g', 'g', '2026-01-02 22:17:11.185090', 'approved', '', 3, '2026-01-04 16:22:44.824597', 3);
INSERT INTO `activity_activityapplication` VALUES (8, 'q', 'q', 'q', 'q', '2026-01-02 22:17:00.000000', 'q', 'q', '2026-01-02 22:17:58.926090', 'approved', '', 3, '2026-01-02 22:23:02.689180', 3);
INSERT INTO `activity_activityapplication` VALUES (9, 'ww', 'ww', '徐凌飞', '18100657513', '2026-01-04 18:06:00.000000', '108', 'oj', '2026-01-04 18:07:03.040179', 'approved', '', 4, '2026-01-04 18:09:01.300685', 3);

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 3, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 3, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 3, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 3, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 2, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 2, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 2, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 2, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add captcha model', 7, 'add_captchamodel');
INSERT INTO `auth_permission` VALUES (26, 'Can change captcha model', 7, 'change_captchamodel');
INSERT INTO `auth_permission` VALUES (27, 'Can delete captcha model', 7, 'delete_captchamodel');
INSERT INTO `auth_permission` VALUES (28, 'Can view captcha model', 7, 'view_captchamodel');
INSERT INTO `auth_permission` VALUES (29, 'Can add blog', 8, 'add_blog');
INSERT INTO `auth_permission` VALUES (30, 'Can change blog', 8, 'change_blog');
INSERT INTO `auth_permission` VALUES (31, 'Can delete blog', 8, 'delete_blog');
INSERT INTO `auth_permission` VALUES (32, 'Can view blog', 8, 'view_blog');
INSERT INTO `auth_permission` VALUES (33, 'Can add blog comment', 10, 'add_blogcomment');
INSERT INTO `auth_permission` VALUES (34, 'Can change blog comment', 10, 'change_blogcomment');
INSERT INTO `auth_permission` VALUES (35, 'Can delete blog comment', 10, 'delete_blogcomment');
INSERT INTO `auth_permission` VALUES (36, 'Can view blog comment', 10, 'view_blogcomment');
INSERT INTO `auth_permission` VALUES (37, 'Can add 博客分类', 9, 'add_blogcategory');
INSERT INTO `auth_permission` VALUES (38, 'Can change 博客分类', 9, 'change_blogcategory');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 博客分类', 9, 'delete_blogcategory');
INSERT INTO `auth_permission` VALUES (40, 'Can view 博客分类', 9, 'view_blogcategory');
INSERT INTO `auth_permission` VALUES (41, 'Can add 活动申请', 11, 'add_activityapplication');
INSERT INTO `auth_permission` VALUES (42, 'Can change 活动申请', 11, 'change_activityapplication');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 活动申请', 11, 'delete_activityapplication');
INSERT INTO `auth_permission` VALUES (44, 'Can view 活动申请', 11, 'view_activityapplication');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$720000$2oqaWoqanwUa0HDUX9GU4L$GGfYlDQqYcbqcgJTliBnLYCyXXqbPRqJo0EHql04RJo=', '2026-01-04 16:24:11.471029', 1, '孟千瑞', '', '', '2551906024@qq.com', 0, 1, '2025-11-30 13:58:54.617672');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$720000$soXbfeqUXShMnTY1dDblkj$v06J1PZn3dVJlYHGzdyiHNMcYy7t+GM5NaM/3pyHrxk=', '2026-01-04 18:10:40.267919', 0, 'cyf', '', '', '3032113221@qq.com', 1, 1, '2025-12-10 18:24:37.711188');
INSERT INTO `auth_user` VALUES (4, 'pbkdf2_sha256$720000$MffJWIFQ1hK2yykgyrzwn5$uQwX93ZyjgE+59IxwrioChpy55878J3ouE67r/dQSnI=', '2026-01-04 18:10:02.632620', 0, 'xlf', '', '', '1423540438@qq.com', 0, 1, '2025-12-10 19:06:58.743446');
INSERT INTO `auth_user` VALUES (5, 'pbkdf2_sha256$720000$86aDV9BpHFCGZWnJgwKcba$tILdQlfCzBCGkBCPnU6V/+rkbySwcbWPzBMX5t6HSKY=', '2026-01-02 16:52:08.810541', 1, 'liangxk', '', '', 'liang_ananna@qq.com', 1, 1, '2025-12-24 14:39:57.486375');
INSERT INTO `auth_user` VALUES (6, 'pbkdf2_sha256$720000$d9oGYQuLD3KW7vsHkOKXFF$owoeBaSXy2lQtUNIacgvab5Z9xheUvCpWEWxD+dGOog=', '2025-12-30 16:42:20.111904', 0, 'lxk', '', '', 'xhl520lxk@qq.com', 0, 1, '2025-12-24 21:38:00.000000');

-- ----------------------------
-- Table structure for auth_user1
-- ----------------------------
DROP TABLE IF EXISTS `auth_user1`;
CREATE TABLE `auth_user1`  (
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `studentID` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user1
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for blog_blog
-- ----------------------------
DROP TABLE IF EXISTS `blog_blog`;
CREATE TABLE `blog_blog`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  `author_id` int NOT NULL,
  `category_id` bigint NOT NULL,
  `review_comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `reviewed_at` datetime(6) NULL DEFAULT NULL,
  `reviewed_by_id` int NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `blog_blog_author_id_8791af69_fk_auth_user_id`(`author_id` ASC) USING BTREE,
  INDEX `blog_blog_category_id_c34d5f94_fk_blog_blogcategory_id`(`category_id` ASC) USING BTREE,
  INDEX `blog_blog_reviewed_by_id_df8b403b_fk_auth_user_id`(`reviewed_by_id` ASC) USING BTREE,
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `blog_blog_category_id_c34d5f94_fk_blog_blogcategory_id` FOREIGN KEY (`category_id`) REFERENCES `blog_blogcategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `blog_blog_reviewed_by_id_df8b403b_fk_auth_user_id` FOREIGN KEY (`reviewed_by_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog_blog
-- ----------------------------
INSERT INTO `blog_blog` VALUES (1, 'BBIKLBLKUB', '', '2025-12-02 00:01:15.696706', 1, 5, '', NULL, NULL, 'pending');
INSERT INTO `blog_blog` VALUES (2, 'efgesGvsves', '', '2025-12-02 00:03:19.478332', 1, 5, '', NULL, NULL, 'pending');
INSERT INTO `blog_blog` VALUES (3, 'bubuhb', '', '2025-12-02 00:19:14.005818', 1, 5, '', NULL, NULL, 'pending');
INSERT INTO `blog_blog` VALUES (4, 'hhh', '', '2025-12-02 00:28:12.677478', 1, 5, '', NULL, NULL, 'pending');
INSERT INTO `blog_blog` VALUES (5, 'hhhi', '', '2025-12-02 00:29:58.286703', 1, 5, '', NULL, NULL, 'pending');
INSERT INTO `blog_blog` VALUES (6, 'bjkhbkjb', '', '2025-12-02 00:40:11.381253', 1, 5, '', NULL, NULL, 'pending');
INSERT INTO `blog_blog` VALUES (7, 'bjkbl', '', '2025-12-02 00:41:07.952920', 1, 5, '', NULL, NULL, 'pending');
INSERT INTO `blog_blog` VALUES (8, 'fesdfs', '', '2025-12-02 20:02:32.978776', 1, 6, '', NULL, NULL, 'pending');
INSERT INTO `blog_blog` VALUES (9, 'zc', '<p>123</p><p><br></p>', '2025-12-10 18:31:14.194644', 1, 5, '', NULL, NULL, 'pending');
INSERT INTO `blog_blog` VALUES (10, 'qwe', '<p>123</p><p><br></p>', '2025-12-10 18:31:57.711435', 1, 5, '', NULL, NULL, 'pending');
INSERT INTO `blog_blog` VALUES (11, 'asd', '<p>1123</p>', '2025-12-10 18:42:28.400187', 1, 5, '', '2025-12-10 19:02:46.393281', 3, 'rejected');
INSERT INTO `blog_blog` VALUES (12, 'af', '<p>123</p>', '2025-12-10 18:43:54.040050', 1, 5, '', '2025-12-10 18:54:16.949015', 1, 'approved');
INSERT INTO `blog_blog` VALUES (13, '123', '<p>123</p>', '2025-12-10 18:48:10.467373', 1, 5, '', '2025-12-10 18:54:01.848304', 1, 'approved');
INSERT INTO `blog_blog` VALUES (14, '哈哈哈我是mqr', '<p>123</p>', '2025-12-10 19:02:23.772376', 1, 5, '', '2025-12-10 19:02:42.512325', 3, 'approved');
INSERT INTO `blog_blog` VALUES (15, '我是傻子xlf', '<p>13</p>', '2025-12-10 19:10:09.951359', 4, 5, '真实', '2025-12-10 19:11:16.999487', 3, 'approved');
INSERT INTO `blog_blog` VALUES (16, '我是mqr 我是cyf的狗', '<p>123</p>', '2025-12-10 19:10:37.941058', 1, 5, '', '2025-12-10 19:10:59.441063', 3, 'approved');
INSERT INTO `blog_blog` VALUES (17, '122', '<p>1222</p>', '2026-01-04 18:07:25.613224', 4, 5, '', NULL, NULL, 'pending');

-- ----------------------------
-- Table structure for blog_blogcategory
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogcategory`;
CREATE TABLE `blog_blogcategory`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog_blogcategory
-- ----------------------------
INSERT INTO `blog_blogcategory` VALUES (5, '宣传');
INSERT INTO `blog_blogcategory` VALUES (6, '活动');
INSERT INTO `blog_blogcategory` VALUES (7, '人事');

-- ----------------------------
-- Table structure for blog_blogcomment
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogcomment`;
CREATE TABLE `blog_blogcomment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  `author_id` int NOT NULL,
  `blog_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `blog_blogcomment_author_id_ce11ddad_fk_auth_user_id`(`author_id` ASC) USING BTREE,
  INDEX `blog_blogcomment_blog_id_d3b167d7_fk_blog_blog_id`(`blog_id` ASC) USING BTREE,
  CONSTRAINT `blog_blogcomment_author_id_ce11ddad_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `blog_blogcomment_blog_id_d3b167d7_fk_blog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog_blogcomment
-- ----------------------------

-- ----------------------------
-- Table structure for club_club
-- ----------------------------
DROP TABLE IF EXISTS `club_club`;
CREATE TABLE `club_club`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apply_time` datetime(6) NOT NULL,
  `founder_id` int NOT NULL,
  `advisor` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contact` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `purpose` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `recruit_num` int NOT NULL,
  `reject_reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE,
  INDEX `club_club_founder_id_312a4739_fk_auth_user_id`(`founder_id` ASC) USING BTREE,
  CONSTRAINT `club_club_founder_id_312a4739_fk_auth_user_id` FOREIGN KEY (`founder_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of club_club
-- ----------------------------
INSERT INTO `club_club` VALUES (3, '测试社团', 'academic', '社团介绍', 'approved', '2025-12-24 10:00:00.000000', 1, '孟老师', '19110161679', '社团宗旨', 50, '');
INSERT INTO `club_club` VALUES (7, '测试社团1', 'academic', '社团介绍', 'rejected', '2025-12-24 10:01:00.000000', 1, '人', '19110161679', '社团宗旨', 50, '拒绝你');
INSERT INTO `club_club` VALUES (8, '唱跳rap社', '文艺类', '全民制作人可以参加的社团', 'approved', '2025-12-24 21:41:48.538379', 6, '孟千瑞', '19110161679', '促进坤流', 20, '');
INSERT INTO `club_club` VALUES (13, '唱跳社', '文艺类', 'wadwfa', 'approved', '2025-12-30 16:43:52.661347', 6, '孟千瑞', '19110161679', 'fwrf', 20, '');
INSERT INTO `club_club` VALUES (14, '1', '11', '1', 'approved', '2026-01-02 16:59:43.610073', 4, '1', '', '', 20, '');
INSERT INTO `club_club` VALUES (15, 'oj社', '学术', 'oj', 'approved', '2026-01-04 18:08:07.623240', 4, '张鑫', '18100657513', 'ojojoj', 10, '');
INSERT INTO `club_club` VALUES (17, '55', '155', '15', 'rejected', '2026-01-04 18:10:29.329461', 4, 'zx', '18100657513', '15', 18, 'no');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2025-12-01 14:45:40.755282', '1', '艺术', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (2, '2025-12-01 14:45:46.230885', '2', '艺术', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (3, '2025-12-01 14:45:52.820173', '3', '娱乐', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (4, '2025-12-01 14:46:30.015670', '4', '科创', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (5, '2025-12-01 14:53:48.294210', '4', '科创', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (6, '2025-12-01 14:53:48.294232', '3', '娱乐', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (7, '2025-12-01 14:53:48.294239', '2', '艺术', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (8, '2025-12-01 14:54:16.983247', '5', '宣传', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (9, '2025-12-01 14:54:20.859762', '6', '活动', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (10, '2025-12-01 14:54:24.361596', '7', '人事', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (11, '2025-12-01 15:08:00.238366', '1', '艺术', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (12, '2025-12-24 21:38:03.979994', '6', 'lxk', 1, '[{\"added\": {}}]', 4, 5);
INSERT INTO `django_admin_log` VALUES (13, '2025-12-24 21:40:07.674088', '6', 'lxk', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 5);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (11, 'activity', 'activityapplication');
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (8, 'blog', 'blog');
INSERT INTO `django_content_type` VALUES (9, 'blog', 'blogcategory');
INSERT INTO `django_content_type` VALUES (10, 'blog', 'blogcomment');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'usauth', 'captchamodel');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2025-11-30 08:10:38.826170');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2025-11-30 08:10:39.154636');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2025-11-30 08:10:39.231329');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2025-11-30 08:10:39.235791');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2025-11-30 08:10:39.240006');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2025-11-30 08:10:39.285232');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2025-11-30 08:10:39.319667');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2025-11-30 08:10:39.331060');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2025-11-30 08:10:39.334605');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2025-11-30 08:10:39.368569');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2025-11-30 08:10:39.369905');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2025-11-30 08:10:39.373651');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2025-11-30 08:10:39.411019');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2025-11-30 08:10:39.449036');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2025-11-30 08:10:39.459495');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2025-11-30 08:10:39.463567');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2025-11-30 08:10:39.497429');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2025-11-30 08:10:39.518031');
INSERT INTO `django_migrations` VALUES (19, 'usauth', '0001_initial', '2025-11-30 08:10:39.529163');
INSERT INTO `django_migrations` VALUES (20, 'usauth', '0002_alter_captchamodel_email', '2025-11-30 08:16:30.299074');
INSERT INTO `django_migrations` VALUES (21, 'blog', '0001_initial', '2025-12-01 05:55:07.531431');
INSERT INTO `django_migrations` VALUES (22, 'blog', '0002_alter_blog_options_alter_blogcomment_options_and_more', '2025-12-10 18:09:13.561249');
INSERT INTO `django_migrations` VALUES (23, 'activity', '0001_initial', '2026-01-02 21:17:50.807071');
INSERT INTO `django_migrations` VALUES (24, 'activity', '0002_activityapplication_reviewed_at_and_more', '2026-01-02 21:18:19.245548');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('37iqvjcqn0i7tvurlgqp85m237mr28o8', '.eJxVjMEOwiAQBf-FsyGwpVB79O43EGAXixpoSptojP-uJD3o6SVvJvNi1m3rZLdKi03IRtazw-_nXbhRbgCvLl8KDyWvS_K8KXynlZ8L0v20u3-BydWpZUlhoOgdCPCdQRmOChAwSu20HijKLvSd9soIE4GMHEC5GMR3QGjQLVqp1lSypceclicbxfsDm_0-0w:1vYP80:s2gElL4fMbu75sTUwCTsG03wGNiW-t2f8ixDleVtTTY', '2026-01-07 21:42:12.984308');
INSERT INTO `django_session` VALUES ('4w9cfp763xvsv6och0bmfm299pvy5hpy', '.eJxVjMEOgjAQRP-lZ9MUCqVw9O43NLvtrlRNSygkGuO_CwkHPU0y7828hYN1Gd1aaHYxiEFocfrtEPyd0g7CDdI1S5_TMkeUuyIPWuQlB3qcD_fvYIQybmvLqqtI15qpRt9DjaGxaH1rWG3Mthp7agN7tmRMFbZEbLwGZiLAbj8tVErMydFzivNLDOrzBc11QNE:1vbb0l:L-MSKRut2slzkouSpaXSXJriOFnfUmCrYIxIC-TSaCc', '2026-01-16 16:59:55.515410');
INSERT INTO `django_session` VALUES ('5s4d8hbkwt0saph3qmub20kzgo98y7mc', '.eJxVjEEOwiAQRe_C2hDawhBcuvcMZBgGixowpU00xrsbki50-9_77y08buvst8aLz1EcxSAOv1tAunHpIF6xXKqkWtYlB9kVudMmzzXy_bS7f4EZ29zf5IYxRQMMTM4mAGejY4iomIzVEHRANQ5uGqfEEylMkLRFIINOO9OjjVvLtXh-PvLyEkf1-QKtKz-J:1vQPJD:WNfcdYRvMkpvRS5ytAu5JU1iBMWjh3G4zdpRhrUTuno', '2025-12-16 20:16:43.232414');
INSERT INTO `django_session` VALUES ('9n0du4yj0em9pfmgrikolymzq4arugum', '.eJxVjEEOwiAQRe_C2hCKVJku3XsGMjCDRQ0YaBON8e62SRe6fe_9_xYO52l0c-PqEolBdGL3yzyGG-dV0BXzpchQ8lSTl2siN9vkuRDfT1v7dzBiG5c1ABhDe4ocg9GgbA_oUSuLh2BsHxZ6ZOAOjYfQKaVsDJE0ARrWnuJ62ri1VLLj5yPVlxjU5wusGEAL:1vcJPH:cffrqlv5DBOYligDcX3O2CU-O_ZGmuT1tz313ofyy9s', '2026-01-18 16:24:11.473129');
INSERT INTO `django_session` VALUES ('cfjsba0aodi4du9tvdkawbvs9m1wyqf6', '.eJxVjEEOwiAQRe_C2hCYUqgu3fcMZGAGqRpISrsy3l1JutDVT_57eS_hcd-y3xuvfiFxEaM4_X4B44NLB3THcqsy1rKtS5BdkQdtcq7Ez-vh_gUyttyzbChyCggKwuBIx7MBAkraorUTJz3EcbDBOOUSsNMTGExRfQeUBSveH_nvN5Y:1vbatE:lqK26XHJL6g1AoMBcSN7rFw0xGLGOA4g4OUe5EuxmWY', '2026-01-16 16:52:08.816480');
INSERT INTO `django_session` VALUES ('fa8xrjx6dtqmewhdpemn4ngq09p8seqg', '.eJxVjMEOgjAQRP-lZ9MUCqVw9O43NLvtrlRNSygkGuO_CwkHPU0y7828hYN1Gd1aaHYxiEFocfrtEPyd0g7CDdI1S5_TMkeUuyIPWuQlB3qcD_fvYIQybmvLqqtI15qpRt9DjaGxaH1rWG3Mthp7agN7tmRMFbZEbLwGZiLAbj8tVErMydFzivNLDOrzBc11QNE:1vbfAx:ItutYXCIaWtL4_KfxF26OWuMer6NPYyAcTH8Coxj24Y', '2026-01-16 21:26:43.712685');
INSERT INTO `django_session` VALUES ('k9u9nc330q7vzpua8ai8egfzoqb3ikt2', '.eJxVjMEOwiAQBf-FsyGwpVB79O43EGAXixpoSptojP-uJD3o6SVvJvNi1m3rZLdKi03IRtazw-_nXbhRbgCvLl8KDyWvS_K8KXynlZ8L0v20u3-BydWpZUlhoOgdCPCdQRmOChAwSu20HijKLvSd9soIE4GMHEC5GMR3QGjQLVqp1lSypceclicbxfsDm_0-0w:1vaVL5:yJFa7oDdXwXUDxRthludKC2JGTiE3SbpMYXvKTB19Wk', '2026-01-13 16:44:23.662990');
INSERT INTO `django_session` VALUES ('m4ncmko686y2h5ahg831krhzzvnxgfqm', '.eJxVjMsOwiAURP-FtSE82lK6dO83kAv31qIGDLSJxvjvtqYLneWcOfNiDpZ5ckul4iKygWl2-O08hCulDeAF0jnzkNNcoufbhO-08lNGuh337d_BBHVabdBaG-gbq1FSZzyhFRi8JK3aRq2RFkcyfgRShJ0VJohRybYzq9LT97RSrTEnR497LE82iPcHij0_FA:1vTHTs:I1DdDAW0u_E0cyfVIdupXCe17MUn7r0ze2yZrUSPQus', '2025-12-24 18:31:36.959157');
INSERT INTO `django_session` VALUES ('oausifyfvktkh3ykrs3anuuey0zockqe', '.eJxVjMEOgjAQRP-lZ9MUCqVw9O43NLvtrlRNSygkGuO_CwkHPU0y7828hYN1Gd1aaHYxiEFocfrtEPyd0g7CDdI1S5_TMkeUuyIPWuQlB3qcD_fvYIQybmvLqqtI15qpRt9DjaGxaH1rWG3Mthp7agN7tmRMFbZEbLwGZiLAbj8tVErMydFzivNLDOrzBc11QNE:1vbbXu:cc39zaRwYryZLhL19AcBKyUN0MmjZ4Xjq13waJgQDBs', '2026-01-16 17:34:10.221729');
INSERT INTO `django_session` VALUES ('yqpkk83yupw9cphz9prmfns2szcakkdl', '.eJxVjsEOwiAQRP-FsyFsS1fao3e_gcCyWNSAKW2iMf671vSg13lvJvMU1i3zaJfKk01BDALE7jfzji6cVxDOLp-KpJLnKXm5KnKjVR5L4Othc_8GRlfHT7sNgNBjx00XO9qDahEjaq2diQik-wjKK2MoBAJyGE2jIjKBB80evq8q15pKtny_pekhBvV6A2ZjPtM:1vTI6Z:GAuhTzCxlaFlCzCXybiSYegDCGel2Xm3W77-50Osn2o', '2025-12-24 19:11:35.503188');

-- ----------------------------
-- Table structure for usauth_captchamodel
-- ----------------------------
DROP TABLE IF EXISTS `usauth_captchamodel`;
CREATE TABLE `usauth_captchamodel`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `captcha` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `usauth_captchamodel_email_8fc1eacd_uniq`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of usauth_captchamodel
-- ----------------------------
INSERT INTO `usauth_captchamodel` VALUES (5, '2551906024@qq.com', '260489', '2025-12-01 06:04:31.984560');
INSERT INTO `usauth_captchamodel` VALUES (9, 'liang_ananna@qq.com', '703945', '2025-12-24 21:35:11.886999');
INSERT INTO `usauth_captchamodel` VALUES (10, '1423540438@qq.com', '279605', '2026-01-05 13:58:50.609024');

SET FOREIGN_KEY_CHECKS = 1;
