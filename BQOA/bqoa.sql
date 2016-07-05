/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : bqoa

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2016-07-05 17:04:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for flswcl_status
-- ----------------------------
DROP TABLE IF EXISTS `flswcl_status`;
CREATE TABLE `flswcl_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flswId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `genFileUrl` varchar(255) DEFAULT NULL,
  `genFileName` varchar(255) DEFAULT NULL,
  `genTime` varchar(50) DEFAULT NULL,
  `handler` varchar(50) DEFAULT NULL,
  `approver` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flswcl_status
-- ----------------------------
INSERT INTO `flswcl_status` VALUES ('41', '90', '杨燕新建', 'D:\\JBoss\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/upload//flsw/杨燕/创佳160629H_杨燕_1467211962284.doc', '创佳160629H_杨燕_1467211962284.doc', '2016-06-29 22:52:42', '杨燕', null);
INSERT INTO `flswcl_status` VALUES ('42', '90', '邵钧已修改,最终', 'D:\\JBoss\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/upload//flsw/final/创佳160629H_杨燕_邵钧_20160629225623.doc', '创佳160629H_杨燕_邵钧_20160629225623.doc', '2016-06-29 22:56:23', '邵钧', '邵钧');
INSERT INTO `flswcl_status` VALUES ('43', '91', '邵钧新建', 'D:\\JBoss\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/upload//flsw/邵钧/创佳160629H_邵钧_1467212500604.doc', '创佳160629H_邵钧_1467212500604.doc', '2016-06-29 23:01:40', '邵钧', null);
INSERT INTO `flswcl_status` VALUES ('44', '92', '江万东新建', 'D:\\JBoss\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/upload//flsw/江万东/创佳160629H_江万东_1467212621883.doc', '创佳160629H_江万东_1467212621883.doc', '2016-06-29 23:03:41', '江万东', null);
INSERT INTO `flswcl_status` VALUES ('45', '92', '邵钧已修改,最终', 'D:\\JBoss\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/upload//flsw/final/创佳160629H_江万东_邵钧_20160629230701.doc', '创佳160629H_江万东_邵钧_20160629230701.doc', '2016-06-29 23:07:01', '邵钧', '邵钧');
INSERT INTO `flswcl_status` VALUES ('46', '91', '邵钧已通过,最终', '', '', '2016-07-04 11:08:40', '邵钧', '邵钧');
INSERT INTO `flswcl_status` VALUES ('47', '93', '江万东新建', 'E:\\Server\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/upload/flsw/江万东/创佳160704H_江万东_1467602920857.doc', '创佳160704H_江万东_1467602920857.doc', '2016-07-04 11:28:40', '江万东', null);
INSERT INTO `flswcl_status` VALUES ('48', '94', '江万东新建', 'E:\\Server\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/upload/flsw/江万东/创佳160704H_江万东_1467603057738.doc', '创佳160704H_江万东_1467603057738.doc', '2016-07-04 11:30:57', '江万东', null);
INSERT INTO `flswcl_status` VALUES ('49', '95', '江万东新建', 'E:\\Server\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/upload/flsw/江万东/创佳160704H_江万东_1467603422492.doc', '创佳160704H_江万东_1467603422492.doc', '2016-07-04 11:37:02', '江万东', null);

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
  `genFileUrl` varchar(500) DEFAULT NULL,
  `genFileName` varchar(500) DEFAULT NULL,
  `genTime` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `nextApprover` varchar(50) DEFAULT NULL,
  `finalStatus` varchar(5) DEFAULT NULL,
  `finalUpdateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_flswcl
