CREATE TABLE `attr_option_table` (
`attr_option_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性选项id',
`attr_id` int(11) NOT NULL COMMENT '属性id',
`attr_option_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性选项名',
`attr_option_value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性选项值',
PRIMARY KEY (`attr_option_id`) ,
INDEX `FK_Reference_attr_option` (`attr_id` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '属性选项表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `attr_table` (
`attr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性id',
`attr_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性名称',
PRIMARY KEY (`attr_id`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '属性表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `collection_table` (
`collection_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏条目id',
`user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
`SKU_code` bigint(20) NULL DEFAULT NULL COMMENT 'SKU编码',
`collection_date` date NULL DEFAULT NULL COMMENT '收藏时间',
PRIMARY KEY (`collection_id`) ,
INDEX `FK_Reference_35` (`user_id` ASC) USING BTREE,
INDEX `FK_Reference_44` (`SKU_code` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '收藏表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `comment_pic_table` (
`comment_pic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论图片id',
`comment_id` int(11) NOT NULL COMMENT '评论id',
`comment_pic_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片url',
PRIMARY KEY (`comment_pic_id`) ,
INDEX `FK_Reference_34` (`comment_id` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 31
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '评论图片表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `comment_table` (
`comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
`SKU_code` bigint(20) NULL DEFAULT NULL COMMENT 'SKU编码',
`comment_star` int(11) NOT NULL COMMENT '评论星级',
`comment_time` datetime NOT NULL COMMENT '评论时间',
`comment_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
PRIMARY KEY (`comment_id`) ,
INDEX `FK_Reference_33` (`SKU_code` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 13
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '评论列表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `designer_awards_table` (
`designer_award_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设计师荣誉id',
`designer_id` int(11) NOT NULL COMMENT '设计师id',
`designer_award_date` year NULL DEFAULT 2019 COMMENT '荣誉年份',
`designer_award_describe` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'this a award describe' COMMENT '荣誉描述',
`designer_award_pic_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '荣誉图片路径',
PRIMARY KEY (`designer_award_id`) ,
INDEX `FK_Reference_17` (`designer_id` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '设计师荣誉表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `designer_table` (
`designer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设计师id',
`designer_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设计师名字',
`designer_birth_place` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '巴黎' COMMENT '设计师籍贯',
`designer_hold_place` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '法国' COMMENT '设计师驻地',
`designer_motto` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '“关于未来，我有许多计划，但其中重要的是，与造作合作成功。”' COMMENT '设计师座右铭',
`designer_main_pic_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设计师主图片路径',
`designer_bgi_pic_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设计师产品介绍背景图片路径',
`designer_describe` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设计师介绍',
PRIMARY KEY (`designer_id`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 9
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '设计师表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `login_log_table` (
`login_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录id',
`user_id` bigint(20) NOT NULL COMMENT '用户id',
`login_is_success` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' COMMENT '是否成功',
`login_time` datetime NOT NULL COMMENT '登录时间',
`login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录ip',
PRIMARY KEY (`login_log_id`) ,
INDEX `FK_Reference_24` (`user_id` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '登录日志表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `main_type_table` (
`main_type_code` int(8) NOT NULL AUTO_INCREMENT COMMENT '一级分类编码',
`main_type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '一级分类名称',
PRIMARY KEY (`main_type_code`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 10
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '一级分类表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `order_sku_table` (
`order_SKU_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单商品条目id',
`SKU_code` bigint(20) NOT NULL COMMENT 'SKU编码',
`order_id` bigint(20) NOT NULL COMMENT '订单id',
`order_SKU_num` int(11) NOT NULL COMMENT 'SKU数量',
PRIMARY KEY (`order_SKU_id`) ,
INDEX `FK_Reference_31` (`SKU_code` ASC) USING BTREE,
INDEX `FK_Reference_32` (`order_id` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '订单商品关联表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `order_table` (
`order_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单id',
`user_id` bigint(20) NOT NULL COMMENT '用户id',
`addr_id` bigint(20) NOT NULL COMMENT '地址id',
`order_place_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '下单时间',
`order_pay_time` datetime NULL DEFAULT NULL COMMENT '支付时间',
`order_deliver_time` datetime NULL DEFAULT NULL COMMENT '发货时间',
`order_receive_time` datetime NULL DEFAULT NULL COMMENT '收货时间',
`order_cut_down` bigint(20) NULL DEFAULT NULL COMMENT '优惠金额',
`order_amount` bigint(20) NULL DEFAULT NULL COMMENT '交易金额',
`order_pay_method` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付方式',
`order_deliver_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流单号',
`order_point` bigint(20) NULL DEFAULT NULL COMMENT '订单积分',
`order_state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '正常' COMMENT '订单状态',
PRIMARY KEY (`order_id`) ,
INDEX `FK_Reference_30` (`user_id` ASC) USING BTREE,
INDEX `FK_Reference_41` (`addr_id` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 200000
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '订单列表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `package_sku_table` (
`package_item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合内容条目id',
`package_id` int(11) NOT NULL COMMENT '组合id',
`SKU_code` bigint(20) NULL DEFAULT NULL COMMENT 'SKU编码',
PRIMARY KEY (`package_item_id`) ,
INDEX `FK_Reference_36` (`package_id` ASC) USING BTREE,
INDEX `FK_Reference_37` (`SKU_code` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '组合内容表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `package_table` (
`package_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合id',
PRIMARY KEY (`package_id`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '组合表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `product_series_table` (
`product_series_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品系列id',
`designer_id` int(11) NOT NULL COMMENT '设计师id',
`product_series_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品系列名称',
PRIMARY KEY (`product_series_id`) ,
INDEX `FK_Reference_19` (`designer_id` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 8
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '产品系列表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `shopping_car_item_table` (
`shopping_car_item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车条目id',
`SKU_code` bigint(20) NULL DEFAULT NULL COMMENT 'SKU编码',
`shopping_car_SKU_num` int(11) NOT NULL COMMENT 'SKU数量',
`user_id` bigint(20) NOT NULL COMMENT '用户id',
PRIMARY KEY (`shopping_car_item_id`) ,
INDEX `FK_Reference_43` (`SKU_code` ASC) USING BTREE,
INDEX `Reference_888` (`user_id` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '购物车条目表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `sku_attr_table` (
`attr_col_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性选项条目id',
`attr_option_id` int(11) NOT NULL COMMENT '属性选项id',
`SKU_code` bigint(20) NOT NULL COMMENT 'SKU编码',
PRIMARY KEY (`attr_col_id`) ,
INDEX `FK_Reference_SKU_attr_option` (`attr_option_id` ASC) USING BTREE,
INDEX `FK_Reference_attr_SKU` (`SKU_code` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = 'SKU_属性选项关联表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `sku_spec_table` (
`spec_col_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格选项条目id',
`spec_option_id` int(11) NOT NULL COMMENT '规格选项id',
`SKU_code` bigint(20) NOT NULL COMMENT 'SKU编码',
PRIMARY KEY (`spec_col_id`) ,
INDEX `FK_Reference_SKU_spec_option` (`spec_option_id` ASC) USING BTREE,
INDEX `FK_Reference_spec_SKU` (`SKU_code` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 19
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = 'SKU_规格选项关联表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `sku_table` (
`SKU_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'SKU编码',
`SPU_code` bigint(20) NOT NULL COMMENT 'SPU编码',
`SKU_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SKU名称',
`purchase_price` int(11) NOT NULL COMMENT '进价',
`sell_price` int(11) NOT NULL COMMENT '售价',
`stock` int(11) NOT NULL COMMENT '库存',
`log_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '录入时间',
`produce_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '生产日期',
`SKU_pic_path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SKU图片路径',
`SKU_size_pic_path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SKU尺寸图片路径',
PRIMARY KEY (`SKU_code`) ,
INDEX `FK_Reference_29` (`SPU_code` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 80000011
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = 'SKU表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `spec_option_table` (
`spec_option_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格选项id',
`spec_id` int(11) NOT NULL COMMENT '规格id',
`spec_option_value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格选项值',
PRIMARY KEY (`spec_option_id`) ,
INDEX `FK_Reference_spec_option` (`spec_id` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 9
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '规格选项'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `spec_table` (
`spec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格id',
`parameter_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参数名称',
PRIMARY KEY (`spec_id`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '规格表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `spu_image_table` (
`product_pic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片id',
`SPU_code` bigint(20) NULL DEFAULT NULL COMMENT 'SPU编码',
`product_pic_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片标题',
`product_pic_describe` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片描述',
`product_pic_path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片路径',
`product_pic_size` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片尺寸',
PRIMARY KEY (`product_pic_id`) ,
INDEX `FK_Reference_42` (`SPU_code` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = 'SPU图片表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `spu_table` (
`SPU_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'SPU编码',
`designer_id` int(11) NULL DEFAULT NULL COMMENT '设计师id',
`product_series_id` int(11) NULL DEFAULT NULL COMMENT '产品系列id',
`sub_type_id` int(11) NULL DEFAULT NULL COMMENT '二级分类编码',
`SPU_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SPU名称',
`SPU_describe` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SPU简介',
PRIMARY KEY (`SPU_code`) ,
INDEX `FK_Reference_18` (`designer_id` ASC) USING BTREE,
INDEX `FK_Reference_40` (`sub_type_id` ASC) USING BTREE,
INDEX `FK_Reference_20` (`product_series_id` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 60000001
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = 'SPU表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `sub_type_table` (
`sub_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '二级分类编码',
`main_type_code` int(8) NOT NULL COMMENT '一级分类编码',
`sub_type_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '二级分类名称',
PRIMARY KEY (`sub_type_id`) ,
INDEX `FK_Reference_type_main_sub` (`main_type_code` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 53
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '二级分类表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `user_addr_table` (
`addr_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '地址id',
`user_id` bigint(20) NOT NULL COMMENT '用户id',
`addr_is_default` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' COMMENT '是否默认',
`addr_province` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省',
`addr_city` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市',
`addr_district` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区',
`addr_detail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详细地址',
`addressee_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人姓名',
`addressee_tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号码',
PRIMARY KEY (`addr_id`) ,
INDEX `FK_Reference_23` (`user_id` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 34
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '用户地址表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `user_profile_table` (
`user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
`user_account_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
`user_nickname` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
`user_password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'user' COMMENT '用户密码',
`user_tel_num` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户手机号',
`user_sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '男' COMMENT '用户性别',
`user_reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '用户注册时间',
`user_birthday` date NULL DEFAULT NULL COMMENT '用户出生日期',
`user_icon_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
PRIMARY KEY (`user_id`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 10000
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '用户基本信息表'
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;

ALTER TABLE `attr_option_table` ADD CONSTRAINT `FK_Reference_attr_option` FOREIGN KEY (`attr_id`) REFERENCES `attr_table` (`attr_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `collection_table` ADD CONSTRAINT `FK_Reference_35` FOREIGN KEY (`user_id`) REFERENCES `user_profile_table` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `collection_table` ADD CONSTRAINT `FK_Reference_44` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `comment_pic_table` ADD CONSTRAINT `FK_Reference_34` FOREIGN KEY (`comment_id`) REFERENCES `comment_table` (`comment_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `comment_table` ADD CONSTRAINT `FK_Reference_33` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `designer_awards_table` ADD CONSTRAINT `FK_Reference_17` FOREIGN KEY (`designer_id`) REFERENCES `designer_table` (`designer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `login_log_table` ADD CONSTRAINT `FK_Reference_24` FOREIGN KEY (`user_id`) REFERENCES `user_profile_table` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `order_sku_table` ADD CONSTRAINT `FK_Reference_31` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `order_sku_table` ADD CONSTRAINT `FK_Reference_32` FOREIGN KEY (`order_id`) REFERENCES `order_table` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `order_table` ADD CONSTRAINT `FK_Reference_30` FOREIGN KEY (`user_id`) REFERENCES `user_profile_table` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `order_table` ADD CONSTRAINT `FK_Reference_41` FOREIGN KEY (`addr_id`) REFERENCES `user_addr_table` (`addr_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `package_sku_table` ADD CONSTRAINT `FK_Reference_36` FOREIGN KEY (`package_id`) REFERENCES `package_table` (`package_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `package_sku_table` ADD CONSTRAINT `FK_Reference_37` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `product_series_table` ADD CONSTRAINT `FK_Reference_19` FOREIGN KEY (`designer_id`) REFERENCES `designer_table` (`designer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `shopping_car_item_table` ADD CONSTRAINT `FK_Reference_43` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `shopping_car_item_table` ADD CONSTRAINT `Reference_888` FOREIGN KEY (`user_id`) REFERENCES `user_profile_table` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `sku_attr_table` ADD CONSTRAINT `FK_Reference_SKU_attr_option` FOREIGN KEY (`attr_option_id`) REFERENCES `attr_option_table` (`attr_option_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `sku_attr_table` ADD CONSTRAINT `FK_Reference_attr_SKU` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `sku_spec_table` ADD CONSTRAINT `FK_Reference_SKU_spec_option` FOREIGN KEY (`spec_option_id`) REFERENCES `spec_option_table` (`spec_option_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `sku_spec_table` ADD CONSTRAINT `FK_Reference_spec_SKU` FOREIGN KEY (`SKU_code`) REFERENCES `sku_table` (`SKU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `sku_table` ADD CONSTRAINT `FK_Reference_29` FOREIGN KEY (`SPU_code`) REFERENCES `spu_table` (`SPU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `spec_option_table` ADD CONSTRAINT `FK_Reference_spec_option` FOREIGN KEY (`spec_id`) REFERENCES `spec_table` (`spec_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `spu_image_table` ADD CONSTRAINT `FK_Reference_42` FOREIGN KEY (`SPU_code`) REFERENCES `spu_table` (`SPU_code`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `spu_table` ADD CONSTRAINT `FK_Reference_18` FOREIGN KEY (`designer_id`) REFERENCES `designer_table` (`designer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `spu_table` ADD CONSTRAINT `FK_Reference_20` FOREIGN KEY (`product_series_id`) REFERENCES `product_series_table` (`product_series_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `spu_table` ADD CONSTRAINT `FK_Reference_40` FOREIGN KEY (`sub_type_id`) REFERENCES `sub_type_table` (`sub_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `sub_type_table` ADD CONSTRAINT `FK_Reference_type_main_sub` FOREIGN KEY (`main_type_code`) REFERENCES `main_type_table` (`main_type_code`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `user_addr_table` ADD CONSTRAINT `FK_Reference_23` FOREIGN KEY (`user_id`) REFERENCES `user_profile_table` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

