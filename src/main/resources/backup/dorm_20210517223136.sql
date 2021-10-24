-- MySQL dump 10.13  Distrib 5.1.51, for Win32 (ia32)
--
-- Host: localhost    Database: dorm
-- ------------------------------------------------------
-- Server version	5.1.51-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `building` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `address` varchar(128) NOT NULL,
  `bno` int(11) NOT NULL,
  `campus` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (5,'2021-05-16 22:26:57','2021-05-16 22:26:57','繁华里1号楼',1,'繁华里'),(6,'2021-05-16 22:27:36','2021-05-16 22:27:36','满庭芳1号楼',1,'满庭芳'),(7,'2021-05-16 22:28:00','2021-05-16 22:28:00','年华里1号楼',1,'年华里');
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coach` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (3,'2021-05-16 22:33:05','2021-05-16 22:33:05','王求恩','18860165529',1);
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_bak`
--

DROP TABLE IF EXISTS `database_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `database_bak` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `filename` varchar(32) NOT NULL,
  `filepath` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_bak`
--

LOCK TABLES `database_bak` WRITE;
/*!40000 ALTER TABLE `database_bak` DISABLE KEYS */;
INSERT INTO `database_bak` VALUES (27,'2021-05-16 22:56:44','2021-05-16 22:56:44','dorm_20210516225644.sql','D:/Idea2019/dm2020/dorm/src/main/resources/backup/'),(28,'2021-05-17 22:31:36','2021-05-17 22:31:36','dorm_20210517223136.sql','D:/Idea2019/dm2020/dorm/src/main/resources/backup/');
/*!40000 ALTER TABLE `database_bak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dormitory`
--

DROP TABLE IF EXISTS `dormitory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dormitory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `note` varchar(20) NOT NULL,
  `room_no` int(11) NOT NULL,
  `building_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf7f8tsbhmsg0deqbqh14qpmih` (`building_id`),
  CONSTRAINT `FKf7f8tsbhmsg0deqbqh14qpmih` FOREIGN KEY (`building_id`) REFERENCES `building` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dormitory`
--

LOCK TABLES `dormitory` WRITE;
/*!40000 ALTER TABLE `dormitory` DISABLE KEYS */;
INSERT INTO `dormitory` VALUES (10,'2021-05-16 22:28:34','2021-05-16 22:28:34','繁华里1号楼101宿舍',101,5),(11,'2021-05-16 22:29:10','2021-05-16 22:29:10','满庭芳1号楼101宿舍',101,6),(12,'2021-05-16 22:29:48','2021-05-16 22:29:48','年华里1号楼101宿舍',101,7);
/*!40000 ALTER TABLE `dormitory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `emp_type` int(11) DEFAULT NULL,
  `head_pic` varchar(128) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `building_bno` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf7ulbvt1f5q9idfrjaxhn2k7k` (`building_bno`),
  KEY `FKi2oml14t11r31m72di3sia65w` (`role_id`),
  CONSTRAINT `FKf7ulbvt1f5q9idfrjaxhn2k7k` FOREIGN KEY (`building_bno`) REFERENCES `building` (`id`),
  CONSTRAINT `FKi2oml14t11r31m72di3sia65w` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (18,'2021-05-16 22:46:31','2021-05-16 22:49:26','1147746903@qq.com',0,'','18860165529','王求恩1','E20211450724347','E20211450724347',1,5,9),(19,'2021-05-16 22:46:45','2021-05-16 22:46:45','1147746903@qq.com',0,'','18860165529','王求恩2','E20211453495932','E20211453495932',1,5,9),(20,'2021-05-16 22:47:04','2021-05-16 22:47:04','1147746903@qq.com',1,'','18860165529','王求恩3','E20211653812508','E20211653812508',1,5,9),(21,'2021-05-16 22:47:29','2021-05-16 22:49:34','1147746903@qq.com',1,'','18860165529','王求恩4','E20211452332975','E20211452332975',1,5,9),(22,'2021-05-16 22:48:08','2021-05-16 22:48:08','1147746903@qq.com',2,'','18860165529','王求恩5','E20211455249639','E20211455249639',1,5,9),(23,'2021-05-16 22:48:25','2021-05-16 22:48:25','1147746903@qq.com',2,'','18860165529','王求恩6','E20211655598084','E20211655598084',1,5,9),(24,'2021-05-16 22:49:10','2021-05-16 22:49:10','1370376044@qq.com',0,'','18860165529','孙哲1','E20211449800987','E20211449800987',1,6,9),(25,'2021-05-16 22:49:58','2021-05-16 22:53:33','1370376044@qq.com',0,'','18860165529','孙哲2','E20211456023402','E20211456023402',1,6,9),(26,'2021-05-16 22:50:47','2021-05-16 22:50:47','1370376044@qq.com',1,'','18860165529','孙哲3','E20211448790939','E20211448790939',1,6,9),(27,'2021-05-16 22:51:08','2021-05-16 22:51:08','1370376044@qq.com',1,'','18860165529','孙哲4','E20211507774057','E20211507774057',1,6,9),(28,'2021-05-16 22:51:27','2021-05-16 22:51:27','1370376044@qq.com',2,'','18860165529','孙哲5','E20211478247302','E20211478247302',1,6,9),(29,'2021-05-16 22:51:43','2021-05-16 22:51:43','1370376044@qq.com',2,'','18860165529','孙哲6','E20211456146341','E20211456146341',1,6,9),(30,'2021-05-16 22:52:23','2021-05-16 22:52:34','394788946@qq.com',0,'','18860165529','孙伟峰1','E20211513558463','E20211513558463',1,7,9),(31,'2021-05-16 22:53:14','2021-05-16 22:53:14','394788946@qq.com',0,'','18860165529','孙伟峰2','E20211686167550','E20211686167550',1,7,9),(32,'2021-05-16 22:54:11','2021-05-16 22:54:45','394788946@qq.com',1,'','18860165529','孙伟峰3','E20211478251232','E20211478251232',1,7,9),(33,'2021-05-16 22:54:33','2021-05-16 22:54:33','394788946@qq.com',1,'','18860165529','孙伟峰4','E20211478220511','E20211478220511',1,7,9),(34,'2021-05-16 22:55:11','2021-05-16 22:55:11','394788946@qq.com',2,'','18860165529','孙伟峰5','E20211538395360','E20211538395360',1,7,9),(35,'2021-05-16 22:55:35','2021-05-16 22:55:35','394788946@qq.com',2,'','18860165529','孙伟峰6','E20211566047137','E20211566047137',1,7,9);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `is_bitton` bit(1) NOT NULL,
  `is_show` bit(1) NOT NULL,
  `name` varchar(18) NOT NULL,
  `sort` int(11) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgeupubdqncc1lpgf2cn4fqwbc` (`parent_id`),
  CONSTRAINT `FKgeupubdqncc1lpgf2cn4fqwbc` FOREIGN KEY (`parent_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (2,'2020-03-14 14:26:03','2020-03-14 18:24:53','mdi-settings','\0','','系统设置',0,'',NULL),(3,'2020-03-14 16:58:55','2020-03-14 18:26:02','mdi-view-list','\0','','菜单管理',1,'/menu/list',2),(5,'2020-03-14 17:04:44','2020-03-14 18:27:53','mdi-plus','\0','','新增',2,'/menu/add',3),(7,'2020-03-14 17:07:43','2020-03-15 12:11:25','mdi-account-settings-variant','\0','','角色管理',5,'/role/list',2),(8,'2020-03-14 18:28:48','2020-03-21 22:04:45','mdi-grease-pencil','','','编辑',3,'edit(\'/menu/edit\')',3),(9,'2020-03-14 18:30:00','2020-03-21 22:08:20','mdi-close','','','删除',4,'del(\'/menu/delete\')',3),(10,'2020-03-15 12:12:00','2020-03-15 12:12:00','mdi-account-plus','\0','','添加',6,'/role/add',7),(11,'2020-03-15 12:12:36','2020-03-21 22:10:45','mdi-account-edit','','','编辑',7,'edit(\'/role/edit\')',7),(12,'2020-03-15 12:13:19','2020-03-21 22:15:27','mdi-account-remove','','','删除',8,'del(\'/role/delete\')',7),(13,'2020-03-15 12:14:52','2020-03-15 12:17:00','mdi-account-multiple','\0','','用户管理',9,'/user/list',2),(14,'2020-03-15 12:15:22','2020-03-15 12:15:22','mdi-account-plus','\0','','添加',10,'/user/add',13),(15,'2020-03-16 17:18:14','2020-03-21 22:11:19','mdi-account-edit','','','编辑',11,'edit(\'/user/edit\')',13),(16,'2020-03-16 17:19:01','2020-03-21 22:15:36','mdi-account-remove','','','删除',12,'del(\'/user/delete\')',13),(19,'2020-03-22 11:24:36','2020-10-30 17:49:36','mdi-arrow-up-bold-circle','\0','\0','上传图片',0,'/upload/upload_photo',64),(20,'2020-03-22 14:09:35','2020-03-22 14:09:47','mdi-tag-multiple','\0','','日志管理',13,'/system/operator_log_list',2),(21,'2020-03-22 14:11:39','2020-03-22 14:11:39','mdi-tag-remove','','','删除',14,'del(\'/system/delete_operator_log\')',20),(22,'2020-03-22 14:12:57','2020-03-22 14:46:55','mdi-delete-circle','','','清空日志',15,'delAll(\'/system/delete_all_operator_log\')',20),(23,'2020-03-22 14:46:40','2020-03-22 14:47:09','mdi-database','\0','','数据备份',16,'/database_bak/list',2),(24,'2020-03-22 14:48:07','2020-03-22 15:13:41','mdi-database-plus','','','备份',17,'add(\'/database_bak/add\')',23),(25,'2020-03-22 14:49:03','2020-03-22 14:49:03','mdi-database-minus','','','删除',18,'del(\'/database_bak/delete\')',23),(26,'2020-03-22 19:36:20','2020-03-22 19:36:20','mdi-database-minus','','','还原',19,'restore(\'/database_bak/restore\')',23),(28,'2020-10-26 15:29:54','2020-10-30 09:05:08','mdi-nature','\0','','楼栋管理',20,'/building/list',68),(29,'2020-10-26 15:31:21','2020-10-26 15:31:21','mdi-plus-circle-outline','\0','','新增',21,'/building/add',28),(30,'2020-10-26 15:32:29','2020-10-26 15:32:29','mdi-grease-pencil','','','编辑',22,'edit(\'/building/edit\')',28),(31,'2020-10-26 15:33:16','2020-10-26 15:33:16','mdi-close','','','删除',23,'del(\'/building/delete\')',28),(32,'2020-10-26 16:13:20','2020-10-30 09:07:23','mdi-account','\0','','学生管理',0,'/stu/list',69),(33,'2020-10-26 16:39:38','2020-10-30 09:11:19','mdi-worker','\0','','维修工维护',0,'/emp/list',70),(36,'2020-10-26 16:52:05','2020-10-30 09:05:57','mdi-home-outline','\0','','宿舍管理',24,'/dormitory/list',68),(37,'2020-10-26 17:06:17','2020-10-26 17:06:17','mdi-account','\0','','增加',0,'/stu/add',32),(38,'2020-10-26 17:27:20','2020-10-26 17:27:20','mdi-account-alert','','','删除',0,'del(\'/stu/delete\')',32),(39,'2020-10-26 17:27:49','2020-10-26 17:27:49','mdi-account-convert','','','修改',0,'edit(\'/stu/edit\')',32),(40,'2020-10-26 17:31:18','2020-10-26 17:35:39','mdi-message-processing','\0','','维修工添加',0,'/emp/add',33),(41,'2020-10-26 17:38:45','2020-10-26 18:02:34','mdi-account-plus','\0','','添加',0,'/dormitory/add',36),(42,'2020-10-26 18:12:34','2020-10-29 09:01:20','mdi-chart-bar','\0','','统计',25,'/statistics/statistics',2),(43,'2020-10-26 18:15:52','2020-10-26 18:36:50','mdi-backspace','','','删除',0,'del(\'/dormitory/delete\')',36),(44,'2020-10-26 18:38:13','2020-10-26 18:38:13','mdi-content-duplicate','','','编辑',0,'edit(\'/dormitory/edit\')',36),(45,'2020-10-27 10:35:25','2020-10-30 09:07:13','mdi-account-settings-variant','\0','','辅导员管理',0,'/coach/list',69),(46,'2020-10-27 13:07:26','2020-10-27 13:12:18','mdi-close-circle-outline','','','维修工删除',0,'del(\'/emp/delete\')',33),(49,'2020-10-27 13:14:20','2020-10-27 13:28:34','mdi-arrow-down-bold','','','维修工修改',0,'edit(\'/emp/edit\')',33),(51,'2020-10-27 15:09:47','2020-11-10 18:14:35','mdi-worker','\0','','增加',0,'/coach/add',45),(52,'2020-10-27 16:00:25','2020-10-30 09:10:26','mdi-android-head','\0','','维修管理',0,'/req/list',70),(55,'2020-10-27 16:24:36','2020-10-27 16:24:36','mdi-android','\0','','维修上报',0,'/req/add',52),(56,'2020-10-27 17:12:07','2020-10-27 17:12:07','mdi-alert-circle','','','撤销上报',0,'del(\'/req/delete\')',52),(57,'2020-10-27 17:13:00','2020-10-27 17:13:00','mdi-android-head','','','修改',0,'edit(\'/req/edit\')',52),(58,'2020-10-27 17:36:04','2020-10-27 18:26:52','mdi-border-color','','','编辑',0,'edit(\'/coach/edit\')',45),(59,'2020-10-27 17:38:52','2020-10-27 18:26:11','mdi-window-close','','','删除',0,'del(\'/coach/delete\')',45),(64,'2020-10-28 16:34:30','2020-10-30 09:11:33','mdi-arrow-collapse-up','\0','','维修内容',0,'/work/list',70),(65,'2020-10-28 16:46:21','2020-10-28 17:36:12','mdi-autorenew','','','维修完成',0,'updateWork(\'/work/maintenance\')',64),(66,'2020-10-29 12:12:45','2020-10-29 12:19:20','mdi-arrow-bottom-right','','','管理员分配',0,'edit(\'/req/repairs\')',52),(68,'2020-10-30 09:03:53','2020-10-30 09:12:24','mdi-bank','\0','','校园设置',0,'',NULL),(69,'2020-10-30 09:06:52','2020-10-30 09:06:52','mdi-account-multiple','\0','','师生设置',0,'',NULL),(70,'2020-10-30 09:10:05','2020-10-30 09:10:05','mdi-wrench','\0','','维修设置',0,'',NULL),(71,'2020-10-30 17:51:55','2020-10-30 17:51:55','mdi-xmpp','\0','\0','上传图片2',0,'/upload/upload_photo',52);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operater_log`
--

DROP TABLE IF EXISTS `operater_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operater_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `operator` varchar(18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operater_log`
--

LOCK TABLES `operater_log` WRITE;
/*!40000 ALTER TABLE `operater_log` DISABLE KEYS */;
INSERT INTO `operater_log` VALUES (333,'2021-05-17 22:31:36','2021-05-17 22:31:36','数据库成功备份，备份文件信息：DatabaseBak [filename=dorm_20210517223136.sql, filepath=D:/Idea2019/dm2020/dorm/src/main/resources/backup/]','admin');
/*!40000 ALTER TABLE `operater_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_auth`
--

DROP TABLE IF EXISTS `order_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_auth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `mac` varchar(32) DEFAULT NULL,
  `order_sn` varchar(18) NOT NULL,
  `phone` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_auth`
--

LOCK TABLES `order_auth` WRITE;
/*!40000 ALTER TABLE `order_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repairs`
--

DROP TABLE IF EXISTS `repairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repairs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `emp_type` int(11) DEFAULT NULL,
  `repairs_remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `dormitory_id` bigint(20) DEFAULT NULL,
  `emp_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbkrjokhw1nx5kgc2webt8nraw` (`dormitory_id`),
  KEY `FKgrvgnbmyqhkpwv264lwpktukh` (`emp_id`),
  KEY `FKrpuujvd0p0i94vm670mmlcuvf` (`student_id`),
  CONSTRAINT `FKbkrjokhw1nx5kgc2webt8nraw` FOREIGN KEY (`dormitory_id`) REFERENCES `dormitory` (`id`),
  CONSTRAINT `FKgrvgnbmyqhkpwv264lwpktukh` FOREIGN KEY (`emp_id`) REFERENCES `emp` (`id`),
  CONSTRAINT `FKrpuujvd0p0i94vm670mmlcuvf` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairs`
--

LOCK TABLES `repairs` WRITE;
/*!40000 ALTER TABLE `repairs` DISABLE KEYS */;
INSERT INTO `repairs` VALUES (15,'2021-05-16 22:58:08','2021-05-16 23:02:03',0,'灯坏了',1,10,19,11),(16,'2021-05-16 23:07:07','2021-05-16 23:11:03',0,'灯坏了',0,12,30,13),(17,'2021-05-16 23:10:34','2021-05-16 23:12:59',0,'灯坏了',1,11,24,12),(18,'2021-05-17 22:13:37','2021-05-17 22:14:58',0,'灯坏了',1,11,25,12);
/*!40000 ALTER TABLE `repairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `role_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'2021-03-15 13:16:38','2021-05-16 14:24:01','超级管理员','超级管理员拥有最高权限。',2,1),(2,'2020-03-15 13:18:57','2021-03-12 20:01:50','普通管理员','普通管理员只有部分权限',2,1),(9,'2020-10-28 16:51:47','2020-10-30 17:54:09','维修工','',0,1),(10,'2020-10-28 16:52:15','2020-10-30 17:54:18','学生','',1,1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_authorities`
--

DROP TABLE IF EXISTS `role_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_authorities` (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  KEY `FKtl0ns8c0yk51fbpjfh8kxfjag` (`authorities_id`),
  KEY `FK8dv2uo3imjpm4dmk7pge9v2vo` (`role_id`),
  CONSTRAINT `FK8dv2uo3imjpm4dmk7pge9v2vo` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKtl0ns8c0yk51fbpjfh8kxfjag` FOREIGN KEY (`authorities_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_authorities`
--

LOCK TABLES `role_authorities` WRITE;
/*!40000 ALTER TABLE `role_authorities` DISABLE KEYS */;
INSERT INTO `role_authorities` VALUES (9,70),(9,64),(9,19),(9,65),(10,70),(10,52),(10,55),(10,57),(10,71),(2,2),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(2,42),(2,68),(2,28),(2,29),(2,30),(2,31),(2,36),(2,41),(2,43),(2,44),(2,69),(2,32),(2,37),(2,38),(2,39),(2,45),(2,51),(2,58),(2,59),(2,70),(2,33),(2,40),(2,46),(2,49),(2,52),(2,56),(2,57),(2,66),(2,64),(2,19),(2,65),(1,2),(1,3),(1,5),(1,8),(1,9),(1,7),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,42),(1,68),(1,28),(1,29),(1,30),(1,31),(1,36),(1,41),(1,43),(1,44),(1,69),(1,32),(1,37),(1,38),(1,39),(1,45),(1,51),(1,58),(1,59),(1,70),(1,33),(1,40),(1,46),(1,49),(1,52),(1,55),(1,56),(1,57),(1,66),(1,71),(1,64),(1,19),(1,65);
/*!40000 ALTER TABLE `role_authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `head_pic` varchar(128) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `student_no` varchar(255) DEFAULT NULL,
  `student_sex` int(11) DEFAULT NULL,
  `counsellor_id` bigint(20) DEFAULT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKto3debvquo1gs5p7bitgjkx5k` (`counsellor_id`),
  KEY `FK5oo08fl0gj16hw4t8q12ijkc0` (`room_id`),
  KEY `FKe4f8c4nag6ggefun7fh9yy30k` (`role_id`),
  CONSTRAINT `FK5oo08fl0gj16hw4t8q12ijkc0` FOREIGN KEY (`room_id`) REFERENCES `dormitory` (`id`),
  CONSTRAINT `FKe4f8c4nag6ggefun7fh9yy30k` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKto3debvquo1gs5p7bitgjkx5k` FOREIGN KEY (`counsellor_id`) REFERENCES `coach` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (11,'2021-05-16 22:33:54','2021-05-16 22:33:54','1370376044@qq.com','','18860165529','S20211450758981','孙哲','S20211450758981',0,3,10,10),(12,'2021-05-16 22:35:45','2021-05-16 22:35:45','1798013710@qq.com','','18860165529','S20211684405946','苏志尚','S20211684405946',0,3,11,10),(13,'2021-05-16 22:37:32','2021-05-16 22:37:32','394788946@qq.com','','18860165529','S20211657382596','孙伟峰','S20211657382596',0,3,12,10),(14,'2021-05-16 23:04:10','2021-05-16 23:04:10','502981907@qq.com','','18860165529','S20211456087597','王嘉健','S20211456087597',0,3,12,10),(15,'2021-05-16 23:04:48','2021-05-16 23:04:48','1147746903@qq.com','','18860165529','S20211485760524','王求恩','S20211485760524',0,3,10,10),(16,'2021-05-16 23:05:55','2021-05-16 23:05:55','2399884673@qq.com','','18860165529','S20211456088838','阮文杰','S20211456088838',0,3,11,10);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `head_pic` varchar(128) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `sex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(18) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`),
  KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`),
  CONSTRAINT `FKn82ha3ccdebhokx3a8fgdqeyy` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2021-03-18 19:18:53','2021-03-12 11:15:47','1147746903@qq.com','20210312/1615518945232.png','18860165529','admin123',1,1,'admin123',1),(22,'2021-03-12 00:20:01','2021-05-17 22:31:09','1147746903@qq.com','20210517/1621261866068.png','18860165529','admin',1,1,'admin',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-17 22:31:37
