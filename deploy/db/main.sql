-- MySQL dump 10.13  Distrib 5.1.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ushahidi
-- ------------------------------------------------------
-- Server version	5.1.37-1ubuntu5.4

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
-- Table structure for table `alert`
--

DROP TABLE IF EXISTS `alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alert` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `alert_type` tinyint(4) NOT NULL COMMENT '1 - MOBILE, 2 - EMAIL',
  `alert_recipient` varchar(200) DEFAULT NULL,
  `alert_code` varchar(30) DEFAULT NULL,
  `alert_confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `alert_lat` varchar(150) DEFAULT NULL,
  `alert_lon` varchar(150) DEFAULT NULL,
  `alert_radius` tinyint(4) NOT NULL DEFAULT '20',
  `alert_ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_alert_code` (`alert_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alert`
--

LOCK TABLES `alert` WRITE;
/*!40000 ALTER TABLE `alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alert_sent`
--

DROP TABLE IF EXISTS `alert_sent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alert_sent` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `incident_id` bigint(20) NOT NULL,
  `alert_id` bigint(20) NOT NULL,
  `alert_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alert_sent`
--

LOCK TABLES `alert_sent` WRITE;
/*!40000 ALTER TABLE `alert_sent` DISABLE KEYS */;
/*!40000 ALTER TABLE `alert_sent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_banned`
--

DROP TABLE IF EXISTS `api_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_banned` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `banned_ipaddress` varchar(50) NOT NULL,
  `banned_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='For logging banned API IP addresses';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_banned`
--

LOCK TABLES `api_banned` WRITE;
/*!40000 ALTER TABLE `api_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_log`
--

DROP TABLE IF EXISTS `api_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_task` varchar(10) NOT NULL,
  `api_parameters` varchar(50) NOT NULL,
  `api_records` tinyint(11) NOT NULL,
  `api_ipaddress` varchar(50) NOT NULL,
  `api_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='For logging API activities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_log`
--

