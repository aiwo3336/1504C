/*
Navicat MySQL Data Transfer

Source Server         : nb
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-05-25 14:01:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for invinfo
-- ----------------------------
DROP TABLE IF EXISTS `invinfo`;
CREATE TABLE `invinfo` (
  `invId` int(11) NOT NULL AUTO_INCREMENT,
  `invTime` datetime DEFAULT NULL COMMENT '投资时间',
  `customerId` int(11) DEFAULT NULL COMMENT '投资客户编号，系统唯一',
  `invAmt` double(255,0) DEFAULT NULL COMMENT '投资金额',
  PRIMARY KEY (`invId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of invinfo
-- ----------------------------

-- ----------------------------
-- Table structure for loaninfo
-- ----------------------------
DROP TABLE IF EXISTS `loaninfo`;
CREATE TABLE `loaninfo` (
  `loanId` int(11) NOT NULL AUTO_INCREMENT COMMENT '标的编号，系统唯一',
  `title` varchar(255) DEFAULT NULL COMMENT '标的名称',
  `loanAmout` double DEFAULT NULL COMMENT '标的金额',
  `termType` char(255) DEFAULT NULL COMMENT '期限类型',
  `termNumber` int(11) DEFAULT NULL COMMENT '期限',
  PRIMARY KEY (`loanId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of loaninfo
-- ----------------------------

-- ----------------------------
-- Table structure for money
-- ----------------------------
DROP TABLE IF EXISTS `money`;
CREATE TABLE `money` (
  `customerId` int(11) NOT NULL COMMENT '用户id',
  `amount` double DEFAULT NULL COMMENT '金额',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`customerId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of money
-- ----------------------------

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
