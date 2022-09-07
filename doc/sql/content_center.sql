-- 用户分项表
CREATE TABLE `user_share` (
    `id` int NOT NULL AUTO_INCREMENT,
    `share_id` int NOT NULL COMMENT 'share.id',
    `user_id` int NOT NULL COMMENT 'user.id',
    PRIMARY KEY (`id`),
    KEY `idx_share_id` (`share_id`),
    KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户-分享表【描述用户购买的分享】';

-- 公告表
CREATE TABLE `notice` (
    `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
    `content` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '内容',
    `show_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示 0:否 1:是',
    `create_time` datetime NOT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci comment '公告表';


CREATE TABLE `rocketmq_transaction_log` (
    `id` int NOT NULL AUTO_INCREMENT,
    `transaction_id` varchar(45) COLLATE utf8mb4_general_ci NOT NULL COMMENT '事务ID',
    `log` varchar(45) COLLATE utf8mb4_general_ci NOT NULL COMMENT '日志',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 分项表
CREATE TABLE `share` (
     `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
     `user_id` int NOT NULL DEFAULT '0' COMMENT '发布人id',
     `title` varchar(80) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
     `create_time` datetime NOT NULL COMMENT '创建时间',
     `update_time` datetime NOT NULL COMMENT '修改时间',
     `is_original` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否原创 0:否 1:是',
     `author` varchar(45) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '作者',
     `cover` varchar(256) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '封面',
     `summary` varchar(256) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '概要信息',
     `price` int NOT NULL DEFAULT '0' COMMENT '价格（需要的积分）',
     `download_url` varchar(256) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '下载地址',
     `buy_count` int NOT NULL DEFAULT '0' COMMENT '下载数 ',
     `show_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示 0:否 1:是',
     `audit_status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '审核状态 NOT_YET: 待审核 PASSED:审核通过 REJECTED:审核不通过',
     `reason` varchar(200) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '审核不通过原因',
     PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='分享表';
