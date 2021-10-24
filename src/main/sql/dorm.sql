/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : dorm

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2021-06-16 22:44:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `building`
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `address` varchar(128) NOT NULL,
  `bno` int(11) NOT NULL,
  `campus` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of building
-- ----------------------------

-- ----------------------------
-- Table structure for `coach`
-- ----------------------------
DROP TABLE IF EXISTS `coach`;
CREATE TABLE `coach` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coach
-- ----------------------------

-- ----------------------------
-- Table structure for `database_bak`
-- ----------------------------
DROP TABLE IF EXISTS `database_bak`;
CREATE TABLE `database_bak` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `filename` varchar(32) NOT NULL,
  `filepath` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of database_bak
-- ----------------------------

-- ----------------------------
-- Table structure for `dormitory`
-- ----------------------------
DROP TABLE IF EXISTS `dormitory`;
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

-- ----------------------------
-- Records of dormitory
-- ----------------------------

-- ----------------------------
-- Table structure for `emp`
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
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

-- ----------------------------
-- Records of emp
-- ----------------------------

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('2', '2020-03-14 14:26:03', '2020-03-14 18:24:53', 'mdi-settings', '', '', '系统设置', '0', '', null);
INSERT INTO `menu` VALUES ('3', '2020-03-14 16:58:55', '2020-03-14 18:26:02', 'mdi-view-list', '', '', '菜单管理', '1', '/menu/list', '2');
INSERT INTO `menu` VALUES ('5', '2020-03-14 17:04:44', '2020-03-14 18:27:53', 'mdi-plus', '', '', '新增', '2', '/menu/add', '3');
INSERT INTO `menu` VALUES ('7', '2020-03-14 17:07:43', '2020-03-15 12:11:25', 'mdi-account-settings-variant', '', '', '角色管理', '5', '/role/list', '2');
INSERT INTO `menu` VALUES ('8', '2020-03-14 18:28:48', '2020-03-21 22:04:45', 'mdi-grease-pencil', '', '', '编辑', '3', 'edit(\'/menu/edit\')', '3');
INSERT INTO `menu` VALUES ('9', '2020-03-14 18:30:00', '2020-03-21 22:08:20', 'mdi-close', '', '', '删除', '4', 'del(\'/menu/delete\')', '3');
INSERT INTO `menu` VALUES ('10', '2020-03-15 12:12:00', '2020-03-15 12:12:00', 'mdi-account-plus', '', '', '添加', '6', '/role/add', '7');
INSERT INTO `menu` VALUES ('11', '2020-03-15 12:12:36', '2020-03-21 22:10:45', 'mdi-account-edit', '', '', '编辑', '7', 'edit(\'/role/edit\')', '7');
INSERT INTO `menu` VALUES ('12', '2020-03-15 12:13:19', '2020-03-21 22:15:27', 'mdi-account-remove', '', '', '删除', '8', 'del(\'/role/delete\')', '7');
INSERT INTO `menu` VALUES ('13', '2020-03-15 12:14:52', '2020-03-15 12:17:00', 'mdi-account-multiple', '', '', '用户管理', '9', '/user/list', '2');
INSERT INTO `menu` VALUES ('14', '2020-03-15 12:15:22', '2020-03-15 12:15:22', 'mdi-account-plus', '', '', '添加', '10', '/user/add', '13');
INSERT INTO `menu` VALUES ('15', '2020-03-16 17:18:14', '2020-03-21 22:11:19', 'mdi-account-edit', '', '', '编辑', '11', 'edit(\'/user/edit\')', '13');
INSERT INTO `menu` VALUES ('16', '2020-03-16 17:19:01', '2020-03-21 22:15:36', 'mdi-account-remove', '', '', '删除', '12', 'del(\'/user/delete\')', '13');
INSERT INTO `menu` VALUES ('19', '2020-03-22 11:24:36', '2020-10-30 17:49:36', 'mdi-arrow-up-bold-circle', '', '', '上传图片', '0', '/upload/upload_photo', '64');
INSERT INTO `menu` VALUES ('20', '2020-03-22 14:09:35', '2020-03-22 14:09:47', 'mdi-tag-multiple', '', '', '日志管理', '13', '/system/operator_log_list', '2');
INSERT INTO `menu` VALUES ('21', '2020-03-22 14:11:39', '2020-03-22 14:11:39', 'mdi-tag-remove', '', '', '删除', '14', 'del(\'/system/delete_operator_log\')', '20');
INSERT INTO `menu` VALUES ('22', '2020-03-22 14:12:57', '2020-03-22 14:46:55', 'mdi-delete-circle', '', '', '清空日志', '15', 'delAll(\'/system/delete_all_operator_log\')', '20');
INSERT INTO `menu` VALUES ('23', '2020-03-22 14:46:40', '2020-03-22 14:47:09', 'mdi-database', '', '', '数据备份', '16', '/database_bak/list', '2');
INSERT INTO `menu` VALUES ('24', '2020-03-22 14:48:07', '2020-03-22 15:13:41', 'mdi-database-plus', '', '', '备份', '17', 'add(\'/database_bak/add\')', '23');
INSERT INTO `menu` VALUES ('25', '2020-03-22 14:49:03', '2020-03-22 14:49:03', 'mdi-database-minus', '', '', '删除', '18', 'del(\'/database_bak/delete\')', '23');
INSERT INTO `menu` VALUES ('26', '2020-03-22 19:36:20', '2020-03-22 19:36:20', 'mdi-database-minus', '', '', '还原', '19', 'restore(\'/database_bak/restore\')', '23');
INSERT INTO `menu` VALUES ('28', '2020-10-26 15:29:54', '2020-10-30 09:05:08', 'mdi-nature', '', '', '楼栋管理', '20', '/building/list', '68');
INSERT INTO `menu` VALUES ('29', '2020-10-26 15:31:21', '2020-10-26 15:31:21', 'mdi-plus-circle-outline', '', '', '新增', '21', '/building/add', '28');
INSERT INTO `menu` VALUES ('30', '2020-10-26 15:32:29', '2020-10-26 15:32:29', 'mdi-grease-pencil', '', '', '编辑', '22', 'edit(\'/building/edit\')', '28');
INSERT INTO `menu` VALUES ('31', '2020-10-26 15:33:16', '2020-10-26 15:33:16', 'mdi-close', '', '', '删除', '23', 'del(\'/building/delete\')', '28');
INSERT INTO `menu` VALUES ('32', '2020-10-26 16:13:20', '2020-10-30 09:07:23', 'mdi-account', '', '', '学生管理', '0', '/stu/list', '69');
INSERT INTO `menu` VALUES ('33', '2020-10-26 16:39:38', '2020-10-30 09:11:19', 'mdi-worker', '', '', '维修工维护', '0', '/emp/list', '70');
INSERT INTO `menu` VALUES ('36', '2020-10-26 16:52:05', '2020-10-30 09:05:57', 'mdi-home-outline', '', '', '宿舍管理', '24', '/dormitory/list', '68');
INSERT INTO `menu` VALUES ('37', '2020-10-26 17:06:17', '2020-10-26 17:06:17', 'mdi-account', '', '', '增加', '0', '/stu/add', '32');
INSERT INTO `menu` VALUES ('38', '2020-10-26 17:27:20', '2020-10-26 17:27:20', 'mdi-account-alert', '', '', '删除', '0', 'del(\'/stu/delete\')', '32');
INSERT INTO `menu` VALUES ('39', '2020-10-26 17:27:49', '2020-10-26 17:27:49', 'mdi-account-convert', '', '', '修改', '0', 'edit(\'/stu/edit\')', '32');
INSERT INTO `menu` VALUES ('40', '2020-10-26 17:31:18', '2020-10-26 17:35:39', 'mdi-message-processing', '', '', '维修工添加', '0', '/emp/add', '33');
INSERT INTO `menu` VALUES ('41', '2020-10-26 17:38:45', '2020-10-26 18:02:34', 'mdi-account-plus', '', '', '添加', '0', '/dormitory/add', '36');
INSERT INTO `menu` VALUES ('42', '2020-10-26 18:12:34', '2020-10-29 09:01:20', 'mdi-chart-bar', '', '', '统计', '25', '/statistics/statistics', '2');
INSERT INTO `menu` VALUES ('43', '2020-10-26 18:15:52', '2020-10-26 18:36:50', 'mdi-backspace', '', '', '删除', '0', 'del(\'/dormitory/delete\')', '36');
INSERT INTO `menu` VALUES ('44', '2020-10-26 18:38:13', '2020-10-26 18:38:13', 'mdi-content-duplicate', '', '', '编辑', '0', 'edit(\'/dormitory/edit\')', '36');
INSERT INTO `menu` VALUES ('45', '2020-10-27 10:35:25', '2020-10-30 09:07:13', 'mdi-account-settings-variant', '', '', '辅导员管理', '0', '/coach/list', '69');
INSERT INTO `menu` VALUES ('46', '2020-10-27 13:07:26', '2020-10-27 13:12:18', 'mdi-close-circle-outline', '', '', '维修工删除', '0', 'del(\'/emp/delete\')', '33');
INSERT INTO `menu` VALUES ('49', '2020-10-27 13:14:20', '2020-10-27 13:28:34', 'mdi-arrow-down-bold', '', '', '维修工修改', '0', 'edit(\'/emp/edit\')', '33');
INSERT INTO `menu` VALUES ('51', '2020-10-27 15:09:47', '2020-11-10 18:14:35', 'mdi-worker', '', '', '增加', '0', '/coach/add', '45');
INSERT INTO `menu` VALUES ('52', '2020-10-27 16:00:25', '2020-10-30 09:10:26', 'mdi-android-head', '', '', '维修管理', '0', '/req/list', '70');
INSERT INTO `menu` VALUES ('55', '2020-10-27 16:24:36', '2020-10-27 16:24:36', 'mdi-android', '', '', '维修上报', '0', '/req/add', '52');
INSERT INTO `menu` VALUES ('56', '2020-10-27 17:12:07', '2020-10-27 17:12:07', 'mdi-alert-circle', '', '', '撤销上报', '0', 'del(\'/req/delete\')', '52');
INSERT INTO `menu` VALUES ('57', '2020-10-27 17:13:00', '2020-10-27 17:13:00', 'mdi-android-head', '', '', '修改', '0', 'edit(\'/req/edit\')', '52');
INSERT INTO `menu` VALUES ('58', '2020-10-27 17:36:04', '2020-10-27 18:26:52', 'mdi-border-color', '', '', '编辑', '0', 'edit(\'/coach/edit\')', '45');
INSERT INTO `menu` VALUES ('59', '2020-10-27 17:38:52', '2020-10-27 18:26:11', 'mdi-window-close', '', '', '删除', '0', 'del(\'/coach/delete\')', '45');
INSERT INTO `menu` VALUES ('64', '2020-10-28 16:34:30', '2020-10-30 09:11:33', 'mdi-arrow-collapse-up', '', '', '维修内容', '0', '/work/list', '70');
INSERT INTO `menu` VALUES ('65', '2020-10-28 16:46:21', '2020-10-28 17:36:12', 'mdi-autorenew', '', '', '维修完成', '0', 'updateWork(\'/work/maintenance\')', '64');
INSERT INTO `menu` VALUES ('66', '2020-10-29 12:12:45', '2020-10-29 12:19:20', 'mdi-arrow-bottom-right', '', '', '管理员分配', '0', 'edit(\'/req/repairs\')', '52');
INSERT INTO `menu` VALUES ('68', '2020-10-30 09:03:53', '2020-10-30 09:12:24', 'mdi-bank', '', '', '校园设置', '0', '', null);
INSERT INTO `menu` VALUES ('69', '2020-10-30 09:06:52', '2020-10-30 09:06:52', 'mdi-account-multiple', '', '', '师生设置', '0', '', null);
INSERT INTO `menu` VALUES ('70', '2020-10-30 09:10:05', '2020-10-30 09:10:05', 'mdi-wrench', '', '', '维修设置', '0', '', null);
INSERT INTO `menu` VALUES ('71', '2020-10-30 17:51:55', '2020-10-30 17:51:55', 'mdi-xmpp', '', '', '上传图片2', '0', '/upload/upload_photo', '52');

