/*
SQLyog Ultimate v8.32 
MySQL - 5.5.40 : Database - boot_crm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`boot_crm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `boot_crm`;

/*Table structure for table `base_dict` */

DROP TABLE IF EXISTS `base_dict`;

CREATE TABLE `base_dict` (
  `dict_id` varchar(32) NOT NULL COMMENT '数据字典id(主键)',
  `dict_type_code` varchar(10) NOT NULL COMMENT '数据字典类别代码',
  `dict_type_name` varchar(50) NOT NULL COMMENT '数据字典类别名称',
  `dict_item_name` varchar(50) NOT NULL COMMENT '数据字典项目名称',
  `dict_item_code` varchar(10) DEFAULT NULL COMMENT '数据字典项目代码(可为空)',
  `dict_sort` int(10) DEFAULT NULL COMMENT '排序字段',
  `dict_enable` char(1) NOT NULL COMMENT '1:使用 0:停用',
  `dict_memo` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_dict` */

insert  into `base_dict`(`dict_id`,`dict_type_code`,`dict_type_name`,`dict_item_name`,`dict_item_code`,`dict_sort`,`dict_enable`,`dict_memo`) values ('1','001','客户行业','教育培训 ',NULL,1,'1',NULL),('10','003','公司性质','民企',NULL,3,'1',NULL),('12','004','年营业额','1-10万',NULL,1,'1',NULL),('13','004','年营业额','10-20万',NULL,2,'1',NULL),('14','004','年营业额','20-50万',NULL,3,'1',NULL),('15','004','年营业额','50-100万',NULL,4,'1',NULL),('16','004','年营业额','100-500万',NULL,5,'1',NULL),('17','004','年营业额','500-1000万',NULL,6,'1',NULL),('18','005','客户状态','基础客户',NULL,1,'1',NULL),('19','005','客户状态','潜在客户',NULL,2,'1',NULL),('2','001','客户行业','电子商务',NULL,2,'1',NULL),('20','005','客户状态','成功客户',NULL,3,'1',NULL),('21','005','客户状态','无效客户',NULL,4,'1',NULL),('22','006','客户级别','普通客户',NULL,1,'1',NULL),('23','006','客户级别','VIP客户',NULL,2,'1',NULL),('24','007','商机状态','意向客户',NULL,1,'1',NULL),('25','007','商机状态','初步沟通',NULL,2,'1',NULL),('26','007','商机状态','深度沟通',NULL,3,'1',NULL),('27','007','商机状态','签订合同',NULL,4,'1',NULL),('3','001','客户行业','对外贸易',NULL,3,'1',NULL),('30','008','商机类型','新业务',NULL,1,'1',NULL),('31','008','商机类型','现有业务',NULL,2,'1',NULL),('32','009','商机来源','电话营销',NULL,1,'1',NULL),('33','009','商机来源','网络营销',NULL,2,'1',NULL),('34','009','商机来源','推广活动',NULL,3,'1',NULL),('4','001','客户行业','酒店旅游',NULL,4,'1',NULL),('5','001','客户行业','房地产',NULL,5,'1',NULL),('6','002','客户信息来源','电话营销',NULL,1,'1',NULL),('7','002','客户信息来源','网络营销',NULL,2,'1',NULL),('8','003','公司性质','合资',NULL,1,'1',NULL),('9','003','公司性质','国企',NULL,2,'1',NULL);

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cust_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '客户编号(主键)',
  `cust_name` varchar(50) NOT NULL COMMENT '客户名称',
  `cust_user_id` int(32) DEFAULT NULL COMMENT '负责人id',
  `cust_create_id` int(32) DEFAULT NULL COMMENT '创建人id',
  `cust_source` varchar(50) DEFAULT NULL COMMENT '客户信息来源',
  `cust_industry` varchar(50) DEFAULT NULL COMMENT '客户所属行业',
  `cust_level` varchar(32) DEFAULT NULL COMMENT '客户级别',
  `cust_linkman` varchar(50) DEFAULT NULL COMMENT '联系人',
  `cust_phone` varchar(64) DEFAULT NULL COMMENT '固定电话',
  `cust_mobile` varchar(16) DEFAULT NULL COMMENT '移动电话',
  `cust_zipcode` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `cust_address` varchar(100) DEFAULT NULL COMMENT '联系地址',
  `cust_createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`cust_id`,`cust_name`,`cust_user_id`,`cust_create_id`,`cust_source`,`cust_industry`,`cust_level`,`cust_linkman`,`cust_phone`,`cust_mobile`,`cust_zipcode`,`cust_address`,`cust_createtime`) values (14,'小张',NULL,1,'7','3','23','小雪','010-88888887','13848399998','100096','北京昌平区西三旗','2016-04-08 16:32:01'),(15,'小韩',NULL,2,'7','3','23','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:01'),(16,'小李',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:01'),(17,'小赵',NULL,4,'6','4','23','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:02'),(22,'小明',NULL,3,'6','2','23','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:03'),(24,'小伟',NULL,2,'7','5','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:03'),(25,'Tom',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:03'),(26,'jack',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:03'),(28,'Rose',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:04'),(29,'小韩',NULL,1,'7','1','23','小雪','010-88888886','13888888886','100096','北京昌平区西三旗','2016-04-08 16:32:04'),(30,'小叶',NULL,2,'6','2','23','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:04'),(31,'小韩',NULL,4,'7','1','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:04'),(33,'小海',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:04'),(34,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:05'),(35,'小姜',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:05'),(36,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:05'),(37,'小梦',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:05'),(38,'小孙',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:05'),(39,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:06'),(40,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:06'),(41,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:06'),(42,'小韩',NULL,1,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:06'),(43,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:06'),(44,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:07'),(45,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:07'),(46,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:07'),(47,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:07'),(48,'小高',NULL,5,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:07'),(49,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:07'),(50,'小钱',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:08'),(51,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:08'),(52,'小周',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:08'),(53,'小韩',NULL,1,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:08'),(54,'小丽',NULL,1,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:08'),(55,'小韩',NULL,1,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:08'),(56,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:09'),(57,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:09'),(58,'张三',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:09'),(59,'李四',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:29'),(60,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:29'),(61,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:29'),(62,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:29'),(63,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:30'),(64,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:30'),(65,'王五',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:30'),(66,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:30'),(67,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:30'),(68,'赵六',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:30'),(69,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:31'),(70,'小韩',NULL,1,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:31'),(71,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:31'),(72,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:31'),(73,'小七',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:31'),(74,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:32'),(75,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:32'),(76,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:32'),(77,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:32'),(78,'小郑',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:32'),(79,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:32'),(80,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:33'),(81,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:33'),(82,'小吴',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:33'),(83,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:33'),(144,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:44'),(145,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:44'),(146,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:44'),(147,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:45'),(148,'小韩',NULL,1,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:45'),(149,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:45'),(150,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:45'),(151,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:45'),(152,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:46'),(153,'晶晶',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:46'),(154,'倩倩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:46'),(155,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:46'),(156,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:46'),(157,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:46'),(158,'小韩',NULL,1,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:47'),(159,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:47'),(160,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:47'),(161,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:47'),(171,'小韩',NULL,3,'7','1','23','小雪','010-8235438','13755555555','100000','北京昌平区西三旗','2017-05-05 10:23:07'),(172,'小韩',NULL,2,'6','2','22','小雪','010-0000000','13288546521','100859','北京昌平区西三旗','2017-05-05 10:51:08'),(173,'小洛',NULL,1,'6','1','22','小雪','01062872234','13521023333','100000','北京昌平区西三旗','2017-05-05 10:57:09'),(174,'小月',NULL,1,'6','1','22','小雪','0482-8235438','13848399998','137400','内蒙古兴安盟乌兰浩特市','2017-05-05 11:33:27'),(175,'小韩',NULL,1,'6','1','22','小石','0791-88130000','15179105961','330098','江西省南昌市瑶湖高校园区','2017-05-05 13:17:11'),(176,'小智',NULL,1,'7','1','23','小黑','400-618-4000','13520203625','100091','北京市海淀区','2017-05-16 15:49:07'),(177,'小程',NULL,1,'6','1','23','小韩','010-88886616','13718026541','100000','北京市昌平区','2017-05-16 16:25:59');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_code` varchar(32) NOT NULL COMMENT '用户邮箱',
  `user_name` varchar(50) NOT NULL COMMENT '用户名称',
  `user_password` varchar(32) NOT NULL COMMENT '用户密码',
  `user_state` int(1) NOT NULL COMMENT '1:正常,0:暂停',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`user_code`,`user_name`,`user_password`,`user_state`) values (1,'1234@qq.com','管理员','1234',1)
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
