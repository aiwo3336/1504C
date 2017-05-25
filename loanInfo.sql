/*
Navicat MySQL Data Transfer

Source Server         : nb
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-05-25 14:01:23
*/

SET FOREIGN_KEY_CHECKS=0;

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
