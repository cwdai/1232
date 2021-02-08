/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50022
Source Host           : 127.0.0.1:3306
Source Database       : 数据库面试题

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-05-10 22:30:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cid` int(11) NOT NULL,
  `cname` varchar(12) default NULL,
  `tid` int(11) NOT NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '语文', '1001');
INSERT INTO `course` VALUES ('2', '数学', '1002');
INSERT INTO `course` VALUES ('3', '外语', '1003');


-- ----------------------------
-- Table structure for `sc`
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `sid` int(11) default NULL,
  `cid` int(11) default NULL,
  `score` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('16001', '1', '55');
INSERT INTO `sc` VALUES ('16001', '2', '40');
INSERT INTO `sc` VALUES ('16002', '1', '51');
INSERT INTO `sc` VALUES ('16002', '3', '80');
INSERT INTO `sc` VALUES ('16003', '1', '40');
INSERT INTO `sc` VALUES ('16003', '2', '55');
INSERT INTO `sc` VALUES ('16003', '3', '50');
INSERT INTO `sc` VALUES ('16004', '1', '99');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `sname` varchar(10) default NULL,
  `sage` int(11) default NULL,
  `ssex` varchar(10) default NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('16001', '张三', '21', '男');
INSERT INTO `student` VALUES ('16002', '李四', '21', '男');
INSERT INTO `student` VALUES ('16003', '王五', '21', '男');
INSERT INTO `student` VALUES ('16004', '赵六', '22', '男');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tid` int(11) default NULL,
  `tname` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1001', '李家俊');
INSERT INTO `teacher` VALUES ('1002', '徐根宝');
INSERT INTO `teacher` VALUES ('1003', '叶平');