-- ----------------------------
-- Table structure for `operater_log`
-- ----------------------------
DROP TABLE IF EXISTS `operater_log`;
CREATE TABLE `operater_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `operator` varchar(18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operater_log
-- ----------------------------

-- ----------------------------
-- Table structure for `order_auth`
-- ----------------------------
DROP TABLE IF EXISTS `order_auth`;
CREATE TABLE `order_auth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `mac` varchar(32) DEFAULT NULL,
  `order_sn` varchar(18) NOT NULL,
  `phone` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_auth
-- ----------------------------

-- ----------------------------
-- Table structure for `repairs`
-- ----------------------------
DROP TABLE IF EXISTS `repairs`;
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repairs
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
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

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '2021-03-15 13:16:38', '2021-05-16 14:24:01', '超级管理员', '超级管理员拥有最高权限。', '2', '1');
INSERT INTO `role` VALUES ('2', '2020-03-15 13:18:57', '2021-03-12 20:01:50', '普通管理员', '普通管理员只有部分权限', '2', '1');
INSERT INTO `role` VALUES ('9', '2020-10-28 16:51:47', '2020-10-30 17:54:09', '维修工', '', '0', '1');
INSERT INTO `role` VALUES ('10', '2020-10-28 16:52:15', '2020-10-30 17:54:18', '学生', '', '1', '1');

