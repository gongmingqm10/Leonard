DROP DATABASE IF EXISTS `arctic`;
CREATE DATABASE `arctic` character set utf8;
/*!40100 DEFAULT CHARACTER SET utf8 */;

user `arctic`;

DROP TABLE IF EXISTS `dealer`;
CREATE TABLE `dealer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dealerName` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `salerName` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `dealer` WRITE;
/*!40000 ALTER TABLE `dealer` DISABLE KEYS */;
/*!40000 ALTER TABLE `dealer` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) NOT NULL UNIQUE,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1, 'admin', '123456'), (2,'xuhuan','123456'), (3,'gongming','123456');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `source` varchar(200) NOT NULL,
  `scan` int(11) DEFAULT 0,
  `filename` varchar(255) NOT NULL,
  `filesize` BIGINT UNSIGNED,
  `filetype` varchar(128)
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1, 'admin', '123456'), (2,'xuhuan','123456'), (3,'gongming','123456');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;