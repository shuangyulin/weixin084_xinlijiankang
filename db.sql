/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm5g9z9
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm5g9z9` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm5g9z9`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621043638262 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-05-15 09:45:13',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-05-15 09:45:13',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-05-15 09:45:13',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-05-15 09:45:13',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-05-15 09:45:13',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-05-15 09:45:13',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1621043638261,'2021-05-15 09:53:57',1621043471555,'国美电器(港澳城店)','11','11122211111','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'xinlichanpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621043535465 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chanpinfenlei` */

DROP TABLE IF EXISTS `chanpinfenlei`;

CREATE TABLE `chanpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621043281140 DEFAULT CHARSET=utf8 COMMENT='产品分类';

/*Data for the table `chanpinfenlei` */

insert  into `chanpinfenlei`(`id`,`addtime`,`chanpinfenlei`) values (41,'2021-05-15 09:45:13','产品分类1');
insert  into `chanpinfenlei`(`id`,`addtime`,`chanpinfenlei`) values (42,'2021-05-15 09:45:13','产品分类2');
insert  into `chanpinfenlei`(`id`,`addtime`,`chanpinfenlei`) values (43,'2021-05-15 09:45:13','产品分类3');
insert  into `chanpinfenlei`(`id`,`addtime`,`chanpinfenlei`) values (44,'2021-05-15 09:45:13','产品分类4');
insert  into `chanpinfenlei`(`id`,`addtime`,`chanpinfenlei`) values (45,'2021-05-15 09:45:13','产品分类5');
insert  into `chanpinfenlei`(`id`,`addtime`,`chanpinfenlei`) values (46,'2021-05-15 09:45:13','产品分类6');
insert  into `chanpinfenlei`(`id`,`addtime`,`chanpinfenlei`) values (1621043281139,'2021-05-15 09:48:00','电饭锅');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621043681363 DEFAULT CHARSET=utf8 COMMENT='预约咨询';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-05-15 09:45:13',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (62,'2021-05-15 09:45:13',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (63,'2021-05-15 09:45:13',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (64,'2021-05-15 09:45:13',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (65,'2021-05-15 09:45:13',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (66,'2021-05-15 09:45:13',6,6,'提问6','回复6',6);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1621043596482,'2021-05-15 09:53:15',1621043471555,NULL,' 电饭锅地方给对方给对方给对方给对方',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1621043681362,'2021-05-15 09:54:40',1621043471555,1,NULL,'发给地方给对方给对方给对方',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm5g9z9/upload/1621043418473.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm5g9z9/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm5g9z9/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussxinlichanpin` */

DROP TABLE IF EXISTS `discussxinlichanpin`;

CREATE TABLE `discussxinlichanpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621043494879 DEFAULT CHARSET=utf8 COMMENT='心理产品评论表';

/*Data for the table `discussxinlichanpin` */

insert  into `discussxinlichanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-05-15 09:45:13',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussxinlichanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (152,'2021-05-15 09:45:13',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussxinlichanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (153,'2021-05-15 09:45:13',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussxinlichanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (154,'2021-05-15 09:45:13',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussxinlichanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (155,'2021-05-15 09:45:13',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussxinlichanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (156,'2021-05-15 09:45:13',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussxinlichanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1621043494878,'2021-05-15 09:51:34',1621043298794,1621043471555,'11','都是发送到收到发送到','');

/*Table structure for table `discussyinleliliao` */

DROP TABLE IF EXISTS `discussyinleliliao`;

