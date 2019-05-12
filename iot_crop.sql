/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - iot_crop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`iot_crop` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `iot_crop`;

/*Table structure for table `cl` */

DROP TABLE IF EXISTS `cl`;

CREATE TABLE `cl` (
  `uname` varchar(200) DEFAULT NULL,
  `cate` varchar(200) DEFAULT NULL,
  `temp` double DEFAULT NULL,
  `c1` double DEFAULT NULL,
  `c2` double DEFAULT NULL,
  `c3` double DEFAULT NULL,
  `c4` double DEFAULT NULL,
  `c5` double DEFAULT NULL,
  `c6` double DEFAULT NULL,
  `c7` double DEFAULT NULL,
  `c8` double DEFAULT NULL,
  `c9` double DEFAULT NULL,
  `c10` double DEFAULT NULL,
  `c11` double DEFAULT NULL,
  `c12` double DEFAULT NULL,
  `c13` double DEFAULT NULL,
  `c14` double DEFAULT NULL,
  `c15` double DEFAULT NULL,
  `c16` double DEFAULT NULL,
  `c17` double DEFAULT NULL,
  `c18` double DEFAULT NULL,
  `c19` double DEFAULT NULL,
  `c20` double DEFAULT NULL,
  `c21` double DEFAULT NULL,
  `c22` double DEFAULT NULL,
  `c23` double DEFAULT NULL,
  `c24` double DEFAULT NULL,
  `c25` double DEFAULT NULL,
  `c26` double DEFAULT NULL,
  `c27` double DEFAULT NULL,
  `c28` double DEFAULT NULL,
  `c29` double DEFAULT NULL,
  `c30` double DEFAULT NULL,
  `c31` double DEFAULT NULL,
  `c32` double DEFAULT NULL,
  `c33` double DEFAULT NULL,
  `c34` double DEFAULT NULL,
  `c35` double DEFAULT NULL,
  `c36` double DEFAULT NULL,
  `c37` double DEFAULT NULL,
  `c38` double DEFAULT NULL,
  `c39` double DEFAULT NULL,
  `c40` double DEFAULT NULL,
  `c41` double DEFAULT NULL,
  `c42` double DEFAULT NULL,
  `c43` double DEFAULT NULL,
  `c44` double DEFAULT NULL,
  `c45` double DEFAULT NULL,
  `c46` double DEFAULT NULL,
  `c47` double DEFAULT NULL,
  `c48` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cl` */

insert  into `cl`(`uname`,`cate`,`temp`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`c17`,`c18`,`c19`,`c20`,`c21`,`c22`,`c23`,`c24`,`c25`,`c26`,`c27`,`c28`,`c29`,`c30`,`c31`,`c32`,`c33`,`c34`,`c35`,`c36`,`c37`,`c38`,`c39`,`c40`,`c41`,`c42`,`c43`,`c44`,`c45`,`c46`,`c47`,`c48`) values ('moni','temp',27,3,1,3,3,3,1,9,9,9,9,3,9,9,3,9,9,9,3,3,3,3,9,3,9,3,9,9,3,3,3,9,3,9,9,9,9,9,9,1,1,3,1,3,9,9,3,1,9),('moni','temp',74,3,1,3,3,3,1,9,9,9,9,3,9,9,3,9,9,9,3,3,3,3,9,3,9,3,9,9,3,3,3,9,3,9,9,9,9,9,9,1,1,3,1,3,9,9,3,1,9),('moni','temp',1021,3,1,3,3,3,1,9,9,9,9,3,9,9,3,9,9,9,3,3,3,3,9,3,9,3,9,9,3,3,3,9,3,9,9,9,9,9,9,1,1,3,1,3,9,9,3,1,9),('moni','temp',1014,3,1,3,3,3,1,9,9,9,9,3,9,9,3,9,9,9,3,3,3,3,9,3,9,3,9,9,3,3,3,9,3,9,9,9,9,9,9,1,1,3,1,3,9,9,3,1,9),('moni','temp',1,3,9,3,3,3,9,1,1,1,1,3,1,1,3,1,1,1,3,3,3,3,1,3,1,3,1,1,3,3,3,1,3,1,1,1,1,1,1,9,9,3,9,3,1,1,3,9,1);

/*Table structure for table `cluster` */

DROP TABLE IF EXISTS `cluster`;

CREATE TABLE `cluster` (
  `crop` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cluster` */

insert  into `cluster`(`crop`) values ('15'),('13'),('15'),('15'),('15'),('13'),('37'),('37'),('37'),('37'),('15'),('37'),('37'),('15'),('37'),('37'),('37'),('15'),('15'),('15'),('15'),('37'),('15'),('37'),('15'),('37'),('37'),('15'),('15'),('15'),('37'),('15'),('37'),('37'),('37'),('37'),('37'),('37'),('13'),('13'),('15'),('13'),('15'),('37'),('37'),('15'),('13'),('37');

/*Table structure for table `cropp` */

DROP TABLE IF EXISTS `cropp`;

CREATE TABLE `cropp` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `symp` varchar(200) DEFAULT NULL,
  `cropp` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

/*Data for the table `cropp` */

insert  into `cropp`(`id`,`symp`,`cropp`) values (1,'[c2]','Barley'),(2,'[c3]','Cardamom'),(3,'[c4]','Castor seed '),(4,'[c5]','Chillies (dry)'),(5,'[c6]','Coffee'),(6,'[c7]','Coriander'),(7,'[c8]','Cotton'),(8,'[c9]','Ginger (dry)'),(9,'[c10]','Gram'),(10,'[c11]','Groundnut'),(11,'[c12]','Jowar'),(12,'[c13]','Jute'),(13,'[c14]','Linseed'),(14,'[c15]','Maize'),(15,'[c16]','Mesta'),(16,'[c17]','Millets (small)'),(17,'[c18]','Paddy'),(18,'[c19]','Potato'),(19,'[c20]','Onion'),(20,'[c21]','Pulses'),(21,'[c22]','Ragi'),(22,'[c23]','Rape-seed & Mustard'),(23,'[c24]','Rice'),(24,'[c25]','Safflower'),(25,'[c26]','Sannhemp'),(26,'[c27]','Soyabean'),(27,'[c28]','Sesamum'),(28,'[c29]','Sugarcane'),(29,'[c30]','Sunflower'),(30,'[c31]','Tapioca'),(31,'[c32]','Tea'),(32,'[c33]','Tobacco'),(33,'[c34]','Tur'),(34,'[c35]','Carrot'),(35,'[c36]','Spinach'),(36,'[c37]','Brinjal'),(37,'[c38]','Amla'),(38,'[c39]','Guava'),(39,'[c40]','wheat'),(40,'[c41]','Peanut'),(41,'[c42]','Cashew'),(42,'[c43]','Tomato'),(43,'[c44]','Beans'),(44,'[c45]','Mango'),(45,'[c46]','Cababage'),(46,'[c47]','Drum Stick'),(47,'[c48]','Cucumber'),(48,'[c1]\r\n','Bajra');

/*Table structure for table `dataset` */

DROP TABLE IF EXISTS `dataset`;

CREATE TABLE `dataset` (
  `dte` varchar(100) DEFAULT NULL,
  `id` varchar(100) DEFAULT NULL,
  `temp` varchar(100) DEFAULT NULL,
  `hum` varchar(100) DEFAULT NULL,
  `mois` varchar(100) DEFAULT NULL,
  `pressure` varchar(100) DEFAULT NULL,
  `soil` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dataset` */

insert  into `dataset`(`dte`,`id`,`temp`,`hum`,`mois`,`pressure`,`soil`) values ('2019-01-15 21:58:01 UTC','1','28','75','1020','1014.71','Alluvial Soil'),('2019-01-15 21:58:24 UTC','2','28','75','1020','1014.7','Red Soil'),('2019-01-15 21:58:48 UTC','3','28','75','1024','1014.67','Black Soil'),('2019-01-15 21:59:11 UTC','4','28','75','1021','1014.67','Lateritic Soil'),('2019-01-15 21:59:35 UTC','5','28','75','1015','1014.64','Mountain Soil'),('2019-01-15 21:59:59 UTC','6','28','75','1023','1014.76','Desert Soil'),('2019-01-15 22:00:22 UTC','7','28','75','1021','1014.68','Red Soil'),('2019-01-15 22:00:46 UTC','8','28','75','1021','1014.68','Black Soil'),('2019-01-15 22:03:23 UTC','9','28','77','1020','1014.74','Red Soil'),('2019-01-15 22:03:47 UTC','10','28','75','1021','1014.67','Black Soil'),('2019-01-15 22:26:12 UTC','11','28','75','1020','1014.63','Red Soil'),('2019-01-15 22:26:35 UTC','12','27','74','1020','1014.63','Black Soil'),('2019-01-15 22:26:59 UTC','13','28','75','1022','1014.63','Red Soil'),('2019-01-15 22:27:23 UTC','14','28','75','1021','1014.71','Black Soil'),('2019-01-15 22:27:46 UTC','15','28','75','1022','1014.7','Red Soil'),('2019-01-15 22:28:10 UTC','16','28','75','1022','1014.53','Black Soil'),('2019-01-15 22:28:34 UTC','17','28','75','1023','1014.6','Red Soil'),('2019-01-15 22:28:58 UTC','18','28','75','1023','1014.62','Black Soil'),('2019-01-15 22:29:21 UTC','19','28','75','1021','1014.68','Alluvial Soil'),('2019-01-15 22:29:45 UTC','20','28','75','1021','1014.71','Red Soil'),('2019-01-15 22:30:08 UTC','21','28','75','1023','1014.63','Black Soil'),('2019-01-15 22:30:32 UTC','22','28','75','1022','1014.62','Lateritic Soil'),('2019-01-15 22:30:55 UTC','23','28','75','1023','1014.69','Mountain Soil'),('2019-01-15 22:31:19 UTC','24','28','75','1023','1014.61','Mountain Soil'),('2019-01-15 22:31:43 UTC','25','28','75','1021','1014.69','Red Soil'),('2019-01-15 22:32:06 UTC','26','28','75','1021','1014.6','Black Soil'),('2019-01-15 22:32:30 UTC','27','28','74','1021','1014.61','Red Soil'),('2019-01-15 22:32:54 UTC','28','28','75','1021','1014.65','Black Soil'),('2019-01-15 22:33:17 UTC','29','28','75','1022','1014.74','Red Soil'),('2019-01-15 22:33:41 UTC','30','28','75','1023','1014.59','Black Soil'),('2019-01-15 22:34:05 UTC','31','28','75','1023','1014.64','Red Soil'),('2019-01-15 22:34:28 UTC','32','28','74','1021','1014.73','Black Soil'),('2019-01-15 22:34:52 UTC','33','28','75','1021','1014.67','Red Soil'),('2019-01-15 22:35:15 UTC','34','28','74','1023','1014.65','Black Soil'),('2019-01-15 22:35:39 UTC','35','28','74','1021','1014.67','Red Soil'),('2019-01-15 22:36:03 UTC','36','28','74','1021','1014.64','Black Soil'),('2019-01-15 22:36:26 UTC','37','28','74','1021','1014.7','Alluvial Soil'),('2019-01-15 22:36:50 UTC','38','28','74','1024','1014.69','Red Soil'),('2019-01-15 22:37:14 UTC','39','28','74','1024','1014.63','Black Soil'),('2019-01-15 22:37:37 UTC','40','28','74','1011','1014.72','Red Soil'),('2019-01-15 22:38:01 UTC','41','28','74','1023','1014.74','Black Soil'),('2019-01-15 22:38:25 UTC','42','28','74','1022','1014.78','Red Soil'),('2019-01-15 22:38:48 UTC','43','28','74','1021','1014.77','Black Soil'),('2019-01-15 22:39:12 UTC','44','28','74','1021','1014.81','Red Soil'),('2019-01-15 22:39:36 UTC','45','28','74','1021','1014.8','Black Soil'),('2019-01-15 22:39:59 UTC','46','28','74','1021','1014.66','Red Soil'),('2019-01-15 22:40:23 UTC','47','28','74','1024','1014.7','Black Soil'),('2019-01-15 22:40:47 UTC','48','28','74','1021','1014.76','Red Soil'),('2019-01-15 22:41:10 UTC','49','28','74','1024','1014.79','Black Soil'),('2019-01-15 22:41:35 UTC','50','28','74','1024','1014.72','Red Soil'),('2019-01-15 22:41:59 UTC','51','28','74','1024','1014.73','Black Soil'),('2019-01-15 22:42:21 UTC','52','28','74','1021','1014.69','Alluvial Soil'),('2019-01-15 22:42:46 UTC','53','28','74','1022','1014.7','Red Soil'),('2019-01-15 22:43:08 UTC','54','28','74','1021','1014.75','Black Soil'),('2019-01-15 22:43:32 UTC','55','28','74','1022','1014.76','Red Soil'),('2019-01-15 22:43:56 UTC','56','28','74','1021','1014.77','Black Soil'),('2019-01-15 22:44:19 UTC','57','28','74','1021','1014.81','Red Soil'),('2019-01-15 22:44:43 UTC','58','28','74','1021','1014.75','Black Soil'),('2019-01-15 22:45:07 UTC','59','28','74','1021','1014.77','Red Soil'),('2019-01-15 22:45:30 UTC','60','28','74','1021','1014.78','Black Soil'),('2019-01-15 22:45:54 UTC','61','28','74','1021','1014.78','Red Soil'),('2019-01-15 22:46:18 UTC','62','28','74','1018','1014.81','Black Soil'),('2019-01-15 22:46:41 UTC','63','28','74','1024','1014.88','Red Soil'),('2019-01-15 22:47:05 UTC','64','28','74','1024','1014.82','Black Soil'),('2019-01-15 22:47:29 UTC','65','28','74','1021','1014.8','Red Soil'),('2019-01-15 22:47:52 UTC','66','28','74','1021','1014.81','Black Soil'),('2019-01-15 22:48:16 UTC','67','28','74','1023','1014.9','Alluvial Soil'),('2019-01-15 22:48:40 UTC','68','28','74','1022','1014.96','Red Soil'),('2019-01-15 22:49:03 UTC','69','28','74','1021','1014.84','Black Soil'),('2019-01-15 22:49:27 UTC','70','28','74','1024','1014.91','Red Soil'),('2019-01-15 22:49:51 UTC','71','28','74','1021','1014.89','Black Soil'),('2019-01-15 22:50:14 UTC','72','28','74','1024','1014.86','Red Soil'),('2019-01-15 22:50:38 UTC','73','28','74','1023','1014.94','Black Soil'),('2019-01-15 22:51:02 UTC','74','28','74','1023','1014.93','Red Soil'),('2019-01-15 22:51:25 UTC','75','28','74','1021','1014.93','Black Soil'),('2019-01-15 22:51:49 UTC','76','28','74','1024','1014.94','Red Soil'),('2019-01-15 22:52:12 UTC','77','28','74','1024','1014.89','Black Soil'),('2019-01-15 22:52:36 UTC','78','28','74','1023','1014.92','Red Soil'),('2019-01-15 22:53:00 UTC','79','28','74','1024','1014.94','Black Soil'),('2019-01-15 22:53:23 UTC','80','28','74','1024','1014.94','Red Soil'),('2019-01-15 22:53:47 UTC','81','28','74','1020','1014.99','Black Soil');

/*Table structure for table `dis` */

DROP TABLE IF EXISTS `dis`;

CREATE TABLE `dis` (
  `distr` varchar(200) DEFAULT NULL,
  `temp` varchar(200) DEFAULT NULL,
  `soil` varchar(200) DEFAULT NULL,
  `water` varchar(200) DEFAULT NULL,
  `rain` varchar(200) DEFAULT NULL,
  `urll` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dis` */

insert  into `dis`(`distr`,`temp`,`soil`,`water`,`rain`,`urll`) values ('distr','temp','soil','water','rain','urll'),('Kanchipuram','29','Black Soil','1200','5','http://www.yourweather.co.uk/weather_Chennai-Asia-India-Tamil+Nadu--1-311739.html'),('Tiruvallur','24','Red Soil','990','7','http://www.yourweather.co.uk/weather_Madras-Asia-India-Madras-VOMM-1-13218.html'),('Cuddalore','25','Black Soil , Red Soil','2000','16','http://www.yourweather.co.uk/weather_Cuddalore-Asia-India-Tamil+Nadu--1-311719.html'),('Villupuram','27','Black Soil , Red Soil, Alluvial Soil','2100','11','http://www.yourweather.co.uk/weather_Ulundurpet-Asia-India-Tamil+Nadu--1-312497.html'),('Vellore','22','Red Soil','1700','13','http://www.yourweather.co.uk/weather_Vellore-Asia-India-Vellore-VOVR-1-13221.html'),('Tiruvannamalai','25','Red Soil','650','14','http://www.yourweather.co.uk/weather_Tiruvannamalai-Asia-India-Tamil+Nadu--1-313093.html'),('Salem','12','Black Soil ,  Alluvial Soil','1890','26','http://www.yourweather.co.uk/weather_Salem-Asia-India-Tamil+Nadu--1-313308.html'),('Namakkal','24','Black Soil , Red Soil','1200','18','http://www.yourweather.co.uk/weather_Namakkal-Asia-India-Tamil+Nadu--1-313161.html'),('Dharmapuri','25','Black Soil , Red Soil','1230','22','http://www.yourweather.co.uk/weather_Dharmapuri-Asia-India-Tamil+Nadu--1-313423.html'),('Erode','20','Red Soil','890','23','http://www.yourweather.co.uk/weather_Erode-Asia-India-Tamil+Nadu--1-313095.html'),('Coimbatore','23','Black Soil ,  Alluvial Soil','1560','25','http://www.yourweather.co.uk/weather_Coimbatore-Asia-India-Coimbatore-VOCB-1-13212.html'),('The Nilgiris','30','Lateritic soil, Red Soil, Black Soil','2300','50','http://www.yourweather.co.uk/weather_Nilgiri+Eastern+Slopes-Asia-India-Tamil+Nadu--1-313468.html'),('Thanjavur','24','Lateritic soil, Red Soil','2500','21','http://www.yourweather.co.uk/weather_Thanjavur-Asia-India-Tamil+Nadu--1-312205.html'),('Nagapattinam','12','Alluvial Soil','2800','22','http://www.yourweather.co.uk/weather_Nagapattinam-Asia-India-Tamil+Nadu--1-311632.html'),('Tiruvarur','22','Lateritic soil, Red Soil','2200','22','http://www.yourweather.co.uk/weather_Thiruvarur-Asia-India-Tamil+Nadu--1-311812.html'),('Tiruchirappalli','24','Alluvial Soil','1900','16','http://www.yourweather.co.uk/weather_Tiruchchirapalli-Asia-India-Tiruchchirapalli-VOTR-1-13219.html'),('Karur','21','Lateritic soil, Alluvial Soil','1900','16','http://www.yourweather.co.uk/weather_Karur-Asia-India-Tamil+Nadu--1-312865.html'),('Perambalur','28','Black Soil , Red Soil, Alluvial Soil','780','17','http://www.yourweather.co.uk/weather_Perambalur-Asia-India-Tamil+Nadu--1-312919.html'),('Pudukkottai','20','Black Soil , Red Soil','908','21','http://www.yourweather.co.uk/weather_Pudukkottai-Asia-India-Tamil+Nadu--1-312900.html'),('Madurai','19','Black Soil , Red Soil','1200','32','http://www.yourweather.co.uk/weather_Madurai-Asia-India-Madurai-VOMD-1-13216.html'),('Theni','18','Black Soil , Red Soil, Brown Soil','2090','52','http://www.yourweather.co.uk/weather_Theni-Asia-India-Tamil+Nadu--1-313359.html'),('Dindigul','26','Red Soil','2100','33','http://www.yourweather.co.uk/weather_Dindigul-Asia-India-Tamil+Nadu--1-313301.html'),('Ramanathapuram','25','Red Soil, Alluvial Soil','1090','34','http://www.yourweather.co.uk/weather_Ramanathapuram-Asia-India-Tamil+Nadu--1-311731.html'),('Virudhunagar','22','Black Soil , Red Soil','690','45','http://www.yourweather.co.uk/weather_Virudhunagar-Asia-India-Tamil+Nadu--1-312698.html'),('Sivagangai','20','Lateritic soil, Red Soil','880','27','http://www.yourweather.co.uk/weather_Sivaganga-Asia-India-Tamil+Nadu--1-312687.html'),('Tirunelveli','30','Red Soil','980','67','http://www.yourweather.co.uk/weather_Tirunelveli-Asia-India-Tamil+Nadu--1-312351.html'),('Thoothukkudi','31','Lateritic soil, Red Soil, Black Soil','456','43','http://www.yourweather.co.uk/weather_Thoothukudi-Asia-India-Tamil+Nadu--1-311677.html'),('Kanniyakumari','32','Lateritic soil, Red Soil','560','65','http://www.yourweather.co.uk/weather_Kanyakumari-Asia-India-Tamil+Nadu--1-311766.html'),('Krishnagiri','34','Black Soil','1500','17','http://www.yourweather.co.uk/weather_Krishnagiri-Asia-India-Tamil+Nadu--1-313552.html'),('Ariyalur','26','Black soil, Alluvial soil','1345','17','http://www.yourweather.co.uk/weather_Ariyalur-Asia-India-Tamil+Nadu-l312534--1-312534.html'),('Tiruppur','22','Alluvial Soil','1789','20','http://www.yourweather.co.uk/weather_Tiruppur-Asia-India-Tamil+Nadu--1-313349.html');

/*Table structure for table `graph` */

DROP TABLE IF EXISTS `graph`;

CREATE TABLE `graph` (
  `p` varchar(100) DEFAULT NULL,
  `r` varchar(100) DEFAULT NULL,
  `f` varchar(100) DEFAULT NULL,
  `a` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `graph` */

insert  into `graph`(`p`,`r`,`f`,`a`) values ('0.83','0.0','0.1','0.8');

/*Table structure for table `graph1` */

DROP TABLE IF EXISTS `graph1`;

CREATE TABLE `graph1` (
  `p` varchar(100) DEFAULT NULL,
  `r` varchar(100) DEFAULT NULL,
  `f` varchar(100) DEFAULT NULL,
  `a` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `graph1` */

insert  into `graph1`(`p`,`r`,`f`,`a`) values ('0.9299999999999999','0.0','0.1','0.99');

/*Table structure for table `output` */

DROP TABLE IF EXISTS `output`;

CREATE TABLE `output` (
  `uname` varchar(200) DEFAULT NULL,
  `cate` varchar(200) DEFAULT NULL,
  `temp` double DEFAULT NULL,
  `c1` double DEFAULT NULL,
  `c2` double DEFAULT NULL,
  `c3` double DEFAULT NULL,
  `c4` double DEFAULT NULL,
  `c5` double DEFAULT NULL,
  `c6` double DEFAULT NULL,
  `c7` double DEFAULT NULL,
  `c8` double DEFAULT NULL,
  `c9` double DEFAULT NULL,
  `c10` double DEFAULT NULL,
  `c11` double DEFAULT NULL,
  `c12` double DEFAULT NULL,
  `c13` double DEFAULT NULL,
  `c14` double DEFAULT NULL,
  `c15` double DEFAULT NULL,
  `c16` double DEFAULT NULL,
  `c17` double DEFAULT NULL,
  `c18` double DEFAULT NULL,
  `c19` double DEFAULT NULL,
  `c20` double DEFAULT NULL,
  `c21` double DEFAULT NULL,
  `c22` double DEFAULT NULL,
  `c23` double DEFAULT NULL,
  `c24` double DEFAULT NULL,
  `c25` double DEFAULT NULL,
  `c26` double DEFAULT NULL,
  `c27` double DEFAULT NULL,
  `c28` double DEFAULT NULL,
  `c29` double DEFAULT NULL,
  `c30` double DEFAULT NULL,
  `c31` double DEFAULT NULL,
  `c32` double DEFAULT NULL,
  `c33` double DEFAULT NULL,
  `c34` double DEFAULT NULL,
  `c35` double DEFAULT NULL,
  `c36` double DEFAULT NULL,
  `c37` double DEFAULT NULL,
  `c38` double DEFAULT NULL,
  `c39` double DEFAULT NULL,
  `c40` double DEFAULT NULL,
  `c41` double DEFAULT NULL,
  `c42` double DEFAULT NULL,
  `c43` double DEFAULT NULL,
  `c44` double DEFAULT NULL,
  `c45` double DEFAULT NULL,
  `c46` double DEFAULT NULL,
  `c47` double DEFAULT NULL,
  `c48` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `output` */

insert  into `output`(`uname`,`cate`,`temp`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`c17`,`c18`,`c19`,`c20`,`c21`,`c22`,`c23`,`c24`,`c25`,`c26`,`c27`,`c28`,`c29`,`c30`,`c31`,`c32`,`c33`,`c34`,`c35`,`c36`,`c37`,`c38`,`c39`,`c40`,`c41`,`c42`,`c43`,`c44`,`c45`,`c46`,`c47`,`c48`) values (NULL,NULL,NULL,15,13,15,15,15,13,37,37,37,37,15,37,37,15,37,37,37,15,15,15,15,37,15,37,15,37,37,15,15,15,37,15,37,37,37,37,37,37,13,13,15,13,15,37,37,15,13,37);

/*Table structure for table `soi` */

DROP TABLE IF EXISTS `soi`;

CREATE TABLE `soi` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `crop` varchar(200) DEFAULT NULL,
  `val` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

/*Data for the table `soi` */

insert  into `soi`(`id`,`crop`,`val`) values (1,'c1',1),(2,'c2',4),(3,'c3',2),(4,'c4',1),(5,'c5',3),(6,'c6',2),(7,'c7',2),(8,'c8',4),(9,'c9',1),(10,'c10',5),(11,'c11',4),(12,'c12',2),(13,'c13',3),(14,'c14',3),(15,'c15',3),(16,'c16',1),(17,'c17',1),(18,'c18',4),(19,'c19',4),(20,'c20',2),(21,'c21',4),(22,'c22',2),(23,'c23',3),(24,'c24',3),(25,'c25',1),(26,'c26',5),(27,'c27',4),(28,'c28',2),(29,'c29',1),(30,'c30',1),(31,'c31',2),(32,'c32',3),(33,'c33',4),(34,'c34',4),(35,'c35',3),(36,'c36',2),(37,'c37',5),(38,'c38',1),(39,'c39',3),(40,'c40',4),(41,'c41',5),(42,'c42',1),(43,'c43',3),(44,'c44',3),(45,'c45',2),(46,'c46',2),(47,'c47',3),(48,'c48',4);

/*Table structure for table `soil` */

DROP TABLE IF EXISTS `soil`;

CREATE TABLE `soil` (
  `soil` varchar(200) DEFAULT NULL,
  `val` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `soil` */

insert  into `soil`(`soil`,`val`) values ('Alluvial Soil',1),('Red Soil',2),('Black Soil',3),('Lateritic Soil',4),('Mountain Soil',5),('Desert Soil',6);

/*Table structure for table `svm` */

DROP TABLE IF EXISTS `svm`;

CREATE TABLE `svm` (
  `id` int(200) DEFAULT NULL,
  `crop` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `svm` */

insert  into `svm`(`id`,`crop`) values (8,'Ginger (dry)'),(15,'Mesta'),(16,'Millets (small)'),(29,'Sunflower'),(37,'Amla');

/*Table structure for table `svm_t` */

DROP TABLE IF EXISTS `svm_t`;

CREATE TABLE `svm_t` (
  `id` varchar(200) DEFAULT NULL,
  `cid` varchar(200) DEFAULT NULL,
  `crop` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `svm_t` */

insert  into `svm_t`(`id`,`cid`,`crop`) values ('1','c2','Barley'),('2','c3','Cardamom'),('3','c4','Castor seed '),('4','c5','Chillies (dry)'),('5','c6','Coffee'),('6','c7','Coriander'),('7','c8','Cotton'),('8','c9','Ginger (dry)'),('9','c10','Gram'),('10','c11','Groundnut'),('11','c12','Jowar'),('12','c13','Jute'),('13','c14','Linseed'),('14','c15','Maize'),('15','c16','Mesta'),('16','c17','Millets (small)'),('17','c18','Paddy'),('18','c19','Potato'),('19','c20','Onion'),('20','c21','Pulses'),('21','c22','Ragi'),('22','c23','Rape-seed & Mustard'),('23','c24','Rice'),('24','c25','Safflower'),('25','c26','Sannhemp'),('26','c27','Soyabean'),('27','c28','Sesamum'),('28','c29','Sugarcane'),('29','c30','Sunflower'),('30','c31','Tapioca'),('31','c32','Tea'),('32','c33','Tobacco'),('33','c34','Tur'),('34','c35','Carrot'),('35','c36','Spinach'),('36','c37','Brinjal'),('37','c38','Amla'),('38','c39','Guava'),('39','c40','wheat'),('40','c41','Peanut'),('41','c42','Cashew'),('42','c43','Tomato'),('43','c44','Beans'),('44','c45','Mango'),('45','c46','Cababage'),('46','c47','Drum Stick'),('47','c48','Cucumber'),('48','c1\r\n','Bajra');

/*Table structure for table `temp` */

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `c1` double DEFAULT NULL,
  `c2` double DEFAULT NULL,
  `c3` double DEFAULT NULL,
  `c4` double DEFAULT NULL,
  `c5` double DEFAULT NULL,
  `c6` double DEFAULT NULL,
  `c7` double DEFAULT NULL,
  `c8` double DEFAULT NULL,
  `c9` double DEFAULT NULL,
  `c10` double DEFAULT NULL,
  `c11` double DEFAULT NULL,
  `c12` double DEFAULT NULL,
  `c13` double DEFAULT NULL,
  `c14` double DEFAULT NULL,
  `c15` double DEFAULT NULL,
  `c16` double DEFAULT NULL,
  `c17` double DEFAULT NULL,
  `c18` double DEFAULT NULL,
  `c19` double DEFAULT NULL,
  `c20` double DEFAULT NULL,
  `c21` double DEFAULT NULL,
  `c22` double DEFAULT NULL,
  `c23` double DEFAULT NULL,
  `c24` double DEFAULT NULL,
  `c25` double DEFAULT NULL,
  `c26` double DEFAULT NULL,
  `c27` double DEFAULT NULL,
  `c28` double DEFAULT NULL,
  `c29` double DEFAULT NULL,
  `c30` double DEFAULT NULL,
  `c31` double DEFAULT NULL,
  `c32` double DEFAULT NULL,
  `c33` double DEFAULT NULL,
  `c34` double DEFAULT NULL,
  `c35` double DEFAULT NULL,
  `c36` double DEFAULT NULL,
  `c37` double DEFAULT NULL,
  `c38` double DEFAULT NULL,
  `c39` double DEFAULT NULL,
  `c40` double DEFAULT NULL,
  `c41` double DEFAULT NULL,
  `c42` double DEFAULT NULL,
  `c43` double DEFAULT NULL,
  `c44` double DEFAULT NULL,
  `c45` double DEFAULT NULL,
  `c46` double DEFAULT NULL,
  `c47` double DEFAULT NULL,
  `c48` double DEFAULT NULL,
  `cate` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `temp` */

insert  into `temp`(`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`c17`,`c18`,`c19`,`c20`,`c21`,`c22`,`c23`,`c24`,`c25`,`c26`,`c27`,`c28`,`c29`,`c30`,`c31`,`c32`,`c33`,`c34`,`c35`,`c36`,`c37`,`c38`,`c39`,`c40`,`c41`,`c42`,`c43`,`c44`,`c45`,`c46`,`c47`,`c48`,`cate`) values (23,13,22,18,19,17,25,30,25,46,22,26,25,24,27,25,28,22,22,23,24,28,21,25,21,28,25,18,20,24,28,24,32,26,27,38,27,29,13,11,20,16,24,29,28,18,15,27,'temp'),(1700,550,1550,1300,1400,1200,1900,2100,1900,1000,1550,1200,1200,1150,1100,1150,1700,1120,200,345,1090,350,1200,2000,1200,1230,1090,2010,1220,1450,670,960,990,570,890,780,1100,1400,1230,1090,1280,1450,1480,1200,1700,1100,2000,1209,'water'),(1200,1300,1400,900,1290,1450,1890,1900,1200,1100,1000,990,890,1190,2000,2500,3500,4000,3400,1100,3098,6000,5000,790,2567,976,5670,765,908,1200,3800,3500,5000,5600,2300,4500,4300,4200,4400,2300,4300,4400,3400,4500,1200,1200,2000,1200,'trans'),(12,20,22,23,34,43,54,34,65,34,78,89,98,90,65,45,76,87,67,34,35,67,98,98,78,88,99,100,150,190,200,22,33,44,66,77,88,99,55,77,55,67,78,89,67,56,78,20,'mar'),(120,160,140,100,90,60,120,190,130,120,170,200,120,30,65,45,90,89,79,80,49,56,78,80,40,65,76,87,40,90,80,70,60,90,50,60,90,70,90,60,50,45,90,89,90,99,80,90,'dur'),(5,7,19,18,17,25,30,45,22,26,25,67,20,12,34,56,65,34,56,76,23,12,13,14,16,17,11,10,9,8,6,3,5,7,2,9,9,2,4,5,6,7,8,9,45,34,23,12,'rain'),(1600,440,1670,1456,1700,2000,2500,3000,890,4000,2300,1200,1400,2090,2300,2400,3000,3009,2900,2300,2700,3400,3500,3600,2300,2400,2600,2700,2800,3400,3500,3500,3600,3700,3800,2000,2300,1000,1200,1400,1600,1000,990,200,2000,300,660,760,'hec'),(1,4,2,1,3,2,2,4,1,5,4,2,3,3,3,1,1,4,4,2,4,2,3,3,1,5,4,2,1,1,2,3,4,4,3,2,1,1,2,3,4,4,3,3,2,2,1,1,'soil'),(74,75,74,74,75,75,74,76,74,75,75,74,74,74,75,74,78,74,75,76,74,75,74,74,74,73,75,75,74,74,74,74,74,75,75,75,75,74,74,74,74,74,74,74,75,74,74,74,'humidity'),(1020,1020,1021,1022,1023,1024,1025,1026,1015,1016,1018,1020,1023,1024,1021,1023,1021,1020,1022,1024,1024,1023,1020,1018,1020,1021,1023,1023,1021,1020,1024,1021,1023,1024,1022,1023,1024,1025,1023,1020,1022,1023,1022,1021,1021,1023,1023,1024,'moisture'),(1014.67,1014.67,1014.64,1014.99,1014.92,1014.65,1014.7,1014.64,1014.72,1014.74,1014.78,1014.77,1014.81,1014.66,1014.8,1014.76,1014.79,1014.72,1014.73,1014.81,1014.88,1014.82,1014.9,1014.96,1014.84,1014.93,1014.94,1014.92,1014.94,1014.69,14.76,1014.75,1014.78,1014.82,1014.88,1014.81,1014.76,1014.73,1014.64,1014.77,1014.7,1014.81,1014.78,1014.67,1014.64,1014.8,1014.74,1014.81,'pressure');

/*Table structure for table `urd` */

DROP TABLE IF EXISTS `urd`;

CREATE TABLE `urd` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `un` varchar(200) DEFAULT NULL,
  `cou` varchar(200) DEFAULT NULL,
  `sta` varchar(200) DEFAULT NULL,
  `dis` varchar(200) DEFAULT NULL,
  `aih` double DEFAULT NULL,
  `st` varchar(200) DEFAULT NULL,
  `se` varchar(200) DEFAULT NULL,
  `tr` double DEFAULT NULL,
  `du` double DEFAULT NULL,
  `mar` double DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `urd` */

insert  into `urd`(`id`,`un`,`cou`,`sta`,`dis`,`aih`,`st`,`se`,`tr`,`du`,`mar`) values (1,'moni','India','Tamil Nadu','The Nilgiris',5000,'Red Soil','winter',6000,200,60000);

/*Table structure for table `uu` */

DROP TABLE IF EXISTS `uu`;

CREATE TABLE `uu` (
  `name` varchar(200) DEFAULT NULL,
  `temp` double DEFAULT NULL,
  `hum` double DEFAULT NULL,
  `mois` double DEFAULT NULL,
  `press` double DEFAULT NULL,
  `soil` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `uu` */

insert  into `uu`(`name`,`temp`,`hum`,`mois`,`press`,`soil`) values ('moni',27,74,1021,1014,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
