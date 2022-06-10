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

 Date: 10/06/2022 13:55:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for piclist
-- ----------------------------
DROP TABLE IF EXISTS `piclist`;
CREATE TABLE `piclist`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of piclist
-- ----------------------------
INSERT INTO `piclist` VALUES (0, '[\'./img/aeui2.3ffb4059.jpg\']', 'AE制作的UI界面');
INSERT INTO `piclist` VALUES (1, '[\'./img/Db1.a1fd25e5.png\',]', 'AE图标');
INSERT INTO `piclist` VALUES (2, '[\'./img/trigger.48572e21.gif\',]', '关键帧动画展示——动画标题划过');
INSERT INTO `piclist` VALUES (3, '[\'./img/ringRotation.dea76612.gif\',]', '关键帧动画展示——圆环动画');
INSERT INTO `piclist` VALUES (4, '[\'./img/ringRotation.dea76612.gif\']', '父子层级演示动画');
INSERT INTO `piclist` VALUES (5, '[\'./img/output.3a7ce429.png\',\'./img/output2.519f6f66.png\']', '渲染设置');
INSERT INTO `piclist` VALUES (6, '[\'./img/keylight1.eccac615.png\']', 'Keylight界面');
INSERT INTO `piclist` VALUES (7, '[\'./img/aenav.d4efd8c0.png\']', '工具栏展示');
INSERT INTO `piclist` VALUES (8, '[\'./img/layerBasic.ff6195b5.png\']', '图层基本属性');
INSERT INTO `piclist` VALUES (9, '[\'./img/mask1.f05eb60f.png\',\'./img/mask2.c19452f2.png\',\'./img/mask3.5dfa62f5.png\']', '蒙板效果');

SET FOREIGN_KEY_CHECKS = 1;
