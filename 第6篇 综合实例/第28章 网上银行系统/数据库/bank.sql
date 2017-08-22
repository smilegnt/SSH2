/*
SQLyog v10.2 
MySQL - 5.5.27 : Database - bank
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bank` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bank`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `accountid` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `balance` decimal(18,2) DEFAULT NULL,
  `status` int(4) DEFAULT NULL,
  PRIMARY KEY (`accountid`),
  KEY `status` (`status`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`status`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`accountid`,`username`,`password`,`balance`,`status`) values (1,'uuu','uuu','1000.00',1),(2,'ttt','ttt','1000.00',1),(3,'qqq','1','1000.00',1),(4,'www','www','1000.00',1),(5,'eee','eee','1000.00',2),(6,'my','my','1000.00',1),(7,'sss','sss','1000.00',1),(8,'vvv','vvv','1000.00',1),(9,'xxx','xxx','1000.00',1);

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`) values (1,'admin','123456');

/*Table structure for table `personinfo` */

DROP TABLE IF EXISTS `personinfo`;

CREATE TABLE `personinfo` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `accountid` int(4) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `age` int(4) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `cardid` decimal(18,0) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accountid` (`accountid`),
  CONSTRAINT `personinfo_ibfk_1` FOREIGN KEY (`accountid`) REFERENCES `account` (`accountid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `personinfo` */

insert  into `personinfo`(`id`,`accountid`,`realname`,`age`,`sex`,`cardid`,`address`,`telephone`) values (1,1,'王志国',32,'男','320542000000000001','北京','15810000001'),(2,2,'赵强',43,'男','320542000000000002','湖北武汉','15810000002'),(3,3,'薛梅',26,'女','312556000000000003','江苏南京','15320000003'),(4,4,'www',43,'女','312556000000000004','江苏','15320000004'),(5,5,'eee',34,'男','312556000000000005','湖北武汉','15320000005'),(6,6,'my',35,'男','312556000000000006','北京','15320000006'),(7,7,'sss',56,'男','312556000000000007','北京','15320000007'),(8,8,'vvv',45,'女','312556000000000008','江苏无锡','15320000008'),(9,9,'xxx',38,'男','312556000000000009','江苏无锡','15320000009');

/*Table structure for table `status` */

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `status` */

insert  into `status`(`id`,`name`) values (1,'启用'),(2,'冻结');

/*Table structure for table `transaction_log` */

DROP TABLE IF EXISTS `transaction_log`;

CREATE TABLE `transaction_log` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `accountid` int(4) DEFAULT NULL,
  `otherid` int(4) DEFAULT NULL,
  `tr_money` decimal(18,2) DEFAULT NULL,
  `datetime` varchar(50) DEFAULT NULL,
  `ta_type` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accountid` (`accountid`),
  KEY `ta_type` (`ta_type`),
  CONSTRAINT `transaction_log_ibfk_1` FOREIGN KEY (`accountid`) REFERENCES `account` (`accountid`),
  CONSTRAINT `transaction_log_ibfk_2` FOREIGN KEY (`ta_type`) REFERENCES `transaction_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `transaction_log` */

/*Table structure for table `transaction_type` */

DROP TABLE IF EXISTS `transaction_type`;

CREATE TABLE `transaction_type` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `transaction_type` */

insert  into `transaction_type`(`id`,`name`) values (1,'存款'),(2,'取款'),(3,'转账');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
