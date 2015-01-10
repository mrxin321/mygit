/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : wuiwatershop

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2015-01-04 09:36:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ws_brand`
-- ----------------------------
DROP TABLE IF EXISTS `ws_brand`;
CREATE TABLE `ws_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ws_brand
-- ----------------------------

-- ----------------------------
-- Table structure for `ws_package`
-- ----------------------------
DROP TABLE IF EXISTS `ws_package`;
CREATE TABLE `ws_package` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `num` int(5) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ws_package
-- ----------------------------

-- ----------------------------
-- Table structure for `ws_user`
-- ----------------------------
DROP TABLE IF EXISTS `ws_user`;
CREATE TABLE `ws_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `buil_num` int(5) DEFAULT NULL,
  `dor_num` int(5) DEFAULT NULL,
  `left_num` int(3) DEFAULT NULL,
  `owe_num` int(3) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `total_price` float(10,0) DEFAULT NULL,
  `toatal_pay` float(10,0) DEFAULT NULL,
  `total_pledge` float(10,0) DEFAULT NULL,
  `user_type` int(1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ws_user
-- ----------------------------

-- ----------------------------
-- Table structure for `ws_water_order`
-- ----------------------------
DROP TABLE IF EXISTS `ws_water_order`;
CREATE TABLE `ws_water_order` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL,
  `water_num` int(2) DEFAULT NULL,
  `barrel_num` int(2) DEFAULT NULL,
  `worker_com` int(1) DEFAULT NULL,
  `manager_com` int(1) DEFAULT NULL,
  `user_com` int(1) DEFAULT NULL,
  `worker_id` int(20) DEFAULT NULL,
  `manager_id` int(20) DEFAULT NULL,
  `user_remark` varchar(200) DEFAULT NULL,
  `user_com_date` date DEFAULT NULL,
  `manager_com_date` date DEFAULT NULL,
  `worker_com_date` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ws_water_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ws_worker`
-- ----------------------------
DROP TABLE IF EXISTS `ws_worker`;
CREATE TABLE `ws_worker` (
  `id` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ws_worker
-- ----------------------------
