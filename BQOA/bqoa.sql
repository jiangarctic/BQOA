/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : bqoa

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2016-06-24 17:57:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_client
-- ----------------------------
DROP TABLE IF EXISTS `sys_client`;
CREATE TABLE `sys_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientName` varchar(255) DEFAULT NULL,
  `clientAddress` varchar(255) DEFAULT NULL,
  `clientType` varchar(255) DEFAULT NULL,
  `clientContactor` varchar(255) DEFAULT NULL,
  `clientPhone` varchar(255) DEFAULT NULL,
  `commissionStart` varchar(255) DEFAULT NULL,
  `commissionEnd` varchar(255) DEFAULT NULL,
  `shortName` varchar(255) DEFAULT NULL,
  `clientEmail` varchar(255) DEFAULT NULL,
  `contactorDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_client
-- ----------------------------
INSERT INTO `sys_client` VALUES ('1', '安宁创佳房地产开发有限公司', '前卫西路', '企业', '养眼', '18314496694', '2016-06-15', '2016-06-18', '创佳', 'chuangjia@163.com', '经理');
INSERT INTO `sys_client` VALUES ('2', '安宁市住房和城乡建设局', '云南昆明打算看见！！克里斯丁', '机关', '啊', '18469144019', '2016-06-01', '2018-07-12', '安住', null, null);
INSERT INTO `sys_client` VALUES ('3', '北方夜视科技集团有限公司', 'sgd', '企业', 'dfg', '13888888888', '2016-06-17', '2016-06-22', '北视', null, null);
INSERT INTO `sys_client` VALUES ('4', '云南龙城世家物业服务有限公司', '昆明', '企业', '呃呃呃', '13888888888', '2016-06-08', '2016-06-18', '龙世', null, null);
INSERT INTO `sys_client` VALUES ('5', '呵呵', null, null, '江万东', '18314496694', null, null, '华盛顿', '373701119@qq.com', 'JAVA');

-- ----------------------------
-- Table structure for sys_flswcl
-- ----------------------------
DROP TABLE IF EXISTS `sys_flswcl`;
CREATE TABLE `sys_flswcl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientName` varchar(255) DEFAULT NULL,
  `reportNum` varchar(255) DEFAULT NULL,
  `inquireTime` varchar(50) DEFAULT NULL,
  `inquireType` varchar(100) DEFAULT NULL,
  `inquireer` varchar(100) DEFAULT NULL,
  `inquireerPhone` varchar(100) DEFAULT NULL,
  `inquireerEmail` varchar(100) DEFAULT NULL,
  `reportBrief` varchar(2000) DEFAULT NULL,
  `givenFiles` varchar(1000) DEFAULT NULL,
  `suggestions` varchar(2000) DEFAULT NULL,
  `worker` varchar(50) DEFAULT NULL,
  `workTime` varchar(20) DEFAULT NULL,
  `workerPhone` varchar(20) DEFAULT NULL,
  `approver` varchar(50) DEFAULT NULL,
  `resultFileName` varchar(500) DEFAULT NULL,
  `replyTime` varchar(20) DEFAULT NULL,
  `replyType` varchar(100) DEFAULT NULL,
  `genFileUrl` varchar(255) DEFAULT NULL,
  `genFileName` varchar(255) DEFAULT NULL,
  `genTime` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_flswcl
-- ----------------------------
INSERT INTO `sys_flswcl` VALUES ('51', '安宁创佳房地产开发有限公司', '创佳160623H', '2016年06月23日  下午 03:38', '面谈', '江万东', '18314496694', '373701119@qq.com', '大胜靠德奥斯卡的富兰克林省得放假\r\n爱上的咖啡是对方立刻', '达瓦的境况按揭房\r\n三款f法兰克\r\n按付款v我考虑\r\n', '安达卡夫卡我无法华为客服\r\n冯矿伟v开始看律师的 \r\n圣诞快乐都是废话胃口了\r\n首付款', '江万东', '3', '18314496694', '邵钧', '达瓦cqev\r\n分为服务吃v', '', '', 'E:\\Server\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/flsw/江万东/创佳160623H_江万东.doc', '创佳160623H_江万东.doc', '2016-06-23 15:39:49', '新建');
INSERT INTO `sys_flswcl` VALUES ('52', '云南龙城世家物业服务有限公司', '龙世160623H', '2016年06月23日  下午 03:43', '面谈', '万东', '18314496694', '373701119@qq.com', '达瓦vasd\'蓝山咖啡\r\n私搭乱建', '按时打卡积分4\r\n圣诞快乐就\r\n势大力沉', '撒打开了\r\n上档次的哇w\r\n是搜索v是vsdv是v\r\n的邓超是v', '江万东', '3', '18314496694', '邵钧', '擦萨斯\r\n\r\n上档次V领框架', '', '', 'E:\\Server\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/flsw/江万东/龙世160623H_江万东.doc', '龙世160623H_江万东.doc', '2016-06-23 15:44:25', '新建');
INSERT INTO `sys_flswcl` VALUES ('53', '安宁创佳房地产开发有限公司', '创佳160623H', '2016年06月23日  下午 06:22', '面谈', '养眼  经理', '18314496694', 'chuangjia@163.com', 'jadh \r\ndas\r\ndasd', 'adsfavwg\r\nfdcqv\r\nvw', 'fcvwev', '江万东', '2', '18314496694', '邵钧', 'adwcsdv\r\nvsdvsdv', '', '', 'E:\\Server\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/flsw/江万东/创佳160623H_江万东_1466677372948.doc', '创佳160623H_江万东_1466677372948.doc', '2016-06-23 18:22:52', '新建');
INSERT INTO `sys_flswcl` VALUES ('54', '呵呵', '华盛顿160234H', '2016年06月23日  下午 06:35', '面谈', '江万东_JAVA_ajsdj', '18314496694', '373701119@qq.com', 'awddaw', 'daw', 'awd', '江万东', '2', '18314496694', '邵钧', 'adwwd', '', '', 'E:\\Server\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/flsw/江万东/华盛顿160234H_江万东_1466678184809.doc', '华盛顿160234H_江万东_1466678184809.doc', '2016-06-23 18:36:24', '新建');
INSERT INTO `sys_flswcl` VALUES ('55', '北方夜视科技集团有限公司', '北视160623H', '2016年06月23日  下午 06:37', '面谈', 'dfg  ', '13888888888', 'dawd@aweda', 'awdwa', 'dawdwa', 'dwada', '江万东', '3', '18314496694', '邵钧', 'awd', '', '', 'E:\\Server\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/flsw/江万东/北视160623H_江万东_1466678266343.doc', '北视160623H_江万东_1466678266343.doc', '2016-06-23 18:37:46', '新建');

-- ----------------------------
-- Table structure for sys_gl_qx
-- ----------------------------
DROP TABLE IF EXISTS `sys_gl_qx`;
CREATE TABLE `sys_gl_qx` (
  `GL_ID` varchar(255) NOT NULL,
  `ROLE_ID` varchar(255) DEFAULT NULL,
  `FX_QX` int(11) DEFAULT NULL,
  `FW_QX` int(11) DEFAULT NULL,
  `QX1` int(11) DEFAULT NULL,
  `QX2` int(11) DEFAULT NULL,
  `QX3` int(11) DEFAULT NULL,
  `QX4` int(11) DEFAULT NULL,
  PRIMARY KEY (`GL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_gl_qx
