/*
SQLyog v10.2 
MySQL - 5.5.27 : Database - bookshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bookshop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bookshop`;

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Author` varchar(16) NOT NULL,
  `PublisherId` int(4) NOT NULL,
  `UnitPrice` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_books` (`PublisherId`),
  CONSTRAINT `FK_books` FOREIGN KEY (`PublisherId`) REFERENCES `publishers` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4954 DEFAULT CHARSET=gb2312;

/*Data for the table `books` */

insert  into `books`(`Id`,`Title`,`Author`,`PublisherId`,`UnitPrice`) values (4939,'C++ Primer中文版','（美）Stanley B。',2,'55'),(4943,'Effective C# 中','（美）瓦格纳 著',2,'45'),(4944,'C程序设计语言','（美）克尼汉',3,'30'),(4946,'框架设计（第2版)','（美）瑞奇特',1,'68'),(4947,'C++程序设计教程','钱能  著',1,'40'),(4953,'Web应用开发技术','崔尚森，张白一',3,'56');

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `CourseId` int(4) NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`CourseId`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `course` */

/*Table structure for table `identitycard` */

DROP TABLE IF EXISTS `identitycard`;

CREATE TABLE `identitycard` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `CardNo` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `identitycard` */

insert  into `identitycard`(`Id`,`CardNo`) values (1,'320107000000000001'),(2,'320107000000000002'),(3,'320107000000000003'),(4,'320107000000000004'),(5,'320107000000000005'),(6,'320107000000000006'),(7,'320107000000000007');

/*Table structure for table `identitycard_zj` */

DROP TABLE IF EXISTS `identitycard_zj`;

CREATE TABLE `identitycard_zj` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `CardNo` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `identitycard_zj` */

insert  into `identitycard_zj`(`Id`,`CardNo`) values (1,'320107000000000001'),(2,'320107000000000002'),(3,'320107000000000003'),(4,'320107000000000004'),(5,'320107000000000005'),(6,'320107000000000006'),(7,'320107000000000007');

/*Table structure for table `people` */

DROP TABLE IF EXISTS `people`;

CREATE TABLE `people` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `Name` varchar(10) DEFAULT NULL,
  `Sex` varchar(4) DEFAULT NULL,
  `Age` int(4) DEFAULT NULL,
  `CardId` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CardId` (`CardId`),
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`CardId`) REFERENCES `identitycard` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `people` */

insert  into `people`(`Id`,`Name`,`Sex`,`Age`,`CardId`) values (1,'zhangsan','男',21,1),(2,'lisi','男',22,2),(3,'wangwu','男',23,3),(4,'zhaoliu','男',24,4),(5,'qianqie','男',25,5),(6,'sunba','男',26,6),(7,'qingqiu','男',27,7);

/*Table structure for table `people_zj` */

DROP TABLE IF EXISTS `people_zj`;

CREATE TABLE `people_zj` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `Name` varchar(10) DEFAULT NULL,
  `Sex` varchar(4) DEFAULT NULL,
  `Age` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  CONSTRAINT `people_zj_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `identitycard_zj` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `people_zj` */

insert  into `people_zj`(`Id`,`Name`,`Sex`,`Age`) values (1,'zhangsan','男',21),(2,'lisi','男',22),(3,'wangwu','男',23),(4,'zhaoliu','男',24),(5,'qianqie','男',25),(6,'sunba','男',26),(7,'qingqiu','男',27);

/*Table structure for table `publishers` */

DROP TABLE IF EXISTS `publishers`;

CREATE TABLE `publishers` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `Name` varchar(16) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

/*Data for the table `publishers` */

insert  into `publishers`(`Id`,`Name`) values (1,'清华大学出版社'),(2,'人民邮电出版社'),(3,'机械工业出版社');

/*Table structure for table `sc` */

DROP TABLE IF EXISTS `sc`;

CREATE TABLE `sc` (
  `Sid` int(4) NOT NULL,
  `Cid` int(4) NOT NULL,
  PRIMARY KEY (`Cid`,`Sid`),
  KEY `FK_sc` (`Sid`),
  KEY `sc` (`Cid`),
  CONSTRAINT `FK_cid` FOREIGN KEY (`Cid`) REFERENCES `course` (`CourseId`),
  CONSTRAINT `FK_sid` FOREIGN KEY (`Sid`) REFERENCES `student` (`StudentId`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `sc` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `StudentId` int(4) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `student` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `LoginName` varchar(50) DEFAULT NULL,
  `LoginPwd` varchar(16) DEFAULT NULL,
  `Name` varchar(16) DEFAULT NULL,
  `Address` varchar(16) DEFAULT NULL,
  `Phone` varchar(16) DEFAULT NULL,
  `Mail` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

/*Data for the table `users` */

insert  into `users`(`Id`,`LoginName`,`LoginPwd`,`Name`,`Address`,`Phone`,`Mail`) values (1,'jingjing','jingjing','Jing Jing','GuangZhou','88888888','jingjing@sina.co'),(2,'bobo','123456','张三','北京','010 5555555','bobo3@d.c'),(3,'user','123456','user','asd','11111111111','1@1.c'),(4,'admin','123456','admin','admin','13456','123456@s.c'),(5,'恰嬉猫','070115','qiaximao','上海市华夏路','13774210000','qiximao@163.com'),(6,'王强','991221','wangqiang','北京软件大学','12334567891','wangqiang@163.co'),(7,'申波','shenbo','shenbo','Beijing','010-64324947','shenbo@263.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
