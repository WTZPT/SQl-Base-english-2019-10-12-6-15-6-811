-- 创建数据库
create database ita_database;

-- 进入数据库
 use ita_database;

-- 创建 student Table & 插入初始数据
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'name',
  `age` int(11) NOT NULL,
  `sex` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB CHARACTER SET = utf8mb4;

INSERT INTO `student` VALUES (1, 'zhangsan', 18, 'male');
INSERT INTO `student` VALUES (2, 'lisi', 20, 'female');


-- 创建 subject Table &  插入初始数据
CREATE TABLE `subject`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

INSERT INTO `subject` VALUES (1001, 'Chinese', 'Mr. Wang', 'the exam is easy');
INSERT INTO `subject` VALUES (1002, 'math', 'Miss Liu', 'the exam is difficult');


-- 创建 score Table &  插入初始数据
CREATE TABLE `score`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_score_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `FK_score_subject` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

INSERT INTO `score` VALUES (1, 1, 1001, 80);
INSERT INTO `score` VALUES (2, 2, 1002, 60);
INSERT INTO `score` VALUES (3, 1, 1001, 70);
INSERT INTO `score` VALUES (4, 2, 1002, 61);
