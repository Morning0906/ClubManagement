
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `Club`
-- ----------------------------
DROP TABLE IF EXISTS `Club`;
CREATE TABLE `Club` (
  `club_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '社团ID',
  `club_name` varchar(50) NOT NULL COMMENT '社团名称',
  `established_time` date NOT NULL COMMENT '建立时间',
  `manager` varchar(20) NOT NULL COMMENT '社长',
  `star` decimal(2,1) NOT NULL COMMENT '星级',
  `introduction` varchar(500) NOT NULL COMMENT '简介',
  PRIMARY KEY (`club_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Club
-- ----------------------------
INSERT INTO `Club` VALUES ('1', '钢琴社', '2010-03-09','张三','4.5','一个交流钢琴的社团');
INSERT INTO `Club` VALUES ('2', '桌游社', '2011-04-10','张三','4.6','一个交流桌游的社团');
INSERT INTO `Club` VALUES ('3', '音乐社', '2013-05-09','张三','4.7','一个交流音乐的社团');
INSERT INTO `Club` VALUES ('4', '舞蹈社', '2014-06-02','张三','4.3','一个交流舞蹈的社团');
INSERT INTO `Club` VALUES ('5', '粤动听', '2009-03-07','张三','4.6','一个交流粤语歌的社团');
INSERT INTO `Club` VALUES ('6', '沪语社', '2019-04-07','张三','4.5','一个交流沪语的社团');


-- ----------------------------
-- Table structure for `Comment`
-- ----------------------------
DROP TABLE IF EXISTS `Comment`;
CREATE TABLE `Comment` (
  `comment_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '评价ID',
  `content` varchar(500) NOT NULL COMMENT '用户ID',
  `comment_time` date NOT NULL COMMENT '评价内容',
  `score` decimal(2,1) unsigned zerofill NOT NULL COMMENT '分数',
  `activity_id` int(10) NOT NULL COMMENT '活动ID',
  `student_id` int(10) NOT NULL COMMENT '学生ID',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Comment
-- ----------------------------
INSERT INTO `Comment` VALUES ('1', '活动很棒，活动很好','2022-01-02','4.5', '1','2');
INSERT INTO `Comment` VALUES ('2', '活动很好','2022-01-02','4.5', '1','1');
INSERT INTO `Comment` VALUES ('3', '活动很不错','2022-01-02','4.5', '1','3');
INSERT INTO `Comment` VALUES ('4', '活动举办的很不错','2022-01-02','4.5', '1','4');
INSERT INTO `Comment` VALUES ('5', '活动很有趣，主题非常新颖，我非常喜欢参加这样的活动，期待下一次社团的活动！！！','2022-01-02','4.5', '1','5');
INSERT INTO `Comment` VALUES ('6', '这次活动我非常开心能够参与进来，和社员们相处很愉快，活动非常有趣！！','2022-01-02','4.5', '1','6');
INSERT INTO `Comment` VALUES ('7', '活动很棒，活动很好','2022-01-02','4.5', '2','2');
INSERT INTO `Comment` VALUES ('8', '活动很好','2022-01-02','4.5', '2','1');
INSERT INTO `Comment` VALUES ('9', '活动很不错','2022-01-02','4.5', '2','3');
INSERT INTO `Comment` VALUES ('10', '活动举办的很不错','2022-01-02','4.5', '2','4');
INSERT INTO `Comment` VALUES ('11', '活动很有趣，主题非常新颖，我非常喜欢参加这样的活动，期待下一次社团的活动！！！','2022-01-02','4.5', '2','5');
INSERT INTO `Comment` VALUES ('12', '这次活动我非常开心能够参与进来，和社员们相处很愉快，活动非常有趣！！','2022-01-02','4.5', '2','6');
INSERT INTO `Comment` VALUES ('13', '活动很棒，活动很好','2022-01-02','4.5', '3','2');
INSERT INTO `Comment` VALUES ('14', '活动很好','2022-01-02','4.5', '3','1');
INSERT INTO `Comment` VALUES ('15', '活动很不错','2022-01-02','4.5', '3','3');
INSERT INTO `Comment` VALUES ('16', '活动举办的很不错','2022-01-02','4.5', '3','4');
INSERT INTO `Comment` VALUES ('17', '活动很有趣，主题非常新颖，我非常喜欢参加这样的活动，期待下一次社团的活动！！！','2022-01-02','4.5', '3','5');
INSERT INTO `Comment` VALUES ('18', '这次活动我非常开心能够参与进来，和社员们相处很愉快，活动非常有趣！！','2022-01-02','4.5', '3','6');
INSERT INTO `Comment` VALUES ('19', '活动很棒，活动很好','2022-01-02','4.5', '4','2');
INSERT INTO `Comment` VALUES ('20', '活动很好','2022-01-02','4.5', '4','1');
INSERT INTO `Comment` VALUES ('21', '活动很不错','2022-01-02','4.5', '4','3');
INSERT INTO `Comment` VALUES ('22', '活动举办的很不错','2022-01-02','4.5', '4','4');
INSERT INTO `Comment` VALUES ('23', '活动很有趣，主题非常新颖，我非常喜欢参加这样的活动，期待下一次社团的活动！！！','2022-01-02','4.5', '4','5');
INSERT INTO `Comment` VALUES ('24', '这次活动我非常开心能够参与进来，和社员们相处很愉快，活动非常有趣！！','2022-01-02','4.5', '4','6');
INSERT INTO `Comment` VALUES ('25', '活动很棒，活动很好','2022-01-02','4.5', '5','2');
INSERT INTO `Comment` VALUES ('26', '活动很好','2022-01-02','4.5', '5','1');
INSERT INTO `Comment` VALUES ('27', '活动很不错','2022-01-02','4.5', '5','3');
INSERT INTO `Comment` VALUES ('28', '活动举办的很不错','2022-01-02','4.5', '5','4');
INSERT INTO `Comment` VALUES ('29', '活动很有趣，主题非常新颖，我非常喜欢参加这样的活动，期待下一次社团的活动！！！','2022-01-02','4.5', '5','5');
INSERT INTO `Comment` VALUES ('30', '这次活动我非常开心能够参与进来，和社员们相处很愉快，活动非常有趣！！','2022-01-02','4.5', '5','6');
INSERT INTO `Comment` VALUES ('31', '活动很棒，活动很好','2022-01-02','4.5', '6','2');
INSERT INTO `Comment` VALUES ('32', '活动很好','2022-01-02','4.5', '6','1');
INSERT INTO `Comment` VALUES ('33', '活动很不错','2022-01-02','4.5', '6','3');
INSERT INTO `Comment` VALUES ('34', '活动举办的很不错','2022-01-02','4.5', '6','4');
INSERT INTO `Comment` VALUES ('35', '活动很有趣，主题非常新颖，我非常喜欢参加这样的活动，期待下一次社团的活动！！！','2022-01-02','4.5', '6','5');
INSERT INTO `Comment` VALUES ('36', '这次活动我非常开心能够参与进来，和社员们相处很愉快，活动非常有趣！！','2022-01-02','4.5', '6','6');


-- ----------------------------
-- Table structure for `Student`
-- ----------------------------
DROP TABLE IF EXISTS `Student`;
CREATE TABLE `Student`(
  `student_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '学生ID',
  `student_name` varchar(20) NOT NULL COMMENT '学生名字',
  `password` varchar(20) NOT NULL COMMENT '密码',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Student
-- ----------------------------
INSERT INTO `Student` VALUES ('1', '张三', '000000');
INSERT INTO `Student` VALUES ('2', '张三', '000000');
INSERT INTO `Student` VALUES ('3', '张三', '000000');
INSERT INTO `Student` VALUES ('4', '张三', '000000');
INSERT INTO `Student` VALUES ('5', '张三', '000000');
INSERT INTO `Student` VALUES ('6', '张三', '000000');
INSERT INTO `Student` VALUES ('7', '张三', '000000');

-- ----------------------------
-- Table structure for `Activity`
-- ----------------------------
DROP TABLE IF EXISTS `Activity`;
CREATE TABLE `Activity` (
  `activity_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '活动ID',
  `activity_name` varchar(30) NOT NULL COMMENT '活动名称',
  `hold_time` date DEFAULT NULL COMMENT '举办时间',
  `club_id` int(10) NOT NULL COMMENT '社团ID',
  `money` int(20) DEFAULT NULL COMMENT '金额',
  `total_score` varchar(20) NOT NULL COMMENT '分数',
   PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Activity
-- ----------------------------
INSERT INTO `Activity` VALUES ('1', '钢琴交流活动', '2022-05-06','1','0','4.6');
INSERT INTO `Activity` VALUES ('2', '粤式点心品尝活动', '2022-06-02','5','500','4.6' );
INSERT INTO `Activity` VALUES ('3', '音乐交流活动', '2022-05-15','3','50','4.6' );
INSERT INTO `Activity` VALUES ('4', '十佳歌手',  '2022-05-26','3','1000','4.6');
INSERT INTO `Activity` VALUES ('5', '沪语学习活动', '2022-05-17','6','20','4.6');
INSERT INTO `Activity` VALUES ('6', '狼人杀日常活动', '2022-05-27','2','40','4.6');
INSERT INTO `Activity` VALUES ('7', '钢琴交流活动', '2022-05-06','1','0','4.6');
INSERT INTO `Activity` VALUES ('8', '粤式点心品尝活动', '2022-06-02','5','500','4.6' );
INSERT INTO `Activity` VALUES ('9', '音乐交流活动', '2022-05-15','3','50','4.6' );
INSERT INTO `Activity` VALUES ('10', '十佳歌手',  '2022-05-26','3','1000','4.6');
INSERT INTO `Activity` VALUES ('11', '沪语学习活动', '2022-05-17','6','20','4.6');
INSERT INTO `Activity` VALUES ('12', '狼人杀日常活动', '2022-05-27','2','40','4.6');INSERT INTO `Activity` VALUES ('1', '钢琴交流活动', '2022-05-06','1','0','4.6');
INSERT INTO `Activity` VALUES ('13', '粤式点心品尝活动', '2022-06-02','5','500','4.6' );
INSERT INTO `Activity` VALUES ('14', '音乐交流活动', '2022-05-15','3','50','4.6' );
INSERT INTO `Activity` VALUES ('15', '十佳歌手',  '2022-05-26','3','1000','4.6');
INSERT INTO `Activity` VALUES ('16', '沪语学习活动', '2022-05-17','6','20','4.6');
INSERT INTO `Activity` VALUES ('17', '狼人杀日常活动', '2022-05-27','2','40','4.6');INSERT INTO `Activity` VALUES ('1', '钢琴交流活动', '2022-05-06','1','0','4.6');
INSERT INTO `Activity` VALUES ('18', '粤式点心品尝活动', '2022-06-02','5','500','4.6' );
INSERT INTO `Activity` VALUES ('19', '音乐交流活动', '2022-05-15','3','50','4.6' );
INSERT INTO `Activity` VALUES ('20', '十佳歌手',  '2022-05-26','3','1000','4.6');
INSERT INTO `Activity` VALUES ('21', '沪语学习活动', '2022-05-17','6','20','4.6');
INSERT INTO `Activity` VALUES ('22', '狼人杀日常活动', '2022-05-27','2','40','4.6');


-- ----------------------------
-- Table structure for `ClubCreationApply`
-- ----------------------------
DROP TABLE IF EXISTS `ClubCreationApply`;
CREATE TABLE `ClubCreationApply` (
  `apply_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '申请ID',
  `club_id` int(10) NOT NULL COMMENT '社团ID',
  `apply_state` varchar(20) NOT NULL COMMENT '申请状态',
  `applier` varchar(20) NOT NULL COMMENT '申请人',
  `apply_information` varchar(200) NOT NULL COMMENT '申请理由',
  PRIMARY KEY (`apply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ClubCreationApply
-- ----------------------------
INSERT INTO `ClubCreationApply` VALUES ('1', '7', '审核中', '李四', '从小热爱电影，想加入社团结交跟自己一样喜欢电影的好朋友们，一起参加电影活动，享受电影带来的快乐。' );
INSERT INTO `ClubCreationApply` VALUES ('2', '8', '审核中', '李四','从小热爱游戏，想加入社团结交跟自己一样喜欢游戏的好朋友们，一起参加游戏活动，享受游戏带来的快乐。' );
INSERT INTO `ClubCreationApply` VALUES ('3', '9', '审核中', '李四', '从小热爱跳绳，想加入社团结交跟自己一样喜欢跳绳的好朋友们，一起参加跳绳活动，享受跳绳带来的快乐。');

-- ----------------------------
-- Table structure for `Student_Club`
-- ----------------------------
DROP TABLE IF EXISTS `Student_Club`;
CREATE TABLE `Student_Club` (
   `studentclub_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '标识',
   `club_id` int(10) NOT NULL COMMENT '社团ID',
   `student_id` int(10) NOT NULL COMMENT '学生ID',
  PRIMARY KEY (`studentclub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Student_Club
-- ----------------------------
INSERT INTO `Student_Club` VALUES ('1', '1','1');
INSERT INTO `Student_Club` VALUES ('2', '2','1');
INSERT INTO `Student_Club` VALUES ('3', '3','1');
INSERT INTO `Student_Club` VALUES ('4', '4','1');
INSERT INTO `Student_Club` VALUES ('5', '5','1');
INSERT INTO `Student_Club` VALUES ('6', '6','1');
INSERT INTO `Student_Club` VALUES ('7', '1','2');
INSERT INTO `Student_Club` VALUES ('8', '2','2');
INSERT INTO `Student_Club` VALUES ('9', '3','2');
INSERT INTO `Student_Club` VALUES ('10', '4','2');
INSERT INTO `Student_Club` VALUES ('11', '5','2');
INSERT INTO `Student_Club` VALUES ('12', '6','2');
INSERT INTO `Student_Club` VALUES ('13', '1','3');
INSERT INTO `Student_Club` VALUES ('14', '2','3');
INSERT INTO `Student_Club` VALUES ('15', '3','3');
INSERT INTO `Student_Club` VALUES ('16', '4','3');
INSERT INTO `Student_Club` VALUES ('17', '5','3');
INSERT INTO `Student_Club` VALUES ('18', '6','3');
INSERT INTO `Student_Club` VALUES ('19', '1','4');
INSERT INTO `Student_Club` VALUES ('20', '2','4');
INSERT INTO `Student_Club` VALUES ('21', '3','4');
INSERT INTO `Student_Club` VALUES ('22', '4','4');
INSERT INTO `Student_Club` VALUES ('23', '5','4');
INSERT INTO `Student_Club` VALUES ('24', '6','4');
INSERT INTO `Student_Club` VALUES ('25', '1','5');
INSERT INTO `Student_Club` VALUES ('26', '2','5');
INSERT INTO `Student_Club` VALUES ('27', '3','5');
INSERT INTO `Student_Club` VALUES ('28', '4','5');
INSERT INTO `Student_Club` VALUES ('29', '5','5');
INSERT INTO `Student_Club` VALUES ('30', '6','5');
INSERT INTO `Student_Club` VALUES ('31', '1','6');
INSERT INTO `Student_Club` VALUES ('32', '2','6');
INSERT INTO `Student_Club` VALUES ('33', '3','6');
INSERT INTO `Student_Club` VALUES ('34', '4','6');
INSERT INTO `Student_Club` VALUES ('35', '5','6');
INSERT INTO `Student_Club` VALUES ('36', '6','6');


-- ----------------------------
-- Table structure for `Club_Manager`
-- ----------------------------
DROP TABLE IF EXISTS `Club_Manager`;
CREATE TABLE `Club_Manager` (
  `clubmanager_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `club_id` int(10) NOT NULL COMMENT '社团ID',
  PRIMARY KEY (`clubmanager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Club_Manager
-- ----------------------------
INSERT INTO `Club_Manager` VALUES ('01', '000000', '1');
INSERT INTO `Club_Manager` VALUES ('02', '000000', '2');
INSERT INTO `Club_Manager` VALUES ('03', '000000', '3');
INSERT INTO `Club_Manager` VALUES ('04', '000000', '4');
INSERT INTO `Club_Manager` VALUES ('05', '000000', '5');
INSERT INTO `Club_Manager` VALUES ('06', '000000', '6');

-- ----------------------------
-- Table structure for `Join_Apply`
-- ----------------------------
DROP TABLE IF EXISTS `Join_Apply`;
CREATE TABLE `Join_Apply` (
  `joinapply_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '申请加入ID',
  `club_id` int(10) NOT NULL COMMENT '社团ID',
  `student_id` int(10) NOT NULL COMMENT '学生ID',
  PRIMARY KEY (`joinapply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Join_Apply
-- ----------------------------
INSERT INTO `Join_Apply` VALUES ('1', '1', '7');
INSERT INTO `Join_Apply` VALUES ('2', '2', '7');
INSERT INTO `Join_Apply` VALUES ('3', '3', '7');
INSERT INTO `Join_Apply` VALUES ('4', '4', '7');
INSERT INTO `Join_Apply` VALUES ('5', '5', '7');
INSERT INTO `Join_Apply` VALUES ('6', '6', '7');

-- ----------------------------
-- Table structure for `Activity_Participation`
-- ----------------------------
DROP TABLE IF EXISTS `Activity_Participation`;
CREATE TABLE `Activity_Participation` (
  `participation_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '申请参加ID',
  `activity_id` int(10) NOT NULL COMMENT '活动ID',
  `student_id` int(10) NOT NULL COMMENT '学生ID',
  PRIMARY KEY (`participation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Activity_Participation
-- ----------------------------
INSERT INTO `Activity_Participation` VALUES ('1', '1', '7');
INSERT INTO `Activity_Participation` VALUES ('2', '2', '7');
INSERT INTO `Activity_Participation` VALUES ('3', '3', '7');
INSERT INTO `Activity_Participation` VALUES ('4', '4', '7');
INSERT INTO `Activity_Participation` VALUES ('5', '5', '7');
INSERT INTO `Activity_Participation` VALUES ('6', '6', '7');

-- ----------------------------
-- Table structure for `Activity_Apply`
-- ----------------------------
DROP TABLE IF EXISTS `Activity_Apply`;
CREATE TABLE `Activity_Apply` (
  `activityapply_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '申请活动ID',
  `club_id` int(10) NOT NULL COMMENT '社团ID',
  `activity_id` int(10) NOT NULL COMMENT '活动ID',
  PRIMARY KEY (`activityapply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Activity_Apply
-- ----------------------------
INSERT INTO `Activity_Apply` VALUES ('1', '1', '7');
INSERT INTO `Activity_Apply` VALUES ('2', '2', '8');
INSERT INTO `Activity_Apply` VALUES ('3', '3', '9');
INSERT INTO `Activity_Apply` VALUES ('4', '4', '10');
INSERT INTO `Activity_Apply` VALUES ('5', '5', '11');
INSERT INTO `Activity_Apply` VALUES ('6', '6', '12');

-- ----------------------------
-- Table structure for `Super_Manager`
-- ----------------------------
DROP TABLE IF EXISTS `Super_Manager`;
CREATE TABLE `Super_Manager` (
  `supermanager_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '超级管理员ID',
  `password` int(10) NOT NULL COMMENT '密码',
  PRIMARY KEY (`supermanager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Super_Manager
-- ----------------------------
INSERT INTO `Super_Manager` VALUES ('001', '000000');
