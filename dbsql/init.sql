SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user`  (
  `admin_user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登录密码',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`admin_user_id`) USING BTREE,
  INDEX `user_name`(`user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10002 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '超管用户记录表' ROW_FORMAT = COMPACT;

INSERT INTO `admin_user` VALUES (10001, 'admin', '06e0213dcf92e986d383029494966903', 1529926348, 1595127602);


DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting`  (
  `key` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设置项标示',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '设置项描述',
  `values` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设置内容（json格式）',
  `shop_supplier_id` int(11) NOT NULL DEFAULT 0 COMMENT '商户id',
  `app_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '小程序id',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  UNIQUE INDEX `unique_key`(`app_id`, `key`, `shop_supplier_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城设置记录表' ROW_FORMAT = COMPACT;

INSERT INTO `setting` VALUES ('sys_config', '系统设置', '{\"shop_name\":\"\\u4e09\\u52fe\\u5546\\u57ce\\u7ba1\\u7406\\u7cfb\\u7edf\",\"shop_bg_img\":\"\",\"supplier_name\":\"\\u4e09\\u52fe\\u5546\\u57ce\\u4f9b\\u5e94\\u5546\\u7ba1\\u7406\\u7cfb\\u7edf\",\"supplier_bg_img\":\"\",\"weixin_service\":{\"is_open\":0,\"app_id\":\"\",\"mch_id\":\"\",\"apikey\":\"\",\"cert_pem\":\"\",\"key_pem\":\"\"},\"token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJqampzaG9wXyFAIyQlKiYiLCJhdWQiOiIiLCJpYXQiOjE2OTI0MTM1OTMsIm5iZiI6MTY5MjQxMzU5NiwiZXhwIjoxNjkyNDk5OTkzLCJkYXRhIjp7InVpZCI6MTAwMDF9fQ.mbDSELsc_wrLxbFiUK3MI23BY6bNOWk0CFFU1e4bISM\"}', 0, 0, 0);
