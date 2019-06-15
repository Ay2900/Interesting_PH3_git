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

 Date: 13/06/2019 21:26:35
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
  `attr_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性名称',
  PRIMARY KEY (`attr_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '属性表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for collection_table
-- ----------------------------
DROP TABLE IF EXISTS `collection_table`;
CREATE TABLE `collection_table`  (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏条目id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `SKU_code` bigint(20) NULL DEFAULT NULL COMMENT 'SKU编码',
  `collection_date` date NULL DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`collection_id`) USING BTREE,
  INDEX `FK_Reference_35`(`user_id`) USING BTREE,
  INDEX `FK_Reference_44`(`SKU_code`) USING BTREE,
  CONSTRAINT `FK_Reference_35` FOREIGN KEY (`user_id`) REFERENCES `user_profile_table` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_44` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment_pic_table
-- ----------------------------
DROP TABLE IF EXISTS `comment_pic_table`;
CREATE TABLE `comment_pic_table`  (
  `comment_pic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论图片id',
  `comment_id` int(11) NOT NULL COMMENT '评论id',
  `comment_pic_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片url',
  PRIMARY KEY (`comment_pic_id`) USING BTREE,
  INDEX `FK_Reference_34`(`comment_id`) USING BTREE,
  CONSTRAINT `FK_Reference_34` FOREIGN KEY (`comment_id`) REFERENCES `comment_table` (`comment_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_pic_table
-- ----------------------------
INSERT INTO `comment_pic_table` VALUES (61, 2, './images/show_comments/ch1.jpg');
INSERT INTO `comment_pic_table` VALUES (62, 2, './images/show_comments/ch1.jpg');
INSERT INTO `comment_pic_table` VALUES (63, 2, './images/show_comments/ch3.jpg');
INSERT INTO `comment_pic_table` VALUES (64, 4, './images/show_comments/ch4.jpg');
INSERT INTO `comment_pic_table` VALUES (65, 4, './images/show_comments/ch5.jpg');
INSERT INTO `comment_pic_table` VALUES (66, 4, './images/show_comments/ch6.jpg');
INSERT INTO `comment_pic_table` VALUES (67, 5, './images/show_comments/ch7.jpg');
INSERT INTO `comment_pic_table` VALUES (68, 5, './images/show_comments/ch8.jpg');
INSERT INTO `comment_pic_table` VALUES (69, 5, './images/show_comments/ch9.jpg');
INSERT INTO `comment_pic_table` VALUES (70, 6, './images/show_comments/ch10.jpg');
INSERT INTO `comment_pic_table` VALUES (71, 6, './images/show_comments/ch11.jpg');
INSERT INTO `comment_pic_table` VALUES (72, 6, './images/show_comments/ch12.jpg');
INSERT INTO `comment_pic_table` VALUES (73, 7, './images/show_comments/ch13.jpg');
INSERT INTO `comment_pic_table` VALUES (74, 7, './images/show_comments/ch14.jpg');
INSERT INTO `comment_pic_table` VALUES (75, 7, './images/show_comments/ch15.jpg');
INSERT INTO `comment_pic_table` VALUES (76, 8, './images/show_comments/ch16.jpg');
INSERT INTO `comment_pic_table` VALUES (77, 8, './images/show_comments/ch17.jpg');
INSERT INTO `comment_pic_table` VALUES (78, 8, './images/show_comments/ch18.jpg');
INSERT INTO `comment_pic_table` VALUES (79, 9, './images/show_comments/ch19.jpg');
INSERT INTO `comment_pic_table` VALUES (80, 9, './images/show_comments/ch20.jpg');
INSERT INTO `comment_pic_table` VALUES (81, 9, './images/show_comments/ch21.jpg');
INSERT INTO `comment_pic_table` VALUES (82, 10, './images/show_comments/ch22.jpg');
INSERT INTO `comment_pic_table` VALUES (83, 10, './images/show_comments/ch23.jpg');
INSERT INTO `comment_pic_table` VALUES (84, 10, './images/show_comments/ch24.jpg');
INSERT INTO `comment_pic_table` VALUES (85, 11, './images/show_comments/ch25.jpg');
INSERT INTO `comment_pic_table` VALUES (86, 11, './images/show_comments/ch26.jpg');
INSERT INTO `comment_pic_table` VALUES (87, 11, './images/show_comments/ch27.jpg');
INSERT INTO `comment_pic_table` VALUES (88, 12, './images/show_comments/ch28.jpg');
INSERT INTO `comment_pic_table` VALUES (89, 12, './images/show_comments/ch29.jpg');
INSERT INTO `comment_pic_table` VALUES (90, 12, './images/show_comments/ch30.jpg');

-- ----------------------------
-- Table structure for comment_table
-- ----------------------------
DROP TABLE IF EXISTS `comment_table`;
CREATE TABLE `comment_table`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `SKU_code` bigint(20) NULL DEFAULT NULL COMMENT 'SKU编码',
  `comment_star` int(11) NOT NULL COMMENT '评论星级',
  `comment_time` datetime(0) NOT NULL COMMENT '评论时间',
  `comment_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `FK_Reference_33`(`SKU_code`) USING BTREE,
  CONSTRAINT `FK_Reference_33` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_table
-- ----------------------------
INSERT INTO `comment_table` VALUES (1, 80000001, 2, '2019-06-11 16:59:29', '气球沙发多用，在阳台玄关，围坐客厅，都很好看，性价比超高，放在家里很实用。真心很喜欢，希望多出一些，希望造作越来越好。美丽多用。');
INSERT INTO `comment_table` VALUES (2, 80000001, 5, '2019-06-11 16:54:44', '睡了一年才来评价，云帛床搭配深海沉睡床垫，这个家保留的两个卧室都是这样的组合，非常棒。云帛床设计简洁，靠背和两侧都没有向床的外围延伸，满足了我有限空间里又想要1米8大床的需求，可拆卸的边桌更是节省空间和自由搭配，床套也可以拆下来换洗，两个卧室可以交换安装，隔一段时间就来个新鲜感，不过床套可以多出一点好看的颜色就更棒了。又看上了远航床，想把对于客卧1m8有点大的云帛床放到父母家，可是因嫌弃搬运麻烦被无情拒绝，只有暂时搁置。');
INSERT INTO `comment_table` VALUES (3, 80000001, 2, '2019-06-11 17:01:59', NULL);
INSERT INTO `comment_table` VALUES (4, 80000001, 4, '2019-06-10 15:02:31', '东西收到时候有些意外的，比想象中要更加低一些，排骨架当时还觉得有些超前，使用一年后真是别的床已经没法睡了，期间清理时候发现有几个螺丝不匹配，可能当时安装有些问题，反馈给官方后给邮寄了新的，自己换上了。态度还是挺好的。');
INSERT INTO `comment_table` VALUES (5, 80000001, 3, '2019-06-09 17:12:06', '云帛床跟我家主题色调统一，尊享主卧空间，好高级的配色，加之可拆洗的布艺，简直无可挑剔，底下还可以放储物盒，不过我打算放行李箱，毕竟家里空间有限，合理利用空间，');
INSERT INTO `comment_table` VALUES (6, 80000001, 5, '2019-06-13 11:24:22', '这宽款云锦床是在我们还没到选家具的时候就心仪已久，非常简约大气，放在次卧或是主卧都很适合，时期已到毫不犹豫就下手，立马解决不再考虑其他品牌的问题～耶');
INSERT INTO `comment_table` VALUES (7, 80000001, 4, '2019-06-03 11:22:24', '一见倾心的设计，买的时候没有了米白色，下单的时候还有些遗憾。然而一切都是最好的安排，收到这个颜色也特别喜欢，靠背特别舒服，无论是靠在那里玩玩手机，还是读本书，简约的设计真是大爱呀，家里就是要造作一点。');
INSERT INTO `comment_table` VALUES (8, 80000001, 3, '2019-06-07 15:21:06', '纠结了很久最后决定买这款灰色的云帛床，因床垫还没回一直没晒单。很搭我家的简约格调。特别做得好的是售后，因快递，一快床板有点小问题，造作第一时间补发了，给造作大。');
INSERT INTO `comment_table` VALUES (9, 80000001, 4, '2019-06-14 19:33:56', '本来买了一个，后来看来看去也没有看到更合适的，就又一样的床再买一个放主卧。很满意，简洁大方。来安装的师傅也很认真负责，穿着鞋套，帮忙搬床垫，走的时候又把各种包装纸都带走，非常好。');
INSERT INTO `comment_table` VALUES (10, 80000001, 5, '2019-05-15 11:34:32', '现在是造作的忠实粉丝了，隔一段时间就像添置点造作的家具。创非常棒，质量也很好，请放心下单。真的很不错，所有的东西都想搬回家。');
INSERT INTO `comment_table` VALUES (11, 80000001, 3, '2019-05-07 11:35:04', '云帛床非常精致，特别是不撞腿的设计和两边的小翅膀床头柜得到了家人的一致好评。可拆卸的床头包布也很实用。灰米色很百搭，考虑之后作为婚床要铺红色的四件套，更合适。');
INSERT INTO `comment_table` VALUES (12, 80000001, 4, '2019-06-06 12:35:53', '儿子相中的床，蓝色的是他的最爱。非常好看的简约风！蓝色的牛仔布贴合的非常棒哦！8022工号客服，非常的有耐心啊和我一起选组合，用最优的组合，花最少的钱！');

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
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设计师荣誉表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of designer_awards_table
-- ----------------------------
INSERT INTO `designer_awards_table` VALUES (1, 5, 1996, '欧洲权威性设计大奖之一', './images/designer/award_pic/award07.jpg');
INSERT INTO `designer_awards_table` VALUES (2, 1, 2008, '产品设计界的奥斯卡', './images/designer/award_pic/award01.jpg');
INSERT INTO `designer_awards_table` VALUES (3, 5, 2004, '世界三大设计奖之一', './images/designer/award_pic/award04.jpg');
INSERT INTO `designer_awards_table` VALUES (4, 1, 2008, '全球最早最具声望的设计奖', './images/designer/award_pic/award08.jpg');
INSERT INTO `designer_awards_table` VALUES (5, 1, 2008, '英国最具权威住宅设计奖', './images/designer/award_pic/award05.jpg');
INSERT INTO `designer_awards_table` VALUES (6, 5, 2004, '欧洲最高设计奖中奖', './images/designer/award_pic/award10.jpg');
INSERT INTO `designer_awards_table` VALUES (7, 1, 2009, '全球最具影响力设计奖', './images/designer/award_pic/award06.jpg');
INSERT INTO `designer_awards_table` VALUES (8, 2, 2009, '全球最具影响力设计奖', './images/designer/award_pic/award06.jpg');
INSERT INTO `designer_awards_table` VALUES (9, 6, 2008, '全球最具影响力设计奖', './images/designer/award_pic/award06.jpg');
INSERT INTO `designer_awards_table` VALUES (10, 6, 2012, '欧洲权威性设计大奖之一', './images/designer/award_pic/award07.jpg');
INSERT INTO `designer_awards_table` VALUES (11, 2, 2009, '设计界圣经', './images/designer/award_pic/award09.jpg');
INSERT INTO `designer_awards_table` VALUES (12, 7, 2008, '欧洲权威性设计大奖之一', './images/designer/award_pic/award07.jpg');
INSERT INTO `designer_awards_table` VALUES (13, 2, 2011, '世界三大设计奖之一', './images/designer/award_pic/award04.jpg');
INSERT INTO `designer_awards_table` VALUES (14, 3, 2010, '全球最具影响力设计奖', './images/designer/award_pic/award06.jpg');
INSERT INTO `designer_awards_table` VALUES (15, 3, 2011, '欧洲权威性设计大奖之一', './images/designer/award_pic/award07.jpg');
INSERT INTO `designer_awards_table` VALUES (16, 3, 2012, '全球最专业室内设计奖', './images/designer/award_pic/award11.jpg');
INSERT INTO `designer_awards_table` VALUES (17, 7, 2013, '世界三大设计奖之一', './images/designer/award_pic/award04.jpg');
INSERT INTO `designer_awards_table` VALUES (18, 3, 2015, '全球最早最具声望的设计奖', './images/designer/award_pic/award08.jpg');
INSERT INTO `designer_awards_table` VALUES (19, 7, 2017, '全球最早最具声望的设计奖', './images/designer/award_pic/award08.jpg');
INSERT INTO `designer_awards_table` VALUES (20, 3, 2015, '产品设计界的奥斯卡', './images/designer/award_pic/award01.jpg');
INSERT INTO `designer_awards_table` VALUES (21, 3, 2016, '历史最悠久的国际设计奖', './images/designer/award_pic/award03.jpg');
INSERT INTO `designer_awards_table` VALUES (22, 8, 2010, '设计界圣经', './images/designer/award_pic/award09.jpg');
INSERT INTO `designer_awards_table` VALUES (23, 8, 2012, '荷兰最具影响力设计奖之一', './images/designer/award_pic/award12.jpg');
INSERT INTO `designer_awards_table` VALUES (24, 3, 2016, '世界三大设计奖之一', './images/designer/award_pic/award04.jpg');
INSERT INTO `designer_awards_table` VALUES (25, 4, 2011, '欧洲最高设计奖中奖', './images/designer/award_pic/award10.jpg');
INSERT INTO `designer_awards_table` VALUES (26, 4, 2014, '世界三大设计奖之一', './images/designer/award_pic/award04.jpg');
INSERT INTO `designer_awards_table` VALUES (27, 4, 2014, '全球最具影响力的设计奖', './images/designer/award_pic/award06.jpg');
INSERT INTO `designer_awards_table` VALUES (28, 4, 2015, '产品设计界的奥斯卡', './images/designer/award_pic/award01.jpg');
INSERT INTO `designer_awards_table` VALUES (29, 4, 2015, '全球最早最具声望的设计奖', './images/designer/award_pic/award08.jpg');

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
  `designer_describe` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设计师介绍',
  PRIMARY KEY (`designer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设计师表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of designer_table
