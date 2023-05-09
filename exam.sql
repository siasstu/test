/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50739
 Source Host           : localhost:3306
 Source Schema         : exam

 Target Server Type    : MySQL
 Target Server Version : 50739
 File Encoding         : 65001

 Date: 08/05/2023 07:24:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` int(11) NOT NULL,
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '班级名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` bit(1) NULL DEFAULT b'0' COMMENT '是否删除',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, '2019级信管二班', '2023-03-06 18:13:14', NULL, b'0', '122112');

-- ----------------------------
-- Table structure for class_stu
-- ----------------------------
DROP TABLE IF EXISTS `class_stu`;
CREATE TABLE `class_stu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NULL DEFAULT NULL COMMENT '班级编号',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '学号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_stu
-- ----------------------------
INSERT INTO `class_stu` VALUES (47, 1, '2019105120206');
INSERT INTO `class_stu` VALUES (48, 1, '2019105120207');
INSERT INTO `class_stu` VALUES (49, 1, '2019105120203');
INSERT INTO `class_stu` VALUES (50, 1, '2019105120220');
INSERT INTO `class_stu` VALUES (51, 1, '2019105120204');
INSERT INTO `class_stu` VALUES (52, 1, '2019105120208');
INSERT INTO `class_stu` VALUES (53, 1, '2019105120209');
INSERT INTO `class_stu` VALUES (54, 1, '2019105120210');
INSERT INTO `class_stu` VALUES (55, 1, '2019105120211');
INSERT INTO `class_stu` VALUES (56, 1, '2019105120212');
INSERT INTO `class_stu` VALUES (57, 1, '2019105120213');
INSERT INTO `class_stu` VALUES (58, 1, '2019105120214');
INSERT INTO `class_stu` VALUES (59, 1, '2019105120215');
INSERT INTO `class_stu` VALUES (60, 1, '2019105120216');
INSERT INTO `class_stu` VALUES (61, 1, '2019105120217');
INSERT INTO `class_stu` VALUES (62, 1, '2019105120218');
INSERT INTO `class_stu` VALUES (63, 1, '2019105120219');
INSERT INTO `class_stu` VALUES (64, 1, '2019105120205');
INSERT INTO `class_stu` VALUES (65, 1, '2019105120201');
INSERT INTO `class_stu` VALUES (66, 1, '2019105120202');

-- ----------------------------
-- Table structure for courseclass
-- ----------------------------
DROP TABLE IF EXISTS `courseclass`;
CREATE TABLE `courseclass`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '课程班级名称',
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '教师',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `deleted` bit(1) NULL DEFAULT b'0' COMMENT '逻辑删除',
  `subject_id` int(11) NULL DEFAULT NULL COMMENT '课程id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courseclass
-- ----------------------------
INSERT INTO `courseclass` VALUES (1, '19级信管二班', '1001', '2023-03-30 22:30:27', '2023-03-30 23:50:37', '12', b'0', 45);
INSERT INTO `courseclass` VALUES (5, '19级信管1，2班', '1002', '2023-03-31 18:50:53', '2023-03-31 18:51:14', '123', b'0', 49);
INSERT INTO `courseclass` VALUES (6, NULL, '1001', '2023-05-06 19:13:01', NULL, NULL, b'0', NULL);

-- ----------------------------
-- Table structure for courseclass_stu
-- ----------------------------
DROP TABLE IF EXISTS `courseclass_stu`;
CREATE TABLE `courseclass_stu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseclass_id` int(11) NULL DEFAULT NULL COMMENT '课程班级id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '学生用户名',
  `deleted` bit(1) NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courseclass_stu
-- ----------------------------
INSERT INTO `courseclass_stu` VALUES (76, 1, '2019105120206', b'0');
INSERT INTO `courseclass_stu` VALUES (77, 1, '2019105120207', b'0');
INSERT INTO `courseclass_stu` VALUES (78, 1, '2019105120203', b'0');
INSERT INTO `courseclass_stu` VALUES (79, 1, '2019105120220', b'0');
INSERT INTO `courseclass_stu` VALUES (80, 1, '2019105120204', b'0');
INSERT INTO `courseclass_stu` VALUES (81, 1, '2019105120208', b'0');
INSERT INTO `courseclass_stu` VALUES (82, 1, '2019105120209', b'0');
INSERT INTO `courseclass_stu` VALUES (83, 1, '2019105120210', b'0');
INSERT INTO `courseclass_stu` VALUES (84, 1, '2019105120211', b'0');
INSERT INTO `courseclass_stu` VALUES (85, 1, '2019105120212', b'0');
INSERT INTO `courseclass_stu` VALUES (86, 1, '2019105120213', b'0');
INSERT INTO `courseclass_stu` VALUES (87, 1, '2019105120214', b'0');
INSERT INTO `courseclass_stu` VALUES (88, 1, '2019105120215', b'0');
INSERT INTO `courseclass_stu` VALUES (89, 1, '2019105120216', b'0');
INSERT INTO `courseclass_stu` VALUES (90, 1, '2019105120217', b'0');
INSERT INTO `courseclass_stu` VALUES (91, 1, '2019105120218', b'0');
INSERT INTO `courseclass_stu` VALUES (92, 1, '2019105120219', b'0');
INSERT INTO `courseclass_stu` VALUES (93, 1, '2019105120205', b'0');
INSERT INTO `courseclass_stu` VALUES (94, 1, '2019105120201', b'0');
INSERT INTO `courseclass_stu` VALUES (95, 1, '2019105120202', b'0');
INSERT INTO `courseclass_stu` VALUES (96, 5, '2019105120206', b'0');
INSERT INTO `courseclass_stu` VALUES (97, 5, '2019105120207', b'0');
INSERT INTO `courseclass_stu` VALUES (98, 5, '2019105120203', b'0');
INSERT INTO `courseclass_stu` VALUES (99, 5, '2019105120220', b'0');
INSERT INTO `courseclass_stu` VALUES (100, 5, '2019105120204', b'0');
INSERT INTO `courseclass_stu` VALUES (101, 5, '2019105120208', b'0');
INSERT INTO `courseclass_stu` VALUES (102, 5, '2019105120209', b'0');
INSERT INTO `courseclass_stu` VALUES (103, 5, '2019105120210', b'0');
INSERT INTO `courseclass_stu` VALUES (104, 5, '2019105120211', b'0');
INSERT INTO `courseclass_stu` VALUES (105, 5, '2019105120212', b'0');
INSERT INTO `courseclass_stu` VALUES (106, 5, '2019105120213', b'0');
INSERT INTO `courseclass_stu` VALUES (107, 5, '2019105120214', b'0');
INSERT INTO `courseclass_stu` VALUES (108, 5, '2019105120215', b'0');
INSERT INTO `courseclass_stu` VALUES (109, 5, '2019105120216', b'0');
INSERT INTO `courseclass_stu` VALUES (110, 5, '2019105120217', b'0');
INSERT INTO `courseclass_stu` VALUES (111, 5, '2019105120218', b'0');
INSERT INTO `courseclass_stu` VALUES (112, 5, '2019105120219', b'0');
INSERT INTO `courseclass_stu` VALUES (113, 5, '2019105120205', b'0');
INSERT INTO `courseclass_stu` VALUES (114, 5, '2019105120201', b'0');
INSERT INTO `courseclass_stu` VALUES (115, 5, '2019105120202', b'0');

-- ----------------------------
-- Table structure for exam_grade
-- ----------------------------
DROP TABLE IF EXISTS `exam_grade`;
CREATE TABLE `exam_grade`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '考试名称',
  `grade_id` int(11) NULL DEFAULT NULL COMMENT '考试班级id',
  `course_id` int(11) NULL DEFAULT NULL COMMENT '课程id',
  `paper_id` int(11) NULL DEFAULT NULL COMMENT '试卷id',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `time` int(11) NULL DEFAULT NULL COMMENT '考试时长',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `deleted` bit(1) NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_grade
-- ----------------------------
INSERT INTO `exam_grade` VALUES (27, '123', 1, 45, 23, '2023-03-30 00:00:00', '2023-04-01 00:00:00', 120, '2023-03-31 15:07:44', b'0');
INSERT INTO `exam_grade` VALUES (28, '期末考试', 5, 49, 24, '2023-03-30 00:00:00', '2023-04-01 00:00:00', 120, '2023-03-31 18:56:23', b'0');
INSERT INTO `exam_grade` VALUES (29, '123', 1, 46, 26, '2023-04-01 00:00:00', '2023-04-03 00:00:00', 120, '2023-04-01 17:11:00', b'0');
INSERT INTO `exam_grade` VALUES (30, '123', 1, 45, 26, '2023-04-01 00:00:00', '2023-04-20 00:00:00', 123, '2023-04-01 17:13:22', b'0');
INSERT INTO `exam_grade` VALUES (31, '数据库期末考试', 5, 49, 24, '2023-04-27 00:00:00', '2023-04-29 00:00:00', 120, '2023-04-27 13:16:02', b'0');

-- ----------------------------
-- Table structure for exam_paper
-- ----------------------------
DROP TABLE IF EXISTS `exam_paper`;
CREATE TABLE `exam_paper`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '试卷名称',
  `course_id` int(11) NULL DEFAULT NULL COMMENT '课程id',
  `score` int(11) NULL DEFAULT NULL COMMENT '总分',
  `question_count` int(11) NULL DEFAULT NULL COMMENT '题目数量',
  `suggest_time` int(11) NULL DEFAULT NULL COMMENT '考试时长',
  `frame_text_content_id` int(11) NULL DEFAULT NULL COMMENT '题目内容',
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `deleted` bit(1) NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_paper
-- ----------------------------
INSERT INTO `exam_paper` VALUES (23, '213', 46, 2, 1, 123, 143, '1001', '2023-03-31 14:18:29', b'1');
INSERT INTO `exam_paper` VALUES (24, '数据库期末考试', 49, 100, 24, 120, 149, '1002', '2023-03-31 18:55:38', b'0');
INSERT INTO `exam_paper` VALUES (25, '12', 46, 2, 1, 20, 151, '1001', '2023-04-01 15:21:43', b'1');
INSERT INTO `exam_paper` VALUES (26, '12123', 46, 23, 4, 12312, 156, '1001', '2023-04-01 17:02:52', b'1');
INSERT INTO `exam_paper` VALUES (27, 'Java考试', 45, 100, 30, 120, 159, '1001', '2023-04-04 13:15:22', b'0');
INSERT INTO `exam_paper` VALUES (28, '小测验', 45, 100, 28, 100, 332, '1001', '2023-04-27 14:44:20', b'0');
INSERT INTO `exam_paper` VALUES (29, '测试', 49, 100, 32, 100, 333, '1001', '2023-04-27 14:45:09', b'0');
INSERT INTO `exam_paper` VALUES (30, '小测验', 49, 100, 10, 30, 334, '1001', '2023-04-27 14:45:36', b'0');

-- ----------------------------
-- Table structure for exam_paper_answer
-- ----------------------------
DROP TABLE IF EXISTS `exam_paper_answer`;
CREATE TABLE `exam_paper_answer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_id` int(11) NULL DEFAULT NULL COMMENT '所属试卷id',
  `paper_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '试卷名称',
  `course_id` int(11) NULL DEFAULT NULL COMMENT '所属课程',
  `grade_id` int(11) NULL DEFAULT NULL COMMENT '班级id',
  `user_score` int(11) NULL DEFAULT NULL COMMENT '学生得分',
  `paper_score` int(11) NULL DEFAULT NULL COMMENT '试卷总分',
  `question_correct` int(11) NULL DEFAULT NULL COMMENT '做对题目数量',
  `question_count` int(11) NULL DEFAULT NULL COMMENT '题目数量',
  `do_time` int(11) NULL DEFAULT NULL COMMENT '做题时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '试卷状态',
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `text_content_id` int(11) NULL DEFAULT NULL COMMENT '答题详情',
  `exam_grade_id` int(11) NULL DEFAULT NULL COMMENT '考试详情id',
  `deleted` bit(1) NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_paper_answer
-- ----------------------------
INSERT INTO `exam_paper_answer` VALUES (32, 23, '213', 46, 1, 0, 2, 0, 1, 4, 2, '2019105120201', '2023-03-31 17:04:10', 144, 27, b'0');
INSERT INTO `exam_paper_answer` VALUES (33, 24, '123', 49, 5, 0, 22, 0, 4, 9, 2, '2019105120201', '2023-03-31 18:57:20', 150, 28, b'0');
INSERT INTO `exam_paper_answer` VALUES (34, 26, '12123', 46, 1, 9, 23, 3, 4, 8, 2, '2019105120201', '2023-04-01 17:16:25', 157, 30, b'0');

-- ----------------------------
-- Table structure for knows
-- ----------------------------
DROP TABLE IF EXISTS `knows`;
CREATE TABLE `knows`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '知识点',
  `section_id` int(11) NULL DEFAULT NULL COMMENT '所属章节',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述',
  `status` bit(1) NULL DEFAULT b'0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of knows
