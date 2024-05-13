/*
 Navicat Premium Data Transfer

 Source Server         : 华为云
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : 113.45.186.233:3306
 Source Schema         : bk_tripartite

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 28/04/2024 17:36:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bk_down_load
-- ----------------------------
DROP TABLE IF EXISTS `bk_down_load`;
CREATE TABLE `bk_down_load`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片',
  `storage_size` double NULL DEFAULT 0 COMMENT '单位m',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '上传的用户',
  `lock_in` int(11) NULL DEFAULT 0 COMMENT '是否锁定，1锁定 只有上传的用户可以下载，0不锁定',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '逻辑删除 0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bk_down_load
-- ----------------------------

-- ----------------------------
-- Table structure for bk_down_load_log
-- ----------------------------
DROP TABLE IF EXISTS `bk_down_load_log`;
CREATE TABLE `bk_down_load_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `file_id` bigint(20) NULL DEFAULT NULL COMMENT '文件id',
  `user_name` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名称',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件名称',
  `download_amount` bigint(20) NULL DEFAULT 0 COMMENT '下载次数',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '逻辑删除 0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bk_down_load_log
-- ----------------------------

-- ----------------------------
-- Table structure for bk_file
-- ----------------------------
DROP TABLE IF EXISTS `bk_file`;
CREATE TABLE `bk_file`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件名称',
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件物理地址',
  `file_net_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件网络访问地址',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
  `storage_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '单位kb',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '上传的用户',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件类型：图片、影响、录音等',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '逻辑删除 0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bk_file
-- ----------------------------
INSERT INTO `bk_file` VALUES (1, '1D93E79BFC764D7CAC49328BAA8A1529.PNG', '/mydata/nginx/html/aimg/1D93E79BFC764D7CAC49328BAA8A1529.PNG', 'https://mall-ts.oss-cn-shanghai.aliyuncs.com/user/1D93E79BFC764D7CAC49328BAA8A1529.PNG', NULL, '295.08KB', NULL, 'image/png', '2024-01-01 13:40:13', '2024-04-28 16:03:56', 0);
INSERT INTO `bk_file` VALUES (2, '9B6521895AAD4C9BAF2CAFF87E2097AF.jpeg', 'C:\\Users\\Tangshi\\Pictures\\utopia/9B6521895AAD4C9BAF2CAFF87E2097AF.jpeg', 'https://mall-ts.oss-cn-shanghai.aliyuncs.com/user/9B6521895AAD4C9BAF2CAFF87E2097AF.jpeg', NULL, '48.53KB', NULL, 'image/jpeg', '2024-04-17 17:03:55', '2024-04-28 16:04:05', 0);
INSERT INTO `bk_file` VALUES (3, '211525CA090249B2A9463F34B313B3F1.jpeg', 'C:\\Users\\Tangshi\\Pictures\\utopia/211525CA090249B2A9463F34B313B3F1.jpeg', 'https://mall-ts.oss-cn-shanghai.aliyuncs.com/user/211525CA090249B2A9463F34B313B3F1.jpeg', NULL, '48.53KB', NULL, 'image/jpeg', '2024-04-17 17:17:09', '2024-04-28 16:04:09', 0);
INSERT INTO `bk_file` VALUES (4, 'C6F74ABDC0154829B7626666ED3B1D68.jpeg', 'C:\\Users\\Tangshi\\Pictures\\utopia/C6F74ABDC0154829B7626666ED3B1D68.jpeg', 'localhost:8000/tripartite/file/downloadFileByLocalC6F74ABDC0154829B7626666ED3B1D68.jpeg', NULL, '48.53KB', NULL, 'image/jpeg', '2024-04-17 17:18:32', '2024-04-17 17:18:32', 0);
INSERT INTO `bk_file` VALUES (5, '9C7549759E114A949E5021982D6B8755.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/9C7549759E114A949E5021982D6B8755.jpg', 'localhost:8000/tripartite/file/downloadFileByLocal9C7549759E114A949E5021982D6B8755.jpg', NULL, '117.64KB', NULL, 'image/jpeg', '2024-04-17 17:21:43', '2024-04-17 17:21:43', 0);
INSERT INTO `bk_file` VALUES (6, '07C4BFF64AB549B1B2454C1E5EB2D451.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/07C4BFF64AB549B1B2454C1E5EB2D451.jpg', 'localhost:8000/tripartite/file/downloadFileByLocal07C4BFF64AB549B1B2454C1E5EB2D451.jpg', NULL, '117.64KB', NULL, 'image/jpeg', '2024-04-17 17:22:34', '2024-04-17 17:22:34', 0);
INSERT INTO `bk_file` VALUES (7, 'D06584141AA244CB8557A5892C35BB2E.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/D06584141AA244CB8557A5892C35BB2E.jpg', 'http://localhost:8000/tripartite/file/downloadFileByLocalD06584141AA244CB8557A5892C35BB2E.jpg', NULL, '36.44KB', NULL, 'image/jpeg', '2024-04-17 17:27:22', '2024-04-17 17:27:22', 0);
INSERT INTO `bk_file` VALUES (8, 'mw', 'C:\\Users\\Tangshi\\Videos\\utopia\\6726D034B8B640C79EB7FD248591994C.mp4', NULL, '密码123456', '25.47MB', 1, 'video/mp4', '2024-04-17 19:23:54', '2024-04-17 19:23:54', 0);
INSERT INTO `bk_file` VALUES (9, '漫威', 'C:\\Users\\Tangshi\\Videos\\utopia\\5682FDFFB3274403B31F9A7DE39851B1.mp4', NULL, '密码123456', '33.21MB', 1, 'video/mp4', '2024-04-17 19:52:23', '2024-04-17 19:52:23', 0);
INSERT INTO `bk_file` VALUES (10, '4D71FC2C3C624FD49AAB6EA6DE671227.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/4D71FC2C3C624FD49AAB6EA6DE671227.jpg', 'http://localhost:8000/tripartite/file/downloadFileByLocal4D71FC2C3C624FD49AAB6EA6DE671227.jpg', NULL, '117.64KB', NULL, 'image/jpeg', '2024-04-18 11:12:35', '2024-04-18 11:12:35', 0);
INSERT INTO `bk_file` VALUES (11, 'C64DFEE1170F4538BBD69B06DC2539CB.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/C64DFEE1170F4538BBD69B06DC2539CB.jpg', 'http://localhost:8000/tripartite/file/downloadFileByLocalC64DFEE1170F4538BBD69B06DC2539CB.jpg', NULL, '117.64KB', NULL, 'image/jpeg', '2024-04-18 11:13:23', '2024-04-18 11:13:23', 0);
INSERT INTO `bk_file` VALUES (12, 'EA1FC7A873FA477D8280D8ED8A241453.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/EA1FC7A873FA477D8280D8ED8A241453.jpg', 'http://localhost:8000/tripartite/file/downloadFileByLocalEA1FC7A873FA477D8280D8ED8A241453.jpg', NULL, '117.64KB', NULL, 'image/jpeg', '2024-04-18 11:14:28', '2024-04-18 11:14:28', 0);
INSERT INTO `bk_file` VALUES (13, 'FC2D6EB809544096A83BEDEA772A52AE.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/FC2D6EB809544096A83BEDEA772A52AE.jpg', 'http://localhost:8000/tripartite/file/downloadFileByLocalFC2D6EB809544096A83BEDEA772A52AE.jpg', NULL, '117.64KB', NULL, 'image/jpeg', '2024-04-18 11:15:00', '2024-04-18 11:15:00', 0);
INSERT INTO `bk_file` VALUES (14, '7121DFAA77224702816C10CB13319CE8.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/7121DFAA77224702816C10CB13319CE8.jpg', 'http://localhost:8000/tripartite/file/downloadFileByLocal7121DFAA77224702816C10CB13319CE8.jpg', NULL, '117.64KB', NULL, 'image/jpeg', '2024-04-18 11:15:35', '2024-04-18 11:15:35', 0);
INSERT INTO `bk_file` VALUES (15, 'DB222D70E053448C878B9AF77185526D.jpeg', 'C:\\Users\\Tangshi\\Pictures\\utopia/DB222D70E053448C878B9AF77185526D.jpeg', 'http://localhost:8000/tripartite/file/downloadFileByLocalDB222D70E053448C878B9AF77185526D.jpeg', NULL, '48.53KB', NULL, 'image/jpeg', '2024-04-18 11:16:37', '2024-04-18 11:16:37', 0);
INSERT INTO `bk_file` VALUES (16, '2A9296A87AF64A3EADAE8D330FB2548F.jpeg', 'C:\\Users\\Tangshi\\Pictures\\utopia/2A9296A87AF64A3EADAE8D330FB2548F.jpeg', 'http://localhost:8000/tripartite/file/downloadFileByLocal2A9296A87AF64A3EADAE8D330FB2548F.jpeg', NULL, '48.53KB', NULL, 'image/jpeg', '2024-04-18 11:16:58', '2024-04-18 11:16:58', 0);
INSERT INTO `bk_file` VALUES (17, 'FB106FCE1F744136A5AC5E903F5A1B95.jpeg', 'C:\\Users\\Tangshi\\Pictures\\utopia/FB106FCE1F744136A5AC5E903F5A1B95.jpeg', 'http://localhost:8000/tripartite/file/downloadFileByLocalFB106FCE1F744136A5AC5E903F5A1B95.jpeg', NULL, '48.53KB', NULL, 'image/jpeg', '2024-04-18 11:17:31', '2024-04-18 11:17:31', 0);
INSERT INTO `bk_file` VALUES (18, '99EBB5A9ED18468E95F354F99DE74C5B.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/99EBB5A9ED18468E95F354F99DE74C5B.jpg', 'http://localhost:8000/tripartite/file/downloadFileByLocal99EBB5A9ED18468E95F354F99DE74C5B.jpg', NULL, '117.64KB', NULL, 'image/jpeg', '2024-04-18 11:17:48', '2024-04-18 11:17:48', 0);
INSERT INTO `bk_file` VALUES (19, '0A66648DE92F44A9B84D1FBB5F9FCDB1.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/0A66648DE92F44A9B84D1FBB5F9FCDB1.jpg', 'http://localhost:8000/tripartite/file/downloadFileByLocal0A66648DE92F44A9B84D1FBB5F9FCDB1.jpg', NULL, '117.64KB', NULL, 'image/jpeg', '2024-04-18 11:19:03', '2024-04-18 11:19:03', 0);
INSERT INTO `bk_file` VALUES (20, '7D3362D888454F46910F430EC3E4629D.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/7D3362D888454F46910F430EC3E4629D.jpg', 'http://localhost:8000/tripartite/file/downloadFileByLocal7D3362D888454F46910F430EC3E4629D.jpg', NULL, '117.64KB', NULL, 'image/jpeg', '2024-04-18 11:19:44', '2024-04-18 11:19:44', 0);
INSERT INTO `bk_file` VALUES (21, '687E5B994F9548D79721DF6F57A52521.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/687E5B994F9548D79721DF6F57A52521.jpg', 'http://localhost:8000/tripartite/file/downloadFileByLocal687E5B994F9548D79721DF6F57A52521.jpg', NULL, '117.64KB', NULL, 'image/jpeg', '2024-04-18 11:23:28', '2024-04-18 11:23:28', 0);
INSERT INTO `bk_file` VALUES (22, '50E06AE6236E4639AC6C6C4F1EB2EB2B.jpeg', 'C:\\Users\\Tangshi\\Pictures\\utopia/50E06AE6236E4639AC6C6C4F1EB2EB2B.jpeg', 'http://localhost:8000/tripartite/file/downloadFileByLocal50E06AE6236E4639AC6C6C4F1EB2EB2B.jpeg', NULL, '48.53KB', NULL, 'image/jpeg', '2024-04-18 11:24:36', '2024-04-18 11:24:36', 0);
INSERT INTO `bk_file` VALUES (23, '86E95C96312740E8AE7E1F2C43A36480.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/86E95C96312740E8AE7E1F2C43A36480.jpg', 'http://localhost:8000/tripartite/file/downloadFileByLocal86E95C96312740E8AE7E1F2C43A36480.jpg', NULL, '36.44KB', NULL, 'image/jpeg', '2024-04-18 11:24:42', '2024-04-18 11:24:42', 0);
INSERT INTO `bk_file` VALUES (24, 'B434DA650A3D4096ADD940AA1F8C4C99.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/B434DA650A3D4096ADD940AA1F8C4C99.jpg', 'http://localhost:8000/tripartite/file/downloadFileByLocalB434DA650A3D4096ADD940AA1F8C4C99.jpg', NULL, '36.44KB', NULL, 'image/jpeg', '2024-04-18 11:25:25', '2024-04-18 11:25:25', 0);
INSERT INTO `bk_file` VALUES (25, '9F55AF3712FB436AA8D264D2FE850C7F.jpeg', 'C:\\Users\\Tangshi\\Pictures\\utopia/9F55AF3712FB436AA8D264D2FE850C7F.jpeg', 'http://localhost:8000/tripartite/file/downloadFileByLocal9F55AF3712FB436AA8D264D2FE850C7F.jpeg', NULL, '48.53KB', NULL, 'image/jpeg', '2024-04-18 11:25:27', '2024-04-18 11:25:27', 0);
INSERT INTO `bk_file` VALUES (26, '9452B5A9235342A1820A266F15075A35.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/9452B5A9235342A1820A266F15075A35.jpg', 'http://localhost:8000/tripartite/file/downloadFileByLocal9452B5A9235342A1820A266F15075A35.jpg', NULL, '117.64KB', NULL, 'image/jpeg', '2024-04-18 12:02:07', '2024-04-18 12:02:07', 0);
INSERT INTO `bk_file` VALUES (27, '30BDE9953D7C48FEBA11A1D0183A379E.jpg', 'C:\\Users\\Tangshi\\Pictures\\utopia/30BDE9953D7C48FEBA11A1D0183A379E.jpg', 'http://localhost:8000/tripartite/file/downloadFileByLocal30BDE9953D7C48FEBA11A1D0183A379E.jpg', NULL, '6.18KB', NULL, 'image/jpeg', '2024-04-18 13:31:36', '2024-04-18 13:31:36', 0);
INSERT INTO `bk_file` VALUES (28, '704371361EDE46AAA3773CE78CF44EFB.jpeg', '/data/img/704371361EDE46AAA3773CE78CF44EFB.jpeg', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocal704371361EDE46AAA3773CE78CF44EFB.jpeg', NULL, '48.53KB', NULL, 'image/jpeg', '2024-04-23 20:59:05', '2024-04-23 20:59:05', 0);
INSERT INTO `bk_file` VALUES (29, 'D028A369C6DD49AF91A539A27E7900E7.jpg', '/data/img/D028A369C6DD49AF91A539A27E7900E7.jpg', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocalD028A369C6DD49AF91A539A27E7900E7.jpg', NULL, '31.41KB', NULL, 'image/jpeg', '2024-04-23 22:27:21', '2024-04-23 22:27:21', 0);
INSERT INTO `bk_file` VALUES (30, 'F3F958C8182F4A27BB00F7E40EE64A52.jpg', '/data/img/F3F958C8182F4A27BB00F7E40EE64A52.jpg', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocalF3F958C8182F4A27BB00F7E40EE64A52.jpg', NULL, '31.41KB', NULL, 'image/jpeg', '2024-04-23 22:32:15', '2024-04-23 22:32:15', 0);
INSERT INTO `bk_file` VALUES (31, 'C5458C4CCE5B4379857C043B7318F234.jpg', '/data/img/C5458C4CCE5B4379857C043B7318F234.jpg', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocalC5458C4CCE5B4379857C043B7318F234.jpg', NULL, '242.88KB', NULL, 'image/jpeg', '2024-04-24 01:00:08', '2024-04-24 01:00:08', 0);
INSERT INTO `bk_file` VALUES (32, 'C3F9F7F1463648C3B17908F5D0A578E1.png', '/data/img/C3F9F7F1463648C3B17908F5D0A578E1.png', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocalC3F9F7F1463648C3B17908F5D0A578E1.png', NULL, '264.10KB', NULL, 'image/png', '2024-04-25 16:11:06', '2024-04-25 16:11:06', 0);
INSERT INTO `bk_file` VALUES (33, 'BA80A4E504ED48D8A440EB10874B6C50.png', '/data/img/BA80A4E504ED48D8A440EB10874B6C50.png', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocalBA80A4E504ED48D8A440EB10874B6C50.png', NULL, '221.96KB', NULL, 'image/png', '2024-04-25 16:11:54', '2024-04-25 16:11:54', 0);
INSERT INTO `bk_file` VALUES (34, '背景', '/data/video/0CA3E51B5AC040BD83018F86EEDFBA51.mp4', NULL, '不会背唐诗', '9.62MB', 36, 'video/mp4', '2024-04-25 20:04:47', '2024-04-25 20:04:47', 0);
INSERT INTO `bk_file` VALUES (35, '61F3E2EF418A431B9737F5CE17C5BEFE.png', '/data/img/61F3E2EF418A431B9737F5CE17C5BEFE.png', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocal61F3E2EF418A431B9737F5CE17C5BEFE.png', NULL, '3.59KB', NULL, 'image/png', '2024-04-28 16:07:39', '2024-04-28 16:07:39', 0);
INSERT INTO `bk_file` VALUES (36, 'A3CB1391EFD443F0A67FB672A9C2A868.png', '/data/img/A3CB1391EFD443F0A67FB672A9C2A868.png', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocalA3CB1391EFD443F0A67FB672A9C2A868.png', NULL, '2.35KB', NULL, 'image/png', '2024-04-28 16:11:14', '2024-04-28 16:11:14', 0);
INSERT INTO `bk_file` VALUES (37, '2EB22C12E5EA4CB3ACF43174363EC59E.png', '/data/img/2EB22C12E5EA4CB3ACF43174363EC59E.png', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocal2EB22C12E5EA4CB3ACF43174363EC59E.png', NULL, '2.46KB', NULL, 'image/png', '2024-04-28 16:11:30', '2024-04-28 16:11:30', 0);
INSERT INTO `bk_file` VALUES (38, '12AAAEF18F2D42F4931FD1EA1EB1B3C4.png', '/data/img/12AAAEF18F2D42F4931FD1EA1EB1B3C4.png', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocal12AAAEF18F2D42F4931FD1EA1EB1B3C4.png', NULL, '2.37KB', NULL, 'image/png', '2024-04-28 16:12:06', '2024-04-28 16:12:06', 0);
INSERT INTO `bk_file` VALUES (39, '0A6BE513D49A48CA9F44CBEC657B8977.png', '/data/img/0A6BE513D49A48CA9F44CBEC657B8977.png', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocal0A6BE513D49A48CA9F44CBEC657B8977.png', NULL, '2.57KB', NULL, 'image/png', '2024-04-28 16:12:13', '2024-04-28 16:12:13', 0);
INSERT INTO `bk_file` VALUES (40, 'D720EBB58366442BB56FD67B27DADC7F.png', '/data/img/D720EBB58366442BB56FD67B27DADC7F.png', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocalD720EBB58366442BB56FD67B27DADC7F.png', NULL, '2.16KB', NULL, 'image/png', '2024-04-28 16:12:24', '2024-04-28 16:12:24', 0);
INSERT INTO `bk_file` VALUES (41, '5D7201EBBA4841309FDB05EF406E94C4.png', '/data/img/5D7201EBBA4841309FDB05EF406E94C4.png', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocal5D7201EBBA4841309FDB05EF406E94C4.png', NULL, '2.47KB', NULL, 'image/png', '2024-04-28 16:12:37', '2024-04-28 16:12:37', 0);
INSERT INTO `bk_file` VALUES (42, 'F164BA971A424A8E9E292D552A1EDBE1.png', '/data/img/F164BA971A424A8E9E292D552A1EDBE1.png', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocalF164BA971A424A8E9E292D552A1EDBE1.png', NULL, '2.52KB', NULL, 'image/png', '2024-04-28 16:12:44', '2024-04-28 16:12:44', 0);
INSERT INTO `bk_file` VALUES (43, 'A475CF3CF0224315B8EBE00A7F2EBCB0.png', '/data/img/A475CF3CF0224315B8EBE00A7F2EBCB0.png', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocalA475CF3CF0224315B8EBE00A7F2EBCB0.png', NULL, '2.61KB', NULL, 'image/png', '2024-04-28 16:12:52', '2024-04-28 16:12:52', 0);
INSERT INTO `bk_file` VALUES (44, 'E5906DC348FB48769C7566430B03A28C.png', '/data/img/E5906DC348FB48769C7566430B03A28C.png', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocalE5906DC348FB48769C7566430B03A28C.png', NULL, '2.53KB', NULL, 'image/png', '2024-04-28 16:13:02', '2024-04-28 16:13:02', 0);
INSERT INTO `bk_file` VALUES (45, 'B3C08E04A63F46D8B3CB35C5BBC5676B.png', '/data/img/B3C08E04A63F46D8B3CB35C5BBC5676B.png', 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocalB3C08E04A63F46D8B3CB35C5BBC5676B.png', NULL, '2.47KB', NULL, 'image/png', '2024-04-28 16:14:37', '2024-04-28 16:14:37', 0);

-- ----------------------------
-- Table structure for bk_navigation
-- ----------------------------
DROP TABLE IF EXISTS `bk_navigation`;
CREATE TABLE `bk_navigation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sort_id` bigint(20) NOT NULL COMMENT '分类id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '导航名称',
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '介绍',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '链接',
  `cover` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'favicon',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '逻辑删除 0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 357 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bk_navigation
-- ----------------------------
INSERT INTO `bk_navigation` VALUES (303, 30, 'MaTools', '码工具，MaTools是程序员的代码在线工具箱', 'https://www.matools.com/', 'https://www.matools.com/static/img/common/matools-favicon.png', '', '2023-08-28 23:22:25', '2023-08-29 14:00:44', 0);
INSERT INTO `bk_navigation` VALUES (304, 30, 'Road To Coding - CodeSheep程序羊', '意为「编程自学之路」，是自学编程以来所用资源和分享内容的大聚合', 'https://r2coding.com/#/README', 'https://r2coding.com/r2_static/img/favicon.ico', '', '2023-08-28 23:22:25', '2023-08-28 23:22:25', 0);
INSERT INTO `bk_navigation` VALUES (305, 30, '不求人导航@前端', '网站分析、UI灵感、动态效果库、UI框架、在线生成器、在线Coding', 'https://ui.bqrdh.com/', 'https://tools.bqrdh.com/static/images/favicon_fox.png', '', '2023-08-28 23:22:25', '2023-08-28 23:22:25', 0);
INSERT INTO `bk_navigation` VALUES (306, 31, 'CSDN', 'Copy Steal Download Not work', 'https://blog.csdn.net/qq_44619294', 'https://g.csdnimg.cn/static/logo/favicon32.ico', '', '2023-08-28 23:22:25', '2023-08-28 23:22:25', 0);
INSERT INTO `bk_navigation` VALUES (307, 31, 'Gitee 仓库', '我的 Gitee', 'https://gitee.com/littledokey', 'https://cn-assets.gitee.com/assets/favicon-9007bd527d8a7851c8330e783151df58.ico', '', '2023-08-28 23:22:25', '2023-08-28 23:22:25', 0);
INSERT INTO `bk_navigation` VALUES (308, 31, 'GitHub 仓库', '已停止更新，最新代码请访问 Gitee', 'https://github.com/aLittleDonkey', 'https://github.githubassets.com/favicons/favicon.png', '', '2023-08-28 23:22:26', '2023-08-28 23:22:26', 0);
INSERT INTO `bk_navigation` VALUES (309, 31, '博客园', '已停止更新', 'https://www.cnblogs.com/loveer', 'https://common.cnblogs.com/favicon.svg', '', '2023-08-28 23:22:26', '2023-08-28 23:22:26', 0);
INSERT INTO `bk_navigation` VALUES (310, 31, '掘金', '从未开始', 'https://juejin.cn/user/3843548383837229', 'https://lf3-cdn-tos.bytescm.com/obj/static/xitu_juejin_web//static/favicons/favicon-32x32.png', '', '2023-08-28 23:22:26', '2023-08-28 23:22:26', 0);
INSERT INTO `bk_navigation` VALUES (311, 31, '最美博客', '这是一个 Vue2 Vue3 与 SpringBoot 结合的产物～', 'https://poetize.cn', 'https://s1.ax1x.com/2022/11/10/z9E7X4.jpg', '', '2023-08-28 23:22:26', '2023-08-28 23:22:26', 0);
INSERT INTO `bk_navigation` VALUES (312, 32, 'Animate中文网', '强大的跨平台的预设 css3 动画库', 'http://www.animate.net.cn/', 'http://www.animate.net.cn/favicon.ico', '', '2023-08-28 23:22:26', '2023-08-28 23:22:26', 0);
INSERT INTO `bk_navigation` VALUES (313, 32, 'Ant Design of Vue', 'Ant Design 的 Vue 实现，开发和服务于企业级后台产品', 'https://www.antdv.com/docs/vue/introduce-cn', 'https://gw.alipayobjects.com/zos/rmsportal/KDpgvguMpGfqaHPjicRK.svg', '', '2023-08-28 23:22:26', '2023-08-28 23:22:26', 0);
INSERT INTO `bk_navigation` VALUES (314, 32, 'BootCDN - CDN', '中文网开源项目免费 CDN 加速服务', 'https://www.bootcdn.cn/', 'https://www.bootcdn.cn/assets/img/m-sematicui.png', '', '2023-08-28 23:22:26', '2023-08-28 23:36:10', 0);
INSERT INTO `bk_navigation` VALUES (315, 32, 'cdnjs - CDN', '一个免费的开源CN服务', 'https://cdnjs.com/', 'https://cdnjs.com/_/f7a2ebfb819c118086546e481876aef6.svg', '', '2023-08-28 23:22:26', '2023-08-28 23:34:48', 0);
INSERT INTO `bk_navigation` VALUES (316, 32, 'Editor.md', 'Markdown 编辑器', 'https://pandao.github.io/editor.md/', 'https://pandao.github.io/editor.md/favicon.ico', '', '2023-08-28 23:22:26', '2023-08-28 23:22:26', 0);
INSERT INTO `bk_navigation` VALUES (317, 32, 'Element', '一套为开发者、设计师和产品经理准备的基于 Vue 2.0 的桌面端组件库', 'https://element.eleme.cn/#/zh-CN', 'https://element.eleme.cn/favicon.ico', '', '2023-08-28 23:22:26', '2023-08-28 23:22:26', 0);
INSERT INTO `bk_navigation` VALUES (318, 32, 'Element Plus', '基于 Vue 3，面向设计师和开发者的组件库', 'https://element-plus.gitee.io/zh-CN/', 'https://element-plus.gitee.io/images/element-plus-logo.svg', '', '2023-08-28 23:22:26', '2023-08-28 23:22:26', 0);
INSERT INTO `bk_navigation` VALUES (319, 32, 'Emoji 百科全书', '📚收录了所有emoji。最近热门emoji：🍹🐼💑🍱💝⛹️💃🍟🍦', 'https://emojixd.com/', 'https://emojixd.com/favicon.ico', '', '2023-08-28 23:22:26', '2023-08-28 23:22:26', 0);
INSERT INTO `bk_navigation` VALUES (320, 32, 'Fontawesome中文网', '大量免费图标', 'https://fontawesome.com.cn/', 'https://fontawesome.com.cn/favicon.ico', '', '2023-08-28 23:22:26', '2023-08-28 23:22:26', 0);
INSERT INTO `bk_navigation` VALUES (321, 32, 'iconfont', '阿里巴巴矢量图标库', 'https://www.iconfont.cn/', 'http://img.alicdn.com/imgextra/i4/O1CN01XZe8pH1USpiUNT1QN_!!6000000002517-2-tps-114-114.png', '', '2023-08-28 23:22:26', '2023-08-28 23:22:26', 0);
INSERT INTO `bk_navigation` VALUES (322, 32, 'JavaScript 教程', '现代 JavaScript 教程：有关示例和任务的简单但详细的解释包括：闭包、文档和事件，以及面向对象编程等', 'https://zh.javascript.info/', 'https://zh.javascript.info/img/favicon/favicon.png', '', '2023-08-28 23:22:27', '2023-08-28 23:22:27', 0);
INSERT INTO `bk_navigation` VALUES (323, 32, 'markdown-it', 'Markdown 编辑器', 'https://markdown-it.docschina.org/', '', '', '2023-08-28 23:22:27', '2023-08-29 13:47:13', 1);
INSERT INTO `bk_navigation` VALUES (324, 32, 'mavonEditor', 'Markdown 编辑器', 'http://www.mavoneditor.com/', '', '', '2023-08-28 23:22:27', '2023-08-29 13:49:48', 1);
INSERT INTO `bk_navigation` VALUES (325, 32, 'Naive UI', '一个 Vue 3 组件库', 'https://www.naiveui.com/zh-CN/light', 'https://www.naiveui.com/assets/naivelogo-93278402.svg', '', '2023-08-28 23:22:27', '2023-08-28 23:22:27', 0);
INSERT INTO `bk_navigation` VALUES (326, 32, 'Vue 2 官网', '渐进式 JavaScript 框架', 'https://v2.cn.vuejs.org/v2/guide', 'https://v2.cn.vuejs.org/images/logo.svg', '', '2023-08-28 23:22:27', '2023-08-28 23:22:27', 0);
INSERT INTO `bk_navigation` VALUES (327, 32, 'Vue 3 官网', 'Vue 3 的文档', 'https://cn.vuejs.org/guide/introduction.html', 'https://v2.cn.vuejs.org/images/logo.svg', '', '2023-08-28 23:22:27', '2023-08-28 23:22:27', 0);
INSERT INTO `bk_navigation` VALUES (328, 33, ' Apache APISIX 中文官网', '全生命周期 API 管理', 'https://apisix.apache.org/zh/docs/', 'https://apisix.apache.org/zh/img/logo2.svg', '', '2023-08-28 23:22:27', '2023-08-28 23:22:27', 0);
INSERT INTO `bk_navigation` VALUES (329, 33, 'Hutool 官网', '小而全的Java工具类库', 'https://hutool.cn/', 'https://plus.hutool.cn/images/hutool.svg', '', '2023-08-28 23:22:27', '2023-08-28 23:22:27', 0);
INSERT INTO `bk_navigation` VALUES (330, 33, 'Maven 公共仓库', 'Maven Repository: Search/Browse/Explore', 'https://mvnrepository.com/', 'https://mvnrepository.com/assets/images/7080b8b0f6f48e6fbaffd5f9d85fcc7f-favicon.ico', '', '2023-08-28 23:22:27', '2023-08-28 23:22:27', 0);
INSERT INTO `bk_navigation` VALUES (331, 33, 'MyBatis-Plus 官网', '🚀为简化开发而生', 'https://baomidou.com/', 'https://baomidou.com/img/logo.svg', '', '2023-08-28 23:22:27', '2023-08-28 23:22:27', 0);
INSERT INTO `bk_navigation` VALUES (332, 33, 'PowerJob 官网', '全新一代分布式任务调度与计算框架', 'http://www.powerjob.tech/', 'http://www.powerjob.tech/favicon.ico', '', '2023-08-28 23:22:27', '2023-08-28 23:38:13', 0);
INSERT INTO `bk_navigation` VALUES (333, 33, 'Redis 中文官网', '一个开源（BSD许可）的，内存中的数据结构存储系统', 'http://redis.cn/', 'https://www.redis.net.cn/Application/Home/View/Public/img/redis-white.png', '', '2023-08-28 23:22:27', '2023-08-28 23:22:27', 0);
INSERT INTO `bk_navigation` VALUES (334, 33, 'Redisson 中文文档', 'Redisson的宗旨是促进使用者对Redis的关注分离，从而让使用者能够将精力更集中地放在处理业务逻辑上', 'https://github.com/redisson/redisson/wiki/%E7%9B%AE%E5%BD%95', 'https://www.redis.net.cn/Application/Home/View/Public/img/redis-white.png', '', '2023-08-28 23:22:27', '2023-08-28 23:22:27', 0);
INSERT INTO `bk_navigation` VALUES (335, 33, 'Spring Boot 中文文档', '由 springboot.io - Spring Boot中文社区 进行翻译，整理', 'https://springdoc.cn/spring-boot', 'https://springref.com/Application/Home/View/Public/images/spring-logo-9146a4d3298760c2e7e49595184e1975.svg', '', '2023-08-28 23:22:27', '2023-08-28 23:22:27', 0);
INSERT INTO `bk_navigation` VALUES (336, 33, 'Spring Cloud Alibaba 文档', '微服务开发的一站式解决方案', 'https://github.com/alibaba/spring-cloud-alibaba/blob/2022.x/README-zh.md', 'https://avatars.githubusercontent.com/u/1961952?s=200&v=4', '', '2023-08-28 23:22:27', '2023-08-28 23:22:27', 0);
INSERT INTO `bk_navigation` VALUES (337, 33, 'Spring Cloud 文档', '官方英文文档', 'https://spring.io/projects/spring-cloud/', 'https://springref.com/Application/Home/View/Public/images/spring-logo-9146a4d3298760c2e7e49595184e1975.svg', '', '2023-08-28 23:22:28', '2023-08-28 23:22:28', 0);
INSERT INTO `bk_navigation` VALUES (338, 33, 'Spring 中文文档', '由 springboot.io - Spring Boot中文社区 进行翻译，整理', 'https://springdoc.cn/spring', 'https://springref.com/Application/Home/View/Public/images/spring-logo-9146a4d3298760c2e7e49595184e1975.svg', '', '2023-08-28 23:22:28', '2023-08-28 23:22:28', 0);
INSERT INTO `bk_navigation` VALUES (339, 34, 'Apache Doris 中文官网', '简单易用、高性能和统一的分析数据库', 'https://doris.apache.org/zh-CN/', 'https://cdn-tencent.selectdb.com/images/logo.svg', '', '2023-08-28 23:22:28', '2023-08-28 23:22:28', 0);
INSERT INTO `bk_navigation` VALUES (340, 34, 'Apache Flink CDC 文档', '适用于 Apache Flink 的 CDC 连接器', 'https://ververica.github.io/flink-cdc-connectors/master/', 'https://ververica.github.io/flink-cdc-connectors/master/_static/favicon.png', '', '2023-08-28 23:22:28', '2023-08-28 23:22:28', 0);
INSERT INTO `bk_navigation` VALUES (341, 34, 'Apache Flink 中文官网', '一个框架和分布式处理引擎，用于在无边界和有边界数据流上进行有状态的计算', 'https://flink.apache.org/zh/', 'https://flink.apache.org/flink-header-logo.svg', '', '2023-08-28 23:22:28', '2023-08-28 23:22:28', 0);
INSERT INTO `bk_navigation` VALUES (342, 34, 'Apache Hive 中文文档', '数据仓库软件', 'https://www.docs4dev.com/docs/zh/apache-hive/3.1.1/reference/Home.html', 'https://www.docs4dev.com/static/icon/icon-hive.png', '', '2023-08-28 23:22:28', '2023-08-28 23:22:28', 0);
INSERT INTO `bk_navigation` VALUES (343, 34, 'Apache Hudi 中文官网', 'Hudi 通过强大的新增量处理框架重新构想了缓慢的老式批处理，以实现低延迟分钟级分析', 'https://hudi.apache.org/cn/docs/flink-quick-start-guide', 'https://hudi.apache.org/assets/images/logo-big.png', '', '2023-08-28 23:22:28', '2023-08-28 23:22:28', 0);
INSERT INTO `bk_navigation` VALUES (344, 34, 'Apache Spark 中文文档', '一个快速的，用于海量数据处理的通用引擎', 'http://spark.apachecn.org/', 'http://spark.apachecn.org/docs/img/spark-logo-hd.png', '', '2023-08-28 23:22:28', '2023-08-28 23:22:28', 0);
INSERT INTO `bk_navigation` VALUES (345, 34, 'DataX 文档', '各种异构数据源之间高效的数据同步', 'https://github.com/alibaba/DataX', 'https://github.com/alibaba/DataX/raw/master/images/DataX-logo.jpg', '', '2023-08-28 23:22:28', '2023-08-28 23:22:28', 0);
INSERT INTO `bk_navigation` VALUES (346, 34, 'Hadoop 中文文档', '分布式文件系统', 'https://hadoop.apache.org/docs/r1.0.4/cn/', 'https://hadoop.apache.org/docs/r1.0.4/cn/images/hadoop-logo.jpg', '', '2023-08-28 23:22:28', '2023-08-28 23:22:28', 0);
INSERT INTO `bk_navigation` VALUES (347, 30, '1', '1', '1', '1', NULL, '2023-08-29 14:08:22', '2023-08-29 14:08:52', 1);
INSERT INTO `bk_navigation` VALUES (348, 30, '1', '1', '1', '1', NULL, '2023-08-29 14:08:44', '2023-08-29 14:08:54', 1);
INSERT INTO `bk_navigation` VALUES (349, 36, 'Chat-GPT', '地表最强AI聊天机器人', 'https://chat.openai.com', 'https://www.pmbaobao.com/wp-content/uploads/2023/03/5df95-chat.openai.com.png', NULL, '2023-08-29 14:22:59', '2023-08-29 14:32:36', 0);
INSERT INTO `bk_navigation` VALUES (350, 36, '文心一言', '百度旗下类ChatGPT产品', 'https://yiyan.baidu.com/', 'https://res.abeim.cn/api-web_ico?domain=https://yiyan.baidu.com/', NULL, '2023-08-29 14:23:53', '2023-08-29 14:23:53', 0);
INSERT INTO `bk_navigation` VALUES (351, 36, 'Bard', 'Google旗下类ChatGPT产品', 'https://bard.google.com/', 'data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgd2lkdGg9IjEwMCIgaGVpZ2h0PSIxMDAiPg0KICAgICAgICAgICAgICAgIDxyZWN0IGZpbGw9InJnYigxOTEsMTM3LDIyOSkiIHg9IjAiIHk9IjAiIHdpZHRoPSIxMDAiIGhlaWdodD0iMTAwIj48L3JlY3Q+DQogICAgICAgICAgICAgICAgPGNpcmNsZSBmaWxsPSJyZ2IoMTE0LDEzMywyMjkpIiBjeD0iMjAiIGN5PSIxMCIgcj0iNjAiICBvcGFjaXR5PSIuNCI+PC9jaXJjbGU+DQogICAgICAgICAgICAgICAgPGNpcmNsZSBmaWxsPSJyZ2IoMjI5LDExNCwxOTEpIiBjeD0iNTUiIGN5PSIxMTAiIHI9IjUwIiAgb3BhY2l0eT0iLjYiPjwvY2lyY2xlPg0KICAgICAgICAgICAgICAgIDx0ZXh0IHg9IjUwIiB5PSI1MCIgZm9udC1zaXplPSI1MCIgdGV4dC1jb3B5PSJmYXN0IiBmaWxsPSIjZmZmZmZmIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiB0ZXh0LXJpZ2h0cz0iYWRtaW4iIGFsaWdubWVudC1iYXNlbGluZT0iY2VudHJhbCIgZm9udC1mYW1pbHk9IidQaW5nRmFuZyBTQycsJ01pY3Jvc29mdCBZYWhlaSciPkI8L3RleHQ+PC9zdmc+', NULL, '2023-08-29 14:24:29', '2023-08-29 14:32:11', 0);
INSERT INTO `bk_navigation` VALUES (352, 36, '通义万相', '刻削生千变，丹青图“万相”。我是通义万相，一个不断进化的AI绘画创作模型', 'https://wanxiang.aliyun.com', 'https://res.abeim.cn/api-web_ico?domain=https://wanxiang.aliyun.com', NULL, '2023-08-29 14:25:24', '2023-08-29 14:25:24', 0);
INSERT INTO `bk_navigation` VALUES (353, 36, '文心一格', '百度出品的AI绘画工具', 'https://yige.baidu.com', 'https://yige.baidu.com/favicon.png', NULL, '2023-08-29 14:25:58', '2023-08-29 14:27:03', 0);
INSERT INTO `bk_navigation` VALUES (354, 37, '在线PS', '在线ps图片处理', 'https://ps.gaoding.com/#/', 'https://st-gdx.dancf.com/gaodingx/213/configs/system/20200907-115221-dd97.svg', NULL, '2023-09-10 15:03:52', '2023-09-10 15:05:05', 0);
INSERT INTO `bk_navigation` VALUES (355, 37, '证件照制作', '免费证件照在线制作及换底色工具', 'https://img.logosc.cn/photo-id', 'https://img.logosc.cn/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Fgaitu.f9f870ef.svg&w=256&q=75', NULL, '2023-09-10 15:06:00', '2023-09-10 15:06:00', 0);
INSERT INTO `bk_navigation` VALUES (356, 37, '一键AI抠图', '免费在线一键智能抠图去背景工具，免费下载原图', 'https://bgsub.cn/webapp/', 'https://bgsub.cn/webapp/favicon.ico', NULL, '2023-09-10 15:07:11', '2023-09-10 15:07:11', 0);

-- ----------------------------
-- Table structure for bk_navigation_sort
-- ----------------------------
DROP TABLE IF EXISTS `bk_navigation_sort`;
CREATE TABLE `bk_navigation_sort`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sort_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '导航分类名称',
  `order` int(11) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '排序',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '逻辑删除 0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bk_navigation_sort
-- ----------------------------
INSERT INTO `bk_navigation_sort` VALUES (30, '编程好帮手', NULL, '2023-08-28 23:22:25', '2023-08-28 23:22:25', 0);
INSERT INTO `bk_navigation_sort` VALUES (32, '前端', NULL, '2023-08-28 23:22:26', '2023-08-28 23:22:26', 0);
INSERT INTO `bk_navigation_sort` VALUES (33, '后端', NULL, '2023-08-28 23:22:27', '2023-08-28 23:22:27', 0);
INSERT INTO `bk_navigation_sort` VALUES (34, '大数据', NULL, '2023-08-28 23:22:28', '2023-08-28 23:22:28', 0);
INSERT INTO `bk_navigation_sort` VALUES (35, '测试', 00000000002, '2023-08-29 13:28:22', '2023-08-29 13:32:57', 1);
INSERT INTO `bk_navigation_sort` VALUES (36, 'Ai', NULL, '2023-08-29 14:22:16', '2023-08-29 14:22:16', 0);
INSERT INTO `bk_navigation_sort` VALUES (37, '在线工具', NULL, '2023-09-10 15:03:01', '2023-09-10 15:03:01', 0);

-- ----------------------------
-- Table structure for bk_renew
-- ----------------------------
DROP TABLE IF EXISTS `bk_renew`;
CREATE TABLE `bk_renew`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '版本号',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `context` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新的内容',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '逻辑删除 0否1是',
  `renew_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '版本更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bk_renew
-- ----------------------------
INSERT INTO `bk_renew` VALUES (81, '1.0.1', '项目初始化', '登录功能上线', '', '2023-08-23 20:02:23', '2023-08-23 21:10:50', 0, '2022-06-22');
INSERT INTO `bk_renew` VALUES (82, '', '', '', '', '2023-08-23 20:19:55', '2023-08-23 20:25:02', 1, '');
INSERT INTO `bk_renew` VALUES (83, '', '', '', '', '2023-08-23 20:21:09', '2023-08-23 20:24:56', 1, '');
INSERT INTO `bk_renew` VALUES (84, '1.2.1', '项目完善', '文章功能上线、用户之间交互功能上线、文章交互上线、前端UI完善、前版本BUG修复', '', '2023-08-23 21:04:47', '2023-08-23 21:10:41', 0, '2022-07-30');
INSERT INTO `bk_renew` VALUES (85, '1.3.1', '管理平台上线', '管理平台上线、去除上版本遗留BUG', '', '2023-08-23 21:11:54', '2023-08-23 21:11:54', 0, '2022-09-02');
INSERT INTO `bk_renew` VALUES (86, '1.3.2', '新功能', '用户消息中心、每日练习、等级系统上线', '', '2023-08-23 21:13:44', '2023-08-23 21:13:53', 0, '2022-09-14');
INSERT INTO `bk_renew` VALUES (87, '1.4.1', '系统大更新', '修复前版本BUG、新增友链系统、聊天室、留言、3个社交登录功能、忘记密码及邮箱绑定上线', '', '2023-08-23 21:15:31', '2023-08-23 21:16:27', 0, '2022-09-30');
INSERT INTO `bk_renew` VALUES (88, '1.4.2', '新功能', '文章搜索，支持热搜，搜索历史', '', '2023-08-23 21:17:15', '2023-08-23 21:17:15', 0, '2021-10-02');
INSERT INTO `bk_renew` VALUES (89, '1.4.3', '新功能', '视频系统、文件上传下载功能', '', '2023-08-23 21:18:12', '2023-08-23 21:18:12', 0, '2022-10-07');
INSERT INTO `bk_renew` VALUES (90, '1.4.4', '后端代码优化', '代码注释完善、配置文件完善', '', '2023-08-23 21:19:48', '2023-08-23 21:19:48', 0, '2022-12-22');
INSERT INTO `bk_renew` VALUES (91, '1.4.5', '新功能', '导航栏热搜功能上线', '', '2023-08-23 21:20:25', '2023-08-23 21:20:25', 0, '2023-01-13');
INSERT INTO `bk_renew` VALUES (92, '1.4.6', '功能优化', '留言页面UI优化，留言展示改为滚动。用户登录优化，新增记住我功能', '', '2023-08-23 21:22:31', '2023-08-23 21:22:31', 0, '2023-04-13');
INSERT INTO `bk_renew` VALUES (93, '1.4.7', '功能优化', '消息中心UI更改，使用更友好 🔥评论支持表情啦', '', '2023-09-05 21:00:21', '2023-09-05 21:00:49', 0, '2023-08-15');
INSERT INTO `bk_renew` VALUES (94, '1.4.8', '功能优化', '文章详情增加目录、前版本BUG修复', '', '2023-09-05 21:02:04', '2023-09-05 21:02:04', 0, '2023-09-03');

SET FOREIGN_KEY_CHECKS = 1;
