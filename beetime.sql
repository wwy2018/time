/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost
 Source Database       : beetime

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : utf-8

 Date: 07/23/2018 10:54:30 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `beelist`
-- ----------------------------
DROP TABLE IF EXISTS `beelist`;
CREATE TABLE `beelist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `time_s` char(5) NOT NULL,
  `time_e` char(5) NOT NULL,
  `openid` char(50) NOT NULL,
  `current` tinyint(4) NOT NULL DEFAULT '0',
  `alarm` tinyint(4) NOT NULL DEFAULT '0',
  `music` text,
  `c_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `beelist`
-- ----------------------------
BEGIN;
INSERT INTO `beelist` VALUES ('1', '搭建后台', '15:00', '15:30', '1112', '0', '0', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-19 15:02:36'), ('2', '前台搭建', '15:40', '16:00', '1113', '0', '0', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-19 15:03:51'), ('3', '昨天记录', '13:00', '14:00', '1112', '0', '0', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-18 16:58:08'), ('4', '2', '09:53', '10:23', '1234', '0', '1', 'a', '2018-07-22 09:56:58'), ('5', '3', '09:58', '10:28', '1234', '0', '1', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-22 09:59:16'), ('6', '4', '09:58', '10:28', '1234', '0', '1', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-22 09:59:59'), ('7', '5555', '20:53', '21:23', '1234', '0', '1', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-22 20:54:05'), ('8', '66', '20:55', '21:25', '1234', '0', '1', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-22 20:55:11'), ('9', '111', '20:59', '21:29', '1234', '0', '1', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-22 20:59:49'), ('10', '3333', '21:01', '21:31', '1234', '0', '1', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-22 21:01:28'), ('11', '444', '21:02', '21:32', '1234', '0', '0', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-22 21:02:23'), ('12', '一二三第三位 u 东', '21:37', '22:07', '1234', '0', '0', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-22 21:37:35'), ('13', 'taskkkkkkk', '21:51', '21:55', '1234', '0', '1', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-22 21:52:39'), ('14', 'kkkkkk', '22:00', '22:05', '1234', '0', '0', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-22 22:01:06'), ('15', 'annnnnn', '22:03', '22:33', '1234', '0', '0', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-22 22:06:06'), ('16', 'ddddd', '22:24', '22:25', '1234', '0', '1', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-22 22:25:01'), ('17', 'eeee', '22:27', '22:30', '1234', '0', '1', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-22 22:27:27'), ('18', 'bbbb', '22:29', '22:30', '1234', '0', '1', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-22 22:29:28'), ('19', '测试1', '08:14', '08:44', '1234', '0', '1', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-23 08:18:26'), ('20', '测试2', '08:21', '08:51', '1234', '0', '1', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-23 08:22:03'), ('21', '测试3', '08:22', '08:52', '1234', '0', '1', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-23 08:22:23'), ('22', '测试4', '08:22', '08:52', '1234', '0', '1', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-23 08:22:43'), ('23', '测试5', '08:22', '08:52', '1234', '0', '1', 'http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3', '2018-07-23 08:23:08');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