LOCK TABLES `api_log` WRITE;
/*!40000 ALTER TABLE `api_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(10) NOT NULL DEFAULT 'en_US',
  `category_type` tinyint(4) DEFAULT NULL,
  `category_title` varchar(255) DEFAULT NULL,
  `category_description` text,
  `category_color` varchar(20) DEFAULT NULL,
  `category_image` varchar(100) DEFAULT NULL,
  `category_image_shadow` varchar(100) DEFAULT NULL,
  `category_visible` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `category_visible` (`category_visible`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (4,0,'en_US',5,'Яма','Яма в дорожном покрытии','CC0000',NULL,NULL,1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_lang`
--

DROP TABLE IF EXISTS `category_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_lang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `category_title` varchar(255) DEFAULT NULL,
  `category_description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_lang`
--

LOCK TABLES `category_lang` WRITE;
/*!40000 ALTER TABLE `category_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `city_lat` varchar(150) DEFAULT NULL,
  `city_lon` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cluster`
--

DROP TABLE IF EXISTS `cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cluster` (
  `id` int(11) NOT NULL,
  `location_id` bigint(20) NOT NULL DEFAULT '0',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `latitude_min` double NOT NULL,
  `longitude_min` double NOT NULL,
  `latitude_max` double NOT NULL,
  `longitude_max` double NOT NULL,
  `child_count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `left_side` int(11) NOT NULL,
  `right_side` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `incident_id` bigint(20) NOT NULL DEFAULT '0',
  `incident_title` varchar(255) DEFAULT NULL,
  `incident_date` int(10) NOT NULL DEFAULT '0',
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `category_color` varchar(20) NOT NULL DEFAULT '990000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cluster`
--

LOCK TABLES `cluster` WRITE;
/*!40000 ALTER TABLE `cluster` DISABLE KEYS */;
/*!40000 ALTER TABLE `cluster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `incident_id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `comment_author` varchar(100) DEFAULT NULL,
  `comment_email` varchar(120) DEFAULT NULL,
  `comment_description` text,
  `comment_ip` varchar(100) DEFAULT NULL,
  `comment_rating` varchar(15) NOT NULL DEFAULT '0',
  `comment_spam` tinyint(4) NOT NULL DEFAULT '0',
  `comment_active` tinyint(4) NOT NULL DEFAULT '0',
  `comment_date` datetime DEFAULT NULL,
  `comment_date_gmt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` varchar(10) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `capital` varchar(100) DEFAULT NULL,
  `cities` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'AD','Andorra','Andorra la Vella',0),(2,'AE','United Arab Emirates','Abu Dhabi',0),(3,'AF','Afghanistan','Kabul',0),(4,'AG','Antigua and Barbuda','St. John\'s',0),(5,'AI','Anguilla','The Valley',0),(6,'AL','Albania','Tirana',0),(7,'AM','Armenia','Yerevan',0),(8,'AN','Netherlands Antilles','Willemstad',0),(9,'AO','Angola','Luanda',0),(10,'AQ','Antarctica','',0),(11,'AR','Argentina','Buenos Aires',0),(12,'AS','American Samoa','Pago Pago',0),(13,'AT','Austria','Vienna',0),(14,'AU','Australia','Canberra',0),(15,'AW','Aruba','Oranjestad',0),(16,'AX','Aland Islands','Mariehamn',0),(17,'AZ','Azerbaijan','Baku',0),(18,'BA','Bosnia and Herzegovina','Sarajevo',0),(19,'BB','Barbados','Bridgetown',0),(20,'BD','Bangladesh','Dhaka',0),(21,'BE','Belgium','Brussels',0),(22,'BF','Burkina Faso','Ouagadougou',0),(23,'BG','Bulgaria','Sofia',0),(24,'BH','Bahrain','Manama',0),(25,'BI','Burundi','Bujumbura',0),(26,'BJ','Benin','Porto-Novo',0),(27,'BL','Saint BarthÃ©lemy','Gustavia',0),(28,'BM','Bermuda','Hamilton',0),(29,'BN','Brunei','Bandar Seri Begawan',0),(30,'BO','Bolivia','La Paz',0),(31,'BR','Brazil','BrasÃ­lia',0),(32,'BS','Bahamas','Nassau',0),(33,'BT','Bhutan','Thimphu',0),(34,'BV','Bouvet Island','',0),(35,'BW','Botswana','Gaborone',0),(36,'BY','Belarus','Minsk',0),(37,'BZ','Belize','Belmopan',0),(38,'CA','Canada','Ottawa',0),(39,'CC','Cocos Islands','West Island',0),(40,'CD','Democratic Republic of the Congo','Kinshasa',0),(41,'CF','Central African Republic','Bangui',0),(42,'CG','Congo Brazzavile','Brazzaville',0),(43,'CH','Switzerland','Berne',0),(44,'CI','Ivory Coast','Yamoussoukro',0),(45,'CK','Cook Islands','Avarua',0),(46,'CL','Chile','Santiago',0),(47,'CM','Cameroon','YaoundÃ©',0),(48,'CN','China','Beijing',0),(49,'CO','Colombia','BogotÃ¡',0),(50,'CR','Costa Rica','San JosÃ©',0),(51,'CS','Serbia and Montenegro','Belgrade',0),(52,'CU','Cuba','Havana',0),(53,'CV','Cape Verde','Praia',0),(54,'CX','Christmas Island','Flying Fish Cove',0),(55,'CY','Cyprus','Nicosia',0),(56,'CZ','Czech Republic','Prague',0),(57,'DE','Germany','Berlin',0),(58,'DJ','Djibouti','Djibouti',0),(59,'DK','Denmark','Copenhagen',0),(60,'DM','Dominica','Roseau',0),(61,'DO','Dominican Republic','Santo Domingo',0),(62,'DZ','Algeria','Algiers',0),(63,'EC','Ecuador','Quito',0),(64,'EE','Estonia','Tallinn',0),(65,'EG','Egypt','Cairo',0),(66,'EH','Western Sahara','El-Aaiun',0),(67,'ER','Eritrea','Asmara',0),(68,'ES','Spain','Madrid',0),(69,'ET','Ethiopia','Addis Ababa',0),(70,'FI','Finland','Helsinki',0),(71,'FJ','Fiji','Suva',0),(72,'FK','Falkland Islands','Stanley',0),(73,'FM','Micronesia','Palikir',0),(74,'FO','Faroe Islands','TÃ³rshavn',0),(75,'FR','France','Paris',0),(76,'GA','Gabon','Libreville',0),(77,'GB','United Kingdom','London',0),(78,'GD','Grenada','St. George\'s',0),(79,'GE','Georgia','Tbilisi',0),(80,'GF','French Guiana','Cayenne',0),(81,'GG','Guernsey','St Peter Port',0),(82,'GH','Ghana','Accra',0),(83,'GI','Gibraltar','Gibraltar',0),(84,'GL','Greenland','Nuuk',0),(85,'GM','Gambia','Banjul',0),(86,'GN','Guinea','Conakry',0),(87,'GP','Guadeloupe','Basse-Terre',0),(88,'GQ','Equatorial Guinea','Malabo',0),(89,'GR','Greece','Athens',0),(90,'GS','South Georgia and the South Sandwich Islands','Grytviken',0),(91,'GT','Guatemala','Guatemala City',0),(92,'GU','Guam','HagÃ¥tÃ±a',0),(93,'GW','Guinea-Bissau','Bissau',0),(94,'GY','Guyana','Georgetown',0),(95,'HK','Hong Kong','Hong Kong',0),(96,'HM','Heard Island and McDonald Islands','',0),(97,'HN','Honduras','Tegucigalpa',0),(98,'HR','Croatia','Zagreb',0),(99,'HT','Haiti','Port-au-Prince',0),(100,'HU','Hungary','Budapest',0),(101,'ID','Indonesia','Jakarta',0),(102,'IE','Ireland','Dublin',0),(103,'IL','Israel','Jerusalem',0),(104,'IM','Isle of Man','Douglas, Isle of Man',0),(105,'IN','India','New Delhi',0),(106,'IO','British Indian Ocean Territory','Diego Garcia',0),(107,'IQ','Iraq','Baghdad',0),(108,'IR','Iran','Tehran',0),(109,'IS','Iceland','ReykjavÃ­k',0),(110,'IT','Italy','Rome',0),(111,'JE','Jersey','Saint Helier',0),(112,'JM','Jamaica','Kingston',0),(113,'JO','Jordan','Amman',0),(114,'JP','Japan','Tokyo',0),(115,'KE','Kenya','Nairobi',0),(116,'KG','Kyrgyzstan','Bishkek',0),(117,'KH','Cambodia','Phnom Penh',0),(118,'KI','Kiribati','South Tarawa',0),(119,'KM','Comoros','Moroni',0),(120,'KN','Saint Kitts and Nevis','Basseterre',0),(121,'KP','North Korea','Pyongyang',0),(122,'KR','South Korea','Seoul',0),(123,'KW','Kuwait','Kuwait City',0),(124,'KY','Cayman Islands','George Town',0),(125,'KZ','Kazakhstan','Astana',0),(126,'LA','Laos','Vientiane',0),(127,'LB','Lebanon','Beirut',0),(128,'LC','Saint Lucia','Castries',0),(129,'LI','Liechtenstein','Vaduz',0),(130,'LK','Sri Lanka','Colombo',0),(131,'LR','Liberia','Monrovia',0),(132,'LS','Lesotho','Maseru',0),(133,'LT','Lithuania','Vilnius',0),(134,'LU','Luxembourg','Luxembourg',0),(135,'LV','Latvia','Riga',0),(136,'LY','Libya','Tripolis',0),(137,'MA','Morocco','Rabat',0),(138,'MC','Monaco','Monaco',0),(139,'MD','Moldova','Chi_in_u',0),(140,'ME','Montenegro','Podgorica',0),(141,'MF','Saint Martin','Marigot',0),(142,'MG','Madagascar','Antananarivo',0),(143,'MH','Marshall Islands','Uliga',0),(144,'MK','Macedonia','Skopje',0),(145,'ML','Mali','Bamako',0),(146,'MM','Myanmar','Yangon',0),(147,'MN','Mongolia','Ulan Bator',0),(148,'MO','Macao','Macao',0),(149,'MP','Northern Mariana Islands','Saipan',0),(150,'MQ','Martinique','Fort-de-France',0),(151,'MR','Mauritania','Nouakchott',0),(152,'MS','Montserrat','Plymouth',0),(153,'MT','Malta','Valletta',0),(154,'MU','Mauritius','Port Louis',0),(155,'MV','Maldives','MalÃ©',0),(156,'MW','Malawi','Lilongwe',0),(157,'MX','Mexico','Mexico City',0),(158,'MY','Malaysia','Kuala Lumpur',0),(159,'MZ','Mozambique','Maputo',0),(160,'NA','Namibia','Windhoek',0),(161,'NC','New Caledonia','NoumÃ©a',0),(162,'NE','Niger','Niamey',0),(163,'NF','Norfolk Island','Kingston',0),(164,'NG','Nigeria','Abuja',0),(165,'NI','Nicaragua','Managua',0),(166,'NL','Netherlands','Amsterdam',0),(167,'NO','Norway','Oslo',0),(168,'NP','Nepal','Kathmandu',0),(169,'NR','Nauru','Yaren',0),(170,'NU','Niue','Alofi',0),(171,'NZ','New Zealand','Wellington',0),(172,'OM','Oman','Muscat',0),(173,'PA','Panama','Panama City',0),(174,'PE','Peru','Lima',0),(175,'PF','French Polynesia','Papeete',0),(176,'PG','Papua New Guinea','Port Moresby',0),(177,'PH','Philippines','Manila',0),(178,'PK','Pakistan','Islamabad',0),(179,'PL','Poland','Warsaw',0),(180,'PM','Saint Pierre and Miquelon','Saint-Pierre',0),(181,'PN','Pitcairn','Adamstown',0),(182,'PR','Puerto Rico','San Juan',0),(183,'PS','Palestinian Territory','East Jerusalem',0),(184,'PT','Portugal','Lisbon',0),(185,'PW','Palau','Koror',0),(186,'PY','Paraguay','AsunciÃ³n',0),(187,'QA','Qatar','Doha',0),(188,'RE','Reunion','Saint-Denis',0),(189,'RO','Romania','Bucharest',0),(190,'RS','Serbia','Belgrade',0),(191,'RU','Russia','Moscow',0),(192,'RW','Rwanda','Kigali',0),(193,'SA','Saudi Arabia','Riyadh',0),(194,'SB','Solomon Islands','Honiara',0),(195,'SC','Seychelles','Victoria',0),(196,'SD','Sudan','Khartoum',0),(197,'SE','Sweden','Stockholm',0),(198,'SG','Singapore','Singapur',0),(199,'SH','Saint Helena','Jamestown',0),(200,'SI','Slovenia','Ljubljana',0),(201,'SJ','Svalbard and Jan Mayen','Longyearbyen',0),(202,'SK','Slovakia','Bratislava',0),(203,'SL','Sierra Leone','Freetown',0),(204,'SM','San Marino','San Marino',0),(205,'SN','Senegal','Dakar',0),(206,'SO','Somalia','Mogadishu',0),(207,'SR','Suriname','Paramaribo',0),(208,'ST','Sao Tome and Principe','SÃ£o TomÃ©',0),(209,'SV','El Salvador','San Salvador',0),(210,'SY','Syria','Damascus',0),(211,'SZ','Swaziland','Mbabane',0),(212,'TC','Turks and Caicos Islands','Cockburn Town',0),(213,'TD','Chad','N\'Djamena',0),(214,'TF','French Southern Territories','Martin-de-ViviÃ¨s',0),(215,'TG','Togo','LomÃ©',0),(216,'TH','Thailand','Bangkok',0),(217,'TJ','Tajikistan','Dushanbe',0),(218,'TK','Tokelau','',0),(219,'TL','East Timor','Dili',0),(220,'TM','Turkmenistan','Ashgabat',0),(221,'TN','Tunisia','Tunis',0),(222,'TO','Tonga','Nuku\'alofa',0),(223,'TR','Turkey','Ankara',0),(224,'TT','Trinidad and Tobago','Port of Spain',0),(225,'TV','Tuvalu','Vaiaku',0),(226,'TW','Taiwan','Taipei',0),(227,'TZ','Tanzania','Dar es Salaam',0),(228,'UA','Ukraine','Kiev',0),(229,'UG','Uganda','Kampala',0),(230,'UM','United States Minor Outlying Islands','',0),(231,'US','United States','Washington',0),(232,'UY','Uruguay','Montevideo',0),(233,'UZ','Uzbekistan','Tashkent',0),(234,'VA','Vatican','Vatican City',0),(235,'VC','Saint Vincent and the Grenadines','Kingstown',0),(236,'VE','Venezuela','Caracas',0),(237,'VG','British Virgin Islands','Road Town',0),(238,'VI','U.S. Virgin Islands','Charlotte Amalie',0),(239,'VN','Vietnam','Hanoi',0),(240,'VU','Vanuatu','Port Vila',0),(241,'WF','Wallis and Futuna','MatÃ¢\'Utu',0),(242,'WS','Samoa','Apia',0),(243,'YE','Yemen','Sanâ€˜aâ€™',0),(244,'YT','Mayotte','Mamoudzou',0),(245,'ZA','South Africa','Pretoria',0),(246,'ZM','Zambia','Lusaka',0),(247,'ZW','Zimbabwe','Harare',0);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed`
--

DROP TABLE IF EXISTS `feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `feed_name` varchar(255) DEFAULT NULL,
  `feed_url` varchar(255) DEFAULT NULL,
  `feed_cache` text,
  `feed_active` tinyint(4) DEFAULT '1',
  `feed_update` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed`
--

LOCK TABLES `feed` WRITE;
/*!40000 ALTER TABLE `feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_item`
--

DROP TABLE IF EXISTS `feed_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `feed_id` int(11) NOT NULL,
  `location_id` bigint(20) DEFAULT '0',
  `incident_id` int(11) NOT NULL DEFAULT '0',
  `item_title` varchar(255) DEFAULT NULL,
  `item_description` text,
  `item_link` varchar(255) DEFAULT NULL,
  `item_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_item`
--

LOCK TABLES `feed_item` WRITE;
/*!40000 ALTER TABLE `feed_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `feed_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `feedback_mesg` text NOT NULL,
  `feedback_status` tinyint(3) NOT NULL,
  `feedback_dateadd` datetime DEFAULT NULL,
  `feedback_datemodify` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_person`
--

DROP TABLE IF EXISTS `feedback_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_person` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `feedback_id` tinyint(11) NOT NULL,
  `person_email` varchar(30) NOT NULL,
  `person_date` datetime DEFAULT NULL,
  `person_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_person`
--

LOCK TABLES `feedback_person` WRITE;
/*!40000 ALTER TABLE `feedback_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form`
--

DROP TABLE IF EXISTS `form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_title` varchar(200) NOT NULL,
  `form_description` text,
  `form_active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form`
--

LOCK TABLES `form` WRITE;
/*!40000 ALTER TABLE `form` DISABLE KEYS */;
INSERT INTO `form` VALUES (1,'Default Form','Default form, for report entry',1);
/*!40000 ALTER TABLE `form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_field`
--

DROP TABLE IF EXISTS `form_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL DEFAULT '0',
  `field_name` varchar(200) DEFAULT NULL,
  `field_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - TEXTFIELD, 2 - TEXTAREA (FREETEXT), 3 - DATE, 4 - PASSWORD, 5 - RADIO, 6 - CHECKBOX',
  `field_required` tinyint(4) DEFAULT '0',
  `field_options` text,
  `field_position` tinyint(4) NOT NULL DEFAULT '0',
  `field_default` varchar(200) DEFAULT NULL,
  `field_maxlength` int(11) NOT NULL DEFAULT '0',
  `field_width` smallint(6) NOT NULL DEFAULT '0',
  `field_height` tinyint(4) DEFAULT '5',
  `field_isdate` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_form_id` (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_field`
--

LOCK TABLES `form_field` WRITE;
/*!40000 ALTER TABLE `form_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_response`
--

DROP TABLE IF EXISTS `form_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_response` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_field_id` int(11) NOT NULL,
  `incident_id` bigint(20) NOT NULL,
  `form_response` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_form_field_id` (`form_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_response`
--

LOCK TABLES `form_response` WRITE;
/*!40000 ALTER TABLE `form_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idp`
--

DROP TABLE IF EXISTS `idp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idp` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `incident_id` bigint(20) NOT NULL,
  `verified_id` bigint(20) DEFAULT NULL,
  `idp_idnumber` varchar(100) DEFAULT NULL,
  `idp_orig_idnumber` varchar(100) DEFAULT NULL,
  `idp_fname` varchar(50) DEFAULT NULL,
  `idp_lname` varchar(50) DEFAULT NULL,
  `idp_email` varchar(100) DEFAULT NULL,
  `idp_phone` varchar(50) DEFAULT NULL,
  `current_location_id` bigint(20) DEFAULT NULL,
  `displacedfrom_location_id` bigint(20) DEFAULT NULL,
  `movedto_location_id` bigint(20) DEFAULT NULL,
  `idp_move_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idp`
--

LOCK TABLES `idp` WRITE;
/*!40000 ALTER TABLE `idp` DISABLE KEYS */;
/*!40000 ALTER TABLE `idp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident`
--

DROP TABLE IF EXISTS `incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incident` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) NOT NULL,
  `form_id` int(11) NOT NULL DEFAULT '1',
  `locale` varchar(10) NOT NULL DEFAULT 'en_US',
  `user_id` bigint(20) DEFAULT NULL,
  `incident_title` varchar(255) DEFAULT NULL,
  `incident_description` longtext,
  `incident_date` datetime DEFAULT NULL,
  `incident_mode` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - WEB, 2 - SMS, 3 - EMAIL, 4 - TWITTER',
  `incident_active` tinyint(4) NOT NULL DEFAULT '0',
  `incident_verified` tinyint(4) NOT NULL DEFAULT '0',
  `incident_source` varchar(5) DEFAULT NULL,
  `incident_information` varchar(5) DEFAULT NULL,
  `incident_rating` varchar(15) NOT NULL DEFAULT '0',
  `incident_dateadd` datetime DEFAULT NULL,
  `incident_dateadd_gmt` datetime DEFAULT NULL,
  `incident_datemodify` datetime DEFAULT NULL,
  `incident_alert_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - Not Tagged for Sending, 1 - Tagged for Sending, 2 - Alerts Have Been Sent',
  PRIMARY KEY (`id`),
  UNIQUE KEY `location_id` (`location_id`),
  KEY `incident_active` (`incident_active`),
  KEY `incident_date` (`incident_date`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident`
--

LOCK TABLES `incident` WRITE;
/*!40000 ALTER TABLE `incident` DISABLE KEYS */;
INSERT INTO `incident` VALUES (1,1,1,'en_US',1,'Hello Ushahidi!','Welcome to Ushahidi. Please replace this report with a valid incident','2010-09-09 18:09:48',1,1,1,'0','2010-','0',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident_category`
--

DROP TABLE IF EXISTS `incident_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incident_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `incident_id` bigint(20) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `incident_category_ids` (`incident_id`,`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_category`
--

LOCK TABLES `incident_category` WRITE;
/*!40000 ALTER TABLE `incident_category` DISABLE KEYS */;
INSERT INTO `incident_category` VALUES (1,1,7);
/*!40000 ALTER TABLE `incident_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident_lang`
--

DROP TABLE IF EXISTS `incident_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incident_lang` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `incident_id` bigint(20) NOT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `incident_title` varchar(255) DEFAULT NULL,
  `incident_description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_lang`
--

LOCK TABLES `incident_lang` WRITE;
/*!40000 ALTER TABLE `incident_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `incident_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident_person`
--

DROP TABLE IF EXISTS `incident_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incident_person` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `incident_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `person_first` varchar(200) DEFAULT NULL,
  `person_last` varchar(200) DEFAULT NULL,
  `person_email` varchar(120) DEFAULT NULL,
  `person_phone` varchar(60) DEFAULT NULL,
  `person_ip` varchar(50) DEFAULT NULL,
  `person_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_person`
--

LOCK TABLES `incident_person` WRITE;
/*!40000 ALTER TABLE `incident_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `incident_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laconica`
--

DROP TABLE IF EXISTS `laconica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laconica` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `incident_id` int(11) DEFAULT '0',
  `laconica_mesg_from` varchar(100) DEFAULT NULL,
  `laconica_mesg_to` varchar(100) DEFAULT NULL,
  `laconica_mesg_link` varchar(100) DEFAULT NULL,
  `laconica_mesg` varchar(255) DEFAULT NULL,
  `laconica_mesg_type` tinyint(4) DEFAULT '1' COMMENT '1 - INBOX, 2 - OUTBOX (From Admin)',
  `laconica_mesg_date` datetime DEFAULT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laconica`
--

LOCK TABLES `laconica` WRITE;
/*!40000 ALTER TABLE `laconica` DISABLE KEYS */;
/*!40000 ALTER TABLE `laconica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layer`
--

DROP TABLE IF EXISTS `layer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layer_name` varchar(255) DEFAULT NULL,
  `layer_url` varchar(255) DEFAULT NULL,
  `layer_file` varchar(100) DEFAULT NULL,
  `layer_color` varchar(20) DEFAULT NULL,
  `layer_visible` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layer`
--

LOCK TABLES `layer` WRITE;
/*!40000 ALTER TABLE `layer` DISABLE KEYS */;
/*!40000 ALTER TABLE `layer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `level_title` varchar(200) DEFAULT NULL,
  `level_description` varchar(200) DEFAULT NULL,
  `level_weight` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level`
--

LOCK TABLES `level` WRITE;
/*!40000 ALTER TABLE `level` DISABLE KEYS */;
INSERT INTO `level` VALUES (1,'SPAM + Delete','SPAM + Delete',-2),(2,'SPAM','SPAM',-1),(3,'Untrusted','Untrusted',0),(4,'Trusted','Trusted',1),(5,'Trusted + Verifiy','Trusted + Verify',2);
/*!40000 ALTER TABLE `level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `location_visible` tinyint(4) NOT NULL DEFAULT '1',
  `location_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Nairobi',NULL,-1.28730007070501,36.8214511820082,1,'2009-06-30 00:00:00');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) DEFAULT NULL,
  `incident_id` bigint(20) DEFAULT NULL,
  `media_type` tinyint(4) DEFAULT NULL COMMENT '1 - IMAGES, 2 - VIDEO, 3 - AUDIO, 4 - NEWS, 5 - PODCAST',
  `media_title` varchar(255) DEFAULT NULL,
  `media_description` longtext,
  `media_link` varchar(255) DEFAULT NULL,
  `media_thumb` varchar(255) DEFAULT NULL,
  `media_date` datetime DEFAULT NULL,
  `media_active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT '0',
  `incident_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `reporter_id` bigint(20) DEFAULT NULL,
  `service_messageid` varchar(100) DEFAULT NULL,
  `message_from` varchar(100) DEFAULT NULL,
  `message_to` varchar(100) DEFAULT NULL,
  `message` text,
  `message_detail` text,
  `message_type` tinyint(4) DEFAULT '1' COMMENT '1 - INBOX, 2 - OUTBOX (From Admin)',
  `message_date` datetime DEFAULT NULL,
  `message_level` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhi_category`
--

DROP TABLE IF EXISTS `mhi_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhi_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `category_title` varchar(100) NOT NULL,
  `category_active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhi_category`
--

LOCK TABLES `mhi_category` WRITE;
/*!40000 ALTER TABLE `mhi_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mhi_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhi_log`
--

DROP TABLE IF EXISTS `mhi_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhi_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `ip` int(10) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhi_log`
--

LOCK TABLES `mhi_log` WRITE;
/*!40000 ALTER TABLE `mhi_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mhi_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhi_site`
--

DROP TABLE IF EXISTS `mhi_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhi_site` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `site_domain` varchar(32) NOT NULL,
  `site_privacy` tinyint(4) NOT NULL DEFAULT '0',
  `site_active` tinyint(4) DEFAULT '1',
  `site_dateadd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhi_site`
--

LOCK TABLES `mhi_site` WRITE;
/*!40000 ALTER TABLE `mhi_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `mhi_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhi_site_category`
--

DROP TABLE IF EXISTS `mhi_site_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhi_site_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(11) unsigned NOT NULL,
  `category_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhi_site_category`
--

LOCK TABLES `mhi_site_category` WRITE;
/*!40000 ALTER TABLE `mhi_site_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mhi_site_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhi_site_database`
--

DROP TABLE IF EXISTS `mhi_site_database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhi_site_database` (
  `mhi_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `host` varchar(100) NOT NULL,
  `port` smallint(6) NOT NULL,
  `database` varchar(30) NOT NULL,
  PRIMARY KEY (`mhi_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table holds DB credentials for MHI instances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhi_site_database`
--

LOCK TABLES `mhi_site_database` WRITE;
/*!40000 ALTER TABLE `mhi_site_database` DISABLE KEYS */;
/*!40000 ALTER TABLE `mhi_site_database` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhi_users`
--

DROP TABLE IF EXISTS `mhi_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mhi_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhi_users`
--

LOCK TABLES `mhi_users` WRITE;
/*!40000 ALTER TABLE `mhi_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mhi_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `organization_name` varchar(255) DEFAULT NULL,
  `organization_description` longtext,
  `organization_website` varchar(255) DEFAULT NULL,
  `organization_email` varchar(120) DEFAULT NULL,
  `organization_phone1` varchar(50) DEFAULT NULL,
  `organization_phone2` varchar(50) DEFAULT NULL,
  `organization_address` varchar(255) DEFAULT NULL,
  `organization_country` varchar(100) DEFAULT NULL,
  `organization_active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_incident`
--

DROP TABLE IF EXISTS `organization_incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_incident` (
  `organization_id` bigint(20) DEFAULT NULL,
  `incident_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_incident`
--

LOCK TABLES `organization_incident` WRITE;
/*!40000 ALTER TABLE `organization_incident` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization_incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) NOT NULL,
  `page_description` longtext,
  `page_tab` varchar(100) NOT NULL,
  `page_active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (1,'About Us','<p>This is the default about us page.</p>','About Us',1);
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_users`
--

DROP TABLE IF EXISTS `pending_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pending_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `email` varchar(127) NOT NULL,
  `username` varchar(31) NOT NULL DEFAULT '',
  `password` char(50) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_users`
--

LOCK TABLES `pending_users` WRITE;
/*!40000 ALTER TABLE `pending_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `incident_id` bigint(20) DEFAULT NULL,
  `comment_id` bigint(20) DEFAULT NULL,
  `rating` tinyint(4) DEFAULT '0',
  `rating_ip` varchar(100) DEFAULT NULL,
  `rating_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporter`
--

DROP TABLE IF EXISTS `reporter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporter` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `incident_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `service_userid` varchar(255) DEFAULT NULL,
  `service_account` varchar(255) DEFAULT NULL,
  `reporter_first` varchar(200) DEFAULT NULL,
  `reporter_last` varchar(200) DEFAULT NULL,
  `reporter_email` varchar(120) DEFAULT NULL,
  `reporter_phone` varchar(60) DEFAULT NULL,
  `reporter_ip` varchar(50) DEFAULT NULL,
  `reporter_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporter`
--

LOCK TABLES `reporter` WRITE;
/*!40000 ALTER TABLE `reporter` DISABLE KEYS */;
/*!40000 ALTER TABLE `reporter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'login','Login privileges, granted after account confirmation'),(2,'admin','Administrative user, has access to almost everything.'),(3,'superadmin','Super administrative user, has access to everything.');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `user_id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_role_id` (`role_id`),
  CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (1,1),(1,2),(1,3);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler`
--

DROP TABLE IF EXISTS `scheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduler` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scheduler_name` varchar(100) NOT NULL,
  `scheduler_last` int(10) unsigned NOT NULL DEFAULT '0',
  `scheduler_weekday` smallint(6) NOT NULL DEFAULT '-1',
  `scheduler_day` smallint(6) NOT NULL DEFAULT '-1',
  `scheduler_hour` smallint(6) NOT NULL DEFAULT '-1',
  `scheduler_minute` smallint(6) NOT NULL,
  `scheduler_controller` varchar(100) NOT NULL,
  `scheduler_active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler`
--

LOCK TABLES `scheduler` WRITE;
/*!40000 ALTER TABLE `scheduler` DISABLE KEYS */;
INSERT INTO `scheduler` VALUES (1,'Feeds',1284499651,-1,-1,-1,0,'s_feeds',1),(2,'Alerts',1284501039,-1,-1,-1,-1,'s_alerts',1),(3,'Email',1284499652,-1,-1,-1,0,'s_email',1),(4,'Twitter',1284499652,-1,-1,-1,0,'s_twitter',1),(5,'Sharing',1284499652,-1,-1,-1,0,'s_sharing',1);
/*!40000 ALTER TABLE `scheduler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler_log`
--

DROP TABLE IF EXISTS `scheduler_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduler_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scheduler_id` int(11) NOT NULL,
  `scheduler_name` varchar(100) NOT NULL,
  `scheduler_status` varchar(20) DEFAULT NULL,
  `scheduler_date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_log`
--

LOCK TABLES `scheduler_log` WRITE;
/*!40000 ALTER TABLE `scheduler_log` DISABLE KEYS */;
INSERT INTO `scheduler_log` VALUES (1,1,'Feeds','200',1284376677),(2,2,'Alerts','200',1284376677),(3,3,'Email','200',1284376677),(4,4,'Twitter','200',1284376677),(5,5,'Sharing','200',1284376677),(6,1,'Feeds','200',1284499651),(7,2,'Alerts','200',1284499651),(8,3,'Email','200',1284499652),(9,4,'Twitter','200',1284499652),(10,5,'Sharing','200',1284499652),(11,2,'Alerts','200',1284499789),(12,2,'Alerts','200',1284500866),(13,2,'Alerts','200',1284500966),(14,2,'Alerts','200',1284501039);
/*!40000 ALTER TABLE `scheduler_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_name` varchar(100) DEFAULT NULL,
  `service_description` varchar(255) DEFAULT NULL,
  `service_url` varchar(255) DEFAULT NULL,
  `service_api` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'SMS','Text messages from phones',NULL,NULL),(2,'Email','Text messages from phones',NULL,NULL),(3,'Twitter','Tweets tweets tweets','http://twitter.com',NULL),(4,'Laconica','Tweets tweets tweets',NULL,NULL);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` varchar(40) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) DEFAULT NULL,
  `site_tagline` varchar(255) DEFAULT NULL,
  `site_email` varchar(120) DEFAULT NULL,
  `site_key` varchar(100) DEFAULT NULL,
  `site_language` varchar(10) NOT NULL DEFAULT 'en_US',
  `site_style` varchar(50) NOT NULL DEFAULT 'default',
  `site_timezone` varchar(80) DEFAULT NULL,
  `site_contact_page` tinyint(4) NOT NULL DEFAULT '1',
  `site_help_page` tinyint(4) NOT NULL DEFAULT '1',
  `allow_reports` tinyint(4) NOT NULL DEFAULT '1',
  `allow_comments` tinyint(4) NOT NULL DEFAULT '1',
  `allow_feed` tinyint(4) NOT NULL DEFAULT '1',
  `allow_stat_sharing` tinyint(4) NOT NULL DEFAULT '1',
  `allow_clustering` tinyint(4) NOT NULL DEFAULT '1',
  `default_map` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - GOOGLE MAPS, 2 - LIVE MAPS, 3 - YAHOO MAPS, 4 - OPEN STREET MAPS',
  `default_map_all` varchar(20) NOT NULL DEFAULT 'CC0000',
  `api_google` varchar(200) DEFAULT NULL,
  `api_yahoo` varchar(200) DEFAULT NULL,
  `api_live` varchar(200) DEFAULT NULL,
  `api_akismet` varchar(200) DEFAULT NULL,
  `default_country` int(11) DEFAULT NULL,
  `multi_country` tinyint(4) NOT NULL DEFAULT '0',
  `default_city` varchar(150) DEFAULT NULL,
  `default_lat` varchar(100) DEFAULT NULL,
  `default_lon` varchar(100) DEFAULT NULL,
  `default_zoom` tinyint(4) NOT NULL DEFAULT '10',
  `items_per_page` smallint(6) NOT NULL DEFAULT '20',
  `items_per_page_admin` smallint(6) NOT NULL DEFAULT '20',
  `sms_no1` varchar(100) DEFAULT NULL,
  `sms_no2` varchar(100) DEFAULT NULL,
  `sms_no3` varchar(100) DEFAULT NULL,
  `frontlinesms_key` varchar(30) DEFAULT NULL,
  `clickatell_api` varchar(30) DEFAULT NULL,
  `clickatell_username` varchar(100) DEFAULT NULL,
  `clickatell_password` varchar(100) DEFAULT NULL,
  `google_analytics` text,
  `twitter_hashtags` text,
  `twitter_username` varchar(50) DEFAULT NULL,
  `twitter_password` varchar(50) DEFAULT NULL,
  `laconica_username` varchar(50) DEFAULT NULL,
  `laconica_password` varchar(50) DEFAULT NULL,
  `laconica_site` varchar(30) DEFAULT NULL COMMENT 'a laconica site',
  `date_modify` datetime DEFAULT NULL,
  `stat_id` bigint(20) DEFAULT NULL COMMENT 'comes from centralized stats',
  `stat_key` varchar(30) NOT NULL,
  `email_username` varchar(100) NOT NULL,
  `email_password` varchar(100) NOT NULL,
  `email_port` int(11) NOT NULL,
  `email_host` varchar(100) NOT NULL,
  `email_servertype` varchar(100) NOT NULL,
  `email_ssl` int(5) NOT NULL,
  `alerts_email` varchar(120) NOT NULL,
  `db_version` varchar(20) DEFAULT NULL,
  `ushahidi_version` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Статья 12.34','12.34','2matvei@gmail.com',NULL,'ru_RU','default',NULL,1,1,1,1,1,1,1,1,'CC0000','ABQIAAAAJeXYm06B0AvY6broIqjSLBQn5xc-Pro06ig4uZQ43k9LSSM1PRRE9iLKzceWBpX_ea-jlCC3B_5eKA','5CYeWbfV34E21JOW1a4.54Mf6e9jLNkD0HVzaKoQmJZi2qzmSZd5mD8X49x7',NULL,'',191,0,'nairobi','61.52401','105.318756',2,20,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','2010-09-15 12:22:20',6348,'885d9efb80f0630207014113ae2081','localhost','localhost',25,'localhost','imap',0,'2matvei@gmail.com','25','1.1.0');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sharing`
--

DROP TABLE IF EXISTS `sharing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sharing` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sharing_type` tinyint(4) DEFAULT '1' COMMENT '1 - PULLing Data, 2 - PUSHing Data, 3 - TWO way',
  `sharing_limits` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - Once Per Hour, 2 - Once Every 6 Hours, 3 - Once Every 12 Hours, 4 - Once Daily',
  `sharing_color` varchar(20) DEFAULT NULL,
  `sharing_site_name` varchar(255) DEFAULT NULL,
  `sharing_email` varchar(255) DEFAULT NULL,
  `sharing_url` varchar(255) DEFAULT NULL,
  `sharing_key` varchar(50) DEFAULT NULL,
  `sharing_ushahidi` tinyint(4) NOT NULL DEFAULT '1',
  `sharing_report` tinyint(4) NOT NULL DEFAULT '1',
  `sharing_media` tinyint(4) NOT NULL DEFAULT '1',
  `sharing_category` tinyint(4) NOT NULL DEFAULT '1',
  `sharing_personaldata` tinyint(4) NOT NULL DEFAULT '0',
  `sharing_active` tinyint(4) NOT NULL DEFAULT '0',
  `sharing_date` datetime NOT NULL,
  `sharing_dateaccess` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sharing_key` (`sharing_key`),
  KEY `sharing_url` (`sharing_url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sharing`
--

LOCK TABLES `sharing` WRITE;
/*!40000 ALTER TABLE `sharing` DISABLE KEYS */;
/*!40000 ALTER TABLE `sharing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sharing_log`
--

DROP TABLE IF EXISTS `sharing_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sharing_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sharing_id` int(11) NOT NULL,
  `sharing_log_date` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sharing_log`
--

LOCK TABLES `sharing_log` WRITE;
/*!40000 ALTER TABLE `sharing_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sharing_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter`
--

DROP TABLE IF EXISTS `twitter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `incident_id` int(11) DEFAULT '0',
  `tweet_from` varchar(100) DEFAULT NULL,
  `tweet_to` varchar(100) DEFAULT NULL,
  `tweet_hashtag` varchar(50) DEFAULT NULL,
  `tweet_link` varchar(100) DEFAULT NULL,
  `tweet` varchar(255) DEFAULT NULL,
  `tweet_type` tinyint(4) DEFAULT '1' COMMENT '1 - INBOX, 2 - OUTBOX (From Admin)',
  `tweet_date` datetime DEFAULT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter`
--

LOCK TABLES `twitter` WRITE;
/*!40000 ALTER TABLE `twitter` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tokens`
--

DROP TABLE IF EXISTS `user_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `user_agent` varchar(40) NOT NULL,
  `token` varchar(32) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `expires` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_token` (`token`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `user_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tokens`
--

LOCK TABLES `user_tokens` WRITE;
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;
INSERT INTO `user_tokens` VALUES (1,1,'0bc25144caff08bf0ca452c8aa49d3757bee0441','EcpeLIZLzaQy5GKKVv6rVVWJNTm5C6Ue',1284376684,1285586284),(2,1,'20d86424de04bbaa278606db57e9eaa5714d6d5a','1NmASFUKUXFhTKk52CZ6NFiqNe1gklcp',1284499514,1285709114);
/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(127) NOT NULL,
  `username` varchar(31) NOT NULL DEFAULT '',
  `password` char(50) NOT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(10) unsigned DEFAULT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Flag incase admin opts in for email notifications',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrator','david@ushahidi.com','admin','bae4b17e9acbabf959654a4c496e577003e0b887c6f52803d7',21,1284500879,0,'2010-09-14 21:47:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verified`
--

DROP TABLE IF EXISTS `verified`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verified` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `incident_id` bigint(20) DEFAULT NULL,
  `idp_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `verified_comment` longtext,
  `verified_date` datetime DEFAULT NULL,
  `verified_status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verified`
--

LOCK TABLES `verified` WRITE;
/*!40000 ALTER TABLE `verified` DISABLE KEYS */;
/*!40000 ALTER TABLE `verified` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-09-15  1:56:31