-- ----------------------------
-- Table structure for `role_authorities`
-- ----------------------------
DROP TABLE IF EXISTS `role_authorities`;
CREATE TABLE `role_authorities` (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  KEY `FKtl0ns8c0yk51fbpjfh8kxfjag` (`authorities_id`),
  KEY `FK8dv2uo3imjpm4dmk7pge9v2vo` (`role_id`),
  CONSTRAINT `FK8dv2uo3imjpm4dmk7pge9v2vo` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKtl0ns8c0yk51fbpjfh8kxfjag` FOREIGN KEY (`authorities_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_authorities
-- ----------------------------
INSERT INTO `role_authorities` VALUES ('9', '70');
INSERT INTO `role_authorities` VALUES ('9', '64');
INSERT INTO `role_authorities` VALUES ('9', '19');
INSERT INTO `role_authorities` VALUES ('9', '65');
INSERT INTO `role_authorities` VALUES ('10', '70');
INSERT INTO `role_authorities` VALUES ('10', '52');
INSERT INTO `role_authorities` VALUES ('10', '55');
INSERT INTO `role_authorities` VALUES ('10', '57');
INSERT INTO `role_authorities` VALUES ('10', '71');
INSERT INTO `role_authorities` VALUES ('2', '2');
INSERT INTO `role_authorities` VALUES ('2', '20');
INSERT INTO `role_authorities` VALUES ('2', '21');
INSERT INTO `role_authorities` VALUES ('2', '22');
INSERT INTO `role_authorities` VALUES ('2', '23');
INSERT INTO `role_authorities` VALUES ('2', '24');
INSERT INTO `role_authorities` VALUES ('2', '25');
INSERT INTO `role_authorities` VALUES ('2', '26');
INSERT INTO `role_authorities` VALUES ('2', '42');
INSERT INTO `role_authorities` VALUES ('2', '68');
INSERT INTO `role_authorities` VALUES ('2', '28');
INSERT INTO `role_authorities` VALUES ('2', '29');
INSERT INTO `role_authorities` VALUES ('2', '30');
INSERT INTO `role_authorities` VALUES ('2', '31');
INSERT INTO `role_authorities` VALUES ('2', '36');
INSERT INTO `role_authorities` VALUES ('2', '41');
INSERT INTO `role_authorities` VALUES ('2', '43');
INSERT INTO `role_authorities` VALUES ('2', '44');
INSERT INTO `role_authorities` VALUES ('2', '69');
INSERT INTO `role_authorities` VALUES ('2', '32');
INSERT INTO `role_authorities` VALUES ('2', '37');
INSERT INTO `role_authorities` VALUES ('2', '38');
INSERT INTO `role_authorities` VALUES ('2', '39');
INSERT INTO `role_authorities` VALUES ('2', '45');
INSERT INTO `role_authorities` VALUES ('2', '51');
INSERT INTO `role_authorities` VALUES ('2', '58');
INSERT INTO `role_authorities` VALUES ('2', '59');
INSERT INTO `role_authorities` VALUES ('2', '70');
INSERT INTO `role_authorities` VALUES ('2', '33');
INSERT INTO `role_authorities` VALUES ('2', '40');
INSERT INTO `role_authorities` VALUES ('2', '46');
INSERT INTO `role_authorities` VALUES ('2', '49');
INSERT INTO `role_authorities` VALUES ('2', '52');
INSERT INTO `role_authorities` VALUES ('2', '56');
INSERT INTO `role_authorities` VALUES ('2', '57');
INSERT INTO `role_authorities` VALUES ('2', '66');
INSERT INTO `role_authorities` VALUES ('2', '64');
INSERT INTO `role_authorities` VALUES ('2', '19');
INSERT INTO `role_authorities` VALUES ('2', '65');
INSERT INTO `role_authorities` VALUES ('1', '2');
INSERT INTO `role_authorities` VALUES ('1', '3');
INSERT INTO `role_authorities` VALUES ('1', '5');
INSERT INTO `role_authorities` VALUES ('1', '8');
INSERT INTO `role_authorities` VALUES ('1', '9');
INSERT INTO `role_authorities` VALUES ('1', '7');
INSERT INTO `role_authorities` VALUES ('1', '10');
INSERT INTO `role_authorities` VALUES ('1', '11');
INSERT INTO `role_authorities` VALUES ('1', '12');
INSERT INTO `role_authorities` VALUES ('1', '13');
INSERT INTO `role_authorities` VALUES ('1', '14');
INSERT INTO `role_authorities` VALUES ('1', '15');
INSERT INTO `role_authorities` VALUES ('1', '16');
INSERT INTO `role_authorities` VALUES ('1', '20');
INSERT INTO `role_authorities` VALUES ('1', '21');
INSERT INTO `role_authorities` VALUES ('1', '22');
INSERT INTO `role_authorities` VALUES ('1', '23');
INSERT INTO `role_authorities` VALUES ('1', '24');
INSERT INTO `role_authorities` VALUES ('1', '25');
INSERT INTO `role_authorities` VALUES ('1', '26');
INSERT INTO `role_authorities` VALUES ('1', '42');
INSERT INTO `role_authorities` VALUES ('1', '68');
INSERT INTO `role_authorities` VALUES ('1', '28');
INSERT INTO `role_authorities` VALUES ('1', '29');
INSERT INTO `role_authorities` VALUES ('1', '30');
INSERT INTO `role_authorities` VALUES ('1', '31');
INSERT INTO `role_authorities` VALUES ('1', '36');
INSERT INTO `role_authorities` VALUES ('1', '41');
INSERT INTO `role_authorities` VALUES ('1', '43');
INSERT INTO `role_authorities` VALUES ('1', '44');
INSERT INTO `role_authorities` VALUES ('1', '69');
INSERT INTO `role_authorities` VALUES ('1', '32');
INSERT INTO `role_authorities` VALUES ('1', '37');
INSERT INTO `role_authorities` VALUES ('1', '38');
INSERT INTO `role_authorities` VALUES ('1', '39');
INSERT INTO `role_authorities` VALUES ('1', '45');
INSERT INTO `role_authorities` VALUES ('1', '51');
INSERT INTO `role_authorities` VALUES ('1', '58');
INSERT INTO `role_authorities` VALUES ('1', '59');
INSERT INTO `role_authorities` VALUES ('1', '70');
INSERT INTO `role_authorities` VALUES ('1', '33');
INSERT INTO `role_authorities` VALUES ('1', '40');
INSERT INTO `role_authorities` VALUES ('1', '46');
INSERT INTO `role_authorities` VALUES ('1', '49');
INSERT INTO `role_authorities` VALUES ('1', '52');
INSERT INTO `role_authorities` VALUES ('1', '55');
INSERT INTO `role_authorities` VALUES ('1', '56');
INSERT INTO `role_authorities` VALUES ('1', '57');
INSERT INTO `role_authorities` VALUES ('1', '66');
INSERT INTO `role_authorities` VALUES ('1', '71');
INSERT INTO `role_authorities` VALUES ('1', '64');
INSERT INTO `role_authorities` VALUES ('1', '19');
INSERT INTO `role_authorities` VALUES ('1', '65');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
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

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
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

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '2021-03-18 19:18:53', '2021-03-12 11:15:47', '1147746903@qq.com', '20210312/1615518945232.png', '18860165529', 'admin123', '1', '1', 'admin123', '1');
INSERT INTO `user` VALUES ('22', '2021-03-12 00:20:01', '2021-05-17 22:31:09', '1147746903@qq.com', '20210517/1621261866068.png', '18860165529', 'admin', '1', '1', 'admin', '2');
