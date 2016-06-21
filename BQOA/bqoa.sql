/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : bqoa

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2016-06-21 18:01:14
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_client
-- ----------------------------
INSERT INTO `sys_client` VALUES ('1', '江万东', '前卫西路', 'com', '养眼', '18314496694', '2016-06-15', '2016-06-18', '万东');
INSERT INTO `sys_client` VALUES ('2', '杨燕', '云南昆明打算看见！！克里斯丁', 'other', '啊', '18469144019', '2016-06-01', '2018-07-12', '燕');
INSERT INTO `sys_client` VALUES ('3', 'rg', 'sgd', 'person', 'dfg', 'dfg', '2016-06-17', '2016-06-22', null);
INSERT INTO `sys_client` VALUES ('4', '万东', '22', 'person', '呃呃呃', '是是是', '2016-06-08', '2016-06-18', null);

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
  `suggestions` varchar(1000) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_flswcl
-- ----------------------------
INSERT INTO `sys_flswcl` VALUES ('1', '江万东', '万东160621H', '2016年06月21日  下午 02:07', 'fewwe', 'fwf', 'wfw', 'fwfwe', 'fwf', 'wfwf', 'wefewfwef', '江万东', '22', '18314496694', null, 'dwadwa', '', '', 'E:\\Server\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/flsw/江万东/万东160621H_江万东.doc', '万东160621H_江万东.doc', '2016-06-21 14:08:00', '新建');

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
INSERT INTO `sys_role` VALUES ('1', '管理员', '2047', '0', '1', '2047', '1', '1', '1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(50) NOT NULL,
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
