/*
 Navicat Premium Data Transfer

 Source Server         : 华为云
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : 113.45.186.233:3306
 Source Schema         : bk_user

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 28/04/2024 17:35:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bk_friend_links
-- ----------------------------
DROP TABLE IF EXISTS `bk_friend_links`;
CREATE TABLE `bk_friend_links`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '友链名称',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '友链地址',
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '网站图标',
  `role` int(5) NULL DEFAULT 0 COMMENT '友链类型 0普通1优质',
  `des` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` int(11) NULL DEFAULT NULL COMMENT '友链状态',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '逻辑删除 0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bk_friend_links
-- ----------------------------
INSERT INTO `bk_friend_links` VALUES (3, 'utopia', 'http://localhost/', 'https://res.abeim.cn/api-web_ico?domain=http://localhost/', 0, '', '2693151039@qq.com', 0, '2024-04-17 17:42:28', '2024-04-17 17:42:44', 0);

-- ----------------------------
-- Table structure for bk_user_chat
-- ----------------------------
DROP TABLE IF EXISTS `bk_user_chat`;
CREATE TABLE `bk_user_chat`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `message` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发送的内容',
  `channel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '频道',
  `filter_status` tinyint(1) NULL DEFAULT 0 COMMENT '内容过滤状态',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '逻辑删除 0否1是',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userId`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bk_user_chat
-- ----------------------------
INSERT INTO `bk_user_chat` VALUES (67, 19, '世界有人聊天吗', NULL, 1, '2023-02-08 09:34:38', '2023-02-08 09:34:38', 0);
INSERT INTO `bk_user_chat` VALUES (68, 8, '有的\n', NULL, 1, '2023-02-08 11:04:29', '2023-02-08 11:04:29', 0);
INSERT INTO `bk_user_chat` VALUES (70, 8, '👊', NULL, 1, '2023-02-14 11:15:56', '2023-02-16 15:31:32', 0);
INSERT INTO `bk_user_chat` VALUES (71, 8, '👊', NULL, 1, '2023-02-16 15:51:23', '2023-02-16 15:51:23', 0);
INSERT INTO `bk_user_chat` VALUES (72, 8, 'QIU', NULL, 1, '2023-02-20 22:44:36', '2023-02-20 22:44:36', 0);
INSERT INTO `bk_user_chat` VALUES (73, 8, '没人', NULL, 1, '2023-02-20 22:46:57', '2023-02-20 22:46:57', 0);
INSERT INTO `bk_user_chat` VALUES (83, 26, 'cnm\n', NULL, 1, '2023-03-17 14:48:29', '2023-03-17 14:48:29', 0);
INSERT INTO `bk_user_chat` VALUES (85, 28, '有人？', NULL, 1, '2023-03-28 10:30:08', '2023-03-28 10:30:08', 0);
INSERT INTO `bk_user_chat` VALUES (88, 1, '666', NULL, 1, '2023-04-03 11:33:12', '2023-04-03 11:33:12', 0);
INSERT INTO `bk_user_chat` VALUES (89, 1, '666666', NULL, 1, '2023-04-03 11:35:57', '2023-04-03 11:35:57', 0);
INSERT INTO `bk_user_chat` VALUES (90, 8, 'gitee链接：https://gitee.com/tangshishishi', NULL, 1, '2023-04-20 15:04:18', '2023-04-20 15:04:18', 0);
INSERT INTO `bk_user_chat` VALUES (91, 8, '123', NULL, 1, '2023-04-26 08:59:32', '2023-04-26 08:59:32', 0);
INSERT INTO `bk_user_chat` VALUES (92, 14, '有人吗？', NULL, 1, '2023-07-07 20:28:08', '2023-07-07 20:28:08', 0);
INSERT INTO `bk_user_chat` VALUES (93, 35, '有学物联网工程的吗？', NULL, 1, '2023-09-06 16:23:53', '2023-09-06 16:23:53', 0);
INSERT INTO `bk_user_chat` VALUES (94, 1, '没有', NULL, 1, '2023-09-09 16:37:16', '2023-09-09 16:37:16', 0);
INSERT INTO `bk_user_chat` VALUES (95, 1, '😘🤮', NULL, 1, '2023-09-09 16:57:06', '2023-09-09 16:57:06', 0);

-- ----------------------------
-- Table structure for bk_user_detail
-- ----------------------------
DROP TABLE IF EXISTS `bk_user_detail`;
CREATE TABLE `bk_user_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `pass_word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地区',
  `interest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '兴趣爱好',
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '职业',
  `sign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '签名',
  `source_type` bigint(20) NULL DEFAULT NULL COMMENT '来源',
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '社交登录UID',
  `access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '社交登录TOKEN',
  `expires_in` bigint(20) NULL DEFAULT NULL COMMENT '社交登录过期时间',
  `power` int(11) NULL DEFAULT 1 COMMENT '1普用户，0管理员',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'ip',
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'ip地址',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '登录时间',
  `state` int(11) NOT NULL DEFAULT 0 COMMENT '账号状态，1为注销，0正常',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '逻辑删除 0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bk_user_detail
-- ----------------------------
INSERT INTO `bk_user_detail` VALUES (1, '男', '13777777777', '密码123456', 'test@qq.com', 'http://localhost:8000/tripartite/file/downloadFileByLocal?name=D06584141AA244CB8557A5892C35BB2E.jpg', '$2a$10$oeBJZsGRbBTaUN/OfXteT.iNbQ.xgedoPF8KuPM.VOcV6rdAdQsZy', 23, '广东', '打游戏，干饭', '农民', 'lol', NULL, NULL, NULL, 0, 0, '183.50.251.216', '广东省', '2024-04-28 17:08:07', 0, '2022-07-15 22:50:15', '2024-04-28 17:08:06', 0);
INSERT INTO `bk_user_detail` VALUES (36, NULL, NULL, '不会背唐诗', '2684014196@qq.com', 'https://api.dujin.org/pic/yuanshen/', '$2a$10$dNwyk2gI8Xt/F/EVAxqIyOARK.crZE.NRh/5K1qakNexGz6RXF3km', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '183.50.251.216', '广东省', '2024-04-28 17:08:38', 0, '2023-12-27 17:07:53', '2024-04-28 17:08:37', 0);
INSERT INTO `bk_user_detail` VALUES (37, NULL, NULL, '26489201', '2648920136@qq.com', '//api.r10086.com/../图包webp/动漫综合1/81617-106.webp', '$2a$10$O9.ZonvsaifhxFGZDeHv9.3cUOc4SuL3OvExgEtKbsLpywBCLy6NG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '192.168.220.1', '', '2023-12-28 14:05:11', 0, '2023-12-28 14:04:49', '2023-12-28 14:05:10', 0);
INSERT INTO `bk_user_detail` VALUES (38, NULL, NULL, '唐诗', NULL, 'https://foruda.gitee.com/avatar/1713497508065065591/8847197_tangshishishi_1713497507.png', NULL, NULL, NULL, NULL, NULL, '', 3, '8847197', '42048bd7db2907eb5cd37c348134efaa', 0, 0, '183.50.251.216', '广东省', '2024-04-28 17:06:05', 0, '2024-04-24 22:03:43', '2024-04-28 17:06:04', 0);
INSERT INTO `bk_user_detail` VALUES (39, '男', NULL, '臣独秀hh', NULL, 'https://tva4.sinaimg.cn/crop.3.0.196.196.50/006szwZpjw8f4qfyg7bmrj305k05kt8q.jpg?KID=imgbed,tva&Expires=1713978762&ssig=Qtv3EFP0D5', NULL, NULL, '广东 广州', NULL, NULL, '关注我吧，萌萌哒----', 1, '5919002695', '2.006zWZ9GbypJcC99e1a278129Fn3FB', 0, 1, '183.50.249.202', '广东省阳江', '2024-04-24 22:12:43', 0, '2024-04-24 22:12:42', '2024-04-25 16:23:50', 0);
INSERT INTO `bk_user_detail` VALUES (40, NULL, NULL, '测试账号', '2693151039@qq.com', 'https://api.dujin.org/pic/yuanshen/', '$2a$10$Gsg9nu/9TqMmdZ5GaITX..UrAVA9s7YjXSTnkjggyC6wiT.pNbTMa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '192.168.31.129', '内网IP', '2024-04-27 11:43:05', 0, '2024-04-27 11:42:59', '2024-04-28 17:30:06', 0);

-- ----------------------------
-- Table structure for bk_user_follow
-- ----------------------------
DROP TABLE IF EXISTS `bk_user_follow`;
CREATE TABLE `bk_user_follow`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `follow_id` bigint(20) NULL DEFAULT NULL COMMENT '被关注的用户id',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '逻辑删除 0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bk_user_follow
-- ----------------------------
INSERT INTO `bk_user_follow` VALUES (1, 1, 36, '2024-01-02 17:39:01', '2024-01-02 17:39:01', 0);
INSERT INTO `bk_user_follow` VALUES (2, 1, 38, '2024-04-28 17:04:17', '2024-04-28 17:04:17', 0);

-- ----------------------------
-- Table structure for bk_user_grade
-- ----------------------------
DROP TABLE IF EXISTS `bk_user_grade`;
CREATE TABLE `bk_user_grade`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '经验区间',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头衔',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头衔图片',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '逻辑删除 0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bk_user_grade
-- ----------------------------
INSERT INTO `bk_user_grade` VALUES (6, '0-99', '草民', 1, 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocal?name=A3CB1391EFD443F0A67FB672A9C2A868.png', '2022-07-22 23:25:19', '2024-04-28 16:11:55', 0);
INSERT INTO `bk_user_grade` VALUES (7, '100-999', '龙骑士', 2, 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocal?name=2EB22C12E5EA4CB3ACF43174363EC59E.png', '2022-07-22 23:26:21', '2024-04-28 16:12:10', 0);
INSERT INTO `bk_user_grade` VALUES (8, '1000-4999', '征服者', 3, 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocal?name=12AAAEF18F2D42F4931FD1EA1EB1B3C4.png', '2022-07-22 23:56:17', '2024-04-28 16:12:17', 0);
INSERT INTO `bk_user_grade` VALUES (9, '5000-19999', '法师', 4, 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocal?name=0A6BE513D49A48CA9F44CBEC657B8977.png', '2022-07-22 23:58:08', '2024-04-28 16:12:31', 0);
INSERT INTO `bk_user_grade` VALUES (10, '20000-59999', '骑士', 5, 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocal?name=B3C08E04A63F46D8B3CB35C5BBC5676B.png', '2022-07-22 23:58:59', '2024-04-28 16:14:53', 0);
INSERT INTO `bk_user_grade` VALUES (11, '60000-149999', '伯爵子', 6, 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocal?name=5D7201EBBA4841309FDB05EF406E94C4.png', '2022-07-23 00:00:05', '2024-04-28 16:12:49', 0);
INSERT INTO `bk_user_grade` VALUES (12, '150000-319999', '公爵', 7, 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocal?name=F164BA971A424A8E9E292D552A1EDBE1.png', '2022-07-23 00:00:58', '2024-04-28 16:12:57', 0);
INSERT INTO `bk_user_grade` VALUES (13, '320000-1129999', '国王', 8, 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocal?name=A475CF3CF0224315B8EBE00A7F2EBCB0.png', '2022-07-23 00:02:50', '2024-04-28 16:13:06', 0);
INSERT INTO `bk_user_grade` VALUES (14, '1130000-99999999', '统治者', 9, 'http://113.45.186.233:8000/tripartite/file/downloadFileByLocal?name=E5906DC348FB48769C7566430B03A28C.png', '2022-07-23 00:03:59', '2024-04-28 16:13:07', 0);

-- ----------------------------
-- Table structure for bk_user_message
-- ----------------------------
DROP TABLE IF EXISTS `bk_user_message`;
CREATE TABLE `bk_user_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '留言',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '逻辑删除 0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bk_user_message
-- ----------------------------
INSERT INTO `bk_user_message` VALUES (1, 1, '1231', '2024-01-06 15:43:04', '2024-01-06 15:43:04', 0);
INSERT INTO `bk_user_message` VALUES (2, 1, '666', '2024-01-06 15:43:13', '2024-01-06 15:43:13', 0);
INSERT INTO `bk_user_message` VALUES (3, 1, '666', '2024-01-23 23:05:40', '2024-01-23 23:05:40', 0);
INSERT INTO `bk_user_message` VALUES (4, 1, '666', '2024-01-23 23:05:41', '2024-01-23 23:05:41', 0);
INSERT INTO `bk_user_message` VALUES (5, 1, '66666', '2024-01-23 23:05:43', '2024-01-23 23:05:43', 0);
INSERT INTO `bk_user_message` VALUES (6, 1, '666666', '2024-01-23 23:05:45', '2024-01-23 23:05:45', 0);
INSERT INTO `bk_user_message` VALUES (7, 1, '66666', '2024-01-23 23:05:46', '2024-01-23 23:05:46', 0);

-- ----------------------------
-- Table structure for bk_user_news
-- ----------------------------
DROP TABLE IF EXISTS `bk_user_news`;
CREATE TABLE `bk_user_news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `type` bigint(20) NULL DEFAULT NULL COMMENT '消息类型',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '查看状态',
  `content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '消息内容',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '逻辑删除 0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 304 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bk_user_news
-- ----------------------------
INSERT INTO `bk_user_news` VALUES (260, 36, 2, 1, '{\"context\":\"您账号头衔由 将军 升级为 太史 啦！！！\",\"title\":\"系统提示：恭喜账号升级！\"}', '2023-12-27 17:08:43', '2023-12-27 17:08:43', 0);
INSERT INTO `bk_user_news` VALUES (261, 37, 2, 1, '{\"context\":\"您账号头衔由 将军 升级为 太史 啦！！！\",\"title\":\"系统提示：恭喜账号升级！\"}', '2023-12-28 14:05:15', '2023-12-28 14:05:15', 0);
INSERT INTO `bk_user_news` VALUES (262, 36, 3, 1, '{\"avatar\":\"//api.r10086.com/../图包webp/动漫综合1/81617-106.webp\",\"blogId\":1,\"commentText\":\"[奋斗][奋斗]\",\"newsState\":0,\"title\":\"Spring Boot | 一种优雅的参数校验方案（个人总结）\",\"userId\":37,\"userName\":\"26489201\"}', '2023-12-28 14:19:25', '2023-12-28 14:19:25', 0);
INSERT INTO `bk_user_news` VALUES (263, 36, 3, 1, '{\"avatar\":\"//api.r10086.com/../图包webp/动漫综合1/81617-106.webp\",\"blogId\":1,\"commentText\":\"[鼓掌][鼓掌][鼓掌]\",\"newsState\":0,\"title\":\"Spring Boot | 一种优雅的参数校验方案（个人总结）\",\"userId\":37,\"userName\":\"26489201\"}', '2023-12-28 14:19:42', '2023-12-28 14:19:42', 0);
INSERT INTO `bk_user_news` VALUES (264, 36, 3, 1, '{\"avatar\":\"//api.r10086.com/../图包webp/动漫综合1/81617-106.webp\",\"blogId\":1,\"commentText\":\"[呲牙][呲牙]\",\"newsState\":0,\"title\":\"Spring Boot | 一种优雅的参数校验方案（个人总结）\",\"userId\":37,\"userName\":\"26489201\"}', '2023-12-28 14:24:34', '2023-12-28 14:24:34', 0);
INSERT INTO `bk_user_news` VALUES (265, 36, 3, 1, '{\"avatar\":\"//api.r10086.com/../图包webp/动漫综合1/81617-106.webp\",\"blogId\":1,\"commentText\":\"[奋斗]\",\"newsState\":0,\"title\":\"Spring Boot | 一种优雅的参数校验方案（个人总结）\",\"userId\":37,\"userName\":\"26489201\"}', '2023-12-28 14:25:03', '2023-12-28 14:25:03', 0);
INSERT INTO `bk_user_news` VALUES (266, 36, 3, 1, '{\"avatar\":\"//api.r10086.com/../图包webp/动漫综合1/81617-106.webp\",\"blogId\":1,\"commentText\":\"66666\",\"newsState\":0,\"title\":\"Spring Boot | 一种优雅的参数校验方案（个人总结）\",\"userId\":37,\"userName\":\"26489201\"}', '2023-12-28 14:26:45', '2023-12-29 12:42:28', 1);
INSERT INTO `bk_user_news` VALUES (267, 36, 3, 1, '{\"avatar\":\"//api.r10086.com/../图包webp/动漫综合1/81617-106.webp\",\"blogId\":1,\"commentText\":\"66\",\"newsState\":0,\"title\":\"Spring Boot | 一种优雅的参数校验方案（个人总结）\",\"userId\":37,\"userName\":\"26489201\"}', '2023-12-28 14:27:09', '2023-12-29 12:42:28', 1);
INSERT INTO `bk_user_news` VALUES (268, 36, 3, 1, '{\"avatar\":\"//api.r10086.com/../图包webp/动漫综合1/81617-106.webp\",\"blogId\":1,\"commentText\":\"66\",\"newsState\":0,\"title\":\"Spring Boot | 一种优雅的参数校验方案（个人总结）\",\"userId\":37,\"userName\":\"26489201\"}', '2023-12-28 14:27:48', '2023-12-29 12:42:27', 1);
INSERT INTO `bk_user_news` VALUES (269, 36, 3, 1, '{\"avatar\":\"//api.r10086.com/../图包webp/动漫综合1/81617-106.webp\",\"blogId\":1,\"commentText\":\"101\",\"newsState\":0,\"title\":\"Spring Boot | 一种优雅的参数校验方案（个人总结）\",\"userId\":37,\"userName\":\"26489201\"}', '2023-12-28 14:29:50', '2023-12-29 12:42:26', 1);
INSERT INTO `bk_user_news` VALUES (270, 36, 3, 1, '{\"avatar\":\"//api.r10086.com/../图包webp/动漫综合1/81617-106.webp\",\"blogId\":1,\"commentText\":\".\",\"newsState\":0,\"title\":\"Spring Boot | 一种优雅的参数校验方案（个人总结）\",\"userId\":37,\"userName\":\"26489201\"}', '2023-12-28 14:30:24', '2023-12-29 12:42:25', 1);
INSERT INTO `bk_user_news` VALUES (271, 36, 3, 1, '{\"avatar\":\"//api.r10086.com/../图包webp/动漫综合1/81617-106.webp\",\"blogId\":1,\"commentText\":\"666\",\"fatherComment\":{\"commentText\":\"[衰]\",\"replyUserId\":0,\"userId\":36,\"userName\":\"不会背唐诗\"},\"newsState\":1,\"title\":\"Spring Boot | 一种优雅的参数校验方案（个人总结）\",\"userId\":37,\"userName\":\"26489201\"}', '2023-12-28 14:30:41', '2023-12-28 14:30:41', 0);
INSERT INTO `bk_user_news` VALUES (272, 36, 3, 1, '{\"avatar\":\"//api.r10086.com/../图包webp/动漫综合1/81617-106.webp\",\"blogId\":1,\"commentText\":\"神秘\",\"fatherComment\":{\"commentText\":\"[衰]\",\"replyUserId\":0,\"userId\":36,\"userName\":\"不会背唐诗\"},\"newsState\":1,\"title\":\"Spring Boot | 一种优雅的参数校验方案（个人总结）\",\"userId\":37,\"userName\":\"26489201\"}', '2023-12-28 14:30:58', '2023-12-28 14:30:58', 0);
INSERT INTO `bk_user_news` VALUES (273, 36, 1, 1, '{\"avatar\":\"https://lmg.jj20.com/up/allimg/4k/s/02/2109250006343S5-0-lp.jpg\",\"followId\":36,\"userId\":1,\"userName\":\"密码123456\"}', '2024-01-02 17:39:01', '2024-01-02 17:39:01', 0);
INSERT INTO `bk_user_news` VALUES (274, 1, 2, 1, '{\"context\":\"?????? ?? ??? ?? ????\",\"title\":\"????????????\"}', '2024-01-23 23:03:20', '2024-01-23 23:03:20', 0);
INSERT INTO `bk_user_news` VALUES (275, 36, 3, 1, '{\"avatar\":\"https://lmg.jj20.com/up/allimg/4k/s/02/2109250006343S5-0-lp.jpg\",\"blogId\":2,\"commentText\":\"[可怜]\",\"newsState\":0,\"title\":\"springboot实现第三方登陆----微博登录\",\"userId\":1,\"userName\":\"密码123456\"}', '2024-04-06 11:11:32', '2024-04-06 11:11:32', 0);
INSERT INTO `bk_user_news` VALUES (276, 1, 2, 1, '{\"context\":\"Bug??\",\"title\":\"????????????\"}', '2024-04-06 11:15:31', '2024-04-06 11:15:31', 0);
INSERT INTO `bk_user_news` VALUES (277, 36, 2, 1, '{\"context\":\"Bug修复\",\"title\":\"系统提醒：版本更新！！！\"}', '2024-04-06 11:15:31', '2024-04-06 11:15:31', 0);
INSERT INTO `bk_user_news` VALUES (278, 37, 2, 0, '{\"context\":\"Bug修复\",\"title\":\"系统提醒：版本更新！！！\"}', '2024-04-06 11:15:31', '2024-04-06 11:15:31', 0);
INSERT INTO `bk_user_news` VALUES (279, 1, 2, 1, '{\"context\":\"??????????\",\"title\":\"????????\"}', '2024-04-17 17:29:45', '2024-04-17 17:29:45', 0);
INSERT INTO `bk_user_news` VALUES (280, 36, 2, 1, '{\"context\":\"计划上线在线简历功能\",\"title\":\"预备新功能上线！\"}', '2024-04-17 17:29:45', '2024-04-17 17:29:45', 0);
INSERT INTO `bk_user_news` VALUES (281, 37, 2, 0, '{\"context\":\"计划上线在线简历功能\",\"title\":\"预备新功能上线！\"}', '2024-04-17 17:29:45', '2024-04-17 17:29:45', 0);
INSERT INTO `bk_user_news` VALUES (282, 1, 0, 1, '{\"avatar\":\"https://api.dujin.org/pic/yuanshen/\",\"id\":3,\"imgurl\":\"https://api-storage.4ce.cn/v1/bd26f19b27719810486f2ce14b7bb562.webp\",\"mkContent\":\"Redis????\",\"sortId\":3,\"sortName\":\"Java\",\"status\":0,\"subTitle\":\"Redis????\",\"tag\":\"CSS\",\"title\":\"Redis????\",\"type\":\"??\",\"userId\":36,\"userName\":\"?????\"}', '2024-04-24 17:00:39', '2024-04-24 17:00:39', 0);
INSERT INTO `bk_user_news` VALUES (283, 36, 2, 1, '{\"context\":\"您账号头衔由 将军 升级为 太史 啦！！！\",\"title\":\"系统提示：恭喜账号升级！\"}', '2024-04-24 17:31:31', '2024-04-24 17:31:31', 0);
INSERT INTO `bk_user_news` VALUES (284, 38, 2, 1, '{\"context\":\"您账号头衔由 将军 升级为 太史 啦！！！\",\"title\":\"系统提示：恭喜账号升级！\"}', '2024-04-24 22:10:59', '2024-04-24 22:10:59', 0);
INSERT INTO `bk_user_news` VALUES (285, 39, 2, 0, '{\"context\":\"您账号头衔由 将军 升级为 太史 啦！！！\",\"title\":\"系统提示：恭喜账号升级！\"}', '2024-04-24 22:13:41', '2024-04-24 22:13:41', 0);
INSERT INTO `bk_user_news` VALUES (286, 36, 4, 1, '{\"createTime\":1703743019000,\"id\":2,\"title\":\"springboot实现第三方登陆----微博登录\"}', '2024-04-25 16:24:08', '2024-04-25 16:24:08', 0);
INSERT INTO `bk_user_news` VALUES (287, 36, 4, 1, '{\"createTime\":1703739344000,\"id\":1,\"title\":\"Spring Boot | 一种优雅的参数校验方案（个人总结）\"}', '2024-04-25 16:24:15', '2024-04-25 16:24:15', 0);
INSERT INTO `bk_user_news` VALUES (288, 38, 4, 0, '{\"createTime\":1714032848000,\"id\":5,\"title\":\"Redis缓存穿透\"}', '2024-04-25 16:24:20', '2024-04-25 16:24:20', 0);
INSERT INTO `bk_user_news` VALUES (289, 1, 0, 0, '{\"avatar\":\"https://api.dujin.org/pic/yuanshen/\",\"id\":8,\"imgurl\":\"https://i3.wp.com/wx3.sinaimg.cn/large/a15b4afegy1fmvjitygqmj21hc0u01bp.jpg\",\"mkContent\":\"1\",\"sortId\":3,\"sortName\":\"Java\",\"status\":0,\"subTitle\":\"1\",\"tag\":\"Java\",\"title\":\"1\",\"type\":\"原创\",\"userId\":36,\"userName\":\"不会背唐诗\"}', '2024-04-25 16:50:09', '2024-04-25 16:50:09', 0);
INSERT INTO `bk_user_news` VALUES (290, 1, 0, 0, '{\"avatar\":\"https://api.dujin.org/pic/yuanshen/\",\"id\":9,\"imgurl\":\"https://i3.wp.com/wx3.sinaimg.cn/large/0072Vf1pgy1foxkcfw1pkj31hc0u017a.jpg\",\"mkContent\":\"~~++ dad ++~~\'\\n~~==~中划线~==~~\\n\\n```java\\ndawda\\n\\n```\\n\",\"sortId\":9,\"sortName\":\"工作经历\",\"status\":0,\"subTitle\":\"3123123\",\"tag\":\"CSS\",\"title\":\"1231\",\"type\":\"原创\",\"userId\":36,\"userName\":\"不会背唐诗\"}', '2024-04-25 17:18:54', '2024-04-25 17:18:54', 0);
INSERT INTO `bk_user_news` VALUES (291, 1, 0, 0, '{\"avatar\":\"https://api.dujin.org/pic/yuanshen/\",\"id\":10,\"imgurl\":\"https://i3.wp.com/wx1.sinaimg.cn/large/a15b4afegy1fmvjcuwh2oj21hc0u04qe.jpg\",\"mkContent\":\"**大大伟大**\\n\\n*达瓦达瓦*\\n\\n++达瓦达瓦达瓦++\\n\\n~~大王大大~~\\n\\n==大大伟大==\\n\\n```java\\npublic class BubbleSortExample {\\n    public static void main(String[] args) {\\n        int[] array = {4, 3, 2, 10, 12, 1, 5, 6};\\n        bubbleSort(array);\\n        for (int i : array) {\\n            System.out.println(i);\\n        }\\n    }\\n \\n    public static void bubbleSort(int[] arr) {\\n        int temp;\\n        for (int i = 0; i < arr.length - 1; i++) {\\n            for (int j = 0; j < arr.length - i - 1; j++) {\\n                if (arr[j] > arr[j + 1]) {\\n                    temp = arr[j];\\n                    arr[j] = arr[j + 1];\\n                    arr[j + 1] = temp;\\n                }\\n            }\\n        }\\n    }\\n}\\n\\n```\\n\",\"sortId\":3,\"sortName\":\"Java\",\"status\":0,\"subTitle\":\"1\",\"tag\":\"SpringCloud\",\"title\":\"1\",\"type\":\"原创\",\"userId\":36,\"userName\":\"不会背唐诗\"}', '2024-04-25 17:24:22', '2024-04-25 17:24:22', 0);
INSERT INTO `bk_user_news` VALUES (292, 1, 0, 0, '{\"avatar\":\"https://api.dujin.org/pic/yuanshen/\",\"id\":11,\"imgurl\":\"https://i3.wp.com/wx2.sinaimg.cn/large/0072Vf1pgy1fodqiuq34vj31kw0zkhdt.jpg\",\"mkContent\":\"\\\\overline{abc}\\n\\n~~中划线~~\\n\\n^上角标^\\n\\n*斜体*\\n\\n**粗体**\\n\\n==标记==\\n\\n^上角标^\\n\\n~下角标~\\n\\n::: hljs-left\\n\\n居左\\n\\n:::\\n\\n::: hljs-center\\n\\n居中\\n\\n:::\\n\\n::: hljs-right\\n\\n居右\\n\\n:::\\n\\n> 段落引用\\n\\n1. - \\n\\n|column1|column2|column3|\\n|-|-|-|\\n|content1|content2|content3|\\n\\n\\n\\n\\n\",\"sortId\":10,\"sortName\":\"生活日记\",\"status\":0,\"subTitle\":\"1313123\",\"tag\":\"Java\",\"title\":\"123123\",\"type\":\"原创\",\"userId\":36,\"userName\":\"不会背唐诗\"}', '2024-04-25 18:00:25', '2024-04-25 18:00:25', 0);
INSERT INTO `bk_user_news` VALUES (293, 38, 3, 0, '{\"avatar\":\"https://api.dujin.org/pic/yuanshen/\",\"blogId\":6,\"commentText\":\"[奋斗]\",\"newsState\":0,\"title\":\"Redis持久化\",\"userId\":36,\"userName\":\"不会背唐诗\"}', '2024-04-25 18:06:38', '2024-04-25 18:06:38', 0);
INSERT INTO `bk_user_news` VALUES (294, 36, 3, 0, '{\"avatar\":\"https://foruda.gitee.com/avatar/1713497508065065591/8847197_tangshishishi_1713497507.png\",\"blogId\":9,\"commentText\":\"哈哈\",\"fatherComment\":{\"commentText\":\"[奋斗][奋斗][奋斗]\",\"replyUserId\":0,\"userId\":36,\"userName\":\"不会背唐诗\"},\"newsState\":1,\"title\":\"1231\",\"userId\":38,\"userName\":\"唐诗\"}', '2024-04-25 20:13:47', '2024-04-25 20:13:47', 0);
INSERT INTO `bk_user_news` VALUES (295, 36, 3, 0, '{\"avatar\":\"https://foruda.gitee.com/avatar/1713497508065065591/8847197_tangshishishi_1713497507.png\",\"blogId\":9,\"commentText\":\"牛逼\",\"fatherComment\":{\"commentText\":\"[奋斗][奋斗][奋斗]\",\"replyUserId\":0,\"userId\":36,\"userName\":\"不会背唐诗\"},\"newsState\":1,\"title\":\"1231\",\"userId\":38,\"userName\":\"唐诗\"}', '2024-04-25 20:25:09', '2024-04-25 20:25:09', 0);
INSERT INTO `bk_user_news` VALUES (296, 38, 3, 0, '{\"avatar\":\"https://api.dujin.org/pic/yuanshen/\",\"blogId\":9,\"commentText\":\"说的什么\",\"fatherComment\":{\"commentText\":\"***\",\"replyUserId\":36,\"replyUserName\":\"不会背唐诗\",\"userId\":38,\"userName\":\"唐诗\"},\"newsState\":1,\"title\":\"1231\",\"userId\":36,\"userName\":\"不会背唐诗\"}', '2024-04-25 21:13:41', '2024-04-25 21:13:41', 0);
INSERT INTO `bk_user_news` VALUES (297, 36, 3, 0, '{\"avatar\":\"https://foruda.gitee.com/avatar/1713497508065065591/8847197_tangshishishi_1713497507.png\",\"blogId\":9,\"commentText\":\"[摸鱼][摸鱼][摸鱼][摸鱼]\",\"newsState\":0,\"title\":\"1231\",\"userId\":38,\"userName\":\"唐诗\"}', '2024-04-25 21:17:37', '2024-04-25 21:17:37', 0);
INSERT INTO `bk_user_news` VALUES (298, 38, 3, 0, '{\"avatar\":\"https://api.dujin.org/pic/yuanshen/\",\"blogId\":9,\"commentText\":\"[可怜][可怜][可怜][可怜]\",\"fatherComment\":{\"commentText\":\"[摸鱼][摸鱼][摸鱼][摸鱼]\",\"replyUserId\":0,\"userId\":38,\"userName\":\"唐诗\"},\"newsState\":1,\"title\":\"1231\",\"userId\":36,\"userName\":\"不会背唐诗\"}', '2024-04-25 21:18:56', '2024-04-25 21:18:56', 0);
INSERT INTO `bk_user_news` VALUES (299, 1, 0, 0, '{\"avatar\":\"https://api.dujin.org/pic/yuanshen/\",\"id\":12,\"imgurl\":\"https://i3.wp.com/wx3.sinaimg.cn/large/a15b4afegy1fmvk4998b2j21hc0u0b29.jpg\",\"mkContent\":\"## 二级标题\\n\\n|column1|column2|column3|\\n|-|-|-|\\n|content1|content2|content3|\\n\\n^上角标^\",\"sortId\":3,\"sortName\":\"Java\",\"status\":0,\"subTitle\":\"1\",\"tag\":\"SpringMVC\",\"title\":\"1\",\"type\":\"原创\",\"userId\":36,\"userName\":\"不会背唐诗\"}', '2024-04-25 21:27:41', '2024-04-25 21:27:41', 0);
INSERT INTO `bk_user_news` VALUES (300, 38, 3, 0, '{\"avatar\":\"https://api.dujin.org/pic/yuanshen/\",\"blogId\":9,\"commentText\":\"[流泪]\",\"fatherComment\":{\"commentText\":\"[摸鱼][摸鱼][摸鱼][摸鱼]\",\"replyUserId\":0,\"userId\":38,\"userName\":\"唐诗\"},\"newsState\":1,\"title\":\"1231\",\"userId\":36,\"userName\":\"不会背唐诗\"}', '2024-04-25 22:32:21', '2024-04-25 22:32:21', 0);
INSERT INTO `bk_user_news` VALUES (301, 36, 3, 0, '{\"avatar\":\"https://foruda.gitee.com/avatar/1713497508065065591/8847197_tangshishishi_1713497507.png\",\"blogId\":12,\"commentText\":\"[白眼]\",\"newsState\":0,\"title\":\"测试\",\"userId\":38,\"userName\":\"唐诗\"}', '2024-04-26 14:32:05', '2024-04-26 14:32:05', 0);
INSERT INTO `bk_user_news` VALUES (302, 38, 2, 0, '{\"context\":\"您账号头衔由 草民 升级为 龙骑士 啦！！！\",\"title\":\"系统提示：恭喜账号升级！\"}', '2024-04-28 15:40:12', '2024-04-28 15:40:12', 0);
INSERT INTO `bk_user_news` VALUES (303, 38, 1, 0, '{\"avatar\":\"http://localhost:8000/tripartite/file/downloadFileByLocal?name=D06584141AA244CB8557A5892C35BB2E.jpg\",\"followId\":38,\"userId\":1,\"userName\":\"密码123456\"}', '2024-04-28 17:04:18', '2024-04-28 17:04:18', 0);

-- ----------------------------
-- Table structure for bk_user_resume
-- ----------------------------
DROP TABLE IF EXISTS `bk_user_resume`;
CREATE TABLE `bk_user_resume`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `resume_json` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简历内容',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '逻辑删除 0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 285 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bk_user_resume
-- ----------------------------
INSERT INTO `bk_user_resume` VALUES (282, 1, '{\"template\":1,\"hometown\":\"贵州\",\"address\":\"广东省\",\"work\":[{\"msg\":\"开发患者应用端\\n3.0并顺利上线。相比\\n2.0系统代码更规范，架构优化，后台增加医院小程序配置功能。\\n2.0项目每增加一个医院，由于每个医院 HIS  系统不同，代码需要对不同医院做不同处理，这样后端代码冗余大，难维护，上线慢。\\n3.0以后每增加一个医院先到后台配置小程序的功能，后端的代码不需要再改变，只需要集成端改动，这样大幅的降低维护成本，上线速度比之前提升200%。\",\"name\":\"浙江和仁科技有限公司\",\"duty\":\"负责患者端小程序后端代码开发，负责患者端后台代码开发，对接 HIS ，负责集成后端的代码开发，参与软件的需求分析和软件概要设计，执行软件代码的相互审查，维护详细设计文档、维护接口文档\",\"startTime\":\"2022-06-01\",\"is\":true,\"endTime\":\"2023-04-01\",\"position\":\"java开发\",\"key\":0}],\"sex\":\"男\",\"studentData\":[{\"msg\":\"本人性格热情开朗，待人友好，为人诚实谦虚。工作勤奋，认真负责，能吃苦耐劳，尽职尽责，有耐心。具有亲和力，平易近人，善于与人沟通。\",\"education\":\"本科\",\"major\":\"计算机科学与技术\",\"name\":\"浙江中医药大学\",\"startTime\":\"2019-09\",\"endTime\":\"2023-06\",\"key\":0}],\"wechat\":\"13765683760\",\"project\":[{\"msg\":\"项目采用前后端分离、微服务架构。分为前台和后台，前台主要功能有登录注册、设计登录、发布文章、收藏、评论、搜索文章、聊天室、消息中心、每日练习、个人中心等，后台主要功能是用户管理、文章管理等\",\"art\":\"Spring Cloud、Spring Boot、MyBatis-Plus、MySQL、Redis、Oss、ES 、社交登录、Vue \\n开发环境:IDEA、Git、Maven\",\"role\":\"全栈\",\"name\":\"博客系统\",\"link\":\"https://gitee.com/tangshishishi/utopiaBlog\",\"startTime\":\"2024-01\",\"endTime\":\"2024-06\",\"key\":0}],\"language\":\"\",\"avatar\":\"http://localhost:8000/tripartite/file/downloadFileByLocal?name=30BDE9953D7C48FEBA11A1D0183A379E.jpg\",\"experience\":\"无\",\"post\":\"java工程师\",\"xueli\":\"本科\",\"skillInfo\":[{\"name\":\"java\",\"key\":0,\"age\":\"90\"},{\"name\":\"Mysql\",\"key\":1,\"age\":\"80\"},{\"name\":\"SpringBoot\",\"key\":2,\"age\":\"80\"},{\"name\":\"Redis\",\"key\":3,\"age\":\"70\"},{\"name\":\"Vue\",\"key\":4,\"age\":\"50\"}],\"phone\":\"13765683760\",\"name\":\"唐诗\",\"judge\":\"热爱编程\",\"time\":\"离职-随时到岗\",\"age\":\"23\",\"email\":\"2693151039@qq.com\",\"desc\":\"对前端主流技术生态和有一定的理解，能够运用主流技术框架解决常见业务问题，英语和数学能力优良，期望在前端领域持续深入学习\"}', '2024-04-18 11:56:44', '2024-04-23 11:43:02', 0);
INSERT INTO `bk_user_resume` VALUES (284, 36, '{\"template\":2,\"work\":[{\"msg\":\"1\",\"name\":\"1\",\"duty\":\"1\",\"startTime\":\"2024-03\",\"is\":true,\"endTime\":\"2024-06\",\"position\":\"1\",\"key\":0}],\"sex\":\"男\",\"studentData\":[{\"key\":0,\"name\":\"12321\",\"major\":\"12313\",\"startTime\":\"2024-09\",\"endTime\":\"2024-11\",\"msg\":\"123132231\",\"education\":\"硕士\"}],\"wechat\":\"123\",\"project\":[{\"msg\":\"123\",\"art\":\"13213\",\"role\":\"12321\",\"name\":\"123\",\"link\":\"12312\",\"startTime\":\"2024-11\",\"endTime\":\"2024-10\",\"key\":0}],\"avatar\":\"\",\"experience\":\"1231\",\"post\":\"21321\",\"skillInfo\":[{\"name\":\"123123\",\"key\":0,\"age\":\"12\"},{\"name\":\"123123\",\"key\":1,\"age\":\"12\"}],\"phone\":\"3213\",\"name\":\"123\",\"artInfo\":[{\"key\":0,\"text\":\"123333333333333333333333333333333\"},{\"key\":1,\"text\":\"111111111111111111111111111111111111111111111111111111\"}],\"age\":\"1221\",\"xueli\":\"本科\"}', '2024-04-22 18:25:25', '2024-04-22 18:32:02', 0);

SET FOREIGN_KEY_CHECKS = 1;
