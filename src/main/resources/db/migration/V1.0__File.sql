CREATE TABLE `ishop_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `domain` varchar(255) NOT NULL DEFAULT '' COMMENT '域名',
  `key` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '类型',
  `create_time` bigint(20) NOT NULL DEFAULT 0,
  `update_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMEND='文件表';