-- ----------------------------
INSERT INTO `designer_table` VALUES (1, 'Luca Nichetto', '斯德哥尔摩', '意大利', '“关于未来，我有许多计划，但其中重要的是，与榆杨合作成功。”', './images/designer/main_pic/de01.jpg', './images/designer/bji_pic/bji01.jpg', '意大利及瑞典著名建筑师、设计师，造作艺术总监。2013年Interior Innovation Adward和Elle Decor Italy联合授予的年度设计师，IMM Cologne荣誉嘉宾，2009年EDIDA年度青年设计师，2008年IF产品设计奖，2008年Gran Design Award.作为欧洲久负盛名的设计师，两个设计事务所的创始人，各大国际设计展的设计师和策展人，Luca亲手主持过上百个家具和工业设计项目，但却保始终持着一颗匠人之心。');
INSERT INTO `designer_table` VALUES (2, 'Noé Duchaufour Lawrance', '巴黎', '法国', '“我一直相信，每件物体的内核都是一股特别的力量，这份力作为一根隐形纽带将人类本体的感知能力与自然、爱和一切联结。”', './images/designer/main_pic/de02.jpg', './images/designer/bji_pic/bji02.jpg', 'Noé Duchaufour Lawrance出生在1975年的法国小城Mende，毕业于法国国立高等应用艺术和艺术专业学院金属雕塑专业的他，后来又选择继续进修于Mobilier des Arts Décoratifs。Noé Duchaufour Lawrance的设计生涯初始于至今被人津津乐道的Sketch restaurant项目，2003年他成立了意为“新生”的个人工作室“Néonata”；2007年他第一次得到了Maison & Objet show的年度设计师称号，后来的他成为Wallpaper百强设计师之一，并将Elle Déco International Design Awards、Wallpaper Design Awards、Red dot等设计界有分量的奖项通通拿了个遍。');
INSERT INTO `designer_table` VALUES (3, 'Palomba Serafini Associati', '米兰', '意大利', '“始终保持一份为人们创造全新设计与体验的初心与激情。”', './images/designer/main_pic/de03.jpg', './images/designer/bji_pic/bji03.jpg', 'Palomba Serafini Associati （ps+a）是设计界的模范CP，一同于米兰成立了设计工作室。早在1994年，刚刚从罗马大学建筑系毕业的Roberto Palomba和Ludovica Serafini在交出了自己的第一个设计项目时，就出人意料的一举拿下了意大利国内最为重要的奖项Compasso d’oro。这些年来，他们拿下了包括WallpaperDesign Award、Good DesignAward、iF ProductDesign Award等一系列设计界重量级奖项，逐步奠定了他们在欧洲设计界的声誉。');
INSERT INTO `designer_table` VALUES (4, 'Claesson Koivisto Rune', '斯德哥尔摩', '瑞典', '“超越标新立异”', './images/designer/main_pic/de04.jpg', './images/designer/bji_pic/bji04.jpg', 'Claesson Koivisto Rune是来自瑞典的设计团体，由Mårten Claesson, Eero Koivisto和Ola Rune三人在1995年时创立于斯德哥尔摩。在设计圈内颇受好评的跨多学科的设计事务所，不仅限于建筑设计，更参与到空间、家具家居、电器、平面图案等众多设计领域。业内被称做“得奖专业户”的他们，拿下60多项设计界重量级奖项，更成为Red Dot Design Award史上第一个同时拿下五个领域奖项的设计事务所。');
INSERT INTO `designer_table` VALUES (5, 'Richard Hutten', '荷兰', '鹿特丹', '“功能性永远只是起点，而不是终点；对于设计来说，艺术性才是更为重要的。”', './images/designer/main_pic/de05.jpg', './images/designer/bgi_pic/bgi05.jpg', '荷兰设计师，1991年毕业于埃因霍芬设计学院，同年成立了自己的设计工作室。1993年，加入Droog Design，并成为其重要核心成员。作为一位充满欢乐与创新的革新者，Richard Hutten对于设计有着自己的理解和定位。Red Dot Award、LAI award、the German Design Award, 都曾被他揽入囊中。荷兰设计的标志性人物，他的作品曾在the MoMA New York、Stedelijk Museum Amsterdam、Centraal Museum Utrecht等展出。');
INSERT INTO `designer_table` VALUES (6, 'Constance Guisset', '巴黎', '法国', '一位被Philippe Starck称作“dreamer”的设计师', './images/designer/main_pic/de06.jpg', './images/designer/bgi_pic/bgi06.jpg', 'Claesson Koivisto Rune是来自瑞典的设计团体，由Mårten Claesson, Eero Koivisto和Ola Rune三人在1995年时创立于斯德哥尔摩。在设计圈内颇受好评的跨多学科的设计事务所，不仅限于建筑设计，更参与到空间、家具家居、电器、平面图案等众多设计领域。业内被称做“得奖专业户”的他们，拿下60多项设计界重量级奖项，更成为Red Dot Design Award史上第一个同时拿下五个领域奖项的设计事务所。');
INSERT INTO `designer_table` VALUES (7, 'Keiji Ashizawa', '英国', '英国', '设计师是一个可以通过产品设计让人感到快乐的美妙工种。', './images/designer/main_pic/de07.jpg', './images/designer/bgi_pic/bgi07.jpg', 'Keiji Ashizawa，建筑师、室内设计师、家具设计师，目前工作生活于日本东京，1995年毕业于横滨大学建筑专业，2005年于东京成立工作室Keiji Ashizawa Design。从大学毕业到正式成立工作室的十年时间里，Keiji专注于建筑设计及钢铁工艺，十年的实践经历，使得Keiji对钢铁材质的价值有着更深入的理解，同时也在实践的过程中获得了一些独特的技巧，这些积累都在之后延伸影响了他的设计方法。 Keiji的家具设计，简洁，明了，不论是组装的成品，还是拆卸后的部件归置，都体现出其精细的匠人之心。');
INSERT INTO `designer_table` VALUES (8, 'BCXSY', '荷兰', '阿姆斯特丹', '“我们喜欢探索不同领域，尝试不同材料、技术或语言，让设计保持新鲜”', './images/designer/main_pic/de08.jpg', './images/designer/bgi_pic/bgi08.jpg', 'BCXSY，成立于2007年的荷兰知名设计工作室，是以色列设计师Boaz Cohen和日本Sayaka Yamamoto之间的跨学科合作。设计师拥有东西方两种独特的文化背景，擅长以独特的叙事手法，将东西方文化融合，通过概念传递、身份塑造，图案绘制以及氛围营造等手段，用戏剧化的方式，呈现纯粹而带有情感的作品。在过去几年中，BCXSY因其设计项目对社会的影响而赢得了国际的赞誉，作品也在国际众多负有盛名的设计展中亮相，并被伦敦维多利亚和阿尔伯特博物馆、香港M+博物馆等永久收藏。');