-- ----------------------------
INSERT INTO `knows` VALUES (1, '第一节', 1, NULL, b'0');
INSERT INTO `knows` VALUES (2, '第二节', 1, NULL, b'0');
INSERT INTO `knows` VALUES (3, '第一节', 2, NULL, b'0');
INSERT INTO `knows` VALUES (4, '第二节', 2, NULL, b'0');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_type` int(11) NULL DEFAULT NULL COMMENT '问题类型',
  `course_id` int(11) NULL DEFAULT NULL COMMENT '所属学科',
  `correct` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '选择题答案',
  `info_text_content_id` int(11) NULL DEFAULT NULL COMMENT '问答题答案',
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `deleted` bit(1) NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 243 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (61, 1, 46, 'A', 141, '1001', 0, '2023-03-31 13:25:11', b'1');
INSERT INTO `question` VALUES (62, 1, 46, 'A', 142, '1001', 0, '2023-03-31 13:44:29', b'1');
INSERT INTO `question` VALUES (63, 1, 49, 'B', 145, '1002', 0, '2023-03-31 18:52:10', b'0');
INSERT INTO `question` VALUES (64, 1, 49, 'B', 146, '1002', 0, '2023-03-31 18:52:25', b'0');
INSERT INTO `question` VALUES (65, 2, 49, 'A,C,D', 147, '1002', 0, '2023-03-31 18:54:44', b'0');
INSERT INTO `question` VALUES (66, 2, 49, 'C,D', 148, '1002', 0, '2023-03-31 18:54:56', b'0');
INSERT INTO `question` VALUES (67, 4, 46, '123123123', 152, '1001', 0, '2023-04-01 17:00:04', b'1');
INSERT INTO `question` VALUES (68, 5, 46, '12312412', 153, '1001', 0, '2023-04-01 17:00:11', b'1');
INSERT INTO `question` VALUES (69, 3, 46, 'A', 154, '1001', 0, '2023-04-01 17:00:17', b'1');
INSERT INTO `question` VALUES (70, 1, 45, 'A', 155, '1001', 0, '2023-04-01 17:01:11', b'1');
INSERT INTO `question` VALUES (71, 1, 49, 'A', 160, '1002', 0, '2023-04-27 12:11:02', b'0');
INSERT INTO `question` VALUES (72, 1, 49, 'C', 161, '1002', 0, '2023-04-27 12:11:30', b'0');
INSERT INTO `question` VALUES (73, 1, 49, 'A', 162, '1002', 0, '2023-04-27 12:12:13', b'0');
INSERT INTO `question` VALUES (74, 1, 49, 'C', 163, '1002', 0, '2023-04-27 12:12:42', b'0');
INSERT INTO `question` VALUES (75, 1, 49, 'C', 164, '1002', 0, '2023-04-27 12:13:08', b'0');
INSERT INTO `question` VALUES (76, 1, 49, 'C', 165, '1002', 0, '2023-04-27 12:13:36', b'0');
INSERT INTO `question` VALUES (77, 1, 49, 'C', 166, '1002', 0, '2023-04-27 12:14:06', b'0');
INSERT INTO `question` VALUES (78, 1, 49, 'D', 167, '1002', 0, '2023-04-27 12:14:52', b'0');
INSERT INTO `question` VALUES (79, 5, 49, '视图是从一个或多个基本表中导出来的表，它与基本表不同，他是一个虚表，数据库中只存放视图的定义，而不存放视图对应的数据，这些数据存放在原来的基本表中，当基本表中的数据发生变化，从视图中查询出的数据也随之改变。视图一经定义就可以像基本表一样被查询、删除，也可以在一个视图之上再定义新的视图，但是对视图的更新操作有限制。', 168, '1002', 0, '2023-04-27 12:15:49', b'0');
INSERT INTO `question` VALUES (80, 5, 49, '原子性：事务中包括所有操作，要么都做，要么都不做。 一执行：事务必须使数据库从一个一致性状态变到另一个一致性状态。 隔离性：一个事务内部的操作以及使用的数据对并发的其他事务是隔离的。 持久性：事务一旦提交，对数据库的改变是永久的。', 169, '1002', 0, '2023-04-27 12:16:13', b'0');
INSERT INTO `question` VALUES (81, 5, 49, '若属性F是基本关系R的外码，他与基本关系S的主码Ks相对应，则对于R中每个元组在F上的值必须为取空值，或者等于S中某个元组的主码值。', 170, '1002', 0, '2023-04-27 12:16:35', b'0');
INSERT INTO `question` VALUES (82, 1, 49, 'B', 171, '1002', 0, '2023-04-27 12:17:32', b'0');
INSERT INTO `question` VALUES (83, 1, 49, 'D', 172, '1002', 0, '2023-04-27 12:18:07', b'0');
INSERT INTO `question` VALUES (84, 1, 49, 'B', 173, '1002', 0, '2023-04-27 12:18:48', b'0');
INSERT INTO `question` VALUES (85, 1, 49, 'C', 174, '1002', 0, '2023-04-27 12:19:17', b'0');
INSERT INTO `question` VALUES (86, 1, 49, 'A', 175, '1002', 0, '2023-04-27 12:19:41', b'0');
INSERT INTO `question` VALUES (87, 1, 49, 'B', 176, '1002', 0, '2023-04-27 12:20:24', b'0');
INSERT INTO `question` VALUES (88, 1, 49, 'D', 177, '1002', 0, '2023-04-27 12:20:58', b'0');
INSERT INTO `question` VALUES (89, 1, 49, 'D', 178, '1002', 0, '2023-04-27 12:21:24', b'0');
INSERT INTO `question` VALUES (90, 1, 49, 'A', 179, '1002', 0, '2023-04-27 12:21:54', b'0');
INSERT INTO `question` VALUES (91, 4, 49, '3.0000', 180, '1002', 0, '2023-04-27 12:22:28', b'0');
INSERT INTO `question` VALUES (92, 4, 49, 'vend_id', 181, '1002', 0, '2023-04-27 12:22:47', b'0');
INSERT INTO `question` VALUES (93, 4, 49, '-', 182, '1002', 0, '2023-04-27 12:23:01', b'0');
INSERT INTO `question` VALUES (94, 4, 49, '数据库.所有者名称.对象名称', 183, '1002', 0, '2023-04-27 12:23:20', b'0');
INSERT INTO `question` VALUES (95, 4, 49, '“1+2”', 184, '1002', 0, '2023-04-27 12:23:39', b'0');
INSERT INTO `question` VALUES (96, 4, 49, 'net start mysql5', 185, '1002', 0, '2023-04-27 12:23:54', b'0');
INSERT INTO `question` VALUES (97, 4, 49, '多用户', 186, '1002', 0, '2023-04-27 12:24:06', b'0');
INSERT INTO `question` VALUES (98, 4, 49, '0', 187, '1002', 0, '2023-04-27 12:24:18', b'0');
INSERT INTO `question` VALUES (99, 4, 49, 'create table', 188, '1002', 0, '2023-04-27 12:24:28', b'0');
INSERT INTO `question` VALUES (100, 4, 49, 'ALTER TABLE', 189, '1002', 0, '2023-04-27 12:24:38', b'0');
INSERT INTO `question` VALUES (101, 4, 49, 'INT', 190, '1002', 0, '2023-04-27 12:24:47', b'0');
INSERT INTO `question` VALUES (102, 4, 49, '关键字段或索引字段', 191, '1002', 0, '2023-04-27 12:25:08', b'0');
INSERT INTO `question` VALUES (103, 4, 49, '256', 192, '1002', 0, '2023-04-27 12:25:18', b'0');
INSERT INTO `question` VALUES (104, 4, 49, '开放式数据库连接', 193, '1002', 0, '2023-04-27 12:25:27', b'0');
INSERT INTO `question` VALUES (105, 1, 49, 'B', 194, '1002', 0, '2023-04-27 12:26:44', b'0');
INSERT INTO `question` VALUES (106, 1, 49, 'C', 195, '1002', 0, '2023-04-27 12:27:05', b'0');
INSERT INTO `question` VALUES (107, 2, 49, 'A,B,C,D', 196, '1002', 0, '2023-04-27 12:31:23', b'0');
INSERT INTO `question` VALUES (108, 2, 49, 'B,C,D', 197, '1002', 0, '2023-04-27 12:32:15', b'0');
INSERT INTO `question` VALUES (109, 2, 49, 'A,B,D', 198, '1002', 0, '2023-04-27 12:33:03', b'0');
INSERT INTO `question` VALUES (110, 2, 49, 'A,B,C,D', 199, '1002', 0, '2023-04-27 12:35:03', b'0');
INSERT INTO `question` VALUES (111, 2, 49, 'B,D', 200, '1002', 0, '2023-04-27 12:36:38', b'0');
INSERT INTO `question` VALUES (112, 2, 49, 'A,B,D', 201, '1002', 0, '2023-04-27 12:37:46', b'0');
INSERT INTO `question` VALUES (113, 2, 49, 'B,C,D', 202, '1002', 0, '2023-04-27 12:38:38', b'0');
INSERT INTO `question` VALUES (114, 2, 49, 'A,B', 203, '1002', 0, '2023-04-27 12:39:26', b'0');
INSERT INTO `question` VALUES (115, 1, 49, 'B', 204, '1002', 0, '2023-04-27 12:40:36', b'0');
INSERT INTO `question` VALUES (116, 1, 49, 'C', 205, '1002', 0, '2023-04-27 12:41:05', b'0');
INSERT INTO `question` VALUES (117, 1, 49, 'D', 206, '1002', 0, '2023-04-27 12:41:28', b'0');
INSERT INTO `question` VALUES (118, 4, 49, '逗号', 207, '1002', 0, '2023-04-27 12:42:39', b'0');
INSERT INTO `question` VALUES (119, 4, 49, '表 a1 已经存在', 208, '1002', 0, '2023-04-27 12:43:01', b'0');
INSERT INTO `question` VALUES (120, 4, 49, 'text', 209, '1002', 0, '2023-04-27 12:43:19', b'0');
INSERT INTO `question` VALUES (121, 4, 49, '”张三\\n 李四”', 210, '1002', 0, '2023-04-27 12:43:45', b'0');
INSERT INTO `question` VALUES (122, 1, 49, 'B', 211, '1002', 0, '2023-04-27 12:44:58', b'0');
INSERT INTO `question` VALUES (123, 1, 49, 'D', 212, '1002', 0, '2023-04-27 12:45:25', b'0');
INSERT INTO `question` VALUES (124, 1, 49, 'B', 213, '1002', 0, '2023-04-27 12:46:07', b'0');
INSERT INTO `question` VALUES (125, 1, 49, 'C', 214, '1002', 0, '2023-04-27 12:47:07', b'0');
INSERT INTO `question` VALUES (126, 1, 49, 'B', 215, '1002', 0, '2023-04-27 12:47:50', b'0');
INSERT INTO `question` VALUES (127, 5, 49, '触发器是一个被指定关联到一个表的数据对象，触发器不需要调用，当对一个表的特别事件出现时，它就会被激活。', 216, '1002', 0, '2023-04-27 12:48:37', b'0');
INSERT INTO `question` VALUES (128, 5, 49, '数据库主键，指的是一个列或多列的组合，其值能唯一地标识表中的每一行，通过它可强制表的实体完整性。主键主要是用于其他表的外键关联，以及本记录的修改与删除。', 217, '1002', 0, '2023-04-27 12:48:48', b'0');
INSERT INTO `question` VALUES (129, 5, 49, 'drop database mydb;', 218, '1002', 0, '2023-04-27 12:49:00', b'0');
INSERT INTO `question` VALUES (130, 5, 49, 'describe xs; 或 show create table xs;', 219, '1002', 0, '2023-04-27 12:49:10', b'0');
INSERT INTO `question` VALUES (131, 5, 49, '数据库字符集、数据库连接字符集、客户端字符集、显示结果字符集不支持gbk。set names gbk;', 220, '1002', 0, '2023-04-27 12:49:39', b'0');
INSERT INTO `question` VALUES (132, 5, 49, '保持数据一致性，完整性，主要目的是控制存储在外键表中的数据。 使两张表形成关联，外键只能引用外表中的列的值或使用空值', 221, '1002', 0, '2023-04-27 12:49:53', b'0');
INSERT INTO `question` VALUES (133, 5, 49, '关系数据库，是建立在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。现实世界中的各种实体以及实体之间的各种联系均用关系模型来表示。关系型数据库是由多张能互相联接的二维行列表格组成的数据库。', 222, '1002', 0, '2023-04-27 12:50:04', b'0');
INSERT INTO `question` VALUES (134, 5, 49, 'create table x like y;', 223, '1002', 0, '2023-04-27 12:50:16', b'0');
INSERT INTO `question` VALUES (135, 3, 49, 'A', 224, '1002', 0, '2023-04-27 12:51:21', b'0');
INSERT INTO `question` VALUES (136, 3, 49, 'A', 225, '1002', 0, '2023-04-27 12:51:35', b'0');
INSERT INTO `question` VALUES (137, 3, 49, 'B', 226, '1002', 0, '2023-04-27 12:51:42', b'0');
INSERT INTO `question` VALUES (138, 3, 49, 'A', 227, '1002', 0, '2023-04-27 12:51:52', b'0');
INSERT INTO `question` VALUES (139, 3, 49, 'B', 228, '1002', 0, '2023-04-27 12:52:04', b'0');
INSERT INTO `question` VALUES (140, 3, 49, 'B', 229, '1002', 0, '2023-04-27 12:52:13', b'0');
INSERT INTO `question` VALUES (141, 3, 49, 'B', 230, '1002', 0, '2023-04-27 12:52:23', b'0');
INSERT INTO `question` VALUES (142, 3, 49, 'A', 231, '1002', 0, '2023-04-27 12:52:35', b'0');
INSERT INTO `question` VALUES (143, 3, 49, 'B', 232, '1002', 0, '2023-04-27 12:52:46', b'0');
INSERT INTO `question` VALUES (144, 3, 49, 'A', 233, '1002', 0, '2023-04-27 12:52:55', b'0');
INSERT INTO `question` VALUES (145, 3, 49, 'B', 234, '1002', 0, '2023-04-27 12:53:03', b'0');
INSERT INTO `question` VALUES (146, 3, 49, 'B', 235, '1002', 0, '2023-04-27 12:53:12', b'0');
INSERT INTO `question` VALUES (147, 3, 49, 'B', 236, '1002', 0, '2023-04-27 12:53:23', b'0');
INSERT INTO `question` VALUES (148, 3, 49, 'A', 237, '1002', 0, '2023-04-27 12:53:33', b'0');
INSERT INTO `question` VALUES (149, 3, 49, 'A', 238, '1002', 0, '2023-04-27 12:53:43', b'0');
INSERT INTO `question` VALUES (150, 3, 49, 'A', 239, '1002', 0, '2023-04-27 12:53:52', b'0');
INSERT INTO `question` VALUES (151, 3, 49, 'A', 240, '1002', 0, '2023-04-27 12:54:01', b'0');
INSERT INTO `question` VALUES (152, 3, 49, 'A', 241, '1002', 0, '2023-04-27 12:54:10', b'0');
INSERT INTO `question` VALUES (153, 3, 49, 'B', 242, '1002', 0, '2023-04-27 12:54:18', b'0');
INSERT INTO `question` VALUES (154, 3, 49, 'B', 243, '1002', 0, '2023-04-27 12:54:31', b'0');
INSERT INTO `question` VALUES (155, 1, 49, 'C', 244, '1002', 0, '2023-04-27 12:55:50', b'0');
INSERT INTO `question` VALUES (156, 1, 49, 'C', 245, '1002', 0, '2023-04-27 12:56:38', b'0');
INSERT INTO `question` VALUES (157, 1, 49, 'B', 246, '1002', 0, '2023-04-27 12:57:10', b'0');
INSERT INTO `question` VALUES (158, 1, 49, 'D', 247, '1002', 0, '2023-04-27 12:58:32', b'0');
INSERT INTO `question` VALUES (159, 1, 49, 'D', 248, '1002', 0, '2023-04-27 12:58:54', b'0');
INSERT INTO `question` VALUES (160, 1, 49, 'C', 249, '1002', 0, '2023-04-27 12:59:52', b'0');
INSERT INTO `question` VALUES (161, 1, 49, 'C', 250, '1002', 0, '2023-04-27 13:00:29', b'0');
INSERT INTO `question` VALUES (162, 1, 49, 'D', 251, '1002', 0, '2023-04-27 13:00:56', b'0');
INSERT INTO `question` VALUES (163, 1, 49, 'C', 252, '1002', 0, '2023-04-27 13:01:39', b'0');
INSERT INTO `question` VALUES (164, 1, 49, 'B', 253, '1002', 0, '2023-04-27 13:02:12', b'0');
INSERT INTO `question` VALUES (165, 1, 49, 'D', 254, '1002', 0, '2023-04-27 13:02:45', b'0');
INSERT INTO `question` VALUES (166, 1, 49, 'D', 255, '1002', 0, '2023-04-27 13:03:07', b'0');
INSERT INTO `question` VALUES (167, 1, 49, 'C', 256, '1002', 0, '2023-04-27 13:03:29', b'0');
INSERT INTO `question` VALUES (168, 1, 49, 'D', 257, '1002', 0, '2023-04-27 13:04:02', b'0');
INSERT INTO `question` VALUES (169, 1, 49, 'A', 258, '1002', 0, '2023-04-27 13:04:31', b'0');
INSERT INTO `question` VALUES (170, 1, 45, 'B', 259, '1001', 0, '2023-04-27 13:55:19', b'0');
INSERT INTO `question` VALUES (171, 1, 45, 'B', 260, '1001', 0, '2023-04-27 13:55:41', b'0');
INSERT INTO `question` VALUES (172, 1, 45, 'A', 261, '1001', 0, '2023-04-27 13:56:23', b'0');
INSERT INTO `question` VALUES (173, 3, 45, 'A', 262, '1001', 0, '2023-04-27 13:57:08', b'0');
INSERT INTO `question` VALUES (174, 3, 45, 'B', 263, '1001', 0, '2023-04-27 13:57:16', b'0');
INSERT INTO `question` VALUES (175, 3, 45, 'B', 264, '1001', 0, '2023-04-27 13:57:25', b'0');
INSERT INTO `question` VALUES (176, 3, 45, 'B', 265, '1001', 0, '2023-04-27 13:57:33', b'0');
INSERT INTO `question` VALUES (177, 3, 45, 'A', 266, '1001', 0, '2023-04-27 13:57:45', b'0');
INSERT INTO `question` VALUES (178, 3, 45, 'A', 267, '1001', 0, '2023-04-27 13:57:53', b'0');
INSERT INTO `question` VALUES (179, 3, 45, 'B', 268, '1001', 0, '2023-04-27 13:58:03', b'0');
INSERT INTO `question` VALUES (180, 3, 45, 'A', 269, '1001', 0, '2023-04-27 13:58:11', b'0');
INSERT INTO `question` VALUES (181, 3, 45, 'B', 270, '1001', 0, '2023-04-27 13:58:22', b'0');
INSERT INTO `question` VALUES (182, 1, 45, 'A', 271, '1001', 0, '2023-04-27 13:58:48', b'0');
INSERT INTO `question` VALUES (183, 1, 45, 'A', 272, '1001', 0, '2023-04-27 13:59:06', b'0');
INSERT INTO `question` VALUES (184, 1, 45, 'D', 273, '1001', 0, '2023-04-27 13:59:36', b'0');
INSERT INTO `question` VALUES (185, 1, 45, 'B', 274, '1001', 0, '2023-04-27 14:01:53', b'0');
INSERT INTO `question` VALUES (186, 1, 45, 'D', 275, '1001', 0, '2023-04-27 14:02:33', b'0');
INSERT INTO `question` VALUES (187, 1, 45, 'D', 276, '1001', 0, '2023-04-27 14:03:17', b'0');
INSERT INTO `question` VALUES (188, 1, 45, 'C', 277, '1001', 0, '2023-04-27 14:03:52', b'0');
INSERT INTO `question` VALUES (189, 1, 45, 'D', 278, '1001', 0, '2023-04-27 14:05:15', b'0');
INSERT INTO `question` VALUES (190, 1, 45, 'C', 279, '1001', 0, '2023-04-27 14:06:26', b'0');
INSERT INTO `question` VALUES (191, 1, 45, 'A', 280, '1001', 0, '2023-04-27 14:07:21', b'0');
INSERT INTO `question` VALUES (192, 1, 45, 'D', 281, '1001', 0, '2023-04-27 14:07:57', b'0');
INSERT INTO `question` VALUES (193, 1, 45, 'B', 282, '1001', 0, '2023-04-27 14:08:53', b'0');
INSERT INTO `question` VALUES (194, 1, 45, 'D', 283, '1001', 0, '2023-04-27 14:09:59', b'0');
INSERT INTO `question` VALUES (195, 3, 45, 'B', 284, '1001', 0, '2023-04-27 14:10:24', b'0');
INSERT INTO `question` VALUES (196, 3, 45, 'B', 285, '1001', 0, '2023-04-27 14:10:46', b'0');
INSERT INTO `question` VALUES (197, 2, 45, 'A,B,C', 286, '1001', 0, '2023-04-27 14:11:40', b'0');
INSERT INTO `question` VALUES (198, 2, 45, 'A,B,C', 287, '1001', 0, '2023-04-27 14:12:28', b'0');
INSERT INTO `question` VALUES (199, 2, 45, 'A,B,C,D', 288, '1001', 0, '2023-04-27 14:13:15', b'0');
INSERT INTO `question` VALUES (200, 2, 45, 'A,B,C', 289, '1001', 0, '2023-04-27 14:14:08', b'0');
INSERT INTO `question` VALUES (201, 2, 45, 'A,B,C', 290, '1001', 0, '2023-04-27 14:14:58', b'0');
INSERT INTO `question` VALUES (202, 2, 45, 'C,D', 291, '1001', 0, '2023-04-27 14:15:36', b'0');
INSERT INTO `question` VALUES (203, 2, 45, 'A,C', 292, '1001', 0, '2023-04-27 14:16:29', b'0');
INSERT INTO `question` VALUES (204, 2, 45, 'A,B,C', 293, '1001', 0, '2023-04-27 14:17:30', b'0');
INSERT INTO `question` VALUES (205, 3, 45, 'B', 294, '1001', 0, '2023-04-27 14:18:10', b'0');
INSERT INTO `question` VALUES (206, 3, 45, 'B', 295, '1001', 0, '2023-04-27 14:18:42', b'0');
INSERT INTO `question` VALUES (207, 3, 45, 'B', 296, '1001', 0, '2023-04-27 14:19:13', b'0');
INSERT INTO `question` VALUES (208, 3, 45, 'B', 297, '1001', 0, '2023-04-27 14:19:32', b'0');
INSERT INTO `question` VALUES (209, 3, 45, 'B', 298, '1001', 0, '2023-04-27 14:19:58', b'0');
INSERT INTO `question` VALUES (210, 4, 45, '字符串数组', 299, '1001', 0, '2023-04-27 14:21:02', b'0');
INSERT INTO `question` VALUES (211, 4, 45, '变量类型', 300, '1001', 0, '2023-04-27 14:22:42', b'0');
INSERT INTO `question` VALUES (212, 4, 45, 'Java虚拟机', 301, '1001', 0, '2023-04-27 14:22:56', b'0');
INSERT INTO `question` VALUES (213, 4, 45, '8', 302, '1001', 0, '2023-04-27 14:23:12', b'0');
INSERT INTO `question` VALUES (214, 4, 45, '不是', 303, '1001', 0, '2023-04-27 14:23:22', b'0');
INSERT INTO `question` VALUES (215, 4, 45, '抽象类', 304, '1001', 0, '2023-04-27 14:23:31', b'0');
INSERT INTO `question` VALUES (216, 4, 45, '不可变的', 305, '1001', 0, '2023-04-27 14:23:41', b'0');
INSERT INTO `question` VALUES (217, 4, 45, 'Calendar', 306, '1001', 0, '2023-04-27 14:23:52', b'0');
INSERT INTO `question` VALUES (218, 4, 45, ' 不可被继承', 307, '1001', 0, '2023-04-27 14:24:05', b'0');
INSERT INTO `question` VALUES (219, 4, 45, 'InputStreamReader和OutputStreamWriter', 308, '1001', 0, '2023-04-27 14:24:15', b'0');
INSERT INTO `question` VALUES (220, 4, 45, '字节', 309, '1001', 0, '2023-04-27 14:24:24', b'0');
INSERT INTO `question` VALUES (221, 4, 45, ' Runnable', 310, '1001', 0, '2023-04-27 14:24:36', b'0');
INSERT INTO `question` VALUES (222, 4, 45, 'yield()', 311, '1001', 0, '2023-04-27 14:24:44', b'0');
INSERT INTO `question` VALUES (223, 4, 45, 'Utils.class', 312, '1001', 0, '2023-04-27 14:24:54', b'0');
INSERT INTO `question` VALUES (224, 4, 45, 'Socket', 313, '1001', 0, '2023-04-27 14:25:05', b'0');
INSERT INTO `question` VALUES (225, 5, 45, '&和&&都可作为逻辑运算符“与”使用，但是&&是“短路与”，运算时先判断符号前面的表达式的值，如果能够确定整个表达式的值，则不进行符号后面的表达式的运算。 另外，&也可作为位运算符使用。', 314, '1001', 0, '2023-04-27 14:25:40', b'0');
INSERT INTO `question` VALUES (226, 5, 45, '只有接口能继承接口。 接口中的所有变量被自动设为final。 接口的执行比抽象类要慢。 接口中方法的作用域只能是public的，抽象类则无此限制。 抽象类可以实现方法，但接口不行。接口只包含方法签名，不包含方法体。 一个类可以实现多个接口，但只能继承一个抽象类。', 315, '1001', 0, '2023-04-27 14:25:51', b'0');
INSERT INTO `question` VALUES (227, 5, 45, 'TCP（Transmission Control Protocol，传输控制协议）是基于连接的协议，也就是说，在正式收发数据前，必须和对方建立可靠的连接。一个TCP连接必须要经过三次“对话”才能建立起来，其中的过程非常复杂，我们这里只做简单、形象的介绍，你只要做到能够理解这个过程即可。我们来看看这三次对话的简单过程：主机A向主机B发出连接请求数据包：“我想给你发数据，可以吗？”，这是第一次对话；主机B向主机A发送同意连接和要求同步（同步就是两台主机一个在发送，一个在接收，协调工作）的数据包：“可以，你什么时候发？”，这是第二次对话；主机A再发出一个数据包确认主机B的要求同步：“我现在就发，你接着吧！”，这是第三次对话。三次“对话”的目的是使数据包的发送和接收同步，经过三次“对话”之后，主机A才向主机B正式发送数据。  UDP（User Data Protocol，用户数据报协议）是与TCP相对应的协议。它是面向非连接的协议，它不与对方建立连接，而是直接就把数据包发送过去！  UDP适用于一次只传送少量数据、对可靠性要求不高的应用环境。比如，我们经常使用“ping”命令来测试两台主机之间TCP/IP通信是否正常，其实“ping”命令的原理就是向对方主机发送UDP数据包，然后对方主机确认收到数据包，如果数据包是否到达的消息及时反馈回来，那么网络就是通的。UDP协议是面向非连接的协议，没有建立连接的过程。正因为UDP协议没有连接的过程，所以它的通信效果高；但也正因为如此，它的可靠性不如TCP协议高。QQ就使用UDP发消息，因此有时会出现收不到 ', 316, '1001', 0, '2023-04-27 14:26:03', b'0');
INSERT INTO `question` VALUES (228, 5, 45, '两个进程都在等待对方执行完毕才能继续往下执行的时候就发生了死锁。结果就是两个进程都陷入了无限的等待中。', 317, '1001', 0, '2023-04-27 14:26:33', b'0');
INSERT INTO `question` VALUES (229, 2, 45, 'B,C,D', 318, '1001', 0, '2023-04-27 14:29:20', b'0');
INSERT INTO `question` VALUES (230, 2, 45, 'B,C', 319, '1001', 0, '2023-04-27 14:29:43', b'0');
INSERT INTO `question` VALUES (231, 2, 45, 'A,B', 320, '1001', 0, '2023-04-27 14:30:16', b'0');
INSERT INTO `question` VALUES (232, 2, 45, 'B,C,D', 321, '1001', 0, '2023-04-27 14:30:41', b'0');
INSERT INTO `question` VALUES (233, 2, 45, 'A,C', 322, '1001', 0, '2023-04-27 14:31:04', b'0');
INSERT INTO `question` VALUES (234, 2, 45, 'A,C,D', 323, '1001', 0, '2023-04-27 14:31:32', b'0');
INSERT INTO `question` VALUES (235, 2, 45, 'B,C', 324, '1001', 0, '2023-04-27 14:32:05', b'0');
INSERT INTO `question` VALUES (236, 2, 45, 'B,D', 325, '1001', 0, '2023-04-27 14:33:47', b'0');
INSERT INTO `question` VALUES (237, 5, 45, 'override（重写） 1.方法名、参数、返回值相同。 2、重写方法的访问修饰符一定要大于或等于被重写的方法。 3、重写方法不能抛出新的异常或者抛出比被重写方法更宽泛的异常 4、存在于父类和子类之间。 5、被final修饰的方法不能重写 overload（重载） 1、参数类型、个数、顺序至少有一个不相同。 2、不能重载只有返回值不同的方法名。 3、存在于同类中。', 326, '1001', 0, '2023-04-27 14:34:46', b'0');
INSERT INTO `question` VALUES (238, 5, 45, '1、this调用本类中的属性，也就是类中的成员变量； 2、this调用本类中的其他方法； 3、this调用本类中的其他构造方法，调用时要放在构造方法的首行。', 327, '1001', 0, '2023-04-27 14:34:59', b'0');
INSERT INTO `question` VALUES (239, 5, 45, 'private修饰的成员变量和函数只能在类本身和内部类中被访问。 protected 修饰的成员变量和函数能被类本身、子类及同一个包中的类访问。 public修饰的成员变量和函数可以被类、子类、同一个包中的类以及任意其他类访问。 默认情况（不写）下，属于一种包访问，即能被类本身以及同一个包中的类访问。', 328, '1001', 0, '2023-04-27 14:35:15', b'0');
INSERT INTO `question` VALUES (240, 5, 45, '1、Integer是int的包装类；int是基本数据类型； 2、Integer变量必须实例化后才能使用；int变量不需要； 3、Integer实际是对象的引用，指向此new的Integer对象；int是直接存储数据值 ； 4、Integer的默认值是null；int的默认值是0。', 329, '1001', 0, '2023-04-27 14:36:05', b'0');
INSERT INTO `question` VALUES (241, 5, 45, '1.继承 2.封装 3.多态性 （1）继承：就是保留父类的属性，开扩新的东西。通过子类可以实现继承，子类继承父类的所有状态和行为，同时添加自身的状态和行为。 （2）封装：就是类的私有化。将代码及处理数据绑定在一起的一种编程机制，该机制保证程序和数据不受外部干扰。 （3）多态：是允许将父对象设置成为和一个和多个它的子对象相等的技术。包括重载和重写。重载为编译时多态，重写是运行时多态。', 330, '1001', 0, '2023-04-27 14:36:35', b'0');
INSERT INTO `question` VALUES (242, 5, 45, ' 构造方法 普通方法 静态方法', 331, '1001', 0, '2023-04-27 14:36:47', b'0');

-- ----------------------------
-- Table structure for question_error
-- ----------------------------
DROP TABLE IF EXISTS `question_error`;
CREATE TABLE `question_error`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '题目id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `correct` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '正确答案',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '学生答案',
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '得分',
  `question_score` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '题分',
  `paper_id` int(11) NULL DEFAULT NULL COMMENT '所属试卷',
  `deleted` bit(1) NULL DEFAULT b'0' COMMENT '是否删除',
  `idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人学号',
  `course_id` int(11) NULL DEFAULT NULL COMMENT '所属课程',
  `exam_grade_id` int(11) NULL DEFAULT NULL COMMENT '所属班级考试',
  `itemOrder` int(11) NULL DEFAULT NULL COMMENT '题目序号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question_error
-- ----------------------------
INSERT INTO `question_error` VALUES (95, '62', '2023-03-31 17:04:10', 'A', '', '0', '2', 23, b'1', '2019105120201', 46, 27, 1);
INSERT INTO `question_error` VALUES (96, '63', '2023-03-31 18:57:20', 'A', 'C', '0', '5', 24, b'0', '2019105120201', 49, 28, 1);
INSERT INTO `question_error` VALUES (97, '64', '2023-03-31 18:57:20', 'B', 'C', '0', '5', 24, b'0', '2019105120201', 49, 28, 2);
INSERT INTO `question_error` VALUES (98, '66', '2023-03-31 18:57:20', 'A,B', 'B', '0', '6', 24, b'0', '2019105120201', 49, 28, 3);
INSERT INTO `question_error` VALUES (99, '65', '2023-03-31 18:57:20', 'C,D', 'C', '0', '6', 24, b'0', '2019105120201', 49, 28, 4);
INSERT INTO `question_error` VALUES (100, '62', '2023-04-01 17:16:25', 'A', 'B', '0', '5', 26, b'1', '2019105120201', 46, 30, 1);

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '章节名称',
  `subject_id` int(11) NULL DEFAULT NULL COMMENT '所属课程',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES (1, '第一章', 1, NULL);
INSERT INTO `section` VALUES (2, '第二章', 1, NULL);
INSERT INTO `section` VALUES (3, '第三章', 1, NULL);
INSERT INTO `section` VALUES (4, '第四章', 1, NULL);

-- ----------------------------
-- Table structure for section_knows
-- ----------------------------
DROP TABLE IF EXISTS `section_knows`;
CREATE TABLE `section_knows`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '所属章节',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '简介',
  `status` int(5) NULL DEFAULT NULL COMMENT '状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` bit(1) NULL DEFAULT NULL COMMENT '是否删除',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `subject_id` int(11) NULL DEFAULT NULL COMMENT '所属课程',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of section_knows
