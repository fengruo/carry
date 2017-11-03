/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50716
Source Host           : 127.0.0.1:3306
Source Database       : carry

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-04-14 16:11:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for categoryone
-- ----------------------------
DROP TABLE IF EXISTS `categoryone`;
CREATE TABLE `categoryone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for categorytwo
-- ----------------------------
DROP TABLE IF EXISTS `categorytwo`;
CREATE TABLE `categorytwo` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `category_id` int(255) NOT NULL,
  `sport_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `categorytwo_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categoryone` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for checkinfo
-- ----------------------------
DROP TABLE IF EXISTS `checkinfo`;
CREATE TABLE `checkinfo` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `info_id` int(255) DEFAULT NULL,
  `check_userid` int(255) DEFAULT NULL,
  `up_userid` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `info_id` (`info_id`),
  KEY `check_userid` (`check_userid`),
  KEY `up_userid` (`up_userid`),
  CONSTRAINT `checkinfo_ibfk_1` FOREIGN KEY (`info_id`) REFERENCES `information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `checkinfo_ibfk_2` FOREIGN KEY (`check_userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `checkinfo_ibfk_3` FOREIGN KEY (`up_userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `category_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `picture` longblob,
  `text` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `demandnumber` int(255) DEFAULT NULL,
  `checknumber` int(255) DEFAULT '0',
  `state` int(4) unsigned DEFAULT '0',
  `sport_detail` text,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `information_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categorytwo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `information_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` longtext NOT NULL,
  `time` date NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `categoryId` int(11) NOT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryName` (`categoryId`),
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `news_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for news_category
-- ----------------------------
DROP TABLE IF EXISTS `news_category`;
CREATE TABLE `news_category` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `studentnum` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `QQ` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `school` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
DROP TRIGGER IF EXISTS `check_num_up`;
DELIMITER ;;
CREATE TRIGGER `check_num_up` AFTER INSERT ON `checkinfo` FOR EACH ROW BEGIN 
    UPDATE information SET checknumber =(select count(id)  from checkinfo where info_id=new.info_id) WHERE information.id = new.info_id;
  END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `check_state`;
DELIMITER ;;
CREATE TRIGGER `check_state` AFTER INSERT ON `checkinfo` FOR EACH ROW BEGIN 
	declare check_number int;
	declare demand_number int;
	select checknumber into  check_number from information where id = new.info_id;
	select demandnumber into demand_number from information where id = new.info_id;
	if check_number>demand_number or check_number=demand_number then
	update information set state = 1 where id=new.info_id;
	end if;
 END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `check_state_d`;
DELIMITER ;;
CREATE TRIGGER `check_state_d` BEFORE DELETE ON `checkinfo` FOR EACH ROW BEGIN 
	declare check_number int;
	declare demand_number int;
	select checknumber into  check_number from information where id = old.info_id;
	select demandnumber into demand_number from information where id = old.info_id;
	if (check_number-1)<demand_number  then
	update information set state = 0 where id=old.info_id;
	end if;
 END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `check_num_down`;
DELIMITER ;;
CREATE TRIGGER `check_num_down` AFTER DELETE ON `checkinfo` FOR EACH ROW BEGIN 
	UPDATE information SET checknumber =(select count(id)  from checkinfo where info_id=old.info_id) WHERE information.id = old.info_id;
 END
;;
DELIMITER ;
