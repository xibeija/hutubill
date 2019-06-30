# Host: 127.0.0.1  (Version: 5.5.15)
# Date: 2019-07-01 00:02:30
# Generator: MySQL-Front 5.3  (Build 4.269)

/*!40101 SET NAMES gb2312 */;

#
# Structure for table "category"
#

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "category"
#

INSERT INTO `category` VALUES (1,'交通'),(2,'餐饮'),(3,'住宿'),(4,'咳咳');

#
# Structure for table "config"
#

DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "config"
#

INSERT INTO `config` VALUES (1,'budget','500'),(2,'mysqlPath','C:\\Program Files (x86)\\MySQL\\MySQL Server 5.5');

#
# Structure for table "record"
#

DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spend` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_record_category` (`cid`),
  CONSTRAINT `fk_record_category` FOREIGN KEY (`cid`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "record"
#

INSERT INTO `record` VALUES (1,3,1,'','2019-05-28'),(2,2,2,'1111111','2019-05-28'),(3,2,1,'222222','2019-05-29'),(4,3,1,'33333','2019-05-29'),(5,2,2,'22222','2019-05-29'),(6,290,3,'xjicjsjjc','2019-05-30'),(7,10,4,'生病','2019-05-31');