-- ----------------------------
INSERT INTO `sys_flswcl` VALUES ('90', '安宁创佳房地产开发有限公司', '创佳160629H', '2016年06月29日  下午 10:51', '面谈', '养眼  经理', '18314496694', 'chuangjia@163.com', 'wqeqweqww\r\nasd', 'eqewqe\r\nasda', 'qweqweqwsd', '杨燕', '2', '', '邵钧', 'ddwwqd\r\nad', '', '', 'D:\\JBoss\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/upload//flsw/final/创佳160629H_杨燕_邵钧_20160629225623.doc', '创佳160629H_杨燕_邵钧_20160629225623.doc', '2016-06-29 22:52:42', '邵钧已修改,最终', 'god', '0', null);
INSERT INTO `sys_flswcl` VALUES ('91', '安宁创佳房地产开发有限公司', '创佳160629H', '2016年06月29日  下午 11:01', '面谈', '养眼  经理', '18314496694', 'chuangjia@163.com', 'asd', 'asd', 'asd', '邵钧', '3', '', '邵钧', 'dasdaw', '', '', 'D:\\JBoss\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/upload//flsw/邵钧/创佳160629H_邵钧_1467212500604.doc', '创佳160629H_邵钧_1467212500604.doc', '2016-06-29 23:01:40', '邵钧已通过,最终', 'god', '0', null);
INSERT INTO `sys_flswcl` VALUES ('92', '安宁创佳房地产开发有限公司', '创佳160629H', '2016年06月29日  下午 11:03', '面谈', '养眼  经理', '18314496694', 'chuangjia@163.com', 'asd', 'asdd', 'sd', '江万东', '3', '18314496694', '邵钧', 'dwa', '', '', 'D:\\JBoss\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/upload//flsw/final/创佳160629H_江万东_邵钧_20160629230701.doc', '创佳160629H_江万东_邵钧_20160629230701.doc', '2016-06-29 23:03:41', '邵钧已修改,最终', 'god', '0', null);
INSERT INTO `sys_flswcl` VALUES ('93', '安宁创佳房地产开发有限公司', '创佳160704H', '2016年07月04日  上午 11:28', '面谈', '养眼  经理', '18314496694', 'chuangjia@163.com', 'asc', 'cas', 'acc', '江万东', '2', '18314496694', '邵钧', 'dwa', 'wad', 'wad', 'E:\\Server\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/upload/flsw/江万东/创佳160704H_江万东_1467602920857.doc', '创佳160704H_江万东_1467602920857.doc', '2016-07-04 11:28:40', '新建', '邵钧', '0', null);
INSERT INTO `sys_flswcl` VALUES ('94', '安宁创佳房地产开发有限公司', '创佳160704H', '2016年07月04日  上午 11:30', '面谈', '养眼  经理', '18314496694', 'chuangjia@163.com', 'awd', 'awd', 'dwa', '江万东', '3', '18314496694', '邵钧', 'adw', '', '', 'E:\\Server\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/upload/flsw/江万东/创佳160704H_江万东_1467603057738.doc', '创佳160704H_江万东_1467603057738.doc', '2016-07-04 11:30:57', '新建', '邵钧', '1', '2016-07-04 00:00:00');
INSERT INTO `sys_flswcl` VALUES ('95', '安宁创佳房地产开发有限公司', '创佳160704H', '2016年07月04日  上午 11:36', '面谈', '养眼  经理', '18314496694', 'chuangjia@163.com', 'awd', 'wad', 'wad', '江万东', '3', '18314496694', '邵钧', 'wda', '', '', 'E:\\Server\\wildfly-8.2.1.Final\\standalone\\deployments\\bqoa.war/upload/flsw/江万东/创佳160704H_江万东_1467603422492.doc', '创佳160704H_江万东_1467603422492.doc', '2016-07-04 11:37:02', '新建', '邵钧', '1', '2016-07-04 11:37:02');

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
INSERT INTO `sys_menu` VALUES ('2', '日程', '#', '1', '1', 'sidebar.nav.element.NOTIFICATION');
INSERT INTO `sys_menu` VALUES ('3', '办公', 'reportSelectionList.do', '0', '2', null);
INSERT INTO `sys_menu` VALUES ('4', '生成报告', 'reportSelectionList.do', '3', '1', null);
INSERT INTO `sys_menu` VALUES ('5', '客户关系', 'CRM_ClientList.do', '0', '3', null);
INSERT INTO `sys_menu` VALUES ('6', '客户列表', 'CRM_ClientList.do', '5', '1', null);
INSERT INTO `sys_menu` VALUES ('7', '法律事务报表', 'flswclReportList_me.do', '3', '2', null);
INSERT INTO `sys_menu` VALUES ('8', '用户管理', 'userManage.do', '1', '2', null);
INSERT INTO `sys_menu` VALUES ('9', '案件管理', '#', '0', '4', null);
INSERT INTO `sys_menu` VALUES ('10', '诉讼案件管理', 'susongCaseList.do', '9', '1', null);
INSERT INTO `sys_menu` VALUES ('11', '归档管理', 'flswclFiling.do', '0', '5', null);
INSERT INTO `sys_menu` VALUES ('12', '卷宗管理', '#', '11', '1', null);
INSERT INTO `sys_menu` VALUES ('13', '法律事务文件归档', 'flswclFiling.do', '11', '2', null);
INSERT INTO `sys_menu` VALUES ('14', '工作统计', '#', '0', '6', null);
INSERT INTO `sys_menu` VALUES ('15', '团队日常', '#', '14', '1', null);
INSERT INTO `sys_menu` VALUES ('16', '团队报账记录', '#', '14', '2', null);
INSERT INTO `sys_menu` VALUES ('17', '会议记录', '#', '14', '3', null);
INSERT INTO `sys_menu` VALUES ('18', '团队年报', '#', '0', '7', null);
INSERT INTO `sys_menu` VALUES ('19', '非诉案件管理', '#', '9', '2', null);

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
INSERT INTO `sys_role` VALUES ('1', '管理员', '1048575', '0', '1', '1048575', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('2', '合伙人律师', '1048575', '0', '1', '1048575', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('3', '助理律师', '14495', '0', '1', '14495', '1', '1', '1');

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
INSERT INTO `sys_user` VALUES ('1', 'admin', '4da2f9956f7daffb72444c5f4dd16eec563d4b20', '江万东', '1', null, null, '0', null, '373701119@qq.com', null, '18314496694');
INSERT INTO `sys_user` VALUES ('56d52224772c46dfa52c149f86b8d074', 'xubo', '538a610be7c3a1bdd16be1e29fd7b5db86be00a5', '徐博', '1', null, null, '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('c3aeb6fa85c64cab99f7f68af8f4ec2b', 'shaojun', '954a101e20a18aebebaa1b0cb4169bada5301966', '邵钧', '1', null, null, '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('96797ba3ee104d6aa828f815b854944c', 'yangyan', '332c32befcedc5d80b3003466b5ffb8b28b7d65d', '杨燕', '3', null, null, '0', null, null, null, null);

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
