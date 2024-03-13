/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiuyeguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiuyeguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiuyeguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/jiuyeguanli/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/jiuyeguanli/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/jiuyeguanli/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'hanye_types','所在行业',1,'行业1',NULL,NULL,'2022-04-13 16:35:17'),(2,'hanye_types','所在行业',2,'行业2',NULL,NULL,'2022-04-13 16:35:17'),(3,'hanye_types','所在行业',3,'行业3',NULL,NULL,'2022-04-13 16:35:17'),(4,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-04-13 16:35:17'),(5,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-04-13 16:35:17'),(6,'zhaopin_types','招聘岗位',1,'招聘岗位1',NULL,NULL,'2022-04-13 16:35:17'),(7,'zhaopin_types','招聘岗位',2,'招聘岗位2',NULL,NULL,'2022-04-13 16:35:17'),(8,'zhaopin_types','招聘岗位',3,'招聘岗位3',NULL,NULL,'2022-04-13 16:35:17'),(9,'zhaopin_types','招聘岗位',4,'招聘岗位4',NULL,NULL,'2022-04-13 16:35:17'),(10,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-13 16:35:18'),(11,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-13 16:35:18'),(12,'jianli_sex_types','性别',1,'男',NULL,NULL,'2022-04-13 16:35:18'),(13,'jianli_sex_types','性别',2,'女',NULL,NULL,'2022-04-13 16:35:18'),(14,'yuanxi_types','院系类型',1,'院系类型1',NULL,NULL,'2022-04-13 16:35:18'),(15,'yuanxi_types','院系类型',2,'院系类型2',NULL,NULL,'2022-04-13 16:35:18'),(16,'yuanxi_types','院系类型',3,'院系类型3',NULL,NULL,'2022-04-13 16:35:18'),(17,'yuanxi_types','院系类型',4,'院系类型4',NULL,NULL,'2022-04-13 16:35:18'),(18,'hanye_types','所在行业',4,'行业4',NULL,'','2022-04-13 17:33:58'),(20,'jiuye_types','是否就业',1,'未就业',NULL,NULL,'2022-04-13 17:33:58'),(21,'jiuye_types','是否就业',2,'已就业',NULL,NULL,'2022-04-13 17:33:58'),(22,'zhaopin_types','招聘岗位',5,'招聘岗位5',NULL,'','2022-04-14 09:30:19');

/*Table structure for table `gongsi` */

DROP TABLE IF EXISTS `gongsi`;

CREATE TABLE `gongsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `gongsi_name` varchar(200) DEFAULT NULL COMMENT '公司名称 Search111 ',
  `hanye_types` int(11) DEFAULT NULL COMMENT '所在行业',
  `gongsi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongsi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gongsi_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `gongsi_content` text COMMENT '公司简介 ',
  `gongsi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公司';

/*Data for the table `gongsi` */

insert  into `gongsi`(`id`,`username`,`password`,`gongsi_name`,`hanye_types`,`gongsi_phone`,`gongsi_email`,`gongsi_photo`,`gongsi_content`,`gongsi_delete`,`create_time`) values (1,'a1','123456','公司名称111',4,'17703786901','1@qq.com','http://localhost:8080/jiuyeguanli/upload/photo.jpg','<p>公司简介111</p>',1,'2022-04-13 16:35:25'),(2,'a2','123456','公司名称2',1,'17703786902','2@qq.com','http://localhost:8080/jiuyeguanli/upload/photo.jpg','公司简介2',1,'2022-04-13 16:35:25'),(3,'a3','123456','公司名称3',3,'17703786903','3@qq.com','http://localhost:8080/jiuyeguanli/upload/photo.jpg','公司简介3',1,'2022-04-13 16:35:25');

/*Table structure for table `jianli` */

DROP TABLE IF EXISTS `jianli`;

CREATE TABLE `jianli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianli_uuid_number` varchar(200) DEFAULT NULL COMMENT '简历唯一编号 Search111 ',
  `jianli_name` varchar(200) DEFAULT NULL COMMENT '简历名称  Search111 ',
  `jianli_xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli_sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jianli_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jianli_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `yuanxi_types` int(11) DEFAULT NULL COMMENT '院系',
  `jiaoyu_text` text COMMENT '教育经历',
  `shixi_text` text COMMENT '实习或工作经历',
  `geren_text` text COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='简历';

/*Data for the table `jianli` */

