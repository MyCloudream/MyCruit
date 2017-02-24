/*
Navicat MySQL Data Transfer

Source Server         : 本地Mysql
Source Server Version : 50548
Source Host           : 127.0.0.1:3306
Source Database       : mycruit

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2017-02-24 18:02:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `content` text,
  `type` char(1) DEFAULT '0',
  `subdate` date DEFAULT NULL,
  `upddate` date DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES ('51', '全网公告', '<h1 style=\"margin: 0px 0px 20px; padding: 0px 4px 0px 0px; text-align: left; font-size: 32px; font-weight: bold; border-bottom-color: rgb(204, 204, 204); border-bottom-width: 2px; border-bottom-style: solid;\" label=\"标题居中\"><span style=\"font-size: 24px;\">公告</span></h1><p style=\"text-indent:32px;line-height:27px\"><span style=\"font-family:宋体\">这里是公告区域</span></p><p style=\"text-indent:32px;line-height:27px\"><span style=\"font-family:宋体\"><span style=\"font-family: 宋体; text-indent: 32px;\"><span style=\"font-family: 宋体; text-indent: 32px;\">这里是公告区域</span></span></span></p><p style=\"text-indent:32px;line-height:27px\"><span style=\"font-family:宋体\"><span style=\"font-family: 宋体; text-indent: 32px;\"><span style=\"font-family: 宋体; text-indent: 32px;\">这里是公告区域</span></span></span></p><p style=\"text-indent:32px;line-height:27px\"><span style=\"font-family:宋体\"><span style=\"font-family: 宋体; text-indent: 32px;\"><span style=\"font-family: 宋体; text-indent: 32px;\">这里是公告区域</span></span></span></p><p style=\"text-indent:32px;line-height:27px\"><span style=\"font-family:宋体\"><span style=\"font-family: 宋体; text-indent: 32px;\"><span style=\"font-family: 宋体; text-indent: 32px;\">这里是公告区域</span></span></span></p><p style=\"text-indent:32px;line-height:27px\">。。。<br/></p><p style=\"text-indent:32px;line-height:27px\"><br/></p><hr/><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(90, 90, 90); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\" dir=\"ltr\"><span style=\"font-size: 16px;\"><span style=\"font-family: sans-serif;\">优才学院简介</span></span></p><p>优才学院，旨在培养优秀的互联网核心岗位人才，以互联网和移动互联网研发人才需求为切入点，</p><p>通过扎实知识基础、锻炼专业技能、提升职业素养，全面提升人才的核心竞争力。</p><p>优才学院集结业界最优秀的讲师和大牛顾问，倾心设计了横跨初、中、高级的全套课程体系，<br/></p><p>针对即将进入职场的学生和在职提升人群及互联网企业，提供一流的O2O教育和人才服务！</p><p>优才，构建以教育为核心的互联网人才生态！<br/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(90, 90, 90); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\" dir=\"ltr\"><span style=\"font-size: 12px;\"></span><br/></p>', null, '2015-04-22', '2017-02-24', null);

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `link` varchar(100) DEFAULT '',
  `status` char(1) DEFAULT 'Y',
  `orderby` int(11) DEFAULT '0',
  `level` char(1) DEFAULT NULL,
  `superid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '权限管理', 'Authorization', 'Y', '1', '1', '0');
INSERT INTO `resource` VALUES ('2', '角色管理', 'RoleManager', 'Y', '1', '2', '1');
INSERT INTO `resource` VALUES ('3', '资源管理', 'ResourceManager', 'Y', '2', '2', '1');
INSERT INTO `resource` VALUES ('6', '添加角色', 'RoleManagerAdd', 'Y', '1', '3', '2');
INSERT INTO `resource` VALUES ('7', '角色修改', 'RoleManagerUpd', 'Y', '2', '3', '2');
INSERT INTO `resource` VALUES ('8', '删除', 'RoleManagerDel', 'Y', '3', '3', '2');
INSERT INTO `resource` VALUES ('9', '设置权限', 'RoleManagerUpdResources', 'Y', '4', '3', '2');
INSERT INTO `resource` VALUES ('10', '添加', 'ResourceManagerAdd', 'Y', '1', '3', '3');
INSERT INTO `resource` VALUES ('11', '修改', 'ResourceManagerUpd', 'Y', '2', '3', '3');
INSERT INTO `resource` VALUES ('12', '删除', 'ResourceManagerDel', 'Y', '3', '3', '3');
INSERT INTO `resource` VALUES ('22', '信息管理', 'Information', 'Y', '2', '1', '0');
INSERT INTO `resource` VALUES ('23', '公告信息', 'AnnouncementManager', 'Y', '1', '2', '22');
INSERT INTO `resource` VALUES ('25', '添加', 'AnnouncementManagerAdd', 'Y', '1', '3', '23');
INSERT INTO `resource` VALUES ('26', '修改', 'AnnouncementManagerUpd', 'Y', '2', '3', '23');
INSERT INTO `resource` VALUES ('29', '删除', 'AnnouncementManagerDel', 'Y', '3', '3', '23');
INSERT INTO `resource` VALUES ('81', '招生管理', 'RecruitManager', 'Y', '8', '1', '0');
INSERT INTO `resource` VALUES ('82', '学生管理', 'StudentManager', 'Y', '1', '2', '81');
INSERT INTO `resource` VALUES ('83', '兼职介绍管理', 'PartTimersManager', 'Y', '2', '2', '81');
INSERT INTO `resource` VALUES ('84', '添加学生', 'StudentManagerAdd', 'Y', '1', '3', '82');
INSERT INTO `resource` VALUES ('85', '修改学生', 'StudentManagerUpd', 'Y', '2', '3', '82');
INSERT INTO `resource` VALUES ('86', '删除学生', 'StudentManagerDel', 'Y', '3', '3', '82');
INSERT INTO `resource` VALUES ('87', '添加', 'PartTimersManagerAdd', 'Y', '1', '3', '83');
INSERT INTO `resource` VALUES ('88', '修改', 'PartTimersManagerUpd', 'Y', '2', '3', '83');
INSERT INTO `resource` VALUES ('89', '删除', 'PartTimersManagerDel', 'Y', '3', '3', '83');
INSERT INTO `resource` VALUES ('90', '修改密码', 'PartTimersManagerUpdPassword', 'Y', '4', '3', '83');
INSERT INTO `resource` VALUES ('91', '启用禁用', 'PartTimersManagerUpdStatus', 'Y', '5', '3', '83');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT '' COMMENT '名称',
  `groups` char(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员', '1');
INSERT INTO `role` VALUES ('22', '介绍人', '2');
INSERT INTO `role` VALUES ('23', '兼职介绍人', '2');

-- ----------------------------
-- Table structure for role_resource
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `resourceid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4572 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES ('4312', '21', '1');
INSERT INTO `role_resource` VALUES ('4313', '21', '5');
INSERT INTO `role_resource` VALUES ('4314', '21', '16');
INSERT INTO `role_resource` VALUES ('4315', '21', '17');
INSERT INTO `role_resource` VALUES ('4316', '21', '18');
INSERT INTO `role_resource` VALUES ('4317', '21', '19');
INSERT INTO `role_resource` VALUES ('4318', '21', '20');
INSERT INTO `role_resource` VALUES ('4319', '21', '21');
INSERT INTO `role_resource` VALUES ('4371', '2', '30');
INSERT INTO `role_resource` VALUES ('4372', '2', '35');
INSERT INTO `role_resource` VALUES ('4373', '2', '54');
INSERT INTO `role_resource` VALUES ('4374', '2', '55');
INSERT INTO `role_resource` VALUES ('4375', '2', '56');
INSERT INTO `role_resource` VALUES ('4376', '2', '58');
INSERT INTO `role_resource` VALUES ('4377', '2', '57');
INSERT INTO `role_resource` VALUES ('4378', '2', '36');
INSERT INTO `role_resource` VALUES ('4379', '2', '68');
INSERT INTO `role_resource` VALUES ('4380', '2', '69');
INSERT INTO `role_resource` VALUES ('4381', '2', '70');
INSERT INTO `role_resource` VALUES ('4382', '2', '71');
INSERT INTO `role_resource` VALUES ('4383', '2', '72');
INSERT INTO `role_resource` VALUES ('4384', '2', '73');
INSERT INTO `role_resource` VALUES ('4385', '2', '75');
INSERT INTO `role_resource` VALUES ('4386', '2', '74');
INSERT INTO `role_resource` VALUES ('4387', '2', '76');
INSERT INTO `role_resource` VALUES ('4388', '2', '77');
INSERT INTO `role_resource` VALUES ('4389', '2', '78');
INSERT INTO `role_resource` VALUES ('4390', '2', '79');
INSERT INTO `role_resource` VALUES ('4391', '2', '80');
INSERT INTO `role_resource` VALUES ('4392', '2', '31');
INSERT INTO `role_resource` VALUES ('4393', '2', '37');
INSERT INTO `role_resource` VALUES ('4394', '2', '48');
INSERT INTO `role_resource` VALUES ('4395', '2', '49');
INSERT INTO `role_resource` VALUES ('4396', '2', '50');
INSERT INTO `role_resource` VALUES ('4397', '2', '51');
INSERT INTO `role_resource` VALUES ('4398', '2', '52');
INSERT INTO `role_resource` VALUES ('4399', '2', '53');
INSERT INTO `role_resource` VALUES ('4400', '2', '38');
INSERT INTO `role_resource` VALUES ('4401', '2', '39');
INSERT INTO `role_resource` VALUES ('4402', '2', '40');
INSERT INTO `role_resource` VALUES ('4403', '2', '41');
INSERT INTO `role_resource` VALUES ('4404', '2', '42');
INSERT INTO `role_resource` VALUES ('4405', '2', '43');
INSERT INTO `role_resource` VALUES ('4406', '2', '44');
INSERT INTO `role_resource` VALUES ('4407', '2', '45');
INSERT INTO `role_resource` VALUES ('4408', '2', '46');
INSERT INTO `role_resource` VALUES ('4409', '2', '47');
INSERT INTO `role_resource` VALUES ('4410', '2', '32');
INSERT INTO `role_resource` VALUES ('4411', '2', '59');
INSERT INTO `role_resource` VALUES ('4412', '2', '60');
INSERT INTO `role_resource` VALUES ('4413', '2', '61');
INSERT INTO `role_resource` VALUES ('4414', '2', '33');
INSERT INTO `role_resource` VALUES ('4415', '2', '62');
INSERT INTO `role_resource` VALUES ('4416', '2', '63');
INSERT INTO `role_resource` VALUES ('4417', '2', '64');
INSERT INTO `role_resource` VALUES ('4418', '2', '34');
INSERT INTO `role_resource` VALUES ('4419', '2', '65');
INSERT INTO `role_resource` VALUES ('4420', '2', '66');
INSERT INTO `role_resource` VALUES ('4421', '2', '67');
INSERT INTO `role_resource` VALUES ('4483', '23', '81');
INSERT INTO `role_resource` VALUES ('4484', '23', '82');
INSERT INTO `role_resource` VALUES ('4485', '23', '84');
INSERT INTO `role_resource` VALUES ('4486', '23', '85');
INSERT INTO `role_resource` VALUES ('4487', '23', '86');
INSERT INTO `role_resource` VALUES ('4488', '22', '81');
INSERT INTO `role_resource` VALUES ('4489', '22', '82');
INSERT INTO `role_resource` VALUES ('4490', '22', '84');
INSERT INTO `role_resource` VALUES ('4491', '22', '85');
INSERT INTO `role_resource` VALUES ('4492', '22', '86');
INSERT INTO `role_resource` VALUES ('4493', '22', '83');
INSERT INTO `role_resource` VALUES ('4494', '22', '87');
INSERT INTO `role_resource` VALUES ('4495', '22', '88');
INSERT INTO `role_resource` VALUES ('4496', '22', '89');
INSERT INTO `role_resource` VALUES ('4497', '22', '90');
INSERT INTO `role_resource` VALUES ('4498', '22', '91');
INSERT INTO `role_resource` VALUES ('4557', '1', '1');
INSERT INTO `role_resource` VALUES ('4558', '1', '2');
INSERT INTO `role_resource` VALUES ('4559', '1', '6');
INSERT INTO `role_resource` VALUES ('4560', '1', '7');
INSERT INTO `role_resource` VALUES ('4561', '1', '8');
INSERT INTO `role_resource` VALUES ('4562', '1', '9');
INSERT INTO `role_resource` VALUES ('4563', '1', '3');
INSERT INTO `role_resource` VALUES ('4564', '1', '10');
INSERT INTO `role_resource` VALUES ('4565', '1', '11');
INSERT INTO `role_resource` VALUES ('4566', '1', '12');
INSERT INTO `role_resource` VALUES ('4567', '1', '22');
INSERT INTO `role_resource` VALUES ('4568', '1', '23');
INSERT INTO `role_resource` VALUES ('4569', '1', '25');
INSERT INTO `role_resource` VALUES ('4570', '1', '26');
INSERT INTO `role_resource` VALUES ('4571', '1', '29');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '张三', '6329779222', '18911891189', '4', '2');
INSERT INTO `student` VALUES ('4', '李四', '23840328', '18911891189', '4', '1');
INSERT INTO `student` VALUES ('6', '王星星', '80328505', '18918989189', '5', '2');
INSERT INTO `student` VALUES ('7', '林周', '883402423', '15218919181', '18', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `roleid` int(4) NOT NULL COMMENT '角色',
  `username` varchar(10) DEFAULT '' COMMENT '姓名',
  `password` char(32) DEFAULT '' COMMENT '密码',
  `tel` char(11) DEFAULT '0' COMMENT '手机',
  `uid` int(11) NOT NULL COMMENT '介绍人ID，如果是介绍人，此处填0',
  `status` char(1) DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '陈军', 'e10adc3949ba59abbe56e057f20f883e', '18601942391', '0', 'Y');
INSERT INTO `user` VALUES ('2', '22', '李辉', 'e10adc3949ba59abbe56e057f20f883e', '18210001561', '0', 'Y');
INSERT INTO `user` VALUES ('3', '22', '张航', 'e10adc3949ba59abbe56e057f20f883e', '18210001699', '0', 'N');
INSERT INTO `user` VALUES ('4', '22', '翠翠', 'e10adc3949ba59abbe56e057f20f883e', '18331915757', '0', 'Y');
INSERT INTO `user` VALUES ('5', '23', '小张', 'e10adc3949ba59abbe56e057f20f883e', '18210005555', '2', 'Y');
INSERT INTO `user` VALUES ('6', '23', '小秀', 'e10adc3949ba59abbe56e057f20f883e', '18210001566', '2', 'Y');
INSERT INTO `user` VALUES ('15', '23', '齐珊', 'e10adc3949ba59abbe56e057f20f883e', '18255556666', '3', 'Y');
INSERT INTO `user` VALUES ('16', '23', '琪琪', 'e10adc3949ba59abbe56e057f20f883e', '18255556668', '3', 'Y');
INSERT INTO `user` VALUES ('17', '23', '张珊', 'e10adc3949ba59abbe56e057f20f883e', '18730608943', '4', 'Y');
INSERT INTO `user` VALUES ('18', '23', '李斌', 'e10adc3949ba59abbe56e057f20f883e', '18730608942', '4', 'Y');
INSERT INTO `user` VALUES ('19', '23', '长治', 'e10adc3949ba59abbe56e057f20f883e', '18210001560', '4', 'Y');
INSERT INTO `user` VALUES ('20', '23', '环宇', '901361ebc20a123c97db68afbd5f4ba2', '18210001562', '4', 'Y');
INSERT INTO `user` VALUES ('21', '23', '张扬', 'e10adc3949ba59abbe56e057f20f883e', '15932617978', '2', 'Y');
INSERT INTO `user` VALUES ('22', '23', '王蒙', 'e10adc3949ba59abbe56e057f20f883e', '18259364568', '3', 'Y');
INSERT INTO `user` VALUES ('23', '23', '李宁', 'e10adc3949ba59abbe56e057f20f883e', '15632338945', '3', 'Y');
INSERT INTO `user` VALUES ('24', '23', '李佳航', 'e10adc3949ba59abbe56e057f20f883e', '15326854795', '3', 'Y');
INSERT INTO `user` VALUES ('25', '23', '程晓军', 'e10adc3949ba59abbe56e057f20f883e', '13256489542', '3', 'Y');
INSERT INTO `user` VALUES ('26', '23', '王飓风', 'e10adc3949ba59abbe56e057f20f883e', '18523647895', '4', 'Y');
INSERT INTO `user` VALUES ('27', '23', '张辉', 'e10adc3949ba59abbe56e057f20f883e', '15326784556', '4', 'Y');
INSERT INTO `user` VALUES ('28', '23', '冯伟', 'e10adc3949ba59abbe56e057f20f883e', '18795422153', '4', 'Y');
