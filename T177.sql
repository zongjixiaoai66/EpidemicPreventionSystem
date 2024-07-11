/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t177`;
CREATE DATABASE IF NOT EXISTS `t177` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t177`;

DROP TABLE IF EXISTS `churujilu`;
CREATE TABLE IF NOT EXISTS `churujilu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `churujilu_types` int DEFAULT NULL COMMENT '类型',
  `churujilu_photo` varchar(200) DEFAULT NULL COMMENT '健康码',
  `churujilu_content` text COMMENT '备注',
  `churu_time` timestamp NULL DEFAULT NULL COMMENT '出入时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='出入记录';

DELETE FROM `churujilu`;
INSERT INTO `churujilu` (`id`, `yonghu_id`, `churujilu_types`, `churujilu_photo`, `churujilu_content`, `churu_time`, `insert_time`, `create_time`) VALUES
	(1, 2, 2, 'http://localhost:8080/jibingfangkong/upload/wuzi1.jpg', '备注1', '2022-03-08 12:46:27', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(2, 1, 1, 'http://localhost:8080/jibingfangkong/upload/wuzi2.jpg', '备注2', '2022-03-08 12:46:27', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(3, 1, 1, 'http://localhost:8080/jibingfangkong/upload/wuzi3.jpg', '备注3', '2022-03-08 12:46:27', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(4, 1, 2, 'http://localhost:8080/jibingfangkong/upload/wuzi4.jpg', '备注4', '2022-03-08 12:46:27', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(5, 2, 2, 'http://localhost:8080/jibingfangkong/upload/wuzi5.jpg', '备注5', '2022-03-08 12:46:27', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(6, 2, 2, 'http://localhost:8080/jibingfangkong/upload/1646745437347.jpg', '<p>wu </p>', '2022-03-07 16:00:00', '2022-03-08 13:17:24', '2022-03-08 13:17:24');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/jibingfangkong/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/jibingfangkong/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/jibingfangkong/upload/config3.jpg');

DROP TABLE IF EXISTS `daka`;
CREATE TABLE IF NOT EXISTS `daka` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `daka_photo` varchar(200) DEFAULT NULL COMMENT '打卡照片',
  `daka_content` text COMMENT '打卡备注',
  `insert_time` date DEFAULT NULL COMMENT '打卡日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='打卡';

DELETE FROM `daka`;
INSERT INTO `daka` (`id`, `yonghu_id`, `daka_photo`, `daka_content`, `insert_time`, `create_time`) VALUES
	(1, 3, 'http://localhost:8080/jibingfangkong/upload/wuzi1.jpg', '打卡备注1', '2022-03-08', '2022-03-08 12:46:27'),
	(2, 1, 'http://localhost:8080/jibingfangkong/upload/wuzi2.jpg', '打卡备注2', '2022-03-08', '2022-03-08 12:46:27'),
	(3, 2, 'http://localhost:8080/jibingfangkong/upload/wuzi3.jpg', '打卡备注3', '2022-03-08', '2022-03-08 12:46:27'),
	(4, 3, 'http://localhost:8080/jibingfangkong/upload/wuzi4.jpg', '打卡备注4', '2022-03-08', '2022-03-08 12:46:27'),
	(5, 2, 'http://localhost:8080/jibingfangkong/upload/wuzi5.jpg', '打卡备注5', '2022-03-08', '2022-03-08 12:46:27');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-08 12:44:24'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-08 12:44:24'),
	(3, 'wuzi_types', '物资类型', 1, '物资类型1', NULL, NULL, '2022-03-08 12:44:24'),
	(4, 'wuzi_types', '物资类型', 2, '物资类型2', NULL, NULL, '2022-03-08 12:44:24'),
	(5, 'wuzi_types', '物资类型', 3, '物资类型3', NULL, NULL, '2022-03-08 12:44:24'),
	(6, 'wuzi_types', '物资类型', 4, '物资类型4', NULL, NULL, '2022-03-08 12:44:24'),
	(7, 'wuzishenqing_paifa_types', '派发地点', 1, '派发地点1', NULL, NULL, '2022-03-08 12:44:24'),
	(8, 'wuzishenqing_paifa_types', '派发地点', 2, '派发地点2', NULL, NULL, '2022-03-08 12:44:24'),
	(9, 'wuzishenqing_yesno_types', '审核状态', 1, '待审核', NULL, NULL, '2022-03-08 12:44:24'),
	(10, 'wuzishenqing_yesno_types', '审核状态', 2, '同意', NULL, NULL, '2022-03-08 12:44:24'),
	(11, 'wuzishenqing_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2022-03-08 12:44:24'),
	(12, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-08 12:44:24'),
	(13, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-08 12:44:24'),
	(14, 'jiance_types', '检测结果', 1, '阴性', NULL, NULL, '2022-03-08 12:44:24'),
	(15, 'jiance_types', '检测结果', 2, '阳性', NULL, NULL, '2022-03-08 12:44:24'),
	(16, 'jiezhong_types', '接种类型', 1, '第一针', NULL, NULL, '2022-03-08 12:44:24'),
	(17, 'jiezhong_types', '接种类型', 2, '第二针', NULL, NULL, '2022-03-08 12:44:24'),
	(18, 'jiezhong_types', '接种类型', 3, '第三针', NULL, NULL, '2022-03-08 12:44:24'),
	(19, 'jiezhong_types', '接种类型', 4, '加强针', NULL, NULL, '2022-03-08 12:44:24'),
	(20, 'churujilu_types', '出入类型', 1, '出去', NULL, NULL, '2022-03-08 12:44:24'),
	(21, 'churujilu_types', '出入类型', 2, '进来', NULL, NULL, '2022-03-08 12:44:24'),
	(22, 'wuzi_types', '物资类型', 5, '物资类型5', NULL, '', '2022-03-08 13:18:01');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/jibingfangkong/upload/gonggao1.jpg', 1, '2022-03-08 12:46:27', '公告详情1', '2022-03-08 12:46:27'),
	(2, '公告名称2', 'http://localhost:8080/jibingfangkong/upload/gonggao2.jpg', 1, '2022-03-08 12:46:27', '公告详情2', '2022-03-08 12:46:27'),
	(3, '公告名称3', 'http://localhost:8080/jibingfangkong/upload/gonggao3.jpg', 2, '2022-03-08 12:46:27', '公告详情3', '2022-03-08 12:46:27'),
	(4, '公告名称4', 'http://localhost:8080/jibingfangkong/upload/gonggao4.jpg', 1, '2022-03-08 12:46:27', '公告详情4', '2022-03-08 12:46:27'),
	(5, '公告名称5', 'http://localhost:8080/jibingfangkong/upload/gonggao5.jpg', 2, '2022-03-08 12:46:27', '公告详情5', '2022-03-08 12:46:27');

DROP TABLE IF EXISTS `hesuanjiance`;
CREATE TABLE IF NOT EXISTS `hesuanjiance` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jiance_time` timestamp NULL DEFAULT NULL COMMENT '检测时间',
  `jiance_types` int NOT NULL COMMENT '检测结果  Search111 ',
  `hesuanjiance_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='核酸检测';

DELETE FROM `hesuanjiance`;
INSERT INTO `hesuanjiance` (`id`, `yonghu_id`, `jiance_time`, `jiance_types`, `hesuanjiance_content`, `insert_time`, `create_time`) VALUES
	(1, 2, '2022-03-08 12:46:27', 1, '备注1', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(2, 1, '2022-03-08 12:46:27', 1, '备注2', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(3, 1, '2022-03-08 12:46:27', 1, '备注3', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(4, 3, '2022-03-08 12:46:27', 1, '备注4', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(5, 3, '2022-03-08 12:46:27', 2, '备注5', '2022-03-08 12:46:27', '2022-03-08 12:46:27');

DROP TABLE IF EXISTS `jiezhongjilu`;
CREATE TABLE IF NOT EXISTS `jiezhongjilu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jiezhongjilu_uuid_number` varchar(200) DEFAULT NULL COMMENT '接种编号',
  `jiezhong_time` timestamp NULL DEFAULT NULL COMMENT '接种时间',
  `jiezhong_types` int NOT NULL COMMENT '接种类型  Search111 ',
  `jiezhongjilu_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='接种记录';

