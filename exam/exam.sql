/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : exam

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001sysuserpaperpaper

Date: 2016-11-30 10:24:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `paper`
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(11) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `sid` (`sid`),
  CONSTRAINT `paper_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `subject` (`sid`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES ('1', '软件工程', '7');
INSERT INTO `paper` VALUES ('2', '软件工程', '2');
INSERT INTO `paper` VALUES ('3', '软件工程', '8');
INSERT INTO `paper` VALUES ('4', 'test1', '3');
INSERT INTO `paper` VALUES ('5', 'test1', '8');
INSERT INTO `paper` VALUES ('6', 'test1', '7');
INSERT INTO `paper` VALUES ('7', 'test1', '4');
INSERT INTO `paper` VALUES ('8', 'test1', '2');
INSERT INTO `paper` VALUES ('11', 'test2', '7');
INSERT INTO `paper` VALUES ('12', 'test2', '3');
INSERT INTO `paper` VALUES ('13', 'test2', '2');
INSERT INTO `paper` VALUES ('14', 'test2', '8');
INSERT INTO `paper` VALUES ('15', 'test2', '6');
INSERT INTO `paper` VALUES ('16', '数据结构', '4');
INSERT INTO `paper` VALUES ('17', '数据结构', '8');
INSERT INTO `paper` VALUES ('18', '数据结构', '6');
INSERT INTO `paper` VALUES ('19', '数据结构', '7');
INSERT INTO `paper` VALUES ('20', '数据结构', '3');
INSERT INTO `paper` VALUES ('21', '操作系统', '2');
INSERT INTO `paper` VALUES ('22', '操作系统', '3');
INSERT INTO `paper` VALUES ('23', '操作系统', '4');
INSERT INTO `paper` VALUES ('24', '操作系统', '8');
INSERT INTO `paper` VALUES ('25', '操作系统', '7');
INSERT INTO `paper` VALUES ('28', 'test3', '3');
INSERT INTO `paper` VALUES ('29', 'test3', '4');
INSERT INTO `paper` VALUES ('30', 'test3', '2');
INSERT INTO `paper` VALUES ('31', 'test3', '6');
INSERT INTO `paper` VALUES ('32', 'test3', '8');
INSERT INTO `paper` VALUES ('33', 'test3', '7');
INSERT INTO `paper` VALUES ('35', '计算机网络', '7');
INSERT INTO `paper` VALUES ('36', '计算机网络', '4');
INSERT INTO `paper` VALUES ('37', '计算机网络', '2');
INSERT INTO `paper` VALUES ('38', '计算机网络', '5');
INSERT INTO `paper` VALUES ('39', '计算机网络', '3');

-- ----------------------------
-- Table structure for `roleright`
-- ----------------------------
DROP TABLE IF EXISTS `roleright`;
CREATE TABLE `roleright` (
  `RRID` int(11) NOT NULL AUTO_INCREMENT,
  `FUNID` int(11) DEFAULT NULL,
  `ROLEID` int(11) DEFAULT NULL,
  PRIMARY KEY (`RRID`),
  KEY `FK_Relationship_1` (`FUNID`),
  KEY `FK_Relationship_2` (`ROLEID`),
  CONSTRAINT `FK_Relationship_1` FOREIGN KEY (`FUNID`) REFERENCES `sysfunction` (`FUNID`),
  CONSTRAINT `FK_Relationship_2` FOREIGN KEY (`ROLEID`) REFERENCES `sysrole` (`ROLEID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of roleright
-- ----------------------------
INSERT INTO `roleright` VALUES ('3', '1', '-1');
INSERT INTO `roleright` VALUES ('4', '5', '-1');
INSERT INTO `roleright` VALUES ('5', '6', '-1');
INSERT INTO `roleright` VALUES ('6', '7', '-1');
INSERT INTO `roleright` VALUES ('7', '5', '2');
INSERT INTO `roleright` VALUES ('8', '6', '2');
INSERT INTO `roleright` VALUES ('9', '7', '2');

