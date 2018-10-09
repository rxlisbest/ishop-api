CREATE TABLE `ishop_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `goods_category_id` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `price` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '价格',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '状态',
  `create_time` bigint(20) NOT NULL DEFAULT 0,
  `update_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品表';