-- ----------------------------
INSERT INTO `sys_gl_qx` VALUES ('1', '1', '1', '1', '11', '1', '1', '1');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `MENU_ID` int(255) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(255) DEFAULT NULL,
  `MENU_ORDER` varchar(255) DEFAULT NULL,
  `MENU_DESC` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '首页', 'to_home.do', '0', '1', 'sidebar.nav.element.ELEMENTS');
INSERT INTO `sys_menu` VALUES ('2', '工作台', '#', '1', '1', 'sidebar.nav.element.BUTTON');
INSERT INTO `sys_menu` VALUES ('3', '日程', '#', '1', '2', 'sidebar.nav.element.NOTIFICATION');
INSERT INTO `sys_menu` VALUES ('4', '办公', 'reportSelectionList.do', '0', '2', null);
INSERT INTO `sys_menu` VALUES ('5', '生成报告', 'reportSelectionList.do', '4', '1', null);
INSERT INTO `sys_menu` VALUES ('6', '通讯录', '#', '1', '3', null);
INSERT INTO `sys_menu` VALUES ('7', '客户关系', 'CRM_ClientList.do', '0', '3', null);
INSERT INTO `sys_menu` VALUES ('8', '客户列表', 'CRM_ClientList.do', '7', '1', null);
INSERT INTO `sys_menu` VALUES ('9', '个人事项', '#', '1', '4', null);
INSERT INTO `sys_menu` VALUES ('10', '法律事务报表', 'flswclReportList.do', '4', '2', null);
INSERT INTO `sys_menu` VALUES ('11', '用户管理', 'userManage.do', '1', '5', null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(255) DEFAULT NULL,
  `C_AUTH` varchar(255) DEFAULT NULL,
  `R_AUTH` varchar(255) DEFAULT NULL,
  `U_AUTH` varchar(255) DEFAULT NULL,
  `D_AUTH` varchar(255) DEFAULT NULL,
  `AUTH_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', '4095', '0', '1', '4095', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('2', '合伙人律师', '4095', '0', '1', '4095', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('3', '助理律师', '4095', '0', '1', '4095', '1', '1', '1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(50) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `NAME` varchar(25) DEFAULT NULL,
  `ROLE_ID` varchar(255) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(255) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `NUMBER` varchar(255) DEFAULT NULL,
  `PHONE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'd10baec1db2eb3e55bffc491b2933f003f719d8d', '江万东', '1', null, null, '0', null, '373701119@qq.com', null, '18314496694');
