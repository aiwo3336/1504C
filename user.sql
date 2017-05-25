/*
Navicat MySQL Data Transfer

Source Server         : nb
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-05-25 14:01:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `customerId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'p2p系统客户id,系统唯一',
  `phoneNumber` char(14) DEFAULT NULL COMMENT '手机号',
  `invCode` int(11) DEFAULT NULL COMMENT '本人邀请码',
  `paymentFlg` int(11) DEFAULT NULL COMMENT '1 – 未开通2 -已开通',
  `realName` varchar(40) DEFAULT NULL COMMENT '客户姓名',
  `regTime` datetime DEFAULT NULL COMMENT '注册时间',
  `channel` int(11) DEFAULT '1' COMMENT '1-业务系统注册 2互联网注册',
  `managerInvCode` varchar(40) DEFAULT NULL COMMENT '所属财富经理邀请码',
  `vip` tinyint(4) DEFAULT '0' COMMENT '0普通1vip',
  PRIMARY KEY (`customerId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