DELETE FROM `jiezhongjilu`;
INSERT INTO `jiezhongjilu` (`id`, `yonghu_id`, `jiezhongjilu_uuid_number`, `jiezhong_time`, `jiezhong_types`, `jiezhongjilu_content`, `insert_time`, `create_time`) VALUES
	(1, 2, '164674358746014', '2022-03-08 12:46:27', 3, '备注1', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(2, 3, '16467435874611', '2022-03-08 12:46:27', 2, '备注2', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(3, 2, '164674358746113', '2022-03-08 12:46:27', 2, '备注3', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(4, 1, '16467435874616', '2022-03-08 12:46:27', 1, '备注4', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(5, 2, '164674358746113', '2022-03-08 12:46:27', 3, '备注5', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(6, 2, '1646745492130', '2022-03-01 16:00:00', 1, '<p>大师傅</p>', '2022-03-08 13:18:26', '2022-03-08 13:18:26'),
	(7, 2, '1646745512473', '2022-03-08 16:00:00', 4, '<p>萨达</p>', '2022-03-08 13:18:55', '2022-03-08 13:18:55');

DROP TABLE IF EXISTS `shequyiqing`;
CREATE TABLE IF NOT EXISTS `shequyiqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shequyiqing_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '照片 ',
  `shequyiqing_content` text COMMENT '内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='社区疫情情况';

DELETE FROM `shequyiqing`;
INSERT INTO `shequyiqing` (`id`, `yonghu_id`, `shequyiqing_name`, `gonggao_photo`, `shequyiqing_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '标题1', 'http://localhost:8080/jibingfangkong/upload/wuzi1.jpg', '内容1', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(2, 1, '标题2', 'http://localhost:8080/jibingfangkong/upload/wuzi2.jpg', '内容2', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(3, 2, '标题3', 'http://localhost:8080/jibingfangkong/upload/wuzi3.jpg', '内容3', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(4, 3, '标题4', 'http://localhost:8080/jibingfangkong/upload/wuzi4.jpg', '内容4', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(5, 3, '标题5', 'http://localhost:8080/jibingfangkong/upload/wuzi5.jpg', '内容5', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(6, 1, '标题1111', 'http://localhost:8080/jibingfangkong/upload/1646745621044.jpg', '<p>内容11111</p>', '2022-03-08 13:20:24', '2022-03-08 13:20:24');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'hodzxbjjxnaxbi6tx7e35f7m0zuwvuum', '2022-03-08 12:48:06', '2024-04-29 15:09:10'),
	(2, 1, 'a1', 'yonghu', '用户', '09cefqjmwulwvkucfgi95yy728fwvtcw', '2022-03-08 12:48:22', '2024-04-29 15:10:31');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `wuzi`;
CREATE TABLE IF NOT EXISTS `wuzi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111 ',
  `wuzi_danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `wuzi_photo` varchar(200) DEFAULT NULL COMMENT '物资照片',
  `wuzi_types` int DEFAULT NULL COMMENT '物资类型 Search111',
  `wuzi_kucun_number` int DEFAULT NULL COMMENT '物资库存',
  `wuzi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `wuzi_content` text COMMENT '物资介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='物资';

DELETE FROM `wuzi`;
INSERT INTO `wuzi` (`id`, `wuzi_name`, `wuzi_danwei`, `wuzi_photo`, `wuzi_types`, `wuzi_kucun_number`, `wuzi_delete`, `wuzi_content`, `create_time`) VALUES
	(1, '物资名称1', '个', 'http://localhost:8080/jibingfangkong/upload/wuzi1.jpg', 3, 101, 1, '物资介绍1', '2022-03-08 12:46:27'),
	(2, '物资名称2', '个', 'http://localhost:8080/jibingfangkong/upload/wuzi2.jpg', 1, 102, 1, '物资介绍2', '2022-03-08 12:46:27'),
	(3, '物资名称3', '个', 'http://localhost:8080/jibingfangkong/upload/wuzi3.jpg', 1, 103, 1, '物资介绍3', '2022-03-08 12:46:27'),
	(4, '物资名称4', '个', 'http://localhost:8080/jibingfangkong/upload/wuzi4.jpg', 3, 67, 1, '物资介绍4', '2022-03-08 12:46:27'),
	(5, '物资名称5', '个', 'http://localhost:8080/jibingfangkong/upload/wuzi5.jpg', 4, 105, 1, '物资介绍5', '2022-03-08 12:46:27');

DROP TABLE IF EXISTS `wuzishenqing`;
CREATE TABLE IF NOT EXISTS `wuzishenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_id` int DEFAULT NULL COMMENT '物资',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `wuzishenqing_number` int DEFAULT NULL COMMENT '申请数量',
  `wuzishenqing_content` text COMMENT '申请理由',
  `wuzishenqing_paifa_types` int DEFAULT NULL COMMENT '派发地点 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `wuzishenqing_yesno_types` int DEFAULT NULL COMMENT '审核状态 Search111',
  `wuzishenqing_yesno_text` text COMMENT '回复意见',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='物资申请';

DELETE FROM `wuzishenqing`;
INSERT INTO `wuzishenqing` (`id`, `wuzi_id`, `yonghu_id`, `wuzishenqing_number`, `wuzishenqing_content`, `wuzishenqing_paifa_types`, `insert_time`, `wuzishenqing_yesno_types`, `wuzishenqing_yesno_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, 1, '申请理由1', 2, '2022-03-08 12:46:27', 1, NULL, NULL, '2022-03-08 12:46:27'),
	(2, 2, 2, 309, '申请理由2', 2, '2022-03-08 12:46:27', 1, NULL, NULL, '2022-03-08 12:46:27'),
	(3, 3, 3, 138, '申请理由3', 2, '2022-03-08 12:46:27', 1, NULL, NULL, '2022-03-08 12:46:27'),
	(4, 4, 3, 37, '申请理由4', 1, '2022-03-08 12:46:27', 2, '啥地方', '2022-03-08 12:46:27', '2022-03-08 12:46:27'),
	(5, 5, 1, 108, '申请理由5', 2, '2022-03-08 12:46:27', 1, NULL, NULL, '2022-03-08 12:46:27'),
	(6, 5, 1, 5, '<p>撒发的</p>', 1, '2022-03-08 13:20:44', 1, '', NULL, '2022-03-08 13:20:44');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/jibingfangkong/upload/yonghu1.jpg', 2, '1@qq.com', '2022-03-08 12:46:27'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/jibingfangkong/upload/yonghu2.jpg', 2, '2@qq.com', '2022-03-08 12:46:27'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/jibingfangkong/upload/yonghu3.jpg', 1, '3@qq.com', '2022-03-08 12:46:27');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