-- ----------------------------
-- Table structure for `studentpaper`
-- ----------------------------
DROP TABLE IF EXISTS `studentpaper`;
CREATE TABLE `studentpaper` (
  `spid` varchar(15) NOT NULL,
  `USERID` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `studentkey` varchar(10) DEFAULT NULL,
  `studentstate` int(11) NOT NULL,
  `pname` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Recordsstudentpaper of studentpaper
-- ----------------------------
INSERT INTO `studentpaper` VALUES ('1480254168776', '3', '2', 'B', '0', 'test1');
INSERT INTO `studentpaper` VALUES ('1480254168776', '3', '3', 'D', '1', 'test1');
INSERT INTO `studentpaper` VALUES ('1480254168776', '3', '7', 'C', '1', 'test1');
INSERT INTO `studentpaper` VALUES ('1480254168776', '3', '8', 'C', '1', 'test1');
INSERT INTO `studentpaper` VALUES ('1480254168776', '3', '4', 'B', '1', 'test1');
INSERT INTO `studentpaper` VALUES ('1480254191235', '3', '2', 'C', '0', 'test1');
INSERT INTO `studentpaper` VALUES ('1480254191235', '3', '3', '', '0', 'test1');
INSERT INTO `studentpaper` VALUES ('1480254191235', '3', '7', 'B', '0', 'test1');
INSERT INTO `studentpaper` VALUES ('1480254191235', '3', '8', '', '0', 'test1');
INSERT INTO `studentpaper` VALUES ('1480254191235', '3', '4', '', '0', 'test1');
INSERT INTO `studentpaper` VALUES ('1480257642253', '3', '8', 'B', '0', '操作系统');
INSERT INTO `studentpaper` VALUES ('1480257642253', '3', '7', 'D', '0', '操作系统');
INSERT INTO `studentpaper` VALUES ('1480257642253', '3', '3', 'C', '0', '操作系统');
INSERT INTO `studentpaper` VALUES ('1480257642253', '3', '2', 'C', '0', '操作系统');
INSERT INTO `studentpaper` VALUES ('1480257642253', '3', '4', 'C', '0', '操作系统');
INSERT INTO `studentpaper` VALUES ('1480257713640', '3', '2', 'C', '0', '软件工程');
INSERT INTO `studentpaper` VALUES ('1480257713640', '3', '8', 'A', '0', '软件工程');
INSERT INTO `studentpaper` VALUES ('1480257713640', '3', '7', 'C', '1', '软件工程');
INSERT INTO `studentpaper` VALUES ('1480257814597', '3', '3', 'B', '0', '数据结构');
INSERT INTO `studentpaper` VALUES ('1480257814597', '3', '6', 'C', '0', '数据结构');
INSERT INTO `studentpaper` VALUES ('1480257814597', '3', '7', 'C', '1', '数据结构');
INSERT INTO `studentpaper` VALUES ('1480257814597', '3', '4', 'B', '1', '数据结构');
INSERT INTO `studentpaper` VALUES ('1480257814597', '3', '8', 'D', '0', '数据结构');
INSERT INTO `studentpaper` VALUES ('1480303106257', '4', '8', 'A', '0', '软件工程');
INSERT INTO `studentpaper` VALUES ('1480303106257', '4', '2', 'D', '0', '软件工程');
INSERT INTO `studentpaper` VALUES ('1480303106257', '4', '7', 'A', '0', '软件工程');

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `scontent` varchar(150) NOT NULL,
  `sa` varchar(100) NOT NULL,
  `sb` varchar(100) NOT NULL,
  `sc` varchar(100) NOT NULL,
  `sd` varchar(100) NOT NULL,
  `skey` varchar(10) NOT NULL,
  `sstate` int(11) NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `scontent` (`scontent`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', '软件测试的目的是(___)', '试验性运行软件', '发现软件错误', '证明软件正确', '找出软件中全部错误', 'B', '0');
INSERT INTO `subject` VALUES ('2', '在一个长度为n的顺序表的表尾插入一个新元素的渐进时间复杂度为', 'O (n)', 'O (1)', 'O (n2 )', 'O (log2 n)', 'A', '1');
INSERT INTO `subject` VALUES ('3', '计算机系统中的存贮器系统是指', 'RAM存贮器', 'ROM存贮器', '主存贮器', 'cache、主存贮器和外存贮器', 'D', '1');
INSERT INTO `subject` VALUES ('4', '某机字长32位，其中1位符号位，31位表示尾数。若用定点小数表示，则最大正小数为', '+（1 – 2-32）', '+（1 – 2-31）', '2-32', '2-31', 'B', '1');
INSERT INTO `subject` VALUES ('5', '算术 / 逻辑运算单元74181ALU可完成', '16种算术运算功能', '16种逻辑运算功能', '16种算术运算功能和16种逻辑运算功能', '4位乘法运算和除法运算功能', 'C', '1');
INSERT INTO `subject` VALUES ('6', '存储单元是指', '存放一个二进制信息位的存贮元', '存放一个机器字的所有存贮元集合', '存放一个字节的所有存贮元集合', '存放两个字节的所有存贮元集合；', 'B', '1');
INSERT INTO `subject` VALUES ('7', '相联存贮器是按______进行寻址的存贮器。', '地址方式', '堆栈方式', '内容指定方式', '地址方式与堆栈方式', 'C', '1');
INSERT INTO `subject` VALUES ('8', '变址寻址方式中，操作数的有效地址等于______。', '基值寄存器内容加上形式地址（位移量）', '堆栈指示器内容加上形式地址（位移量）', '变址寄存器内容加上形式地址（位移量）', '程序记数器内容加上形式地址（位移量）', 'C', '1');
INSERT INTO `subject` VALUES ('10', '会飞的速发货', 'A.随机地选取测试数据', 'B.取一切可能的输入数据作为测试数据', 'C.如图', 'D.选择发现错误可能性最大的数据作为测试用例', 'D', '0');

-- ----------------------------
-- Table structure for `sysfunction`
-- ----------------------------
DROP TABLE IF EXISTS `sysfunction`;
CREATE TABLE `sysfunction` (
  `FUNID` int(11) NOT NULL AUTO_INCREMENT,
  `FUNNAME` varchar(20) DEFAULT NULL,
  `FUNURL` varchar(200) DEFAULT NULL,
  `FUNPID` int(11) DEFAULT NULL,
  `FUNSTATE` int(11) DEFAULT NULL,
  PRIMARY KEY (`FUNID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of sysfunction
-- ----------------------------
INSERT INTO `sysfunction` VALUES ('1', '系统功能', null, '-1', '1');
INSERT INTO `sysfunction` VALUES ('2', '系统功能管理', 'sys/fun?cmd=list', '1', '1');
INSERT INTO `sysfunction` VALUES ('3', '用户管理', 'sys/user?cmd=list', '1', '1');
INSERT INTO `sysfunction` VALUES ('4', '角色管理', 'sys/role?cmd=list', '1', '1');
INSERT INTO `sysfunction` VALUES ('5', '试题管理', null, '-1', '1');
INSERT INTO `sysfunction` VALUES ('6', '题目管理', 'sys/subject?cmd=list', '5', '1');
INSERT INTO `sysfunction` VALUES ('7', '试卷管理', 'sys/paper?cmd=list', '5', '1');
INSERT INTO `sysfunction` VALUES ('8', null, null, null, null);

-- ----------------------------
-- Table structure for `sysrole`
-- ----------------------------
DROP TABLE IF EXISTS `sysrole`;
CREATE TABLE `sysrole` (
  `ROLEID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLENAME` varchar(20) DEFAULT NULL,
  `ROLESTATE` int(11) DEFAULT NULL,
  `ROLEDESC` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ROLEID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of sysrole
-- ----------------------------
INSERT INTO `sysrole` VALUES ('-1', '超级管理员', '1', '超级管理员');
INSERT INTO `sysrole` VALUES ('1', '学生', '1', '学生');
INSERT INTO `sysrole` VALUES ('2', '试题管理员', '1', '管理是试题与试卷');

-- ----------------------------
-- Table structure for `sysuser`
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLEID` int(11) DEFAULT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `USERPWD` char(20) DEFAULT NULL,
  `USERTRUENAME` varchar(30) DEFAULT NULL,
  `USERSTATE` int(11) DEFAULT NULL,
  PRIMARY KEY (`USERID`),
  UNIQUE KEY `USERNAME` (`USERNAME`),
  KEY `FK_Relationship_3` (`ROLEID`),
  CONSTRAINT `FK_Relationship_3` FOREIGN KEY (`ROLEID`) REFERENCES `sysrole` (`ROLEID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES ('2', '-1', 'admin', '12345', '管理员', '1');
INSERT INTO `sysuser` VALUES ('3', '1', 'zs', '11111', '张三丰', '1');
INSERT INTO `sysuser` VALUES ('4', '2', 'ls', '12345', '李四', '1');
INSERT INTO `sysuser` VALUES ('5', '1', 'ww', '12345', '王五', '1');
