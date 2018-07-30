/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : oa

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2018-07-30 17:11:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for datamanagement
-- ----------------------------
DROP TABLE IF EXISTS `datamanagement`;
CREATE TABLE `datamanagement` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `age` int(20) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `belong` varchar(255) DEFAULT NULL,
  `test_time` varchar(255) DEFAULT NULL,
  `warning_level` varchar(255) DEFAULT NULL,
  `testTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gb2312 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of datamanagement
-- ----------------------------
INSERT INTO `datamanagement` VALUES ('4', '测试1', '1', '20', '男', '中国', '18秒', '等级一', '2017/12/28');
INSERT INTO `datamanagement` VALUES ('8', '测试5', '5', '19', '女', '中国 上海', '1秒', '等级四', '2017/12/30');
INSERT INTO `datamanagement` VALUES ('9', '测试6', '6', '19', '男', '威尼斯', '2秒', '等级二', '2017/12/29');
INSERT INTO `datamanagement` VALUES ('10', '啊啊', '', null, '', '', '', '', '');

-- ----------------------------
-- Table structure for genre
-- ----------------------------
DROP TABLE IF EXISTS `genre`;
CREATE TABLE `genre` (
  `gid` tinyint(2) NOT NULL AUTO_INCREMENT,
  `gname` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of genre
-- ----------------------------
INSERT INTO `genre` VALUES ('1', '轮播图片');
INSERT INTO `genre` VALUES ('2', '产品图片');
INSERT INTO `genre` VALUES ('3', '咨询师图片');

-- ----------------------------
-- Table structure for home
-- ----------------------------
DROP TABLE IF EXISTS `home`;
CREATE TABLE `home` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `gid` tinyint(20) DEFAULT NULL,
  `topic` varchar(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `filesrc` varchar(100) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gid1` (`gid`),
  CONSTRAINT `home_ibfk_1` FOREIGN KEY (`gid`) REFERENCES `genre` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home
-- ----------------------------
INSERT INTO `home` VALUES ('1', '1', 'pic112121212', '2017-07-19 00:00:00', 'images/home_img/banner1.png', '简述...', '已显示');
INSERT INTO `home` VALUES ('2', '2', 'pic2', '2017-07-18 00:00:00', 'images/home_img/banner2.png', '简述...', '已显示');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `userRows` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `filesrc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张三', '111', '111', '1111', '2018-01-30', null);
INSERT INTO `user` VALUES ('3', '啊啊啊', null, null, null, null, null);
INSERT INTO `user` VALUES ('10', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('12', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('13', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('14', '啊啊啊啊111', ',', '', '', null, null);
INSERT INTO `user` VALUES ('15', '111啊', ',', '', '', null, null);
