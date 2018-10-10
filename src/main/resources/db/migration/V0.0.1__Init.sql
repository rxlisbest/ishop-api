-- file start
CREATE TABLE `ishop_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `domain` varchar(255) NOT NULL DEFAULT '' COMMENT '域名',
  `key` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '类型',
  `create_time` bigint(20) NOT NULL DEFAULT 0,
  `update_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文件表';
-- file end

-- goods start
CREATE TABLE `ishop_goods_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `parent_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '上级ID',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序号',
  `create_time` bigint(20) NOT NULL DEFAULT 0,
  `update_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品分类表';

CREATE TABLE `ishop_goods_common` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `goods_category_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '商品分类ID',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '状态',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序号',
  `create_time` bigint(20) NOT NULL DEFAULT 0,
  `update_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品公共表';

CREATE TABLE `ishop_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `goods_common_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '商品公共ID',
  `price` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '价格',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '状态',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序号',
  `create_time` bigint(20) NOT NULL DEFAULT 0,
  `update_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品表';
-- goods end

-- member start
CREATE TABLE `ishop_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(10) NOT NULL DEFAULT '' COMMENT '随机字符串',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '类型',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '状态',
  `headimg_file_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '头像ID',
  `create_time` bigint(20) NOT NULL DEFAULT 0,
  `update_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

CREATE TABLE `ishop_member_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `useable_money` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '可用金额',
  `unuseable_money` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '不可用金额',
  `create_time` bigint(20) NOT NULL DEFAULT 0,
  `update_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户账户表';

CREATE TABLE `ishop_member_account_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `money` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '金额',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '类型',
  `create_time` bigint(20) NOT NULL DEFAULT 0,
  `update_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户账户日志表';

CREATE TABLE `ishop_member_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `token` varchar(255) NOT NULL DEFAULT '' COMMENT 'Token',
  `expire` bigint(20) NOT NULL DEFAULT 0 COMMENT '过期时间',
  `create_time` bigint(20) NOT NULL DEFAULT 0,
  `update_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户密钥表';

CREATE TABLE `ishop_member_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `user_agent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `create_time` bigint(20) NOT NULL DEFAULT 0,
  `update_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户密钥表';
-- member end