/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xianshangkecheng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xianshangkecheng` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xianshangkecheng`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/xianshangkecheng/upload/1618317363059.jpg'),(2,'picture2','http://localhost:8080/xianshangkecheng/upload/1618317373683.jpg'),(3,'picture3','http://localhost:8080/xianshangkecheng/upload/1618317379794.jpg'),(6,'homepage','http://localhost:8080/xianshangkecheng/upload/1618317386835.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-13 20:22:40'),(2,'sex_types','性别',2,'女',NULL,'2021-04-13 20:22:40'),(3,'kecheng_types','课程类型名称',1,'课程类型1',NULL,'2021-04-13 20:22:40'),(4,'kecheng_types','课程类型名称',2,'课程类型2',NULL,'2021-04-13 20:22:40'),(5,'news_types','公告类型名称',1,'日常公告',NULL,'2021-04-13 20:22:40'),(6,'news_types','公告类型名称',2,'紧急公告',NULL,'2021-04-13 20:22:40');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `new_money` decimal(10,0) DEFAULT NULL COMMENT '余额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_photo`,`new_money`,`create_time`) values (1,'333','123456','教师1',1,'410882200011261544','17796688951','http://localhost:8080/xianshangkecheng/file/download?fileName=1618317523155.jpg','2000','2021-04-13 20:38:47'),(2,'444','123456','教师2',2,'410882200011261545','17796688952','http://localhost:8080/xianshangkecheng/file/download?fileName=1618318696188.jpg','1000','2021-04-13 20:58:17');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `kecheng_video` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kecheng_moeny` decimal(10,2) DEFAULT NULL COMMENT '课程价钱',
  `kecheng_types` int(200) DEFAULT NULL COMMENT '课程类型 Search111',
  `jiaoshi_id` int(200) DEFAULT NULL COMMENT '发布教师',
  `kecheng_content` text COMMENT '课程详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_name`,`kecheng_photo`,`kecheng_video`,`kecheng_moeny`,`kecheng_types`,`jiaoshi_id`,`kecheng_content`,`create_time`) values (22,'课程名称1','http://localhost:8080/xianshangkecheng/file/download?fileName=1618318750058.jpg','http://localhost:8080/xianshangkecheng/file/download?fileName=1618318755400.mp4','1000.00',2,2,'课程详情课程详情课程详情课程详情\r\n','2021-04-13 20:59:22'),(23,'课程名称2','http://localhost:8080/xianshangkecheng/file/download?fileName=1618318775503.jpg','http://localhost:8080/xianshangkecheng/file/download?fileName=1618318779820.mp4','2000.00',1,1,'课程详情课程详情课程详情课程详情\r\n','2021-04-13 20:59:47'),(24,'课程名称3','http://localhost:8080/xianshangkecheng/file/download?fileName=1618318805671.jpg','http://localhost:8080/xianshangkecheng/file/download?fileName=1618318798929.mp4','3000.00',1,2,'课程详情课程详情课程详情课程详情课程详情课程详情课程详情课程详情课程详情\r\n','2021-04-13 21:00:13'),(25,'课程名称4','http://localhost:8080/xianshangkecheng/file/download?fileName=1618364301669.jpg','http://localhost:8080/xianshangkecheng/file/download?fileName=1618364306049.mp4','132.00',1,2,'课程详情11111\r\n','2021-04-14 09:38:40');

/*Table structure for table `kecheng_liuyan` */

DROP TABLE IF EXISTS `kecheng_liuyan`;

CREATE TABLE `kecheng_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `kecheng_liuyan_content` text COMMENT '资讯内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程资讯';

/*Data for the table `kecheng_liuyan` */

/*Table structure for table `kecheng_order` */

DROP TABLE IF EXISTS `kecheng_order`;

CREATE TABLE `kecheng_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `moeny` decimal(10,0) DEFAULT NULL COMMENT '金额',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='课程订单';

/*Data for the table `kecheng_order` */

insert  into `kecheng_order`(`id`,`kecheng_id`,`yonghu_id`,`moeny`,`insert_time`,`create_time`) values (3,22,1,NULL,'2021-04-13 21:20:23','2021-04-13 21:20:23'),(4,23,1,NULL,'2021-04-14 09:41:30','2021-04-14 09:41:30');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告名称1',1,'http://localhost:8080/xianshangkecheng/file/download?fileName=1618317402930.jpg','2021-04-13 20:36:46','公告详情\r\n','2021-04-13 20:36:46'),(2,'公告名称2',2,'http://localhost:8080/xianshangkecheng/file/download?fileName=1618317415165.jpg','2021-04-13 20:36:57','公告详情公告详情\r\n','2021-04-13 20:36:57');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','swjubm3714t22oxund1zlg9ltaya277t','2021-04-13 20:02:01','2021-04-14 10:39:14'),(2,1,'111','yonghu','用户','tm598b4dxszzy2ybuosukuyag82xydd3','2021-04-13 20:14:28','2021-04-14 10:23:17'),(3,1,'333','jiaoshi','教师','2idm64y8aju3c5oas8wcw4wus5n64fhp','2021-04-14 09:30:14','2021-04-14 10:41:53'),(4,1,'111','yonghu','学生','f5jej941kuo639o6v8ry9g5d27r33ptk','2021-04-14 09:40:08','2021-04-14 10:40:09');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `new_money` decimal(10,0) DEFAULT NULL COMMENT '余额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`new_money`,`create_time`) values (1,'111','123456','漳卅',1,'123123123123123123','12312312312','http://localhost:8080/xianshangkecheng/upload/1618316961166.jpg','234',NULL),(2,'222','123456','李四',1,'410882199611015442','17747899642','http://localhost:8080/xianshangkecheng/file/download?fileName=1618318729306.jpg','0','2021-04-13 20:58:50');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
