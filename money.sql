/*
Navicat MySQL Data Transfer

Source Server         : nb
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-05-25 14:01:28
*/

SET FOREIGN_KEY_CHECKS=0;

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