-- ----------------------------
INSERT INTO `section_knows` VALUES (1, '绪论', NULL, '无', 0, '2023-03-13 12:46:04', NULL, b'0', 1, 1);
INSERT INTO `section_knows` VALUES (2, '第一章', NULL, '无', 0, '2023-03-13 12:46:04', NULL, b'0', 2, 1);
INSERT INTO `section_knows` VALUES (3, '第二章', NULL, '无', 0, '2023-03-13 12:46:04', NULL, b'0', 3, 1);
INSERT INTO `section_knows` VALUES (4, '第三章', NULL, '无', 0, '2023-03-13 12:46:04', NULL, b'0', 4, 1);
INSERT INTO `section_knows` VALUES (5, '第四章', NULL, '无', 0, '2023-03-13 12:46:04', NULL, b'0', 5, 1);
INSERT INTO `section_knows` VALUES (6, '第一节', 2, '无', 0, '2023-03-13 12:49:20', NULL, b'0', 1, NULL);
INSERT INTO `section_knows` VALUES (7, '第二节', 2, '无', 0, '2023-03-13 12:49:20', NULL, b'0', 2, NULL);
INSERT INTO `section_knows` VALUES (8, '第一节', 3, '无', 0, '2023-03-13 12:49:20', NULL, b'0', 1, NULL);
INSERT INTO `section_knows` VALUES (9, '第二节', 3, '无', 0, '2023-03-13 12:49:20', NULL, b'0', 2, NULL);

-- ----------------------------
-- Table structure for semester
-- ----------------------------
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '学期名称',
  `deleted` bit(1) NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of semester
-- ----------------------------
INSERT INTO `semester` VALUES (1, '2019-2020第一学期', b'0');
INSERT INTO `semester` VALUES (2, '2019-2020第二学期', b'0');
INSERT INTO `semester` VALUES (3, '2020-2021第一学期', b'0');
INSERT INTO `semester` VALUES (4, '2020-2021第二学期', b'0');
INSERT INTO `semester` VALUES (5, '2021-2022第一学期', b'0');
INSERT INTO `semester` VALUES (6, '2021-2022第二学期', b'0');
INSERT INTO `semester` VALUES (7, '2022-2023第一学期', b'0');
INSERT INTO `semester` VALUES (8, '2022-2023第二学期', b'0');

-- ----------------------------
-- Table structure for smart_test
-- ----------------------------
DROP TABLE IF EXISTS `smart_test`;
CREATE TABLE `smart_test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NULL DEFAULT NULL COMMENT '课程id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '班级id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `deleted` bit(1) NULL DEFAULT b'0' COMMENT '是否删除',
  `text_content_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smart_test
