/*
 Navicat Premium Data Transfer

 Source Server         : Hasee
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : interesting_ph3

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 03/06/2019 22:42:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attr_option_table
-- ----------------------------
DROP TABLE IF EXISTS `attr_option_table`;
CREATE TABLE `attr_option_table`  (
  `attr_option_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性选项id',
  `attr_id` int(11) NOT NULL COMMENT '属性id',
  `attr_option_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性选项名',
  `attr_option_value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性选项值',
  PRIMARY KEY (`attr_option_id`) USING BTREE,
  INDEX `FK_Reference_attr_option`(`attr_id`) USING BTREE,
  CONSTRAINT `FK_Reference_attr_option` FOREIGN KEY (`attr_id`) REFERENCES `attr_table` (`attr_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '属性选项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for attr_table
-- ----------------------------
DROP TABLE IF EXISTS `attr_table`;
CREATE TABLE `attr_table`  (
  `attr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性id',
  `TYPE_code` int(8) NOT NULL COMMENT '分类编码',
  `attr_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性名称',
  PRIMARY KEY (`attr_id`) USING BTREE,
  INDEX `FK_Reference_type_attr`(`TYPE_code`) USING BTREE,
  CONSTRAINT `FK_Reference_type_attr` FOREIGN KEY (`TYPE_code`) REFERENCES `main_type_table` (`main_type_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '属性表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for collection_table
-- ----------------------------
DROP TABLE IF EXISTS `collection_table`;
CREATE TABLE `collection_table`  (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏条目id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `SKU_code` int(8) NOT NULL COMMENT 'SKU编码',
  `collection_date` date NULL DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`collection_id`) USING BTREE,
  INDEX `FK_Reference_26`(`user_id`) USING BTREE,
  INDEX `FK_Reference_35`(`SKU_code`) USING BTREE,
  CONSTRAINT `FK_Reference_26` FOREIGN KEY (`user_id`) REFERENCES `user_profile_table` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_35` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment_pic_table
-- ----------------------------
DROP TABLE IF EXISTS `comment_pic_table`;
CREATE TABLE `comment_pic_table`  (
  `comment_pic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论图片id',
  `comment_id` int(11) NOT NULL COMMENT '评论id',
  `comment_pic_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片url',
  PRIMARY KEY (`comment_pic_id`) USING BTREE,
  INDEX `FK_Reference_34`(`comment_id`) USING BTREE,
  CONSTRAINT `FK_Reference_34` FOREIGN KEY (`comment_id`) REFERENCES `comment_table` (`comment_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment_table
-- ----------------------------
DROP TABLE IF EXISTS `comment_table`;
CREATE TABLE `comment_table`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `SKU_code` int(8) NOT NULL COMMENT 'SKU编码',
  `comment_star` int(11) NOT NULL COMMENT '评论星级',
  `comment_time` datetime(0) NOT NULL COMMENT '评论时间',
  `comment_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `FK_Reference_33`(`SKU_code`) USING BTREE,
  CONSTRAINT `FK_Reference_33` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for designer_awards_table
-- ----------------------------
DROP TABLE IF EXISTS `designer_awards_table`;
CREATE TABLE `designer_awards_table`  (
  `designer_award_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设计师荣誉id',
  `designer_id` int(11) NOT NULL COMMENT '设计师id',
  `designer_award_date` year NULL DEFAULT 2019 COMMENT '荣誉年份',
  `designer_award_describe` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'this a award describe' COMMENT '荣誉描述',
  `designer_award_pic_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '荣誉图片路径',
  PRIMARY KEY (`designer_award_id`) USING BTREE,
  INDEX `FK_Reference_17`(`designer_id`) USING BTREE,
  CONSTRAINT `FK_Reference_17` FOREIGN KEY (`designer_id`) REFERENCES `designer_table` (`designer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设计师荣誉表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for designer_table
-- ----------------------------
DROP TABLE IF EXISTS `designer_table`;
CREATE TABLE `designer_table`  (
  `designer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设计师id',
  `designer_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设计师名字',
  `designer_birth_place` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '巴黎' COMMENT '设计师籍贯',
  `designer_hold_place` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '法国' COMMENT '设计师驻地',
  `designer_motto` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '“关于未来，我有许多计划，但其中重要的是，与榆杨合作成功。”' COMMENT '设计师座右铭',
  `designer_main_pic_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设计师主图片路径',
  `designer_bgi_pic_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设计师产品介绍背景图片路径',
  PRIMARY KEY (`designer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 251 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设计师表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of designer_table
-- ----------------------------
INSERT INTO `designer_table` VALUES (245, 'Luca Nichetto', '斯德哥尔摩', '意大利', '“关于未来，我有许多计划，但其中重要的是，与榆杨合作成功。”', 'chkasad', 'asdasjhdldas');
INSERT INTO `designer_table` VALUES (246, 'Noé Duchaufour Lawrance', '巴黎', '法国', '“我一直相信，每件物体的内核都是一股特别的力量，这份力作为一根隐形纽带将人类本体的感知能力与自然、爱和一切联结。”', 'adssad', 'adsad');
INSERT INTO `designer_table` VALUES (247, 'Palomba Serafini Associati', '米兰', '意大利', '“始终保持一份为人们创造全新设计与体验的初心与激情。”', 'wdasd', 'sdadsad');
INSERT INTO `designer_table` VALUES (248, 'Claesson Koivisto Rune', '斯德哥尔摩', '瑞典', '“超越标新立异”', 'dssad', 'sadasd');
INSERT INTO `designer_table` VALUES (249, 'Richard Hutten', '荷兰', '鹿特丹', '“功能性永远只是起点，而不是终点；对于设计来说，艺术性才是更为重要的。”', 'sdsad', 'sadsad');
INSERT INTO `designer_table` VALUES (250, 'Constance Guisset', '巴黎', '法国', '一位被Philippe Starck称作“dreamer”的设计师', 'saddsadd', 'sadsad');

-- ----------------------------
-- Table structure for login_log_table
-- ----------------------------
DROP TABLE IF EXISTS `login_log_table`;
CREATE TABLE `login_log_table`  (
  `login_log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `login_is_success` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' COMMENT '是否成功',
  `login_time` datetime(0) NOT NULL COMMENT '登录时间',
  `login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`login_log_id`) USING BTREE,
  INDEX `FK_Reference_24`(`user_id`) USING BTREE,
  CONSTRAINT `FK_Reference_24` FOREIGN KEY (`user_id`) REFERENCES `user_profile_table` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登录日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for main_type_table
-- ----------------------------
DROP TABLE IF EXISTS `main_type_table`;
CREATE TABLE `main_type_table`  (
  `main_type_code` int(8) NOT NULL AUTO_INCREMENT COMMENT '一级分类编码',
  `main_type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '一级分类名称',
  PRIMARY KEY (`main_type_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '一级分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_type_table
-- ----------------------------
INSERT INTO `main_type_table` VALUES (1, '沙发');
INSERT INTO `main_type_table` VALUES (2, '床 · 床具');
INSERT INTO `main_type_table` VALUES (3, '柜架');
INSERT INTO `main_type_table` VALUES (4, '椅凳');
INSERT INTO `main_type_table` VALUES (5, '桌几');
INSERT INTO `main_type_table` VALUES (6, '灯具');
INSERT INTO `main_type_table` VALUES (7, '家纺');
INSERT INTO `main_type_table` VALUES (8, '餐具');
INSERT INTO `main_type_table` VALUES (9, '装饰');

-- ----------------------------
-- Table structure for order_sku_table
-- ----------------------------
DROP TABLE IF EXISTS `order_sku_table`;
CREATE TABLE `order_sku_table`  (
  `order_SKU_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单商品条目id',
  `SKU_code` int(8) NOT NULL COMMENT 'SKU编码',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `order_SKU_num` int(11) NOT NULL COMMENT 'SKU数量',
  PRIMARY KEY (`order_SKU_id`) USING BTREE,
  INDEX `FK_Reference_31`(`SKU_code`) USING BTREE,
  INDEX `FK_Reference_32`(`order_id`) USING BTREE,
  CONSTRAINT `FK_Reference_31` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_32` FOREIGN KEY (`order_id`) REFERENCES `order_table` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单商品关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_table
-- ----------------------------
DROP TABLE IF EXISTS `order_table`;
CREATE TABLE `order_table`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `order_place_time` datetime(0) NOT NULL COMMENT '下单时间',
  `order_pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `order_deliver_time` datetime(0) NULL DEFAULT NULL COMMENT '发货时间',
  `order_receive_time` datetime(0) NULL DEFAULT NULL COMMENT '收货时间',
  `order_cut_down` double NULL DEFAULT NULL COMMENT '优惠金额',
  `order_amount` double NULL DEFAULT NULL COMMENT '交易金额',
  `order_pay_method` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付方式',
  `order_deliver_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流单号',
  `order_point` int(11) NULL DEFAULT NULL COMMENT '订单积分',
  `order_state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '正常' COMMENT '订单状态',
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `FK_Reference_30`(`user_id`) USING BTREE,
  CONSTRAINT `FK_Reference_30` FOREIGN KEY (`user_id`) REFERENCES `user_profile_table` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 200000 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for package_sku_table
-- ----------------------------
DROP TABLE IF EXISTS `package_sku_table`;
CREATE TABLE `package_sku_table`  (
  `package_item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合内容条目id',
  `package_id` int(11) NOT NULL COMMENT '组合id',
  `SKU_code` int(8) NOT NULL COMMENT 'SKU编码',
  PRIMARY KEY (`package_item_id`) USING BTREE,
  INDEX `FK_Reference_36`(`package_id`) USING BTREE,
  INDEX `FK_Reference_37`(`SKU_code`) USING BTREE,
  CONSTRAINT `FK_Reference_36` FOREIGN KEY (`package_id`) REFERENCES `package_table` (`package_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_37` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组合内容表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for package_table
-- ----------------------------
DROP TABLE IF EXISTS `package_table`;
CREATE TABLE `package_table`  (
  `package_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合id',
  PRIMARY KEY (`package_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组合表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_series_table
-- ----------------------------
DROP TABLE IF EXISTS `product_series_table`;
CREATE TABLE `product_series_table`  (
  `product_series_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品系列id',
  `designer_id` int(11) NOT NULL COMMENT '设计师id',
  `product_series_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品系列名称',
  PRIMARY KEY (`product_series_id`) USING BTREE,
  INDEX `FK_Reference_19`(`designer_id`) USING BTREE,
  CONSTRAINT `FK_Reference_19` FOREIGN KEY (`designer_id`) REFERENCES `designer_table` (`designer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品系列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shopping_car_item_table
-- ----------------------------
DROP TABLE IF EXISTS `shopping_car_item_table`;
CREATE TABLE `shopping_car_item_table`  (
  `shopping_car_item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车条目id',
  `SKU_code` int(8) NOT NULL COMMENT 'SKU编码',
  `购物车id` int(11) NOT NULL COMMENT '购物车id',
  `shopping_car_SKU_num` int(11) NOT NULL COMMENT 'SKU数量',
  PRIMARY KEY (`shopping_car_item_id`) USING BTREE,
  INDEX `FK_Reference_28`(`SKU_code`) USING BTREE,
  INDEX `FK_Reference_39`(`购物车id`) USING BTREE,
  CONSTRAINT `FK_Reference_28` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_39` FOREIGN KEY (`购物车id`) REFERENCES `shopping_car_table` (`购物车id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车条目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shopping_car_table
-- ----------------------------
DROP TABLE IF EXISTS `shopping_car_table`;
CREATE TABLE `shopping_car_table`  (
  `购物车id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`购物车id`) USING BTREE,
  INDEX `FK_Reference_38`(`user_id`) USING BTREE,
  CONSTRAINT `FK_Reference_38` FOREIGN KEY (`user_id`) REFERENCES `user_profile_table` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sku_attr_table
-- ----------------------------
DROP TABLE IF EXISTS `sku_attr_table`;
CREATE TABLE `sku_attr_table`  (
  `attr_col_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性选项条目id',
  `attr_option_id` int(11) NOT NULL COMMENT '属性选项id',
  `SKU_code` int(8) NOT NULL COMMENT 'SKU编码',
  PRIMARY KEY (`attr_col_id`) USING BTREE,
  INDEX `FK_Reference_SKU_attr_option`(`attr_option_id`) USING BTREE,
  INDEX `FK_Reference_attr_SKU`(`SKU_code`) USING BTREE,
  CONSTRAINT `FK_Reference_SKU_attr_option` FOREIGN KEY (`attr_option_id`) REFERENCES `attr_option_table` (`attr_option_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_attr_SKU` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SKU_属性选项关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sku_image_table
-- ----------------------------
DROP TABLE IF EXISTS `sku_image_table`;
CREATE TABLE `sku_image_table`  (
  `SKU_code` int(8) NOT NULL COMMENT 'SKU编码',
  `product_pic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `product_pic_describe` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片描述',
  `product_pic_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片路径',
  `product_pic_size` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片尺寸',
  PRIMARY KEY (`product_pic_id`) USING BTREE,
  INDEX `FK_Reference_16`(`SKU_code`) USING BTREE,
  CONSTRAINT `FK_Reference_16` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SKU图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sku_spec_table
-- ----------------------------
DROP TABLE IF EXISTS `sku_spec_table`;
CREATE TABLE `sku_spec_table`  (
  `spec_col_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格选项条目id',
  `spec_option_id` int(11) NOT NULL COMMENT '规格选项id',
  `SKU_code` int(8) NOT NULL COMMENT 'SKU编码',
  PRIMARY KEY (`spec_col_id`) USING BTREE,
  INDEX `FK_Reference_SKU_spec_option`(`spec_option_id`) USING BTREE,
  INDEX `FK_Reference_spec_SKU`(`SKU_code`) USING BTREE,
  CONSTRAINT `FK_Reference_SKU_spec_option` FOREIGN KEY (`spec_option_id`) REFERENCES `spec_option_table` (`spec_option_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_spec_SKU` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SKU_规格选项关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sku_table
-- ----------------------------
DROP TABLE IF EXISTS `sku_table`;
CREATE TABLE `sku_table`  (
  `SKU_code` int(8) NOT NULL AUTO_INCREMENT COMMENT 'SKU编码',
  `SPU_code` int(8) NOT NULL COMMENT 'SPU编码',
  `sub_type_id` int(11) NOT NULL COMMENT '二级分类编码',
  `spec_col_id` int(11) NOT NULL COMMENT '规格选项条目id',
  `attr_col_id` int(11) NOT NULL COMMENT '属性选项条目id',
  `SKU_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SKU名称',
  `purchase_price` int(11) NOT NULL COMMENT '进价',
  `sell_price` int(11) NOT NULL COMMENT '售价',
  `stock` int(11) NOT NULL COMMENT '库存',
  `log_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '录入时间',
  `produce_date` timestamp(0) NOT NULL COMMENT '生产日期',
  PRIMARY KEY (`SKU_code`) USING BTREE,
  INDEX `FK_Reference_SKU_attr`(`attr_col_id`) USING BTREE,
  INDEX `FK_Reference_SKU_spec`(`spec_col_id`) USING BTREE,
  INDEX `FK_Reference_SKU_sub_type`(`sub_type_id`) USING BTREE,
  INDEX `FK_Reference_SPU_SKU`(`SPU_code`) USING BTREE,
  CONSTRAINT `FK_Reference_SKU_attr` FOREIGN KEY (`attr_col_id`) REFERENCES `sku_attr_table` (`attr_col_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_SKU_spec` FOREIGN KEY (`spec_col_id`) REFERENCES `sku_spec_table` (`spec_col_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_SKU_sub_type` FOREIGN KEY (`sub_type_id`) REFERENCES `sub_type_table` (`sub_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_SPU_SKU` FOREIGN KEY (`SPU_code`) REFERENCES `spu_table` (`SPU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 80000001 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SKU表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spec_option_table
-- ----------------------------
DROP TABLE IF EXISTS `spec_option_table`;
CREATE TABLE `spec_option_table`  (
  `spec_option_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格选项id',
  `spec_id` int(11) NOT NULL COMMENT '规格id',
  `spec_option_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格选项名称',
  `spec_option_value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格选项值',
  PRIMARY KEY (`spec_option_id`) USING BTREE,
  INDEX `FK_Reference_spec_option`(`spec_id`) USING BTREE,
  CONSTRAINT `FK_Reference_spec_option` FOREIGN KEY (`spec_id`) REFERENCES `spec_table` (`spec_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '规格选项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spec_table
-- ----------------------------
DROP TABLE IF EXISTS `spec_table`;
CREATE TABLE `spec_table`  (
  `spec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格id',
  `TYPE_code` int(8) NOT NULL COMMENT '分类编码',
  `parameter_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参数名称',
  PRIMARY KEY (`spec_id`) USING BTREE,
  INDEX `FK_Reference_type_spec`(`TYPE_code`) USING BTREE,
  CONSTRAINT `FK_Reference_type_spec` FOREIGN KEY (`TYPE_code`) REFERENCES `main_type_table` (`main_type_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '规格表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spu_table
-- ----------------------------
DROP TABLE IF EXISTS `spu_table`;
CREATE TABLE `spu_table`  (
  `SPU_code` int(8) NOT NULL AUTO_INCREMENT COMMENT 'SPU编码',
  `TYPE_code` int(8) NOT NULL COMMENT '分类编码',
  `designer_id` int(11) NULL DEFAULT NULL COMMENT '设计师id',
  `product_series_id` int(11) NULL DEFAULT NULL COMMENT '产品系列id',
  `SPU_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SPU名称',
  `SPU_describe` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SPU简介',
  `SPU_detail` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SPU详情',
  PRIMARY KEY (`SPU_code`) USING BTREE,
  INDEX `FK_Reference_18`(`designer_id`) USING BTREE,
  INDEX `FK_Reference_20`(`product_series_id`) USING BTREE,
  INDEX `FK_Reference_SPU_type`(`TYPE_code`) USING BTREE,
  CONSTRAINT `FK_Reference_18` FOREIGN KEY (`designer_id`) REFERENCES `designer_table` (`designer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_20` FOREIGN KEY (`product_series_id`) REFERENCES `product_series_table` (`product_series_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_SPU_type` FOREIGN KEY (`TYPE_code`) REFERENCES `main_type_table` (`main_type_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 60000001 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SPU表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sub_type_table
-- ----------------------------
DROP TABLE IF EXISTS `sub_type_table`;
CREATE TABLE `sub_type_table`  (
  `sub_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '二级分类编码',
  `main_type_code` int(8) NOT NULL COMMENT '一级分类编码',
  `sub_type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '二级分类名称',
  PRIMARY KEY (`sub_type_id`) USING BTREE,
  INDEX `FK_Reference_type_main_sub`(`main_type_code`) USING BTREE,
  CONSTRAINT `FK_Reference_type_main_sub` FOREIGN KEY (`main_type_code`) REFERENCES `main_type_table` (`main_type_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '二级分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_type_table
-- ----------------------------
INSERT INTO `sub_type_table` VALUES (1, 1, '三人沙发');
INSERT INTO `sub_type_table` VALUES (2, 1, '双人沙发');
INSERT INTO `sub_type_table` VALUES (3, 1, '单人沙发');
INSERT INTO `sub_type_table` VALUES (4, 1, '大三人沙发');
INSERT INTO `sub_type_table` VALUES (5, 1, '沙发墩');
INSERT INTO `sub_type_table` VALUES (6, 2, '床');
INSERT INTO `sub_type_table` VALUES (7, 2, '床垫');
INSERT INTO `sub_type_table` VALUES (8, 2, '床品4件套');
INSERT INTO `sub_type_table` VALUES (9, 2, '被芯');
INSERT INTO `sub_type_table` VALUES (10, 2, '枕芯');
INSERT INTO `sub_type_table` VALUES (11, 2, '床头柜');
INSERT INTO `sub_type_table` VALUES (12, 2, '床下储物盒');
INSERT INTO `sub_type_table` VALUES (13, 2, '床尾凳');
INSERT INTO `sub_type_table` VALUES (14, 3, 'COSMO');
INSERT INTO `sub_type_table` VALUES (15, 3, '置物柜');
INSERT INTO `sub_type_table` VALUES (16, 3, '书柜 · 书架');
INSERT INTO `sub_type_table` VALUES (17, 3, '电视柜');
INSERT INTO `sub_type_table` VALUES (18, 3, '置物架');
INSERT INTO `sub_type_table` VALUES (19, 3, '衣柜');
INSERT INTO `sub_type_table` VALUES (20, 3, '床头柜');
INSERT INTO `sub_type_table` VALUES (21, 3, '衣帽架');
INSERT INTO `sub_type_table` VALUES (22, 3, '鞋柜 · 玄关柜');
INSERT INTO `sub_type_table` VALUES (23, 3, '单元格');
INSERT INTO `sub_type_table` VALUES (24, 4, '座椅');
INSERT INTO `sub_type_table` VALUES (25, 4, '坐墩');
INSERT INTO `sub_type_table` VALUES (26, 4, '休闲椅');
INSERT INTO `sub_type_table` VALUES (27, 4, '凳子');
INSERT INTO `sub_type_table` VALUES (28, 5, '书桌 · 餐桌');
INSERT INTO `sub_type_table` VALUES (29, 5, '茶几');
INSERT INTO `sub_type_table` VALUES (30, 5, '边几');
INSERT INTO `sub_type_table` VALUES (31, 5, '梳妆台');
INSERT INTO `sub_type_table` VALUES (32, 6, '台灯');
INSERT INTO `sub_type_table` VALUES (33, 6, '地灯');
INSERT INTO `sub_type_table` VALUES (34, 6, '吊灯');
INSERT INTO `sub_type_table` VALUES (35, 6, '夜灯');
INSERT INTO `sub_type_table` VALUES (36, 7, '床品4件套');
INSERT INTO `sub_type_table` VALUES (37, 7, '被芯');
INSERT INTO `sub_type_table` VALUES (38, 7, '枕芯');
INSERT INTO `sub_type_table` VALUES (39, 7, '床褥');
INSERT INTO `sub_type_table` VALUES (40, 7, '盖毯 · 围巾');
INSERT INTO `sub_type_table` VALUES (41, 7, '地毯');
INSERT INTO `sub_type_table` VALUES (42, 7, '抱枕 · 颈枕');
INSERT INTO `sub_type_table` VALUES (43, 7, '毛巾 · 浴巾');
INSERT INTO `sub_type_table` VALUES (44, 7, '收纳');
INSERT INTO `sub_type_table` VALUES (45, 8, '套装');
INSERT INTO `sub_type_table` VALUES (46, 8, '盘碗');
INSERT INTO `sub_type_table` VALUES (47, 8, '杯子');
INSERT INTO `sub_type_table` VALUES (48, 8, '储物');
INSERT INTO `sub_type_table` VALUES (49, 8, '托盘');
INSERT INTO `sub_type_table` VALUES (50, 9, '摆件 · 花瓶');
INSERT INTO `sub_type_table` VALUES (51, 9, '墙镜');
INSERT INTO `sub_type_table` VALUES (52, 9, '装饰画');

-- ----------------------------
-- Table structure for user_addr_table
-- ----------------------------
DROP TABLE IF EXISTS `user_addr_table`;
CREATE TABLE `user_addr_table`  (
  `addr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `addr_is_default` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' COMMENT '是否默认',
  `addr_province` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省',
  `addr_city` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市',
  `addr_district` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区',
  `addr_street` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '街道',
  `addr_detail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详细地址',
  `post_code` int(11) NULL DEFAULT NULL COMMENT '邮编',
  `addressee_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人姓名',
  `addressee_tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号码',
  PRIMARY KEY (`addr_id`) USING BTREE,
  INDEX `FK_Reference_23`(`user_id`) USING BTREE,
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`user_id`) REFERENCES `user_profile_table` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_addr_table
-- ----------------------------
INSERT INTO `user_addr_table` VALUES (1, 10000, 'false', '四川', '成都', '武侯区', '桂溪街道', '益州大道179号', 739276, '张三', '17635264836');

-- ----------------------------
-- Table structure for user_profile_table
-- ----------------------------
DROP TABLE IF EXISTS `user_profile_table`;
CREATE TABLE `user_profile_table`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_account_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `user_nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'user' COMMENT '用户密码',
  `user_tel_num` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户手机号',
  `user_sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户性别',
  `user_reg_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '用户注册时间',
  `user_birthday` date NULL DEFAULT NULL COMMENT '用户出生日期',
  `user_icon_path` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10001 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户基本信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_profile_table
-- ----------------------------
INSERT INTO `user_profile_table` VALUES (10000, 'admin', '张三', 'user', '17283652765', NULL, '2019-06-03 20:48:57', '1994-07-16', NULL);

SET FOREIGN_KEY_CHECKS = 1;