-- ----------------------------
-- Table structure for login_log_table
-- ----------------------------
DROP TABLE IF EXISTS `login_log_table`;
CREATE TABLE `login_log_table`  (
  `login_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `login_is_success` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' COMMENT '是否成功',
  `login_time` datetime(0) NOT NULL COMMENT '登录时间',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录ip',
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
  `SKU_code` bigint(20) NOT NULL COMMENT 'SKU编码',
  `order_id` bigint(20) NOT NULL COMMENT '订单id',
  `order_SKU_num` int(11) NOT NULL COMMENT 'SKU数量',
  PRIMARY KEY (`order_SKU_id`) USING BTREE,
  INDEX `FK_Reference_31`(`SKU_code`) USING BTREE,
  INDEX `FK_Reference_32`(`order_id`) USING BTREE,
  CONSTRAINT `FK_Reference_31` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_32` FOREIGN KEY (`order_id`) REFERENCES `order_table` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单商品关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_sku_table
-- ----------------------------
INSERT INTO `order_sku_table` VALUES (1, 80000003, 1, 1);
INSERT INTO `order_sku_table` VALUES (2, 80000008, 8, 1);
INSERT INTO `order_sku_table` VALUES (3, 80000005, 3, 2);
INSERT INTO `order_sku_table` VALUES (4, 80000003, 4, 1);
INSERT INTO `order_sku_table` VALUES (5, 80000003, 5, 1);
INSERT INTO `order_sku_table` VALUES (6, 80000005, 6, 2);
INSERT INTO `order_sku_table` VALUES (7, 80000005, 5, 1);
INSERT INTO `order_sku_table` VALUES (8, 80000008, 7, 3);

-- ----------------------------
-- Table structure for order_table
-- ----------------------------
DROP TABLE IF EXISTS `order_table`;
CREATE TABLE `order_table`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `addr_id` bigint(20) NOT NULL COMMENT '地址id',
  `order_place_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '下单时间',
  `order_pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `order_deliver_time` datetime(0) NULL DEFAULT NULL COMMENT '发货时间',
  `order_receive_time` datetime(0) NULL DEFAULT NULL COMMENT '收货时间',
  `order_cut_down` bigint(20) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '优惠金额',
  `order_amount` bigint(20) NULL DEFAULT NULL COMMENT '交易金额',
  `order_pay_method` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付方式',
  `order_deliver_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流单号',
  `order_point` bigint(20) NULL DEFAULT NULL COMMENT '订单积分',
  `order_state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '正常' COMMENT '订单状态',
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `FK_Reference_30`(`user_id`) USING BTREE,
  INDEX `FK_Reference_41`(`addr_id`) USING BTREE,
  CONSTRAINT `FK_Reference_30` FOREIGN KEY (`user_id`) REFERENCES `user_profile_table` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_41` FOREIGN KEY (`addr_id`) REFERENCES `user_addr_table` (`addr_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_table
-- ----------------------------
INSERT INTO `order_table` VALUES (1, 29, 29, '2019-06-13 17:04:27', NULL, NULL, NULL, 00000000000000000000, 45577, '支付宝', '128362183698213', 20, '正常');
INSERT INTO `order_table` VALUES (2, 29, 29, '2019-06-13 16:53:11', '2019-06-13 15:40:43', NULL, NULL, 00000000000000000000, 3214, '花呗', '343543654754756', 10, '正常');
INSERT INTO `order_table` VALUES (3, 29, 29, '2019-06-13 16:53:21', '2019-06-16 15:43:49', '2019-06-18 15:43:54', NULL, 00000000000000000000, 1454, '微信', '312454645443243', 40, '正常');
INSERT INTO `order_table` VALUES (4, 29, 29, '2019-06-13 16:53:23', '2019-06-08 15:46:33', '2019-06-09 15:46:37', '2019-06-10 15:46:44', 00000000000000000000, 1234, '微信', '432254353452343', 100, '正常');
INSERT INTO `order_table` VALUES (5, 29, 29, '2019-06-13 16:53:27', '2019-06-13 15:51:26', NULL, NULL, 00000000000000000000, 232, '支付宝', '435435345343322', 500, '正常');
INSERT INTO `order_table` VALUES (6, 29, 29, '2019-06-13 16:53:30', '2019-06-13 15:53:35', '2019-06-15 15:53:39', NULL, 00000000000000000000, 43243, '支付宝', '134243543654654', 12, '正常');
INSERT INTO `order_table` VALUES (7, 29, 29, '2019-06-13 16:53:32', '2019-06-07 15:58:47', '2019-06-13 15:58:51', '2019-06-13 15:58:55', 00000000000000000000, 2000, '花呗', '214234234234233', 212, '正常');
INSERT INTO `order_table` VALUES (8, 29, 29, '2019-06-13 16:53:36', NULL, NULL, NULL, 00000000000000000000, 21213, '微信', '324141212312312', 322, '正常');

-- ----------------------------
-- Table structure for package_sku_table
-- ----------------------------
DROP TABLE IF EXISTS `package_sku_table`;
CREATE TABLE `package_sku_table`  (
  `package_item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合内容条目id',
  `package_id` int(11) NOT NULL COMMENT '组合id',
  `SKU_code` bigint(20) NULL DEFAULT NULL COMMENT 'SKU编码',
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
  `SKU_code` bigint(20) NULL DEFAULT NULL COMMENT 'SKU编码',
  `shopping_car_SKU_num` int(11) NOT NULL COMMENT 'SKU数量',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`shopping_car_item_id`) USING BTREE,
  INDEX `FK_Reference_43`(`SKU_code`) USING BTREE,
  INDEX `Reference_888`(`user_id`) USING BTREE,
  CONSTRAINT `FK_Reference_43` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Reference_888` FOREIGN KEY (`user_id`) REFERENCES `user_profile_table` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车条目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopping_car_item_table
-- ----------------------------
INSERT INTO `shopping_car_item_table` VALUES (1, 80000003, 1, 2);
INSERT INTO `shopping_car_item_table` VALUES (2, 80000005, 1, 2);

-- ----------------------------
-- Table structure for sku_attr_table
-- ----------------------------
DROP TABLE IF EXISTS `sku_attr_table`;
CREATE TABLE `sku_attr_table`  (
  `attr_col_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性选项条目id',
  `attr_option_id` int(11) NOT NULL COMMENT '属性选项id',
  `SKU_code` bigint(20) NOT NULL COMMENT 'SKU编码',
  PRIMARY KEY (`attr_col_id`) USING BTREE,
  INDEX `FK_Reference_SKU_attr_option`(`attr_option_id`) USING BTREE,
  INDEX `FK_Reference_attr_SKU`(`SKU_code`) USING BTREE,
  CONSTRAINT `FK_Reference_SKU_attr_option` FOREIGN KEY (`attr_option_id`) REFERENCES `attr_option_table` (`attr_option_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_attr_SKU` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SKU_属性选项关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sku_spec_table
-- ----------------------------
DROP TABLE IF EXISTS `sku_spec_table`;
CREATE TABLE `sku_spec_table`  (
  `spec_col_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格选项条目id',
  `spec_option_id` int(11) NOT NULL COMMENT '规格选项id',
  `SKU_code` bigint(20) NOT NULL COMMENT 'SKU编码',
  PRIMARY KEY (`spec_col_id`) USING BTREE,
  INDEX `FK_Reference_SKU_spec_option`(`spec_option_id`) USING BTREE,
  INDEX `FK_Reference_spec_SKU`(`SKU_code`) USING BTREE,
  CONSTRAINT `FK_Reference_SKU_spec_option` FOREIGN KEY (`spec_option_id`) REFERENCES `spec_option_table` (`spec_option_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_spec_SKU` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SKU_规格选项关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sku_spec_table
-- ----------------------------
INSERT INTO `sku_spec_table` VALUES (1, 1, 80000001);
INSERT INTO `sku_spec_table` VALUES (2, 2, 80000001);
INSERT INTO `sku_spec_table` VALUES (3, 3, 80000002);
INSERT INTO `sku_spec_table` VALUES (4, 2, 80000002);
INSERT INTO `sku_spec_table` VALUES (5, 4, 80000003);
INSERT INTO `sku_spec_table` VALUES (6, 3, 80000003);
INSERT INTO `sku_spec_table` VALUES (7, 4, 80000004);
INSERT INTO `sku_spec_table` VALUES (8, 1, 80000004);
INSERT INTO `sku_spec_table` VALUES (9, 6, 80000005);
INSERT INTO `sku_spec_table` VALUES (10, 1, 80000005);
INSERT INTO `sku_spec_table` VALUES (11, 3, 80000006);
INSERT INTO `sku_spec_table` VALUES (12, 6, 80000006);
INSERT INTO `sku_spec_table` VALUES (13, 7, 80000007);
INSERT INTO `sku_spec_table` VALUES (14, 1, 80000007);
INSERT INTO `sku_spec_table` VALUES (15, 7, 80000008);
INSERT INTO `sku_spec_table` VALUES (16, 8, 80000008);
INSERT INTO `sku_spec_table` VALUES (17, 7, 80000009);
INSERT INTO `sku_spec_table` VALUES (18, 3, 80000009);
INSERT INTO `sku_spec_table` VALUES (19, 7, 80000010);
INSERT INTO `sku_spec_table` VALUES (20, 9, 80000010);
INSERT INTO `sku_spec_table` VALUES (21, 10, 80000011);
INSERT INTO `sku_spec_table` VALUES (22, 9, 80000011);
INSERT INTO `sku_spec_table` VALUES (23, 10, 80000012);
INSERT INTO `sku_spec_table` VALUES (24, 12, 80000012);
INSERT INTO `sku_spec_table` VALUES (25, 10, 80000013);
INSERT INTO `sku_spec_table` VALUES (26, 1, 80000013);
INSERT INTO `sku_spec_table` VALUES (27, 10, 80000014);
INSERT INTO `sku_spec_table` VALUES (28, 8, 80000014);
INSERT INTO `sku_spec_table` VALUES (29, 8, 80000014);
INSERT INTO `sku_spec_table` VALUES (30, 10, 80000015);
INSERT INTO `sku_spec_table` VALUES (31, 3, 80000015);
INSERT INTO `sku_spec_table` VALUES (32, 13, 80000016);
INSERT INTO `sku_spec_table` VALUES (33, 1, 80000016);
INSERT INTO `sku_spec_table` VALUES (34, 13, 80000017);
INSERT INTO `sku_spec_table` VALUES (35, 8, 80000017);
INSERT INTO `sku_spec_table` VALUES (36, 13, 80000018);
INSERT INTO `sku_spec_table` VALUES (37, 3, 80000018);
INSERT INTO `sku_spec_table` VALUES (38, 14, 80000019);
INSERT INTO `sku_spec_table` VALUES (39, 1, 80000019);
INSERT INTO `sku_spec_table` VALUES (40, 14, 80000020);
INSERT INTO `sku_spec_table` VALUES (41, 8, 80000020);
INSERT INTO `sku_spec_table` VALUES (42, 14, 80000021);
INSERT INTO `sku_spec_table` VALUES (43, 3, 80000021);
INSERT INTO `sku_spec_table` VALUES (44, 15, 80000022);
INSERT INTO `sku_spec_table` VALUES (45, 1, 80000022);
INSERT INTO `sku_spec_table` VALUES (46, 15, 80000023);
INSERT INTO `sku_spec_table` VALUES (47, 8, 80000023);
INSERT INTO `sku_spec_table` VALUES (48, 15, 80000024);
INSERT INTO `sku_spec_table` VALUES (49, 3, 80000024);
INSERT INTO `sku_spec_table` VALUES (50, 16, 80000025);
INSERT INTO `sku_spec_table` VALUES (51, 17, 80000026);
INSERT INTO `sku_spec_table` VALUES (52, 18, 80000027);
INSERT INTO `sku_spec_table` VALUES (53, 19, 80000028);
INSERT INTO `sku_spec_table` VALUES (54, 20, 80000029);
INSERT INTO `sku_spec_table` VALUES (55, 18, 80000030);
INSERT INTO `sku_spec_table` VALUES (56, 25, 80000031);
INSERT INTO `sku_spec_table` VALUES (57, 21, 80000031);
INSERT INTO `sku_spec_table` VALUES (58, 25, 80000032);
INSERT INTO `sku_spec_table` VALUES (59, 22, 80000032);
INSERT INTO `sku_spec_table` VALUES (60, 25, 80000033);
INSERT INTO `sku_spec_table` VALUES (61, 23, 80000033);
INSERT INTO `sku_spec_table` VALUES (62, 26, 80000034);
INSERT INTO `sku_spec_table` VALUES (63, 21, 80000034);
INSERT INTO `sku_spec_table` VALUES (64, 26, 80000035);
INSERT INTO `sku_spec_table` VALUES (65, 24, 80000035);
INSERT INTO `sku_spec_table` VALUES (66, 26, 80000036);
INSERT INTO `sku_spec_table` VALUES (67, 22, 80000036);
INSERT INTO `sku_spec_table` VALUES (68, 27, 80000037);
INSERT INTO `sku_spec_table` VALUES (69, 28, 80000038);
INSERT INTO `sku_spec_table` VALUES (70, 29, 80000039);
INSERT INTO `sku_spec_table` VALUES (71, 30, 80000040);
INSERT INTO `sku_spec_table` VALUES (72, 16, 80000040);
INSERT INTO `sku_spec_table` VALUES (73, 30, 80000041);
INSERT INTO `sku_spec_table` VALUES (74, 31, 80000041);
INSERT INTO `sku_spec_table` VALUES (75, 26, 80000042);
INSERT INTO `sku_spec_table` VALUES (76, 32, 80000042);
INSERT INTO `sku_spec_table` VALUES (77, 33, 80000043);
INSERT INTO `sku_spec_table` VALUES (78, 34, 80000043);
INSERT INTO `sku_spec_table` VALUES (79, 35, 80000044);
INSERT INTO `sku_spec_table` VALUES (80, 16, 80000044);
INSERT INTO `sku_spec_table` VALUES (81, 35, 80000045);
INSERT INTO `sku_spec_table` VALUES (82, 17, 80000045);
INSERT INTO `sku_spec_table` VALUES (83, 35, 80000046);
INSERT INTO `sku_spec_table` VALUES (84, 18, 80000046);
INSERT INTO `sku_spec_table` VALUES (85, 36, 80000048);
INSERT INTO `sku_spec_table` VALUES (86, 16, 80000048);
INSERT INTO `sku_spec_table` VALUES (87, 36, 80000049);
INSERT INTO `sku_spec_table` VALUES (88, 17, 80000049);
INSERT INTO `sku_spec_table` VALUES (89, 36, 80000050);
INSERT INTO `sku_spec_table` VALUES (90, 18, 80000050);

-- ----------------------------
-- Table structure for sku_table
-- ----------------------------
DROP TABLE IF EXISTS `sku_table`;
CREATE TABLE `sku_table`  (
  `SKU_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'SKU编码',
  `SPU_code` bigint(20) NOT NULL COMMENT 'SPU编码',
  `SKU_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SKU名称',
  `purchase_price` int(11) NOT NULL COMMENT '进价',
  `sell_price` int(11) NOT NULL COMMENT '售价',
  `stock` int(11) NOT NULL COMMENT '库存',
  `log_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '录入时间',
  `produce_date` timestamp(0) NOT NULL COMMENT '生产日期',
  `SKU_pic_path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SKU图片路径',
  `SKU_size_pic_path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SKU尺寸图片路径',
  PRIMARY KEY (`SKU_code`) USING BTREE,
  INDEX `FK_Reference_29`(`SPU_code`) USING BTREE,
  CONSTRAINT `FK_Reference_29` FOREIGN KEY (`SPU_code`) REFERENCES `spu_table` (`SPU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 80000051 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SKU表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sku_table
-- ----------------------------
INSERT INTO `sku_table` VALUES (80000001, 1, '大先生沙发转角大三人座新版米黄', 5400, 8599, 100, '2019-06-13 08:43:40', '2019-05-14 10:55:00', './images/view_pic/sku/MrBig_Corner_Big_Threepeople_Newmihuang.jpg', '');
INSERT INTO `sku_table` VALUES (80000002, 1, '大先生沙发转角大三人座新版铅灰', 5400, 8599, 100, '2019-06-13 08:43:40', '2019-05-14 10:55:00', './images/view_pic/sku/MrBig_Corner_Big_Threepeople_Newqianhuig.jpg', '');
INSERT INTO `sku_table` VALUES (80000003, 1, '大先生沙发大三人座新版铅灰', 4400, 7599, 100, '2019-06-13 08:43:40', '2019-05-14 10:55:00', './images/view_pic/sku/MrBig_Big_Threepeople_Newqianhui.jpg', './images/view_pic/sku_size/MrBig_Big_Threepeople.jpg');
INSERT INTO `sku_table` VALUES (80000004, 1, '大先生沙发大三人座新版米黄', 4400, 7599, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/MrBig_Big_Threepeople_Newmihuang.jpg', '');
INSERT INTO `sku_table` VALUES (80000005, 1, '大先生沙发转角三人座新版米黄', 4800, 6999, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/MrBig_Corner_Threepeople_Newmihuang.jpg', '');
INSERT INTO `sku_table` VALUES (80000006, 1, '大先生沙发转角三人座新版铅灰', 4800, 6999, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/MrBig_Corner_Threepeople_Newqianhui.jpg', '');
INSERT INTO `sku_table` VALUES (80000007, 1, '大先生沙发三人座新版米黄', 4300, 5899, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/MrBig_Threepeople_Newmihuang.jpg', '');
INSERT INTO `sku_table` VALUES (80000008, 1, '大先生沙发三人座新版雾蓝', 4300, 5899, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/MrBig_Threepeople_Newwulan.jpg', './images/view_pic/sku_size/MrBig_Threepeople.jpg');
INSERT INTO `sku_table` VALUES (80000009, 1, '大先生沙发三人座新版铅灰', 4300, 5899, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/MrBig_Threepeople_Newqianhui.jpg', '');
INSERT INTO `sku_table` VALUES (80000010, 1, '大先生沙发三人座经典版月灰', 4300, 5899, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/MrBig_Threepeople_Classicyuehui.jpg', '');
INSERT INTO `sku_table` VALUES (80000011, 2, '云帛床1.5米款(有边桌)经典版月灰', 3800, 4296, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/CloudSilksBed_1.5M_SideTable _Classicyuehui.jpg', '');
INSERT INTO `sku_table` VALUES (80000012, 2, '云帛床1.5米款(有边桌)经典版雾蓝', 3800, 4296, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/CloudSilksBed_1.5M_SideTable _Classiwulan.jpg', './images/view_pic/sku_size/CloudSilksBed_1.5M.jpg');
INSERT INTO `sku_table` VALUES (80000013, 2, '云帛床1.5米款(有边桌)新版米黄', 3800, 4296, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/CloudSilksBed_1.5M_SideTable _Newmihuang.jpg', '');
INSERT INTO `sku_table` VALUES (80000014, 2, '云帛床1.5米款(有边桌)新版雾蓝', 3800, 4296, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/CloudSilksBed_1.5M_SideTable _Newwulan.jpg', '');
INSERT INTO `sku_table` VALUES (80000015, 2, '云帛床1.5米款(有边桌)新版铅灰', 3800, 4296, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/CloudSilksBed_1.5M_SideTable _Newqianhui.jpg', '');
INSERT INTO `sku_table` VALUES (80000016, 2, '云帛床1.5米款(无边桌)新版米黄', 3700, 3996, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/CloudSilksBed_1.5M_Newmihuang.jpg', '');
INSERT INTO `sku_table` VALUES (80000017, 2, '云帛床1.5米款(无边桌)新版雾蓝', 3700, 3996, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/CloudSilksBed_1.5M_Newwulan.jpg', '');
INSERT INTO `sku_table` VALUES (80000018, 2, '云帛床1.5米款(无边桌)新版铅灰', 3700, 3996, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/CloudSilksBed_1.5M_Newqianhui.jpg', '');
INSERT INTO `sku_table` VALUES (80000019, 2, '云帛床1.8米款(有边桌)新版米黄', 4650, 4896, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/CloudSilksBed_1.8M_SideTable _Newmihuang.jpg', '');
INSERT INTO `sku_table` VALUES (80000020, 2, '云帛床1.8米款(有边桌)新版雾蓝', 4650, 4896, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/CloudSilksBed_1.8M_SideTable _Newwulan.jpg', './images/view_pic/sku_size/CloudSilksBed_1.8M.jpg');
INSERT INTO `sku_table` VALUES (80000021, 2, '云帛床1.8米款(有边桌)新版铅灰', 4650, 4896, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/CloudSilksBed_1.8M_SideTable _Newqianhui.jpg', '');
INSERT INTO `sku_table` VALUES (80000022, 2, '云帛床1.8米款(无边桌)新版米黄', 4450, 4596, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/CloudSilksBed_1.8M_Newmihuang.jpg', '');
INSERT INTO `sku_table` VALUES (80000023, 2, '云帛床1.8米款(无边桌)新版雾蓝', 4450, 4596, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/CloudSilksBed_1.8M _Newwulan.jpg', '');
INSERT INTO `sku_table` VALUES (80000024, 2, '云帛床1.8米款(无边桌)新版铅灰', 4450, 4596, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/CloudSilksBed_1.8M _Newqianhui.jpg', '');
INSERT INTO `sku_table` VALUES (80000025, 3, '美术馆陈列柜_脂灰', 1999, 2599, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/GalleryShowcase_zhihui.jpg', '');
INSERT INTO `sku_table` VALUES (80000026, 3, '美术馆陈列柜_灰绿', 1999, 2599, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/GalleryShowcase_huilv.jpg', '');
INSERT INTO `sku_table` VALUES (80000027, 3, '美术馆陈列柜_阳橙棕', 1999, 2599, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/GalleryShowcase_yangchengzong.jpg', './images/view_pic/sku_size/GalleryShowcase.jpg');
INSERT INTO `sku_table` VALUES (80000028, 4, '丝绸椅_柠檬黄', 50, 699, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/SilkChair_ningmenghuang.jpg', './images/view_pic/sku_size/SilkChai.jpg');
INSERT INTO `sku_table` VALUES (80000029, 4, '丝绸椅_石灰绿', 50, 699, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/SilkChair_shihuilv.jpg', '');
INSERT INTO `sku_table` VALUES (80000030, 4, '丝绸椅_阳橙棕', 50, 699, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/SilkChair_yangchengzong.jpg', '');
INSERT INTO `sku_table` VALUES (80000031, 5, '瓦檐餐桌_1.3M_米白', 200, 2399, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/TabSeries_1.3M_mibai.jpg', '');
INSERT INTO `sku_table` VALUES (80000032, 5, '瓦檐餐桌_1.3M_木本色', 200, 2399, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/TabSeries_1.3M_benmu.jpg', './images/view_pic/sku_size/TabSeries_1.3M.jpg');
INSERT INTO `sku_table` VALUES (80000033, 5, '瓦檐餐桌_1.3M_灰绿', 200, 2399, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/TabSeries_1.3M_huilv.jpg', '');
INSERT INTO `sku_table` VALUES (80000034, 5, '瓦檐餐桌_1.8M_米白', 200, 2399, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/TabSeries_1.8M_mibai.jpg', '');
INSERT INTO `sku_table` VALUES (80000035, 5, '瓦檐餐桌_1.8M_褐黑', 200, 2399, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/TabSeries_1.8M_hehei.jpg', './images/view_pic/sku_size/TabSeries_1.8M.jpg');
INSERT INTO `sku_table` VALUES (80000036, 5, '瓦檐餐桌_1.8M_木本色', 200, 2399, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/TabSeries_1.8M_benmu.jpg', '');
INSERT INTO `sku_table` VALUES (80000037, 6, '光笼_桃绯', 20, 699, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/LightCage_taofei.jpg', './images/view_pic/sku_size/LightCage.jpg');
INSERT INTO `sku_table` VALUES (80000038, 6, '光笼_夜云', 20, 699, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/LightCage_yeyun.jpg', '');
INSERT INTO `sku_table` VALUES (80000039, 6, '光笼_柠米', 20, 699, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/LightCage_ningmi.jpg', '');
INSERT INTO `sku_table` VALUES (80000040, 7, '云杉天丝高支4件套床品_1.5M_脂灰', 200, 599, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/SpruceBedLinen_1.5M_zhihui.jpg', '');
INSERT INTO `sku_table` VALUES (80000041, 7, '云杉天丝高支4件套床品_1.5M_米黄', 200, 599, 100, '2019-06-13 08:43:40', '0000-00-00 00:00:00', './images/view_pic/sku/SpruceBedLinen_1.5M_mihuang.jpg', './images/view_pic/sku_size/SpruceBedLinen_1.5M.jpg');
INSERT INTO `sku_table` VALUES (80000042, 7, '云杉天丝高支4件套床品_1.8M_莹黄', 200, 599, 100, '2019-06-13 08:43:41', '0000-00-00 00:00:00', './images/view_pic/sku/SpruceBedLinen_1.8M_yinghuang.jpg', './images/view_pic/sku_size/SpruceBedLinen_1.8M.jpg');
INSERT INTO `sku_table` VALUES (80000043, 8, '云笼果盘_小号_云白套装', 200, 599, 100, '2019-06-13 08:43:41', '0000-00-00 00:00:00', './images/view_pic/sku/CageFruitTray_Small_yunbaitaozhuang.jpg', './images/view_pic/sku_size/CageFruitTray_Small.jpg');
INSERT INTO `sku_table` VALUES (80000044, 9, '美术馆墙镜_大款_脂灰', 100, 699, 100, '2019-06-13 08:43:41', '0000-00-00 00:00:00', './images/view_pic/sku/GalleryMirror_Big_zhihui.jpg', '');
INSERT INTO `sku_table` VALUES (80000045, 9, '美术馆墙镜_大款_灰绿', 100, 699, 100, '2019-06-13 08:43:41', '0000-00-00 00:00:00', './images/view_pic/sku/GalleryMirror_Big_huilv.jpg', '');
INSERT INTO `sku_table` VALUES (80000046, 9, '美术馆墙镜_大款_阳橙棕', 100, 699, 100, '2019-06-13 08:43:41', '0000-00-00 00:00:00', './images/view_pic/sku/GalleryMirror_Big_yangchengzong.jpg', './images/view_pic/sku_size/GalleryMirror_Big.jpg');
INSERT INTO `sku_table` VALUES (80000047, 9, '美术馆墙镜_大款_脂灰', 100, 699, 100, '2019-06-13 08:43:41', '0000-00-00 00:00:00', '', '');
INSERT INTO `sku_table` VALUES (80000048, 9, '美术馆墙镜_小款_脂灰', 20, 399, 100, '2019-06-13 08:43:41', '0000-00-00 00:00:00', './images/view_pic/sku/GalleryMirror_Small_zhihui.jpg', './images/view_pic/sku_size/GalleryMirror_Small.jpg');
INSERT INTO `sku_table` VALUES (80000049, 9, '美术馆墙镜_小款_灰绿', 20, 399, 100, '2019-06-13 08:43:41', '0000-00-00 00:00:00', './images/view_pic/sku/GalleryMirror_Small_huilv.jpg', '');
INSERT INTO `sku_table` VALUES (80000050, 9, '美术馆墙镜_小款_阳橙棕', 20, 399, 100, '2019-06-13 08:43:41', '0000-00-00 00:00:00', './images/view_pic/sku/GalleryMirror_Small_yangchengzong.jpg', '');

-- ----------------------------
-- Table structure for spec_option_table
-- ----------------------------
DROP TABLE IF EXISTS `spec_option_table`;
CREATE TABLE `spec_option_table`  (
  `spec_option_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格选项id',
  `spec_id` int(11) NOT NULL COMMENT '规格id',
  `spec_option_value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格选项值',
  PRIMARY KEY (`spec_option_id`) USING BTREE,
  INDEX `FK_Reference_spec_option`(`spec_id`) USING BTREE,
  CONSTRAINT `FK_Reference_spec_option` FOREIGN KEY (`spec_id`) REFERENCES `spec_table` (`spec_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '规格选项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spec_option_table
-- ----------------------------
INSERT INTO `spec_option_table` VALUES (1, 1, '新版米黄');
INSERT INTO `spec_option_table` VALUES (2, 2, '转角大三人座');
INSERT INTO `spec_option_table` VALUES (3, 1, '新版铅灰');
INSERT INTO `spec_option_table` VALUES (4, 2, '大三人座');
INSERT INTO `spec_option_table` VALUES (5, 2, '转角大三人座');
INSERT INTO `spec_option_table` VALUES (6, 2, '转角三人座');
INSERT INTO `spec_option_table` VALUES (7, 2, '三人座');
INSERT INTO `spec_option_table` VALUES (8, 1, '新版雾蓝');
INSERT INTO `spec_option_table` VALUES (9, 1, '经典版月灰');
INSERT INTO `spec_option_table` VALUES (10, 2, '1.5米(有边桌)');
INSERT INTO `spec_option_table` VALUES (12, 1, '经典版雾蓝');
INSERT INTO `spec_option_table` VALUES (13, 2, '1.5米(无边桌)');
INSERT INTO `spec_option_table` VALUES (14, 2, '1.8米(有边桌)');
INSERT INTO `spec_option_table` VALUES (15, 2, '1.8米(无边桌)');
INSERT INTO `spec_option_table` VALUES (16, 1, '脂灰');
INSERT INTO `spec_option_table` VALUES (17, 1, '灰绿');
INSERT INTO `spec_option_table` VALUES (18, 1, '阳橙棕');
INSERT INTO `spec_option_table` VALUES (19, 1, '柠檬黄');
INSERT INTO `spec_option_table` VALUES (20, 1, '石灰绿');
INSERT INTO `spec_option_table` VALUES (21, 1, '米白');
INSERT INTO `spec_option_table` VALUES (22, 1, '木本色');
INSERT INTO `spec_option_table` VALUES (23, 1, '灰绿');
INSERT INTO `spec_option_table` VALUES (24, 1, '褐黑');
INSERT INTO `spec_option_table` VALUES (25, 2, '1.3米');
INSERT INTO `spec_option_table` VALUES (26, 2, '1.8米');
INSERT INTO `spec_option_table` VALUES (27, 1, '桃绯');
INSERT INTO `spec_option_table` VALUES (28, 1, '夜云');
INSERT INTO `spec_option_table` VALUES (29, 1, '柠米');
INSERT INTO `spec_option_table` VALUES (30, 2, '1.5米');
INSERT INTO `spec_option_table` VALUES (31, 1, '米黄');
INSERT INTO `spec_option_table` VALUES (32, 1, '莹黄');
INSERT INTO `spec_option_table` VALUES (33, 1, '云白套装');
INSERT INTO `spec_option_table` VALUES (34, 2, '小号');
INSERT INTO `spec_option_table` VALUES (35, 2, '大款');
INSERT INTO `spec_option_table` VALUES (36, 2, '小款');

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
-- Table structure for spu_image_table
-- ----------------------------
DROP TABLE IF EXISTS `spu_image_table`;
CREATE TABLE `spu_image_table`  (
  `product_pic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `SPU_code` bigint(20) NULL DEFAULT NULL COMMENT 'SPU编码',
  `product_pic_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片标题',
  `product_pic_describe` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片描述',
  `product_pic_path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片路径',
  `product_pic_size` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片尺寸',
  PRIMARY KEY (`product_pic_id`) USING BTREE,
  INDEX `FK_Reference_42`(`SPU_code`) USING BTREE,
  CONSTRAINT `FK_Reference_42` FOREIGN KEY (`SPU_code`) REFERENCES `spu_table` (`SPU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SPU图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spu_image_table
-- ----------------------------
INSERT INTO `spu_image_table` VALUES (1, 1, '超宽大，极舒适，可拆洗的全尺寸沙发', '模块化设计，全尺寸款型，58cm超大座深', './images/view_pic/spu/100/bgi3.jpg', '100');
INSERT INTO `spu_image_table` VALUES (2, 1, '全尺寸+超舒适坐感 适应15㎡~30㎡标准客厅', '宽大的形态、柔软的触感、放松全身的舒适坐感，有安全感的沙发，自由组配的全尺寸设计，适应15㎡~30㎡各型客厅', './images/view_pic/spu/100/bgi4.jpg', '100');
INSERT INTO `spu_image_table` VALUES (3, 1, '58cm超大座深  自在盘腿更舒适', '超大身量座深，自在盘腿让身体全部放松，超软弹坐感来自37kg/m³高弹海绵坐垫，久坐起身也即刻复原', './images/view_pic/spu/100/bgi5.jpg', '100');
INSERT INTO `spu_image_table` VALUES (4, 1, '模块化设计 \r\n多人位大尺寸轻松入户', '基础沙发模块间的任意组合，靠背与座垫都能严密对齐，保持连接处稳固安定，人性化模块设计，大尺寸多人位也能轻松运装上楼', './images/view_pic/spu/100/bgi6.jpg', '100');
INSERT INTO `spu_image_table` VALUES (5, 1, '新版涤纶色织面料，立体质感呈现', '新版面料特选涤纶面料，立体混线色织工艺，呈现雾蓝、米黄、铅灰三色，拥有不易起 球变形的特质，兼具细腻有型的挺阔质感', './images/view_pic/spu/100/bgi7.jpg', '100');
INSERT INTO `spu_image_table` VALUES (6, 1, '舒适的臂弯，欢迎每一个成员入座', '宽大尺寸，多层次饱满靠枕，第一眼就确立的舒适感，亲切的迎接家庭成员', './images/view_pic/spu/100/bgi8.jpg', '100');
INSERT INTO `spu_image_table` VALUES (7, 1, '不靠墙设计，错落层次，空间更明朗', '转角三人座沙发不靠墙的设计，错落开前后层次，沙发整高恰好为空间腰线，让视觉更明朗', './images/view_pic/spu/100/bgi9.jpg', '100');
INSERT INTO `spu_image_table` VALUES (8, 1, '脚墩可移动，适应更多居住日常', '整体模块化设计，脚墩连接而成的贵妃位，可拆装连接片，左右自由移动，创造更多居住可能性', './images/view_pic/spu/100/bgi10.jpg', '100');
INSERT INTO `spu_image_table` VALUES (9, 1, '三人座一字形，中型客厅舒适标配', '以三人座达到一字形的客厅沙发形态，满足中型尺寸客厅的全部要求——方正简洁、宽适可盘腿、三口之家日常可用', './images/view_pic/spu/100/bgi11.jpg', '100');
INSERT INTO `spu_image_table` VALUES (10, 1, '靠墙设计，为客厅注入亲切与稳重', '适合紧凑空间的靠墙设计，大先生以简洁明了的语言，超软弹的质感，创造亲切稳重的基础氛围', './images/view_pic/spu/100/bgi12.jpg', '100');
INSERT INTO `spu_image_table` VALUES (11, 1, '畅快身姿，为大客厅宽敞定调', '转角大三人座适合20㎡以上的空间，连接而成的大正方体，创造宽敞、舒适的客厅基调', './images/view_pic/spu/100/bgi13.jpg', '100');
INSERT INTO `spu_image_table` VALUES (12, 1, '宽适落座却不显笨重', '将扶手减薄的设计语言，释放更多落座面积，搭配轻盈金属细腿，带来适应更多年轻家庭的宽阔座幅、精致视效', './images/view_pic/spu/100/bgi14.jpg', '100');
INSERT INTO `spu_image_table` VALUES (13, 1, '减薄扶手，创造简洁轻盈感', NULL, './images/view_pic/spu/50/bgi15(1).jpg', '50');
INSERT INTO `spu_image_table` VALUES (14, 1, '多层次靠枕，支撑每一个坐躺角度', NULL, './images/view_pic/spu/50/bgi15(2).jpg', '50');
INSERT INTO `spu_image_table` VALUES (15, 1, '新版雾蓝色，有型的客厅中心', '雾蓝色大先生独具的典雅质感，与深色背墙构起沉稳基调，营造出现代感的客厅中心', './images/view_pic/spu/100/bgi16.jpg', '100');
INSERT INTO `spu_image_table` VALUES (16, 1, '减薄扶手，创造简洁轻盈感', NULL, './images/view_pic/spu/50/bgi17(1).jpg', '50');
INSERT INTO `spu_image_table` VALUES (17, 1, '多层次靠枕，支撑每一个坐躺角度', NULL, './images/view_pic/spu/50/bgi17(2).jpg', '50');
INSERT INTO `spu_image_table` VALUES (18, 1, '可调节黑色钢腿', '选用耐久的钢材质沙发腿，表面做环氧树脂粉末喷涂，稳定不易褪色，底部配有可调节的防滑脚垫，可灵活调至适宜高度', './images/view_pic/spu/100/bgi18.jpg', '100');
INSERT INTO `spu_image_table` VALUES (19, 1, '全外套均可拆洗', '沙发外套均可拆洗，靠背、扶手和坐垫采用粘扣式拆装，可轻松保持长久整洁', './images/view_pic/spu/50/bgi19(1).jpg', '50');
INSERT INTO `spu_image_table` VALUES (20, 1, '饱满可拆洗软包', '可拆洗靠包和抱枕采用YKK拉链拆装，所有软包以公仔棉与珠仔棉等比例混合，造型饱满圆润', './images/view_pic/spu/50/bgi19(2).jpg', '50');
INSERT INTO `spu_image_table` VALUES (21, 1, '细腻车缝线工艺', '通体车缝线均匀细致，抱枕、扶手边线流畅平直，精致细节见工艺', './images/view_pic/spu/50/bgi19(3).jpg', '50');
INSERT INTO `spu_image_table` VALUES (22, 1, '一字型钢件连接', '新版大先生模块间采用一字型钢板连接，每件沙发均在底部两侧预埋螺母，采用垫片和螺杆依次连接，保证沙发间稳定不移位', './images/view_pic/spu/50/bgi19(4).jpg', '50');

-- ----------------------------
-- Table structure for spu_table
-- ----------------------------
DROP TABLE IF EXISTS `spu_table`;
CREATE TABLE `spu_table`  (
  `SPU_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'SPU编码',
  `designer_id` int(11) NULL DEFAULT NULL COMMENT '设计师id',
  `product_series_id` int(11) NULL DEFAULT NULL COMMENT '产品系列id',
  `sub_type_id` int(11) NULL DEFAULT NULL COMMENT '二级分类编码',
  `SPU_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SPU名称',
  `SPU_describe` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SPU简介',
  `SPU_head_img_path` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SPU_code`) USING BTREE,
  INDEX `FK_Reference_18`(`designer_id`) USING BTREE,
  INDEX `FK_Reference_40`(`sub_type_id`) USING BTREE,
  INDEX `FK_Reference_20`(`product_series_id`) USING BTREE,
  CONSTRAINT `FK_Reference_18` FOREIGN KEY (`designer_id`) REFERENCES `designer_table` (`designer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_20` FOREIGN KEY (`product_series_id`) REFERENCES `product_series_table` (`product_series_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_40` FOREIGN KEY (`sub_type_id`) REFERENCES `sub_type_table` (`sub_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SPU表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spu_table
-- ----------------------------
INSERT INTO `spu_table` VALUES (1, 1, 1, 2, '榆杨大先生沙发®｜Mr.Big Sofa', '超宽大，极舒适，可拆洗的全尺寸沙发', './images/view_pic/spu/headImg/Mr.BigSofa_head.jpg');
INSERT INTO `spu_table` VALUES (2, 2, 2, 5, '云帛床®｜Cloud Bed', '轻软不撞腿，优美与舒适的平衡', './images/view_pic/spu/headImg/CloudBed_head.jpg');
INSERT INTO `spu_table` VALUES (3, 3, 3, 14, '美术馆陈列柜｜Gallery Showcase', '现代的丰饶，空间的画作', './images/view_pic/spu/headImg/GalleryShowcase_head.jpg');
INSERT INTO `spu_table` VALUES (4, 4, 4, 24, '丝绸椅™｜Silk Chair', '不超过1mm的组件间隙，定义精密的舒适与优美曲度', './images/view_pic/spu/headImg/SilkChair_head.jpg');
INSERT INTO `spu_table` VALUES (5, 5, 5, 28, '瓦檐餐桌® 1.3/1.8米｜Tab Series', '东方飞檐的现代日常，精致空间的优美餐桌', './images/view_pic/spu/headImg/TabSeries_head.jpg');
INSERT INTO `spu_table` VALUES (6, 6, 6, 32, '光笼®｜Light Cage', '双层金属网编，来自斯德哥尔摩的氛围造型大师', './images/view_pic/spu/headImg/LightCage_head.jpg');
INSERT INTO `spu_table` VALUES (7, 7, 7, 36, '榆杨云杉天丝高支4件套床品™｜Spruce Bed Linen™', '100%绿色环保天丝，会呼吸的舒凉安睡', './images/view_pic/spu/headImg/SpruceBedLinen™_head.jpg');
INSERT INTO `spu_table` VALUES (8, 8, 7, 45, '云笼果盘｜Cage Fruit Tray', 'Ins级装饰美，给每日鲜果的精彩仪式', './images/view_pic/spu/headImg/CageFruitTray_head.jpg');
INSERT INTO `spu_table` VALUES (9, 8, 2, 50, '美术馆墙镜｜Gallery Mirror', '现代的丰饶，空间的画作', './images/view_pic/spu/headImg/GalleryMirror_head.jpg');

-- ----------------------------
-- Table structure for sub_type_table
-- ----------------------------
DROP TABLE IF EXISTS `sub_type_table`;
CREATE TABLE `sub_type_table`  (
  `sub_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '二级分类编码',
  `main_type_code` int(8) NOT NULL COMMENT '一级分类编码',
  `sub_type_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '二级分类名称',
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
  `addr_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `addr_is_default` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' COMMENT '是否默认',
  `addr_province` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省',
  `addr_city` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市',
  `addr_district` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区',
  `addr_detail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详细地址',
  `addressee_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人姓名',
  `addressee_tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号码',
  PRIMARY KEY (`addr_id`) USING BTREE,
  INDEX `FK_Reference_23`(`user_id`) USING BTREE,
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`user_id`) REFERENCES `user_profile_table` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_addr_table
-- ----------------------------
INSERT INTO `user_addr_table` VALUES (1, 1, 'false', '四川省', '成都市', '金堂县', '三星镇希望未来城11栋802', '盼盼', '15680600000');
INSERT INTO `user_addr_table` VALUES (2, 2, 'true', '四川省', '成都市', '双流区', '华府大道光明城市12栋', '盼盼', '15680600000');
INSERT INTO `user_addr_table` VALUES (3, 1, 'false', '四川省', '成都市', '彭州市', '升平镇皇后大道33号', '张三', '16273829723');
INSERT INTO `user_addr_table` VALUES (4, 3, 'false', '山西省', '长治市', '长治市', '升平镇皇后大道628号', '王五', '18293847328');
INSERT INTO `user_addr_table` VALUES (5, 1, 'true', '北京市', '北京城区', '海淀区', '东湖街道人民路769号', '张三', '18472637489');
INSERT INTO `user_addr_table` VALUES (6, 2, 'false', '四川省', '巴中市', '恩阳区', '义杨大道魁字街道2号', '王五1', '13576432213');
INSERT INTO `user_addr_table` VALUES (7, 6, 'false', '重庆市', '重庆城区', '綦江区', '北街綦江花园', '牛牛', '15680600001');
INSERT INTO `user_addr_table` VALUES (8, 2, 'false', '重庆市', '重庆市', '万州区', '金龙路滨江路1号', '王1五', '13467754434');
INSERT INTO `user_addr_table` VALUES (9, 14, 'false', '四川省', '绵阳市', '游仙区', '小枧沟镇嘉兴警苑', 'stay', '13398352233');
INSERT INTO `user_addr_table` VALUES (10, 6, 'false', '重庆市', '重庆城区', '合川区', '上什街电力新村', '牛牛', '15680600001');
INSERT INTO `user_addr_table` VALUES (11, 10, 'false', '广东省', '汕头市', '潮阳区', '朝阳街大润发', '丫蛋', '15555463215');
INSERT INTO `user_addr_table` VALUES (12, 14, 'false', '四川省', '成都市', '龙泉驿区', '西河镇胜利家园', 'stay', '18380102229');
INSERT INTO `user_addr_table` VALUES (13, 7, 'false', '江苏省', '苏州市', '吴江区', '大一路梨子街22号', '托尼', '15345566778');
INSERT INTO `user_addr_table` VALUES (14, 10, 'false', '广东省', '潮州市', '饶平区', '古巷街龙湖公园', '丫蛋', '15555463215');
INSERT INTO `user_addr_table` VALUES (15, 16, 'false', '四川省', '成都市', '高新区', '华府大道骑龙小区', '卡农', '15181690527');
INSERT INTO `user_addr_table` VALUES (16, 16, 'false', '四川省', '成都市', '龙泉驿区', '车城大道师大花园', '卡农', '13325256136');
INSERT INTO `user_addr_table` VALUES (17, 11, 'false', '四川省', '南充市', '高坪区', '阳春路御景江山', '滴滴', '13569875236');
INSERT INTO `user_addr_table` VALUES (18, 11, 'false', '四川省', '南充市', '高坪区', '建设路白塔中学', '滴滴', '13569875236');
INSERT INTO `user_addr_table` VALUES (19, 18, 'false', '四川省', '广元市', '旺苍县', '嘉川镇煤铁厂', '天灰', '18582581952');
INSERT INTO `user_addr_table` VALUES (20, 7, 'false', '江苏省', '苏州市', '吴中区', '峰里路五合街11号', '托尼', '15344422321');
INSERT INTO `user_addr_table` VALUES (21, 18, 'false', '四川省', '广元市', '旺苍县', '老城区九十二队', '天灰', '18381599775');
INSERT INTO `user_addr_table` VALUES (22, 12, 'false', '北京市', '北京城区', '通州区', '图书城街台湖舞美剧场', '浩浩', '14536958569');
INSERT INTO `user_addr_table` VALUES (23, 12, 'false', '四川省', '成都市', '锦江区', '橡树林路域上和美先锋剧场', '浩浩', '14536958569');
INSERT INTO `user_addr_table` VALUES (24, 19, 'false', '四川省', '绵阳市', '涪城区', '高水桂圆雅居', '吉诺比利', '13545687899');
INSERT INTO `user_addr_table` VALUES (25, 13, 'false', '山西省', '太原市', '晋源区', '佳林路大学路', '苏三', '15413424232');
INSERT INTO `user_addr_table` VALUES (26, 19, 'false', '四川省', '成都市', '龙泉驿区', '黄土镇神龙汽车', '吉诺比利', '13778079794');
INSERT INTO `user_addr_table` VALUES (27, 13, 'false', '山西省', '太原市', '晋源区', '一和同路林子街1号', '苏三', '15423224211');
INSERT INTO `user_addr_table` VALUES (28, 15, 'false', '山东省', '济南市', '市中区', '向路街阿斯达路', '飞飞飞', '15332425663');
INSERT INTO `user_addr_table` VALUES (29, 29, 'false', '重庆市', '重庆城区', '南岸区', '东街清江怡苑', 'paker', '13785582226');
INSERT INTO `user_addr_table` VALUES (30, 15, 'false', '山东省', '济南市', '市中区', '天上街安迪路1号', '飞飞飞', '15423231213');
INSERT INTO `user_addr_table` VALUES (31, 20, 'false', '四川省', '绵阳市', '高新区', '双碑慕和南道', 'paker', '18581585969');
INSERT INTO `user_addr_table` VALUES (32, 17, 'false', '浙江省', '温州市', '平阳区', '皮革厂一签路2号', '苏大强', '15332342525');
INSERT INTO `user_addr_table` VALUES (33, 17, 'false', '浙江省', '温州市', '平阳路', '建安路利川街11号', '苏大强', '13456675545');

-- ----------------------------
-- Table structure for user_profile_table
-- ----------------------------
DROP TABLE IF EXISTS `user_profile_table`;
CREATE TABLE `user_profile_table`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_account_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `user_nickname` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `user_tel_num` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户手机号',
  `user_sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '男' COMMENT '用户性别',
  `user_reg_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '用户注册时间',
  `user_birthday` date NULL DEFAULT NULL COMMENT '用户出生日期',
  `user_icon_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户基本信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_profile_table
-- ----------------------------
INSERT INTO `user_profile_table` VALUES (1, 'ty72618', '张三', 'user', '17263749876', '男', '2019-06-13 08:45:03', '2017-06-23', './images/user_icon/t1.jpg');
INSERT INTO `user_profile_table` VALUES (2, 'easy', '王五', 'user', '13358930912', '女', '2019-06-13 19:36:17', '2008-02-11', './images/user_icon/ch1.jpg');
INSERT INTO `user_profile_table` VALUES (3, 'tyj8273917', 'pluto', 'user', '17263827263', '男', '2019-06-13 08:45:03', '2019-03-28', './images/user_icon/1.jpg');
INSERT INTO `user_profile_table` VALUES (4, '99601', '盼盼', 'user', '15680600000', '女', '2019-06-13 08:45:03', '2009-11-11', './images/user_icon/tang01.png');
INSERT INTO `user_profile_table` VALUES (5, 'ty16253849', '因子', 'user', '18362541527', '男', '2019-06-13 08:45:03', '1994-08-18', './images/user_icon/t2.jpg');
INSERT INTO `user_profile_table` VALUES (6, '99602', '牛牛', 'user', '15680600001', '男', '2019-06-13 08:45:03', '2008-05-21', './images/user_icon/tang02.png');
INSERT INTO `user_profile_table` VALUES (7, 'chen12', '托尼', 'user', '19447838283', '男', '2019-06-13 08:45:03', '1999-02-22', './images/user_icon/ch2.jpg');
INSERT INTO `user_profile_table` VALUES (8, 'ty83628462', 'Bobby', 'user', '15283736251', '男', '2019-06-13 08:45:03', '2004-06-24', './images/user_icon/t3.jpg');
INSERT INTO `user_profile_table` VALUES (9, 'ty2739432', '叉叉', 'user', '17281736167', '男', '2019-06-13 08:45:03', '1935-07-11', './images/user_icon/t4.jpg');
INSERT INTO `user_profile_table` VALUES (10, '99603', '丫蛋', 'user', '15555463215', '女', '2019-06-13 08:45:03', '1998-10-23', './images/user_icon/tang03.png');
INSERT INTO `user_profile_table` VALUES (11, '99604', '滴滴', 'user', '13569875236', '女', '2019-06-13 08:45:03', '1997-11-05', './images/user_icon/tang04.png');
INSERT INTO `user_profile_table` VALUES (12, '99605', '浩浩', 'user', '14536958569', '男', '2019-06-13 08:45:03', '1997-11-13', './images/user_icon/tang05.png');
INSERT INTO `user_profile_table` VALUES (13, 'ass1211', '苏三', 'user', '15311244523', '女', '2019-06-13 08:45:03', '1982-07-11', './images/user_icon/ch3.jpg');
INSERT INTO `user_profile_table` VALUES (14, 'noah', 'stay', 'user', '13778071952', '女', '2019-06-13 08:45:03', '1993-06-26', './images/user_icon/kaka1.png');
INSERT INTO `user_profile_table` VALUES (15, 'kda7662', '飞飞飞', 'user', '13899910234', '男', '2019-06-13 08:45:03', '1992-09-21', './images/user_icon/ch4.jpg');
INSERT INTO `user_profile_table` VALUES (16, 'immortal', '卡农', 'user', '15181690527', '男', '2019-06-13 08:45:03', '1985-06-22', './images/user_icon/kaka2.png');
INSERT INTO `user_profile_table` VALUES (17, '7812sfs', '苏大强', 'user', '13911345321', '男', '2019-06-13 08:45:03', '1997-03-17', './images/user_icon/ch5.jpg');
INSERT INTO `user_profile_table` VALUES (18, 'indifferent', '天灰', 'user', '18316549875', '女', '2019-06-13 08:45:03', '1990-01-02', './images/user_icon/kaka3.png');
INSERT INTO `user_profile_table` VALUES (19, 'keep', '吉诺比利', 'user', '15598356136', '男', '2019-06-13 08:45:03', '1986-07-07', './images/user_icon/kaka4.png');
INSERT INTO `user_profile_table` VALUES (20, '187', 'paker', 'user', '13355661212', '男', '2019-06-13 08:45:03', '1996-09-26', './images/user_icon/kaka5.png');
INSERT INTO `user_profile_table` VALUES (21, 'faker2016', 'faker', 'user', '13542200620', '男', '2019-06-13 08:45:03', '1995-07-13', './images/user_icon/u=1205937707,361227194.jpg');
INSERT INTO `user_profile_table` VALUES (22, 'xiao3221', '晓晓', 'user', '18203028841', '女', '2019-06-13 08:45:03', '1999-05-19', './images/user_icon/u=145782115,355549160.jpg');
INSERT INTO `user_profile_table` VALUES (23, 'xinhe8762', '皆是孤独', 'user', '13654021883', '男', '2019-06-13 08:45:03', '1993-12-24', './images/user_icon/u=1544298584,36102297.jpg');
INSERT INTO `user_profile_table` VALUES (24, 'yan9420', ' 茉莉蜜茶', 'user', '15684990100', '女', '2019-06-13 08:45:03', '1998-08-11', './images/user_icon/u=1937445174,213352882.jpg');
INSERT INTO `user_profile_table` VALUES (25, 'lemon321', '性格缺陷', 'user', '16425505411', '男', '2019-06-13 08:45:03', '1995-11-24', './images/user_icon/u=3758354743,289299.jpg');
INSERT INTO `user_profile_table` VALUES (26, '123123', 'mua', '321321', '13213123121', NULL, '2019-06-13 08:45:03', NULL, '');
INSERT INTO `user_profile_table` VALUES (27, 'aini', 'mua', '123', '11111111111', NULL, '2019-06-13 08:45:03', NULL, '');
INSERT INTO `user_profile_table` VALUES (28, 'wiqe', 'lalal ', '6436346', '11111111111', NULL, '2019-06-12 19:25:46', NULL, NULL);
INSERT INTO `user_profile_table` VALUES (29, 'testUser', 'testUser', 'user', '66666666666', '男', '2019-06-13 12:10:19', NULL, NULL);

-- ----------------------------
-- View structure for color
-- ----------------------------
DROP VIEW IF EXISTS `color`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `color` AS select `sku_table`.`SKU_code` AS `SKU_code`,`sku_table`.`SPU_code` AS `SPU_code`,`sku_table`.`SKU_name` AS `SKU_name`,`sku_table`.`purchase_price` AS `purchase_price`,`sku_table`.`sell_price` AS `sell_price`,`sku_table`.`stock` AS `stock`,`sku_table`.`log_date` AS `log_date`,`sku_table`.`produce_date` AS `produce_date`,`sku_table`.`SKU_pic_path` AS `SKU_pic_path`,`sku_table`.`SKU_size_pic_path` AS `SKU_size_pic_path`,`sku_spec_table`.`spec_option_id` AS `spec_option_id`,`sku_spec_table`.`spec_col_id` AS `spec_col_id`,`spec_option_table`.`spec_id` AS `spec_id`,`spec_option_table`.`spec_option_value` AS `spec_option_value`,`spec_table`.`parameter_name` AS `parameter_name` from (((`sku_table` join `sku_spec_table` on((`sku_spec_table`.`SKU_code` = `sku_table`.`SKU_code`))) join `spec_option_table` on((`sku_spec_table`.`spec_option_id` = `spec_option_table`.`spec_option_id`))) join `spec_table` on((`spec_option_table`.`spec_id` = `spec_table`.`spec_id`))) where (`spec_table`.`spec_id` = 1);

-- ----------------------------
-- View structure for style
-- ----------------------------
DROP VIEW IF EXISTS `style`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `style` AS select `sku_table`.`SKU_code` AS `SKU_code`,`sku_table`.`SPU_code` AS `SPU_code`,`sku_table`.`SKU_name` AS `SKU_name`,`sku_table`.`purchase_price` AS `purchase_price`,`sku_table`.`sell_price` AS `sell_price`,`sku_table`.`stock` AS `stock`,`sku_table`.`log_date` AS `log_date`,`sku_table`.`produce_date` AS `produce_date`,`sku_table`.`SKU_pic_path` AS `SKU_pic_path`,`sku_table`.`SKU_size_pic_path` AS `SKU_size_pic_path`,`sku_spec_table`.`spec_option_id` AS `spec_option_id`,`sku_spec_table`.`spec_col_id` AS `spec_col_id`,`spec_option_table`.`spec_id` AS `spec_id`,`spec_option_table`.`spec_option_value` AS `spec_option_value`,`spec_table`.`parameter_name` AS `parameter_name` from (((`sku_table` join `sku_spec_table` on((`sku_spec_table`.`SKU_code` = `sku_table`.`SKU_code`))) join `spec_option_table` on((`sku_spec_table`.`spec_option_id` = `spec_option_table`.`spec_option_id`))) join `spec_table` on((`spec_option_table`.`spec_id` = `spec_table`.`spec_id`))) where (`spec_table`.`spec_id` = 2);

SET FOREIGN_KEY_CHECKS = 1;
