/*
 Navicat Premium Data Transfer

 Source Server         : hi
 Source Server Type    : MySQL
 Source Server Version : 80100
 Source Host           : localhost:3306
 Source Schema         : second

 Target Server Type    : MySQL
 Target Server Version : 80100
 File Encoding         : 65001

 Date: 08/04/2024 19:35:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admininformation
-- ----------------------------
DROP TABLE IF EXISTS `admininformation`;
CREATE TABLE `admininformation`  (
  `id` int NOT NULL,
  `ano` char(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` char(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `modified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admininformation
-- ----------------------------

-- ----------------------------
-- Table structure for adminoperation
-- ----------------------------
DROP TABLE IF EXISTS `adminoperation`;
CREATE TABLE `adminoperation`  (
  `id` int NOT NULL,
  `aid` int NOT NULL,
  `modified` datetime NULL DEFAULT NULL,
  `operation` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of adminoperation
-- ----------------------------

-- ----------------------------
-- Table structure for allkinds
-- ----------------------------
DROP TABLE IF EXISTS `allkinds`;
CREATE TABLE `allkinds`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `modified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of allkinds
-- ----------------------------
INSERT INTO `allkinds` VALUES (1, 'digital technology', '2024-05-14 13:28:20');
INSERT INTO `allkinds` VALUES (2, 'Audio and vedio appliances', '2024-05-14 13:28:23');
INSERT INTO `allkinds` VALUES (3, 'shoes and clothers', '2024-05-14 13:28:26');
INSERT INTO `allkinds` VALUES (4, 'sports', '2024-05-14 13:28:28');
INSERT INTO `allkinds` VALUES (5, 'books and pencils', '2024-05-14 13:28:31');
INSERT INTO `allkinds` VALUES (6, 'Others', '2024-05-14 13:28:41');

-- ----------------------------
-- Table structure for boughtshop
-- ----------------------------
DROP TABLE IF EXISTS `boughtshop`;
CREATE TABLE `boughtshop`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `state` int NOT NULL,
  `uid` int NOT NULL,
  `sid` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of boughtshop
-- ----------------------------

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `modified` datetime NULL DEFAULT NULL,
  `aid` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES (1, 'phones', NULL, 1);
INSERT INTO `classification` VALUES (2, 'camera', NULL, 1);
INSERT INTO `classification` VALUES (3, 'computer', NULL, 1);
INSERT INTO `classification` VALUES (4, 'audio', NULL, 2);
INSERT INTO `classification` VALUES (5, 'video appliances', NULL, 2);
INSERT INTO `classification` VALUES (6, 'women clothes', NULL, 3);
INSERT INTO `classification` VALUES (7, 'men clothes', NULL, 3);
INSERT INTO `classification` VALUES (8, 'women shoes', NULL, 3);
INSERT INTO `classification` VALUES (9, 'men shoes', NULL, 3);
INSERT INTO `classification` VALUES (10, 'bags', NULL, 3);
INSERT INTO `classification` VALUES (11, 'watches', NULL, 3);
INSERT INTO `classification` VALUES (12, 'equipment', NULL, 4);
INSERT INTO `classification` VALUES (13, 'transportation', NULL, 4);
INSERT INTO `classification` VALUES (14, 'books', NULL, 5);
INSERT INTO `classification` VALUES (15, 'daily necessities', NULL, 5);
INSERT INTO `classification` VALUES (16, 'stationery', NULL, 5);
INSERT INTO `classification` VALUES (17, 'others', NULL, 6);

-- ----------------------------
-- Table structure for goodscar
-- ----------------------------
DROP TABLE IF EXISTS `goodscar`;
CREATE TABLE `goodscar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `sid` int NOT NULL,
  `uid` int NOT NULL,
  `quantity` int NOT NULL,
  `display` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goodscar
-- ----------------------------
INSERT INTO `goodscar` VALUES (1, '2024-03-22 21:57:31', 2, 7, 2, 0);
INSERT INTO `goodscar` VALUES (2, '2024-03-23 11:45:09', 92, 7, 1, 0);
INSERT INTO `goodscar` VALUES (3, '2024-03-26 14:23:29', 1095, 7, 1, 0);
INSERT INTO `goodscar` VALUES (4, '2024-03-09 15:35:13', 1097, 9, 1, 1);
INSERT INTO `goodscar` VALUES (5, '2024-04-05 13:55:53', 1101, 7, 1, 1);

-- ----------------------------
-- Table structure for goodsoforderform
-- ----------------------------
DROP TABLE IF EXISTS `goodsoforderform`;
CREATE TABLE `goodsoforderform`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ofid` int NOT NULL,
  `sid` int NOT NULL,
  `modified` datetime NULL DEFAULT NULL,
  `quantity` int NOT NULL,
  `display` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goodsoforderform
-- ----------------------------

-- ----------------------------
-- Table structure for orderform
-- ----------------------------
DROP TABLE IF EXISTS `orderform`;
CREATE TABLE `orderform`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `display` int NOT NULL DEFAULT 1,
  `uid` int NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `context` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orderform
-- ----------------------------

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `display` int NOT NULL DEFAULT 1,
  `uid` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shopcar
-- ----------------------------

-- ----------------------------
-- Table structure for shopcontext
-- ----------------------------
DROP TABLE IF EXISTS `shopcontext`;
CREATE TABLE `shopcontext`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `sid` int NOT NULL,
  `context` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `display` int NOT NULL DEFAULT 1,
  `uid` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shopcontext
-- ----------------------------

-- ----------------------------
-- Table structure for shopinformation
-- ----------------------------
DROP TABLE IF EXISTS `shopinformation`;
CREATE TABLE `shopinformation`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `level` int NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `sort` int NOT NULL,
  `display` int NOT NULL DEFAULT 1,
  `quantity` int NOT NULL,
  `transaction` int NOT NULL DEFAULT 1,
  `sales` int NULL DEFAULT 0,
  `uid` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `thumbnails` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1110 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shopinformation
-- ----------------------------
INSERT INTO `shopinformation` VALUES (1098, '2024-04-07 09:31:40', '1', 1, '1', 1.00, 1, 0, 1, 1, 0, 7, 'toImage\\NthPcqwEG31711558805596.jpg', '/toImage/thumbnails/YNdSRWez051711558805596.jpg');
INSERT INTO `shopinformation` VALUES (1099, '2024-04-07 09:31:38', '1', 1, '1', 1.00, 1, 0, 1, 1, 0, 7, 'toImage\\zGjRqBl6Vt1711559451166.jpg', '/toImage/thumbnails/Ksanmqk5qn1711559451166.jpg');
INSERT INTO `shopinformation` VALUES (1100, '2024-04-07 09:31:35', '1', 1, '11111', 1.00, 1, 0, 11, 1, 0, 7, 'toImage\\fbijzmcFWa1712318659973.jpg', '/toImage/thumbnails/j3zSx1733r1712318659973.jpg');
INSERT INTO `shopinformation` VALUES (1101, '2024-04-07 09:32:05', 'watch', 1, 'applewatch', 1213.00, 22, 0, 22, 1, 0, 7, 'toImage\\Z7wdprPFXt1712321728430.jpg', '/toImage/thumbnails/DmZEMY4qRF1712321728430.jpg');
INSERT INTO `shopinformation` VALUES (1102, '2024-04-07 09:31:30', '1', 1, 'Thisisasecondhandapplevisionpro,anditisalmost90%new,ifyouhavemoreinformation,pleasecontactme', 1.00, 1, 0, 1, 1, 0, 7, 'toImage\\9KFwWKKPAU1712478683690.jpg', '/toImage/thumbnails/lfw1L7Gd2v1712478683690.jpg');
INSERT INTO `shopinformation` VALUES (1103, '2024-04-08 19:13:43', '1', 1, 'Thisisasecondhandapplevisionpro,anditisalmost90%new,ifyouhavemoreinformation,pleasecontactme', 1.00, 1, 0, 1, 1, 0, 7, 'toImage\\6L8K4XL1X71712478753589.jpg', '/toImage/thumbnails/DNIHa7iL6C1712478753589.jpg');
INSERT INTO `shopinformation` VALUES (1104, '2024-04-07 09:33:57', '1', 1, 'itissecondhandricecooker', 1.00, 1, 0, 1, 1, 0, 7, 'toImage\\keFVZSp08L1712478828350.jpg', '/toImage/thumbnails/DLpt7uUIYw1712478828350.jpg');
INSERT INTO `shopinformation` VALUES (1105, '2024-04-07 09:34:49', '1', 1, 'ricecooker', 1.00, 69, 0, 1, 1, 0, 7, 'toImage\\NQpNMcTr8t1712478877476.jpg', '/toImage/thumbnails/5cprZNab6p1712478877476.jpg');
INSERT INTO `shopinformation` VALUES (1106, '2024-04-08 19:16:05', '1', 1, 'slighttracesofuse。', 1500.00, 1, 1, 1, 1, 0, 7, 'toImage\\E8X0GoMP6V1712600165194.jpg', '/toImage/thumbnails/yFFOHHkXRr1712600165194.jpg');
INSERT INTO `shopinformation` VALUES (1107, '2024-04-08 19:17:57', '1', 2, 'personalricecooker', 1.00, 29, 1, 300, 1, 0, 7, 'toImage\\OM7LQoPCD51712600276974.jpg', '/toImage/thumbnails/0aZ6MSxn6H1712600276974.jpg');
INSERT INTO `shopinformation` VALUES (1108, '2024-04-08 19:19:00', '1', 1, 'iphone15', 1.00, 1, 1, 1, 1, 0, 7, 'toImage\\TvwiAmZ2DI1712600339815.jpg', '/toImage/thumbnails/kmwowUIS2c1712600339815.jpg');
INSERT INTO `shopinformation` VALUES (1109, '2024-04-08 19:22:05', '1', 1, 'Huawei', 300.00, 4, 1, 1, 1, 0, 7, 'toImage\\q2n6kpRbz81712600525464.jpg', '/toImage/thumbnails/mAHpCCnAnq1712600525464.jpg');

-- ----------------------------
-- Table structure for shoppicture
-- ----------------------------
DROP TABLE IF EXISTS `shoppicture`;
CREATE TABLE `shoppicture`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `sid` int NOT NULL,
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `display` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shoppicture
-- ----------------------------
INSERT INTO `shoppicture` VALUES (1, NULL, 1, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (2, NULL, 2, '/image/01.jpg', 1);
INSERT INTO `shoppicture` VALUES (3, NULL, 3, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (4, NULL, 4, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (5, NULL, 5, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (6, NULL, 6, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (7, NULL, 7, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (8, NULL, 8, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (9, NULL, 9, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (10, NULL, 10, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (11, NULL, 11, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (12, NULL, 12, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (13, NULL, 13, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (14, NULL, 14, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (15, NULL, 15, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (16, NULL, 16, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (17, NULL, 17, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (18, NULL, 18, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (19, NULL, 19, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (20, NULL, 20, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (21, NULL, 21, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (22, NULL, 22, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (23, NULL, 23, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (24, NULL, 24, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (25, NULL, 25, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (26, NULL, 26, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (27, NULL, 27, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (28, NULL, 28, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (29, NULL, 29, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (30, NULL, 30, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (31, NULL, 31, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (32, NULL, 32, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (33, NULL, 33, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (34, NULL, 34, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (35, NULL, 35, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (36, NULL, 36, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (37, NULL, 37, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (38, NULL, 38, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (39, NULL, 39, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (40, NULL, 40, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (41, NULL, 41, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (42, NULL, 42, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (43, NULL, 43, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (44, NULL, 44, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (45, NULL, 45, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (46, NULL, 46, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (47, NULL, 47, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (48, NULL, 48, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (49, NULL, 49, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (50, NULL, 50, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (51, NULL, 51, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (52, NULL, 52, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (53, NULL, 53, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (54, NULL, 54, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (55, NULL, 55, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (56, NULL, 56, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (57, NULL, 57, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (58, NULL, 58, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (59, NULL, 59, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (60, NULL, 60, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (61, NULL, 61, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (62, NULL, 62, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (63, NULL, 63, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (64, NULL, 64, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (65, NULL, 65, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (66, NULL, 66, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (67, NULL, 67, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (68, NULL, 68, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (69, NULL, 69, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (70, NULL, 70, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (71, NULL, 71, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (72, NULL, 72, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (73, NULL, 73, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (74, NULL, 74, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (75, NULL, 75, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (76, NULL, 76, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (77, NULL, 77, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (78, NULL, 78, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (79, NULL, 79, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (80, NULL, 80, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (81, NULL, 81, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (82, NULL, 82, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (83, NULL, 83, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (84, NULL, 84, '/image/1.jpg', 1);
INSERT INTO `shoppicture` VALUES (85, '2024-03-14 20:04:48', 87, '\\image/eW5NE6CM121494763475193.jpg', 1);
INSERT INTO `shoppicture` VALUES (86, '2024-03-14 20:07:50', 88, '\\image/02.jpg', 1);
INSERT INTO `shoppicture` VALUES (87, '2024-03-14 20:14:14', 89, '\\image\\htEZLneu1d1494764039225.jpg', 1);
INSERT INTO `shoppicture` VALUES (88, '2024-03-14 20:15:30', 90, '\\image\\OAkysrUmZs1494764129394.jpg', 1);

-- ----------------------------
-- Table structure for specifickinds
-- ----------------------------
DROP TABLE IF EXISTS `specifickinds`;
CREATE TABLE `specifickinds`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `modified` datetime NULL DEFAULT NULL,
  `cid` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of specifickinds
-- ----------------------------
INSERT INTO `specifickinds` VALUES (1, 'apple', NULL, 1);
INSERT INTO `specifickinds` VALUES (2, 'samsung', NULL, 1);
INSERT INTO `specifickinds` VALUES (3, 'vivo', NULL, 1);
INSERT INTO `specifickinds` VALUES (4, 'Huawei', NULL, 1);
INSERT INTO `specifickinds` VALUES (5, 'Hongmi', NULL, 1);
INSERT INTO `specifickinds` VALUES (6, 'dell', NULL, 1);
INSERT INTO `specifickinds` VALUES (7, 'honour', NULL, 1);
INSERT INTO `specifickinds` VALUES (8, 'Others', NULL, 1);
INSERT INTO `specifickinds` VALUES (9, 'headphones', NULL, 1);
INSERT INTO `specifickinds` VALUES (10, 'camera', NULL, 2);
INSERT INTO `specifickinds` VALUES (11, 'digital camera', NULL, 2);
INSERT INTO `specifickinds` VALUES (12, 'others', NULL, 2);
INSERT INTO `specifickinds` VALUES (13, 'desktop', NULL, 3);
INSERT INTO `specifickinds` VALUES (14, 'ipad', NULL, 3);
INSERT INTO `specifickinds` VALUES (15, 'laptop', NULL, 3);
INSERT INTO `specifickinds` VALUES (16, 'screen', NULL, 3);
INSERT INTO `specifickinds` VALUES (17, 'mouse', NULL, 3);
INSERT INTO `specifickinds` VALUES (18, 'harddisk', NULL, 3);
INSERT INTO `specifickinds` VALUES (19, 'U disk', NULL, 3);
INSERT INTO `specifickinds` VALUES (20, 'digital disk', NULL, 3);
INSERT INTO `specifickinds` VALUES (21, 'Others', NULL, 3);
INSERT INTO `specifickinds` VALUES (22, 'washing machine', NULL, 4);
INSERT INTO `specifickinds` VALUES (23, 'water dispenser', NULL, 4);
INSERT INTO `specifickinds` VALUES (24, 'hair dryer', NULL, 4);
INSERT INTO `specifickinds` VALUES (25, 'slaver', NULL, 4);
INSERT INTO `specifickinds` VALUES (26, 'fan', NULL, 4);
INSERT INTO `specifickinds` VALUES (27, 'cooker', NULL, 4);
INSERT INTO `specifickinds` VALUES (28, 'rice cooker', NULL, 4);
INSERT INTO `specifickinds` VALUES (29, 'fork', NULL, 4);
INSERT INTO `specifickinds` VALUES (30, 'Others', NULL, 4);
INSERT INTO `specifickinds` VALUES (31, 'headphone', NULL, 5);
INSERT INTO `specifickinds` VALUES (32, 'audio', NULL, 5);
INSERT INTO `specifickinds` VALUES (33, 'video', NULL, 5);
INSERT INTO `specifickinds` VALUES (34, 'microwave', NULL, 5);
INSERT INTO `specifickinds` VALUES (36, 'skirt', NULL, 6);
INSERT INTO `specifickinds` VALUES (37, 'trousers', NULL, 6);
INSERT INTO `specifickinds` VALUES (38, 'dress', NULL, 6);
INSERT INTO `specifickinds` VALUES (39, 'others', NULL, 6);
INSERT INTO `specifickinds` VALUES (40, 'clothes', NULL, 7);
INSERT INTO `specifickinds` VALUES (41, 'trousers', NULL, 7);
INSERT INTO `specifickinds` VALUES (42, 'others', NULL, 7);
INSERT INTO `specifickinds` VALUES (43, 'sports shoes', NULL, 8);
INSERT INTO `specifickinds` VALUES (44, 'deadlift shoes', NULL, 8);
INSERT INTO `specifickinds` VALUES (45, 'basketball shoes', NULL, 8);
INSERT INTO `specifickinds` VALUES (46, 'football shoes', NULL, 8);
INSERT INTO `specifickinds` VALUES (47, 'baseball shoes', NULL, 8);
INSERT INTO `specifickinds` VALUES (48, 'others', NULL, 8);
INSERT INTO `specifickinds` VALUES (49, 'sport shoes', NULL, 9);
INSERT INTO `specifickinds` VALUES (50, 'trousers', '2024-03-11 21:53:20', 9);
INSERT INTO `specifickinds` VALUES (51, 'shoes', '2024-03-21 21:53:23', 9);
INSERT INTO `specifickinds` VALUES (52, 'football shoes', '2024-03-23 21:53:26', 9);
INSERT INTO `specifickinds` VALUES (53, 'badmination shoes', '2024-03-20 21:53:28', 9);
INSERT INTO `specifickinds` VALUES (54, 'others', '2024-03-10 21:53:30', 9);
INSERT INTO `specifickinds` VALUES (55, 'bags', NULL, 10);
INSERT INTO `specifickinds` VALUES (56, 'package', NULL, 10);
INSERT INTO `specifickinds` VALUES (57, 'others', NULL, 10);
INSERT INTO `specifickinds` VALUES (58, 'mechanical watch', NULL, 11);
INSERT INTO `specifickinds` VALUES (59, 'apple watch', NULL, 11);
INSERT INTO `specifickinds` VALUES (60, 'watchs', NULL, 11);
INSERT INTO `specifickinds` VALUES (61, 'others', NULL, 11);
INSERT INTO `specifickinds` VALUES (62, 'football', NULL, 12);
INSERT INTO `specifickinds` VALUES (63, 'badmination racket', NULL, 12);
INSERT INTO `specifickinds` VALUES (64, 'badmination ', NULL, 12);
INSERT INTO `specifickinds` VALUES (65, 'basketball', NULL, 12);
INSERT INTO `specifickinds` VALUES (66, 'football', NULL, 12);
INSERT INTO `specifickinds` VALUES (67, 'table tennis', NULL, 12);
INSERT INTO `specifickinds` VALUES (68, 'skateboard', NULL, 12);
INSERT INTO `specifickinds` VALUES (69, 'others', NULL, 12);
INSERT INTO `specifickinds` VALUES (70, 'e bike', NULL, 13);
INSERT INTO `specifickinds` VALUES (71, 'bike', NULL, 13);
INSERT INTO `specifickinds` VALUES (72, 'others', NULL, 13);
INSERT INTO `specifickinds` VALUES (73, 'literature', NULL, 14);
INSERT INTO `specifickinds` VALUES (74, 'comic', NULL, 14);
INSERT INTO `specifickinds` VALUES (75, 'novels', NULL, 14);
INSERT INTO `specifickinds` VALUES (76, 'others', NULL, 14);
INSERT INTO `specifickinds` VALUES (77, 'biology', NULL, 15);
INSERT INTO `specifickinds` VALUES (78, 'chemistry', NULL, 15);
INSERT INTO `specifickinds` VALUES (79, 'physics', NULL, 15);
INSERT INTO `specifickinds` VALUES (80, 'chinese', NULL, 15);
INSERT INTO `specifickinds` VALUES (81, 'englihs', NULL, 15);
INSERT INTO `specifickinds` VALUES (82, 'maths', NULL, 15);
INSERT INTO `specifickinds` VALUES (83, 'political', NULL, 15);
INSERT INTO `specifickinds` VALUES (84, 'history', NULL, 15);
INSERT INTO `specifickinds` VALUES (85, 'geography', NULL, 15);
INSERT INTO `specifickinds` VALUES (86, 'computer science', NULL, 15);
INSERT INTO `specifickinds` VALUES (87, 'engineering', NULL, 15);
INSERT INTO `specifickinds` VALUES (88, 'engineering', NULL, 15);
INSERT INTO `specifickinds` VALUES (89, 'art', NULL, 15);
INSERT INTO `specifickinds` VALUES (90, 'others', NULL, 15);
INSERT INTO `specifickinds` VALUES (91, 'pen', NULL, 16);
INSERT INTO `specifickinds` VALUES (92, 'oTHERS', NULL, 16);
INSERT INTO `specifickinds` VALUES (93, 'Others', NULL, 5);
INSERT INTO `specifickinds` VALUES (94, 'Others', NULL, 17);

-- ----------------------------
-- Table structure for usercollection
-- ----------------------------
DROP TABLE IF EXISTS `usercollection`;
CREATE TABLE `usercollection`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `uid` int NOT NULL,
  `sid` int NOT NULL,
  `display` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of usercollection
-- ----------------------------

-- ----------------------------
-- Table structure for userinformation
-- ----------------------------
DROP TABLE IF EXISTS `userinformation`;
CREATE TABLE `userinformation`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` char(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `realname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `clazz` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sno` char(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `dormitory` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `gender` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_id`(`id`) USING BTREE,
  INDEX `selectByPhone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of userinformation
-- ----------------------------
INSERT INTO `userinformation` VALUES (7, '2024-03-19 14:43:01', 'qwq', '127', 'Meng', '信', '123456', '4156', 'M', '2024-02-20 15:14:14', '');
INSERT INTO `userinformation` VALUES (1, '2017-05-14 13:56:04', 'myx2', '12345', 'Mengyu', '23', '158', '13211', 'M', '2024-03-14 13:56:04', NULL);
-- ----------------------------
-- Table structure for userpassword
-- ----------------------------
DROP TABLE IF EXISTS `userpassword`;
CREATE TABLE `userpassword`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `uid` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of userpassword
-- ----------------------------
INSERT INTO `userpassword` VALUES (1, '2024-03-14 13:56:05', 'e10adc3949ba59abbe56e057f20f883e', 1);
INSERT INTO `userpassword` VALUES (2, '2024-03-20 22:00:49', 'e10adc3949ba59abbe56e057f20f883e', 2);
INSERT INTO `userpassword` VALUES (3, '2024-03-14 14:55:29', 'e10adc3949ba59abbe56e057f20f883e', 3);
INSERT INTO `userpassword` VALUES (4, '2024-03-14 15:00:11', 'e10adc3949ba59abbe56e057f20f883e', 4);
INSERT INTO `userpassword` VALUES (5, '2024-03-14 15:00:45', 'e10adc3949ba59abbe56e057f20f883e', 5);
INSERT INTO `userpassword` VALUES (6, '2024-03-14 15:01:13', 'e10adc3949ba59abbe56e057f20f883e', 6);
INSERT INTO `userpassword` VALUES (7, '2024-03-26 13:33:49', 'e10adc3949ba59abbe56e057f20f883e', 7);
INSERT INTO `userpassword` VALUES (8, '2024-03-20 22:31:17', 'e10adc3949ba59abbe56e057f20f883e', 8);
INSERT INTO `userpassword` VALUES (9, '2018-03-09 15:34:23', 'e10adc3949ba59abbe56e057f20f883e', 9);

-- ----------------------------
-- Table structure for userrelease
-- ----------------------------
DROP TABLE IF EXISTS `userrelease`;
CREATE TABLE `userrelease`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `display` int NOT NULL DEFAULT 1,
  `uid` int NOT NULL,
  `sid` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1018 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of userrelease
-- ----------------------------
INSERT INTO `userrelease` VALUES (1, '2024-03-20 15:55:37', 1, 7, 91);
INSERT INTO `userrelease` VALUES (2, '2024-03-20 19:07:34', 1, 7, 92);
INSERT INTO `userrelease` VALUES (3, '2024-03-25 16:08:37', 1, 61, 95);
INSERT INTO `userrelease` VALUES (4, '2024-03-25 16:08:40', 1, 50, 96);
INSERT INTO `userrelease` VALUES (5, '2024-03-25 16:08:40', 1, 18, 97);
INSERT INTO `userrelease` VALUES (6, '2024-03-25 16:08:40', 1, 29, 98);
INSERT INTO `userrelease` VALUES (7, '2024-03-25 16:08:40', 1, 38, 99);
INSERT INTO `userrelease` VALUES (8, '2024-03-25 16:08:40', 1, 44, 100);
INSERT INTO `userrelease` VALUES (9, '2024-03-25 16:08:40', 1, 14, 101);
INSERT INTO `userrelease` VALUES (10, '2024-03-25 16:08:40', 1, 52, 102);
INSERT INTO `userrelease` VALUES (11, '2024-03-25 16:08:40', 1, 37, 103);
INSERT INTO `userrelease` VALUES (12, '2024-03-25 16:08:40', 1, 43, 104);
INSERT INTO `userrelease` VALUES (13, '2024-03-25 16:08:40', 1, 52, 105);
INSERT INTO `userrelease` VALUES (14, '2024-03-25 16:08:40', 1, 61, 106);
INSERT INTO `userrelease` VALUES (15, '2024-03-25 16:08:40', 1, 31, 107);
INSERT INTO `userrelease` VALUES (16, '2024-03-25 16:08:40', 1, 51, 108);
INSERT INTO `userrelease` VALUES (17, '2024-03-25 16:08:40', 1, 63, 109);
INSERT INTO `userrelease` VALUES (18, '2024-03-25 16:08:41', 1, 29, 110);
INSERT INTO `userrelease` VALUES (19, '2024-03-25 16:08:41', 1, 37, 111);
INSERT INTO `userrelease` VALUES (20, '2024-03-25 16:08:41', 1, 16, 112);
INSERT INTO `userrelease` VALUES (21, '2024-03-25 16:08:41', 1, 38, 113);
INSERT INTO `userrelease` VALUES (22, '2024-03-25 16:08:41', 1, 65, 114);
INSERT INTO `userrelease` VALUES (23, '2024-03-25 16:08:41', 1, 15, 115);
INSERT INTO `userrelease` VALUES (24, '2024-03-25 16:08:41', 1, 61, 116);
INSERT INTO `userrelease` VALUES (25, '2024-03-25 16:08:41', 1, 54, 117);
INSERT INTO `userrelease` VALUES (26, '2024-03-25 16:08:41', 1, 73, 118);
INSERT INTO `userrelease` VALUES (27, '2024-03-25 16:08:41', 1, 74, 119);
INSERT INTO `userrelease` VALUES (28, '2024-03-25 16:08:41', 1, 46, 120);
INSERT INTO `userrelease` VALUES (29, '2024-03-25 16:08:41', 1, 98, 121);
INSERT INTO `userrelease` VALUES (30, '2024-03-25 16:08:41', 1, 50, 122);
INSERT INTO `userrelease` VALUES (31, '2024-03-25 16:08:41', 1, 92, 123);
INSERT INTO `userrelease` VALUES (32, '2024-03-25 16:08:41', 1, 60, 124);
INSERT INTO `userrelease` VALUES (33, '2024-03-25 16:08:41', 1, 21, 125);
INSERT INTO `userrelease` VALUES (34, '2024-03-25 16:08:41', 1, 79, 126);
INSERT INTO `userrelease` VALUES (35, '2024-03-25 16:08:41', 1, 71, 127);
INSERT INTO `userrelease` VALUES (36, '2024-03-25 16:08:41', 1, 90, 128);
INSERT INTO `userrelease` VALUES (37, '2024-03-25 16:08:41', 1, 64, 129);
INSERT INTO `userrelease` VALUES (38, '2024-03-25 16:08:41', 1, 89, 130);
INSERT INTO `userrelease` VALUES (39, '2024-03-25 16:08:41', 1, 55, 131);
INSERT INTO `userrelease` VALUES (40, '2024-03-25 16:08:41', 1, 29, 132);
INSERT INTO `userrelease` VALUES (41, '2024-03-25 16:08:41', 1, 34, 133);
INSERT INTO `userrelease` VALUES (42, '2024-03-25 16:08:41', 1, 92, 134);
INSERT INTO `userrelease` VALUES (43, '2024-03-25 16:08:41', 1, 32, 135);
INSERT INTO `userrelease` VALUES (44, '2024-03-25 16:08:41', 1, 89, 136);
INSERT INTO `userrelease` VALUES (45, '2024-03-25 16:08:41', 1, 65, 137);
INSERT INTO `userrelease` VALUES (46, '2024-03-25 16:08:41', 1, 91, 138);
INSERT INTO `userrelease` VALUES (47, '2024-03-25 16:08:41', 1, 40, 139);
INSERT INTO `userrelease` VALUES (48, '2024-03-25 16:08:41', 1, 55, 140);
INSERT INTO `userrelease` VALUES (49, '2024-03-25 16:08:41', 1, 6, 141);
INSERT INTO `userrelease` VALUES (50, '2024-03-25 16:08:41', 1, 88, 142);
INSERT INTO `userrelease` VALUES (51, '2024-03-25 16:08:41', 1, 45, 143);
INSERT INTO `userrelease` VALUES (52, '2024-03-25 16:08:41', 1, 11, 144);
INSERT INTO `userrelease` VALUES (53, '2024-03-25 16:08:41', 1, 32, 145);
INSERT INTO `userrelease` VALUES (54, '2024-03-25 16:08:41', 1, 61, 146);
INSERT INTO `userrelease` VALUES (55, '2024-03-25 16:08:41', 1, 44, 147);
INSERT INTO `userrelease` VALUES (56, '2024-03-25 16:08:41', 1, 86, 148);
INSERT INTO `userrelease` VALUES (57, '2024-03-25 16:08:41', 1, 30, 149);
INSERT INTO `userrelease` VALUES (58, '2024-03-25 16:08:41', 1, 84, 150);
INSERT INTO `userrelease` VALUES (59, '2024-03-25 16:08:41', 1, 90, 151);
INSERT INTO `userrelease` VALUES (60, '2024-03-25 16:08:41', 1, 73, 152);
INSERT INTO `userrelease` VALUES (61, '2024-03-25 16:08:41', 1, 16, 153);
INSERT INTO `userrelease` VALUES (62, '2024-03-25 16:08:41', 1, 61, 154);
INSERT INTO `userrelease` VALUES (63, '2024-03-25 16:08:41', 1, 21, 155);
INSERT INTO `userrelease` VALUES (64, '2024-03-25 16:08:41', 1, 92, 156);
INSERT INTO `userrelease` VALUES (65, '2024-03-25 16:08:41', 1, 44, 157);
INSERT INTO `userrelease` VALUES (66, '2024-03-25 16:08:41', 1, 11, 158);
INSERT INTO `userrelease` VALUES (67, '2024-03-25 16:08:41', 1, 76, 159);
INSERT INTO `userrelease` VALUES (68, '2024-03-25 16:08:41', 1, 31, 160);
INSERT INTO `userrelease` VALUES (69, '2024-03-25 16:08:41', 1, 18, 161);
INSERT INTO `userrelease` VALUES (70, '2024-03-25 16:08:41', 1, 9, 162);
INSERT INTO `userrelease` VALUES (71, '2024-03-25 16:08:41', 1, 42, 163);
INSERT INTO `userrelease` VALUES (72, '2024-03-25 16:08:41', 1, 92, 164);
INSERT INTO `userrelease` VALUES (73, '2024-03-25 16:08:41', 1, 5, 165);
INSERT INTO `userrelease` VALUES (74, '2024-03-25 16:08:41', 1, 57, 166);
INSERT INTO `userrelease` VALUES (75, '2024-03-25 16:08:41', 1, 81, 167);
INSERT INTO `userrelease` VALUES (76, '2024-03-25 16:08:41', 1, 39, 168);
INSERT INTO `userrelease` VALUES (77, '2024-03-25 16:08:41', 1, 57, 169);
INSERT INTO `userrelease` VALUES (78, '2024-03-25 16:08:41', 1, 16, 170);
INSERT INTO `userrelease` VALUES (79, '2024-03-25 16:08:41', 1, 95, 171);
INSERT INTO `userrelease` VALUES (80, '2024-03-25 16:08:41', 1, 95, 172);
INSERT INTO `userrelease` VALUES (81, '2024-03-25 16:08:41', 1, 68, 173);
INSERT INTO `userrelease` VALUES (82, '2024-03-25 16:08:41', 1, 56, 174);
INSERT INTO `userrelease` VALUES (83, '2024-03-25 16:08:41', 1, 82, 175);
INSERT INTO `userrelease` VALUES (84, '2024-03-25 16:08:41', 1, 44, 176);
INSERT INTO `userrelease` VALUES (85, '2024-03-25 16:08:41', 1, 81, 177);
INSERT INTO `userrelease` VALUES (86, '2024-03-25 16:08:41', 1, 32, 178);
INSERT INTO `userrelease` VALUES (87, '2024-03-25 16:08:41', 1, 90, 179);
INSERT INTO `userrelease` VALUES (88, '2024-03-25 16:08:41', 1, 22, 180);
INSERT INTO `userrelease` VALUES (89, '2024-03-25 16:08:41', 1, 84, 181);
INSERT INTO `userrelease` VALUES (90, '2024-03-25 16:08:41', 1, 71, 182);
INSERT INTO `userrelease` VALUES (91, '2024-03-25 16:08:41', 1, 36, 183);
INSERT INTO `userrelease` VALUES (92, '2024-03-25 16:08:41', 1, 80, 184);
INSERT INTO `userrelease` VALUES (93, '2024-03-25 16:08:41', 1, 86, 185);
INSERT INTO `userrelease` VALUES (94, '2024-03-25 16:08:41', 1, 35, 186);
INSERT INTO `userrelease` VALUES (95, '2024-03-25 16:08:41', 1, 13, 187);
INSERT INTO `userrelease` VALUES (96, '2024-03-25 16:08:41', 1, 4, 188);
INSERT INTO `userrelease` VALUES (97, '2024-03-25 16:08:41', 1, 68, 189);
INSERT INTO `userrelease` VALUES (98, '2024-03-25 16:08:41', 1, 30, 190);
INSERT INTO `userrelease` VALUES (99, '2024-03-25 16:08:41', 1, 80, 191);
INSERT INTO `userrelease` VALUES (100, '2024-03-25 16:08:41', 1, 16, 192);
INSERT INTO `userrelease` VALUES (101, '2024-03-25 16:08:41', 1, 52, 193);
INSERT INTO `userrelease` VALUES (102, '2024-03-25 16:08:41', 1, 53, 194);
INSERT INTO `userrelease` VALUES (103, '2024-03-25 16:08:41', 1, 61, 195);
INSERT INTO `userrelease` VALUES (104, '2024-03-25 16:08:41', 1, 85, 196);
INSERT INTO `userrelease` VALUES (105, '2024-03-25 16:08:41', 1, 89, 197);
INSERT INTO `userrelease` VALUES (106, '2024-03-25 16:08:41', 1, 21, 198);
INSERT INTO `userrelease` VALUES (107, '2024-03-25 16:08:41', 1, 57, 199);
INSERT INTO `userrelease` VALUES (108, '2024-03-25 16:08:41', 1, 4, 200);
INSERT INTO `userrelease` VALUES (109, '2024-03-25 16:08:41', 1, 37, 201);
INSERT INTO `userrelease` VALUES (110, '2024-03-25 16:08:41', 1, 36, 202);
INSERT INTO `userrelease` VALUES (111, '2024-03-25 16:08:41', 1, 47, 203);
INSERT INTO `userrelease` VALUES (112, '2024-03-25 16:08:41', 1, 89, 204);
INSERT INTO `userrelease` VALUES (113, '2024-03-25 16:08:41', 1, 96, 205);
INSERT INTO `userrelease` VALUES (114, '2024-03-25 16:08:41', 1, 17, 206);
INSERT INTO `userrelease` VALUES (115, '2024-03-25 16:08:41', 1, 57, 207);
INSERT INTO `userrelease` VALUES (116, '2024-03-25 16:08:41', 1, 4, 208);
INSERT INTO `userrelease` VALUES (117, '2024-03-25 16:08:41', 1, 100, 209);
INSERT INTO `userrelease` VALUES (118, '2024-03-25 16:08:41', 1, 97, 210);
INSERT INTO `userrelease` VALUES (119, '2024-03-25 16:08:41', 1, 56, 211);
INSERT INTO `userrelease` VALUES (120, '2024-03-25 16:08:41', 1, 55, 212);
INSERT INTO `userrelease` VALUES (121, '2024-03-25 16:08:41', 1, 51, 213);
INSERT INTO `userrelease` VALUES (122, '2024-03-25 16:08:41', 1, 29, 214);
INSERT INTO `userrelease` VALUES (123, '2024-03-25 16:08:41', 1, 61, 215);
INSERT INTO `userrelease` VALUES (124, '2024-03-25 16:08:41', 1, 78, 216);
INSERT INTO `userrelease` VALUES (125, '2024-03-25 16:08:41', 1, 26, 217);
INSERT INTO `userrelease` VALUES (126, '2024-03-25 16:08:41', 1, 77, 218);
INSERT INTO `userrelease` VALUES (127, '2024-03-25 16:08:41', 1, 89, 219);
INSERT INTO `userrelease` VALUES (128, '2024-03-25 16:08:41', 1, 91, 220);
INSERT INTO `userrelease` VALUES (129, '2024-03-25 16:08:41', 1, 80, 221);
INSERT INTO `userrelease` VALUES (130, '2024-03-25 16:08:41', 1, 31, 222);
INSERT INTO `userrelease` VALUES (131, '2024-03-25 16:08:41', 1, 8, 223);
INSERT INTO `userrelease` VALUES (132, '2024-03-25 16:08:41', 1, 41, 224);
INSERT INTO `userrelease` VALUES (133, '2024-03-25 16:08:41', 1, 51, 225);
INSERT INTO `userrelease` VALUES (134, '2024-03-25 16:08:41', 1, 74, 226);
INSERT INTO `userrelease` VALUES (135, '2024-03-25 16:08:41', 1, 39, 227);
INSERT INTO `userrelease` VALUES (136, '2024-03-25 16:08:41', 1, 80, 228);
INSERT INTO `userrelease` VALUES (137, '2024-03-25 16:08:41', 1, 59, 229);
INSERT INTO `userrelease` VALUES (138, '2024-03-25 16:08:41', 1, 90, 230);
INSERT INTO `userrelease` VALUES (139, '2024-03-25 16:08:42', 1, 47, 231);
INSERT INTO `userrelease` VALUES (140, '2024-03-25 16:08:42', 1, 64, 232);
INSERT INTO `userrelease` VALUES (141, '2024-03-25 16:08:42', 1, 24, 233);
INSERT INTO `userrelease` VALUES (142, '2024-03-25 16:08:42', 1, 19, 234);
INSERT INTO `userrelease` VALUES (143, '2024-03-25 16:08:42', 1, 42, 235);
INSERT INTO `userrelease` VALUES (144, '2024-03-25 16:08:42', 1, 87, 236);
INSERT INTO `userrelease` VALUES (145, '2024-03-25 16:08:42', 1, 51, 237);
INSERT INTO `userrelease` VALUES (146, '2024-03-25 16:08:42', 1, 74, 238);
INSERT INTO `userrelease` VALUES (147, '2024-03-25 16:08:42', 1, 53, 239);
INSERT INTO `userrelease` VALUES (148, '2024-03-25 16:08:42', 1, 90, 240);
INSERT INTO `userrelease` VALUES (149, '2024-03-25 16:08:42', 1, 93, 241);
INSERT INTO `userrelease` VALUES (150, '2024-03-25 16:08:42', 1, 68, 242);
INSERT INTO `userrelease` VALUES (151, '2024-03-25 16:08:42', 1, 68, 243);
INSERT INTO `userrelease` VALUES (152, '2024-03-25 16:08:42', 1, 32, 244);
INSERT INTO `userrelease` VALUES (153, '2024-03-25 16:08:42', 1, 60, 245);
INSERT INTO `userrelease` VALUES (154, '2024-03-25 16:08:42', 1, 91, 246);
INSERT INTO `userrelease` VALUES (155, '2024-03-25 16:08:42', 1, 11, 247);
INSERT INTO `userrelease` VALUES (156, '2024-03-25 16:08:42', 1, 61, 248);
INSERT INTO `userrelease` VALUES (157, '2024-03-25 16:08:42', 1, 35, 249);
INSERT INTO `userrelease` VALUES (158, '2024-03-25 16:08:42', 1, 41, 250);
INSERT INTO `userrelease` VALUES (159, '2024-03-25 16:08:42', 1, 17, 251);
INSERT INTO `userrelease` VALUES (160, '2024-03-25 16:08:42', 1, 8, 252);
INSERT INTO `userrelease` VALUES (161, '2024-03-25 16:08:42', 1, 97, 253);
INSERT INTO `userrelease` VALUES (162, '2024-03-25 16:08:42', 1, 39, 254);
INSERT INTO `userrelease` VALUES (163, '2024-03-25 16:08:42', 1, 47, 255);
INSERT INTO `userrelease` VALUES (164, '2024-03-25 16:08:42', 1, 79, 256);
INSERT INTO `userrelease` VALUES (165, '2024-03-25 16:08:42', 1, 93, 257);
INSERT INTO `userrelease` VALUES (166, '2024-03-25 16:08:42', 1, 15, 258);
INSERT INTO `userrelease` VALUES (167, '2024-03-25 16:08:42', 1, 3, 259);
INSERT INTO `userrelease` VALUES (168, '2024-03-25 16:08:42', 1, 94, 260);
INSERT INTO `userrelease` VALUES (169, '2024-03-25 16:08:42', 1, 62, 261);
INSERT INTO `userrelease` VALUES (170, '2024-03-25 16:08:42', 1, 96, 262);
INSERT INTO `userrelease` VALUES (171, '2024-03-25 16:08:42', 1, 16, 263);
INSERT INTO `userrelease` VALUES (172, '2024-03-25 16:08:42', 1, 20, 264);
INSERT INTO `userrelease` VALUES (173, '2024-03-25 16:08:42', 1, 78, 265);
INSERT INTO `userrelease` VALUES (174, '2024-03-25 16:08:42', 1, 22, 266);
INSERT INTO `userrelease` VALUES (175, '2024-03-25 16:08:42', 1, 59, 267);
INSERT INTO `userrelease` VALUES (176, '2024-03-25 16:08:42', 1, 87, 268);
INSERT INTO `userrelease` VALUES (177, '2024-03-25 16:08:42', 1, 49, 269);
INSERT INTO `userrelease` VALUES (178, '2024-03-25 16:08:42', 1, 12, 270);
INSERT INTO `userrelease` VALUES (179, '2024-03-25 16:08:42', 1, 18, 271);
INSERT INTO `userrelease` VALUES (180, '2024-03-25 16:08:42', 1, 55, 272);
INSERT INTO `userrelease` VALUES (181, '2024-03-25 16:08:42', 1, 24, 273);
INSERT INTO `userrelease` VALUES (182, '2024-03-25 16:08:42', 1, 42, 274);
INSERT INTO `userrelease` VALUES (183, '2024-03-25 16:08:42', 1, 76, 275);
INSERT INTO `userrelease` VALUES (184, '2024-03-25 16:08:42', 1, 48, 276);
INSERT INTO `userrelease` VALUES (185, '2024-03-25 16:08:42', 1, 23, 277);


-- ----------------------------
-- Table structure for userstate
-- ----------------------------
DROP TABLE IF EXISTS `userstate`;
CREATE TABLE `userstate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `credit` int NOT NULL DEFAULT 80,
  `balance` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `modified` datetime NULL DEFAULT NULL,
  `uid` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of userstate
-- ----------------------------

-- ----------------------------
-- Table structure for userwant
-- ----------------------------
DROP TABLE IF EXISTS `userwant`;
CREATE TABLE `userwant`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `display` int NOT NULL DEFAULT 1,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sort` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `uid` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of userwant
-- ----------------------------
INSERT INTO `userwant` VALUES (13, '2024-03-27 17:00:24', 0, '1', 1, 1, 1.00, '1', 7);
INSERT INTO `userwant` VALUES (14, '2024-03-27 17:10:29', 0, '1', 1, 1, 1.00, '1', 7);

-- ----------------------------
-- Table structure for wantcontext
-- ----------------------------
DROP TABLE IF EXISTS `wantcontext`;
CREATE TABLE `wantcontext`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `uwid` int NOT NULL,
  `context` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `display` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wantcontext
-- ----------------------------

CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL COMMENT 'comment',
  `time` varchar(50) DEFAULT NULL COMMENT 'time',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='comment table';

SET FOREIGN_KEY_CHECKS = 1;
