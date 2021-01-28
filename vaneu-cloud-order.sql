/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : 127.0.0.1:3306
 Source Schema         : vaneu-cloud-order

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 28/01/2021 15:03:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id,自增',
  `consignor_id` bigint NULL DEFAULT NULL COMMENT '货主id',
  `order_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `img_type` int NULL DEFAULT NULL COMMENT '图片类型：1.订单货品备注图片，2.订单回单图片',
  `img_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件key',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件url',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `version` bigint NOT NULL DEFAULT 0 COMMENT '版本',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (1, 100000004, 'L20200519170511923856064', 2, '200013704/receipt_1262681500044382210.jpg', 'http://oss-driver-test.paiyekeji.com/200013704/receipt_1262681500044382210.jpg?Expires=3167718509&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=KE%2FAXKY%2FkczjKEe3Ow6bAmv9ryY%3D', '2020-05-19 17:54:44', '2020-05-19 17:54:44', 0);
INSERT INTO `t_order` VALUES (2, 100000009, 'L20200519200522547856064', 1, '100000009/FILE_1262719460034981889.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719460034981889.jpg?Expires=3167727560&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=%2FoIyKuIRwlJNgMWSuvxpQQDwo24%3D', '2020-05-19 20:25:37', '2020-05-19 20:25:37', 0);
INSERT INTO `t_order` VALUES (3, 100000009, 'L20200519200522547856064', 1, '100000009/FILE_1262719494268891137.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719494268891137.jpg?Expires=3167727562&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=fzM7Wi0LUrVuwJWplBN3K%2BGf5tc%3D', '2020-05-19 20:25:37', '2020-05-19 20:25:37', 0);
INSERT INTO `t_order` VALUES (4, 100000009, 'L20200519200522646856064', 1, '100000009/FILE_1262719460034981889.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719460034981889.jpg?Expires=3167727560&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=%2FoIyKuIRwlJNgMWSuvxpQQDwo24%3D', '2020-05-19 20:25:38', '2020-05-19 20:25:38', 0);
INSERT INTO `t_order` VALUES (5, 100000009, 'L20200519200522646856064', 1, '100000009/FILE_1262719494268891137.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719494268891137.jpg?Expires=3167727562&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=fzM7Wi0LUrVuwJWplBN3K%2BGf5tc%3D', '2020-05-19 20:25:38', '2020-05-19 20:25:38', 0);
INSERT INTO `t_order` VALUES (6, 100000009, 'L20200519200524543856064', 1, '100000009/FILE_1262719460034981889.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719460034981889.jpg?Expires=3167727560&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=%2FoIyKuIRwlJNgMWSuvxpQQDwo24%3D', '2020-05-19 20:25:39', '2020-05-19 20:25:39', 0);
INSERT INTO `t_order` VALUES (7, 100000009, 'L20200519200524543856064', 1, '100000009/FILE_1262719494268891137.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719494268891137.jpg?Expires=3167727562&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=fzM7Wi0LUrVuwJWplBN3K%2BGf5tc%3D', '2020-05-19 20:25:39', '2020-05-19 20:25:39', 0);
INSERT INTO `t_order` VALUES (8, 100000009, 'L20200519200524577856064', 1, '100000009/FILE_1262719460034981889.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719460034981889.jpg?Expires=3167727560&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=%2FoIyKuIRwlJNgMWSuvxpQQDwo24%3D', '2020-05-19 20:25:39', '2020-05-19 20:25:39', 0);
INSERT INTO `t_order` VALUES (9, 100000009, 'L20200519200524577856064', 1, '100000009/FILE_1262719494268891137.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719494268891137.jpg?Expires=3167727562&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=fzM7Wi0LUrVuwJWplBN3K%2BGf5tc%3D', '2020-05-19 20:25:39', '2020-05-19 20:25:39', 0);
INSERT INTO `t_order` VALUES (10, 100000009, 'L20200519200524612856064', 1, '100000009/FILE_1262719460034981889.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719460034981889.jpg?Expires=3167727560&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=%2FoIyKuIRwlJNgMWSuvxpQQDwo24%3D', '2020-05-19 20:25:39', '2020-05-19 20:25:39', 0);
INSERT INTO `t_order` VALUES (11, 100000009, 'L20200519200524612856064', 1, '100000009/FILE_1262719494268891137.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719494268891137.jpg?Expires=3167727562&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=fzM7Wi0LUrVuwJWplBN3K%2BGf5tc%3D', '2020-05-19 20:25:39', '2020-05-19 20:25:39', 0);
INSERT INTO `t_order` VALUES (12, 100000009, 'L20200519200524639856064', 1, '100000009/FILE_1262719460034981889.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719460034981889.jpg?Expires=3167727560&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=%2FoIyKuIRwlJNgMWSuvxpQQDwo24%3D', '2020-05-19 20:25:39', '2020-05-19 20:25:39', 0);
INSERT INTO `t_order` VALUES (13, 100000009, 'L20200519200524639856064', 1, '100000009/FILE_1262719494268891137.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719494268891137.jpg?Expires=3167727562&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=fzM7Wi0LUrVuwJWplBN3K%2BGf5tc%3D', '2020-05-19 20:25:39', '2020-05-19 20:25:39', 0);
INSERT INTO `t_order` VALUES (14, 100000009, 'L20200519200524669856064', 1, '100000009/FILE_1262719460034981889.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719460034981889.jpg?Expires=3167727560&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=%2FoIyKuIRwlJNgMWSuvxpQQDwo24%3D', '2020-05-19 20:25:39', '2020-05-19 20:25:39', 0);
INSERT INTO `t_order` VALUES (15, 100000009, 'L20200519200524669856064', 1, '100000009/FILE_1262719494268891137.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719494268891137.jpg?Expires=3167727562&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=fzM7Wi0LUrVuwJWplBN3K%2BGf5tc%3D', '2020-05-19 20:25:39', '2020-05-19 20:25:39', 0);
INSERT INTO `t_order` VALUES (16, 100000009, 'L20200519200524695856064', 1, '100000009/FILE_1262719460034981889.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719460034981889.jpg?Expires=3167727560&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=%2FoIyKuIRwlJNgMWSuvxpQQDwo24%3D', '2020-05-19 20:25:39', '2020-05-19 20:25:39', 0);
INSERT INTO `t_order` VALUES (17, 100000009, 'L20200519200524695856064', 1, '100000009/FILE_1262719494268891137.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719494268891137.jpg?Expires=3167727562&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=fzM7Wi0LUrVuwJWplBN3K%2BGf5tc%3D', '2020-05-19 20:25:39', '2020-05-19 20:25:39', 0);
INSERT INTO `t_order` VALUES (18, 100000009, 'L20200519200524722856064', 1, '100000009/FILE_1262719460034981889.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719460034981889.jpg?Expires=3167727560&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=%2FoIyKuIRwlJNgMWSuvxpQQDwo24%3D', '2020-05-19 20:25:39', '2020-05-19 20:25:39', 0);
INSERT INTO `t_order` VALUES (19, 100000009, 'L20200519200524722856064', 1, '100000009/FILE_1262719494268891137.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719494268891137.jpg?Expires=3167727562&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=fzM7Wi0LUrVuwJWplBN3K%2BGf5tc%3D', '2020-05-19 20:25:39', '2020-05-19 20:25:39', 0);
INSERT INTO `t_order` VALUES (20, 100000009, 'C20200519200540456856064', 1, '100000009/FILE_1262719797877780481.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719797877780481.jpg?Expires=3167727640&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=pUAYelqdPomf%2FmThKx32g0yIVQw%3D', '2020-05-19 20:26:55', '2020-05-19 20:26:55', 0);
INSERT INTO `t_order` VALUES (21, 100000009, 'C20200519200541029856064', 1, '100000009/FILE_1262719797877780481.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719797877780481.jpg?Expires=3167727640&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=pUAYelqdPomf%2FmThKx32g0yIVQw%3D', '2020-05-19 20:26:55', '2020-05-19 20:26:55', 0);
INSERT INTO `t_order` VALUES (22, 100000009, 'C20200519200541054856064', 1, '100000009/FILE_1262719797877780481.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719797877780481.jpg?Expires=3167727640&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=pUAYelqdPomf%2FmThKx32g0yIVQw%3D', '2020-05-19 20:26:55', '2020-05-19 20:26:55', 0);
INSERT INTO `t_order` VALUES (23, 100000009, 'C20200519200541078856064', 1, '100000009/FILE_1262719797877780481.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262719797877780481.jpg?Expires=3167727640&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=pUAYelqdPomf%2FmThKx32g0yIVQw%3D', '2020-05-19 20:26:55', '2020-05-19 20:26:55', 0);
INSERT INTO `t_order` VALUES (24, 100000009, 'E20200519200551506856064', 1, '100000009/FILE_1262720096881324033.jpg', 'http://oss-personal-test.paiyekeji.com/100000009/FILE_1262720096881324033.jpg?Expires=3167727711&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=fUsa764VKxvkDsbv%2Ff5rZthk5FE%3D', '2020-05-19 20:28:06', '2020-05-19 20:28:06', 0);
INSERT INTO `t_order` VALUES (25, 100000004, 'L20200519200510737856064', 2, '200013704/receipt_1262722087980240897.jpg', 'http://oss-driver-test.paiyekeji.com/200013704/receipt_1262722087980240897.jpg?Expires=3167728186&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=%2BWABzSledtxd%2FjBZt0ml0KesboI%3D', '2020-05-19 20:36:01', '2020-05-19 20:36:01', 0);
INSERT INTO `t_order` VALUES (26, 100000008, 'L20200520000536280856064', 1, '100000002/HEAD_1240879730312187906.png', 'http://pyps-personal.oss-cn-chengdu.aliyuncs.com/100000002/HEAD_1240879730312187906.png?Expires=3162520557&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=9h5c8KUUfSXHQESrAOHFPlP%2FxrQ%3D', '2020-05-20 01:01:51', '2020-05-20 01:01:51', 0);
INSERT INTO `t_order` VALUES (27, 100000008, 'L20200520000557203856064', 1, '100000002/HEAD_1240879730312187906.png', 'http://pyps-personal.oss-cn-chengdu.aliyuncs.com/100000002/HEAD_1240879730312187906.png?Expires=3162520557&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=9h5c8KUUfSXHQESrAOHFPlP%2FxrQ%3D', '2020-05-20 01:03:12', '2020-05-20 01:03:12', 0);
INSERT INTO `t_order` VALUES (28, 100000009, 'L20200520170558503856064', 1, '100000002/HEAD_1240879730312187906.png', 'http://pyps-personal.oss-cn-chengdu.aliyuncs.com/100000002/HEAD_1240879730312187906.png?Expires=3162520557&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=9h5c8KUUfSXHQESrAOHFPlP%2FxrQ%3D', '2020-05-20 17:49:15', '2020-05-20 17:49:15', 0);
INSERT INTO `t_order` VALUES (29, 100000009, 'L20200520170558866856064', 1, '100000002/HEAD_1240879730312187906.png', 'http://pyps-personal.oss-cn-chengdu.aliyuncs.com/100000002/HEAD_1240879730312187906.png?Expires=3162520557&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=9h5c8KUUfSXHQESrAOHFPlP%2FxrQ%3D', '2020-05-20 17:49:15', '2020-05-20 17:49:15', 0);
INSERT INTO `t_order` VALUES (30, 100000009, 'L20200520170558899856064', 1, '100000002/HEAD_1240879730312187906.png', 'http://pyps-personal.oss-cn-chengdu.aliyuncs.com/100000002/HEAD_1240879730312187906.png?Expires=3162520557&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=9h5c8KUUfSXHQESrAOHFPlP%2FxrQ%3D', '2020-05-20 17:49:15', '2020-05-20 17:49:15', 0);
INSERT INTO `t_order` VALUES (31, 100000009, 'L20200520170558976856064', 1, '100000002/HEAD_1240879730312187906.png', 'http://pyps-personal.oss-cn-chengdu.aliyuncs.com/100000002/HEAD_1240879730312187906.png?Expires=3162520557&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=9h5c8KUUfSXHQESrAOHFPlP%2FxrQ%3D', '2020-05-20 17:49:15', '2020-05-20 17:49:15', 0);
INSERT INTO `t_order` VALUES (32, 100000009, 'L20200520170559018856064', 1, '100000002/HEAD_1240879730312187906.png', 'http://pyps-personal.oss-cn-chengdu.aliyuncs.com/100000002/HEAD_1240879730312187906.png?Expires=3162520557&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=9h5c8KUUfSXHQESrAOHFPlP%2FxrQ%3D', '2020-05-20 17:49:15', '2020-05-20 17:49:15', 0);
INSERT INTO `t_order` VALUES (33, 100000004, 'L20200519200511325856064', 2, '200031064/receipt_1263393125055578114.png', 'http://oss-driver-test.paiyekeji.com/200031064/receipt_1263393125055578114.png?Expires=3167888173&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=XqLYmFToHjCrLjHrpObhgZFgzlE%3D', '2020-05-21 17:02:34', '2020-05-21 17:02:34', 0);
INSERT INTO `t_order` VALUES (34, 100000004, 'L20200519200511325856064', 2, '200031064/receipt_1263393156206673922.png', 'http://oss-driver-test.paiyekeji.com/200031064/receipt_1263393156206673922.png?Expires=3167888175&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=KYzRd6Biy2i575zABf3m4hkIgoQ%3D', '2020-05-21 17:02:34', '2020-05-21 17:02:34', 0);
INSERT INTO `t_order` VALUES (35, 100003574, 'L20200521170510558856064', 1, '100003574/FILE_1263396243809943554.png', 'http://oss-personal-test.paiyekeji.com/100003574/FILE_1263396243809943554.png?Expires=3167888917&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=Ipugd7mF0VLbkUDzPLi%2BF6UVRS4%3D', '2020-05-21 17:15:28', '2020-05-21 17:15:28', 0);
INSERT INTO `t_order` VALUES (36, 100003574, 'L20200519160524755856064', 2, '200013273/receipt_1263416397277151233.png', 'http://oss-driver-test.paiyekeji.com/200013273/receipt_1263416397277151233.png?Expires=3167893722&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=EH5HtBqIjRPhXzqINGMCsJsHcbs%3D', '2020-05-21 18:35:01', '2020-05-21 18:35:01', 0);
INSERT INTO `t_order` VALUES (37, 100003574, 'L20200520180515909856064', 2, '200013273/receipt_1263468737313095682.png', 'http://oss-driver-test.paiyekeji.com/200013273/receipt_1263468737313095682.png?Expires=3167906201&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=3oD%2FXvjbDpJcinry5I%2FpIv4y1AA%3D', '2020-05-21 22:03:00', '2020-05-21 22:03:00', 0);
INSERT INTO `t_order` VALUES (38, 100003574, 'C20200520170551395856064', 2, '200013273/receipt_1263469044986265601.png', 'http://oss-driver-test.paiyekeji.com/200013273/receipt_1263469044986265601.png?Expires=3167906274&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=mro0Ma0Pl8f4eNWpj%2B%2B27ana%2FcE%3D', '2020-05-21 22:04:13', '2020-05-21 22:04:13', 0);
INSERT INTO `t_order` VALUES (39, 100000004, 'L20200519170517556856064', 2, '200013704/receipt_1263662776377393154.png', 'http://oss-driver-test.paiyekeji.com/200013704/receipt_1263662776377393154.png?Expires=3167952466&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=%2FIODxkpRuZRJEEqjHDySCqTd3ko%3D', '2020-05-22 10:54:06', '2020-05-22 10:54:06', 0);
INSERT INTO `t_order` VALUES (40, 100000004, 'L20200519200511167856064', 2, '200013704/receipt_1263664451469164546.png', 'http://oss-driver-test.paiyekeji.com/200013704/receipt_1263664451469164546.png?Expires=3167952859&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=Lao6JGUf2P2mFDvhwr0QSugNZJ4%3D', '2020-05-22 11:00:39', '2020-05-22 11:00:39', 0);
INSERT INTO `t_order` VALUES (41, 100003574, 'C20200520170525217856064', 2, '200013273/receipt_1263707550010556418.png', 'http://oss-driver-test.paiyekeji.com/200013273/receipt_1263707550010556418.png?Expires=3167963138&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=aLaNNYqeiKdUQfC820wSoTq4EIE%3D', '2020-05-22 13:51:58', '2020-05-22 13:51:58', 0);
INSERT INTO `t_order` VALUES (42, 100003574, 'L20200521170510558856064', 2, '200013273/receipt_1263709231481864194.png', 'http://oss-driver-test.paiyekeji.com/200013273/receipt_1263709231481864194.png?Expires=3167963539&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=LY0C8%2FvNmxGGlukN0oRx%2BBXHQrQ%3D', '2020-05-22 13:58:39', '2020-05-22 13:58:39', 0);
INSERT INTO `t_order` VALUES (43, 100000004, 'C20200522130502889856064', 2, '200013704/receipt_1263709304932515841.png', 'http://oss-driver-test.paiyekeji.com/200013704/receipt_1263709304932515841.png?Expires=3167963551&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=TnpBnhCmLNgLH7BohIMFn0UKsQk%3D', '2020-05-22 13:58:51', '2020-05-22 13:58:51', 0);
INSERT INTO `t_order` VALUES (44, 100000004, 'L20200522130514433856064', 2, '200013704/receipt_1263710638444363777.png', 'http://oss-driver-test.paiyekeji.com/200013704/receipt_1263710638444363777.png?Expires=3167963874&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=6BMABtBah7VokUu8p1o49qn3hJs%3D', '2020-05-22 14:04:14', '2020-05-22 14:04:14', 0);
INSERT INTO `t_order` VALUES (45, 100000008, 'L20200523150540625856064', 1, '100000008/FILE_1264097023764369409.png', 'http://oss-personal-test.paiyekeji.com/100000008/FILE_1264097023764369409.png?Expires=3168055991&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=9EUXZ06mGrglFaR%2FjaJJ4DDf8Mc%3D', '2020-05-23 15:40:02', '2020-05-23 15:40:02', 0);
INSERT INTO `t_order` VALUES (46, 100000008, 'L20200523150540834856064', 1, '100000008/FILE_1264097023764369409.png', 'http://oss-personal-test.paiyekeji.com/100000008/FILE_1264097023764369409.png?Expires=3168055991&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=9EUXZ06mGrglFaR%2FjaJJ4DDf8Mc%3D', '2020-05-23 15:40:02', '2020-05-23 15:40:02', 0);
INSERT INTO `t_order` VALUES (47, 100000008, 'L20200523150540892856064', 1, '100000008/FILE_1264097023764369409.png', 'http://oss-personal-test.paiyekeji.com/100000008/FILE_1264097023764369409.png?Expires=3168055991&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=9EUXZ06mGrglFaR%2FjaJJ4DDf8Mc%3D', '2020-05-23 15:40:02', '2020-05-23 15:40:02', 0);
INSERT INTO `t_order` VALUES (49, 100000008, 'L20200523150515960856064', 2, '200035882/receipt_1264100724570779650.png', 'http://oss-driver-test.paiyekeji.com/200035882/receipt_1264100724570779650.png?Expires=3168056873&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=dBz000NRC1mX8wYFQKmb205HrZ0%3D', '2020-05-23 15:54:15', '2020-05-23 15:54:15', 0);
INSERT INTO `t_order` VALUES (50, 100000007, 'L20200523160554223856064', 1, '100000007/FILE_1264115825956786177.jpg', 'http://oss-personal-test.paiyekeji.com/100000007/FILE_1264115825956786177.jpg?Expires=3168060474&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=xA0mF6qwNxJdN1YZFkltIpORFm0%3D', '2020-05-23 16:54:16', '2020-05-23 16:54:16', 0);
INSERT INTO `t_order` VALUES (51, 100000007, 'L20200523160554274856064', 1, '100000007/FILE_1264115825956786177.jpg', 'http://oss-personal-test.paiyekeji.com/100000007/FILE_1264115825956786177.jpg?Expires=3168060474&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=xA0mF6qwNxJdN1YZFkltIpORFm0%3D', '2020-05-23 16:54:16', '2020-05-23 16:54:16', 0);
INSERT INTO `t_order` VALUES (52, 100000007, 'L20200523160554282856064', 1, '100000007/FILE_1264115825956786177.jpg', 'http://oss-personal-test.paiyekeji.com/100000007/FILE_1264115825956786177.jpg?Expires=3168060474&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=xA0mF6qwNxJdN1YZFkltIpORFm0%3D', '2020-05-23 16:54:16', '2020-05-23 16:54:16', 0);
INSERT INTO `t_order` VALUES (53, 100000007, 'L20200523160554290856064', 1, '100000007/FILE_1264115825956786177.jpg', 'http://oss-personal-test.paiyekeji.com/100000007/FILE_1264115825956786177.jpg?Expires=3168060474&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=xA0mF6qwNxJdN1YZFkltIpORFm0%3D', '2020-05-23 16:54:16', '2020-05-23 16:54:16', 0);
INSERT INTO `t_order` VALUES (54, 100000007, 'L20200523160554299856064', 1, '100000007/FILE_1264115825956786177.jpg', 'http://oss-personal-test.paiyekeji.com/100000007/FILE_1264115825956786177.jpg?Expires=3168060474&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=xA0mF6qwNxJdN1YZFkltIpORFm0%3D', '2020-05-23 16:54:16', '2020-05-23 16:54:16', 0);
INSERT INTO `t_order` VALUES (56, 100000001, 'L20200523160510304856064', 2, '200000423/receipt_1264117850232778754.jpg', 'http://oss-driver-test.paiyekeji.com/200000423/receipt_1264117850232778754.jpg?Expires=3168060956&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=XfbkEGOSBHjLYSWxQDCML0OEr6w%3D', '2020-05-23 17:02:30', '2020-05-23 17:02:30', 0);
INSERT INTO `t_order` VALUES (57, 100000001, 'L20200523160510304856064', 2, '200000423/receipt_1264117901147435009.jpg', 'http://oss-driver-test.paiyekeji.com/200000423/receipt_1264117901147435009.jpg?Expires=3168060968&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=wjCQi8LOCpWRpbZjDgNZUy0vgeU%3D', '2020-05-23 17:02:30', '2020-05-23 17:02:30', 0);
INSERT INTO `t_order` VALUES (59, 100003574, 'L20200522150553324856064', 2, '200013273/receipt_1264144094106152962.png', 'http://oss-driver-test.paiyekeji.com/200013273/receipt_1264144094106152962.png?Expires=3168067213&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=z9hY5wbIu4ccmVdTW4PiFBDgeM0%3D', '2020-05-23 18:46:35', '2020-05-23 18:46:35', 0);
INSERT INTO `t_order` VALUES (60, 100003574, 'L20200529130532350856064', 1, '100003574/FILE_1266247212256194561.png', 'http://oss-personal-test.paiyekeji.com/100003574/FILE_1266247212256194561.png?Expires=3168568636&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=fMlrJyodxscIwzkgEMhpgN%2Bk4ZY%3D', '2020-05-29 14:04:18', '2020-05-29 14:04:18', 0);
INSERT INTO `t_order` VALUES (61, 100003574, 'L20200529130532350856064', 1, '100003574/FILE_1266247217037701122.png', 'http://oss-personal-test.paiyekeji.com/100003574/FILE_1266247217037701122.png?Expires=3168568636&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=dtrnfyQNZH9ZF0hb4fb47vosVaw%3D', '2020-05-29 14:04:18', '2020-05-29 14:04:18', 0);
INSERT INTO `t_order` VALUES (62, 100003574, 'L20200529140525909856064', 1, '100003574/FILE_1266249437707759618.png', 'http://oss-personal-test.paiyekeji.com/100003574/FILE_1266249437707759618.png?Expires=3168569166&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=442Gk7vsTIpe23E08FWeNP8NXqE%3D', '2020-05-29 14:13:12', '2020-05-29 14:13:12', 0);
INSERT INTO `t_order` VALUES (63, 100003574, 'C20200529160550198856064', 1, '100003574/FILE_1266279494434156546.png', 'http://oss-personal-test.paiyekeji.com/100003574/FILE_1266279494434156546.png?Expires=3168576333&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=7vFZzDcQ9FY9sl6J%2FMDdU9yHF3E%3D', '2020-05-29 16:12:36', '2020-05-29 16:12:36', 0);
INSERT INTO `t_order` VALUES (64, 100003574, 'C20200529160550198856064', 1, '100003574/FILE_1266279498284527618.png', 'http://oss-personal-test.paiyekeji.com/100003574/FILE_1266279498284527618.png?Expires=3168576333&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=acg14EuvKIAAHfRED0NB3DWwLHc%3D', '2020-05-29 16:12:36', '2020-05-29 16:12:36', 0);
INSERT INTO `t_order` VALUES (65, 100000004, 'C20200530140528476856064', 1, '100000004/FILE_1266614180918239233.jpg', 'http://oss-personal-test.paiyekeji.com/100000004/FILE_1266614180918239233.jpg?Expires=3168656128&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=mberBzjGtdCIWLRhQVt2iIxHJ2Q%3D', '2020-05-30 14:22:16', '2020-05-30 14:22:16', 0);
INSERT INTO `t_order` VALUES (66, 100000004, 'L20200525110550215856064', 2, '200001326/receipt_1268401066045255681.jpg', 'http://oss-driver-test.paiyekeji.com/200001326/receipt_1268401066045255681.jpg?Expires=3169082154&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=XCkGrX7UCI3mreTRh9drsFNx12k%3D', '2020-06-04 12:42:52', '2020-06-04 12:42:52', 0);
INSERT INTO `t_order` VALUES (67, 100000004, 'L20200611160621174856064', 2, '200001326/receipt_1270992966753353729.jpg', 'http://oss-driver-test.paiyekeji.com/200001326/receipt_1270992966753353729.jpg?Expires=3169700112&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=l%2BK18KO8AU1GtR1SKh9WjRImgl4%3D', '2020-06-11 16:22:23', '2020-06-11 16:22:23', 0);
INSERT INTO `t_order` VALUES (68, 100000004, 'L20200611160634448856064', 2, '200001326/receipt_1271003333919408129.jpg', 'http://oss-driver-test.paiyekeji.com/200001326/receipt_1271003333919408129.jpg?Expires=3169702583&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=vPQM%2FzyKdi3BbqGDjaJ3ZpcKEKU%3D', '2020-06-11 17:03:35', '2020-06-11 17:03:35', 0);
INSERT INTO `t_order` VALUES (69, 100000001, 'L20200609180604947856064', 2, '200000423/receipt_1271260154596851713.jpg', 'http://oss-driver-test.paiyekeji.com/200000423/receipt_1271260154596851713.jpg?Expires=3169763814&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=ql3hD171NNH%2BHaXnKuusSHMlTNA%3D', '2020-06-12 10:04:07', '2020-06-12 10:04:07', 0);
INSERT INTO `t_order` VALUES (70, 100000002, 'L20200613090612153856064', 1, '100000002/FILE_1271615820075319298.jpg', 'http://oss-personal-test.paiyekeji.com/100000002/FILE_1271615820075319298.jpg?Expires=3169848612&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=pD18nu5MZkkW182j9SQwrKGhRPU%3D', '2020-06-13 09:37:26', '2020-06-13 09:37:26', 0);
INSERT INTO `t_order` VALUES (71, 100000002, 'L20200613090608288856064', 2, '200031064/receipt_1271618457222971394.jpg', 'http://oss-driver-test.paiyekeji.com/200031064/receipt_1271618457222971394.jpg?Expires=3169849240&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=2LQ%2BNvTpMFJ7fXBK0E6uAyp4Zpw%3D', '2020-06-13 09:47:55', '2020-06-13 09:47:55', 0);
INSERT INTO `t_order` VALUES (72, 100003574, 'L20200523180531106856064', 2, '200013273/receipt_1271685037692747778.png', 'http://oss-driver-test.paiyekeji.com/200013273/receipt_1271685037692747778.png?Expires=3169865114&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=6AuU5qJvxi9%2F9ahCmJ1BKDOLVVA%3D', '2020-06-13 14:12:29', '2020-06-13 14:12:29', 0);
INSERT INTO `t_order` VALUES (73, 100000001, 'C20200612090606421856064', 2, '200000423/receipt_1272825992160432129.jpg', 'http://oss-driver-test.paiyekeji.com/200000423/receipt_1272825992160432129.jpg?Expires=3170137139&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=q7gpxgjyU7oKPCbK%2B8sX4OSj2qM%3D', '2020-06-16 17:46:20', '2020-06-16 17:46:20', 0);
INSERT INTO `t_order` VALUES (74, 100000002, 'L20200617110618108856064', 2, '200013704/receipt_1273091517050470401.jpg', 'http://oss-driver-test.paiyekeji.com/200013704/receipt_1273091517050470401.jpg?Expires=3170200445&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=8aFyUDQj9OOrGOfZj966z9f%2FAG4%3D', '2020-06-17 11:21:27', '2020-06-17 11:21:27', 0);
INSERT INTO `t_order` VALUES (75, 100000004, 'L20200619140621812856064', 1, '100000002/HEAD_1240879730312187906.png', 'http://pyps-personal.oss-cn-chengdu.aliyuncs.com/100000002/HEAD_1240879730312187906.png?Expires=3162520557&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=9h5c8KUUfSXHQESrAOHFPlP%2FxrQ%3D', '2020-06-19 14:52:47', '2020-06-19 14:52:47', 0);
INSERT INTO `t_order` VALUES (76, 100000004, 'L20200619140645837856064', 1, '100000002/HEAD_1240879730312187906.png', 'http://pyps-personal.oss-cn-chengdu.aliyuncs.com/100000002/HEAD_1240879730312187906.png?Expires=3162520557&OSSAccessKeyId=LTAIB1VWsrX6UBrQ&Signature=9h5c8KUUfSXHQESrAOHFPlP%2FxrQ%3D', '2020-06-19 15:00:12', '2020-06-19 15:00:12', 0);

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` bigint NOT NULL,
  `xid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `context` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int NOT NULL,
  `log_created` datetime NOT NULL,
  `log_modified` datetime NOT NULL,
  `ext` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ux_undo_log`(`xid`, `branch_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of undo_log
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;