CREATE TABLE `discussyinleliliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='音乐理疗评论表';

/*Data for the table `discussyinleliliao` */

insert  into `discussyinleliliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (161,'2021-05-15 09:45:13',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussyinleliliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (162,'2021-05-15 09:45:13',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussyinleliliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (163,'2021-05-15 09:45:13',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussyinleliliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (164,'2021-05-15 09:45:13',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussyinleliliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (165,'2021-05-15 09:45:13',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussyinleliliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (166,'2021-05-15 09:45:13',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621043350659 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`addtime`,`name`,`time`,`status`) values (1621043343308,'2021-05-15 09:49:02','房东',44,1);
insert  into `exampaper`(`id`,`addtime`,`name`,`time`,`status`) values (1621043350658,'2021-05-15 09:49:10','擐甲挥戈',77,1);

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621043405932 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1621043383652,'2021-05-15 09:49:42',1621043343308,'房东','发给发的鬼地方给对方','[{\"text\":\"A.工号法规和法国发过火\",\"code\":\"A\"},{\"text\":\"B.很关键化工几个号\",\"code\":\"B\"},{\"text\":\"C.豆腐干豆腐\",\"code\":\"C\"},{\"text\":\"D.尽快回家课件好\",\"code\":\"D\"}]',3,'D','工号发货发过火发给很反感',0,1);
insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1621043395105,'2021-05-15 09:49:54',1621043343308,'房东','工号发过火广发很反感','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',4,'B','电饭锅电饭锅地方',2,2);
insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1621043405931,'2021-05-15 09:50:05',1621043350658,'擐甲挥戈','电饭锅地方给对方地方','[]',2,'电饭锅地方给对方给对方','电饭锅地方关掉地方地方',3,1);

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621043566608 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1621043561008,'2021-05-15 09:52:40',1621043471555,NULL,1621043343308,'房东',1621043383652,'发给发的鬼地方给对方','[{\"text\":\"A.工号法规和法国发过火\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.很关键化工几个号\",\"code\":\"B\",\"checked\":true},{\"text\":\"C.豆腐干豆腐\",\"code\":\"C\",\"checked\":false},{\"text\":\"D.尽快回家课件好\",\"code\":\"D\",\"checked\":false}]',3,'D','工号发货发过火发给很反感',0,'B');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1621043562724,'2021-05-15 09:52:42',1621043471555,NULL,1621043343308,'房东',1621043395105,'工号发过火广发很反感','[{\"text\":\"A.对\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.错\",\"code\":\"B\",\"checked\":true}]',4,'B','电饭锅电饭锅地方',4,'B');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1621043566607,'2021-05-15 09:52:46',1621043471555,NULL,1621043350658,'擐甲挥戈',1621043405931,'电饭锅地方给对方地方','[]',2,'电饭锅地方给对方给对方','电饭锅地方关掉地方地方',0,'电饭锅地方给对方');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621043604028 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (71,'2021-05-15 09:45:13','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (72,'2021-05-15 09:45:13','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (73,'2021-05-15 09:45:13','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (74,'2021-05-15 09:45:13','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (75,'2021-05-15 09:45:13','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (76,'2021-05-15 09:45:13','帖子标题6','帖子内容6',6,6,'用户名6','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1621043604027,'2021-05-15 09:53:23','发给电饭锅df ','地方给对方鬼地方个地方给对方给对方给对方给对方给对方',0,1621043471555,'11','开放');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'xinlichanpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1621043642764 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1621043642763,'2021-05-15 09:54:02','2021515952684985638','xinlichanpin',1621043471555,1621043298794,'个很反感发大','http://localhost:8080/ssm5g9z9/upload/1621043288252.jpg',3,12,12,36,36,1,'已完成','国美电器(港澳城店)','11122211111','11');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621043546017 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1621043491301,'2021-05-15 09:51:30',1621043471555,1621043298794,'xinlichanpin','个很反感发大','http://localhost:8080/ssm5g9z9/upload/1621043288252.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1621043546016,'2021-05-15 09:52:25',1621043471555,1621043325571,'yinleliliao','房东鬼地方个地方给对方给对方','http://localhost:8080/ssm5g9z9/upload/1621043317891.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ciw04rgk7idogirl0nnqyupcwxyonr41','2021-05-15 09:47:13','2021-05-15 10:54:29');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1621043471555,'11','xuesheng','学生','6hxceigjrahp5yigyzjl9axtob29jv9r','2021-05-15 09:51:17','2021-05-15 10:55:01');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-15 09:45:13');

/*Table structure for table `xinlichanpin` */

DROP TABLE IF EXISTS `xinlichanpin`;

CREATE TABLE `xinlichanpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `chanpintupian` varchar(200) DEFAULT NULL COMMENT '产品图片',
  `chanpinxiangqing` longtext COMMENT '产品详情',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621043298795 DEFAULT CHARSET=utf8 COMMENT='心理产品';

/*Data for the table `xinlichanpin` */

insert  into `xinlichanpin`(`id`,`addtime`,`chanpinmingcheng`,`chanpinfenlei`,`chanpintupian`,`chanpinxiangqing`,`price`) values (31,'2021-05-15 09:45:13','产品名称1','产品分类1','http://localhost:8080/ssm5g9z9/upload/xinlichanpin_chanpintupian1.jpg','产品详情1',99.9);
insert  into `xinlichanpin`(`id`,`addtime`,`chanpinmingcheng`,`chanpinfenlei`,`chanpintupian`,`chanpinxiangqing`,`price`) values (32,'2021-05-15 09:45:13','产品名称2','产品分类2','http://localhost:8080/ssm5g9z9/upload/xinlichanpin_chanpintupian2.jpg','产品详情2',99.9);
insert  into `xinlichanpin`(`id`,`addtime`,`chanpinmingcheng`,`chanpinfenlei`,`chanpintupian`,`chanpinxiangqing`,`price`) values (33,'2021-05-15 09:45:13','产品名称3','产品分类3','http://localhost:8080/ssm5g9z9/upload/xinlichanpin_chanpintupian3.jpg','产品详情3',99.9);
insert  into `xinlichanpin`(`id`,`addtime`,`chanpinmingcheng`,`chanpinfenlei`,`chanpintupian`,`chanpinxiangqing`,`price`) values (34,'2021-05-15 09:45:13','产品名称4','产品分类4','http://localhost:8080/ssm5g9z9/upload/xinlichanpin_chanpintupian4.jpg','产品详情4',99.9);
insert  into `xinlichanpin`(`id`,`addtime`,`chanpinmingcheng`,`chanpinfenlei`,`chanpintupian`,`chanpinxiangqing`,`price`) values (35,'2021-05-15 09:45:13','产品名称5','产品分类5','http://localhost:8080/ssm5g9z9/upload/xinlichanpin_chanpintupian5.jpg','产品详情5',99.9);
insert  into `xinlichanpin`(`id`,`addtime`,`chanpinmingcheng`,`chanpinfenlei`,`chanpintupian`,`chanpinxiangqing`,`price`) values (36,'2021-05-15 09:45:13','产品名称6','产品分类6','http://localhost:8080/ssm5g9z9/upload/xinlichanpin_chanpintupian6.jpg','产品详情6',99.9);
insert  into `xinlichanpin`(`id`,`addtime`,`chanpinmingcheng`,`chanpinfenlei`,`chanpintupian`,`chanpinxiangqing`,`price`) values (1621043298794,'2021-05-15 09:48:18','个很反感发大','电饭锅','http://localhost:8080/ssm5g9z9/upload/1621043288252.jpg','<p>地方第三方上的方法发刚发的给对方过过过过过过过过过过过过过过过过过过过过过过过过过过过发刚发的给对方过过过过过过过过过过过过过过过过过过过过过过过过过过过</p><p><img src=\"http://localhost:8080/ssm5g9z9/upload/1621043295819.png\"></p><p><br></p>',12);

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621043471556 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (11,'2021-05-15 09:45:13','学生1','123456','姓名1',1,'男','13823888881','http://localhost:8080/ssm5g9z9/upload/xuesheng_zhaopian1.jpg',100);
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (12,'2021-05-15 09:45:13','学生2','123456','姓名2',2,'男','13823888882','http://localhost:8080/ssm5g9z9/upload/xuesheng_zhaopian2.jpg',100);
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (13,'2021-05-15 09:45:13','学生3','123456','姓名3',3,'男','13823888883','http://localhost:8080/ssm5g9z9/upload/xuesheng_zhaopian3.jpg',100);
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (14,'2021-05-15 09:45:13','学生4','123456','姓名4',4,'男','13823888884','http://localhost:8080/ssm5g9z9/upload/xuesheng_zhaopian4.jpg',100);
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (15,'2021-05-15 09:45:13','学生5','123456','姓名5',5,'男','13823888885','http://localhost:8080/ssm5g9z9/upload/xuesheng_zhaopian5.jpg',100);
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (16,'2021-05-15 09:45:13','学生6','123456','姓名6',6,'男','13823888886','http://localhost:8080/ssm5g9z9/upload/xuesheng_zhaopian6.jpg',100);
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (1621043471555,'2021-05-15 09:51:11','11','11','电饭锅',11,'女','11122211111','http://localhost:8080/ssm5g9z9/upload/1621043552854.jpg',49970);

/*Table structure for table `yinleliliao` */

DROP TABLE IF EXISTS `yinleliliao`;

CREATE TABLE `yinleliliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `yinpin` varchar(200) DEFAULT NULL COMMENT '音频',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `xiaoguo` longtext COMMENT '效果',
  `xiangxishuoming` longtext COMMENT '详细说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621043325572 DEFAULT CHARSET=utf8 COMMENT='音乐理疗';

/*Data for the table `yinleliliao` */

insert  into `yinleliliao`(`id`,`addtime`,`biaoti`,`yinpin`,`fengmian`,`xiaoguo`,`xiangxishuoming`) values (51,'2021-05-15 09:45:13','标题1','','http://localhost:8080/ssm5g9z9/upload/yinleliliao_fengmian1.jpg','效果1','详细说明1');
insert  into `yinleliliao`(`id`,`addtime`,`biaoti`,`yinpin`,`fengmian`,`xiaoguo`,`xiangxishuoming`) values (52,'2021-05-15 09:45:13','标题2','','http://localhost:8080/ssm5g9z9/upload/yinleliliao_fengmian2.jpg','效果2','详细说明2');
insert  into `yinleliliao`(`id`,`addtime`,`biaoti`,`yinpin`,`fengmian`,`xiaoguo`,`xiangxishuoming`) values (53,'2021-05-15 09:45:13','标题3','','http://localhost:8080/ssm5g9z9/upload/yinleliliao_fengmian3.jpg','效果3','详细说明3');
insert  into `yinleliliao`(`id`,`addtime`,`biaoti`,`yinpin`,`fengmian`,`xiaoguo`,`xiangxishuoming`) values (54,'2021-05-15 09:45:13','标题4','','http://localhost:8080/ssm5g9z9/upload/yinleliliao_fengmian4.jpg','效果4','详细说明4');
insert  into `yinleliliao`(`id`,`addtime`,`biaoti`,`yinpin`,`fengmian`,`xiaoguo`,`xiangxishuoming`) values (55,'2021-05-15 09:45:13','标题5','','http://localhost:8080/ssm5g9z9/upload/yinleliliao_fengmian5.jpg','效果5','详细说明5');
insert  into `yinleliliao`(`id`,`addtime`,`biaoti`,`yinpin`,`fengmian`,`xiaoguo`,`xiangxishuoming`) values (56,'2021-05-15 09:45:13','标题6','','http://localhost:8080/ssm5g9z9/upload/yinleliliao_fengmian6.jpg','效果6','详细说明6');
insert  into `yinleliliao`(`id`,`addtime`,`biaoti`,`yinpin`,`fengmian`,`xiaoguo`,`xiangxishuoming`) values (1621043325571,'2021-05-15 09:48:45','房东鬼地方个地方给对方给对方','http://localhost:8080/ssm5g9z9/upload/1621043314250.mp3','http://localhost:8080/ssm5g9z9/upload/1621043317891.jpg','发刚发的给对方过过过过过过过过过过过过过过过过过过过过过过过过过过过发刚发的给对方过过过过过过过过过过过过过过过过过过过过过过过过过过过','<p>发刚发的给对方过过过过过过过过过过过过过过过过过过过过过过过过过过过发刚发的给对方过过过过过过过过过过过过过过过过过过过过过过过过过过过发刚发的给对方过过过过过过过过过过过过过过过过过过过过过过过过过过过</p><p><img src=\"http://localhost:8080/ssm5g9z9/upload/1621043323612.jpg\"></p>');

/*Table structure for table `zuixinzixun` */

DROP TABLE IF EXISTS `zuixinzixun`;

CREATE TABLE `zuixinzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621043268610 DEFAULT CHARSET=utf8 COMMENT='最新资讯';

/*Data for the table `zuixinzixun` */

insert  into `zuixinzixun`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (21,'2021-05-15 09:45:13','标题1','简介1','内容1','2021-05-15','http://localhost:8080/ssm5g9z9/upload/zuixinzixun_fengmian1.jpg');
insert  into `zuixinzixun`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (22,'2021-05-15 09:45:13','标题2','简介2','内容2','2021-05-15','http://localhost:8080/ssm5g9z9/upload/zuixinzixun_fengmian2.jpg');
insert  into `zuixinzixun`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (23,'2021-05-15 09:45:13','标题3','简介3','内容3','2021-05-15','http://localhost:8080/ssm5g9z9/upload/zuixinzixun_fengmian3.jpg');
insert  into `zuixinzixun`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (24,'2021-05-15 09:45:13','标题4','简介4','内容4','2021-05-15','http://localhost:8080/ssm5g9z9/upload/zuixinzixun_fengmian4.jpg');
insert  into `zuixinzixun`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (25,'2021-05-15 09:45:13','标题5','简介5','内容5','2021-05-15','http://localhost:8080/ssm5g9z9/upload/zuixinzixun_fengmian5.jpg');
insert  into `zuixinzixun`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (26,'2021-05-15 09:45:13','标题6','简介6','内容6','2021-05-15','http://localhost:8080/ssm5g9z9/upload/zuixinzixun_fengmian6.jpg');
insert  into `zuixinzixun`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`) values (1621043268609,'2021-05-15 09:47:48','发给刚发的刚发的','发刚发的给对方过过过过过过过过过过过过过过过过过过过过过过过过过过过','<p>发刚发的给对方过过过过过过过过过过过过过过过过过过过过过过过过过过过发刚发的给对方过过过过过过过过过过过过过过过过过过过过过过过过过过过</p><p><img src=\"http://localhost:8080/ssm5g9z9/upload/1621043264503.jpg\"></p><p><br></p><p><img src=\"http://localhost:8080/ssm5g9z9/upload/1621043267271.jpg\"></p><p><br></p><p><br></p>','2021-05-07','http://localhost:8080/ssm5g9z9/upload/1621043257543.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