-- ----------------------------
INSERT INTO `smart_test` VALUES (2, 46, '智能测试1', '2023-04-01 17:33:34', b'0', 158);

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '课程名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` bit(1) NULL DEFAULT b'0' COMMENT '是否删除',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '简介',
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `semester_id` int(11) NULL DEFAULT NULL COMMENT '学期id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES (45, 'Java程序设计基础', '2023-03-26 19:14:27', '2023-04-27 13:53:37', b'0', '123', '1001', 7);
INSERT INTO `subject` VALUES (46, '网页设计与开发', '2023-03-30 22:10:38', '2023-04-27 13:53:45', b'0', '12', '1001', 7);
INSERT INTO `subject` VALUES (47, '高等数学', '2023-03-30 22:43:09', '2023-03-31 01:16:31', b'1', '123', '1001', 1);
INSERT INTO `subject` VALUES (48, '高等数学', '2023-03-30 23:04:29', '2023-03-31 00:08:35', b'1', '12', '1001', 2);
INSERT INTO `subject` VALUES (49, '数据库', '2023-03-31 18:50:31', NULL, b'0', '123123123123', '1002', 7);

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `os` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `status` int(10) NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 234 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES (15, '2023-03-20 12:23:21', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (16, '2023-03-20 12:26:26', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (17, '2023-03-20 12:27:26', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows10.0', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (18, '2023-03-20 12:29:25', '2019105120201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (22, '2023-03-20 23:44:40', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (23, '2023-03-22 14:28:12', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (24, '2023-03-22 14:34:44', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (29, '2023-03-22 14:43:39', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (30, '2023-03-22 15:30:36', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (31, '2023-03-22 15:31:02', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (32, '2023-03-22 15:54:11', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (33, '2023-03-22 16:01:30', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (34, '2023-03-24 16:22:54', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (35, '2023-03-24 16:24:06', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (36, '2023-03-25 17:30:47', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (37, '2023-03-25 18:47:13', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (38, '2023-03-25 18:52:11', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (39, '2023-03-25 18:52:52', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (40, '2023-03-25 18:53:41', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (41, '2023-03-25 18:54:22', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (42, '2023-03-26 13:39:33', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (43, '2023-03-26 14:23:03', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (44, '2023-03-26 14:23:13', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (45, '2023-03-26 14:28:19', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (46, '2023-03-26 14:28:49', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (47, '2023-03-26 14:29:25', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (48, '2023-03-26 14:30:54', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (49, '2023-03-26 14:31:24', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (50, '2023-03-26 14:35:35', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (51, '2023-03-26 14:35:43', '2019105120207', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 1, '用户账号被封禁,登录失败');
INSERT INTO `sys_login_log` VALUES (52, '2023-03-26 14:35:53', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (53, '2023-03-26 14:36:03', '2019105120208', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (54, '2023-03-26 14:55:48', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (55, '2023-03-26 14:57:45', '2019105120208', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (56, '2023-03-26 15:09:25', '2019105120208', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (57, '2023-03-26 15:10:06', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (58, '2023-03-26 15:16:00', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (59, '2023-03-26 15:20:00', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (60, '2023-03-26 15:21:30', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (61, '2023-03-26 15:29:32', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (62, '2023-03-26 15:30:08', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (63, '2023-03-26 15:30:10', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (64, '2023-03-26 15:30:21', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (65, '2023-03-26 15:32:45', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (66, '2023-03-26 15:33:39', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (67, '2023-03-26 15:34:45', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (68, '2023-03-26 15:34:55', '2019105120204', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (69, '2023-03-26 15:37:27', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (70, '2023-03-26 15:42:06', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (71, '2023-03-26 15:42:07', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (72, '2023-03-26 15:46:46', '2019105120230', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (73, '2023-03-26 15:47:32', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (74, '2023-03-26 15:47:52', '2019105120230', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (75, '2023-03-26 15:48:53', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (76, '2023-03-26 15:49:22', '2019105120230', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (77, '2023-03-26 15:52:18', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (78, '2023-03-26 15:52:59', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (79, '2023-03-26 15:53:07', '2019105120230', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (80, '2023-03-26 15:53:31', '2019105120230', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (81, '2023-03-26 15:53:59', '2019105120230', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (82, '2023-03-26 15:54:08', '2019105120230', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (83, '2023-03-26 16:13:48', '2019105120230', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (84, '2023-03-26 16:31:45', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (85, '2023-03-26 16:53:11', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (86, '2023-03-26 16:53:55', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (87, '2023-03-26 16:54:13', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (88, '2023-03-26 19:07:55', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (89, '2023-03-26 19:08:39', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (90, '2023-03-26 19:09:55', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (91, '2023-03-26 19:14:44', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (92, '2023-03-26 19:15:07', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (93, '2023-03-26 19:38:38', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (94, '2023-03-26 19:41:33', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (95, '2023-03-26 19:41:46', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (96, '2023-03-26 19:41:53', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (97, '2023-03-26 19:42:48', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (98, '2023-03-26 19:45:27', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (99, '2023-03-26 19:45:49', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (100, '2023-03-26 19:46:31', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (101, '2023-03-26 19:46:51', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (102, '2023-03-26 19:47:30', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (103, '2023-03-26 19:47:45', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (104, '2023-03-26 19:48:50', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (105, '2023-03-26 19:50:42', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (106, '2023-03-26 19:51:18', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (107, '2023-03-26 19:54:29', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (108, '2023-03-27 16:18:08', '2019105120202', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (109, '2023-03-27 16:18:14', '2019105120203', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (110, '2023-03-27 16:18:18', '2019105120204', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (111, '2023-03-27 18:06:23', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (112, '2023-03-27 18:09:42', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (113, '2023-03-27 18:10:23', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (114, '2023-03-27 18:12:26', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (115, '2023-03-27 18:19:36', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (116, '2023-03-27 18:26:26', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (117, '2023-03-27 18:27:48', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (118, '2023-03-27 18:35:55', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (119, '2023-03-27 19:03:06', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (120, '2023-03-27 19:05:21', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (121, '2023-03-27 19:06:53', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (122, '2023-03-28 17:48:45', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (123, '2023-03-29 02:43:11', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (124, '2023-03-29 02:43:24', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (125, '2023-03-29 11:55:06', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (126, '2023-03-29 22:01:49', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (127, '2023-03-29 22:16:18', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (128, '2023-03-29 22:28:27', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (129, '2023-03-30 22:03:34', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (130, '2023-03-30 22:07:53', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (131, '2023-03-30 22:09:30', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (132, '2023-03-30 22:10:45', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (133, '2023-03-30 22:11:05', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (134, '2023-03-30 22:40:07', '2019105120202', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (135, '2023-03-30 22:43:47', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (136, '2023-03-30 22:44:14', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (137, '2023-03-31 01:16:02', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (138, '2023-03-31 01:21:28', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (139, '2023-03-31 01:21:37', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (140, '2023-03-31 01:29:42', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (141, '2023-03-31 11:59:39', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (142, '2023-03-31 12:07:11', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (143, '2023-03-31 12:15:42', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (144, '2023-03-31 12:17:20', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (145, '2023-03-31 13:48:34', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (146, '2023-03-31 13:49:18', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (147, '2023-03-31 15:23:12', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (148, '2023-03-31 15:30:08', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (149, '2023-03-31 15:30:20', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (150, '2023-03-31 16:14:47', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (151, '2023-03-31 16:15:08', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (152, '2023-03-31 16:21:08', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (153, '2023-03-31 16:29:44', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (154, '2023-03-31 16:41:52', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (155, '2023-03-31 18:03:47', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (156, '2023-03-31 18:09:41', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (157, '2023-03-31 18:11:03', '1002', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (158, '2023-03-31 18:56:54', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (159, '2023-03-31 19:03:53', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (160, '2023-03-31 19:13:03', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (161, '2023-03-31 19:14:27', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (162, '2023-03-31 19:15:51', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (163, '2023-03-31 19:17:03', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (164, '2023-03-31 19:17:18', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (165, '2023-03-31 19:27:26', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (166, '2023-04-01 15:24:56', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (167, '2023-04-01 15:26:16', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (168, '2023-04-01 15:32:24', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (169, '2023-04-01 15:33:53', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (170, '2023-04-01 15:34:32', '2019105120202', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (171, '2023-04-01 15:34:42', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (172, '2023-04-01 15:42:50', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (173, '2023-04-01 15:56:41', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (174, '2023-04-01 15:56:56', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (175, '2023-04-01 16:02:36', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (176, '2023-04-01 16:08:09', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (177, '2023-04-01 16:58:54', '2019105120202', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (178, '2023-04-01 16:59:03', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (179, '2023-04-01 16:59:30', '2019105120202', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (180, '2023-04-01 16:59:41', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (181, '2023-04-01 17:14:35', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (182, '2023-04-01 17:16:47', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (183, '2023-04-01 17:20:21', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (184, '2023-04-01 17:34:33', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (185, '2023-04-01 17:39:56', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (186, '2023-04-01 17:40:32', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (187, '2023-04-01 18:17:51', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (188, '2023-04-01 18:18:45', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (189, '2023-04-01 18:18:48', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (190, '2023-04-03 12:14:19', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (191, '2023-04-03 16:13:51', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (192, '2023-04-03 16:15:34', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (193, '2023-04-04 21:07:39', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (194, '2023-04-04 21:09:24', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (195, '2023-04-06 22:40:08', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (196, '2023-04-07 15:01:23', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (197, '2023-04-07 15:06:08', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (198, '2023-04-07 15:06:47', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (199, '2023-04-15 12:31:12', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (200, '2023-04-25 20:35:33', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (201, '2023-04-25 20:36:50', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (202, '2023-04-25 20:38:37', '10001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 1, '用户名或密码错误,登录失败');
INSERT INTO `sys_login_log` VALUES (203, '2023-04-25 20:38:44', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (204, '2023-04-25 23:35:40', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (205, '2023-04-25 23:40:22', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (206, '2023-04-25 23:44:23', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (207, '2023-04-25 23:50:46', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (208, '2023-04-25 23:53:17', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (209, '2023-04-26 07:59:46', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (210, '2023-04-26 08:00:23', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (211, '2023-04-26 08:03:35', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (212, '2023-04-26 08:05:28', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (213, '2023-04-26 08:48:16', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (214, '2023-04-26 09:37:14', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (215, '2023-04-27 12:06:57', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (216, '2023-04-27 12:07:20', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (217, '2023-04-27 12:08:03', '1002', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (218, '2023-04-27 13:05:42', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (219, '2023-04-27 13:06:24', '1002', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (220, '2023-04-27 13:12:43', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (221, '2023-04-27 13:13:34', '10002', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 1, '用户名或密码错误,登录失败');
INSERT INTO `sys_login_log` VALUES (222, '2023-04-27 13:13:36', '1002', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (223, '2023-04-27 13:14:09', '2019105120229', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 1, '用户名或密码错误,登录失败');
INSERT INTO `sys_login_log` VALUES (224, '2023-04-27 13:14:12', '2019105120215', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (225, '2023-04-27 13:14:29', '1002', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (226, '2023-04-27 13:16:12', '2019105120201', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (227, '2023-04-27 13:41:06', '1002', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (228, '2023-04-27 13:51:36', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (229, '2023-04-27 14:54:01', 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (230, '2023-04-27 15:32:32', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (231, '2023-05-03 17:04:08', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (232, '2023-05-03 17:25:07', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');
INSERT INTO `sys_login_log` VALUES (233, '2023-05-05 23:33:11', '1001', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', 0, '登录成功');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单主键ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父菜单ID',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '权限标识',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 'el-icon-s-tools', 0, 5, '/admin/sys', '', 'M', '', '2023-03-08 14:56:29', '2023-03-26 15:25:05', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '卷题管理', 'el-icon-s-data', 0, 6, '/admin/exam', '', 'M', '', '2023-03-08 14:59:43', '2023-03-26 15:33:36', '业务管理目录');
INSERT INTO `sys_menu` VALUES (3, '用户管理', 'el-icon-user-solid\r\n', 1, 1, '/admin/sys/user', '/admin/sys/user/index', 'C', 'system:user:list', '2023-03-08 15:20:51', '2023-03-26 15:25:33', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (4, '角色管理', 'el-icon-user', 1, 2, '/admin/sys/role', '/admin/sys/role/index', 'C', 'system:role:list', '2023-03-08 15:23:35', '2023-03-26 15:25:29', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (5, '菜单管理', 'el-icon-menu', 1, 3, '/admin/sys/menu', '/admin/sys/menu/index', 'C', 'system:menu:list', '2023-03-08 15:23:41', '2023-03-26 15:25:26', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (6, '试卷管理', 'el-icon-office-building', 2, 1, '/teacher/paper', '/teacher/paper/list', 'C', '', '2023-03-08 15:24:40', '2023-04-26 08:05:23', '试卷管理菜单');
INSERT INTO `sys_menu` VALUES (7, '题目管理', 'el-icon-edit-outline', 2, 2, '/teacher/question', '/teacher/question/list', 'C', '', '2023-03-08 15:24:42', '2023-04-26 08:05:16', '题目管理菜单');
INSERT INTO `sys_menu` VALUES (9, '用户修改', '#', 3, 3, '', '', 'F', 'system:user:edit', '2023-03-08 15:24:42', '2022-07-04 15:24:46', '修改用户按钮');
INSERT INTO `sys_menu` VALUES (10, '用户删除', '#', 3, 4, '', '', 'F', 'system:user:delete', '2022-07-08 15:24:42', '2022-07-04 15:24:46', '删除用户按钮');
INSERT INTO `sys_menu` VALUES (11, '分配角色', '#', 3, 5, '', '', 'F', 'system:user:role', '2022-07-04 15:24:42', '2022-07-04 15:24:46', '分配角色按钮');
INSERT INTO `sys_menu` VALUES (12, '重置密码', '#', 3, 6, '', '', 'F', 'system:user:resetPwd', '2022-07-04 15:24:42', '2022-07-04 15:24:46', '重置密码按钮');
INSERT INTO `sys_menu` VALUES (13, '角色新增', '#', 4, 2, '', '', 'F', 'system:role:add', '2022-07-04 15:24:42', '2022-07-04 15:24:46', '添加用户按钮');
INSERT INTO `sys_menu` VALUES (14, '角色修改', '#', 4, 3, '', '', 'F', 'system:role:edit', '2022-07-04 15:24:42', '2022-07-04 15:24:46', '修改用户按钮');
INSERT INTO `sys_menu` VALUES (15, '角色删除', '#', 4, 4, '', NULL, 'F', 'system:role:delete', '2022-07-04 15:24:42', '2022-07-04 15:24:46', '删除用户按钮');
INSERT INTO `sys_menu` VALUES (16, '分配权限', '#', 4, 5, '', '', 'F', 'system:role:menu', '2022-07-04 15:24:42', '2022-07-04 15:24:46', '分配权限按钮');
INSERT INTO `sys_menu` VALUES (17, '菜单新增', '#', 5, 2, '', NULL, 'F', 'system:menu:add', '2022-07-04 15:24:42', '2022-07-04 15:24:46', '添加菜单按钮');
INSERT INTO `sys_menu` VALUES (18, '菜单修改', '#', 5, 3, '', NULL, 'F', 'system:menu:edit', '2022-07-05 15:24:42', '2022-07-04 15:24:46', '修改菜单按钮');
INSERT INTO `sys_menu` VALUES (19, '菜单删除', '#', 5, 4, '', NULL, 'F', 'system:menu:delete', '2022-07-04 15:24:42', '2022-07-04 15:24:46', '删除菜单按钮');
INSERT INTO `sys_menu` VALUES (20, '用户查询', '#', 3, 1, '', NULL, 'F', 'system:user:query', '2022-07-04 15:24:42', '2022-07-04 15:24:46', '用户查询按钮');
INSERT INTO `sys_menu` VALUES (21, '角色查询', '#', 4, 1, '', NULL, 'F', 'system:role:query', '2022-07-04 15:24:42', '2022-07-04 15:24:46', '角色查询按钮');
INSERT INTO `sys_menu` VALUES (22, '菜单查询', '#', 5, 1, '', NULL, 'F', 'system:menu:query', '2022-07-04 15:24:42', '2022-07-04 15:24:46', '菜单查询按钮');
INSERT INTO `sys_menu` VALUES (34, '考试管理', 'el-icon-document', 54, 1, '/teacher/exam/list', '/teacher/exam/list', 'C', '', '2023-03-12 05:09:29', '2023-04-26 08:04:48', '考试管理菜单');
INSERT INTO `sys_menu` VALUES (35, '教育管理', 'el-icon-school', 0, 8, '/admin/edu', '', 'M', '', '2023-03-13 13:44:13', '2023-03-26 15:31:48', '教育管理目录');
INSERT INTO `sys_menu` VALUES (36, '课程管理', 'el-icon-collection', 35, 1, '/admin/edu/subject', '/admin/edu/subject/index', 'C', '', '2023-03-13 13:54:10', '2023-03-26 15:25:50', '课程管理菜单');
INSERT INTO `sys_menu` VALUES (44, '退出系统', 'el-icon-setting', 0, 4, '#', '', 'M', '', '2023-03-13 20:36:19', '2023-03-26 15:23:31', '退出系统');
INSERT INTO `sys_menu` VALUES (45, '首页', 'el-icon-s-home', 0, 1, '/dashboard', '/admin/dashboard/index', 'M', '', '2023-03-14 10:35:58', '2023-03-26 15:29:53', '管理员主页');
INSERT INTO `sys_menu` VALUES (46, '首页', '', 0, 3, '/dashboard', '/student/dashboard/index', 'M', '', '2023-03-14 12:49:56', '2023-03-26 15:23:53', '学生主页');
INSERT INTO `sys_menu` VALUES (47, '班级管理', 'el-icon-notebook-2', 35, 2, '/admin/edu/class', '/admin/edu/class/index', 'C', '', '2023-03-15 23:28:51', '2023-03-26 15:25:57', '班级管理菜单');
INSERT INTO `sys_menu` VALUES (49, '日志管理', 'el-icon-document-copy', 0, 9, '/admin/logs', '', 'M', '', '2023-03-18 14:03:26', '2023-03-26 15:33:22', '日志管理目录');
INSERT INTO `sys_menu` VALUES (50, '登录日志', 'el-icon-document-checked', 49, 1, '/admin/logs/login', '/admin/logs/login/index', 'C', '', '2023-03-18 14:07:54', '2023-03-26 15:26:08', '登录日志管理菜单');
INSERT INTO `sys_menu` VALUES (51, '操作日志', 'el-icon-folder-add', 49, 2, '/admin/logs/operation', '/admin/logs/operation/index', 'C', '', '2023-03-18 15:43:03', '2023-03-26 15:26:12', '操作日志管理菜单');
INSERT INTO `sys_menu` VALUES (52, '用户状态修改', '#', 3, 7, '', NULL, 'F', 'system:user:status', '2023-03-22 15:49:44', NULL, '修改用户状态按钮');
INSERT INTO `sys_menu` VALUES (54, '考情管理', 'el-icon-paperclip', 0, 7, '/em', '', 'M', '', '2023-03-25 18:51:29', '2023-03-25 18:52:46', NULL);
INSERT INTO `sys_menu` VALUES (55, '教育管理', 'el-icon-school', 0, 9, '/teacher/edu', '', 'M', '', '2023-03-26 13:53:25', '2023-03-26 19:46:15', NULL);
INSERT INTO `sys_menu` VALUES (56, '我的课程', 'el-icon-collection', 55, 1, '/teacher/course', '/teacher/course/index', 'C', '', '2023-03-26 13:54:52', '2023-03-26 19:09:30', NULL);
INSERT INTO `sys_menu` VALUES (66, '考试管理', 'el-icon-reading', 0, 11, '/teacher/exam', NULL, 'M', '', '2023-03-26 14:29:56', '2023-03-31 19:15:13', NULL);
INSERT INTO `sys_menu` VALUES (67, '答卷管理', 'el-icon-document-copy', 0, 12, '/teacher/answer', NULL, 'M', '', '2023-03-26 14:30:37', '2023-03-31 19:15:18', NULL);
INSERT INTO `sys_menu` VALUES (68, '我的考试', '#', 0, 13, '/student/exam', '/student/exam/index', 'M', '', '2023-03-26 14:34:31', '2023-03-31 19:15:22', NULL);
INSERT INTO `sys_menu` VALUES (69, '智能测试', '#', 0, 14, '/student/smartTest', '/student/smartTest/index', 'M', '', '2023-03-26 14:34:40', '2023-03-31 19:15:31', NULL);
INSERT INTO `sys_menu` VALUES (70, '错题本', '#', 0, 16, '/student/errorQuestion', '/student/errorQuestion/index', 'M', '', '2023-03-26 14:34:48', '2023-03-31 19:15:38', NULL);
INSERT INTO `sys_menu` VALUES (71, '考试记录', '#', 0, 15, '/student/score', '/student/score/index', 'M', '', '2023-03-26 14:34:59', '2023-03-31 19:15:35', NULL);
INSERT INTO `sys_menu` VALUES (72, '首页', 'el-icon-s-home', 0, 2, '/dashboard', '/teacher/dashboard/index', 'M', '', '2023-03-26 15:16:50', '2023-03-26 15:24:10', '教师主页');
INSERT INTO `sys_menu` VALUES (73, '考试列表', 'el-icon-document-copy', 66, 1, '/teacher/exam/list', '/teacher/exam/list', 'C', '', '2023-03-26 19:44:21', '2023-03-26 19:47:27', NULL);
INSERT INTO `sys_menu` VALUES (74, '答卷列表', 'el-icon-notebook-2', 67, 1, '/teacher/answer', '/teacher/answer/list', 'C', '', '2023-03-26 19:50:10', NULL, NULL);
INSERT INTO `sys_menu` VALUES (75, '卷题管理', 'el-icon-office-building', 0, 10, '/teacher/eq', NULL, 'M', '', '2023-03-26 19:52:16', '2023-03-31 19:15:03', NULL);
INSERT INTO `sys_menu` VALUES (76, '题库管理', 'el-icon-document', 75, 1, '/teacher/question', '/teacher/question/list', 'C', '', '2023-03-26 19:53:10', NULL, NULL);
INSERT INTO `sys_menu` VALUES (77, '试卷列表', 'el-icon-document-checked', 75, 2, '/teacher/paper', '/teacher/paper/list', 'C', '', '2023-03-26 19:54:06', NULL, NULL);
INSERT INTO `sys_menu` VALUES (78, '我的班级', 'el-icon-collection', 55, 2, '/teacher/edu/class', '/teacher/class/index', 'C', '', '2023-03-30 22:09:11', NULL, NULL);

-- ----------------------------
-- Table structure for sys_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_log`;
CREATE TABLE `sys_operation_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `operation` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 218 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_operation_log
-- ----------------------------
INSERT INTO `sys_operation_log` VALUES (18, '2023-03-22 15:49:44', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (19, '2023-03-22 15:57:47', '127.0.0.1', '2019105120201', '内网IP', '重置用户密码', 'com.sias.system.controller.UserController.resetPassword()', '/api/user/resetPassword/3', '用户管理');
INSERT INTO `sys_operation_log` VALUES (20, '2023-03-25 17:44:58', '127.0.0.1', 'admin', '内网IP', '修改角色菜单权限', 'com.sias.system.controller.RoleController.updateMenus()', '/api/role/updateMenus/1', '角色管理');
INSERT INTO `sys_operation_log` VALUES (21, '2023-03-25 17:45:01', '127.0.0.1', 'admin', '内网IP', '修改用户状态', 'com.sias.system.controller.UserController.updateStatus()', '/api/user/updateStatus/29/status/0', '用户管理');
INSERT INTO `sys_operation_log` VALUES (22, '2023-03-25 17:45:03', '127.0.0.1', 'admin', '内网IP', '修改用户状态', 'com.sias.system.controller.UserController.updateStatus()', '/api/user/updateStatus/29/status/1', '用户管理');
INSERT INTO `sys_operation_log` VALUES (23, '2023-03-25 17:50:22', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (24, '2023-03-25 17:50:28', '127.0.0.1', 'admin', '内网IP', '删除菜单', 'com.sias.system.controller.MenuController.delete()', '/api/menu/delete/53', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (25, '2023-03-25 18:46:19', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (26, '2023-03-25 18:46:51', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (27, '2023-03-25 18:47:10', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (28, '2023-03-25 18:48:41', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (29, '2023-03-25 18:51:29', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (30, '2023-03-25 18:51:45', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (31, '2023-03-25 18:51:54', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (32, '2023-03-25 18:52:00', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (33, '2023-03-25 18:52:03', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (34, '2023-03-25 18:52:06', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (35, '2023-03-25 18:52:40', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (36, '2023-03-25 18:52:46', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (37, '2023-03-25 18:54:19', '127.0.0.1', 'admin', '内网IP', '修改角色菜单权限', 'com.sias.system.controller.RoleController.updateMenus()', '/api/role/updateMenus/1', '角色管理');
INSERT INTO `sys_operation_log` VALUES (38, '2023-03-25 19:17:53', '127.0.0.1', 'admin', '内网IP', '修改角色信息', 'com.sias.system.controller.RoleController.edit()', '/api/role/edit', '角色管理');
INSERT INTO `sys_operation_log` VALUES (39, '2023-03-25 19:18:06', '127.0.0.1', 'admin', '内网IP', '删除角色', 'com.sias.system.controller.RoleController.delete()', '/api/role/delete', '角色管理');
INSERT INTO `sys_operation_log` VALUES (40, '2023-03-25 19:46:26', '127.0.0.1', 'admin', '内网IP', '修改角色信息', 'com.sias.system.controller.RoleController.edit()', '/api/role/edit', '角色管理');
INSERT INTO `sys_operation_log` VALUES (41, '2023-03-25 19:51:02', '127.0.0.1', 'admin', '内网IP', '修改角色信息', 'com.sias.system.controller.RoleController.edit()', '/api/role/edit', '角色管理');
INSERT INTO `sys_operation_log` VALUES (42, '2023-03-25 19:51:14', '127.0.0.1', 'admin', '内网IP', '删除角色', 'com.sias.system.controller.RoleController.delete()', '/api/role/delete', '角色管理');
INSERT INTO `sys_operation_log` VALUES (43, '2023-03-25 19:51:19', '127.0.0.1', 'admin', '内网IP', '删除角色', 'com.sias.system.controller.RoleController.delete()', '/api/role/delete', '角色管理');
INSERT INTO `sys_operation_log` VALUES (44, '2023-03-26 13:53:25', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (45, '2023-03-26 13:54:52', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (46, '2023-03-26 13:55:09', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (47, '2023-03-26 13:57:02', '127.0.0.1', 'admin', '内网IP', '修改角色信息', 'com.sias.system.controller.RoleController.edit()', '/api/role/edit', '角色管理');
INSERT INTO `sys_operation_log` VALUES (48, '2023-03-26 13:57:16', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (49, '2023-03-26 13:57:22', '127.0.0.1', 'admin', '内网IP', '删除菜单', 'com.sias.system.controller.MenuController.delete()', '/api/menu/delete/57', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (50, '2023-03-26 13:58:47', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (51, '2023-03-26 13:58:55', '127.0.0.1', 'admin', '内网IP', '删除菜单', 'com.sias.system.controller.MenuController.delete()', '/api/menu/delete/58', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (52, '2023-03-26 14:01:40', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (53, '2023-03-26 14:03:16', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (54, '2023-03-26 14:03:25', '127.0.0.1', 'admin', '内网IP', '删除菜单', 'com.sias.system.controller.MenuController.delete()', '/api/menu/delete/60', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (55, '2023-03-26 14:03:26', '127.0.0.1', 'admin', '内网IP', '删除菜单', 'com.sias.system.controller.MenuController.delete()', '/api/menu/delete/59', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (56, '2023-03-26 14:05:47', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (57, '2023-03-26 14:06:12', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (58, '2023-03-26 14:07:21', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (59, '2023-03-26 14:08:01', '127.0.0.1', 'admin', '内网IP', '删除菜单', 'com.sias.system.controller.MenuController.delete()', '/api/menu/delete/63', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (60, '2023-03-26 14:08:03', '127.0.0.1', 'admin', '内网IP', '删除菜单', 'com.sias.system.controller.MenuController.delete()', '/api/menu/delete/61', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (61, '2023-03-26 14:08:05', '127.0.0.1', 'admin', '内网IP', '删除菜单', 'com.sias.system.controller.MenuController.delete()', '/api/menu/delete/62', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (62, '2023-03-26 14:08:20', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (63, '2023-03-26 14:08:28', '127.0.0.1', 'admin', '内网IP', '删除菜单', 'com.sias.system.controller.MenuController.delete()', '/api/menu/delete/64', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (64, '2023-03-26 14:09:22', '127.0.0.1', 'admin', '内网IP', '修改角色信息', 'com.sias.system.controller.RoleController.edit()', '/api/role/edit', '角色管理');
INSERT INTO `sys_operation_log` VALUES (65, '2023-03-26 14:09:39', '127.0.0.1', 'admin', '内网IP', '修改角色信息', 'com.sias.system.controller.RoleController.edit()', '/api/role/edit', '角色管理');
INSERT INTO `sys_operation_log` VALUES (66, '2023-03-26 14:10:36', '127.0.0.1', 'admin', '内网IP', '修改角色信息', 'com.sias.system.controller.RoleController.edit()', '/api/role/edit', '角色管理');
INSERT INTO `sys_operation_log` VALUES (67, '2023-03-26 14:12:11', '127.0.0.1', 'admin', '内网IP', '修改角色信息', 'com.sias.system.controller.RoleController.edit()', '/api/role/edit', '角色管理');
INSERT INTO `sys_operation_log` VALUES (68, '2023-03-26 14:13:34', '127.0.0.1', 'admin', '内网IP', '修改角色信息', 'com.sias.system.controller.RoleController.edit()', '/api/role/edit', '角色管理');
INSERT INTO `sys_operation_log` VALUES (69, '2023-03-26 14:13:40', '127.0.0.1', 'admin', '内网IP', '删除角色', 'com.sias.system.controller.RoleController.delete()', '/api/role/delete', '角色管理');
INSERT INTO `sys_operation_log` VALUES (70, '2023-03-26 14:13:41', '127.0.0.1', 'admin', '内网IP', '删除角色', 'com.sias.system.controller.RoleController.delete()', '/api/role/delete', '角色管理');
INSERT INTO `sys_operation_log` VALUES (71, '2023-03-26 14:13:42', '127.0.0.1', 'admin', '内网IP', '删除角色', 'com.sias.system.controller.RoleController.delete()', '/api/role/delete', '角色管理');
INSERT INTO `sys_operation_log` VALUES (72, '2023-03-26 14:13:47', '127.0.0.1', 'admin', '内网IP', '删除角色', 'com.sias.system.controller.RoleController.delete()', '/api/role/delete', '角色管理');
INSERT INTO `sys_operation_log` VALUES (73, '2023-03-26 14:18:25', '127.0.0.1', 'admin', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (74, '2023-03-26 14:20:33', '127.0.0.1', 'admin', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (75, '2023-03-26 14:21:15', '127.0.0.1', 'admin', '内网IP', '修改角色信息', 'com.sias.system.controller.RoleController.edit()', '/api/role/edit', '角色管理');
INSERT INTO `sys_operation_log` VALUES (76, '2023-03-26 14:21:19', '127.0.0.1', 'admin', '内网IP', '删除角色', 'com.sias.system.controller.RoleController.delete()', '/api/role/delete', '角色管理');
INSERT INTO `sys_operation_log` VALUES (77, '2023-03-26 14:21:26', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (78, '2023-03-26 14:21:33', '127.0.0.1', 'admin', '内网IP', '删除菜单', 'com.sias.system.controller.MenuController.delete()', '/api/menu/delete/65', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (79, '2023-03-26 14:22:58', '127.0.0.1', 'admin', '内网IP', '修改角色菜单权限', 'com.sias.system.controller.RoleController.updateMenus()', '/api/role/updateMenus/2', '角色管理');
INSERT INTO `sys_operation_log` VALUES (80, '2023-03-26 14:28:38', '127.0.0.1', 'admin', '内网IP', '修改角色菜单权限', 'com.sias.system.controller.RoleController.updateMenus()', '/api/role/updateMenus/2', '角色管理');
INSERT INTO `sys_operation_log` VALUES (81, '2023-03-26 14:28:52', '127.0.0.1', '2019105120201', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (82, '2023-03-26 14:29:56', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (83, '2023-03-26 14:30:37', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (84, '2023-03-26 14:30:45', '127.0.0.1', 'admin', '内网IP', '修改角色菜单权限', 'com.sias.system.controller.RoleController.updateMenus()', '/api/role/updateMenus/2', '角色管理');
INSERT INTO `sys_operation_log` VALUES (85, '2023-03-26 14:34:31', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (86, '2023-03-26 14:34:40', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (87, '2023-03-26 14:34:48', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (88, '2023-03-26 14:34:59', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (89, '2023-03-26 14:35:28', '127.0.0.1', 'admin', '内网IP', '修改角色菜单权限', 'com.sias.system.controller.RoleController.updateMenus()', '/api/role/updateMenus/22', '角色管理');
INSERT INTO `sys_operation_log` VALUES (90, '2023-03-26 14:56:24', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (91, '2023-03-26 14:56:45', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (92, '2023-03-26 14:57:05', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (93, '2023-03-26 14:57:30', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (94, '2023-03-26 15:16:50', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (95, '2023-03-26 15:16:58', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (96, '2023-03-26 15:17:12', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (97, '2023-03-26 15:19:51', '127.0.0.1', 'admin', '内网IP', '修改角色菜单权限', 'com.sias.system.controller.RoleController.updateMenus()', '/api/role/updateMenus/2', '角色管理');
INSERT INTO `sys_operation_log` VALUES (98, '2023-03-26 15:22:53', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (99, '2023-03-26 15:23:09', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (100, '2023-03-26 15:23:23', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (101, '2023-03-26 15:23:31', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (102, '2023-03-26 15:23:41', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (103, '2023-03-26 15:23:53', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (104, '2023-03-26 15:23:56', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (105, '2023-03-26 15:24:10', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (106, '2023-03-26 15:24:49', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (107, '2023-03-26 15:25:05', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (108, '2023-03-26 15:25:17', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (109, '2023-03-26 15:25:20', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (110, '2023-03-26 15:25:26', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (111, '2023-03-26 15:25:29', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (112, '2023-03-26 15:25:33', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (113, '2023-03-26 15:25:40', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (114, '2023-03-26 15:25:50', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (115, '2023-03-26 15:25:57', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (116, '2023-03-26 15:26:01', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (117, '2023-03-26 15:26:08', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (118, '2023-03-26 15:26:12', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (119, '2023-03-26 15:26:18', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (120, '2023-03-26 15:26:22', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (121, '2023-03-26 15:26:27', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (122, '2023-03-26 15:26:31', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (123, '2023-03-26 15:29:53', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (124, '2023-03-26 15:31:48', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (125, '2023-03-26 15:33:22', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (126, '2023-03-26 15:33:36', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (127, '2023-03-26 15:34:34', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (128, '2023-03-26 15:34:38', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (129, '2023-03-26 15:49:16', '127.0.0.1', 'admin', '内网IP', '修改角色菜单权限', 'com.sias.system.controller.RoleController.updateMenus()', '/api/role/updateMenus/22', '角色管理');
INSERT INTO `sys_operation_log` VALUES (130, '2023-03-26 15:51:23', '127.0.0.1', '2019105120230', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (131, '2023-03-26 15:52:22', '127.0.0.1', 'admin', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (132, '2023-03-26 15:53:17', '127.0.0.1', '2019105120230', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (133, '2023-03-26 15:53:55', '127.0.0.1', '2019105120230', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (134, '2023-03-26 15:54:04', '127.0.0.1', '2019105120230', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (135, '2023-03-26 16:54:05', '127.0.0.1', 'admin', '内网IP', '修改角色菜单权限', 'com.sias.system.controller.RoleController.updateMenus()', '/api/role/updateMenus/2', '角色管理');
INSERT INTO `sys_operation_log` VALUES (136, '2023-03-26 19:09:11', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (137, '2023-03-26 19:09:30', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (138, '2023-03-26 19:09:36', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (139, '2023-03-26 19:41:28', '127.0.0.1', 'admin', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (140, '2023-03-26 19:41:50', '127.0.0.1', '2019105120201', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (141, '2023-03-26 19:44:21', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (142, '2023-03-26 19:44:44', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (143, '2023-03-26 19:46:02', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (144, '2023-03-26 19:46:09', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (145, '2023-03-26 19:46:15', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (146, '2023-03-26 19:47:27', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (147, '2023-03-26 19:47:42', '127.0.0.1', 'admin', '内网IP', '修改角色菜单权限', 'com.sias.system.controller.RoleController.updateMenus()', '/api/role/updateMenus/2', '角色管理');
INSERT INTO `sys_operation_log` VALUES (148, '2023-03-26 19:50:10', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (149, '2023-03-26 19:50:26', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (150, '2023-03-26 19:50:34', '127.0.0.1', 'admin', '内网IP', '修改角色菜单权限', 'com.sias.system.controller.RoleController.updateMenus()', '/api/role/updateMenus/2', '角色管理');
INSERT INTO `sys_operation_log` VALUES (151, '2023-03-26 19:52:16', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (152, '2023-03-26 19:53:10', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (153, '2023-03-26 19:54:06', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (154, '2023-03-26 19:54:16', '127.0.0.1', 'admin', '内网IP', '修改角色菜单权限', 'com.sias.system.controller.RoleController.updateMenus()', '/api/role/updateMenus/2', '角色管理');
INSERT INTO `sys_operation_log` VALUES (155, '2023-03-27 16:23:27', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (156, '2023-03-27 16:23:42', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (157, '2023-03-27 16:23:55', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (158, '2023-03-27 16:24:06', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (159, '2023-03-27 16:24:23', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (160, '2023-03-27 16:25:08', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (161, '2023-03-27 16:26:14', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (162, '2023-03-27 16:26:23', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (163, '2023-03-27 16:26:32', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (164, '2023-03-27 16:28:46', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (165, '2023-03-27 16:28:55', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (166, '2023-03-27 16:29:11', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (167, '2023-03-27 16:29:17', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (168, '2023-03-27 16:29:28', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (169, '2023-03-27 16:34:04', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (170, '2023-03-27 16:34:12', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (171, '2023-03-27 16:35:12', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (172, '2023-03-27 16:35:59', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (173, '2023-03-27 16:39:25', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (174, '2023-03-27 16:43:52', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (175, '2023-03-27 16:48:02', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (176, '2023-03-27 16:48:08', '127.0.0.1', '2019105120204', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (177, '2023-03-27 18:09:23', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (178, '2023-03-27 18:09:40', '127.0.0.1', 'admin', '内网IP', '修改角色菜单权限', 'com.sias.system.controller.RoleController.updateMenus()', '/api/role/updateMenus/1', '角色管理');
INSERT INTO `sys_operation_log` VALUES (179, '2023-03-27 18:10:20', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (180, '2023-03-27 18:19:21', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (181, '2023-03-27 18:21:04', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (182, '2023-03-27 19:02:19', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (183, '2023-03-27 19:02:29', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (184, '2023-03-27 19:02:34', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (185, '2023-03-27 19:02:58', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (186, '2023-03-27 19:05:15', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (187, '2023-03-27 19:06:50', '127.0.0.1', 'admin', '内网IP', '修改角色菜单权限', 'com.sias.system.controller.RoleController.updateMenus()', '/api/role/updateMenus/1', '角色管理');
INSERT INTO `sys_operation_log` VALUES (188, '2023-03-27 19:21:28', '127.0.0.1', 'admin', '内网IP', '修改角色信息', 'com.sias.system.controller.RoleController.edit()', '/api/role/edit', '角色管理');
INSERT INTO `sys_operation_log` VALUES (189, '2023-03-29 22:16:09', '127.0.0.1', 'admin', '内网IP', '删除菜单', 'com.sias.system.controller.MenuController.delete()', '/api/menu/delete/78', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (190, '2023-03-29 22:16:10', '127.0.0.1', 'admin', '内网IP', '删除菜单', 'com.sias.system.controller.MenuController.delete()', '/api/menu/delete/79', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (191, '2023-03-30 22:09:11', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (192, '2023-03-30 22:09:23', '127.0.0.1', 'admin', '内网IP', '修改角色菜单权限', 'com.sias.system.controller.RoleController.updateMenus()', '/api/role/updateMenus/2', '角色管理');
INSERT INTO `sys_operation_log` VALUES (193, '2023-03-31 01:22:15', '127.0.0.1', 'admin', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (194, '2023-03-31 01:27:01', '127.0.0.1', 'admin', '内网IP', '重置用户密码', 'com.sias.system.controller.UserController.resetPassword()', '/api/user/resetPassword/2', '用户管理');
INSERT INTO `sys_operation_log` VALUES (195, '2023-03-31 18:10:48', '127.0.0.1', 'admin', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (196, '2023-03-31 19:15:03', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (197, '2023-03-31 19:15:13', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (198, '2023-03-31 19:15:18', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (199, '2023-03-31 19:15:22', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (200, '2023-03-31 19:15:31', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (201, '2023-03-31 19:15:35', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (202, '2023-03-31 19:15:38', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (203, '2023-04-01 15:33:18', '127.0.0.1', '1001', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (204, '2023-04-01 15:33:25', '127.0.0.1', '1001', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (205, '2023-04-01 15:33:42', '127.0.0.1', '1001', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (206, '2023-04-01 15:33:45', '127.0.0.1', '1001', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (207, '2023-04-01 15:34:17', '127.0.0.1', 'admin', '内网IP', '修改用户信息', 'com.sias.system.controller.UserController.edit()', '/api/user/edit', '用户管理');
INSERT INTO `sys_operation_log` VALUES (208, '2023-04-25 23:40:16', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (209, '2023-04-25 23:50:42', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (210, '2023-04-26 08:03:06', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (211, '2023-04-26 08:03:16', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (212, '2023-04-26 08:03:28', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (213, '2023-04-26 08:04:48', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (214, '2023-04-26 08:04:59', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (215, '2023-04-26 08:05:12', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (216, '2023-04-26 08:05:16', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');
INSERT INTO `sys_operation_log` VALUES (217, '2023-04-26 08:05:23', '127.0.0.1', 'admin', '内网IP', '修改菜单', 'com.sias.system.controller.MenuController.edit()', '/api/menu/edit', '菜单管理');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色主键ID',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色权限字符串',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', '2023-03-08 14:40:44', '2023-03-15 19:21:28', '管理员');
INSERT INTO `sys_role` VALUES (2, '教师', 'teacher', '2023-03-08 14:41:56', '2023-03-15 14:13:54', '教师');
INSERT INTO `sys_role` VALUES (3, '测试角色', 'test', '2023-03-08 14:42:24', '2023-03-27 14:42:27', '测试角色');
INSERT INTO `sys_role` VALUES (22, '学生', 'student', '2023-03-12 02:34:31', '2023-03-18 13:29:43', '测试2');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色菜单主键ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 895 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (773, 22, 46);
INSERT INTO `sys_role_menu` VALUES (774, 22, 9);
INSERT INTO `sys_role_menu` VALUES (775, 22, 68);
INSERT INTO `sys_role_menu` VALUES (776, 22, 69);
INSERT INTO `sys_role_menu` VALUES (777, 22, 71);
INSERT INTO `sys_role_menu` VALUES (778, 22, 70);
INSERT INTO `sys_role_menu` VALUES (848, 1, 45);
INSERT INTO `sys_role_menu` VALUES (849, 1, 44);
INSERT INTO `sys_role_menu` VALUES (850, 1, 1);
INSERT INTO `sys_role_menu` VALUES (851, 1, 3);
INSERT INTO `sys_role_menu` VALUES (852, 1, 20);
INSERT INTO `sys_role_menu` VALUES (853, 1, 9);
INSERT INTO `sys_role_menu` VALUES (854, 1, 10);
INSERT INTO `sys_role_menu` VALUES (855, 1, 11);
INSERT INTO `sys_role_menu` VALUES (856, 1, 12);
INSERT INTO `sys_role_menu` VALUES (857, 1, 52);
INSERT INTO `sys_role_menu` VALUES (858, 1, 4);
INSERT INTO `sys_role_menu` VALUES (859, 1, 21);
INSERT INTO `sys_role_menu` VALUES (860, 1, 13);
INSERT INTO `sys_role_menu` VALUES (861, 1, 14);
INSERT INTO `sys_role_menu` VALUES (862, 1, 15);
INSERT INTO `sys_role_menu` VALUES (863, 1, 16);
INSERT INTO `sys_role_menu` VALUES (864, 1, 5);
INSERT INTO `sys_role_menu` VALUES (865, 1, 22);
INSERT INTO `sys_role_menu` VALUES (866, 1, 17);
INSERT INTO `sys_role_menu` VALUES (867, 1, 18);
INSERT INTO `sys_role_menu` VALUES (868, 1, 19);
INSERT INTO `sys_role_menu` VALUES (869, 1, 2);
INSERT INTO `sys_role_menu` VALUES (870, 1, 6);
INSERT INTO `sys_role_menu` VALUES (871, 1, 7);
INSERT INTO `sys_role_menu` VALUES (872, 1, 34);
INSERT INTO `sys_role_menu` VALUES (873, 1, 78);
INSERT INTO `sys_role_menu` VALUES (874, 1, 79);
INSERT INTO `sys_role_menu` VALUES (875, 1, 54);
INSERT INTO `sys_role_menu` VALUES (876, 1, 35);
INSERT INTO `sys_role_menu` VALUES (877, 1, 36);
INSERT INTO `sys_role_menu` VALUES (878, 1, 47);
INSERT INTO `sys_role_menu` VALUES (879, 1, 49);
INSERT INTO `sys_role_menu` VALUES (880, 1, 50);
INSERT INTO `sys_role_menu` VALUES (881, 1, 51);
INSERT INTO `sys_role_menu` VALUES (882, 2, 72);
INSERT INTO `sys_role_menu` VALUES (883, 2, 44);
INSERT INTO `sys_role_menu` VALUES (884, 2, 9);
INSERT INTO `sys_role_menu` VALUES (885, 2, 55);
INSERT INTO `sys_role_menu` VALUES (886, 2, 56);
INSERT INTO `sys_role_menu` VALUES (887, 2, 78);
INSERT INTO `sys_role_menu` VALUES (888, 2, 66);
INSERT INTO `sys_role_menu` VALUES (889, 2, 73);
INSERT INTO `sys_role_menu` VALUES (890, 2, 67);
INSERT INTO `sys_role_menu` VALUES (891, 2, 74);
INSERT INTO `sys_role_menu` VALUES (892, 2, 75);
INSERT INTO `sys_role_menu` VALUES (893, 2, 76);
INSERT INTO `sys_role_menu` VALUES (894, 2, 77);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'default.jpg' COMMENT '用户头像',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phone_number` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `deleted` bit(1) NULL DEFAULT b'0' COMMENT '逻辑删除',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birth_day` date NULL DEFAULT NULL COMMENT '出生日期',
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '$2a$10$B3UW7ev2HC93FodDwaO.QudC3OEUkoBazXeSZgz4R6K2Z9M30gIgW', '20230317091255000000168.jpg', '154147358@qq.com', '17335731885', '0', '2023-03-08 08:47:52', '2023-04-01 15:34:17', '备注', b'0', '男', '1999-04-29', '管理员');
INSERT INTO `sys_user` VALUES (2, '1001', '$2a$10$bS4WGM3ZZ4vBJORbwDEYN.Fz8S7uufMWluGHM6YGMrjZLFJboa6WG', 'default.jpg', '154147358@qq.com', '17335731885', '0', '2023-03-08 11:28:20', '2023-04-01 15:33:45', 'xxxxx', b'0', '男', '2023-03-16', '张三');
INSERT INTO `sys_user` VALUES (3, '2019105120201', '$2a$10$U4zPQg57Kwa.yu17TWvCy.lfu4pYVFlWHgLOLkf1VJ6sDMUGtozbm', 'default.jpg', '154147358@qq.com', '17335731885', '0', '2023-03-08 11:28:20', '2023-03-26 19:41:50', 'xxxxx', b'0', '男', '2023-03-16', '吴文杰');
INSERT INTO `sys_user` VALUES (4, '2019105120202', '$2a$10$EdTazdYc0dSuwxK9Rc/3AO.XV/2rbWELbuIZp2Nph7ZarilFXU/3a', 'default.jpg', '154147358@qq.com', '17335731885', '0', '2023-03-15 15:58:18', '2023-03-22 15:57:47', 'xxx', b'0', '男', '2023-03-11', '吴文杰');
INSERT INTO `sys_user` VALUES (5, '2019105120203', '$2a$10$Y0/MNFsEKAg81Pw3Elx9t.jzV2N01pz1BQ6hw3PMnQwN.LSYFa5tC', 'default.jpg', '154147358@qq.com', '17335731885', '0', '2023-03-15 15:58:15', '2023-03-18 23:18:37', 'xxxx211', b'0', '女', '2023-03-11', '吴文杰');
INSERT INTO `sys_user` VALUES (15, '2019105120204', '$2a$10$uBVJBW.EO5ZeW3Gz34Y7G.egsGMojo84CuLHYeisYYdEL5SOqUlce', 'default.jpg', '154147358@qq.com', '17335731885', '0', '2023-03-15 15:58:20', '2023-03-27 16:48:08', '123', b'0', '男', '2001-05-29', '吴文杰');
INSERT INTO `sys_user` VALUES (28, '2019105120205', '$2a$10$70wFLi29j4qkslheiKx46enIhsndMlyzMZCZ7FHfkMPdhuViIs.Tm', 'default.jpg', '1210449063@qq.com', '18862851414', '0', '2023-03-15 02:21:24', '2023-03-15 15:59:00', 'xxxxx', b'0', '男', '2001-06-01', '吴文杰');
INSERT INTO `sys_user` VALUES (29, '2019105120206', '$2a$10$Lg4pi2PJWIIXg3IpgflPyOYWTY7TBbLAtH60.YGFT5l/FC1E2O7OK', 'default.jpg', '154147358@qq.com', '12345678910', '0', '2023-03-08 00:42:46', '2023-03-15 15:59:01', 'ddd33', b'0', '女', '2017-04-05', '张三丰');
INSERT INTO `sys_user` VALUES (30, '2019105120207', '$2a$10$ZrHqIsKOuVS5tSZrlINIFuM4vWHAZVBUkKNhfj.7O.d8ism8xnGnS', 'default.jpg', '154144528@163.com', '18862584120', '1', '2023-03-14 17:04:58', '2023-03-15 15:59:02', 'xxx', b'0', '男', '2018-07-19', '李元霸');
INSERT INTO `sys_user` VALUES (31, '2019105120208', '$2a$10$8pJ5hiJ8n/XU25V7WuxIG.96kJ0oZYoHD9WikPWwzhW422hQPzNVS', 'default.jpg', '714523687@qq.com', '17633703837', '0', '2023-03-08 22:00:39', '2023-03-18 23:19:59', 'ccc22', b'0', '女', '2001-06-01', '秦始皇');
INSERT INTO `sys_user` VALUES (32, '2019105120209', '$2a$10$tSvb14yOWtx1c2Bw7d3wj.aqzBtKXR7Ju/a7Q7eW4mg5H/WJ4gvOO', 'default.jpg', '956145335@qq.com', '17335731885', '0', '2023-03-11 22:50:06', '2023-03-15 15:59:04', 'xxx', b'0', '女', '2017-04-05', '吴文杰');
INSERT INTO `sys_user` VALUES (33, '2019105120210', '$2a$10$x4AxFqAPAZJ1k9Os9Bs6duFSi2aIQo.vBmFC6Cu9JSICT29S6XH9u', 'default.jpg', '15434545@163.com', '1125646546', '0', '2023-03-11 22:51:18', '2023-03-18 16:00:23', 'xxxxx', b'0', '男', '2018-07-19', 'wenjie wu');
INSERT INTO `sys_user` VALUES (34, '2019105120211', '$2a$10$71CfyMTHW3XoVLKzoDXNOuWHOGIVN737bfWnKQOG.Ds3gyrjgIK0a', 'default.jpg', '745123584@qq.com', '18335732503', '0', '2023-03-14 10:12:26', '2023-03-15 15:59:08', '123123', b'0', '女', '2001-06-01', '赵无极');
INSERT INTO `sys_user` VALUES (35, '2019105120212', '$2a$10$OlID8wGs3fh4yGfBCPfjAOOYHzfbx61Y6PhRma5MucH6Dc7U81eAG', 'default.jpg', '154147358@qq.com', '17536531685', '0', '2023-03-15 15:30:09', '2023-03-15 15:59:10', '2023-03-15 15:36:32批量导入', b'0', '男', '1999-04-29', '吴文杰');
INSERT INTO `sys_user` VALUES (36, '2019105120213', '$2a$10$.otlGfiiez6ANGWIrqHdm.Z7qY1mfliISnHU4Tv4euBiQ1s.zcP2m', 'default.jpg', '154147358@qq.com', '17536531685', '0', '2023-03-15 15:30:09', '2023-03-15 15:59:11', '2023-03-15 15:36:32批量导入', b'0', '男', '1999-04-29', '吴文豪');
INSERT INTO `sys_user` VALUES (37, '2019105120214', '$2a$10$HPOqsSUWe0IsqX7aOhmcFu/4wevjNrFW7g0KfBZ.HeTel9yfWU6vq', 'default.jpg', '154147358@qq.com', '17536531685', '0', '2023-03-15 15:32:35', '2023-03-15 15:59:12', '2023-03-15 15:36:32批量导入', b'0', '男', '1999-04-29', '吴文杰');
INSERT INTO `sys_user` VALUES (38, '2019105120215', '$2a$10$dII7SlkOakGK7eZjjf.NK.oA2bb8YMk5nl13CHOxXAgiVvmYRXCOe', 'default.jpg', '154147358@qq.com', '17536531685', '0', '2023-03-15 15:32:35', '2023-03-15 15:59:12', '2023-03-15 15:36:32批量导入', b'0', '男', '1999-04-29', '吴文豪');
INSERT INTO `sys_user` VALUES (39, '2019105120216', '$2a$10$Ek747J.JaEQI/NHVE5L7leQtMt55ff6ilpAexMe63mRWPo2fSppwq', 'default.jpg', '154147358@qq.com', '17536531685', '0', '2023-03-15 15:36:33', '2023-03-15 15:59:13', '2023-03-15 15:36:32批量导入', b'0', '男', '1999-04-29', '吴文杰');
INSERT INTO `sys_user` VALUES (40, '2019105120217', '$2a$10$ON.8zRR3IuuFSpVo.sgNPO97uZdXjaQq9wPJaeagSpkd4ceHcW/iq', 'default.jpg', '154147358@qq.com', '17536531685', '0', '2023-03-15 15:36:33', '2023-03-15 15:59:15', '2023-03-15 15:36:32批量导入', b'0', '男', '1999-04-29', '吴文豪');
INSERT INTO `sys_user` VALUES (41, '2019105120218', '$2a$10$JMsdnb0BJuh2BXyAjzI3fedBhzRNQY/Z/gHzAWnCjIVCFqA0jT5sG', 'default.jpg', '154147358@qq.com', '17335731885', '0', '2023-03-16 15:20:45', NULL, 'xxxx', b'0', '男', '1999-04-29', '吴文杰');
INSERT INTO `sys_user` VALUES (44, '2019105120219', '$2a$10$JUe6T684nLmVsoPKw4d29OP2w7eRoqOuaDU7D2j7uNzzTwVL9XMkC', 'default.jpg', '1210449063@qq.com', '17633703837', '0', '2023-03-16 15:22:52', NULL, '123456', b'0', '男', '1999-04-29', '吴文杰');
INSERT INTO `sys_user` VALUES (45, '2019105120220', '$2a$10$LFdnm3e5eBkyGe1M/0QlpOqLEqR2YEFz0QAtN3lw6WULd6hfcDvf2', 'default.jpg', '154147358@qq.com', '17335731885', '0', '2023-03-18 11:46:27', NULL, 'xxxxx', b'0', '男', '1999-04-29', '吴文杰');
INSERT INTO `sys_user` VALUES (46, '2019105120221', '$2a$10$yvcH74/18ZrxJxLd.2dWCuaOM7grueBwNM5gorRCrM.6B9AfrOA6q', 'default.jpg', '154147358@qq.com', '17335731885', '0', '2023-03-26 14:18:25', '2023-03-26 15:54:04', '123', b'0', '女', '2023-03-07', '吴文杰');
INSERT INTO `sys_user` VALUES (47, '1002', '$2a$10$5xQGPXJmWAdAKiPYPuw3X.Dh0K2BSeIgDduYh2wJ3MLfV51Xa3i.S', 'default.jpg', '1210449063@qq.com', '17633703837', '0', '2023-03-31 18:10:48', NULL, '123', b'0', NULL, NULL, '李四');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户角色主键ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (46, 29, 22);
INSERT INTO `sys_user_role` VALUES (47, 1, 1);
INSERT INTO `sys_user_role` VALUES (48, 30, 22);
INSERT INTO `sys_user_role` VALUES (49, 5, 22);
INSERT INTO `sys_user_role` VALUES (50, 45, 22);
INSERT INTO `sys_user_role` VALUES (51, 15, 22);
INSERT INTO `sys_user_role` VALUES (52, 31, 22);
INSERT INTO `sys_user_role` VALUES (53, 32, 22);
INSERT INTO `sys_user_role` VALUES (54, 33, 22);
INSERT INTO `sys_user_role` VALUES (55, 34, 22);
INSERT INTO `sys_user_role` VALUES (56, 35, 22);
INSERT INTO `sys_user_role` VALUES (57, 36, 22);
INSERT INTO `sys_user_role` VALUES (58, 37, 22);
INSERT INTO `sys_user_role` VALUES (59, 38, 22);
INSERT INTO `sys_user_role` VALUES (60, 39, 22);
INSERT INTO `sys_user_role` VALUES (61, 40, 22);
INSERT INTO `sys_user_role` VALUES (62, 41, 22);
INSERT INTO `sys_user_role` VALUES (63, 44, 22);
INSERT INTO `sys_user_role` VALUES (64, 28, 22);
INSERT INTO `sys_user_role` VALUES (65, 46, 2);
INSERT INTO `sys_user_role` VALUES (67, 3, 22);
INSERT INTO `sys_user_role` VALUES (68, 4, 22);
INSERT INTO `sys_user_role` VALUES (69, 2, 2);
INSERT INTO `sys_user_role` VALUES (70, 47, 2);

-- ----------------------------
-- Table structure for text_content
-- ----------------------------
DROP TABLE IF EXISTS `text_content`;
CREATE TABLE `text_content`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 335 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of text_content
-- ----------------------------
INSERT INTO `text_content` VALUES (141, '{\"titleContent\":\"123\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"42\"},{\"prefix\":\"B\",\"content\":\"488\"},{\"prefix\":\"C\",\"content\":\"42\"},{\"prefix\":\"D\",\"content\":\"10\"}],\"correct\":\"A\"}', '2023-03-31 13:25:11');
INSERT INTO `text_content` VALUES (142, '{\"titleContent\":\"123\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"12312\"},{\"prefix\":\"B\",\"content\":\"121212\"},{\"prefix\":\"C\",\"content\":\"312321\"},{\"prefix\":\"D\",\"content\":\"412\"}],\"correct\":\"A\"}', '2023-03-31 13:44:29');
INSERT INTO `text_content` VALUES (143, '[{\"name\":\"多选题\",\"questionItems\":[{\"id\":62,\"itemOrder\":1}],\"score\":2}]', '2023-03-31 14:18:29');
INSERT INTO `text_content` VALUES (144, '[{\"correct\":\"A\",\"score\":0,\"questionScore\":2,\"doRight\":0,\"questionVM\":{\"titleContent\":\"123\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"12312\"},{\"prefix\":\"B\",\"content\":\"121212\"},{\"prefix\":\"C\",\"content\":\"312321\"},{\"prefix\":\"D\",\"content\":\"412\"}],\"correct\":\"A\"},\"questionId\":62,\"answer\":\"\",\"questionType\":1}]', '2023-03-31 17:04:10');
INSERT INTO `text_content` VALUES (145, '{\"titleContent\":\"DB、DBMS和DBS三者之间的关系是（ ）。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"DB包括DBMS和DBS\"},{\"prefix\":\"B\",\"content\":\"DBS包括DB和DBMS\"},{\"prefix\":\"C\",\"content\":\"DBMS包括DB和DBS\"},{\"prefix\":\"D\",\"content\":\"不能相互包括\"}],\"correct\":\"B\"}', '2023-03-31 18:52:10');
INSERT INTO `text_content` VALUES (146, '{\"titleContent\":\"对数据库物理存储方式的描述称为（ ）\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"外模式\"},{\"prefix\":\"B\",\"content\":\"内模式\"},{\"prefix\":\"C\",\"content\":\"概念模式\"},{\"prefix\":\"D\",\"content\":\"逻辑模式\"}],\"correct\":\"B\"}', '2023-03-31 18:52:25');
INSERT INTO `text_content` VALUES (147, '{\"titleContent\":\"下列正确的命令是( )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"show tables;\"},{\"prefix\":\"B\",\"content\":\"show columns;\"},{\"prefix\":\"C\",\"content\":\"show columns from customers;\"},{\"prefix\":\"D\",\"content\":\"show databases;\"}],\"correct\":\"C,D\"}', '2023-03-31 18:54:44');
INSERT INTO `text_content` VALUES (148, '{\"titleContent\":\"mysQL支持哪些逻辑运算符\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"&&\"},{\"prefix\":\"B\",\"content\":\"||\"},{\"prefix\":\"C\",\"content\":\"NOT\"},{\"prefix\":\"D\",\"content\":\"AND\"}],\"correct\":\"A,B\"}', '2023-03-31 18:54:56');
INSERT INTO `text_content` VALUES (149, '[{\"name\":\"单选题\",\"questionItems\":[{\"id\":63,\"itemOrder\":1},{\"id\":64,\"itemOrder\":2},{\"id\":72,\"itemOrder\":3},{\"id\":73,\"itemOrder\":4},{\"id\":71,\"itemOrder\":5},{\"id\":77,\"itemOrder\":6},{\"id\":74,\"itemOrder\":7},{\"id\":75,\"itemOrder\":8},{\"id\":90,\"itemOrder\":9},{\"id\":105,\"itemOrder\":10}],\"score\":3},{\"name\":\"多选题\",\"questionItems\":[{\"id\":66,\"itemOrder\":11},{\"id\":65,\"itemOrder\":12},{\"id\":107,\"itemOrder\":13},{\"id\":109,\"itemOrder\":14},{\"id\":108,\"itemOrder\":15}],\"score\":6},{\"name\":\"判断题\",\"questionItems\":[{\"id\":138,\"itemOrder\":16},{\"id\":140,\"itemOrder\":17},{\"id\":139,\"itemOrder\":18},{\"id\":137,\"itemOrder\":19},{\"id\":136,\"itemOrder\":20}],\"score\":4},{\"name\":\"填空题\",\"questionItems\":[{\"id\":120,\"itemOrder\":21},{\"id\":92,\"itemOrder\":22}],\"score\":5},{\"name\":\"简答题\",\"questionItems\":[{\"id\":128,\"itemOrder\":23},{\"id\":130,\"itemOrder\":24}],\"score\":5}]', '2023-03-31 18:55:38');
INSERT INTO `text_content` VALUES (150, '[{\"correct\":\"A\",\"score\":0,\"questionScore\":5,\"doRight\":0,\"questionVM\":{\"titleContent\":\"123\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"1\"},{\"prefix\":\"B\",\"content\":\"2\"},{\"prefix\":\"C\",\"content\":\"3\"},{\"prefix\":\"D\",\"content\":\"4\"}],\"correct\":\"A\"},\"questionId\":63,\"answer\":\"C\",\"questionType\":1},{\"correct\":\"B\",\"score\":0,\"questionScore\":5,\"doRight\":0,\"questionVM\":{\"titleContent\":\"12345\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"1\"},{\"prefix\":\"B\",\"content\":\"2\"},{\"prefix\":\"C\",\"content\":\"3\"},{\"prefix\":\"D\",\"content\":\"4\"}],\"correct\":\"B\"},\"questionId\":64,\"answer\":\"C\",\"questionType\":1},{\"correct\":\"A,B\",\"score\":0,\"questionScore\":6,\"doRight\":0,\"questionVM\":{\"titleContent\":\"213\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"2332\"},{\"prefix\":\"B\",\"content\":\"2\"},{\"prefix\":\"C\",\"content\":\"12312\"},{\"prefix\":\"D\",\"content\":\"122134\"}],\"correct\":\"\"},\"questionId\":66,\"answerList\":[\"B\"],\"questionType\":2},{\"correct\":\"C,D\",\"score\":0,\"questionScore\":6,\"doRight\":0,\"questionVM\":{\"titleContent\":\"123123\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"12412\"},{\"prefix\":\"B\",\"content\":\"3123\"},{\"prefix\":\"C\",\"content\":\"4332\"},{\"prefix\":\"D\",\"content\":\"2213\"}],\"correct\":\"\"},\"questionId\":65,\"answerList\":[\"C\"],\"questionType\":2}]', '2023-03-31 18:57:20');
INSERT INTO `text_content` VALUES (151, '[{\"name\":\"单选题\",\"questionItems\":[{\"id\":62,\"itemOrder\":1}],\"score\":2}]', '2023-04-01 15:21:43');
INSERT INTO `text_content` VALUES (152, '{\"titleContent\":\"123\",\"questionEditItemVMS\":[],\"correct\":\"123123123\"}', '2023-04-01 17:00:04');
INSERT INTO `text_content` VALUES (153, '{\"titleContent\":\"123123\",\"questionEditItemVMS\":[],\"correct\":\"12312412\"}', '2023-04-01 17:00:11');
INSERT INTO `text_content` VALUES (154, '{\"titleContent\":\"123\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"}', '2023-04-01 17:00:17');
INSERT INTO `text_content` VALUES (155, '{\"titleContent\":\"123\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"123\"},{\"prefix\":\"B\",\"content\":\"123\"},{\"prefix\":\"C\",\"content\":\"324\"},{\"prefix\":\"D\",\"content\":\"123\"}],\"correct\":\"A\"}', '2023-04-01 17:01:11');
INSERT INTO `text_content` VALUES (156, '[{\"name\":\"单选题\",\"questionItems\":[{\"id\":62,\"itemOrder\":1}],\"score\":5},{\"name\":\"判断题\",\"questionItems\":[{\"id\":69,\"itemOrder\":2}],\"score\":3},{\"name\":\"填空题\",\"questionItems\":[{\"id\":67,\"itemOrder\":3}],\"score\":5},{\"name\":\"简答题\",\"questionItems\":[{\"id\":68,\"itemOrder\":4}],\"score\":10}]', '2023-04-01 17:02:52');
INSERT INTO `text_content` VALUES (157, '[{\"correct\":\"A\",\"score\":0,\"questionScore\":5,\"doRight\":0,\"questionVM\":{\"titleContent\":\"123\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"12312\"},{\"prefix\":\"B\",\"content\":\"121212\"},{\"prefix\":\"C\",\"content\":\"312321\"},{\"prefix\":\"D\",\"content\":\"412\"}],\"correct\":\"A\"},\"questionId\":62,\"answer\":\"B\",\"questionType\":1},{\"correct\":\"A\",\"score\":3,\"questionScore\":3,\"doRight\":1,\"questionVM\":{\"titleContent\":\"123\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"},\"questionId\":69,\"answer\":\"A\",\"questionType\":3},{\"correct\":\"123123123\",\"score\":2,\"questionScore\":5,\"doRight\":1,\"questionVM\":{\"titleContent\":\"123\",\"questionEditItemVMS\":[],\"correct\":\"123123123\"},\"questionId\":67,\"answer\":\"123\",\"questionType\":4},{\"correct\":\"12312412\",\"score\":4,\"questionScore\":10,\"doRight\":1,\"questionVM\":{\"titleContent\":\"123123\",\"questionEditItemVMS\":[],\"correct\":\"12312412\"},\"questionId\":68,\"answer\":\"123324\",\"questionType\":5}]', '2023-04-01 17:16:25');
INSERT INTO `text_content` VALUES (158, '[{\"name\":\"单选题\",\"questionItems\":[{\"id\":62}]},{\"name\":\"判断题\",\"questionItems\":[{\"id\":69}]},{\"name\":\"判断题\",\"questionItems\":[{\"id\":67}]},{\"name\":\"判断题\",\"questionItems\":[{\"id\":68}]}]', '2023-04-01 17:33:34');
INSERT INTO `text_content` VALUES (159, '[{\"name\":\"单选题\",\"questionItems\":[{\"id\":183,\"itemOrder\":1},{\"id\":170,\"itemOrder\":2},{\"id\":172,\"itemOrder\":3},{\"id\":171,\"itemOrder\":4},{\"id\":182,\"itemOrder\":5},{\"id\":188,\"itemOrder\":6},{\"id\":185,\"itemOrder\":7},{\"id\":184,\"itemOrder\":8},{\"id\":186,\"itemOrder\":9},{\"id\":187,\"itemOrder\":10}],\"score\":3},{\"name\":\"多选题\",\"questionItems\":[{\"id\":201,\"itemOrder\":11},{\"id\":198,\"itemOrder\":12},{\"id\":199,\"itemOrder\":13},{\"id\":203,\"itemOrder\":14},{\"id\":204,\"itemOrder\":15},{\"id\":202,\"itemOrder\":16}],\"score\":5},{\"name\":\"判断题\",\"questionItems\":[{\"id\":178,\"itemOrder\":17},{\"id\":177,\"itemOrder\":18},{\"id\":179,\"itemOrder\":19},{\"id\":176,\"itemOrder\":20},{\"id\":180,\"itemOrder\":21}],\"score\":2},{\"name\":\"填空题\",\"questionItems\":[{\"id\":213,\"itemOrder\":22},{\"id\":215,\"itemOrder\":23},{\"id\":214,\"itemOrder\":24},{\"id\":212,\"itemOrder\":25},{\"id\":216,\"itemOrder\":26}],\"score\":2},{\"name\":\"简答题\",\"questionItems\":[{\"id\":239,\"itemOrder\":27},{\"id\":237,\"itemOrder\":28},{\"id\":238,\"itemOrder\":29},{\"id\":228,\"itemOrder\":30}],\"score\":5}]', '2023-04-04 13:15:22');
INSERT INTO `text_content` VALUES (160, '{\"titleContent\":\"在数据库三级模式间引入二级映象的主要作用是（　 　）\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"提高数据与程序的独立性\"},{\"prefix\":\"B\",\"content\":\"提高数据与程序的安全性\"},{\"prefix\":\"C\",\"content\":\"保持数据与程序的一致性\"},{\"prefix\":\"D\",\"content\":\"提高数据与程序的可移植性\"}],\"correct\":\"A\"}', '2023-04-27 12:11:02');
INSERT INTO `text_content` VALUES (161, '{\"titleContent\":\"视图是一个“虚表”，视图的构造基于（ ）\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"基本表\"},{\"prefix\":\"B\",\"content\":\"视图\"},{\"prefix\":\"C\",\"content\":\"基本表或视图\"},{\"prefix\":\"D\",\"content\":\"数据字典\"}],\"correct\":\"C\"}', '2023-04-27 12:11:30');
INSERT INTO `text_content` VALUES (162, '{\"titleContent\":\"关系代数中的π运算符对应SELECT语句中的以下哪个子句？（　 ）\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"SELECT\"},{\"prefix\":\"B\",\"content\":\"FROM\"},{\"prefix\":\"C\",\"content\":\"WHERE \"},{\"prefix\":\"D\",\"content\":\"GROUP BY\"}],\"correct\":\"A\"}', '2023-04-27 12:12:13');
INSERT INTO `text_content` VALUES (163, '{\"titleContent\":\"公司中有多个部门和多名职员，每个职员只能属于一个部门，一个部门可以有多名职员，从职员到部门的联系类型是（ ）\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"多对多\"},{\"prefix\":\"B\",\"content\":\"一对一\"},{\"prefix\":\"C\",\"content\":\"多对一\"},{\"prefix\":\"D\",\"content\":\"一对多\"}],\"correct\":\"C\"}', '2023-04-27 12:12:42');
INSERT INTO `text_content` VALUES (164, '{\"titleContent\":\"如何构造出一个合适的数据逻辑结构是（ ）主要解决的问题。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"关系系统查询优化\"},{\"prefix\":\"B\",\"content\":\"数据字典\"},{\"prefix\":\"C\",\"content\":\"关系数据库规范化理论\"},{\"prefix\":\"D\",\"content\":\"关系数据库查询\"}],\"correct\":\"C\"}', '2023-04-27 12:13:08');
INSERT INTO `text_content` VALUES (165, '{\"titleContent\":\"将E-R模型转换成关系模型，属于数据库的（ ）。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"需求分析\"},{\"prefix\":\"B\",\"content\":\"概念设计\"},{\"prefix\":\"C\",\"content\":\"逻辑设计\"},{\"prefix\":\"D\",\"content\":\"物理设计\"}],\"correct\":\"C\"}', '2023-04-27 12:13:36');
INSERT INTO `text_content` VALUES (166, '{\"titleContent\":\"事务日志的用途是（ ）\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"事务处理\"},{\"prefix\":\"B\",\"content\":\"完整性约束\"},{\"prefix\":\"C\",\"content\":\"数据恢复\"},{\"prefix\":\"D\",\"content\":\"安全性控制\"}],\"correct\":\"C\"}', '2023-04-27 12:14:06');
INSERT INTO `text_content` VALUES (167, '{\"titleContent\":\"如果事务T已在数据R上加了X锁，则其他事务在数据R上（ ）\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"只可加X锁\"},{\"prefix\":\"B\",\"content\":\"只可加S锁\"},{\"prefix\":\"C\",\"content\":\"可加S锁或X锁\"},{\"prefix\":\"D\",\"content\":\"不能加任何锁\"}],\"correct\":\"D\"}', '2023-04-27 12:14:52');
INSERT INTO `text_content` VALUES (168, '{\"titleContent\":\"说明视图与基本表的区别和联系。\",\"questionEditItemVMS\":[],\"correct\":\"视图是从一个或多个基本表中导出来的表，它与基本表不同，他是一个虚表，数据库中只存放视图的定义，而不存放视图对应的数据，这些数据存放在原来的基本表中，当基本表中的数据发生变化，从视图中查询出的数据也随之改变。视图一经定义就可以像基本表一样被查询、删除，也可以在一个视图之上再定义新的视图，但是对视图的更新操作有限制。\"}', '2023-04-27 12:15:49');
INSERT INTO `text_content` VALUES (169, '{\"titleContent\":\"简述事务的特征。\",\"questionEditItemVMS\":[],\"correct\":\"原子性：事务中包括所有操作，要么都做，要么都不做。 一执行：事务必须使数据库从一个一致性状态变到另一个一致性状态。 隔离性：一个事务内部的操作以及使用的数据对并发的其他事务是隔离的。 持久性：事务一旦提交，对数据库的改变是永久的。\"}', '2023-04-27 12:16:13');
INSERT INTO `text_content` VALUES (170, '{\"titleContent\":\"试述关系模型的参照完整性规则。\",\"questionEditItemVMS\":[],\"correct\":\"若属性F是基本关系R的外码，他与基本关系S的主码Ks相对应，则对于R中每个元组在F上的值必须为取空值，或者等于S中某个元组的主码值。\"}', '2023-04-27 12:16:35');
INSERT INTO `text_content` VALUES (171, '{\"titleContent\":\"以下聚合函数求数据总和的是( )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"MAX\"},{\"prefix\":\"B\",\"content\":\"SUM\"},{\"prefix\":\"C\",\"content\":\"COUNT\"},{\"prefix\":\"D\",\"content\":\"AVG\"}],\"correct\":\"B\"}', '2023-04-27 12:17:32');
INSERT INTO `text_content` VALUES (172, '{\"titleContent\":\"可以用(      )来声明游标 \",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"CREATE CURSOR\"},{\"prefix\":\"B\",\"content\":\"ALTER CURSOR \"},{\"prefix\":\"C\",\"content\":\"SET CURSOR\"},{\"prefix\":\"D\",\"content\":\"DECLARE CURSOR\"}],\"correct\":\"D\"}', '2023-04-27 12:18:07');
INSERT INTO `text_content` VALUES (173, '{\"titleContent\":\"SELECT语句的完整语法较复杂，但至少包括的部分是(   )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"仅SELECT\"},{\"prefix\":\"B\",\"content\":\"SELECT，FROM\"},{\"prefix\":\"C\",\"content\":\"SELECT，GROUP\"},{\"prefix\":\"D\",\"content\":\"SELECT，INTO\"}],\"correct\":\"B\"}', '2023-04-27 12:18:48');
INSERT INTO `text_content` VALUES (174, '{\"titleContent\":\"SQL语句中的条件用以下哪一项来表达(      )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"THEN\"},{\"prefix\":\"B\",\"content\":\"WHILE\"},{\"prefix\":\"C\",\"content\":\"WHERE \"},{\"prefix\":\"D\",\"content\":\"IF\"}],\"correct\":\"C\"}', '2023-04-27 12:19:17');
INSERT INTO `text_content` VALUES (175, '{\"titleContent\":\"使用CREATE TABLE语句的(      )子句，在创建基本表时可以启用全文本搜索\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"FULLTEXT\"},{\"prefix\":\"B\",\"content\":\"ENGINE\"},{\"prefix\":\"C\",\"content\":\"FROM\"},{\"prefix\":\"D\",\"content\":\"WHRER\"}],\"correct\":\"A\"}', '2023-04-27 12:19:41');
INSERT INTO `text_content` VALUES (176, '{\"titleContent\":\"以下能够删除一列的是(      )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"alter table emp remove addcolumn\"},{\"prefix\":\"B\",\"content\":\"alter table emp drop column addcolumn\"},{\"prefix\":\"C\",\"content\":\"alter table emp delete column addcolumn\"},{\"prefix\":\"D\",\"content\":\"alter table emp delete addcolumn\"}],\"correct\":\"B\"}', '2023-04-27 12:20:24');
INSERT INTO `text_content` VALUES (177, '{\"titleContent\":\"若要撤销数据库中已经存在的表S，可用（ ）。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"DELETE TABLE S\"},{\"prefix\":\"B\",\"content\":\"DELETE S\"},{\"prefix\":\"C\",\"content\":\"DROP S\"},{\"prefix\":\"D\",\"content\":\"DROP TABLE S\"}],\"correct\":\"D\"}', '2023-04-27 12:20:58');
INSERT INTO `text_content` VALUES (178, '{\"titleContent\":\"查找表结构用以下哪一项(      )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"FIND\"},{\"prefix\":\"B\",\"content\":\"SELETE\"},{\"prefix\":\"C\",\"content\":\"ALTER \"},{\"prefix\":\"D\",\"content\":\"DESC\"}],\"correct\":\"D\"}', '2023-04-27 12:21:24');
INSERT INTO `text_content` VALUES (179, '{\"titleContent\":\"要得到最后一句SELECT查询到的总行数，可以使用的函数是(      ) \",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"FOUND_ROWS\"},{\"prefix\":\"B\",\"content\":\"LAST_ROWS\"},{\"prefix\":\"C\",\"content\":\"ROW_COUNT\"},{\"prefix\":\"D\",\"content\":\"LAST_INSERT_ID\"}],\"correct\":\"A\"}', '2023-04-27 12:21:54');
INSERT INTO `text_content` VALUES (180, '{\"titleContent\":\"select 9/3;的结果为_____。\",\"questionEditItemVMS\":[],\"correct\":\"3.0000\"}', '2023-04-27 12:22:28');
INSERT INTO `text_content` VALUES (181, '{\"titleContent\":\"补全语句:select vend_id,count(*) as num_prods from products group by ____;\",\"questionEditItemVMS\":[],\"correct\":\"vend_id\"}', '2023-04-27 12:22:47');
INSERT INTO `text_content` VALUES (182, '{\"titleContent\":\"用SELECT进行模糊查询时，可以使用匹配符，但要在条件值中使用____或%等通配符来配合查询。\",\"questionEditItemVMS\":[],\"correct\":\"-\"}', '2023-04-27 12:23:01');
INSERT INTO `text_content` VALUES (183, '{\"titleContent\":\"当所查询的表不在当前数据库时，可用__________格式来指出表或视图对象\",\"questionEditItemVMS\":[],\"correct\":\"数据库.所有者名称.对象名称\"}', '2023-04-27 12:23:20');
INSERT INTO `text_content` VALUES (184, '{\"titleContent\":\"语句SELECT　“1+2”；的显示结果是＿＿＿＿\",\"questionEditItemVMS\":[],\"correct\":\"“1+2”\"}', '2023-04-27 12:23:39');
INSERT INTO `text_content` VALUES (185, '{\"titleContent\":\"如果MySQL服务名为MySQL5，则在Windows的命令窗口中，启动MySQL服务的指令是____\",\"questionEditItemVMS\":[],\"correct\":\"net start mysql5\"}', '2023-04-27 12:23:54');
INSERT INTO `text_content` VALUES (186, '{\"titleContent\":\"MySQL是一种＿＿＿＿＿＿（多用户、单用户）的数据库管理系统\",\"questionEditItemVMS\":[],\"correct\":\"多用户\"}', '2023-04-27 12:24:06');
INSERT INTO `text_content` VALUES (187, '{\"titleContent\":\"select (NULL<=>NULL) is NULL;的结果为_____。\",\"questionEditItemVMS\":[],\"correct\":\"0\"}', '2023-04-27 12:24:18');
INSERT INTO `text_content` VALUES (188, '{\"titleContent\":\"创建数据表的命令语句是＿＿＿＿＿＿＿＿＿\",\"questionEditItemVMS\":[],\"correct\":\"create table\"}', '2023-04-27 12:24:28');
INSERT INTO `text_content` VALUES (189, '{\"titleContent\":\"____语句可以修改表中各列的先后顺序\",\"questionEditItemVMS\":[],\"correct\":\"ALTER TABLE\"}', '2023-04-27 12:24:38');
INSERT INTO `text_content` VALUES (190, '{\"titleContent\":\"当某字段要使用AUTO＿INCREMENT的属性时，该字段必须是＿＿＿＿类型的数据。\",\"questionEditItemVMS\":[],\"correct\":\"INT\"}', '2023-04-27 12:24:47');
INSERT INTO `text_content` VALUES (191, '{\"titleContent\":\"当某字段要使用AUTO＿INCREMENT的属性时，除了该字段必须是指定的类型外，该字段还必须是________\",\"questionEditItemVMS\":[],\"correct\":\"关键字段或索引字段\"}', '2023-04-27 12:25:08');
INSERT INTO `text_content` VALUES (192, '{\"titleContent\":\"在SELECT语句的FROM子句中最多可以指定_______个表或视图\",\"questionEditItemVMS\":[],\"correct\":\"256\"}', '2023-04-27 12:25:18');
INSERT INTO `text_content` VALUES (193, '{\"titleContent\":\"ODBC是一种____________\",\"questionEditItemVMS\":[],\"correct\":\"开放式数据库连接\"}', '2023-04-27 12:25:27');
INSERT INTO `text_content` VALUES (194, '{\"titleContent\":\"查找条件为：姓名为NULL的记录(      )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"WHERE NAME NULL\"},{\"prefix\":\"B\",\"content\":\"WHERE NAME IS NULL\"},{\"prefix\":\"C\",\"content\":\"WHERE NAME=NULL\"},{\"prefix\":\"D\",\"content\":\"WHERE NAME ==NULL\"}],\"correct\":\"B\"}', '2023-04-27 12:26:44');
INSERT INTO `text_content` VALUES (195, '{\"titleContent\":\"条件“IN(20,30,40)”表示(      )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"年龄在20到40之间\"},{\"prefix\":\"B\",\"content\":\"年龄在20到30之间\"},{\"prefix\":\"C\",\"content\":\"年龄是20或30或40\"},{\"prefix\":\"D\",\"content\":\"年龄在30到40之间\"}],\"correct\":\"C\"}', '2023-04-27 12:27:05');
INSERT INTO `text_content` VALUES (196, '{\"titleContent\":\"关于主键下列说法正确的是()\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"可以是表中的一个字段\"},{\"prefix\":\"B\",\"content\":\"是确定数据库中的表的记录的唯一标识字段\"},{\"prefix\":\"C\",\"content\":\"该字段不可为空也不可以重复\"},{\"prefix\":\"D\",\"content\":\"可以是表中的多个字段组成的\"}],\"correct\":\"\"}', '2023-04-27 12:31:23');
INSERT INTO `text_content` VALUES (197, '{\"titleContent\":\"下面正确的说法是() \",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"关键字只能由单个的属性组成\"},{\"prefix\":\"B\",\"content\":\"在一个关系中，关键字的值不能为空\"},{\"prefix\":\"C\",\"content\":\"一个关系中的所有候选关键字均可以被指定为主关键字\"},{\"prefix\":\"D\",\"content\":\"关键字是关系中能够用来惟一标识元组的属性\"}],\"correct\":\"\"}', '2023-04-27 12:32:15');
INSERT INTO `text_content` VALUES (198, '{\"titleContent\":\"触发器是响应以下任意语句而自动执行的一条或一组 MYSQL 语句( )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"UPDATE\"},{\"prefix\":\"B\",\"content\":\"INSERT\"},{\"prefix\":\"C\",\"content\":\"SELECT\"},{\"prefix\":\"D\",\"content\":\"DELETE\"}],\"correct\":\"\"}', '2023-04-27 12:33:03');
INSERT INTO `text_content` VALUES (199, '{\"titleContent\":\"对于删除操作以下说法正确的是 ()A. delete from 表名 where 字段名=值;删除符合条件的记录条 D，drop table 表名;删除表\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"drop database 数据库名；删除数据库\"},{\"prefix\":\"B\",\"content\":\"delete from 表名；删除表中所有记录条\"},{\"prefix\":\"C\",\"content\":\"delete from 表名 where 字段名=值；删除符合条件的记录条\"},{\"prefix\":\"D\",\"content\":\"drop table 表名；删除表\"}],\"correct\":\"\"}', '2023-04-27 12:35:03');
INSERT INTO `text_content` VALUES (200, '{\"titleContent\":\"下列语句错误的是(）\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"select * from orders where ordername is not null；\"},{\"prefix\":\"B\",\"content\":\"select * from orders where ordername<>null;\"},{\"prefix\":\"C\",\"content\":\"select * from orders where ordername is null;\"},{\"prefix\":\"D\",\"content\":\"select * from orders where ordername not is null;\"}],\"correct\":\"\"}', '2023-04-27 12:36:38');
INSERT INTO `text_content` VALUES (201, '{\"titleContent\":\"下列是 MYSQL 比较运算符的是(\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"!=\"},{\"prefix\":\"B\",\"content\":\"<>\"},{\"prefix\":\"C\",\"content\":\"==\"},{\"prefix\":\"D\",\"content\":\">=\"}],\"correct\":\"\"}', '2023-04-27 12:37:46');
INSERT INTO `text_content` VALUES (202, '{\"titleContent\":\"下面关于使用 UPDATE 语句，正确的是( )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"被定义为 NOT NULL 的列不可以被更新为 NULL \"},{\"prefix\":\"B\",\"content\":\"不能在一个子查询中更新一个表，同时从同一个表中选择\"},{\"prefix\":\"C\",\"content\":\"不能把 ORDER BY或 LIMIT 与多表语法的UPDATE 语同时使用\"},{\"prefix\":\"D\",\"content\":\"如果把一列设置为其当前含有的值，则该列不会更新\"}],\"correct\":\"B,C,D\"}', '2023-04-27 12:38:38');
INSERT INTO `text_content` VALUES (203, '{\"titleContent\":\"下列说法正确的是( )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"在 MySQL 中，不允许有空表存在，即一张数据表中不允许没有字段。\"},{\"prefix\":\"B\",\"content\":\"在 MySQL中，对于存放在服务器上的数据库，用户可以通过任何客户端进行访问\"},{\"prefix\":\"C\",\"content\":\"数据表的结构中包含字段名、类型、长度、记录。\"},{\"prefix\":\"D\",\"content\":\"字符型数据其常量标志是单引号和双引号，且两种符号可以混用。\"}],\"correct\":\"\"}', '2023-04-27 12:39:26');
INSERT INTO `text_content` VALUES (204, '{\"titleContent\":\"数据库服务器、数据库和表的关系，正确的说法是(      )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"一个数据库服务器只能管理一个数据库，一个数据库只能包含一个表\"},{\"prefix\":\"B\",\"content\":\"一个数据库服务器可以管理多个数据库，一个数据库可以包含多个表\"},{\"prefix\":\"C\",\"content\":\"一个数据库服务器只能管理一个数据库，一个数据库可以包含多个表\"},{\"prefix\":\"D\",\"content\":\"一个数据库服务器可以管理多个数据库，一个数据库只能包含一个表\"}],\"correct\":\"B\"}', '2023-04-27 12:40:36');
INSERT INTO `text_content` VALUES (205, '{\"titleContent\":\"下列哪些语句对主键的说明正确(      )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"主键可重复\"},{\"prefix\":\"B\",\"content\":\"主键不唯一\"},{\"prefix\":\"C\",\"content\":\"在数据表中的唯一索引\"},{\"prefix\":\"D\",\"content\":\"主键用foreign key修饰\"}],\"correct\":\"C\"}', '2023-04-27 12:41:05');
INSERT INTO `text_content` VALUES (206, '{\"titleContent\":\"统计每个部门中人数(      )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"SELECT SUM(ID) FROM EMP GROUP BY DEPTNO;\"},{\"prefix\":\"B\",\"content\":\"SELECT SUM(ID) FROM EMP GROUP BY DEPTNO;\"},{\"prefix\":\"C\",\"content\":\"SELECT COUNT(ID) FROM EMP ORDER BY DEPTNO;\"},{\"prefix\":\"D\",\"content\":\"SELECT COUNT(ID) FROM EMP GROUP BY DEPTNO;\"}],\"correct\":\"D\"}', '2023-04-27 12:41:28');
INSERT INTO `text_content` VALUES (207, '{\"titleContent\":\"在 SELECT 语句的 FROM 子句中可以指定多个表或视图，相互之间要用____分隔\",\"questionEditItemVMS\":[],\"correct\":\"逗号\"}', '2023-04-27 12:42:39');
INSERT INTO `text_content` VALUES (208, '{\"titleContent\":\"Table\'a1\' already exists 这个错误信息的含义是________\",\"questionEditItemVMS\":[],\"correct\":\"表 a1 已经存在\"}', '2023-04-27 12:43:01');
INSERT INTO `text_content` VALUES (209, '{\"titleContent\":\"对一个超过 200 个汉字的内容，应用一个_____型的字段来存放\",\"questionEditItemVMS\":[],\"correct\":\"text\"}', '2023-04-27 12:43:19');
INSERT INTO `text_content` VALUES (210, '{\"titleContent\":\"语句 SELECT “张三n 李四”的显示结果是________\",\"questionEditItemVMS\":[],\"correct\":\"”张三\\\\n 李四”\"}', '2023-04-27 12:43:45');
INSERT INTO `text_content` VALUES (211, '{\"titleContent\":\"下列（   ）类型不是MySQL中常用的的数据类型。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"INT\"},{\"prefix\":\"B\",\"content\":\"VAR\"},{\"prefix\":\"C\",\"content\":\"TIME\"},{\"prefix\":\"D\",\"content\":\"CHAR\"}],\"correct\":\"B\"}', '2023-04-27 12:44:58');
INSERT INTO `text_content` VALUES (212, '{\"titleContent\":\"在MySQL中，通常使用（     ）语句来指定一个已有数据库作为当前工作数据库。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"USING\"},{\"prefix\":\"B\",\"content\":\"USED\"},{\"prefix\":\"C\",\"content\":\"USES\"},{\"prefix\":\"D\",\"content\":\"USE\"}],\"correct\":\"D\"}', '2023-04-27 12:45:25');
INSERT INTO `text_content` VALUES (213, '{\"titleContent\":\"delete from student where s_id >　5 的代码　如果取消　where s_id > 5 ，执行　delete from student 语句后的结果意味着什么?(     )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"删除表student\"},{\"prefix\":\"B\",\"content\":\"删除表student的所有记录\"},{\"prefix\":\"C\",\"content\":\"删除数据库student\"},{\"prefix\":\"D\",\"content\":\"语句不完整，不能执行\"}],\"correct\":\"B\"}', '2023-04-27 12:46:07');
INSERT INTO `text_content` VALUES (214, '{\"titleContent\":\"修改操作的语句　update student set s_name =N’王军’ 该代码执行后的结果是（ ）   \",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"只把姓名叫王军的记录进行更新\"},{\"prefix\":\"B\",\"content\":\"只把字段名s_name 改成　N’王军’\"},{\"prefix\":\"C\",\"content\":\"表中的所有人姓名都更新为王军\"},{\"prefix\":\"D\",\"content\":\"更新语句不完整，不能执行\"}],\"correct\":\"C\"}', '2023-04-27 12:47:07');
INSERT INTO `text_content` VALUES (215, '{\"titleContent\":\"数据库系统的核心是（  ）。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"数据模型\"},{\"prefix\":\"B\",\"content\":\"数据库管理系统\"},{\"prefix\":\"C\",\"content\":\"数据库\"},{\"prefix\":\"D\",\"content\":\"数据库管理员\"}],\"correct\":\"B\"}', '2023-04-27 12:47:50');
INSERT INTO `text_content` VALUES (216, '{\"titleContent\":\"什么是触发器？\",\"questionEditItemVMS\":[],\"correct\":\"触发器是一个被指定关联到一个表的数据对象，触发器不需要调用，当对一个表的特别事件出现时，它就会被激活。\"}', '2023-04-27 12:48:37');
INSERT INTO `text_content` VALUES (217, '{\"titleContent\":\"主键的作用是什么？\",\"questionEditItemVMS\":[],\"correct\":\"数据库主键，指的是一个列或多列的组合，其值能唯一地标识表中的每一行，通过它可强制表的实体完整性。主键主要是用于其他表的外键关联，以及本记录的修改与删除。\"}', '2023-04-27 12:48:48');
INSERT INTO `text_content` VALUES (218, '{\"titleContent\":\"写出删除数据库mydb的语句。\",\"questionEditItemVMS\":[],\"correct\":\"drop database mydb;\"}', '2023-04-27 12:49:00');
INSERT INTO `text_content` VALUES (219, '{\"titleContent\":\"如何查看学生表xs的表结构？\",\"questionEditItemVMS\":[],\"correct\":\"describe xs; 或 show create table xs;\"}', '2023-04-27 12:49:10');
INSERT INTO `text_content` VALUES (220, '{\"titleContent\":\"如果查询数据，出现中文乱码，猜测可能原因。以及该如何设置？\",\"questionEditItemVMS\":[],\"correct\":\"数据库字符集、数据库连接字符集、客户端字符集、显示结果字符集不支持gbk。set names gbk;\"}', '2023-04-27 12:49:39');
INSERT INTO `text_content` VALUES (221, '{\"titleContent\":\"外键的作用是什么？\",\"questionEditItemVMS\":[],\"correct\":\"保持数据一致性，完整性，主要目的是控制存储在外键表中的数据。 使两张表形成关联，外键只能引用外表中的列的值或使用空值\"}', '2023-04-27 12:49:53');
INSERT INTO `text_content` VALUES (222, '{\"titleContent\":\"什么是关系型数据库？\",\"questionEditItemVMS\":[],\"correct\":\"关系数据库，是建立在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。现实世界中的各种实体以及实体之间的各种联系均用关系模型来表示。关系型数据库是由多张能互相联接的二维行列表格组成的数据库。\"}', '2023-04-27 12:50:04');
INSERT INTO `text_content` VALUES (223, '{\"titleContent\":\"创建一个新表x，表结构复制自表y。写出创建语句。\",\"questionEditItemVMS\":[],\"correct\":\"create table x like y;\"}', '2023-04-27 12:50:16');
INSERT INTO `text_content` VALUES (224, '{\"titleContent\":\"AUTO INCREMENT 关键字可以指定列值自动增加，只能应用于整型字段。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"}', '2023-04-27 12:51:21');
INSERT INTO `text_content` VALUES (225, '{\"titleContent\":\"INSERT语句所插入的数据行数据可以来自另外一个SELECT语句的结果集。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"}', '2023-04-27 12:51:35');
INSERT INTO `text_content` VALUES (226, '{\"titleContent\":\"NULL表示值为0。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 12:51:42');
INSERT INTO `text_content` VALUES (227, '{\"titleContent\":\"BOOLEAN型数据用于存储逻辑值，它只有两种状态TRUE和FALSE。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"}', '2023-04-27 12:51:52');
INSERT INTO `text_content` VALUES (228, '{\"titleContent\":\"当一个表中所有行都被DELETE语句删除后，该表也同时被删除了。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 12:52:04');
INSERT INTO `text_content` VALUES (229, '{\"titleContent\":\"使用TRUNCATE命令清空表数据比使用DELETE命令执行速度要慢。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 12:52:13');
INSERT INTO `text_content` VALUES (230, '{\"titleContent\":\"在DELETE触发器中，可以引用一个名为new的虚拟表，访问被删除行的数据。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 12:52:23');
INSERT INTO `text_content` VALUES (231, '{\"titleContent\":\"当一个表中存在主键或唯一索引时，使用REPLAC语句插入数据时，会先把冲突的旧数据删除，然后插入新数据。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"}', '2023-04-27 12:52:35');
INSERT INTO `text_content` VALUES (232, '{\"titleContent\":\"存储函数使用CALL语句调用。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 12:52:46');
INSERT INTO `text_content` VALUES (233, '{\"titleContent\":\"在创建表时，可以使用IF NOT EXISTS子句确保如果表不存在才创建它\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"}', '2023-04-27 12:52:55');
INSERT INTO `text_content` VALUES (234, '{\"titleContent\":\"UNION关键字能够将两个或多个SELECT语句的结果连接起来。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 12:53:03');
INSERT INTO `text_content` VALUES (235, '{\"titleContent\":\"创建的数据库和表的名字，都可以使用中文。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 12:53:12');
INSERT INTO `text_content` VALUES (236, '{\"titleContent\":\"SELECT语句的ORDER BY子句定义的排序表达式所参照的列甚至可以不出现在输出列表中。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 12:53:23');
INSERT INTO `text_content` VALUES (237, '{\"titleContent\":\"对于字符串型数据，空字符串’’就是NULL，对于数值型数据0就是NULL。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"}', '2023-04-27 12:53:33');
INSERT INTO `text_content` VALUES (238, '{\"titleContent\":\"!=和<>都代表不等于。=和<=>都代表等于。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"}', '2023-04-27 12:53:43');
INSERT INTO `text_content` VALUES (239, '{\"titleContent\":\"在INSERT触发器中，可以引用一个名为old的虚拟表，访问被插入的数据。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"}', '2023-04-27 12:53:52');
INSERT INTO `text_content` VALUES (240, '{\"titleContent\":\"存储过程可以使用RETURN语句返回值。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"}', '2023-04-27 12:54:01');
INSERT INTO `text_content` VALUES (241, '{\"titleContent\":\"当一个表中存在主键或唯一索引时，使用INSERT语句插入数据时，会先把冲突的旧数据删除，然后插入新数据。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"}', '2023-04-27 12:54:10');
INSERT INTO `text_content` VALUES (242, '{\"titleContent\":\"TIMESTAMP类型可以自动记录当前日期时间。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 12:54:18');
INSERT INTO `text_content` VALUES (243, '{\"titleContent\":\"游标是一个被SELECT语句检索出来的结果集。在存储了游标后，应用程序或用户就可以根据需要滚动或浏览其中的数据。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 12:54:31');
INSERT INTO `text_content` VALUES (244, '{\"titleContent\":\"创建数据表时，下列哪种列类型的宽度定义是不可以省略的。 (    )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"DATE \"},{\"prefix\":\"B\",\"content\":\"INT  \"},{\"prefix\":\"C\",\"content\":\"CHAR  \"},{\"prefix\":\"D\",\"content\":\"TEXT\"}],\"correct\":\"C\"}', '2023-04-27 12:55:50');
INSERT INTO `text_content` VALUES (245, '{\"titleContent\":\"例如数据库中有A表，包括学生，学科，成绩三个字段，如何查询最高分>80的学科？(   ) \",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"SELECT MAX(成绩)  FROM A GROUP BY学科  HAVING MAX(成绩)>80;\"},{\"prefix\":\"B\",\"content\":\"SELECT学科  FROM A GROUP BY学科  HAVING成绩>80;\"},{\"prefix\":\"C\",\"content\":\"SELECT学科  FROM A GROUP BY学科  HAVING MAX(成绩)>80;\"},{\"prefix\":\"D\",\"content\":\"SELECT学科  FROM A GROUP BY学科 WHERE MAX(成绩)>80;\"}],\"correct\":\"C\"}', '2023-04-27 12:56:38');
INSERT INTO `text_content` VALUES (246, '{\"titleContent\":\"查找数据库中所有的数据表用以下哪一项(   ) \",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"SHOW DATABASE \"},{\"prefix\":\"B\",\"content\":\"SHOW TABLES\"},{\"prefix\":\"C\",\"content\":\"SHOW DATABASES\"},{\"prefix\":\"D\",\"content\":\"SHOW TABLE\"}],\"correct\":\"B\"}', '2023-04-27 12:57:10');
INSERT INTO `text_content` VALUES (247, '{\"titleContent\":\"有三个表，它们的记录行数分别是10行、2行和6行，三个表进行交叉连接后，结果集中共有(     )行数据\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"18\"},{\"prefix\":\"B\",\"content\":\"26\"},{\"prefix\":\"C\",\"content\":\"不确定\"},{\"prefix\":\"D\",\"content\":\"120\"}],\"correct\":\"D\"}', '2023-04-27 12:58:32');
INSERT INTO `text_content` VALUES (248, '{\"titleContent\":\"在SELECT语句中，使用关键字(     )可以把重复行屏蔽\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"TOP\"},{\"prefix\":\"B\",\"content\":\"ALL\"},{\"prefix\":\"C\",\"content\":\"UNION\"},{\"prefix\":\"D\",\"content\":\"DISTINCT\"}],\"correct\":\"D\"}', '2023-04-27 12:58:54');
INSERT INTO `text_content` VALUES (249, '{\"titleContent\":\"使用（　）命令可以查看视图创建语句。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"SHOW VIEW  \"},{\"prefix\":\"B\",\"content\":\"SELECT VIEW \"},{\"prefix\":\"C\",\"content\":\"SHOW CREATE VIEW\"},{\"prefix\":\"D\",\"content\":\"DISPLAY VIEW\"}],\"correct\":\"C\"}', '2023-04-27 12:59:52');
INSERT INTO `text_content` VALUES (250, '{\"titleContent\":\"“SHOW DATABASES LIKE \'student%\'”命令无法显示出以下哪个数据库？(    )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"student_my   \"},{\"prefix\":\"B\",\"content\":\"studenty \"},{\"prefix\":\"C\",\"content\":\"mystudent \"},{\"prefix\":\"D\",\"content\":\"student\"}],\"correct\":\"C\"}', '2023-04-27 13:00:29');
INSERT INTO `text_content` VALUES (251, '{\"titleContent\":\"下面检索结果最多只有一行的命令是(      )\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\" SELECT DISTINCT * FROM orders ; \"},{\"prefix\":\"B\",\"content\":\"SELECT * FROM orders LIMIT 1,2; \"},{\"prefix\":\"C\",\"content\":\"SELECT * FROM orders GROUP BY 1; \"},{\"prefix\":\"D\",\"content\":\"SELECT * FROM orders LIMIT 1; \"}],\"correct\":\"D\"}', '2023-04-27 13:00:56');
INSERT INTO `text_content` VALUES (252, '{\"titleContent\":\"从GROUP BY分组的结果集中再次用条件表达式进行筛选的子句是(     )   \",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"FROM\"},{\"prefix\":\"B\",\"content\":\"ORDER BY\"},{\"prefix\":\"C\",\"content\":\"HAVING \"},{\"prefix\":\"D\",\"content\":\"WHERE\"}],\"correct\":\"C\"}', '2023-04-27 13:01:39');
INSERT INTO `text_content` VALUES (253, '{\"titleContent\":\"查询语句需要按照姓名name降序排列，下列语句正确的是(     )    \",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"ORDER BY DESC name\"},{\"prefix\":\"B\",\"content\":\"ORDER BY name DESC\"},{\"prefix\":\"C\",\"content\":\"ORDER BY name ASC\"},{\"prefix\":\"D\",\"content\":\"ORDER BY ASC nameE\"}],\"correct\":\"B\"}', '2023-04-27 13:02:12');
INSERT INTO `text_content` VALUES (254, '{\"titleContent\":\"在视图上不能完成的操作是(      )  \",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"查询 \"},{\"prefix\":\"B\",\"content\":\"在视图上定义新的视图 \"},{\"prefix\":\"C\",\"content\":\"更新视图\"},{\"prefix\":\"D\",\"content\":\"在视图上定义新的表\"}],\"correct\":\"D\"}', '2023-04-27 13:02:45');
INSERT INTO `text_content` VALUES (255, '{\"titleContent\":\"变量的声明应该使用哪个符号来表示？（  ）\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"_\"},{\"prefix\":\"B\",\"content\":\"#\"},{\"prefix\":\"C\",\"content\":\"&\"},{\"prefix\":\"D\",\"content\":\"@\"}],\"correct\":\"D\"}', '2023-04-27 13:03:07');
INSERT INTO `text_content` VALUES (256, '{\"titleContent\":\"SQL语言又称（  ）。    \",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"结构化定义语言\"},{\"prefix\":\"B\",\"content\":\"结构化控制语言\"},{\"prefix\":\"C\",\"content\":\"结构化查询语言\"},{\"prefix\":\"D\",\"content\":\"结构化操纵语言\"}],\"correct\":\"C\"}', '2023-04-27 13:03:29');
INSERT INTO `text_content` VALUES (257, '{\"titleContent\":\"设置表的默认字符集关键字是(　　)   \",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"DEFAULT CHARACTER\"},{\"prefix\":\"B\",\"content\":\"DEFAULT SET\"},{\"prefix\":\"C\",\"content\":\"DEFAULT\"},{\"prefix\":\"D\",\"content\":\" DEFAULT CHARACTER SET\"}],\"correct\":\"D\"}', '2023-04-27 13:04:02');
INSERT INTO `text_content` VALUES (258, '{\"titleContent\":\"为数据表创建索引的目的是(   )  \",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"提高查询的检索性能\"},{\"prefix\":\"B\",\"content\":\"归类\"},{\"prefix\":\"C\",\"content\":\"降低存储空间占用\"},{\"prefix\":\"D\",\"content\":\"提高数据安全性\"}],\"correct\":\"A\"}', '2023-04-27 13:04:31');
INSERT INTO `text_content` VALUES (259, '{\"titleContent\":\"编译Java Application 源程序文件将产生相应的字节码文件，这些字节码文件的扩展名为( )。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\".java \"},{\"prefix\":\"B\",\"content\":\".class\"},{\"prefix\":\"C\",\"content\":\".html \"},{\"prefix\":\"D\",\"content\":\".exe\"}],\"correct\":\"B\"}', '2023-04-27 13:55:19');
INSERT INTO `text_content` VALUES (260, '{\"titleContent\":\"不允许作为类及类成员的访问控制符的是(  )。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"public \"},{\"prefix\":\"B\",\"content\":\"private  \"},{\"prefix\":\"C\",\"content\":\"static \"},{\"prefix\":\"D\",\"content\":\"protected\"}],\"correct\":\"B\"}', '2023-04-27 13:55:41');
INSERT INTO `text_content` VALUES (261, '{\"titleContent\":\"为AB类的一个无形式参数无返回值的方法method书写方法头，使得使用类名AB作为前缀就可以调用它，该方法头的形式为(  )。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"static void method( ) \"},{\"prefix\":\"B\",\"content\":\"public void method( )\"},{\"prefix\":\"C\",\"content\":\"final void method( )\"},{\"prefix\":\"D\",\"content\":\"abstract void method( )\"}],\"correct\":\"A\"}', '2023-04-27 13:56:23');
INSERT INTO `text_content` VALUES (262, '{\"titleContent\":\"Java的源代码中定义几个类，编译结果就生成几个以.class为后缀的字节码文件。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"}', '2023-04-27 13:57:08');
INSERT INTO `text_content` VALUES (263, '{\"titleContent\":\"Java程序里,创建新的类对象用关键字new，回收无用的类对象使用关键字free。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 13:57:16');
INSERT INTO `text_content` VALUES (264, '{\"titleContent\":\"Java有垃圾回收机制，内存回收程序可在指定的时间释放内存对象。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 13:57:25');
INSERT INTO `text_content` VALUES (265, '{\"titleContent\":\"构造函数用于创建类的实例对象，构造函数名应与类名相同，返回类型为void。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 13:57:33');
INSERT INTO `text_content` VALUES (266, '{\"titleContent\":\"在异常处理中，若try中的代码可能产生多种异常则可以对应多个catch语句，若catch中的参数类型有父类子类关系，此时应该将父类放在后面，子类放在前面。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"}', '2023-04-27 13:57:45');
INSERT INTO `text_content` VALUES (267, '{\"titleContent\":\"拥有abstract方法的类是抽象类，但抽象类中可以没有abstract方法。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"}', '2023-04-27 13:57:53');
INSERT INTO `text_content` VALUES (268, '{\"titleContent\":\"Java的屏幕坐标是以像素为单位，容器的左下角被确定为坐标的起点。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 13:58:03');
INSERT INTO `text_content` VALUES (269, '{\"titleContent\":\"静态初始化器是在其所属的类加载内存时由系统自动调用执行。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"A\"}', '2023-04-27 13:58:11');
INSERT INTO `text_content` VALUES (270, '{\"titleContent\":\"在Java中对象可以赋值，只要使用赋值号（等号）即可，相当于生成了一个各属性与赋值对象相同的新对象。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 13:58:22');
INSERT INTO `text_content` VALUES (271, '{\"titleContent\":\"以下关于继承的叙述正确的是（   ）。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"在Java中类只允许单一继承\"},{\"prefix\":\"B\",\"content\":\"在Java中一个类只能实现一个接口\"},{\"prefix\":\"C\",\"content\":\"在Java中一个类不能同时继承一个类和实现一个接口\"},{\"prefix\":\"D\",\"content\":\"在Java中接口只允许单一继承\"}],\"correct\":\"A\"}', '2023-04-27 13:58:48');
INSERT INTO `text_content` VALUES (272, '{\"titleContent\":\"若需要定义一个类域或类方法，应使用哪种修饰符？（   ）\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"static \"},{\"prefix\":\"B\",\"content\":\"package \"},{\"prefix\":\"C\",\"content\":\"private \"},{\"prefix\":\"D\",\"content\":\"public\"}],\"correct\":\"A\"}', '2023-04-27 13:59:06');
INSERT INTO `text_content` VALUES (273, '{\"titleContent\":\"在使用interface声明一个接口时，只可以使用（   ）修饰符修饰该接口。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"private \"},{\"prefix\":\"B\",\"content\":\"protected \"},{\"prefix\":\"C\",\"content\":\"private protected \"},{\"prefix\":\"D\",\"content\":\"public\"}],\"correct\":\"D\"}', '2023-04-27 13:59:36');
INSERT INTO `text_content` VALUES (274, '{\"titleContent\":\"面向对象技术的基本要素有()。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\" 类、对象、接口、包。\"},{\"prefix\":\"B\",\"content\":\"抽象性、封装性、继承性和多态性\"},{\"prefix\":\"C\",\"content\":\"对象、事件、消息。\"},{\"prefix\":\"D\",\"content\":\"以上都不是。\"}],\"correct\":\"B\"}', '2023-04-27 14:01:53');
INSERT INTO `text_content` VALUES (275, '{\"titleContent\":\"对对象的理解错误的是()。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"点对象由属性和行为两部分组成。\"},{\"prefix\":\"B\",\"content\":\" 对象可以是一个人、地址、物品、事件、概念等。\"},{\"prefix\":\"C\",\"content\":\"万事万物可看做对象。\"},{\"prefix\":\"D\",\"content\":\"以上都不对\"}],\"correct\":\"D\"}', '2023-04-27 14:02:33');
INSERT INTO `text_content` VALUES (276, '{\"titleContent\":\"以下()不是Java语言的特点。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"简单性\"},{\"prefix\":\"B\",\"content\":\"面向对象\"},{\"prefix\":\"C\",\"content\":\"平台独立性 \"},{\"prefix\":\"D\",\"content\":\"指针的灵活性\"}],\"correct\":\"D\"}', '2023-04-27 14:03:17');
INSERT INTO `text_content` VALUES (277, '{\"titleContent\":\"()语言既要经过编译程序又要解释程序。 A C B  ++ Oc D \",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"c\"},{\"prefix\":\"B\",\"content\":\"c++\"},{\"prefix\":\"C\",\"content\":\"Java \"},{\"prefix\":\"D\",\"content\":\"Basic\"}],\"correct\":\"C\"}', '2023-04-27 14:03:52');
INSERT INTO `text_content` VALUES (278, '{\"titleContent\":\"Java application中的主类需包含main方法，main方法的返回类型是()。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"int \"},{\"prefix\":\"B\",\"content\":\"float \"},{\"prefix\":\"C\",\"content\":\"double \"},{\"prefix\":\"D\",\"content\":\"void\"}],\"correct\":\"D\"}', '2023-04-27 14:05:15');
INSERT INTO `text_content` VALUES (279, '{\"titleContent\":\"下列说法()是正确的。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"程序执行到break语句是一定会结束所有的循环\"},{\"prefix\":\"B\",\"content\":\"程序执行到continue语句时会结束当前循环\"},{\"prefix\":\"C\",\"content\":\"break语句和continue语句都可以和标签协同使用\"},{\"prefix\":\"D\",\"content\":\"continue语句和brek语句的作用相同\"}],\"correct\":\"C\"}', '2023-04-27 14:06:26');
INSERT INTO `text_content` VALUES (280, '{\"titleContent\":\"对封装的理解正确的是()。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\" 封装就是把对象的属性和行为结合成一个独立的单位。\"},{\"prefix\":\"B\",\"content\":\"封装就是把对象完全隐蔽起来，不让外界访问。 \"},{\"prefix\":\"C\",\"content\":\"封装性是一个使用问题。\"},{\"prefix\":\"D\",\"content\":\"封装和抽象是一回事。\"}],\"correct\":\"A\"}', '2023-04-27 14:07:21');
INSERT INTO `text_content` VALUES (281, '{\"titleContent\":\"下面有关main0)方法声明时，可以改动的是()。  B  Oc  D \",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"public \"},{\"prefix\":\"B\",\"content\":\"static\"},{\"prefix\":\"C\",\"content\":\"void\"},{\"prefix\":\"D\",\"content\":\"args\"}],\"correct\":\"D\"}', '2023-04-27 14:07:57');
INSERT INTO `text_content` VALUES (282, '{\"titleContent\":\"命名Java 程序文件名时应( )。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"与文件中任一类名相同即可。\"},{\"prefix\":\"B\",\"content\":\"如果一个文件中包含一个publi类，文件的名字必须和该类名相同。\"},{\"prefix\":\"C\",\"content\":\"文件名可以任意命名。\"},{\"prefix\":\"D\",\"content\":\"以上都不对。\"}],\"correct\":\"B\"}', '2023-04-27 14:08:53');
INSERT INTO `text_content` VALUES (283, '{\"titleContent\":\"不使用static修饰符限定的方法称为对象(或实例)方法，下列()说法是正确的。 c D\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"实例方法可以直接调用父类的实例方法。\"},{\"prefix\":\"B\",\"content\":\"实例方法可以直接调用父类的类方法。\"},{\"prefix\":\"C\",\"content\":\"实例方法可以直接调用其他类的实例方法\"},{\"prefix\":\"D\",\"content\":\"实例方法可以直接调用本类的类方法。\"}],\"correct\":\"D\"}', '2023-04-27 14:09:59');
INSERT INTO `text_content` VALUES (284, '{\"titleContent\":\"由继承性可知，程序中子类拥有的成员数目一定大于等于父类拥有的成员数目。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 14:10:24');
INSERT INTO `text_content` VALUES (285, '{\"titleContent\":\"使用静态属性必须以类名做前缀。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 14:10:46');
INSERT INTO `text_content` VALUES (286, '{\"titleContent\":\"以下()不是Java的关键字。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"FALSE \"},{\"prefix\":\"B\",\"content\":\"const \"},{\"prefix\":\"C\",\"content\":\"Double \"},{\"prefix\":\"D\",\"content\":\"void\"}],\"correct\":\"\"}', '2023-04-27 14:11:40');
INSERT INTO `text_content` VALUES (287, '{\"titleContent\":\"类与对象的关系是()。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"类是对象集合的再抽象。\"},{\"prefix\":\"B\",\"content\":\"类(class)是具有相同属性和行为的一组对象的集合\"},{\"prefix\":\"C\",\"content\":\"一个对象称作类的一个实例。\"},{\"prefix\":\"D\",\"content\":\"类与对象是父与子的关系。\"}],\"correct\":\"\"}', '2023-04-27 14:12:28');
INSERT INTO `text_content` VALUES (288, '{\"titleContent\":\"面向对象技术的基本要素主要有( )。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"抽象性\"},{\"prefix\":\"B\",\"content\":\"封装性\"},{\"prefix\":\"C\",\"content\":\"继承性\"},{\"prefix\":\"D\",\"content\":\"多态性\"}],\"correct\":\"\"}', '2023-04-27 14:13:15');
INSERT INTO `text_content` VALUES (289, '{\"titleContent\":\"封装性的含义有()。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"把对象的全部属性和行为结合在一起，形成一个不可分割的独立单位\"},{\"prefix\":\"B\",\"content\":\"对象的属性值(除了公有的属性值)只能由这个对象的行为来读取和修改\"},{\"prefix\":\"C\",\"content\":\"尽可能隐蔽对象的内部细节，对外形成一道屏障，与外部的联系只能通过外部接口实现。\"},{\"prefix\":\"D\",\"content\":\"封装性使对象完全与外界隔离\"}],\"correct\":\"A,B,C\"}', '2023-04-27 14:14:08');
INSERT INTO `text_content` VALUES (290, '{\"titleContent\":\"main()方法是应用程序的入口，它前面的()关键字不能改变。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"public \"},{\"prefix\":\"B\",\"content\":\"static \"},{\"prefix\":\"C\",\"content\":\"void \"},{\"prefix\":\"D\",\"content\":\"以上关键字都可改变\"}],\"correct\":\"\"}', '2023-04-27 14:14:58');
INSERT INTO `text_content` VALUES (291, '{\"titleContent\":\" 属于面向对象的语言有()。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"C\"},{\"prefix\":\"B\",\"content\":\"Pascal \"},{\"prefix\":\"C\",\"content\":\"Java \"},{\"prefix\":\"D\",\"content\":\"C++\"}],\"correct\":\"\"}', '2023-04-27 14:15:36');
INSERT INTO `text_content` VALUES (292, '{\"titleContent\":\"下列合理的标识符 为()。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"_sys1_111\"},{\"prefix\":\"B\",\"content\":\"2mail \"},{\"prefix\":\"C\",\"content\":\"$change \"},{\"prefix\":\"D\",\"content\":\"class\"}],\"correct\":\"\"}', '2023-04-27 14:16:29');
INSERT INTO `text_content` VALUES (293, '{\"titleContent\":\"定义一个方法时可加上的修饰词有()。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"public \"},{\"prefix\":\"B\",\"content\":\"static \"},{\"prefix\":\"C\",\"content\":\"final \"},{\"prefix\":\"D\",\"content\":\"default\"}],\"correct\":\"\"}', '2023-04-27 14:17:30');
INSERT INTO `text_content` VALUES (294, '{\"titleContent\":\"注释的作用是使程序在执行时在屏幕上显示//之后的内容。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 14:18:10');
INSERT INTO `text_content` VALUES (295, '{\"titleContent\":\"数组允许存放不同类型的定长元素。\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 14:18:42');
INSERT INTO `text_content` VALUES (296, '{\"titleContent\":\"由继承性可知，程序中子类拥有的成员数目一定大于等于父类拥有的成员数目\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 14:19:13');
INSERT INTO `text_content` VALUES (297, '{\"titleContent\":\"一个应用程序中可以有多个方法，但只能有一个main方法\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 14:19:32');
INSERT INTO `text_content` VALUES (298, '{\"titleContent\":\"Java不提供goto语句，所以goto也就不再作为关键字\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"是\"},{\"prefix\":\"B\",\"content\":\"否\"}],\"correct\":\"B\"}', '2023-04-27 14:19:58');
INSERT INTO `text_content` VALUES (299, '{\"titleContent\":\"Java程序的入口是main方法，它的参数是 ____。\",\"questionEditItemVMS\":[],\"correct\":\"字符串数组\"}', '2023-04-27 14:21:02');
INSERT INTO `text_content` VALUES (300, '{\"titleContent\":\"变量的3要素是变量名, ____和变量值\",\"questionEditItemVMS\":[],\"correct\":\"变量类型\"}', '2023-04-27 14:22:42');
INSERT INTO `text_content` VALUES (301, '{\"titleContent\":\"JVM具体是指 ____。\",\"questionEditItemVMS\":[],\"correct\":\"Java虚拟机\"}', '2023-04-27 14:22:56');
INSERT INTO `text_content` VALUES (302, '{\"titleContent\":\"Java中的基本数据类型有 ____种。\",\"questionEditItemVMS\":[],\"correct\":\"8\"}', '2023-04-27 14:23:12');
INSERT INTO `text_content` VALUES (303, '{\"titleContent\":\"两个方法有相同的名称和参数，但返回值不同，是否是重载？ ____\",\"questionEditItemVMS\":[],\"correct\":\"不是\"}', '2023-04-27 14:23:22');
INSERT INTO `text_content` VALUES (304, '{\"titleContent\":\"实现接口的 ____ 不必实现接口中定义的全部方法。\",\"questionEditItemVMS\":[],\"correct\":\"抽象类\"}', '2023-04-27 14:23:31');
INSERT INTO `text_content` VALUES (305, '{\"titleContent\":\"包装类Integer和String类的相同点是，它们都是 ____。\",\"questionEditItemVMS\":[],\"correct\":\"不可变的\"}', '2023-04-27 14:23:41');
INSERT INTO `text_content` VALUES (306, '{\"titleContent\":\"Java中有一个处理日期的类Date，但此类已不推荐再使用，替代它的是 ____。\",\"questionEditItemVMS\":[],\"correct\":\"Calendar\"}', '2023-04-27 14:23:52');
INSERT INTO `text_content` VALUES (307, '{\"titleContent\":\"final关键字修饰类表示类 ____。\",\"questionEditItemVMS\":[],\"correct\":\" 不可被继承\"}', '2023-04-27 14:24:05');
INSERT INTO `text_content` VALUES (308, '{\"titleContent\":\"将字节流转换为字符流的两个类是 _____。\",\"questionEditItemVMS\":[],\"correct\":\"InputStreamReader和OutputStreamWriter\"}', '2023-04-27 14:24:15');
INSERT INTO `text_content` VALUES (309, '{\"titleContent\":\"FileInputStream使用____读取文件，不能直接处理Unicode字符。\",\"questionEditItemVMS\":[],\"correct\":\"字节\"}', '2023-04-27 14:24:24');
INSERT INTO `text_content` VALUES (310, '{\"titleContent\":\"Java中线程实现了 ____ 接口。\",\"questionEditItemVMS\":[],\"correct\":\" Runnable\"}', '2023-04-27 14:24:36');
INSERT INTO `text_content` VALUES (311, '{\"titleContent\":\"线程可以主动调用sleep()方法或者____方法主动放弃CPU。\",\"questionEditItemVMS\":[],\"correct\":\"yield()\"}', '2023-04-27 14:24:44');
INSERT INTO `text_content` VALUES (312, '{\"titleContent\":\"自定义的类Utils中，一个静态方法用关键字synchronized修饰，该同步锁对应的对象是 ____。\",\"questionEditItemVMS\":[],\"correct\":\"Utils.class\"}', '2023-04-27 14:24:54');
INSERT INTO `text_content` VALUES (313, '{\"titleContent\":\"在Java网络编程中，TCP和UDP都基于 ____。\",\"questionEditItemVMS\":[],\"correct\":\"Socket\"}', '2023-04-27 14:25:05');
INSERT INTO `text_content` VALUES (314, '{\"titleContent\":\"&和&&的区别。\",\"questionEditItemVMS\":[],\"correct\":\"&和&&都可作为逻辑运算符“与”使用，但是&&是“短路与”，运算时先判断符号前面的表达式的值，如果能够确定整个表达式的值，则不进行符号后面的表达式的运算。 另外，&也可作为位运算符使用。\"}', '2023-04-27 14:25:40');
INSERT INTO `text_content` VALUES (315, '{\"titleContent\":\"简述接口和抽象类的区别。\",\"questionEditItemVMS\":[],\"correct\":\"只有接口能继承接口。 接口中的所有变量被自动设为final。 接口的执行比抽象类要慢。 接口中方法的作用域只能是public的，抽象类则无此限制。 抽象类可以实现方法，但接口不行。接口只包含方法签名，不包含方法体。 一个类可以实现多个接口，但只能继承一个抽象类。\"}', '2023-04-27 14:25:51');
INSERT INTO `text_content` VALUES (316, '{\"titleContent\":\"简述TCP和UDP的区别。\",\"questionEditItemVMS\":[],\"correct\":\"TCP（Transmission Control Protocol，传输控制协议）是基于连接的协议，也就是说，在正式收发数据前，必须和对方建立可靠的连接。一个TCP连接必须要经过三次“对话”才能建立起来，其中的过程非常复杂，我们这里只做简单、形象的介绍，你只要做到能够理解这个过程即可。我们来看看这三次对话的简单过程：主机A向主机B发出连接请求数据包：“我想给你发数据，可以吗？”，这是第一次对话；主机B向主机A发送同意连接和要求同步（同步就是两台主机一个在发送，一个在接收，协调工作）的数据包：“可以，你什么时候发？”，这是第二次对话；主机A再发出一个数据包确认主机B的要求同步：“我现在就发，你接着吧！”，这是第三次对话。三次“对话”的目的是使数据包的发送和接收同步，经过三次“对话”之后，主机A才向主机B正式发送数据。  UDP（User Data Protocol，用户数据报协议）是与TCP相对应的协议。它是面向非连接的协议，它不与对方建立连接，而是直接就把数据包发送过去！  UDP适用于一次只传送少量数据、对可靠性要求不高的应用环境。比如，我们经常使用“ping”命令来测试两台主机之间TCP/IP通信是否正常，其实“ping”命令的原理就是向对方主机发送UDP数据包，然后对方主机确认收到数据包，如果数据包是否到达的消息及时反馈回来，那么网络就是通的。UDP协议是面向非连接的协议，没有建立连接的过程。正因为UDP协议没有连接的过程，所以它的通信效果高；但也正因为如此，它的可靠性不如TCP协议高。QQ就使用UDP发消息，因此有时会出现收不到 \"}', '2023-04-27 14:26:03');
INSERT INTO `text_content` VALUES (317, '{\"titleContent\":\" 什么是死锁(deadlock)？\",\"questionEditItemVMS\":[],\"correct\":\"两个进程都在等待对方执行完毕才能继续往下执行的时候就发生了死锁。结果就是两个进程都陷入了无限的等待中。\"}', '2023-04-27 14:26:33');
INSERT INTO `text_content` VALUES (318, '{\"titleContent\":\"下面哪个语句正确地声明一个整型的二维数组？\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"int a[][] = new int[][]；\"},{\"prefix\":\"B\",\"content\":\"int []a[] = new int[10][10]；\"},{\"prefix\":\"C\",\"content\":\"int a[][] = new int[10][10]；\"},{\"prefix\":\"D\",\"content\":\"int [][]a = new int[10][10]；\"}],\"correct\":\"\"}', '2023-04-27 14:29:20');
INSERT INTO `text_content` VALUES (319, '{\"titleContent\":\"下面哪些不是java的简单数据类型?\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"short\"},{\"prefix\":\"B\",\"content\":\"Boolean\"},{\"prefix\":\"C\",\"content\":\"Double\"},{\"prefix\":\"D\",\"content\":\"float\"}],\"correct\":\"\"}', '2023-04-27 14:29:43');
INSERT INTO `text_content` VALUES (320, '{\"titleContent\":\"下面哪些语句能够正确地生成5个空字符串？\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"String   a[]=new   String[5]；for(int   i=0；i<5；a[i++]=“”)；\"},{\"prefix\":\"B\",\"content\":\"String   a[]={“”，“”，“”，“”，“”}；\"},{\"prefix\":\"C\",\"content\":\"String   a[5]；\"},{\"prefix\":\"D\",\"content\":\"String[5]a；\"}],\"correct\":\"\"}', '2023-04-27 14:30:16');
INSERT INTO `text_content` VALUES (321, '{\"titleContent\":\"下列说法错误的有\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"数组是一种对象\"},{\"prefix\":\"B\",\"content\":\"数组属于一种原生类\"},{\"prefix\":\"C\",\"content\":\"int number=[]={31,23,33,43,35,63}\"},{\"prefix\":\"D\",\"content\":\"数组的大小可以任意改变\"}],\"correct\":\"\"}', '2023-04-27 14:30:41');
INSERT INTO `text_content` VALUES (322, '{\"titleContent\":\"不能用来修饰interface的有\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"private\"},{\"prefix\":\"B\",\"content\":\"public\"},{\"prefix\":\"C\",\"content\":\"public\"},{\"prefix\":\"D\",\"content\":\"static\"}],\"correct\":\"\"}', '2023-04-27 14:31:04');
INSERT INTO `text_content` VALUES (323, '{\"titleContent\":\"下列标识符不合法的有？\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"new\"},{\"prefix\":\"B\",\"content\":\"$Usdollars\"},{\"prefix\":\"C\",\"content\":\"1234  \"},{\"prefix\":\"D\",\"content\":\"car.taxi\"}],\"correct\":\"\"}', '2023-04-27 14:31:32');
INSERT INTO `text_content` VALUES (324, '{\"titleContent\":\"javax.Servlet的包中，属于类的是（）\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"Servlet\"},{\"prefix\":\"B\",\"content\":\"GenericServlet  \"},{\"prefix\":\"C\",\"content\":\"ServletException  \"},{\"prefix\":\"D\",\"content\":\"ServletContext\"}],\"correct\":\"\"}', '2023-04-27 14:32:05');
INSERT INTO `text_content` VALUES (325, '{\"titleContent\":\"下面哪些描述是正确的？\",\"questionEditItemVMS\":[{\"prefix\":\"A\",\"content\":\"默认构造器初始化方法变量 \"},{\"prefix\":\"B\",\"content\":\"默认构造器有和它所在类相同的访问修饰词.\"},{\"prefix\":\"C\",\"content\":\"如果一个类没有无参构造器,编译器会它创建一个默认构造器.\"},{\"prefix\":\"D\",\"content\":\"默认构造器调用其父类的无参构造器. \"}],\"correct\":\"\"}', '2023-04-27 14:33:47');
INSERT INTO `text_content` VALUES (326, '{\"titleContent\":\"简述方法的重写和重载\",\"questionEditItemVMS\":[],\"correct\":\"override（重写） 1.方法名、参数、返回值相同。 2、重写方法的访问修饰符一定要大于或等于被重写的方法。 3、重写方法不能抛出新的异常或者抛出比被重写方法更宽泛的异常 4、存在于父类和子类之间。 5、被final修饰的方法不能重写 overload（重载） 1、参数类型、个数、顺序至少有一个不相同。 2、不能重载只有返回值不同的方法名。 3、存在于同类中。\"}', '2023-04-27 14:34:46');
INSERT INTO `text_content` VALUES (327, '{\"titleContent\":\"简述this关键字的用法\",\"questionEditItemVMS\":[],\"correct\":\"1、this调用本类中的属性，也就是类中的成员变量； 2、this调用本类中的其他方法； 3、this调用本类中的其他构造方法，调用时要放在构造方法的首行。\"}', '2023-04-27 14:34:59');
INSERT INTO `text_content` VALUES (328, '{\"titleContent\":\"请说出作用域public，private，protected，以及不写时的区别\",\"questionEditItemVMS\":[],\"correct\":\"private修饰的成员变量和函数只能在类本身和内部类中被访问。 protected 修饰的成员变量和函数能被类本身、子类及同一个包中的类访问。 public修饰的成员变量和函数可以被类、子类、同一个包中的类以及任意其他类访问。 默认情况（不写）下，属于一种包访问，即能被类本身以及同一个包中的类访问。\"}', '2023-04-27 14:35:15');
INSERT INTO `text_content` VALUES (329, '{\"titleContent\":\"Integer与int的区别\",\"questionEditItemVMS\":[],\"correct\":\"1、Integer是int的包装类；int是基本数据类型； 2、Integer变量必须实例化后才能使用；int变量不需要； 3、Integer实际是对象的引用，指向此new的Integer对象；int是直接存储数据值 ； 4、Integer的默认值是null；int的默认值是0。\"}', '2023-04-27 14:36:05');
INSERT INTO `text_content` VALUES (330, '{\"titleContent\":\"面向对象的特征有哪些方面 面向对象的三大特征：\",\"questionEditItemVMS\":[],\"correct\":\"1.继承 2.封装 3.多态性 （1）继承：就是保留父类的属性，开扩新的东西。通过子类可以实现继承，子类继承父类的所有状态和行为，同时添加自身的状态和行为。 （2）封装：就是类的私有化。将代码及处理数据绑定在一起的一种编程机制，该机制保证程序和数据不受外部干扰。 （3）多态：是允许将父对象设置成为和一个和多个它的子对象相等的技术。包括重载和重写。重载为编译时多态，重写是运行时多态。\"}', '2023-04-27 14:36:35');
INSERT INTO `text_content` VALUES (331, '{\"titleContent\":\" 类体中的方法包含哪些分类？\",\"questionEditItemVMS\":[],\"correct\":\" 构造方法 普通方法 静态方法\"}', '2023-04-27 14:36:47');
INSERT INTO `text_content` VALUES (332, '[{\"name\":\"单选题\",\"questionItems\":[{\"id\":183},{\"id\":189},{\"id\":185},{\"id\":186},{\"id\":188},{\"id\":182},{\"id\":193},{\"id\":187},{\"id\":184},{\"id\":192}],\"score\":3},{\"name\":\"多选题\",\"questionItems\":[{\"id\":232},{\"id\":204},{\"id\":236},{\"id\":203},{\"id\":199}],\"score\":4},{\"name\":\"判断题\",\"questionItems\":[{\"id\":178},{\"id\":206},{\"id\":175},{\"id\":196},{\"id\":205},{\"id\":207},{\"id\":176},{\"id\":195},{\"id\":208},{\"id\":173}],\"score\":2},{\"name\":\"简答题\",\"questionItems\":[{\"id\":225},{\"id\":227},{\"id\":237}],\"score\":10}]', '2023-04-27 14:44:20');
INSERT INTO `text_content` VALUES (333, '[{\"name\":\"单选题\",\"questionItems\":[{\"id\":86},{\"id\":167},{\"id\":155},{\"id\":122},{\"id\":76},{\"id\":72},{\"id\":166},{\"id\":156},{\"id\":117},{\"id\":87}],\"score\":3},{\"name\":\"多选题\",\"questionItems\":[{\"id\":109},{\"id\":112},{\"id\":113},{\"id\":66},{\"id\":107}],\"score\":4},{\"name\":\"判断题\",\"questionItems\":[{\"id\":154},{\"id\":139},{\"id\":145},{\"id\":146},{\"id\":138}],\"score\":2},{\"name\":\"填空题\",\"questionItems\":[{\"id\":102},{\"id\":96},{\"id\":99},{\"id\":92},{\"id\":121},{\"id\":104},{\"id\":91},{\"id\":97},{\"id\":118},{\"id\":103}],\"score\":2},{\"name\":\"简答题\",\"questionItems\":[{\"id\":134},{\"id\":81}],\"score\":10}]', '2023-04-27 14:45:09');
INSERT INTO `text_content` VALUES (334, '[{\"name\":\"单选题\",\"questionItems\":[{\"id\":106},{\"id\":126},{\"id\":166},{\"id\":122},{\"id\":74},{\"id\":167},{\"id\":158},{\"id\":72},{\"id\":77},{\"id\":117}],\"score\":10}]', '2023-04-27 14:45:36');

SET FOREIGN_KEY_CHECKS = 1;
