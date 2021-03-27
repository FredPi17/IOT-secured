-- Adminer 4.8.0 MySQL 5.5.5-10.5.9-MariaDB-1:10.5.9+maria~focal dump

SET NAMES utf8;
SET time_zone = '+01:00';
SET foreign_key_checks = 0;

DROP DATABASE IF EXISTS `mqtt-data`;
CREATE DATABASE `mqtt-data` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mqtt-data`;

DROP TABLE IF EXISTS `humidity`;
CREATE TABLE `humidity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) NOT NULL,
  `hour` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `temperature`;
CREATE TABLE `temperature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` float NOT NULL,
  `hour` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


-- 2021-03-27 17:21:18
