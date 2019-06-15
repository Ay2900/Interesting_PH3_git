/*
 Navicat Premium Data Transfer

 Source Server         : ThinkPad X1
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : interesting_ph3

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 12/06/2019 09:36:04
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
  PRIMARY KEY (`attr_option_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '属性选项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for attr_table
-- ----------------------------
DROP TABLE IF EXISTS `attr_table`;
CREATE TABLE `attr_table`  (
  `attr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性id',
  `attr_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性名称',
  PRIMARY KEY (`attr_id`) USING BTREE
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
  PRIMARY KEY (`collection_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment_pic_table
-- ----------------------------
DROP TABLE IF EXISTS `comment_pic_table`;
CREATE TABLE `comment_pic_table`  (
  `comment_pic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论图片id',
  `comment_id` int(11) NOT NULL COMMENT '评论id',
  `comment_pic_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片url',
  PRIMARY KEY (`comment_pic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_pic_table
-- ----------------------------
INSERT INTO `comment_pic_table` VALUES (1, 2, '/project/public/images/show_comments/ch1.jpg');
INSERT INTO `comment_pic_table` VALUES (2, 2, '/project/public/images/show_comments/ch1.jpg');
INSERT INTO `comment_pic_table` VALUES (3, 2, '/project/public/images/show_comments/ch3.jpg');
INSERT INTO `comment_pic_table` VALUES (4, 4, '/project/public/images/show_comments/ch4.jpg');
INSERT INTO `comment_pic_table` VALUES (5, 4, '/project/public/images/show_comments/ch5.jpg');

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
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_table
-- ----------------------------
INSERT INTO `comment_table` VALUES (1, 2, 2, '2019-06-11 16:59:29', '气球沙发多用，在阳台玄关，围坐客厅，都很好看，性价比超高，放在家里很实用。真心很喜欢，希望多出一些，希望造作越来越好。美丽多用。');
INSERT INTO `comment_table` VALUES (2, 1, 5, '2019-06-11 16:54:44', '睡了一年才来评价，云帛床搭配深海沉睡床垫，这个家保留的两个卧室都是这样的组合，非常棒。云帛床设计简洁，靠背和两侧都没有向床的外围延伸，满足了我有限空间里又想要1米8大床的需求，可拆卸的边桌更是节省空间和自由搭配，床套也可以拆下来换洗，两个卧室可以交换安装，隔一段时间就来个新鲜感，不过床套可以多出一点好看的颜色就更棒了。又看上了远航床，想把对于客卧1m8有点大的云帛床放到父母家，可是因嫌弃搬运麻烦被无情拒绝，只有暂时搁置。');
INSERT INTO `comment_table` VALUES (3, 4, 2, '2019-06-11 17:01:59', NULL);
INSERT INTO `comment_table` VALUES (4, 1, 4, '2019-06-10 15:02:31', '东西收到时候有些意外的，比想象中要更加低一些，排骨架当时还觉得有些超前，使用一年后真是别的床已经没法睡了，期间清理时候发现有几个螺丝不匹配，可能当时安装有些问题，反馈给官方后给邮寄了新的，自己换上了。态度还是挺好的。');
INSERT INTO `comment_table` VALUES (5, 1, 3, '2019-06-09 17:12:06', '云帛床跟我家主题色调统一，尊享主卧空间，好高级的配色，加之可拆洗的布艺，简直无可挑剔，底下还可以放储物盒，不过我打算放行李箱，毕竟家里空间有限，合理利用空间，');
INSERT INTO `comment_table` VALUES (6, 1, 5, '2019-06-13 11:24:22', '这宽款云锦床是在我们还没到选家具的时候就心仪已久，非常简约大气，放在次卧或是主卧都很适合，时期已到毫不犹豫就下手，立马解决不再考虑其他品牌的问题～耶');
INSERT INTO `comment_table` VALUES (7, 1, 4, '2019-06-03 11:22:24', '一见倾心的设计，买的时候没有了米白色，下单的时候还有些遗憾。然而一切都是最好的安排，收到这个颜色也特别喜欢，靠背特别舒服，无论是靠在那里玩玩手机，还是读本书，简约的设计真是大爱呀，家里就是要造作一点。');
INSERT INTO `comment_table` VALUES (8, 1, 3, '2019-06-07 15:21:06', '纠结了很久最后决定买这款灰色的云帛床，因床垫还没回一直没晒单。很搭我家的简约格调。特别做得好的是售后，因快递，一快床板有点小问题，造作第一时间补发了，给造作大。');
INSERT INTO `comment_table` VALUES (9, 1, 4, '2019-06-14 19:33:56', '本来买了一个，后来看来看去也没有看到更合适的，就又一样的床再买一个放主卧。很满意，简洁大方。来安装的师傅也很认真负责，穿着鞋套，帮忙搬床垫，走的时候又把各种包装纸都带走，非常好。');
INSERT INTO `comment_table` VALUES (10, 1, 5, '2019-05-15 11:34:32', '现在是造作的忠实粉丝了，隔一段时间就像添置点造作的家具。创非常棒，质量也很好，请放心下单。真的很不错，所有的东西都想搬回家。');
INSERT INTO `comment_table` VALUES (11, 1, 3, '2019-05-07 11:35:04', '云帛床非常精致，特别是不撞腿的设计和两边的小翅膀床头柜得到了家人的一致好评。可拆卸的床头包布也很实用。灰米色很百搭，考虑之后作为婚床要铺红色的四件套，更合适。');
INSERT INTO `comment_table` VALUES (12, 1, 4, '2019-06-06 12:35:53', '儿子相中的床，蓝色的是他的最爱。非常好看的简约风！蓝色的牛仔布贴合的非常棒哦！8022工号客服，非常的有耐心啊和我一起选组合，用最优的组合，花最少的钱！');

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
  PRIMARY KEY (`designer_award_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设计师荣誉表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for designer_table
-- ----------------------------
DROP TABLE IF EXISTS `designer_table`;
CREATE TABLE `designer_table`  (
  `designer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设计师id',
  `designer_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设计师名字',
  `designer_birth_place` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '巴黎' COMMENT '设计师籍贯',
  `designer_hold_place` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '法国' COMMENT '设计师驻地',
  `designer_motto` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '“关于未来，我有许多计划，但其中重要的是，与造作合作成功。”' COMMENT '设计师座右铭',
  `designer_main_pic_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设计师主图片路径',
  `designer_bgi_pic_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设计师产品介绍背景图片路径',
  `designer_describe` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`designer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设计师表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of designer_table
-- ----------------------------
INSERT INTO `designer_table` VALUES (1, 'Luca Nichetto', '斯德哥尔摩', '意大利', '“关于未来，我有许多计划，但其中重要的是，与造作合作成功。”', '/project/public/images/designer/main_pic/de01.jpg', 'asdasjhdldas', '意大利及瑞典著名建筑师、设计师，造作艺术总监。2013年Interior Innovation Adward和Elle Decor Italy联合授予的年度设计师，IMM Cologne荣誉嘉宾，2009年EDIDA年度青年设计师，2008年IF产品设计奖，2008年Gran Design Award.作为欧洲久负盛名的设计师，两个设计事务所的创始人，各大国际设计展的设计师和策展人，Luca亲手主持过上百个家具和工业设计项目，但却保始终持着一颗匠人之心。');
INSERT INTO `designer_table` VALUES (2, 'Noé Duchaufour Lawrance', '巴黎', '法国', '“我一直相信，每件物体的内核都是一股特别的力量，这份力作为一根隐形纽带将人类本体的感知能力与自然、爱和一切联结。”', '/project/public/images/designer/main_pic/de02.jpg', 'adsad', 'Noé Duchaufour Lawrance出生在1975年的法国小城Mende，毕业于法国国立高等应用艺术和艺术专业学院金属雕塑专业的他，后来又选择继续进修于Mobilier des Arts Décoratifs。Noé Duchaufour Lawrance的设计生涯初始于至今被人津津乐道的Sketch restaurant项目，2003年他成立了意为“新生”的个人工作室“Néonata”；2007年他第一次得到了Maison & Objet show的年度设计师称号，后来的他成为Wallpaper百强设计师之一，并将Elle Déco International Design Awards、Wallpaper Design Awards、Red dot等设计界有分量的奖项通通拿了个遍。');
INSERT INTO `designer_table` VALUES (3, 'Palomba Serafini Associati', '米兰', '意大利', '“始终保持一份为人们创造全新设计与体验的初心与激情。”', '/project/public/images/designer/main_pic/de03.jpg', 'sdadsad', 'Palomba Serafini Associati （ps+a）是设计界的模范CP，一同于米兰成立了设计工作室。早在1994年，刚刚从罗马大学建筑系毕业的Roberto Palomba和Ludovica Serafini在交出了自己的第一个设计项目时，就出人意料的一举拿下了意大利国内最为重要的奖项Compasso d’oro。这些年来，他们拿下了包括WallpaperDesign Award、Good DesignAward、iF ProductDesign Award等一系列设计界重量级奖项，逐步奠定了他们在欧洲设计界的声誉。');
INSERT INTO `designer_table` VALUES (4, 'Claesson Koivisto Rune', '斯德哥尔摩', '瑞典', '“超越标新立异”', '/project/public/images/designer/main_pic/de04.jpg', 'sadasd', 'Claesson Koivisto Rune是来自瑞典的设计团体，由Mårten Claesson, Eero Koivisto和Ola Rune三人在1995年时创立于斯德哥尔摩。在设计圈内颇受好评的跨多学科的设计事务所，不仅限于建筑设计，更参与到空间、家具家居、电器、平面图案等众多设计领域。业内被称做“得奖专业户”的他们，拿下60多项设计界重量级奖项，更成为Red Dot Design Award史上第一个同时拿下五个领域奖项的设计事务所。');
INSERT INTO `designer_table` VALUES (5, 'Richard Hutten', '荷兰', '鹿特丹', '“功能性永远只是起点，而不是终点；对于设计来说，艺术性才是更为重要的。”', '/project/public/images/designer/main_pic/de05.jpg', 'sadsad', '荷兰设计师，1991年毕业于埃因霍芬设计学院，同年成立了自己的设计工作室。1993年，加入Droog Design，并成为其重要核心成员。作为一位充满欢乐与创新的革新者，Richard Hutten对于设计有着自己的理解和定位。Red Dot Award、LAI award、the German Design Award, 都曾被他揽入囊中。荷兰设计的标志性人物，他的作品曾在the MoMA New York、Stedelijk Museum Amsterdam、Centraal Museum Utrecht等展出。');
INSERT INTO `designer_table` VALUES (6, 'Constance Guisset', '巴黎', '法国', '一位被Philippe Starck称作“dreamer”的设计师', '/project/public/images/designer/main_pic/de06.jpg', 'sadsad', 'Claesson Koivisto Rune是来自瑞典的设计团体，由Mårten Claesson, Eero Koivisto和Ola Rune三人在1995年时创立于斯德哥尔摩。在设计圈内颇受好评的跨多学科的设计事务所，不仅限于建筑设计，更参与到空间、家具家居、电器、平面图案等众多设计领域。业内被称做“得奖专业户”的他们，拿下60多项设计界重量级奖项，更成为Red Dot Design Award史上第一个同时拿下五个领域奖项的设计事务所。');
INSERT INTO `designer_table` VALUES (7, 'Keiji Ashizawa', '英国', '英国', '设计师是一个可以通过产品设计让人感到快乐的美妙工种。', '/project/public/images/designer/main_pic/de07.jpg', 'sds', 'Keiji Ashizawa，建筑师、室内设计师、家具设计师，目前工作生活于日本东京，1995年毕业于横滨大学建筑专业，2005年于东京成立工作室Keiji Ashizawa Design。从大学毕业到正式成立工作室的十年时间里，Keiji专注于建筑设计及钢铁工艺，十年的实践经历，使得Keiji对钢铁材质的价值有着更深入的理解，同时也在实践的过程中获得了一些独特的技巧，这些积累都在之后延伸影响了他的设计方法。 Keiji的家具设计，简洁，明了，不论是组装的成品，还是拆卸后的部件归置，都体现出其精细的匠人之心。');
INSERT INTO `designer_table` VALUES (8, 'BCXSY', '荷兰', '阿姆斯特丹', '“我们喜欢探索不同领域，尝试不同材料、技术或语言，让设计保持新鲜”', '/project/public/images/designer/main_pic/de08.jpg', 'sda', 'BCXSY，成立于2007年的荷兰知名设计工作室，是以色列设计师Boaz Cohen和日本Sayaka Yamamoto之间的跨学科合作。设计师拥有东西方两种独特的文化背景，擅长以独特的叙事手法，将东西方文化融合，通过概念传递、身份塑造，图案绘制以及氛围营造等手段，用戏剧化的方式，呈现纯粹而带有情感的作品。在过去几年中，BCXSY因其设计项目对社会的影响而赢得了国际的赞誉，作品也在国际众多负有盛名的设计展中亮相，并被伦敦维多利亚和阿尔伯特博物馆、香港M+博物馆等永久收藏。');

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
  PRIMARY KEY (`login_log_id`) USING BTREE
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
  PRIMARY KEY (`order_SKU_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单商品关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_table
-- ----------------------------
DROP TABLE IF EXISTS `order_table`;
CREATE TABLE `order_table`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `addr_id` int(11) NULL DEFAULT NULL COMMENT '地址id',
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
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for package_sku_table
-- ----------------------------
DROP TABLE IF EXISTS `package_sku_table`;
CREATE TABLE `package_sku_table`  (
  `package_item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合内容条目id',
  `package_id` int(11) NOT NULL COMMENT '组合id',
  `SKU_code` int(8) NOT NULL COMMENT 'SKU编码',
  PRIMARY KEY (`package_item_id`) USING BTREE
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
  PRIMARY KEY (`product_series_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品系列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_series_table
-- ----------------------------
INSERT INTO `product_series_table` VALUES (1, 1, '美术馆系列');
INSERT INTO `product_series_table` VALUES (2, 2, 'COSMO系列');
INSERT INTO `product_series_table` VALUES (3, 3, '画板系列');
INSERT INTO `product_series_table` VALUES (4, 4, '山雪系列');
INSERT INTO `product_series_table` VALUES (5, 5, '青山系列');
INSERT INTO `product_series_table` VALUES (6, 6, '贡多拉系列');
INSERT INTO `product_series_table` VALUES (7, 7, '朱雀系列');

-- ----------------------------
-- Table structure for shopping_car_item_table
-- ----------------------------
DROP TABLE IF EXISTS `shopping_car_item_table`;
CREATE TABLE `shopping_car_item_table`  (
  `shopping_car_item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车条目id',
  `SKU_code` int(8) NOT NULL COMMENT 'SKU编码',
  `shopping_car_id` int(11) NULL DEFAULT NULL COMMENT '购物车id',
  `shopping_car_SKU_num` int(11) NOT NULL COMMENT 'SKU数量',
  PRIMARY KEY (`shopping_car_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车条目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shopping_car_table
-- ----------------------------
DROP TABLE IF EXISTS `shopping_car_table`;
CREATE TABLE `shopping_car_table`  (
  `shopping_car_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`shopping_car_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sku_attr_table
-- ----------------------------
DROP TABLE IF EXISTS `sku_attr_table`;
CREATE TABLE `sku_attr_table`  (
  `attr_col_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性选项条目id',
  `attr_option_id` int(11) NOT NULL COMMENT '属性选项id',
  `SKU_code` int(8) NOT NULL COMMENT 'SKU编码',
  PRIMARY KEY (`attr_col_id`) USING BTREE
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
  PRIMARY KEY (`product_pic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SKU图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sku_spec_table
-- ----------------------------
DROP TABLE IF EXISTS `sku_spec_table`;
CREATE TABLE `sku_spec_table`  (
  `spec_col_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格选项条目id',
  `spec_option_id` int(11) NOT NULL COMMENT '规格选项id',
  `SKU_code` int(8) NOT NULL COMMENT 'SKU编码',
  PRIMARY KEY (`spec_col_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SKU_规格选项关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sku_spec_table
-- ----------------------------
INSERT INTO `sku_spec_table` VALUES (5, 5, 3);
INSERT INTO `sku_spec_table` VALUES (6, 6, 3);
INSERT INTO `sku_spec_table` VALUES (7, 7, 3);
INSERT INTO `sku_spec_table` VALUES (8, 8, 3);
INSERT INTO `sku_spec_table` VALUES (9, 9, 3);
INSERT INTO `sku_spec_table` VALUES (10, 10, 3);
INSERT INTO `sku_spec_table` VALUES (11, 11, 3);
INSERT INTO `sku_spec_table` VALUES (12, 12, 4);
INSERT INTO `sku_spec_table` VALUES (13, 13, 5);
INSERT INTO `sku_spec_table` VALUES (14, 14, 6);
INSERT INTO `sku_spec_table` VALUES (15, 15, 7);
INSERT INTO `sku_spec_table` VALUES (16, 16, 8);
INSERT INTO `sku_spec_table` VALUES (17, 17, 9);
INSERT INTO `sku_spec_table` VALUES (18, 18, 10);
INSERT INTO `sku_spec_table` VALUES (19, 5, 6);
INSERT INTO `sku_spec_table` VALUES (20, 6, 6);
INSERT INTO `sku_spec_table` VALUES (21, 7, 6);
INSERT INTO `sku_spec_table` VALUES (22, 5, 4);
INSERT INTO `sku_spec_table` VALUES (23, 6, 4);
INSERT INTO `sku_spec_table` VALUES (24, 7, 4);
INSERT INTO `sku_spec_table` VALUES (25, 8, 4);
INSERT INTO `sku_spec_table` VALUES (26, 9, 4);
INSERT INTO `sku_spec_table` VALUES (27, 10, 4);
INSERT INTO `sku_spec_table` VALUES (28, 5, 5);
INSERT INTO `sku_spec_table` VALUES (29, 6, 5);
INSERT INTO `sku_spec_table` VALUES (30, 7, 5);
INSERT INTO `sku_spec_table` VALUES (31, 8, 5);
INSERT INTO `sku_spec_table` VALUES (32, 9, 5);
INSERT INTO `sku_spec_table` VALUES (33, 10, 5);
INSERT INTO `sku_spec_table` VALUES (34, 8, 6);
INSERT INTO `sku_spec_table` VALUES (35, 9, 6);
INSERT INTO `sku_spec_table` VALUES (36, 10, 6);
INSERT INTO `sku_spec_table` VALUES (37, 5, 7);
INSERT INTO `sku_spec_table` VALUES (38, 6, 7);
INSERT INTO `sku_spec_table` VALUES (39, 7, 7);
INSERT INTO `sku_spec_table` VALUES (40, 8, 7);
INSERT INTO `sku_spec_table` VALUES (41, 9, 7);
INSERT INTO `sku_spec_table` VALUES (42, 10, 7);
INSERT INTO `sku_spec_table` VALUES (43, 5, 8);
INSERT INTO `sku_spec_table` VALUES (44, 6, 8);
INSERT INTO `sku_spec_table` VALUES (45, 7, 8);
INSERT INTO `sku_spec_table` VALUES (46, 9, 8);
INSERT INTO `sku_spec_table` VALUES (47, 10, 8);
INSERT INTO `sku_spec_table` VALUES (48, 5, 9);
INSERT INTO `sku_spec_table` VALUES (49, 6, 9);
INSERT INTO `sku_spec_table` VALUES (50, 7, 9);
INSERT INTO `sku_spec_table` VALUES (51, 8, 9);
INSERT INTO `sku_spec_table` VALUES (52, 9, 9);
INSERT INTO `sku_spec_table` VALUES (53, 10, 9);
INSERT INTO `sku_spec_table` VALUES (54, 5, 10);
INSERT INTO `sku_spec_table` VALUES (55, 6, 10);
INSERT INTO `sku_spec_table` VALUES (56, 7, 10);
INSERT INTO `sku_spec_table` VALUES (57, 8, 10);
INSERT INTO `sku_spec_table` VALUES (58, 9, 10);
INSERT INTO `sku_spec_table` VALUES (59, 10, 10);

-- ----------------------------
-- Table structure for sku_table
-- ----------------------------
DROP TABLE IF EXISTS `sku_table`;
CREATE TABLE `sku_table`  (
  `SKU_code` int(8) NOT NULL AUTO_INCREMENT COMMENT 'SKU编码',
  `SPU_code` int(8) NOT NULL COMMENT 'SPU编码',
  `SKU_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SKU名称',
  `purchase_price` int(11) NOT NULL COMMENT '进价',
  `sell_price` int(11) NOT NULL COMMENT '售价',
  `stock` int(11) NOT NULL COMMENT '库存',
  `log_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '录入时间',
  `produce_date` timestamp(0) NOT NULL COMMENT '生产日期',
  PRIMARY KEY (`SKU_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SKU表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sku_table
-- ----------------------------
INSERT INTO `sku_table` VALUES (3, 1, '转角大三人座', 4500, 8599, 100, '2019-06-11 19:26:15', '2019-03-05 16:56:58');
INSERT INTO `sku_table` VALUES (4, 1, '大三人座', 4000, 7599, 100, '2019-06-11 19:26:17', '2019-03-05 16:56:58');
INSERT INTO `sku_table` VALUES (5, 1, '转角三人座', 3000, 5499, 100, '2019-06-11 19:26:19', '2019-05-22 19:03:59');
INSERT INTO `sku_table` VALUES (6, 1, '三人座', 2900, 5899, 100, '2019-06-11 19:26:20', '2019-05-22 19:03:59');
INSERT INTO `sku_table` VALUES (7, 1, '转角三人座', 2700, 5499, 100, '2019-06-11 19:26:22', '2019-05-22 19:03:59');

-- ----------------------------
-- Table structure for spec_option_table
-- ----------------------------
DROP TABLE IF EXISTS `spec_option_table`;
CREATE TABLE `spec_option_table`  (
  `spec_option_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格选项id',
  `spec_id` int(11) NOT NULL COMMENT '规格id',
  `spec_option_value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格选项值',
  PRIMARY KEY (`spec_option_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '规格选项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spec_option_table
-- ----------------------------
INSERT INTO `spec_option_table` VALUES (5, 1, '新版米黄');
INSERT INTO `spec_option_table` VALUES (6, 1, '新版雾蓝');
INSERT INTO `spec_option_table` VALUES (7, 1, '新版铅灰');
INSERT INTO `spec_option_table` VALUES (8, 1, '经典版雾蓝');
INSERT INTO `spec_option_table` VALUES (9, 1, '经典版咖棕');
INSERT INTO `spec_option_table` VALUES (10, 1, '经典版月灰');
INSERT INTO `spec_option_table` VALUES (11, 2, '转角大三人座');
INSERT INTO `spec_option_table` VALUES (12, 2, '大三人座');
INSERT INTO `spec_option_table` VALUES (13, 2, '转角三人座');
INSERT INTO `spec_option_table` VALUES (14, 2, '三人座');
INSERT INTO `spec_option_table` VALUES (15, 2, '转角双人座');
INSERT INTO `spec_option_table` VALUES (16, 2, '双人座');
INSERT INTO `spec_option_table` VALUES (17, 2, '扶手单人座');
INSERT INTO `spec_option_table` VALUES (18, 2, '单人座');
INSERT INTO `spec_option_table` VALUES (19, 2, '脚墩');
INSERT INTO `spec_option_table` VALUES (20, 3, '沙发套');
INSERT INTO `spec_option_table` VALUES (21, 3, '沙发');

-- ----------------------------
-- Table structure for spec_table
-- ----------------------------
DROP TABLE IF EXISTS `spec_table`;
CREATE TABLE `spec_table`  (
  `spec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格id',
  `parameter_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参数名称',
  PRIMARY KEY (`spec_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '规格表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spec_table
-- ----------------------------
INSERT INTO `spec_table` VALUES (1, '颜色');
INSERT INTO `spec_table` VALUES (2, '款型');
INSERT INTO `spec_table` VALUES (3, '类别');
INSERT INTO `spec_table` VALUES (4, '枕芯材质');

-- ----------------------------
-- Table structure for spu_table
-- ----------------------------
DROP TABLE IF EXISTS `spu_table`;
CREATE TABLE `spu_table`  (
  `SPU_code` int(8) NOT NULL AUTO_INCREMENT COMMENT 'SPU编码',
  `designer_id` int(11) NULL DEFAULT NULL COMMENT '设计师id',
  `product_series_id` int(11) NULL DEFAULT NULL COMMENT '产品系列id',
  `sub_type_id` int(11) NULL DEFAULT NULL COMMENT '二级分类编码',
  `SPU_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SPU名称',
  `SPU_describe` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SPU简介',
  PRIMARY KEY (`SPU_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SPU表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spu_table
-- ----------------------------
INSERT INTO `spu_table` VALUES (1, 1, 1, 2, '造作大先生沙发®｜Mr.Big Sofa', '超宽大，极舒适，可拆洗的全尺寸沙发');
INSERT INTO `spu_table` VALUES (2, 2, 2, 5, '云帛床®｜Cloud Bed', '轻软不撞腿，优美与舒适的平衡');
INSERT INTO `spu_table` VALUES (3, 3, 3, 14, '美术馆陈列柜｜Gallery Showcase', '现代的丰饶，空间的画作');
INSERT INTO `spu_table` VALUES (4, 4, 4, 24, '丝绸椅™｜Silk Chair', '不超过1mm的组件间隙，定义精密的舒适与优美曲度');
INSERT INTO `spu_table` VALUES (5, 5, 5, 28, '\r\n瓦檐餐桌® 1.3/1.8米｜Tab Series', '东方飞檐的现代日常，精致空间的优美餐桌');
INSERT INTO `spu_table` VALUES (6, 6, 6, 32, '\r\n光笼®｜Light Cage', '双层金属网编，来自斯德哥尔摩的氛围造型大师');
INSERT INTO `spu_table` VALUES (7, 7, 7, 36, '\r\n造作云杉天丝高支4件套床品™｜Spruce Bed Linen™', '100%绿色环保天丝，会呼吸的舒凉安睡');
INSERT INTO `spu_table` VALUES (8, 8, 8, 45, '\r\n云笼果盘｜Cage Fruit Tray', 'Ins级装饰美，给每日鲜果的精彩仪式');
INSERT INTO `spu_table` VALUES (9, 8, 8, 50, '\r\n美术馆墙镜｜Gallery Mirror', '现代的丰饶，空间的画作');

-- ----------------------------
-- Table structure for sub_type_table
-- ----------------------------
DROP TABLE IF EXISTS `sub_type_table`;
CREATE TABLE `sub_type_table`  (
  `sub_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '二级分类编码',
  `main_type_code` int(8) NOT NULL COMMENT '一级分类编码',
  `sub_type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '二级分类名称',
  PRIMARY KEY (`sub_type_id`) USING BTREE
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
  PRIMARY KEY (`addr_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_addr_table
-- ----------------------------
INSERT INTO `user_addr_table` VALUES (1, 4, 'false', '四川省', '成都市', '金堂县', '三星镇', '希望未来城11栋802', 610001, '盼盼', '15680600000');
INSERT INTO `user_addr_table` VALUES (2, 4, 'true', '四川省', '成都市', '双流区', '华府大道', '光明城市12栋', 610020, '盼盼', '15680600000');
INSERT INTO `user_addr_table` VALUES (3, 1, 'false', '四川省', '成都市', '彭州市', '升平镇', '皇后大道33号', 611930, '张三', '16273829723');
INSERT INTO `user_addr_table` VALUES (4, 3, 'false', '山西省', '长治市', '长治市', '升平镇', '皇后大道628号', 272938, '王五', '18293847328');
INSERT INTO `user_addr_table` VALUES (5, 1, 'true', '北京市', '北京城区', '海淀区', '东湖街道', '人民路769号', 100938, '张三', '18472637489');
INSERT INTO `user_addr_table` VALUES (6, 2, 'false', '四川省', '巴中市', '恩阳区', '义杨大道', '魁字街道2号', 636064, '王五1', '13576432213');
INSERT INTO `user_addr_table` VALUES (7, 6, 'false', '重庆市', '重庆城区', '綦江区', '北街', '綦江花园', 400020, '牛牛', '15680600001');
INSERT INTO `user_addr_table` VALUES (8, 2, 'false', '重庆市', '重庆市', '万州区', '金龙路', '滨江路1号', 654232, '王1五', '13467754434');
INSERT INTO `user_addr_table` VALUES (9, 14, 'false', '四川省', '绵阳市', '游仙区', '小枧沟镇', '嘉兴警苑', 621000, 'stay', '13398352233');
INSERT INTO `user_addr_table` VALUES (10, 6, 'false', '重庆市', '重庆城区', '合川区', '上什街', '电力新村', 420010, '牛牛', '15680600001');
INSERT INTO `user_addr_table` VALUES (11, 10, 'false', '广东省', '汕头市', '潮阳区', '朝阳街', '大润发', 620001, '丫蛋', '15555463215');
INSERT INTO `user_addr_table` VALUES (12, 14, 'false', '四川省', '成都市', '龙泉驿区', '西河镇', '胜利家园', 610005, 'stay', '18380102229');
INSERT INTO `user_addr_table` VALUES (13, 7, 'false', '江苏省', '苏州市', '吴江区', '大一路', '梨子街22号', 644232, '托尼', '15345566778');
INSERT INTO `user_addr_table` VALUES (14, 10, 'false', '广东省', '潮州市', '饶平区', '古巷街', '龙湖公园', 620003, '丫蛋', '15555463215');
INSERT INTO `user_addr_table` VALUES (15, 16, 'false', '四川省', '成都市', '高新区', '华府大道', '骑龙小区', 610002, '卡农', '15181690527');
INSERT INTO `user_addr_table` VALUES (16, 16, 'false', '四川省', '成都市', '龙泉驿区', '车城大道', '师大花园', 610003, '卡农', '13325256136');
INSERT INTO `user_addr_table` VALUES (17, 11, 'false', '四川省', '南充市', '高坪区', '阳春路', '御景江山', 637100, '滴滴', '13569875236');
INSERT INTO `user_addr_table` VALUES (18, 11, 'false', '四川省', '南充市', '高坪区', '建设路', '白塔中学', 637100, '滴滴', '13569875236');
INSERT INTO `user_addr_table` VALUES (19, 18, 'false', '四川省', '广元市', '旺苍县', '嘉川镇', '煤铁厂', 628205, '天灰', '18582581952');
INSERT INTO `user_addr_table` VALUES (20, 7, 'false', '江苏省', '苏州市', '吴中区', '峰里路', '五合街11号', 637462, '托尼', '15344422321');
INSERT INTO `user_addr_table` VALUES (21, 18, 'false', '四川省', '广元市', '旺苍县', '老城区', '九十二队', 628200, '天灰', '18381599775');
INSERT INTO `user_addr_table` VALUES (22, 12, 'false', '北京市', '北京城区', '通州区', '图书城街', '台湖舞美剧场', 641000, '浩浩', '14536958569');
INSERT INTO `user_addr_table` VALUES (23, 12, 'false', '四川省', '成都市', '锦江区', '橡树林路', '域上和美先锋剧场', 641002, '浩浩', '14536958569');
INSERT INTO `user_addr_table` VALUES (24, 19, 'false', '四川省', '绵阳市', '涪城区', '高水', '桂圆雅居', 621000, '吉诺比利', '13545687899');
INSERT INTO `user_addr_table` VALUES (25, 13, 'false', '山西省', '太原市', '晋源区', '佳林路', '大学路', 622131, '苏三', '15413424232');
INSERT INTO `user_addr_table` VALUES (26, 19, 'false', '四川省', '成都市', '龙泉驿区', '黄土镇', '神龙汽车', 610005, '吉诺比利', '13778079794');
INSERT INTO `user_addr_table` VALUES (27, 13, 'false', '山西省', '太原市', '晋源区', '一和同路', '林子街1号', 654421, '苏三', '15423224211');
INSERT INTO `user_addr_table` VALUES (28, 15, 'false', '山东省', '济南市', '市中区', '向路街', '阿斯达路', 621341, '飞飞飞', '15332425663');
INSERT INTO `user_addr_table` VALUES (29, 20, 'false', '重庆市', '重庆城区', '南岸区', '东街', '清江怡苑', 626565, 'paker', '13785582226');
INSERT INTO `user_addr_table` VALUES (30, 15, 'false', '山东省', '济南市', '市中区', '天上街', '安迪路1号', 632312, '飞飞飞', '15423231213');
INSERT INTO `user_addr_table` VALUES (31, 20, 'false', '四川省', '绵阳市', '高新区', '双碑', '慕和南道', 621000, 'paker', '18581585969');
INSERT INTO `user_addr_table` VALUES (32, 17, 'false', '浙江省', '温州市', '平阳区', '皮革厂', '一签路2号', 642323, '苏大强', '15332342525');
INSERT INTO `user_addr_table` VALUES (33, 17, 'false', '浙江省', '温州市', '平阳路', '建安路', '利川街11号', 623141, '苏大强', '13456675545');

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
  `user_icon_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户基本信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_profile_table
-- ----------------------------
INSERT INTO `user_profile_table` VALUES (1, 'ty72618', '张三', 'user', '17263749876', '男', '2019-06-11 15:49:01', '2017-06-23', '/project/public/images/user_icon/t1.jpg');
INSERT INTO `user_profile_table` VALUES (2, '9527', '王五', 'user', '13358930912', '女', '2019-06-11 15:26:22', '2008-02-11', '/project/public/images/user_icon/ch1.jpg');
INSERT INTO `user_profile_table` VALUES (3, 'tyj8273917', 'pluto', 'user', '17263827263', '男', '2019-06-11 15:14:00', '2019-03-28', '/project/public/images/user_icon/1.jpg');
INSERT INTO `user_profile_table` VALUES (4, '99601', '盼盼', 'user', '15680600000', '女', '2019-06-11 15:26:41', '2009-11-11', '/project/public/images/user_icon/tang01.png');
INSERT INTO `user_profile_table` VALUES (5, 'ty16253849', '因子', 'user', '18362541527', '男', '2019-06-11 15:47:32', '1994-08-18', '/project/public/images/user_icon/t2.jpg');
INSERT INTO `user_profile_table` VALUES (6, '99602', '牛牛', 'user', '15680600001', '男', '2019-06-11 15:29:01', '2008-05-21', '/project/public/images/user_icon/tang02.png');
INSERT INTO `user_profile_table` VALUES (7, 'chen12', '托尼', 'user', '19447838283', '男', '2019-06-11 15:32:44', '1999-02-22', '/project/public/images/user_icon/ch2.jpg');
INSERT INTO `user_profile_table` VALUES (8, 'ty83628462', 'Bobby', 'user', '15283736251', '男', '2019-06-11 15:47:36', '2004-06-24', '/project/public/images/user_icon/t3.jpg');
INSERT INTO `user_profile_table` VALUES (9, 'ty2739432', '叉叉', 'user', '17281736167', '男', '2019-06-11 15:47:41', '1935-07-11', '/project/public/images/user_icon/t4.jpg');
INSERT INTO `user_profile_table` VALUES (10, '99603', '丫蛋', 'user', '15555463215', '女', '2019-06-11 15:32:04', '1998-10-23', '/project/public/images/user_icon/tang03.png');
INSERT INTO `user_profile_table` VALUES (11, '99604', '滴滴', 'user', '13569875236', '女', '2019-06-11 15:32:55', '1997-11-05', '/project/public/images/user_icon/tang04.png');
INSERT INTO `user_profile_table` VALUES (12, '99605', '浩浩', 'user', '14536958569', '男', '2019-06-11 15:34:04', '1997-11-13', '/project/public/images/user_icon/tang05.png');
INSERT INTO `user_profile_table` VALUES (13, 'ass1211', '苏三', 'user', '15311244523', '女', '2019-06-11 15:39:07', '1982-07-11', '/project/public/images/user_icon/ch3.jpg');
INSERT INTO `user_profile_table` VALUES (14, 'noah', 'stay', 'user', '13778071952', '女', '2019-06-11 15:39:01', '1993-06-26', '/project/public/images/user_icon/kaka1.png');
INSERT INTO `user_profile_table` VALUES (15, 'kda7662', '飞飞飞', 'user', '13899910234', '男', '2019-06-11 15:39:35', '1992-09-21', '/project/public/images/user_icon/ch4.jpg');
INSERT INTO `user_profile_table` VALUES (16, 'immortal', '卡农', 'user', '15181690527', '男', '2019-06-11 15:40:09', '1985-06-22', '/project/public/images/user_icon/kaka2.png');
INSERT INTO `user_profile_table` VALUES (17, '7812sfs', '苏大强', 'user', '13911345321', '男', '2019-06-11 15:41:08', '1997-03-17', '/project/public/images/user_icon/ch5.jpg');
INSERT INTO `user_profile_table` VALUES (18, 'indifferen', '天灰', 'user', '18316549875', '女', '2019-06-11 15:41:34', '1990-01-02', '/project/public/images/user_icon/kaka3.png');
INSERT INTO `user_profile_table` VALUES (19, 'keep', '吉诺比利', 'user', '15598356136', '男', '2019-06-11 15:43:55', '1986-07-07', '/project/public/images/user_icon/kaka4.png');
INSERT INTO `user_profile_table` VALUES (20, '187', 'paker', 'user', '13355661212', '男', '2019-06-11 15:45:29', '1996-09-26', '/project/public/images/user_icon/kaka5.png');
INSERT INTO `user_profile_table` VALUES (21, 'faker2016', 'faker', 'user', '13542200620', '男', '2019-06-11 16:29:48', '1995-07-13', '/project/public/images/user_icon/u=1205937707,361227194.jpg');
INSERT INTO `user_profile_table` VALUES (22, 'xiao3221', '晓晓', 'user', '18203028841', '女', '2019-06-11 16:29:38', '1999-05-19', '/project/public/images/user_icon/u=145782115,355549160.jpg');
INSERT INTO `user_profile_table` VALUES (23, 'xinhe8762', '皆是孤独', 'user', '13654021883', '男', '2019-06-11 16:32:21', '1993-12-24', '/project/public/images/user_icon/u=1544298584,36102297.jpg');
INSERT INTO `user_profile_table` VALUES (24, 'yan9420', ' 茉莉蜜茶', 'user', '15684990100', '女', '2019-06-11 16:34:42', '1998-08-11', '/project/public/images/user_icon/u=1937445174,213352882.jpg');
INSERT INTO `user_profile_table` VALUES (25, 'lemon321', '性格缺陷', 'user', '16425505411', '男', '2019-06-11 16:38:28', '1995-11-24', '/project/public/images/user_icon/u=3758354743,289299.jpg');

SET FOREIGN_KEY_CHECKS = 1;
