-- MySQL dump 10.11
--
-- Host: localhost    Database: myafrica_db
-- ------------------------------------------------------
-- Server version	5.0.77

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `products` (
  `id` int(11) NOT NULL auto_increment,
  `pcode` int(11) default NULL,
  `name` varchar(30) default NULL,
  `ptype` varchar(50) default NULL,
  `pcost` int(11) default NULL,
  `pclimate` varchar(50) default NULL,
  `pdetails` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `state` (
  `id` int(11) NOT NULL auto_increment,
  `code` int(11) default NULL,
  `name` varchar(30) default NULL,
  `capital` varchar(50) default NULL,
  `url` varchar(50) default NULL,
  `currency` int(11) default NULL,
  `rate` int(11) default NULL,
  `population` int(11) default NULL,
  `flag` blob,
  `map` blob,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,256,'Uganda',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,243,'Zaire',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,249,'Sudan',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,234,'Nigeria',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,213,'Algeria',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,231,'Liberia',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,244,'Angola',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,242,'Botswana',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,242,'Mozambique',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,242,'Eritrea',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,242,'Somalia',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,242,'Kenya',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,242,'Madagascar',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,242,'South_Africa',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,266,'Lesotho',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,242,'Swaziland',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,242,'Namibia',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,242,'St._Helena',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,242,'Mali',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,212,'Morocco',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,222,'Mauritania',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,242,'Cape_Verde_Islands',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,221,'Senegal',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,224,'Guinea',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,242,'The_Gambia',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,242,'Sierra_Leone',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,242,'Ivory_Coast',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,242,'Ghana',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,242,'Congo',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,242,'Cameroon',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,242,'Central_African_Republic',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,242,'Rwanda',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,257,'Burundi',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,260,'Zambia',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,265,'Malawi',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,242,'Djibouti',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,242,'Benin',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,228,'Togo',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,242,'Burkina_Faso',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,242,'Sï¿½o_Tomï¿½_and_Prï¿½ncipe',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,242,'Equatorial_Guinea',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,262,'Reunion',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,230,'Mauritius',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,269,'Comoros',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,242,'Seychelles',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,216,'Tunisia',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,218,'Libya',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,242,'Gabon',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,27,'South Africa',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,242,'avnetwork',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,227,'Niger',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,235,'Chad',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,251,'Ethiopia',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,242,'Western_Sahara',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,255,'Tanzania',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,242,'community',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,20,'Egypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,242,'---_Click_Map_below_---',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,242,'Kenyayyy',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,242,'Algeriayy',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,242,'Algeriayyy',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,242,'Malie',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,242,'Malieee',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,242,'Malieeeee',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,242,'Chauu',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,242,'Algeriaiii',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,242,'Algeriaww',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,242,'Nigerii',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,242,'Algeriattt',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_id`
--

DROP TABLE IF EXISTS `state_id`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `state_id` (
  `ID` int(11) NOT NULL auto_increment,
  `name` varchar(20) default NULL,
  `picture` blob,
  `nflag` blob,
  `code` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `state_id`
--

LOCK TABLES `state_id` WRITE;
/*!40000 ALTER TABLE `state_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `state_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `email` varchar(50) default NULL,
  `country` varchar(50) default NULL,
  `age` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webuser`
--

DROP TABLE IF EXISTS `webuser`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `webuser` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `email` varchar(50) default NULL,
  `country` varchar(50) default NULL,
  `age` int(11) default NULL,
  `uname` varchar(30) default NULL,
  `pname` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1021 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `webuser`
--

LOCK TABLES `webuser` WRITE;
/*!40000 ALTER TABLE `webuser` DISABLE KEYS */;
INSERT INTO `webuser` VALUES (1001,'Kitara Lagony','klagony@dwere.net','Uganda',38,'klagony','7a913819256c63965fc05e634ef72032'),(1002,'Monica Lamunu','monica@dwere.net','Uganda',34,'mlamunu','7a913819256c63965fc05e634ef72032'),(1004,'Kilama Tom','kilama@dwere.net','Uganda',34,'ktom','7a913819256c63965fc05e634ef72032'),(1005,'Ayoo Milly','ayoom@gmail.com','Uganda',NULL,'ayoom','7a913819256c63965fc05e634ef72032'),(1003,'Gladys Lanyero Okot','klagony@dwere.net','Uganda',26,'ktom','7a913819256c63965fc05e634ef72032'),(1006,'Patrict Okot','pokot@dwere.net','Uganda',16,'pakitara','d41d8cd98f00b204e9800998ecf8427e'),(1007,'Charity Munene','munenec@gmail.com','Kenya',16,'cmunene','3e637a61954c3e6776b41d8b5eac1078'),(1008,'Stephen Okot','sokot@hotmail.com','Sudan',NULL,'sokot','c091118f96b47c8edf80d9492e8e03da'),(1009,'Andrew Ojok Lagony','alagony@gmail.com','Algeria',NULL,'tmboya@gmail.com','da14cca95fede304e67cb4eca1e8940e'),(1010,'Tom Mboya','tmboya@gmail.com','Nigeria',NULL,'tmboya@gmail.com','da14cca95fede304e67cb4eca1e8940e'),(1011,'Onen Billy','obilly@dwere.net','Zaire',NULL,'obilly@dwere.net','da14cca95fede304e67cb4eca1e8940e'),(1012,'Gladys Lanyero','kitara@dwere.com','Sudan',NULL,'glanyero','7a913819256c63965fc05e634ef72032'),(1013,'Patrick Okot Kitara','pkitara@gmail.com','Uganda',NULL,'pkitara','da14cca95fede304e67cb4eca1e8940e'),(1014,'Robert Wuelleh','rwuelleh@hotmail.com','Liberia',NULL,'rwuelleh','eb2c46ec7259825132def31be5b21857'),(1015,'Walter Onekalit','wonekalit@gmail.com','South Africa',NULL,'wonekalit','94cccea107f075f9a9711e55eb5bdb10'),(1016,'Komakech Owiny','kowiny@gmail.com','South Africa',NULL,'kowiny','da14cca95fede304e67cb4eca1e8940e'),(1017,'Vincence Kilama','vkilama@gmail.com','Uganda',NULL,'vkilama','e7319aa778f5e18d30515cbe576ee68a'),(1018,'Mohamed VI','MohamedVI@gmail.com','Morocco',NULL,'mohamedvi','b326523e1be440ce7ea3365f94adda01'),(1019,'George Odong','godongo@gmail.com','Sudan',NULL,'godongo','c091118f96b47c8edf80d9492e8e03da'),(1020,'Lule Mohamede','lmohamede@gmail.com','Angola',NULL,'lmohamede','da14cca95fede304e67cb4eca1e8940e');
/*!40000 ALTER TABLE `webuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world`
--

DROP TABLE IF EXISTS `world`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `world` (
  `id` int(11) NOT NULL auto_increment,
  `country` varchar(30) default NULL,
  `areacode` varchar(10) default NULL,
  `pnum` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `world`
--

LOCK TABLES `world` WRITE;
/*!40000 ALTER TABLE `world` DISABLE KEYS */;
INSERT INTO `world` VALUES (1,'Afghanistan ','93','0'),(2,'Albania ','355','0'),(3,'Algeria ','213','0'),(4,'American Samoa ','1','11'),(5,'Andorra ','376','0'),(6,'Angola ','244','0'),(7,'Anguilla ','1','11'),(8,'Antigua and Barbuda ','1','11'),(9,'Argentina ','54','0'),(10,'Armenia ','374','0'),(11,'Aruba ','297','0'),(12,'Ascension ','247','0'),(13,'Australia ','61','11'),(14,'Austria ','43','0'),(15,'Azerbaijan ','994','0'),(16,'Bahamas ','1','11'),(17,'Bahrain ','973','0'),(18,'Bangladesh ','880','0'),(19,'Barbados ','1','11'),(20,'Belarus ','375','8 Pause 10 * '),(21,'Belgium ','32','0'),(22,'Belize ','501','0'),(23,'Benin ','229','0'),(24,'Bermuda ','1','11'),(25,'Bhutan ','975','0'),(26,'Bolivia ','591','0'),(27,'Bosnia and Herzegovina ','387','0'),(28,'Botswana ','267','0'),(29,'Brazil ','55','0014 - '),(30,'Brunei ','673','0'),(31,'Bulgaria ','359','0'),(32,'Burkina Faso ','226','0'),(33,'Burundi ','257','0'),(34,'Cambodia ','855','\"001'),(35,'Cameroon ','237','0'),(36,'Canada ','1','11'),(37,'Cape Verde Island','238','0'),(38,'Cayman Islands ','1','11'),(39,'Central African Republic ','236','0'),(40,'Chad ','235','0'),(41,'Chile ','56','0'),(42,'China ','86','0'),(43,'Colombia ','57','00444 - Comcel'),(44,'Comoros ','269','0'),(45,'Congo ','242','0'),(46,'Cook Islands ','682','0'),(47,'Costa Rica ','506','0'),(48,'Croatia ','385','0'),(49,'Cuba ','53','119'),(50,'Cyprus ','357','0'),(51,'Czech Republic ','420','0'),(52,'Zaire','243','0'),(53,'Denmark ','45','0'),(54,'Diego Garcia ','246','0'),(55,'Djibouti ','253','0'),(56,'Dominican Republic ','1','11'),(57,'East Timor ','670','0'),(58,'Ecuador ','593','0'),(59,'Egypt ','20','0'),(60,'El Salvador ','503','0'),(61,'Equatorial Guinea ','240','0'),(62,'Eritrea ','291','0'),(63,'Estonia ','372','0'),(64,'Ethiopia ','251','0'),(65,'Falkland (Malvinas) Islands ','500','0'),(66,'Faroe Islands ','298','0'),(67,'Fiji ','679','0'),(68,'Finland ','358','\"00'),(69,'France ','33','0'),(70,'French Guiana ','594','0'),(71,'French Polynesia ','689','0'),(72,'Gabon ','241','0'),(73,'The Gambia','220','0'),(74,'Georgia ','995','8 Pause 10 * '),(75,'Germany ','49','0'),(76,'Ghana ','233','0'),(77,'Gibraltar ','350','0'),(78,'Greece ','30','0'),(79,'Greenland ','299','0'),(80,'Grenada ','1','11'),(81,'Guadeloupe ','590','0'),(82,'Guam ','1','11'),(83,'Guatemala ','502','0'),(84,'Guinea ','224','0'),(85,'Guinea-Bissau ','245','0'),(86,'Guyana ','592','1'),(87,'Haiti ','509','0'),(88,'Honduras ','504','0'),(89,'Hong Kong ','852','1'),(90,'Hungary ','36','0'),(91,'Iceland ','354','0'),(92,'India ','91','0'),(93,'Indonesia ','62','\"001'),(94,'Inmarsat Satellite ','870','0'),(95,'Iran ','98','0'),(96,'Iraq ','964','0'),(97,'Ireland ','353','0'),(98,'Israel ','972','0'),(99,'Italy ','39','0'),(100,'Ivory Coast ','225','0'),(101,'Jamaica ','1','11'),(102,'Japan ','81','10'),(103,'Jordan ','962','0'),(104,'Kazakhstan ','7','8 Pause 10 * '),(105,'Kenya ','254','0'),(106,'Kiribati ','686','0'),(107,'Kuwait ','965','0'),(108,'Kyrgyzstan ','996','0'),(109,'Laos ','856','0'),(110,'Latvia ','371','0'),(111,'Lebanon ','961','0'),(112,'Lesotho ','266','0'),(113,'Liberia ','231','0'),(114,'Libya ','218','0'),(115,'Liechtenstein ','423','0'),(116,'Lithuania ','370','0'),(117,'Luxembourg ','352','0'),(118,'Macau ','853','0'),(119,'Macedonia ','389','0'),(120,'Madagascar ','261','0'),(121,'Malawi ','265','0'),(122,'Malaysia ','60','0'),(123,'Maldives ','960','0'),(124,'Mali ','223','0'),(125,'Malta ','356','0'),(126,'Marshall Islands ','692','11'),(127,'Martinique ','596','0'),(128,'Mauritania ','222','0'),(129,'Mauritius ','230','0'),(130,'Mayotte ','262','0'),(131,'Mexico ','52','0'),(132,'Micronesia ','691','11'),(133,'Moldova ','373','0'),(134,'Monaco ','377','0'),(135,'Mongolia ','976','1'),(136,'Montenegro ','382','0'),(137,'Montserrat ','1','11'),(138,'Morocco ','212','0'),(139,'Mozambique ','258','0'),(140,'Myanmar ','95','0'),(141,'Namibia ','264','0'),(142,'Nauru ','674','0'),(143,'Nepal ','977','0'),(144,'Netherlands ','31','0'),(145,'New Caledonia ','687','0'),(146,'New Zealand ','64','0'),(147,'Nicaragua ','505','0'),(148,'Niger ','227','0'),(149,'Nigeria ','234','9'),(150,'Niue Island ','683','0'),(151,'North Korea ','850','99'),(152,'Northern Marianas ','1','11'),(153,'Norway ','47','0'),(154,'Oman ','968','0'),(155,'Pakistan ','92','0'),(156,'Palau ','680','11'),(157,'Panama ','507','0'),(158,'Papua New Guinea ','675','5'),(159,'Paraguay ','595','0'),(160,'Peru ','51','0'),(161,'Philippines ','63','0'),(162,'Poland ','48','0'),(163,'Portugal ','351','0'),(164,'Puerto Rico ','1','11'),(165,'Qatar ','974','0'),(166,'Reunion ','262','0'),(167,'Romania ','40','0'),(168,'Russian Federation ','7','8'),(169,'Pause 10 * ','8',''),(170,'Rwanda ','250','0'),(171,'St. Helena','290','0'),(172,'Saint Kitts and Nevis ','1','11'),(173,'Saint Lucia ','1','11'),(174,'Saint Pierre and Miquelon ','508','0'),(175,'Saint Vincent and the Grenadin','1','11'),(176,'Samoa ','685','0'),(177,'San Marino ','378','0'),(178,'Sao Tome and Principe ','239','0'),(179,'Saudi Arabia ','966','0'),(180,'Senegal ','221','0'),(181,'Serbia ','381','0'),(182,'Seychelles ','248','0'),(183,'Sierra Leone ','232','0'),(184,'Singapore ','65','\"001'),(185,'Slovakia ','421','0'),(186,'Slovenia ','386','0'),(187,'Solomon Islands ','677','0'),(188,'Somalia ','252','0'),(189,'South Africa ','27','0'),(190,'South Korea ','82','\"001'),(191,'Spain ','34','0'),(192,'Sri Lanka ','94','0'),(193,'Sudan ','249','0'),(194,'Suriname ','597','0'),(195,'Swaziland ','268','0'),(196,'Sweden ','46','0'),(197,'Switzerland ','41','0'),(198,'Syria ','963','0'),(199,'Taiwan ','886','2'),(200,'Tajikistan ','992','8 Pause 10 * '),(201,'Tanzania ','255','0'),(202,'Thailand ','66','1'),(203,'Thuraya Satellite ','882','0'),(204,'Togo ','228','0'),(205,'Tokelau ','690','0'),(206,'Tonga ','676','0'),(207,'Trinidad and Tobago ','1','11'),(208,'Tunisia ','216','0'),(209,'Turkey ','90','0'),(210,'Turkmenistan ','993','8 Pause 10 * '),(211,'Turks and Caicos Islands ','1','0'),(212,'Tuvalu ','688','0'),(213,'Uganda ','256','0'),(214,'Ukraine ','380','8 Pause 10 * '),(215,'United Arab Emirates ','971','0'),(216,'United Kingdom ','44','0'),(217,'United States of America ','1','11'),(218,'U.S. Virgin Islands ','1','11'),(219,'Uruguay ','598','0'),(220,'Uzbekistan ','998','8 Pause 10 * '),(221,'Vanuatu ','678','0'),(222,'Vatican City ','\"379',' 39 \"'),(223,'Venezuela ','58','0'),(224,'Vietnam ','84','0'),(225,'Wallis and Futuna ','681','0'),(226,'Yemen ','967','0'),(227,'Zambia ','260','0'),(228,'Zimbabwe ','263','0');
/*!40000 ALTER TABLE `world` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-10-07  9:13:01
