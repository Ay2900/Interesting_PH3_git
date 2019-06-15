/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/6/11 星期二 13:51:09                       */
/*==============================================================*/


drop table if exists SKU_attr_table;

drop table if exists SKU_image_table;

drop table if exists SKU_spec_table;

drop table if exists SKU_table;

drop table if exists SPU_table;

drop table if exists attr_option_table;

drop table if exists attr_table;

drop table if exists collection_table;

drop table if exists comment_pic_table;

drop table if exists comment_table;

drop table if exists designer_awards_table;

drop table if exists designer_table;

drop table if exists login_log_table;

drop table if exists main_type_table;

drop table if exists order_SKU_table;

drop table if exists order_table;

drop table if exists package_sku_table;

drop table if exists package_table;

drop table if exists product_series_table;

drop table if exists shopping_car_item_table;

drop table if exists shopping_car_table;

drop table if exists spec_option_table;

drop table if exists spec_table;

drop table if exists sub_type_table;

drop table if exists user_addr_table;

drop table if exists user_profile_table;

/*==============================================================*/
/* Table: SKU_attr_table                                        */
/*==============================================================*/
create table SKU_attr_table
(
   attr_col_id          int not null auto_increment comment '属性选项条目id',
   attr_option_id       int not null comment '属性选项id',
   SKU_code             int(8) not null comment 'SKU编码',
   primary key (attr_col_id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

alter table SKU_attr_table comment 'SKU_属性选项关联表';

/*==============================================================*/
/* Table: SKU_image_table                                       */
/*==============================================================*/
create table SKU_image_table
(
   SKU_code             int(8) not null comment 'SKU编码',
   product_pic_id       int not null auto_increment comment '图片id',
   product_pic_describe varchar(40) comment '图片描述',
   product_pic_path     varchar(100) not null comment '图片路径',
   product_pic_size     varchar(10) comment '图片尺寸',
   primary key (product_pic_id)
);

alter table SKU_image_table comment 'SKU图片表';

/*==============================================================*/
/* Table: SKU_spec_table                                        */
/*==============================================================*/
create table SKU_spec_table
(
   spec_col_id          int not null auto_increment comment '规格选项条目id',
   spec_option_id       int not null comment '规格选项id',
   SKU_code             int(8) not null comment 'SKU编码',
   primary key (spec_col_id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

alter table SKU_spec_table comment 'SKU_规格选项关联表';

/*==============================================================*/
/* Table: SKU_table                                             */
/*==============================================================*/
create table SKU_table
(
   SKU_code             int(8) not null auto_increment comment 'SKU编码',
   SPU_code             int(8) not null comment 'SPU编码',
   spec_col_id          int not null comment '规格选项条目id',
   attr_col_id          int not null comment '属性选项条目id',
   SKU_name             varchar(20) not null comment 'SKU名称',
   purchase_price       int not null comment '进价',
   sell_price           int not null comment '售价',
   stock                int not null comment '库存',
   log_date             timestamp comment '录入时间',
   produce_date         timestamp comment '生产日期',
   primary key (SKU_code)
)
auto_increment = 80000001
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

alter table SKU_table comment 'SKU表';

/*==============================================================*/
/* Table: SPU_table                                             */
/*==============================================================*/
create table SPU_table
(
   SPU_code             int(8) not null auto_increment comment 'SPU编码',
   designer_id          int comment '设计师id',
   product_series_id    int comment '产品系列id',
   sub_type_id          int comment '二级分类编码',
   SPU_name             varchar(40) not null comment 'SPU名称',
   SPU_describe         varchar(200) not null comment 'SPU简介',
   SPU_detail           varchar(10000) not null comment 'SPU详情',
   primary key (SPU_code)
)
auto_increment = 60000001
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

alter table SPU_table comment 'SPU表';

/*==============================================================*/
/* Table: attr_option_table                                     */
/*==============================================================*/
create table attr_option_table
(
   attr_option_id       int not null auto_increment comment '属性选项id',
   attr_id              int not null comment '属性id',
   attr_option_name     varchar(20) not null comment '属性选项名',
   attr_option_value    varchar(20) not null comment '属性选项值',
   primary key (attr_option_id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

alter table attr_option_table comment '属性选项表';

/*==============================================================*/
/* Table: attr_table                                            */
/*==============================================================*/
create table attr_table
(
   attr_id              int not null auto_increment comment '属性id',
   attr_name            varchar(20) not null comment '属性名称',
   primary key (attr_id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

alter table attr_table comment '属性表';

/*==============================================================*/
/* Table: collection_table                                      */
/*==============================================================*/
create table collection_table
(
   collection_id        int not null auto_increment comment '收藏条目id',
   user_id              int not null comment '用户id',
   SKU_code             int(8) not null comment 'SKU编码',
   collection_date      date comment '收藏时间',
   primary key (collection_id)
);

alter table collection_table comment '收藏表';

/*==============================================================*/
/* Table: comment_pic_table                                     */
/*==============================================================*/
create table comment_pic_table
(
   comment_pic_id       int not null auto_increment comment '评论图片id',
   comment_id           int not null comment '评论id',
   comment_pic_url      varchar(50) not null comment '图片url',
   primary key (comment_pic_id)
);

alter table comment_pic_table comment '评论图片表';

/*==============================================================*/
/* Table: comment_table                                         */
/*==============================================================*/
create table comment_table
(
   comment_id           int not null auto_increment comment '评论id',
   SKU_code             int(8) not null comment 'SKU编码',
   comment_star         int not null comment '评论星级',
   comment_time         datetime not null comment '评论时间',
   comment_content      varchar(1000) comment '评论内容',
   primary key (comment_id)
);

alter table comment_table comment '评论列表';

/*==============================================================*/
/* Table: designer_awards_table                                 */
/*==============================================================*/
create table designer_awards_table
(
   designer_award_id    int not null auto_increment comment '设计师荣誉id',
   designer_id          int not null comment '设计师id',
   designer_award_date  year default '2019' comment '荣誉年份',
   designer_award_describe varchar(40) default 'this a award describe' comment '荣誉描述',
   designer_award_pic_path varchar(100) not null comment '荣誉图片路径',
   primary key (designer_award_id)
);

alter table designer_awards_table comment '设计师荣誉表';

/*==============================================================*/
/* Table: designer_table                                        */
/*==============================================================*/
create table designer_table
(
   designer_id          int not null auto_increment comment '设计师id',
   designer_name        varchar(50) not null comment '设计师名字',
   designer_birth_place varchar(20) not null default '巴黎' comment '设计师籍贯',
   designer_hold_place  varchar(20) not null default '法国' comment '设计师驻地',
   designer_motto       varchar(100) not null default '“关于未来，我有许多计划，但其中重要的是，与造作合作成功。”' comment '设计师座右铭',
   designer_main_pic_path varchar(100) not null comment '设计师主图片路径',
   designer_bgi_pic_path varchar(100) not null comment '设计师产品介绍背景图片路径',
   primary key (designer_id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

alter table designer_table comment '设计师表';

/*==============================================================*/
/* Table: login_log_table                                       */
/*==============================================================*/
create table login_log_table
(
   login_log_id         int not null auto_increment comment '记录id',
   user_id              int not null comment '用户id',
   login_is_success     varchar(5) not null default 'false' comment '是否成功',
   login_time           datetime not null comment '登录时间',
   login_ip             varchar(20) comment '登录ip',
   primary key (login_log_id)
);

alter table login_log_table comment '登录日志表';

/*==============================================================*/
/* Table: main_type_table                                       */
/*==============================================================*/
create table main_type_table
(
   main_type_code       int(8) not null auto_increment comment '一级分类编码',
   main_type_name       varchar(20) not null comment '一级分类名称',
   primary key (main_type_code)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

alter table main_type_table comment '一级分类表';

/*==============================================================*/
/* Table: order_SKU_table                                       */
/*==============================================================*/
create table order_SKU_table
(
   order_SKU_id         int not null auto_increment comment '订单商品条目id',
   SKU_code             int(8) not null comment 'SKU编码',
   order_id             int not null comment '订单id',
   order_SKU_num        int not null comment 'SKU数量',
   primary key (order_SKU_id)
);

alter table order_SKU_table comment '订单商品关联表';

/*==============================================================*/
/* Table: order_table                                           */
/*==============================================================*/
create table order_table
(
   order_id             int not null auto_increment comment '订单id',
   user_id              int not null comment '用户id',
   addr_id              int comment '地址id',
   order_place_time     datetime not null comment '下单时间',
   order_pay_time       datetime comment '支付时间',
   order_deliver_time   datetime comment '发货时间',
   order_receive_time   datetime comment '收货时间',
   order_cut_down       double comment '优惠金额',
   order_amount         double comment '交易金额',
   order_pay_method     varchar(40) comment '支付方式',
   order_deliver_code   varchar(40) comment '物流单号',
   order_point          int comment '订单积分',
   order_state          varchar(10) not null default '正常' comment '订单状态',
   primary key (order_id)
)
auto_increment = 200000;

alter table order_table comment '订单列表';

/*==============================================================*/
/* Table: package_sku_table                                     */
/*==============================================================*/
create table package_sku_table
(
   package_item_id      int not null auto_increment comment '组合内容条目id',
   package_id           int not null comment '组合id',
   SKU_code             int(8) not null comment 'SKU编码',
   primary key (package_item_id)
);

alter table package_sku_table comment '组合内容表';

/*==============================================================*/
/* Table: package_table                                         */
/*==============================================================*/
create table package_table
(
   package_id           int not null auto_increment comment '组合id',
   primary key (package_id)
);

alter table package_table comment '组合表';

/*==============================================================*/
/* Table: product_series_table                                  */
/*==============================================================*/
create table product_series_table
(
   product_series_id    int not null auto_increment comment '产品系列id',
   designer_id          int not null comment '设计师id',
   product_series_name  varchar(40) not null comment '产品系列名称',
   primary key (product_series_id)
);

alter table product_series_table comment '产品系列表';

/*==============================================================*/
/* Table: shopping_car_item_table                               */
/*==============================================================*/
create table shopping_car_item_table
(
   shopping_car_item_id int not null auto_increment comment '购物车条目id',
   SKU_code             int(8) not null comment 'SKU编码',
   shopping_car_id      int comment '购物车id',
   shopping_car_SKU_num int not null comment 'SKU数量',
   primary key (shopping_car_item_id)
);

alter table shopping_car_item_table comment '购物车条目表';

/*==============================================================*/
/* Table: shopping_car_table                                    */
/*==============================================================*/
create table shopping_car_table
(
   shopping_car_id      int not null auto_increment comment '购物车id',
   user_id              int not null comment '用户id',
   primary key (shopping_car_id)
);

alter table shopping_car_table comment '购物车表';

/*==============================================================*/
/* Table: spec_option_table                                     */
/*==============================================================*/
create table spec_option_table
(
   spec_option_id       int not null auto_increment comment '规格选项id',
   spec_id              int not null comment '规格id',
   spec_option_name     varchar(20) not null comment '规格选项名称',
   spec_option_value    varchar(20) not null comment '规格选项值',
   primary key (spec_option_id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

alter table spec_option_table comment '规格选项';

/*==============================================================*/
/* Table: spec_table                                            */
/*==============================================================*/
create table spec_table
(
   spec_id              int not null auto_increment comment '规格id',
   parameter_name       varchar(20) not null comment '参数名称',
   primary key (spec_id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

alter table spec_table comment '规格表';

/*==============================================================*/
/* Table: sub_type_table                                        */
/*==============================================================*/
create table sub_type_table
(
   sub_type_id          int not null auto_increment comment '二级分类编码',
   main_type_code       int(8) not null comment '一级分类编码',
   sub_type_name        varchar(20) not null comment '二级分类名称',
   primary key (sub_type_id)
);

alter table sub_type_table comment '二级分类表';

/*==============================================================*/
/* Table: user_addr_table                                       */
/*==============================================================*/
create table user_addr_table
(
   addr_id              int not null auto_increment comment '地址id',
   user_id              int not null comment '用户id',
   addr_is_default      varchar(5) not null default 'false' comment '是否默认',
   addr_province        varchar(40) not null comment '省',
   addr_city            varchar(40) not null comment '市',
   addr_district        varchar(40) not null comment '区',
   addr_street          varchar(40) not null comment '街道',
   addr_detail          varchar(100) not null comment '详细地址',
   post_code            int comment '邮编',
   addressee_name       varchar(20) not null comment '收货人姓名',
   addressee_tel        varchar(11) not null comment '手机号码',
   primary key (addr_id)
);

alter table user_addr_table comment '用户地址表';

/*==============================================================*/
/* Table: user_profile_table                                    */
/*==============================================================*/
create table user_profile_table
(
   user_id              int not null auto_increment comment '用户id',
   user_account_name    varchar(10) not null comment '用户名',
   user_nickname        varchar(20) not null comment '用户昵称',
   user_password        varchar(20) not null default 'user' comment '用户密码',
   user_tel_num         char(11) not null comment '用户手机号',
   user_sex             char(2) comment '用户性别',
   user_reg_date        timestamp not null comment '用户注册时间',
   user_birthday        date comment '用户出生日期',
   user_icon_path       varchar(40) comment '图片路径',
   primary key (user_id)
)
auto_increment = 10000;

alter table user_profile_table comment '用户基本信息表';

alter table SKU_attr_table add constraint FK_Reference_SKU_attr_option foreign key (attr_option_id)
      references attr_option_table (attr_option_id) on delete restrict on update restrict;

alter table SKU_attr_table add constraint FK_Reference_attr_SKU foreign key (SKU_code)
      references SKU_table (SKU_code) on delete restrict on update restrict;

alter table SKU_image_table add constraint FK_Reference_16 foreign key (SKU_code)
      references SKU_table (SKU_code) on delete restrict on update restrict;

alter table SKU_spec_table add constraint FK_Reference_SKU_spec_option foreign key (spec_option_id)
      references spec_option_table (spec_option_id) on delete restrict on update restrict;

alter table SKU_spec_table add constraint FK_Reference_spec_SKU foreign key (SKU_code)
      references SKU_table (SKU_code) on delete restrict on update restrict;

alter table SKU_table add constraint FK_Reference_SKU_attr foreign key (attr_col_id)
      references SKU_attr_table (attr_col_id) on delete restrict on update restrict;

alter table SKU_table add constraint FK_Reference_SKU_spec foreign key (spec_col_id)
      references SKU_spec_table (spec_col_id) on delete restrict on update restrict;

alter table SKU_table add constraint FK_Reference_SPU_SKU foreign key (SPU_code)
      references SPU_table (SPU_code) on delete restrict on update restrict;

alter table SPU_table add constraint FK_Reference_18 foreign key (designer_id)
      references designer_table (designer_id) on delete restrict on update restrict;

alter table SPU_table add constraint FK_Reference_20 foreign key (product_series_id)
      references product_series_table (product_series_id) on delete restrict on update restrict;

alter table SPU_table add constraint FK_Reference_40 foreign key (sub_type_id)
      references sub_type_table (sub_type_id) on delete restrict on update restrict;

alter table attr_option_table add constraint FK_Reference_attr_option foreign key (attr_id)
      references attr_table (attr_id) on delete restrict on update restrict;

alter table collection_table add constraint FK_Reference_26 foreign key (user_id)
      references user_profile_table (user_id) on delete restrict on update restrict;

alter table collection_table add constraint FK_Reference_35 foreign key (SKU_code)
      references SKU_table (SKU_code) on delete restrict on update restrict;

alter table comment_pic_table add constraint FK_Reference_34 foreign key (comment_id)
      references comment_table (comment_id) on delete restrict on update restrict;

alter table comment_table add constraint FK_Reference_33 foreign key (SKU_code)
      references SKU_table (SKU_code) on delete restrict on update restrict;

alter table designer_awards_table add constraint FK_Reference_17 foreign key (designer_id)
      references designer_table (designer_id) on delete restrict on update restrict;

alter table login_log_table add constraint FK_Reference_24 foreign key (user_id)
      references user_profile_table (user_id) on delete restrict on update restrict;

alter table order_SKU_table add constraint FK_Reference_31 foreign key (SKU_code)
      references SKU_table (SKU_code) on delete restrict on update restrict;

alter table order_SKU_table add constraint FK_Reference_32 foreign key (order_id)
      references order_table (order_id) on delete restrict on update restrict;

alter table order_table add constraint FK_Reference_30 foreign key (user_id)
      references user_profile_table (user_id) on delete restrict on update restrict;

alter table order_table add constraint FK_Reference_41 foreign key (addr_id)
      references user_addr_table (addr_id) on delete restrict on update restrict;

alter table package_sku_table add constraint FK_Reference_36 foreign key (package_id)
      references package_table (package_id) on delete restrict on update restrict;

alter table package_sku_table add constraint FK_Reference_37 foreign key (SKU_code)
      references SKU_table (SKU_code) on delete restrict on update restrict;

alter table product_series_table add constraint FK_Reference_19 foreign key (designer_id)
      references designer_table (designer_id) on delete restrict on update restrict;

alter table shopping_car_item_table add constraint FK_Reference_28 foreign key (SKU_code)
      references SKU_table (SKU_code) on delete restrict on update restrict;

alter table shopping_car_item_table add constraint FK_Reference_39 foreign key (shopping_car_id)
      references shopping_car_table (shopping_car_id) on delete restrict on update restrict;

alter table shopping_car_table add constraint FK_Reference_38 foreign key (user_id)
      references user_profile_table (user_id) on delete restrict on update restrict;

alter table spec_option_table add constraint FK_Reference_spec_option foreign key (spec_id)
      references spec_table (spec_id) on delete restrict on update restrict;

alter table sub_type_table add constraint FK_Reference_type_main_sub foreign key (main_type_code)
      references main_type_table (main_type_code) on delete restrict on update restrict;

alter table user_addr_table add constraint FK_Reference_23 foreign key (user_id)
      references user_profile_table (user_id) on delete restrict on update restrict;

