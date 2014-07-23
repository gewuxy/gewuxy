-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.40-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema db_geWu
--
DROP DATABASE IF EXISTS db_geWu;
CREATE DATABASE IF NOT EXISTS db_geWu;
USE db_geWu;
--
-- Definition of table `tb_room`
--

DROP TABLE IF EXISTS `tb_room`;
CREATE TABLE `tb_room` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

--
-- Dumping data for table `tb_room`
--

/*!40000 ALTER TABLE `tb_room` DISABLE KEYS */;
INSERT INTO `tb_room` (`id`,`name`) VALUES 
 (1,'高一三班');
/*!40000 ALTER TABLE `tb_room` ENABLE KEYS */;

--
-- Definition of table `tb_uploadFile`
--

DROP TABLE IF EXISTS `tb_uploadFile`;
CREATE TABLE `tb_uploadFile`(
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;

--
-- Dumping data for table `tb_uploadFile`
--

/*!40000 ALTER TABLE `tb_uploadFile` DISABLE KEYS */;
INSERT INTO `tb_uploadFile` (`id`,`path`) VALUES 
 (1,'https://www.educreations.com/lesson/embed/21889272/'),
 (2,'https://www.educreations.com/lesson/embed/21889444/'),
 (3,'https://www.educreations.com/lesson/embed/21889603/'),
 (4,'https://www.educreations.com/lesson/embed/21889877/'),
 (5,'https://www.educreations.com/lesson/embed/22022856/'),
 (6,'https://www.educreations.com/lesson/embed/22023017/'),
 (7,'https://www.educreations.com/lesson/embed/22023247/'),
 (8,'https://www.educreations.com/lesson/embed/22042960/'),
 (9,'https://www.educreations.com/lesson/embed/22043390/'),
 (10,'https://www.educreations.com/lesson/embed/22096754/'),
 (11,'https://www.educreations.com/lesson/embed/22099703/'),
 (12,'https://www.educreations.com/lesson/embed/22099808/'),
 (13,'https://www.educreations.com/lesson/embed/22100029/'),
 (14,'https://www.educreations.com/lesson/embed/22100239/');
/*!40000 ALTER TABLE `tb_uploadFile` ENABLE KEYS */;

--
-- Definition of table `tb_student, tb_teacher, tb_parent, tb_admin`
--

--
-- Definition of table `tb_parent`
--

DROP TABLE IF EXISTS `tb_parent`;
CREATE TABLE `tb_parent` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `introduction` varchar(200) DEFAULT NULL,
  `imageId` int(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
   PRIMARY KEY (`id`),
   KEY `FEB315573CFB37BC9D`(`imageId`),
   CONSTRAINT `FEB315573CFB37BC9D` FOREIGN KEY (`imageId`) REFERENCES `tb_uploadFile`(`id`)  
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

--
-- Dumping data for table `tb_parent`
--

/*!40000 ALTER TABLE `tb_parent` DISABLE KEYS */;
INSERT INTO `tb_parent` (`id`,`username`,`password`,`sex`,`birthday`,`email`) VALUES 
 (1,'zeXian','zeXian',NULL,'2010-9-6','zeXian10@163.com');
/*!40000 ALTER TABLE `tb_parent` ENABLE KEYS */;
--
-- Definition of table `tb_teacher`
--

DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `aptcourses` varchar(200)DEFAULT NULL,
  `introduction` varchar(200) DEFAULT NULL,
  `imageId` int(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `roomId` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FAB325573CFB37BC9D`(`imageId`),
  KEY `FDB325573CFB337A8C`(`roomId`),
  CONSTRAINT `FAB325573CFB37BC9D` FOREIGN KEY (`imageId`) REFERENCES `tb_uploadFile` (`id`),
  CONSTRAINT `FDB325573CFB337A8C` FOREIGN KEY (`roomId`) REFERENCES `tb_room` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

--
-- Dumping data for table `tb_teacher`
--

/*!40000 ALTER TABLE `tb_teacher` DISABLE KEYS */;
INSERT INTO `tb_teacher` (`id`,`username`,`password`,`sex`,`birthday`,`email`) VALUES 
 (1,'qiuGuo','qiuGuo',NULL,'1596-5-9','liqiuguo10@163.com');
/*!40000 ALTER TABLE `tb_teacher` ENABLE KEYS */;

--
-- Definition of table `tb_student`
--
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `aptcourses` varchar(200) DEFAULT NULL,
  `introduction` varchar(200) DEFAULT NULL,
  `imageId` int(50) DEFAULT NULL,
  `teacherId` int(50) DEFAULT NULL,
  `parentId` int(50)DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `roomId` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FAB305573CFB37BC9D`(`imageId`),
  KEY `FAC305573CFB37BC9D`(`parentId`),
  KEY `FBA305573CFB337A8C`(`teacherId`),
  KEY `FDB305573CFB337A8C`(`roomId`),
  CONSTRAINT `FAB305573CFB37BC9D` FOREIGN KEY (`imageId`) REFERENCES `tb_uploadFile` (`id`),
  CONSTRAINT `FAC305573CFB37BC9D` FOREIGN KEY (`parentId`) REFERENCES `tb_parent` (`id`),
  CONSTRAINT `FBA305573CFB337A8C` FOREIGN KEY (`teacherId`) REFERENCES `tb_teacher` (`id`),
  CONSTRAINT `FDB305573CFB337A8C` FOREIGN KEY (`roomId`) REFERENCES `tb_room` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk ;

--
-- Dumping data for table `tb_student`
--

/*!40000 ALTER TABLE `tb_student` DISABLE KEYS */;
INSERT INTO `tb_student` (`id`,`username`,`password`,`sex`,`birthday`,`email`) VALUES 
 (1,'geWu','geWu',NULL,'2012-5-3','liqiuguo10@163.com');
/*!40000 ALTER TABLE `tb_student` ENABLE KEYS */;
--
-- Definition of table `tb_admin`
--

DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

--
-- Dumping data for table `tb_admin`
--

/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
INSERT INTO `tb_admin` (`id`,`username`,`password`) VALUES 
 (1,'admin','admin');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;


--
-- Definition of table `tb_course`
--

DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `tb_course`
--

/*!40000 ALTER TABLE `tb_course` DISABLE KEYS */;
INSERT INTO `tb_course` (`id`,`name`) VALUES 
 (1,'数学'),(2,'语文'),(3,'英语'),(4,'物理'),(5,'化学'),(6,'生物'),(7,'政治'),(8,'历史'),(9,'地理');
 
/*!40000 ALTER TABLE `tb_course` ENABLE KEYS */;

--
-- Definition of table `tb_book`
--

DROP TABLE IF EXISTS `tb_book`;
CREATE TABLE `tb_book` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` text,
  `uploadFileId` int(11) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `grade` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKFA98EE3DD0EDC05E` (`uploadFileId`),
  KEY `FKFA98EE3DD0ABD063` (`courseId`),
  CONSTRAINT `FKFA98EE3DD0EDC05E` FOREIGN KEY (`uploadFileId`) REFERENCES `tb_uploadFile` (`id`),
  CONSTRAINT `FKFA98EE3DD0ABD063` FOREIGN KEY (`courseId`) REFERENCES `tb_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

--
-- Dumping data for table `tb_book`
--

/*!40000 ALTER TABLE `tb_book` DISABLE KEYS */;
INSERT INTO `tb_book` (`id`,`name`,`desc`,`courseId`,`grade`) VALUES 
 (1,'shuxuebixiuyi','高一数学必修一',1,'12'),
 (2,'shuxuebixiuer','高二数学必修二',1,'12'),
(3,'yuwenbixiuyi','高一语文必修一',2,'12');
 
/*!40000 ALTER TABLE `tb_book` ENABLE KEYS */;


--
-- Definition of table `tb_bookItem`
--
DROP TABLE IF EXISTS `tb_bookItem`;
CREATE TABLE `tb_bookItem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `parentNextId` int(11) DEFAULT NULL,
  `bookId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKB405573CFB37BC9D` (`parentId`),
  KEY `FKB405573CFB337A8C` (`bookId`),
  CONSTRAINT `FKB405573CFB37BC9D` FOREIGN KEY (`parentId`) REFERENCES `tb_bookItem` (`id`),
  CONSTRAINT `FKB405573CFB337A8C` FOREIGN KEY (`bookId`) REFERENCES `tb_book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=gbk;

--
-- Dumping data for table `tb_bookItem`
--

/*!40000 ALTER TABLE `tb_bookItem` DISABLE KEYS */;
INSERT INTO `tb_bookItem` (`id`,`name`,`level`,`parentId`, `parentNextId`,`bookId`) VALUES 
 (1,'第一章 集合与函数概念',1,NULL,2,1), 
 (2,'第二章 基本初等函数',1,NULL,3,1),
 (3,'第三章 函数的应用',1,NULL,NULL,1),
 (4,'集合篇',2,1,8,1),
 (5,'集合',3,4,8,1),
 (6,'集合关系',3,4,8,1),
 (7,'集合运算',3,4,8,1),
 (8,'函数篇',2,1,13,1),
 (9,'认识函数',3,8,13,1),
 (10,'函数图像',3,8,13,1),
 (11,'单调性',3,8,13,1),
 (12,'奇偶性',3,8,13,1),
 (13,'指数篇',2,2,17,1),
 (14,'认识指数',2,13,17,1),
 (15,'指数运算',3,13,17,1),
 (16,'指数函数',3,13,17,1),
 (17,'对数篇',2,2,NULL,1),
 (18,'认识对数',3,17,NULL,1),
 (19,'对数运算',3,17,NULL,1),
 (20,'对数运算2',3,17,NULL,1),
 (21,'对数函数',3,17,NULL,1),
 (22,'对数函数2',3,17,NULL,1),
 (23,'第一单元',1,NULL,24,3),
 (24,'第二单元',1,NULL,25,3),
 (25,'第三单元',1,NULL,26,3),
 (26,'第四单元',1,NULL,NULL,3);
 
/*!40000 ALTER TABLE `tb_bookItem` ENABLE KEYS */;

--
-- Definition of table `tb_video`
--

DROP TABLE IF EXISTS `tb_video`;
CREATE TABLE `tb_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` text,
  `clipFileId` int(11) DEFAULT NULL,
  `videoFileId` int(11) DEFAULT NULL,
  `browseTimes` int(11) DEFAULT NULL,
  `recommended` bit(1) DEFAULT NULL,
  `studentId` int(11) DEFAULT NULL,
  `teacherId` int(1) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `bookItemId` int(11) DEFAULT NULL,
  `goodCount` int(11) DEFAULT NULL,
  `badCount` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `thankCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK28A6CDEC487D8DAB` (`clipFileId`),
  KEY `FK28A6CDEC3E1DFEF5` (`videoFileId`),
  KEY `FK28A6CDEC3E1DFEA1` (`studentId`),
  KEY `FK28A6CDEC3E1DECF5` (`parentId`),
  KEY `FK28A6CDEC3E1DDEF5` (`teacherId`),
  KEY `FK28A6CDEC3E1DCEF5` (`bookItemId`),
  CONSTRAINT `FK28A6CDEC487D8DAB` FOREIGN KEY (`clipFileId`) REFERENCES `tb_uploadFile` (`id`),
  CONSTRAINT `FK28A6CDEC3E1DFEF5` FOREIGN KEY (`videoFileId`) REFERENCES `tb_uploadFile` (`id`),
  CONSTRAINT `FK28A6CDEC3E1DFEA1` FOREIGN KEY (`studentId`) REFERENCES `tb_student` (`id`),
  CONSTRAINT `FK28A6CDEC3E1DECF5` FOREIGN KEY (`parentId`) REFERENCES `tb_parent` (`id`),
  CONSTRAINT `FK28A6CDEC3E1DDEF5` FOREIGN KEY (`teacherId`) REFERENCES `tb_teacher` (`id`),
  CONSTRAINT `FK28A6CDEC3E1DCEF5` FOREIGN KEY (`bookItemId`) REFERENCES `tb_bookItem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;

/*!40000 ALTER TABLE `tb_video` DISABLE KEYS */;
INSERT INTO `tb_video` (`id`,`name`,`desc`,`videoFileId`,`browseTimes`,`recommended`,`bookItemId`, `goodCount`,`badCount`,`createTime`,`thankCount`) VALUES 
 (1,'quantuanm','好的资源啊',1,0,'false',5,0,0,'05/04/02',0),
 (2,'haha','伐iechangwu资源啊',2,0,'false',6,0,0,'05/04/02',0),
 (3,'quantuanm','好的资源啊',3,0,'false',7,0,0,'05/04/02',0),
 (4,'quantuanm','好的资源啊',4,0,'false',9,0,0,'05/04/02',0),
 (5,'quantuanm','好的资源啊',5,0,'false',10,0,0,'05/04/02',0),
 (6,'quantuanm','好的资源啊',6,0,'false',11,0,0,'05/04/02',0),
 (7,'quantuanm','好的资源啊',7,0,'false',12,0,0,'05/04/02',0),
 (8,'quantuanm','好的资源啊',8,0,'false',15,0,0,'05/04/02',0),
 (9,'quantuanm','好的资源啊',9,0,'false',16,0,0,'05/04/02',0),
 (10,'quantuanm','好的资源啊',10,0,'false',18,0,0,'05/04/02',0),
 (11,'quantuanm','好的资源啊',11,0,'false',19,0,0,'05/04/02',0),
 (12,'quantuanm','好的资源啊',12,0,'false',20,0,0,'05/04/02',0),
 (13,'quantuanm','好的资源啊',13,0,'false',21,0,0,'05/04/02',0),
 (14,'quantuanm','好的资源啊',14,0,'false',22,0,0,'05/04/02',0);
 
/*!40000 ALTER TABLE `tb_video` ENABLE KEYS */;




--
-- Definition of table `tb_comment`
--

DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `studentId` int(50) default NULL,
  `teacherId` int(50) default NULL,
  `parentId` int(50) default NULL,
  `pId` int(50) default NULL,
  `questionId` int(50) default NULL,
  `answerId` int(50) default NULL,
  `thankId` int(50) default NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FAB405573CFB337A8C` (`studentId`),
  KEY `FAC405573CFB37BC9D` (`parentId`),
  KEY `FBA405573CFB337A8C` (`teacherId`),
  KEY `FDB405573CFB337A8C` (`pId`),
  KEY `FAB405573CFB37BC9D` (`questionId`),
  KEY `FAB405573CFB37BC91` (`answerId`),
  KEY `FAB405573CFB37BC92` (`thankId`),
  CONSTRAINT `FAB405573CFB337A8C` FOREIGN KEY (`studentId`) REFERENCES `tb_student` (`id`),
  CONSTRAINT `FAC405573CFB37BC9D` FOREIGN KEY (`parentId`) REFERENCES `tb_parent` (`id`),
  CONSTRAINT `FBA405573CFB337A8C` FOREIGN KEY (`teacherId`) REFERENCES `tb_teacher` (`id`),
  CONSTRAINT `FDB405573CFB337A8C` FOREIGN KEY (`pId`) REFERENCES `tb_comment` (`id`),
  CONSTRAINT `FAB405573CFB37BC9D` FOREIGN KEY (`questionId`) REFERENCES `tb_question` (`id`),
  CONSTRAINT `FAB405573CFB37BC91` FOREIGN KEY (`answerId`) REFERENCES `tb_answer` (`id`),
  CONSTRAINT `FAB405573CFB37BC92` FOREIGN KEY (`thankId`) REFERENCES `tb_thank` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;

--
-- Dumping data for table `tb_comment`
--

/*!40000 ALTER TABLE `tb_comment` DISABLE KEYS */;
INSERT INTO `tb_comment` (`id`,`content`, `questionId`,`answerId`,`thankId`,`studentId`,`createTime`) VALUES 
 (1,'球形好啊',1,NULL,NULL,1,'05/04/02'),
 (2,'球形好啊2',1,NULL,NULL,1,'05/04/02'),
 (3,'戳比',2,NULL,NULL,1,'05/04/02'),
 (4,'戳比2',2,NULL,NULL,1,'05/04/02'),
 (5,'鸟先是错打',NULL,1,NULL,1,'05/04/02'),
 (6,'鸟先是错打2',NULL,1,NULL,1,'05/04/02'),
 (7,'鸟先是错',NULL,2,NULL,1,'05/04/02'),
 (8,'鸟先是错2',NULL,2,NULL,1,'05/04/02'),
 (9,'鸟先是',NULL,3,NULL,1,'05/04/02'),
 (10,'鸟先是2',NULL,3,NULL,1,'05/04/02'),
 (11,'鸟先',NULL,4,NULL,1,'05/04/02'),
 (12,'鸟先2',NULL,4,NULL,1,'05/04/02'),
 (13,'感谢不错啊',NULL,NULL,1,1,'05/04/02'),
 (14,'感谢不错啊2',NULL,NULL,1,1,'05/04/02'),
 (15,'感谢hjhgj错啊',NULL,NULL,2,1,'05/04/02'),
 (16,'感谢不hghgjhgjhj错啊',NULL,NULL,2,1,'05/04/02');
 
/*!40000 ALTER TABLE `tb_comment` ENABLE KEYS */;
--
-- Definition of table `tb_thank`
--

DROP TABLE IF EXISTS `tb_thank`;
CREATE TABLE `tb_thank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `videoId` int(50) default NULL,
  `studentId` int(50) default NULL,
  `teacherId` int(50) default NULL,
  `parentId` int(50) default NULL,
 `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FAB405573CFB47BC9D` (`videoId`),
  KEY `FAB405573CFB437A8C` (`studentId`),
  KEY `FAC405573CFB47BC9D` (`parentId`),
  KEY `FBA405573CFB437A8C` (`teacherId`),
  CONSTRAINT `FAB405573CFB47BC9D` FOREIGN KEY (`videoId`) REFERENCES `tb_video` (`id`),
  CONSTRAINT `FAB405573CFB437A8C` FOREIGN KEY (`studentId`) REFERENCES `tb_student` (`id`),
  CONSTRAINT `FAC405573CFB47BC9D` FOREIGN KEY (`parentId`) REFERENCES `tb_parent` (`id`),
  CONSTRAINT `FBA405573CFB437A8C` FOREIGN KEY (`teacherId`) REFERENCES `tb_teacher` (`id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

--
-- Dumping data for table `tb_thank`
--

/*!40000 ALTER TABLE `tb_thank` DISABLE KEYS */;
INSERT INTO `tb_thank` (`id`,`content`,`videoId`,`studentId`,`createTime`) VALUES 
 (1,'very good',1,1,'05/04/02'),
 (2,'dgfgy good',1,1,'05/04/02');
/*!40000 ALTER TABLE `tb_thank` ENABLE KEYS */;
--
-- Definition of table `tb_answer`
--

DROP TABLE IF EXISTS `tb_answer`;
CREATE TABLE `tb_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `questionId` int(50) default NULL,
  `studentId` int(50) default NULL,
  `teacherId` int(50) default NULL,
  `parentId` int(50) default NULL,
 `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FAB405574CFB47BC9D` (`questionId`),
  KEY `FAB405574CFB437A8C` (`studentId`),
  KEY `FAC405574CFB47BC9D` (`parentId`),
  KEY `FBA405574CFB437A8C` (`teacherId`),
  CONSTRAINT `FAB405574CFB47BC9D` FOREIGN KEY (`questionId`) REFERENCES `tb_question` (`id`),
  CONSTRAINT `FAB405574CFB437A8C` FOREIGN KEY (`studentId`) REFERENCES `tb_student` (`id`),
  CONSTRAINT `FAC405574CFB47BC9D` FOREIGN KEY (`parentId`) REFERENCES `tb_parent` (`id`),
  CONSTRAINT `FBA405574CFB437A8C` FOREIGN KEY (`teacherId`) REFERENCES `tb_teacher` (`id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

--
-- Dumping data for table `tb_answer`
--

/*!40000 ALTER TABLE `tb_answer` DISABLE KEYS */;
INSERT INTO `tb_answer` (`id`,`content`,`questionId`,`studentId`,`createTime`) VALUES 
 (1,'球形1',1,1,'05/04/02'),
 (2,'球形2',1,1,'05/04/02'),
 (3,'戳中的战斗机',2,1,'05/04/02'),
 (4,'戳中的战斗机2',2,1,'05/04/02');
/*!40000 ALTER TABLE `tb_answer` ENABLE KEYS */;
--
-- Definition of table `tb_collection`
--

DROP TABLE IF EXISTS `tb_collection`;
CREATE TABLE `tb_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionId` int(50) default NULL,
  `studentId` int(50) default NULL,
  `teacherId` int(50) default NULL,
  `parentId` int(50) default NULL,
  PRIMARY KEY (`id`),
  KEY `FAB405563CFB47BC9D` (`questionId`),
  KEY `FAB405563CFB437A8C` (`studentId`),
  KEY `FAC405563CFB47BC9D` (`parentId`),
  KEY `FBA405563CFB437A8C` (`teacherId`),
  CONSTRAINT `FAB405563CFB47BC9D` FOREIGN KEY (`questionId`) REFERENCES `tb_question` (`id`),
  CONSTRAINT `FAB405563CFB437A8C` FOREIGN KEY (`studentId`) REFERENCES `tb_student` (`id`),
  CONSTRAINT `FAC405563CFB47BC9D` FOREIGN KEY (`parentId`) REFERENCES `tb_parent` (`id`),
  CONSTRAINT `FBA405563CFB437A8C` FOREIGN KEY (`teacherId`) REFERENCES `tb_teacher` (`id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

--
-- Dumping data for table `tb_collection`
--

/*!40000 ALTER TABLE `tb_collection` DISABLE KEYS */;
INSERT INTO `tb_collection` (`id`,`questionId`,`studentId`) VALUES 
 (1,1,1);
/*!40000 ALTER TABLE `tb_collection` ENABLE KEYS */;

--
-- Definition of table `tb_focus`
--

DROP TABLE IF EXISTS `tb_focus`;
CREATE TABLE `tb_focus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionId` int(50) default NULL,
  `studentId` int(50) default NULL,
  `teacherId` int(50) default NULL,
  `parentId` int(50) default NULL,
  PRIMARY KEY (`id`),
  KEY `FAB405573CFD47BC9D` (`questionId`),
  KEY `FAB405573CFD437A8C` (`studentId`),
  KEY `FAC405573CFD47BC9D` (`parentId`),
  KEY `FBA405573CFD437A8C` (`teacherId`),
  CONSTRAINT `FAB405573CFD47BC9D` FOREIGN KEY (`questionId`) REFERENCES `tb_question` (`id`),
  CONSTRAINT `FAB405573CFD437A8C` FOREIGN KEY (`studentId`) REFERENCES `tb_student` (`id`),
  CONSTRAINT `FAC405573CFD47BC9D` FOREIGN KEY (`parentId`) REFERENCES `tb_parent` (`id`),
  CONSTRAINT `FBA405573CFD437A8C` FOREIGN KEY (`teacherId`) REFERENCES `tb_teacher` (`id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

--
-- Dumping data for table `tb_focus`
--

/*!40000 ALTER TABLE `tb_focus` DISABLE KEYS */;
INSERT INTO `tb_focus` (`id`,`questionId`,`studentId`) VALUES 
 (1,1,1);
/*!40000 ALTER TABLE `tb_focus` ENABLE KEYS */;
--
-- Definition of table `tb_question`
--

DROP TABLE IF EXISTS `tb_question`;
CREATE TABLE `tb_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `videoId` int(50) default NULL,
  `studentId` int(50) default NULL,
  `teacherId` int(50) default NULL,
  `parentId` int(50) default NULL,
 `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FFB405573CFB47BC9D` (`videoId`),
  KEY `FFB405573CFB437A8C` (`studentId`),
  KEY `FFC405573CFB47BC9D` (`parentId`),
  KEY `FFA405573CFB437A8C` (`teacherId`),
  CONSTRAINT `FFB405573CFB47BC9D` FOREIGN KEY (`videoId`) REFERENCES `tb_video` (`id`),
  CONSTRAINT `FFB405573CFB437A8C` FOREIGN KEY (`studentId`) REFERENCES `tb_student` (`id`),
  CONSTRAINT `FFC405573CFB47BC9D` FOREIGN KEY (`parentId`) REFERENCES `tb_parent` (`id`),
  CONSTRAINT `FFA405573CFB437A8C` FOREIGN KEY (`teacherId`) REFERENCES `tb_teacher` (`id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

--
-- Dumping data for table `tb_question`
--

/*!40000 ALTER TABLE `tb_question` DISABLE KEYS */;
INSERT INTO `tb_question` (`id`,`content`,`videoId`,`studentId`,`createTime`) VALUES 
 (1,'为什么地球是球形?',1,1,'05/04/02'),
 (2,'为什么鸟贤那么戳?',1,1,'05/04/02');
/*!40000 ALTER TABLE `tb_question` ENABLE KEYS */;

--
-- Definition of table `tb_route`
--

DROP TABLE IF EXISTS `tb_route`;
CREATE TABLE `tb_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentId` int(50) default NULL,
  `videoId` int(50) default NULL,
  `questionId` int(50) default NULL,
  `answerId` int(50) default NULL,
  `studentId` int(50) default NULL,
  `teacherId` int(50) default NULL,
  `parentId` int(50) default NULL,
  PRIMARY KEY (`id`),
  KEY `FAB4855E3CFB47BC9D` (`commentId`),
  KEY `FAB485573CFB47BC9D` (`videoId`),
  KEY `FAB485573BFB47BC9D` (`questionId`),
  KEY `FAB485B73CFB47BC9D` (`answerId`),
  KEY `FAB485573CFB437A8C` (`studentId`),
  KEY `FAC485573CFB47BC9D` (`parentId`),
  KEY `FBA485573CFB437A8C` (`teacherId`),
  CONSTRAINT `FAB4855E3CFB47BC9D` FOREIGN KEY (`commentId`) REFERENCES `tb_comment` (`id`),
  CONSTRAINT `FAB485573CFB47BC9D` FOREIGN KEY (`videoId`) REFERENCES `tb_video` (`id`),
  CONSTRAINT `FAB485573BFB47BC9D` FOREIGN KEY (`questionId`) REFERENCES `tb_question` (`id`),
  CONSTRAINT `FAB485B73CFB47BC9D` FOREIGN KEY (`answerId`) REFERENCES `tb_answer` (`id`),
  CONSTRAINT `FAB485573CFB437A8C` FOREIGN KEY (`studentId`) REFERENCES `tb_student` (`id`),
  CONSTRAINT `FAC485573CFB47BC9D` FOREIGN KEY (`parentId`) REFERENCES `tb_parent` (`id`),
  CONSTRAINT `FBA485573CFB437A8C` FOREIGN KEY (`teacherId`) REFERENCES `tb_teacher` (`id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

--
-- Dumping data for table `tb_route`
--

/*!40000 ALTER TABLE `tb_route` DISABLE KEYS */;
INSERT INTO `tb_route` (`id`,`commentId`,`videoId`,`questionId`,`answerId`,`studentId`) VALUES 
 (1,1,1,1,1,1);
/*!40000 ALTER TABLE `tb_route` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
