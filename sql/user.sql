/*
 Navicat MySQL Data Transfer

 Source Server         : db_bh
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : apitest

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 10/06/2022 13:55:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `account` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `permission` enum('admin','user') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (0, 'bh1', 'bh1', 'bh1', 'admin');
INSERT INTO `user` VALUES (1, 'bh2', 'bh2', 'bh2', 'user');
INSERT INTO `user` VALUES (2, 'bh3', 'bh3', 'bh3', 'user');
INSERT INTO `user` VALUES (39, 'bhtest', '1', '', 'user');
INSERT INTO `user` VALUES (40, 'regTest', '1', '', 'user');

SET FOREIGN_KEY_CHECKS = 1;