INSERT INTO `sys_user` VALUES ('2', 'admin1', 'sdajkdaksjdewuf', '江万东2', '1', null, null, '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('3', 'admin2', 'aklfjqieojf', '江万东3', '1', null, null, '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('4', 'admin3', 'adcwevwev', '江万东4', '1', null, null, '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('5', 'admin4', 'dasfqcqsd', '江万东5', '1', null, null, '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('6', 'admin5', 'ewfwf', 'jwd6', '1', null, null, '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('7', 'admin6', 'eafeqf', 'jwd7', '1', null, null, '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('8', 'admin7', 'kldfh qe', 'jwd8', '1', null, null, '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('9', 'admin8', 'akfj', 'jwd9', '1', null, null, '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('10', 'admin9', 'sdfkh', 'jwd10', '1', null, null, '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('11', 'admin10', 'kdfj', 'jwd11', '1', null, null, '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('12', 'admin12', 'sadfjk', 'jwd12', '1', null, null, '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('13', 'admin13', 'aflkjq', 'jwd13', '1', null, null, '0', null, null, null, null);

-- ----------------------------
-- Table structure for sys_user_qx
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_qx`;
CREATE TABLE `sys_user_qx` (
  `U_ID` varchar(100) NOT NULL,
  `C1` int(10) DEFAULT NULL,
  `C2` int(10) DEFAULT NULL,
  `C3` int(10) DEFAULT NULL,
  `C4` int(10) DEFAULT NULL,
  `Q1` int(10) DEFAULT NULL,
  `Q2` int(10) DEFAULT NULL,
  `Q3` int(10) DEFAULT NULL,
  `Q4` int(10) DEFAULT NULL,
  PRIMARY KEY (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_qx
-- ----------------------------
INSERT INTO `sys_user_qx` VALUES ('1', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('2', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `sys_user_qx` VALUES ('55896f5ce3c0494fa6850775a4e29ff6', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('68f23fc0caee475bae8d52244dea8444', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('7dfd8d1f7b6245d283217b7e63eec9b2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('ac66961adaa2426da4470c72ffeec117', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('b0c77c29dfa140dc9b14a29c056f824f', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('e74f713314154c35bd7fc98897859fe3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('f944a9df72634249bbcb8cb73b0c9b86', '0', '0', '0', '0', '0', '0', '0', '0');
