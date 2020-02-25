# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.12)
# Database: LWCOMTSDB
# Generation Time: 2020-02-25 10:51:17 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tb_admin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_admin`;

CREATE TABLE `tb_admin` (
  `user_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `uname` varchar(11) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tb_admin` WRITE;
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;

INSERT INTO `tb_admin` (`user_id`, `uname`, `password`)
VALUES
	(00000000001,'小白云','920725'),
	(00000000002,'laobaiyun','666666'),
	(00000000003,'meibaiyun','666666'),
	(00000000004,'111','222'),
	(00000000005,'999','666');

/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tb_film
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_film`;

CREATE TABLE `tb_film` (
  `movie_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `tag` varchar(30) NOT NULL DEFAULT '',
  `act` longtext NOT NULL,
  `year` varchar(20) NOT NULL DEFAULT '',
  `dir` varchar(40) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `poster` varchar(100) NOT NULL DEFAULT '',
  `price` float NOT NULL,
  `offline_date` varchar(20) DEFAULT '',
  `playing` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tb_film` WRITE;
/*!40000 ALTER TABLE `tb_film` DISABLE KEYS */;

INSERT INTO `tb_film` (`movie_id`, `title`, `tag`, `act`, `year`, `dir`, `info`, `poster`, `price`, `offline_date`, `playing`)
VALUES
	(00000000030,'战神纪','奇幻/剧情/冒险','陈伟霆/林允/胡军/张歆艺','2018年4月28日','哈斯朝鲁','少年铁木真(陈伟霆饰）身为部落首领之子，年幼丧父，母亲独自将他抚养成人，铁木真成人之际返..','http://p6.qhmsg.com/t01316d65cc3ffd444b.jpg?size=300x400',19.9,'',1),
	(00000000031,'幕后玩家','剧情','徐峥/王丽坤/王砚辉/段博文','2018年4月28日','任鹏远','坐拥数亿财产的钟小年(徐峥饰)意外遭人绑架，不得不在一位神秘人的操控下完成一道道令人两难的..','http://p1.qhmsg.com/t01a6b47986085e6f9c.jpg?size=300x400',19.9,'',1),
	(00000000032,'玛丽与魔女之花','动画/冒险','杉咲花/神木隆之介/天海佑希/小日向文世','2018年4月28日','米林宏昌','改编自英国女作家玛丽·斯图尔特1971年的儿童文学《The Little Broomstick》，故事的主角是一..','http://p7.qhmsg.com/t0176a2d15c0ad3dced.jpg?size=300x400',19.9,'',1),
	(00000000033,'低压槽：欲望之城','剧情/犯罪','张家辉/徐静蕾/何炅/余男','2018年4月28日','张家辉','“孤城”是一座浮华却堕落的罪恶之城，警方卧底于秋（张家辉 饰）在上司阿占（何炅饰）的运筹..','http://p0.qhmsg.com/t01e1b3a1e0d4b7ac0e.jpg?size=300x400',19.9,'',1),
	(00000000034,'后来的我们','爱情','井柏然/周冬雨/田壮壮/苏小明','2018年4月28日','刘若英','影片故事缘起于春运，讲述由井柏然饰演的见清在归家路途上因机缘巧合相遇同乡小晓而发生的一段..','http://p5.qhmsg.com/t01130b3d7272528569.jpg?size=300x400',19.9,'',1),
	(00000000043,'复仇者联盟3：无限战争','动作/冒险/奇幻/科幻','小罗伯特·唐尼/克里斯·埃文斯/克里斯·海姆斯沃斯/乔什·布洛林','2018年5月11日','安东尼·罗素','复仇者联盟的一众超级英雄，必须抱着牺牲一切的信念，与史上最强大反派灭霸殊死一搏，阻止其摧..','http://p6.qhmsg.com/t0110d99e0b77f9f668.jpg?size=300x400',19.9,'',0),
	(00000000044,'巴霍巴利王2：终结','动作/奇幻/剧情/战争','帕拉巴斯/拉纳·达格巴帝/安努舒卡·谢蒂/挲塞亚拉杰','2018年5月4日','S·S·拉贾穆里','根据印度神话传说改编而来，讲述勇猛、善良的巴霍巴利王和他的儿子希瓦，对抗邪恶的兄弟巴拉迪..','http://p1.qhmsg.com/t015e6f94210c9998f9.jpg?size=300x400',19.9,'',0),
	(00000000045,'战犬瑞克斯','传记/剧情/战争','凯特·玛拉/拉蒙·罗德里格兹/布莱德利·惠特福德/汤姆·费尔顿','2018年5月11日','加比里埃拉·考珀斯维特','根据真实事件改编，凯特·玛拉在片中饰演一位严纪守律的海军陆战队下士，她与她的军犬一起在伊..','http://p5.qhmsg.com/t0151a9b9bd515710cf.jpg?size=300x400',19.9,'',0),
	(00000000046,'路过未来','剧情','杨子姗/尹昉/陈雨锶/李勤勤','2018年5月17日','李睿珺','耀婷（杨子姗 饰）是在深圳出生长大的甘肃人，除了办理身份证外她再没去过甘肃。如今在深圳打..','http://p3.qhmsg.com/t0154554daf90e6ec9a.jpg?size=300x400',19.9,'',0),
	(00000000047,'我是你妈','喜剧','闫妮/邹元清/吴若甫/吴大维','2018年5月11日','张骁','影片讲述了一对形同姐妹又骨肉情深的别样母女，不按套路出牌的单身辣妈秦美丽（闫妮饰）与正处..','http://p1.qhmsg.com/t01726fbc04805e8bec.jpg?size=300x400',19.9,'',0);

/*!40000 ALTER TABLE `tb_film` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tb_hall
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_hall`;

CREATE TABLE `tb_hall` (
  `hall_id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `max_seats` int(2) NOT NULL,
  `description` text,
  PRIMARY KEY (`hall_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tb_hall` WRITE;
/*!40000 ALTER TABLE `tb_hall` DISABLE KEYS */;

INSERT INTO `tb_hall` (`hall_id`, `max_seats`, `description`)
VALUES
	(001,60,NULL),
	(002,60,NULL),
	(003,60,NULL),
	(004,60,NULL),
	(005,60,NULL),
	(006,60,NULL);

/*!40000 ALTER TABLE `tb_hall` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tb_order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tb_order` (
  `order_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned zerofill NOT NULL,
  `schedule_id` int(11) unsigned zerofill NOT NULL,
  `seat` text,
  `pay_time` time NOT NULL,
  `movie_id` int(11) unsigned zerofill DEFAULT NULL,
  `hall_id` int(3) unsigned zerofill DEFAULT NULL,
  `create_time` time DEFAULT NULL,
  `play_datetime` datetime DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `order->sch` (`schedule_id`),
  CONSTRAINT `order->sch` FOREIGN KEY (`schedule_id`) REFERENCES `tb_schedule` (`schedule_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tb_order` WRITE;
/*!40000 ALTER TABLE `tb_order` DISABLE KEYS */;

INSERT INTO `tb_order` (`order_id`, `user_id`, `schedule_id`, `seat`, `pay_time`, `movie_id`, `hall_id`, `create_time`, `play_datetime`, `date`)
VALUES
	(00000000004,00000000001,00000000007,'6_7,8_9','00:00:59',00000000031,004,'23:59:59','1999-12-31 00:00:59','9999-12-31'),
	(00000000005,00000000002,00000000007,'6_7,8_9','00:00:59',00000000032,004,'23:59:59','1999-12-31 00:00:59','9999-12-31'),
	(00000000006,00000000003,00000000007,'6_7,8_9','00:00:59',00000000030,004,'23:59:59','1999-12-31 00:00:59','9999-12-31'),
	(00000000007,00000000002,00000000007,'6_7,8_9','00:00:59',00000000031,004,'23:59:59','1999-12-31 00:00:59','9999-12-31'),
	(00000000008,00000000003,00000000007,'6_7,8_9','00:00:59',00000000031,004,'23:59:59','1999-12-31 00:00:59','9999-12-31'),
	(00000000009,00000000002,00000000007,'6_7,8_9','00:00:59',00000000034,004,'23:59:59','1999-12-31 00:00:59','9999-12-31'),
	(00000000010,00000000003,00000000007,'6_7,8_9','00:00:59',00000000033,004,'23:59:59','1999-12-31 00:00:59','9999-12-31'),
	(00000000011,00000000002,00000000007,'6_7,8_9','00:00:59',00000000031,004,'23:59:59','1999-12-31 00:00:59','9999-12-31'),
	(00000000012,00000000001,00000000007,'6_7,8_9','00:00:59',00000000032,004,'23:59:59','1999-12-31 00:00:59','9999-12-31'),
	(00000000013,00000000001,00000000018,'7_8,7_9','15:41:19',NULL,NULL,NULL,NULL,NULL),
	(00000000014,00000000001,00000000018,'7_8,7_9','15:47:55',NULL,NULL,NULL,NULL,NULL),
	(00000000015,00000000001,00000000018,'7_8,7_9','15:53:14',NULL,NULL,NULL,NULL,NULL),
	(00000000016,00000000001,00000000018,'7_8,7_9','15:53:45',NULL,NULL,NULL,NULL,NULL),
	(00000000017,00000000001,00000000008,'7_8,7_9','15:55:32',NULL,NULL,NULL,NULL,NULL),
	(00000000018,00000000001,00000000015,'null','16:05:32',NULL,NULL,NULL,NULL,NULL),
	(00000000019,00000000001,00000000015,'null','16:06:03',NULL,NULL,NULL,NULL,NULL),
	(00000000020,00000000001,00000000015,'null','16:06:40',NULL,NULL,NULL,NULL,NULL),
	(00000000022,00000000001,00000000015,'null','16:16:55',NULL,NULL,NULL,NULL,NULL),
	(00000000023,00000000001,00000000019,'null','16:21:16',NULL,NULL,NULL,NULL,NULL),
	(00000000024,00000000001,00000000008,'null','16:23:06',NULL,NULL,NULL,NULL,NULL),
	(00000000025,00000000001,00000000022,'null','16:24:44',NULL,NULL,NULL,NULL,NULL),
	(00000000026,00000000001,00000000018,'9_10,1_1','16:25:45',NULL,NULL,NULL,NULL,NULL),
	(00000000027,00000000001,00000000018,'7_5,7_6','19:17:23',NULL,NULL,NULL,NULL,NULL),
	(00000000028,00000000001,00000000012,'7_5,7_6','20:55:31',NULL,NULL,NULL,NULL,NULL),
	(00000000029,00000000001,00000000008,'1_5,1_6','20:55:51',NULL,NULL,NULL,NULL,NULL),
	(00000000030,00000000001,00000000019,'7_6,7_5','21:07:55',NULL,NULL,NULL,NULL,NULL),
	(00000000031,00000000001,00000000019,'1_3,1_4','21:09:42',NULL,NULL,NULL,NULL,NULL),
	(00000000032,00000000001,00000000019,'8_7,9_8','21:10:04',NULL,NULL,NULL,NULL,NULL),
	(00000000033,00000000001,00000000023,'6_5,6_6','21:15:18',NULL,NULL,NULL,NULL,NULL),
	(00000000034,00000000001,00000000023,'4_5,4_6','21:16:29',NULL,NULL,NULL,NULL,NULL),
	(00000000035,00000000001,00000000023,'6_5,6_6','21:21:19',NULL,NULL,NULL,NULL,NULL),
	(00000000036,00000000001,00000000023,'5_7,5_4','21:21:29',NULL,NULL,NULL,NULL,NULL),
	(00000000037,00000000001,00000000023,'5_8,5_3','21:21:42',NULL,NULL,NULL,NULL,NULL),
	(00000000038,00000000001,00000000023,'6_2,6_9','21:22:05',NULL,NULL,NULL,NULL,NULL),
	(00000000039,00000000001,00000000023,'7_2,7_9','21:22:16',NULL,NULL,NULL,NULL,NULL),
	(00000000040,00000000001,00000000023,'8_3,8_8','21:22:43',NULL,NULL,NULL,NULL,NULL),
	(00000000041,00000000001,00000000023,'9_4,9_7','21:22:54',NULL,NULL,NULL,NULL,NULL),
	(00000000042,00000000001,00000000023,'10_5,10_6','21:23:07',NULL,NULL,NULL,NULL,NULL),
	(00000000043,00000000001,00000000008,'8_8,4_3','21:32:07',NULL,NULL,NULL,NULL,NULL),
	(00000000044,00000000001,00000000022,'10_6,10_5','21:32:39',NULL,NULL,NULL,NULL,NULL),
	(00000000045,00000000001,00000000008,'4_8,8_3','21:33:04',NULL,NULL,NULL,NULL,NULL),
	(00000000046,00000000001,00000000008,'4_8,8_3','22:50:06',NULL,NULL,NULL,NULL,NULL),
	(00000000047,00000000001,00000000008,'7_5,9_5','22:50:50',NULL,NULL,NULL,NULL,NULL),
	(00000000048,00000000001,00000000018,'7_6,7_7','22:51:15',NULL,NULL,NULL,NULL,NULL),
	(00000000049,00000000001,00000000018,'8_5,9_5','22:51:29',NULL,NULL,NULL,NULL,NULL),
	(00000000050,00000000001,00000000022,'1_4,1_5','13:12:45',NULL,NULL,NULL,NULL,NULL),
	(00000000051,00000000001,00000000012,'10_10,10_9','13:22:22',NULL,NULL,NULL,NULL,NULL),
	(00000000052,00000000001,00000000007,'8_5,8_6','13:24:59',NULL,NULL,NULL,NULL,NULL),
	(00000000053,00000000001,00000000007,'9_5,9_6','13:28:03',NULL,NULL,NULL,NULL,NULL),
	(00000000054,00000000001,00000000007,'10_2,10_3','13:29:31',NULL,NULL,NULL,NULL,NULL),
	(00000000055,00000000001,00000000007,'1_10,1_9','14:16:04',NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `tb_order` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tb_schedule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_schedule`;

CREATE TABLE `tb_schedule` (
  `schedule_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) unsigned zerofill NOT NULL,
  `hall_id` int(3) unsigned zerofill NOT NULL,
  `date` date NOT NULL,
  `play_time` time NOT NULL,
  `schedule_price` float NOT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `sch->film` (`movie_id`),
  KEY `sch->hall` (`hall_id`),
  CONSTRAINT `sch->film` FOREIGN KEY (`movie_id`) REFERENCES `tb_film` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sch->hall` FOREIGN KEY (`hall_id`) REFERENCES `tb_hall` (`hall_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tb_schedule` WRITE;
/*!40000 ALTER TABLE `tb_schedule` DISABLE KEYS */;

INSERT INTO `tb_schedule` (`schedule_id`, `movie_id`, `hall_id`, `date`, `play_time`, `schedule_price`)
VALUES
	(00000000007,00000000032,006,'2018-05-04','18:55:00',19.9),
	(00000000008,00000000032,004,'2018-05-04','08:55:00',19.9),
	(00000000009,00000000031,003,'2018-05-04','16:55:00',19.9),
	(00000000010,00000000031,002,'2018-05-04','12:55:00',19.9),
	(00000000011,00000000031,001,'2018-05-04','08:55:00',19.9),
	(00000000012,00000000032,005,'2018-05-04','16:55:00',19.9),
	(00000000013,00000000031,003,'2018-05-04','18:55:00',19.9),
	(00000000014,00000000032,006,'2018-05-04','20:55:00',19.9),
	(00000000015,00000000031,003,'2018-05-04','20:55:00',19.9),
	(00000000016,00000000031,003,'2018-05-04','22:55:00',19.9),
	(00000000017,00000000032,006,'2018-05-04','22:55:00',19.9),
	(00000000018,00000000032,004,'2018-05-04','10:55:00',19.9),
	(00000000019,00000000032,004,'2018-05-04','12:55:00',19.9),
	(00000000020,00000000031,002,'2018-05-04','14:55:00',19.9),
	(00000000021,00000000031,001,'2018-05-04','10:55:00',19.9),
	(00000000022,00000000032,004,'2018-05-04','14:55:00',19.9),
	(00000000023,00000000043,006,'2018-06-08','14:55:00',42.5),
	(00000000024,00000000030,005,'2018-06-08','08:55:00',9.9);

/*!40000 ALTER TABLE `tb_schedule` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tb_seat
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_seat`;

CREATE TABLE `tb_seat` (
  `seat_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `schedule_id` int(11) unsigned zerofill NOT NULL,
  `seat` text NOT NULL,
  PRIMARY KEY (`seat_id`),
  KEY `schedule` (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tb_seat` WRITE;
/*!40000 ALTER TABLE `tb_seat` DISABLE KEYS */;

INSERT INTO `tb_seat` (`seat_id`, `schedule_id`, `seat`)
VALUES
	(00000000004,00000000019,'5_5,5_6,6_3,6_4,6_5,6_6,6_7,6_4,6_5,6_6,6_7,7_6,7_5,1_3,1_4,8_7,9_8'),
	(00000000008,00000000022,'5_5,5_6,6_3,6_4,6_5,6_6,6_7,6_4,6_5,6_6,10_6,10_5,1_4,1_5'),
	(00000000015,00000000007,'5_5,5_6,6_3,6_4,6_5,6_6,6_4,6_5,6_6,6_7,8_5,8_6,9_5,9_6,10_2,10_3,1_10,1_9'),
	(00000000016,00000000008,'5_5,5_6,6_3,6_5,6_6,6_4,6_5,6_6,6_7,8_8,4_3,4_8,8_3,4_8,8_3,7_5,9_5'),
	(00000000017,00000000012,'5_5,5_6,6_3,6_4,6_5,6_6,6_7,6_4,6_5,6_6,6_7,1_1,2_1,10_10,10_9'),
	(00000000018,00000000014,'5_5,5_6,6_3,6_4,6_5,6_6,6_1,7_8'),
	(00000000019,00000000017,'5_5,5_6,6_3,6_4,6_5,6_6,6_7,6_4,6_5,6_6,6_7,10_10,10_9'),
	(00000000020,00000000018,'5_5,5_1,6_3,6_4,6_5,6_1,6_7,5_4,6_3,6_6,6_7,7_6,7_7,8_5,9_5'),
	(00000000022,00000000023,',6_5,6_6,5_7,5_4,5_8,5_3,6_2,6_9,7_2,7_9,8_3,8_8,9_4,9_7,10_5,10_6'),
	(00000000023,00000000009,''),
	(00000000024,00000000010,''),
	(00000000025,00000000011,''),
	(00000000026,00000000013,''),
	(00000000027,00000000015,''),
	(00000000028,00000000016,''),
	(00000000029,00000000020,''),
	(00000000030,00000000021,''),
	(00000000031,00000000024,'');

/*!40000 ALTER TABLE `tb_seat` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tb_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `user_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `uname` varchar(11) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;

INSERT INTO `tb_user` (`user_id`, `uname`, `password`)
VALUES
	(00000000001,'易爪米','666666');

/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