insert  into `jianli`(`id`,`yonghu_id`,`jianli_uuid_number`,`jianli_name`,`jianli_xingming`,`jianli_sex_types`,`jianli_phone`,`jianli_photo`,`yuanxi_types`,`jiaoyu_text`,`shixi_text`,`geren_text`,`create_time`) values (1,3,'16450005250590','简历名称1','姓名1',1,'17703786901','http://localhost:8080/jiuyeguanli/upload/photo.jpg',3,'教育经历1','实习或工作经历1','个人介绍1','2022-04-13 16:35:25'),(2,2,'164500052505918','简历名称4','姓名4',2,'17703786904','http://localhost:8080/jiuyeguanli/upload/photo.jpg',2,'教育经历4','实习或工作经历4','个人介绍4','2022-04-13 16:35:25'),(3,1,'164500052505915','简历名称5','姓名5',1,'17703786905','http://localhost:8080/jiuyeguanli/upload/photo.jpg',1,'教育经历5','实习或工作经历5','个人介绍5','2022-04-13 16:35:25');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','v36yipgc6xme7hlzplfflftow2b2kl99','2022-04-13 16:41:09','2022-04-13 18:37:41'),(2,6,'admin','users','管理员','6vjc8da7ty9d2s6vjzywas0y79lwl5so','2022-04-13 17:09:53','2022-04-14 10:34:38'),(3,1,'a1','gongsi','公司','6oyhhes2ng8xu6xbkp8w8o92z7hvzorw','2022-04-13 17:27:15','2022-04-14 10:31:14'),(4,1,'a1','yonghu','学生','ddu2xnvr8kp0bz9etjr1p3xe644495xv','2022-04-14 09:21:33','2022-04-14 10:32:06'),(5,3,'a3','yonghu','学生','exz0gmx119lyslpdiifyvs702ph8bhh0','2022-04-14 09:29:30','2022-04-14 10:29:31');

/*Table structure for table `toudi` */

DROP TABLE IF EXISTS `toudi`;

CREATE TABLE `toudi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianli_id` int(11) DEFAULT NULL COMMENT '简历',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '招聘',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投递时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='简历投递';

/*Data for the table `toudi` */

insert  into `toudi`(`id`,`jianli_id`,`zhaopin_id`,`insert_time`,`create_time`) values (1,1,1,'2022-04-13 16:35:25','2022-04-13 16:35:25'),(2,2,2,'2022-04-13 16:35:25','2022-04-13 16:35:25'),(3,3,3,'2022-04-13 16:35:25','2022-04-13 16:35:25'),(12,3,10,'2022-04-13 17:05:04','2022-04-13 17:05:04'),(13,3,11,'2022-04-13 17:33:28','2022-04-13 17:33:28'),(14,3,9,'2022-04-14 09:21:56','2022-04-14 09:21:56'),(15,1,11,'2022-04-14 09:29:45','2022-04-14 09:29:45');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

/*Table structure for table `xueshengjiuye` */

DROP TABLE IF EXISTS `xueshengjiuye`;

CREATE TABLE `xueshengjiuye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xueshengjiuye_uuid_number` varchar(200) DEFAULT NULL COMMENT '就业编号 Search111  ',
  `xueshengjiuye_address` varchar(200) DEFAULT NULL COMMENT '就业地点 Search111  ',
  `xueshengjiuye_gongsi` varchar(200) DEFAULT NULL COMMENT '就业公司 Search111  ',
  `xueshengjiuye_zhiwei` varchar(200) DEFAULT NULL COMMENT '就业职位 Search111  ',
  `xueshengjiuye_xinzi` decimal(10,2) DEFAULT NULL COMMENT '就业薪资/月 Search111  ',
  `jiuye_time` timestamp NULL DEFAULT NULL COMMENT '就业时间',
  `xueshengjiuye_content` text COMMENT '就业备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='学生就业信息';

/*Data for the table `xueshengjiuye` */

insert  into `xueshengjiuye`(`id`,`yonghu_id`,`xueshengjiuye_uuid_number`,`xueshengjiuye_address`,`xueshengjiuye_gongsi`,`xueshengjiuye_zhiwei`,`xueshengjiuye_xinzi`,`jiuye_time`,`xueshengjiuye_content`,`insert_time`,`create_time`) values (1,3,'1649899364039','地址111','公司111','职位111','3000.00','2022-04-13 00:00:00','<p>市规划局健康</p>','2022-04-14 09:23:06','2022-04-14 09:23:06');

/*Table structure for table `yaoqing` */

DROP TABLE IF EXISTS `yaoqing`;

CREATE TABLE `yaoqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianli_id` int(11) DEFAULT NULL COMMENT '简历',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '招聘',
  `mianshi_time` timestamp NULL DEFAULT NULL COMMENT '面试时间',
  `mianshi_address` varchar(200) DEFAULT NULL COMMENT '面试地点',
  `mianshi_text` varchar(200) DEFAULT NULL COMMENT '面试需知',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '邀请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='邀请面试';

/*Data for the table `yaoqing` */

