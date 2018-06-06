/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : music

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2018-06-06 21:13:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `adminname` varchar(255) NOT NULL,
  `adminpwd` varchar(255) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `imageid` int(11) NOT NULL,
  `imageurl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('1', '7.jpg');
INSERT INTO `image` VALUES ('2', '6.jpg');
INSERT INTO `image` VALUES ('1', '5.jpg');
INSERT INTO `image` VALUES ('2', '8.jpg');

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `musicid` int(11) NOT NULL AUTO_INCREMENT,
  `musicname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `imageid` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`musicid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES ('1', '合照', '1', '2017-08-19 12:04:14');
INSERT INTO `music` VALUES ('2', '为你我受冷风吹', '2', '2017-08-19 12:35:49');
INSERT INTO `music` VALUES ('3', '爱是你我', '2', '2017-08-20 20:07:57');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `userpwd` varchar(255) NOT NULL,
  `musicId` int(11) DEFAULT NULL,
  `touxiang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'haha', '1', '1', null, null);
INSERT INTO `user` VALUES ('2', null, '15236086017', '<insert id=\"insert,', null, null);
INSERT INTO `user` VALUES ('3', null, '15236086017', '15236086017,15236086017', null, null);
INSERT INTO `user` VALUES ('4', null, '15236086017', 'maweijie,', null, null);
INSERT INTO `user` VALUES ('5', null, '1111111111', '666666666,', null, null);
