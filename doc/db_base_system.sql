/*
SQLyog Ultimate v8.32 
MySQL - 5.7.23-log : Database - db_base_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_base_system` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_base_system`;

/*Table structure for table `authority` */

DROP TABLE IF EXISTS `authority`;

CREATE TABLE `authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) DEFAULT NULL,
  `menuId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_authority` (`roleId`),
  KEY `FK2_authority` (`menuId`),
  CONSTRAINT `FK2_authority` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`),
  CONSTRAINT `FK_authority` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

/*Data for the table `authority` */

insert  into `authority`(`id`,`roleId`,`menuId`) values (101,1,14),(102,1,16),(103,1,23),(104,1,24),(105,1,25),(106,1,26),(107,1,18),(108,1,27),(109,1,28),(110,1,29),(111,1,39),(112,1,40),(113,1,21),(114,1,22),(115,1,30),(116,1,31),(117,1,32),(118,1,35),(119,1,36),(120,1,37),(121,1,38),(122,2,39),(123,2,40),(124,2,31),(125,2,14),(126,2,21),(127,2,22);

/*Table structure for table `c3p0testtable` */

DROP TABLE IF EXISTS `c3p0testtable`;

CREATE TABLE `c3p0testtable` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `c3p0testtable` */

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `log` */

insert  into `log`(`id`,`content`,`createTime`) values (13,'用户名为admin的用户登录时输入验证码错误！','2019-03-11 01:25:09'),(14,'用户名为{admin}，角色为{超级管理员}的用户登录成功！','2019-03-11 01:28:37'),(15,'登录时，用户名为12的用户不存在！','2019-03-11 01:29:04'),(16,'用户名为admin的用户登录时输入密码错误！','2019-03-11 01:29:30'),(17,'用户名为{admin}，角色为{超级管理员}的用户登录成功！','2019-03-11 01:32:33'),(18,'用户名为{admin}，角色为{超级管理员}的用户登录成功！','2019-03-11 01:49:52'),(19,'用户名为{admin}，角色为{超级管理员}的用户登录成功！','2019-03-11 02:06:41'),(20,'用户名为{admin},成功修改密码!','2019-03-11 02:08:21'),(21,'用户名为{admin},成功修改密码!','2019-03-11 02:08:42');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT '-1',
  `name` varchar(32) DEFAULT NULL,
  `url` varchar(180) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id`,`parentId`,`name`,`url`,`icon`) values (14,0,'系统设置','','icon-advancedsettings'),(16,14,'菜单管理','../admin/menu/list','icon-chart-organisation'),(18,14,'角色管理','../admin/role/list','icon-group-key'),(21,0,'用户管理','','icon-users'),(22,21,'用户列表','../admin/user/list','icon-group'),(23,16,'添加','openAdd()','icon-add'),(24,16,'编辑','openEdit()','icon-table-edit'),(25,16,'删除','remove()','icon-cross'),(26,16,'添加按钮','openAddMenu()','icon-add'),(27,18,'添加','openAdd()','icon-add'),(28,18,'编辑','openEdit()','icon-table-edit'),(29,18,'删除','remove()','icon-cross'),(30,22,'添加','openAdd()','icon-add'),(31,22,'编辑','openEdit()','icon-table-edit'),(32,22,'删除','remove()','icon-cross'),(35,0,'系统日志','','icon-table-cell'),(36,35,'日志列表','../admin/log/list','icon-page-white-text'),(37,36,'添加日志','openAdd()','icon-add1'),(38,36,'删除','remove()','icon-cancel'),(39,14,'修改密码','edit_password','icon-lock-edit'),(40,39,'修改密码','openAdd()','icon-lock-edit');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`name`,`remark`) values (1,'超级管理员','超级管理员拥有一切权限！'),(2,'普通用户','普通用户，请自由授权！');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT '0',
  `age` int(3) NOT NULL DEFAULT '0',
  `address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_user` (`roleId`),
  CONSTRAINT `FK_user` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`roleId`,`photo`,`sex`,`age`,`address`) values (1,'admin','admin',1,'/BaseProject/resources/upload/1552224846224.jpg',1,18,'广州'),(13,'aimanyeye','123456',1,'/BaseProject/resources/upload/1552224826513.png',2,18,'广州'),(21,'test','123',2,'/BaseProject/resources/upload/1552224884116.png',0,1,'gd');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