insert  into `yaoqing`(`id`,`jianli_id`,`zhaopin_id`,`mianshi_time`,`mianshi_address`,`mianshi_text`,`insert_time`,`create_time`) values (1,1,1,'2022-04-13 16:35:25','面试地点1','面试需知1','2022-04-13 16:35:25','2022-04-13 16:35:25'),(2,2,2,'2022-04-13 16:35:25','面试地点2','面试需知2','2022-04-13 16:35:25','2022-04-13 16:35:25'),(3,3,3,'2022-04-13 16:35:25','面试地点3','面试需知3','2022-04-13 16:35:25','2022-04-13 16:35:25'),(12,2,11,'2022-02-17 22:00:22','面试地点999','面试须知内容','2022-04-13 17:28:04','2022-04-13 17:28:04'),(13,3,11,'2022-02-19 00:00:00','地点999','面试须知内容详情999','2022-04-13 17:37:29','2022-04-13 17:37:29'),(14,2,11,'2022-04-14 09:59:26','地点1111','面试携带简历 携带笔','2022-04-14 09:27:16','2022-04-14 09:27:16'),(15,1,11,'2022-04-14 00:00:00','地点1111','携带笔  携带简历  按时到达','2022-04-14 09:31:56','2022-04-14 09:31:56');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `jiuye_types` int(11) DEFAULT NULL COMMENT '是否就业 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`jiuye_types`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名11','17703786901','410224199610232001','http://localhost:8080/jiuyeguanli/upload/photo.jpg',1,2,'1@qq.com','2022-04-13 16:35:25'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/jiuyeguanli/upload/photo.jpg',2,2,'2@qq.com','2022-04-13 16:35:25'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/jiuyeguanli/upload/photo.jpg',1,1,'3@qq.com','2022-04-13 16:35:25');

/*Table structure for table `zhaopin` */

DROP TABLE IF EXISTS `zhaopin`;

CREATE TABLE `zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongsi_id` int(11) DEFAULT NULL COMMENT '公司',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zhaopin_types` int(11) DEFAULT NULL COMMENT '招聘岗位 Search111',
  `zhaopin_renshu_number` int(11) DEFAULT NULL COMMENT '招聘人数  Search111',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `zhaopin_content` text COMMENT '招聘信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='招聘信息';

/*Data for the table `zhaopin` */

insert  into `zhaopin`(`id`,`gongsi_id`,`zhaopin_name`,`zhaopin_photo`,`zhaopin_daiyu`,`zhaopin_address`,`lianxiren_name`,`zhaopin_phone`,`zhaopin_types`,`zhaopin_renshu_number`,`shangxia_types`,`zhaopin_content`,`create_time`) values (1,1,'招聘信息名称1','http://localhost:8080/jiuyeguanli/upload/photo.jpg','薪资待遇1','上班地点1','联系人1','17703786901',3,452,1,'招聘信息详情1','2022-04-13 16:35:25'),(2,2,'招聘信息名称2','http://localhost:8080/jiuyeguanli/upload/photo.jpg','薪资待遇2','上班地点2','联系人2','17703786902',3,146,1,'招聘信息详情2','2022-04-13 16:35:25'),(3,2,'招聘信息名称3','http://localhost:8080/jiuyeguanli/upload/photo.jpg','薪资待遇3','上班地点3','联系人3','17703786903',1,261,1,'招聘信息详情3','2022-04-13 16:35:25'),(4,3,'招聘信息名称4','http://localhost:8080/jiuyeguanli/upload/photo.jpg','薪资待遇4','上班地点4','联系人4','17703786904',3,42,1,'招聘信息详情4','2022-04-13 16:35:25'),(5,3,'招聘信息名称5','http://localhost:8080/jiuyeguanli/upload/photo.jpg','薪资待遇5','上班地点5','联系人5','17703786905',2,472,1,'招聘信息详情5','2022-04-13 16:35:25'),(6,2,'招聘信息名称6','http://localhost:8080/jiuyeguanli/upload/photo.jpg','薪资待遇6','上班地点6','联系人6','17703786906',3,326,1,'招聘信息详情6','2022-04-13 16:35:25'),(7,3,'招聘信息名称7','http://localhost:8080/jiuyeguanli/upload/photo.jpg','薪资待遇7','上班地点7','联系人7','17703786907',2,246,1,'招聘信息详情7','2022-04-13 16:35:25'),(8,2,'招聘信息名称8','http://localhost:8080/jiuyeguanli/upload/photo1.jpg','薪资待遇8','上班地点8','联系人8','17703786908',1,134,1,'招聘信息详情8','2022-04-13 16:35:25'),(9,2,'招聘信息名称9','http://localhost:8080/jiuyeguanli/upload/photo2.jpg','薪资待遇9','上班地点9','联系人9','17703786909',1,66,1,'招聘信息详情9','2022-04-13 16:35:25'),(10,3,'招聘信息名称10','http://localhost:8080/jiuyeguanli/upload/photo3.jpg','薪资待遇10','上班地点10','联系人10','17703786910',2,456,1,'招聘信息详情10','2022-04-13 16:35:25'),(11,1,'招聘信息名称11','http://localhost:8080/jiuyeguanli/upload/photo4.jpg','薪资待遇11','上班地点11','联系人11','17703786911',3,256,1,'招聘信息详情11','2022-04-13 16:35:25'),(12,1,'诚招技术人员','http://localhost:8080/jiuyeguanli/upload/1649899574098.jpg','3000','地点111','张思','17703786969',3,10,1,'<p>市规划局</p>','2022-04-14 09:26:39');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
