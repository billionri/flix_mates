-- MySQL dump 10.13  Distrib 5.5.50, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: flix
-- ------------------------------------------------------
-- Server version	5.5.50-0ubuntu0.14.04.1

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
-- Table structure for table `flix_login`
--

DROP TABLE IF EXISTS `flix_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flix_login` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gcm_regid` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flix_login`
--

LOCK TABLES `flix_login` WRITE;
/*!40000 ALTER TABLE `flix_login` DISABLE KEYS */;
INSERT INTO `flix_login` VALUES (1,'rashid','','1133225566','','','','rashid','2016-07-23 13:04:09','APA91bHj_Lq8CEn5il-ciqr_o6MarolVUTNGDJ4ln_UigORJKeaNjOl0j42jMEVNlasdzaN6lhoiPy2QAiBtV2DvDyjl0D9m5K4vGvO0rBFK1nv-uxisjI2Rj2kNa75ZhqCrRQmfy5p2'),(2,'Samina Siddiqui','','9029100860','','','','barkati','2016-07-23 13:14:09',''),(3,'Rashid1','','5555555555','','','','r','2016-07-23 19:15:45','APA91bGM_NGSTfpTyjG-4tvNoFSwp_NPDGUjmOzcRnRa48r8zvPgwykFxFVDr3B18m9VSYuua0U4Ev9t1lN1RTdpmUrBXGBSXoHpQwW4HsZyCxKn6eVYGQic7eyI4MDJ51Toy_YOBIYX'),(4,'Noor','','8767671001','','','','12345','2016-07-24 06:05:30',''),(5,'Nur','','9987399929','','','','123456','2016-07-24 06:08:58','');
/*!40000 ALTER TABLE `flix_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flix_news_feed`
--

DROP TABLE IF EXISTS `flix_news_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flix_news_feed` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` text,
  `link` text,
  `image` text,
  `pub_date` varchar(50) DEFAULT NULL,
  `story` text,
  `lan_id` int(11) DEFAULT NULL,
  `is_used` int(11) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flix_news_feed`
--

LOCK TABLES `flix_news_feed` WRITE;
/*!40000 ALTER TABLE `flix_news_feed` DISABLE KEYS */;
INSERT INTO `flix_news_feed` VALUES (1,'Amid protests, panel finds that LAPD did not violate deadly force rules in shooting of black woman in South LA - Los Angeles Times','http://news.google.com/news/url?sa=t&fd=R&ct2=us&usg=AFQjCNFXbvyE-GlxulpM8PWR2DLLzaLcEw&clid=c3a7d30bb8a4878e06b80cf16b898331&cid=52779156303043&ei=2RGGV6jgIYGq4ALh-IrIAw&url=http://www.latimes.com/local/lanow/la-me-ln-lapd-shooting-redel-jones-20160712-snap-story.html','http:////t1.gstatic.com/images?q=tbn:ANd9GcTvEvvfjGlxL9w7zVU2RGl3gANlMQM5YQqbyYZD6HooNAs5HrWquQ9YkOAdjxFB12OsJDPkUk8','Tue, 12 Jul 2016 21:18:11 GMT','As hundreds of demonstrators descended on downtown Los Angeles, the city&#39;s Police Commission on Tuesday faulted two LAPD officers for their tactics leading up to the killing of a black woman in South L.A. last year, but found that the fatal shooting ...',1,0,'2016-07-19 16:03:47'),(2,'\\u0935\\u093f\\u0930\\u094b\\u0927 \\u0915\\u0947 \\u092c\\u0940\\u091a , \\u092a\\u0948\\u0928\\u0932 \\u092a\\u093e\\u0924\\u093e \\u0939\\u0948 \\u0915\\u093f LAPD \\u0926\\u0915\\u094d\\u0937\\u093f\\u0923 \\u0932\\u093e \\u092e\\u0947\\u0902 \\u0915\\u093e\\u0932\\u0940 \\u0914\\u0930\\u0924 \\u0915\\u0940 \\u0936\\u0942\\u091f\\u093f\\u0902\\u0917 \\u092e\\u0947\\u0902 \\u0918\\u093e\\u0924\\u0915 \\u092c\\u0932 \\u0928\\u093f\\u092f\\u092e\\u094b\\u0902 \\u0915\\u093e \\u0909\\u0932\\u094d\\u0932\\u0902\\u0918\\u0928 \\u0928\\u0939\\u0940\\u0902 \\u0915\\u093f\\u092f\\u093e \\u0925\\u093e - \\u0932\\u0949\\u0938 \\u090f\\u0902\\u091c\\u093f\\u0932\\u094d\\u0938 \\u091f\\u093e\\u0907\\u092e\\u094d\\u0938','http://news.google.com/news/url?sa=t&fd=R&ct2=us&usg=AFQjCNFXbvyE-GlxulpM8PWR2DLLzaLcEw&clid=c3a7d30bb8a4878e06b80cf16b898331&cid=52779156303043&ei=2RGGV6jgIYGq4ALh-IrIAw&url=http://www.latimes.com/local/lanow/la-me-ln-lapd-shooting-redel-jones-20160712-snap-story.html','http:////t1.gstatic.com/images?q=tbn:ANd9GcTvEvvfjGlxL9w7zVU2RGl3gANlMQM5YQqbyYZD6HooNAs5HrWquQ9YkOAdjxFB12OsJDPkUk8','2016-07-20','\\u092a\\u094d\\u0930\\u0926\\u0930\\u094d\\u0936\\u0928\\u0915\\u093e\\u0930\\u093f\\u092f\\u094b\\u0902 \\u0915\\u0947 \\u0938\\u0948\\u0915\\u0921\\u093c\\u094b\\u0902 \\u0936\\u0939\\u0930 \\u092e\\u0947\\u0902 \\u0932\\u0949\\u0938 \\u090f\\u0902\\u091c\\u093f\\u0932\\u094d\\u0938 , \\u0936\\u0939\\u0930 & # 39 \\u092a\\u0930 \\u0909\\u0924\\u0930\\u093e \\u0930\\u0942\\u092a \\u092e\\u0947\\u0902 \\u0915\\u0940 \\u092a\\u0941\\u0932\\u093f\\u0938 \\u0906\\u092f\\u094b\\u0917 \\u0928\\u0947 \\u092e\\u0902\\u0917\\u0932\\u0935\\u093e\\u0930 \\u0915\\u094b \\u0917\\u0932\\u0924\\u0940 \\u0909\\u0928\\u0915\\u0940 \\u0930\\u0923\\u0928\\u0940\\u0924\\u093f \\u0915\\u094b \\u092a\\u093f\\u091b\\u0932\\u0947 \\u0938\\u093e\\u0932 \\u0926\\u0915\\u094d\\u0937\\u093f\\u0923 \\u0932\\u093e \\u092e\\u0947\\u0902 \\u090f\\u0915 \\u0915\\u093e\\u0932\\u0940 \\u0914\\u0930\\u0924 \\u0915\\u0940 \\u0939\\u0924\\u094d\\u092f\\u093e \\u0915\\u0930\\u0928\\u0947 \\u0915\\u0947 \\u0932\\u093f\\u090f \\u0905\\u0917\\u094d\\u0930\\u0923\\u0940 \\u0915\\u0947 \\u0932\\u093f\\u090f \\u0926\\u094b LAPD \\u0905\\u0927\\u093f\\u0915\\u093e\\u0930\\u0940, \\u0932\\u0947\\u0915\\u093f\\u0928 \\u0932\\u0917\\u0924\\u093e \\u0939\\u0948 \\u0915\\u093f \\u0918\\u093e\\u0924\\u0915 \\u0936\\u0942\\u091f\\u093f\\u0902\\u0917 \\u092a\\u093e\\u092f\\u093e .. \\u0964',2,0,'2016-07-19 16:03:54'),(3,'\\u0935\\u093f\\u0930\\u094b\\u0927 \\u0915\\u0947 \\u092c\\u0940\\u091a , \\u092a\\u0948\\u0928\\u0932 \\u092a\\u093e\\u0924\\u093e \\u0939\\u0948 \\u0915\\u093f LAPD \\u0926\\u0915\\u094d\\u0937\\u093f\\u0923 \\u0932\\u093e \\u092e\\u0947\\u0902 \\u0915\\u093e\\u0932\\u0940 \\u0914\\u0930\\u0924 \\u0915\\u0940 \\u0936\\u0942\\u091f\\u093f\\u0902\\u0917 \\u092e\\u0947\\u0902 \\u0918\\u093e\\u0924\\u0915 \\u092c\\u0932 \\u0928\\u093f\\u092f\\u092e\\u094b\\u0902 \\u0915\\u093e \\u0909\\u0932\\u094d\\u0932\\u0902\\u0918\\u0928 \\u0928\\u0939\\u0940\\u0902 \\u0915\\u093f\\u092f\\u093e \\u0925\\u093e - \\u0932\\u0949\\u0938 \\u090f\\u0902\\u091c\\u093f\\u0932\\u094d\\u0938 \\u091f\\u093e\\u0907\\u092e\\u094d\\u0938','http://news.google.com/news/url?sa=t&fd=R&ct2=us&usg=AFQjCNFXbvyE-GlxulpM8PWR2DLLzaLcEw&clid=c3a7d30bb8a4878e06b80cf16b898331&cid=52779156303043&ei=2RGGV6jgIYGq4ALh-IrIAw&url=http://www.latimes.com/local/lanow/la-me-ln-lapd-shooting-redel-jones-20160712-snap-story.html','http:////t1.gstatic.com/images?q=tbn:ANd9GcTvEvvfjGlxL9w7zVU2RGl3gANlMQM5YQqbyYZD6HooNAs5HrWquQ9YkOAdjxFB12OsJDPkUk8','2016-07-20','\\u092a\\u094d\\u0930\\u0926\\u0930\\u094d\\u0936\\u0928\\u0915\\u093e\\u0930\\u093f\\u092f\\u094b\\u0902 \\u0915\\u0947 \\u0938\\u0948\\u0915\\u0921\\u093c\\u094b\\u0902 \\u0936\\u0939\\u0930 \\u092e\\u0947\\u0902 \\u0932\\u0949\\u0938 \\u090f\\u0902\\u091c\\u093f\\u0932\\u094d\\u0938 , \\u0936\\u0939\\u0930 & # 39 \\u092a\\u0930 \\u0909\\u0924\\u0930\\u093e \\u0930\\u0942\\u092a \\u092e\\u0947\\u0902 \\u0915\\u0940 \\u092a\\u0941\\u0932\\u093f\\u0938 \\u0906\\u092f\\u094b\\u0917 \\u0928\\u0947 \\u092e\\u0902\\u0917\\u0932\\u0935\\u093e\\u0930 \\u0915\\u094b \\u0917\\u0932\\u0924\\u0940 \\u0909\\u0928\\u0915\\u0940 \\u0930\\u0923\\u0928\\u0940\\u0924\\u093f \\u0915\\u094b \\u092a\\u093f\\u091b\\u0932\\u0947 \\u0938\\u093e\\u0932 \\u0926\\u0915\\u094d\\u0937\\u093f\\u0923 \\u0932\\u093e \\u092e\\u0947\\u0902 \\u090f\\u0915 \\u0915\\u093e\\u0932\\u0940 \\u0914\\u0930\\u0924 \\u0915\\u0940 \\u0939\\u0924\\u094d\\u092f\\u093e \\u0915\\u0930\\u0928\\u0947 \\u0915\\u0947 \\u0932\\u093f\\u090f \\u0905\\u0917\\u094d\\u0930\\u0923\\u0940 \\u0915\\u0947 \\u0932\\u093f\\u090f \\u0926\\u094b LAPD \\u0905\\u0927\\u093f\\u0915\\u093e\\u0930\\u0940, \\u0932\\u0947\\u0915\\u093f\\u0928 \\u0932\\u0917\\u0924\\u093e \\u0939\\u0948 \\u0915\\u093f \\u0918\\u093e\\u0924\\u0915 \\u0936\\u0942\\u091f\\u093f\\u0902\\u0917 \\u092a\\u093e\\u092f\\u093e .. \\u0964',2,0,'2016-07-19 16:04:01'),(4,'\\u0935\\u093f\\u0930\\u094b\\u0927 \\u0915\\u0947 \\u092c\\u0940\\u091a , \\u092a\\u0948\\u0928\\u0932 \\u092a\\u093e\\u0924\\u093e \\u0939\\u0948 \\u0915\\u093f LAPD \\u0926\\u0915\\u094d\\u0937\\u093f\\u0923 \\u0932\\u093e \\u092e\\u0947\\u0902 \\u0915\\u093e\\u0932\\u0940 \\u0914\\u0930\\u0924 \\u0915\\u0940 \\u0936\\u0942\\u091f\\u093f\\u0902\\u0917 \\u092e\\u0947\\u0902 \\u0918\\u093e\\u0924\\u0915 \\u092c\\u0932 \\u0928\\u093f\\u092f\\u092e\\u094b\\u0902 \\u0915\\u093e \\u0909\\u0932\\u094d\\u0932\\u0902\\u0918\\u0928 \\u0928\\u0939\\u0940\\u0902 \\u0915\\u093f\\u092f\\u093e \\u0925\\u093e - \\u0932\\u0949\\u0938 \\u090f\\u0902\\u091c\\u093f\\u0932\\u094d\\u0938 \\u091f\\u093e\\u0907\\u092e\\u094d\\u0938','http://news.google.com/news/url?sa=t&fd=R&ct2=us&usg=AFQjCNFXbvyE-GlxulpM8PWR2DLLzaLcEw&clid=c3a7d30bb8a4878e06b80cf16b898331&cid=52779156303043&ei=2RGGV6jgIYGq4ALh-IrIAw&url=http://www.latimes.com/local/lanow/la-me-ln-lapd-shooting-redel-jones-20160712-snap-story.html','http:////t1.gstatic.com/images?q=tbn:ANd9GcTvEvvfjGlxL9w7zVU2RGl3gANlMQM5YQqbyYZD6HooNAs5HrWquQ9YkOAdjxFB12OsJDPkUk8','2016-07-20','\\u092a\\u094d\\u0930\\u0926\\u0930\\u094d\\u0936\\u0928\\u0915\\u093e\\u0930\\u093f\\u092f\\u094b\\u0902 \\u0915\\u0947 \\u0938\\u0948\\u0915\\u0921\\u093c\\u094b\\u0902 \\u0936\\u0939\\u0930 \\u092e\\u0947\\u0902 \\u0932\\u0949\\u0938 \\u090f\\u0902\\u091c\\u093f\\u0932\\u094d\\u0938 , \\u0936\\u0939\\u0930 & # 39 \\u092a\\u0930 \\u0909\\u0924\\u0930\\u093e \\u0930\\u0942\\u092a \\u092e\\u0947\\u0902 \\u0915\\u0940 \\u092a\\u0941\\u0932\\u093f\\u0938 \\u0906\\u092f\\u094b\\u0917 \\u0928\\u0947 \\u092e\\u0902\\u0917\\u0932\\u0935\\u093e\\u0930 \\u0915\\u094b \\u0917\\u0932\\u0924\\u0940 \\u0909\\u0928\\u0915\\u0940 \\u0930\\u0923\\u0928\\u0940\\u0924\\u093f \\u0915\\u094b \\u092a\\u093f\\u091b\\u0932\\u0947 \\u0938\\u093e\\u0932 \\u0926\\u0915\\u094d\\u0937\\u093f\\u0923 \\u0932\\u093e \\u092e\\u0947\\u0902 \\u090f\\u0915 \\u0915\\u093e\\u0932\\u0940 \\u0914\\u0930\\u0924 \\u0915\\u0940 \\u0939\\u0924\\u094d\\u092f\\u093e \\u0915\\u0930\\u0928\\u0947 \\u0915\\u0947 \\u0932\\u093f\\u090f \\u0905\\u0917\\u094d\\u0930\\u0923\\u0940 \\u0915\\u0947 \\u0932\\u093f\\u090f \\u0926\\u094b LAPD \\u0905\\u0927\\u093f\\u0915\\u093e\\u0930\\u0940, \\u0932\\u0947\\u0915\\u093f\\u0928 \\u0932\\u0917\\u0924\\u093e \\u0939\\u0948 \\u0915\\u093f \\u0918\\u093e\\u0924\\u0915 \\u0936\\u0942\\u091f\\u093f\\u0902\\u0917 \\u092a\\u093e\\u092f\\u093e .. \\u0964',2,0,'2016-07-19 16:04:02'),(5,'\\u0932\\u0949\\u0938 \\u090f\\u0902\\u091c\\u0947\\u0932\\u093f\\u0938 \\u091f\\u093e\\u0907\\u092e\\u094d\\u0938 - \\u0928\\u093f\\u0937\\u0947\\u0927 \\u092e\\u0927\\u094d\\u092f\\u0947 , \\u092a\\u0945\\u0928\\u0947\\u0932 LAPD \\u0926\\u0915\\u094d\\u0937\\u093f\\u0923 \\u0932\\u0941\\u091d\\u093f\\u092f\\u093e\\u0928\\u093e \\u0915\\u093e\\u0933\\u093e \\u0938\\u094d\\u0924\\u094d\\u0930\\u0940 \\u0936\\u0942\\u091f\\u093f\\u0902\\u0917 \\u092e\\u0927\\u094d\\u092f\\u0947 \\u092a\\u094d\\u0930\\u093e\\u0923\\u0918\\u093e\\u0924\\u0915 \\u0936\\u0915\\u094d\\u0924\\u0940 \\u0928\\u093f\\u092f\\u092e\\u093e\\u0902\\u091a\\u0947 \\u0909\\u0932\\u094d\\u0932\\u0902\\u0918\\u0928 \\u0928\\u093e\\u0939\\u0940, \\u0928\\u093e\\u0939\\u0940','http://news.google.com/news/url?sa=t&fd=R&ct2=us&usg=AFQjCNFXbvyE-GlxulpM8PWR2DLLzaLcEw&clid=c3a7d30bb8a4878e06b80cf16b898331&cid=52779156303043&ei=2RGGV6jgIYGq4ALh-IrIAw&url=http://www.latimes.com/local/lanow/la-me-ln-lapd-shooting-redel-jones-20160712-snap-story.html','http:////t1.gstatic.com/images?q=tbn:ANd9GcTvEvvfjGlxL9w7zVU2RGl3gANlMQM5YQqbyYZD6HooNAs5HrWquQ9YkOAdjxFB12OsJDPkUk8','2016-07-20','demonstrators \\u0936\\u0947\\u0915\\u0921\\u094b \\u0921\\u093e\\u0909\\u0928\\u091f\\u093e\\u0909\\u0928 \\u0932\\u0949\\u0938 \\u090f\\u0902\\u091c\\u0947\\u0932\\u094d\\u0938, \\u0936\\u0939\\u0930 & # 39 \\u0916\\u093e\\u0932\\u0940 \\u0909\\u0924\\u0930\\u0924 \\u0905\\u0938\\u0924\\u093e\\u0928\\u093e ; \\u091a\\u094d\\u092f\\u093e \\u092e\\u0902\\u0917\\u0933\\u0935\\u093e\\u0930\\u0940 \\u092a\\u094b\\u0932\\u0940\\u0938 \\u0915\\u092e\\u0940\\u0936\\u0928 \\u0924\\u094d\\u092f\\u093e\\u0902\\u091a\\u094d\\u092f\\u093e \\u0918\\u094b\\u091f\\u093e\\u0933\\u094d\\u092f\\u093e\\u0924 \\u0917\\u0947\\u0932\\u094d\\u092f\\u093e \\u0935\\u0930\\u094d\\u0937\\u0940 \\u0926\\u0915\\u094d\\u0937\\u093f\\u0923 \\u0932\\u0941\\u091d\\u093f\\u092f\\u093e\\u0928\\u093e \\u090f\\u0915 \\u0915\\u093e\\u0933\\u093e \\u0938\\u094d\\u0924\\u094d\\u0930\\u0940 \\u0939\\u0924\\u094d\\u092f\\u093e \\u092a\\u0930\\u094d\\u092f\\u0902\\u0924 \\u0906\\u0918\\u093e\\u0921\\u0940\\u091a\\u094d\\u092f\\u093e \\u0926\\u094b\\u0928 LAPD \\u0905\\u0927\\u093f\\u0915\\u093e\\u0930\\u0940 faulted , \\u092a\\u0923 \\u091c\\u0940\\u0935\\u0918\\u0947\\u0923\\u093e \\u0928\\u0947\\u092e\\u092c\\u093e\\u091c\\u0940 \\u0905\\u0938\\u0947 \\u0906\\u0922\\u0933\\u0932\\u0947 .. .',3,0,'2016-07-19 16:04:07'),(6,'\\u0932\\u0949\\u0938 \\u090f\\u0902\\u091c\\u0947\\u0932\\u093f\\u0938 \\u091f\\u093e\\u0907\\u092e\\u094d\\u0938 - \\u0928\\u093f\\u0937\\u0947\\u0927 \\u092e\\u0927\\u094d\\u092f\\u0947 , \\u092a\\u0945\\u0928\\u0947\\u0932 LAPD \\u0926\\u0915\\u094d\\u0937\\u093f\\u0923 \\u0932\\u0941\\u091d\\u093f\\u092f\\u093e\\u0928\\u093e \\u0915\\u093e\\u0933\\u093e \\u0938\\u094d\\u0924\\u094d\\u0930\\u0940 \\u0936\\u0942\\u091f\\u093f\\u0902\\u0917 \\u092e\\u0927\\u094d\\u092f\\u0947 \\u092a\\u094d\\u0930\\u093e\\u0923\\u0918\\u093e\\u0924\\u0915 \\u0936\\u0915\\u094d\\u0924\\u0940 \\u0928\\u093f\\u092f\\u092e\\u093e\\u0902\\u091a\\u0947 \\u0909\\u0932\\u094d\\u0932\\u0902\\u0918\\u0928 \\u0928\\u093e\\u0939\\u0940, \\u0928\\u093e\\u0939\\u0940','http://news.google.com/news/url?sa=t&fd=R&ct2=us&usg=AFQjCNFXbvyE-GlxulpM8PWR2DLLzaLcEw&clid=c3a7d30bb8a4878e06b80cf16b898331&cid=52779156303043&ei=2RGGV6jgIYGq4ALh-IrIAw&url=http://www.latimes.com/local/lanow/la-me-ln-lapd-shooting-redel-jones-20160712-snap-story.html','http:////t1.gstatic.com/images?q=tbn:ANd9GcTvEvvfjGlxL9w7zVU2RGl3gANlMQM5YQqbyYZD6HooNAs5HrWquQ9YkOAdjxFB12OsJDPkUk8','2016-07-20','demonstrators \\u0936\\u0947\\u0915\\u0921\\u094b \\u0921\\u093e\\u0909\\u0928\\u091f\\u093e\\u0909\\u0928 \\u0932\\u0949\\u0938 \\u090f\\u0902\\u091c\\u0947\\u0932\\u094d\\u0938, \\u0936\\u0939\\u0930 & # 39 \\u0916\\u093e\\u0932\\u0940 \\u0909\\u0924\\u0930\\u0924 \\u0905\\u0938\\u0924\\u093e\\u0928\\u093e ; \\u091a\\u094d\\u092f\\u093e \\u092e\\u0902\\u0917\\u0933\\u0935\\u093e\\u0930\\u0940 \\u092a\\u094b\\u0932\\u0940\\u0938 \\u0915\\u092e\\u0940\\u0936\\u0928 \\u0924\\u094d\\u092f\\u093e\\u0902\\u091a\\u094d\\u092f\\u093e \\u0918\\u094b\\u091f\\u093e\\u0933\\u094d\\u092f\\u093e\\u0924 \\u0917\\u0947\\u0932\\u094d\\u092f\\u093e \\u0935\\u0930\\u094d\\u0937\\u0940 \\u0926\\u0915\\u094d\\u0937\\u093f\\u0923 \\u0932\\u0941\\u091d\\u093f\\u092f\\u093e\\u0928\\u093e \\u090f\\u0915 \\u0915\\u093e\\u0933\\u093e \\u0938\\u094d\\u0924\\u094d\\u0930\\u0940 \\u0939\\u0924\\u094d\\u092f\\u093e \\u092a\\u0930\\u094d\\u092f\\u0902\\u0924 \\u0906\\u0918\\u093e\\u0921\\u0940\\u091a\\u094d\\u092f\\u093e \\u0926\\u094b\\u0928 LAPD \\u0905\\u0927\\u093f\\u0915\\u093e\\u0930\\u0940 faulted , \\u092a\\u0923 \\u091c\\u0940\\u0935\\u0918\\u0947\\u0923\\u093e \\u0928\\u0947\\u092e\\u092c\\u093e\\u091c\\u0940 \\u0905\\u0938\\u0947 \\u0906\\u0922\\u0933\\u0932\\u0947 .. .',3,0,'2016-07-19 16:04:09'),(7,'\\u0932\\u0949\\u0938 \\u090f\\u0902\\u091c\\u0947\\u0932\\u093f\\u0938 \\u091f\\u093e\\u0907\\u092e\\u094d\\u0938 - \\u0928\\u093f\\u0937\\u0947\\u0927 \\u092e\\u0927\\u094d\\u092f\\u0947 , \\u092a\\u0945\\u0928\\u0947\\u0932 LAPD \\u0926\\u0915\\u094d\\u0937\\u093f\\u0923 \\u0932\\u0941\\u091d\\u093f\\u092f\\u093e\\u0928\\u093e \\u0915\\u093e\\u0933\\u093e \\u0938\\u094d\\u0924\\u094d\\u0930\\u0940 \\u0936\\u0942\\u091f\\u093f\\u0902\\u0917 \\u092e\\u0927\\u094d\\u092f\\u0947 \\u092a\\u094d\\u0930\\u093e\\u0923\\u0918\\u093e\\u0924\\u0915 \\u0936\\u0915\\u094d\\u0924\\u0940 \\u0928\\u093f\\u092f\\u092e\\u093e\\u0902\\u091a\\u0947 \\u0909\\u0932\\u094d\\u0932\\u0902\\u0918\\u0928 \\u0928\\u093e\\u0939\\u0940, \\u0928\\u093e\\u0939\\u0940','http://news.google.com/news/url?sa=t&fd=R&ct2=us&usg=AFQjCNFXbvyE-GlxulpM8PWR2DLLzaLcEw&clid=c3a7d30bb8a4878e06b80cf16b898331&cid=52779156303043&ei=2RGGV6jgIYGq4ALh-IrIAw&url=http://www.latimes.com/local/lanow/la-me-ln-lapd-shooting-redel-jones-20160712-snap-story.html','http:////t1.gstatic.com/images?q=tbn:ANd9GcTvEvvfjGlxL9w7zVU2RGl3gANlMQM5YQqbyYZD6HooNAs5HrWquQ9YkOAdjxFB12OsJDPkUk8','2016-07-20','demonstrators \\u0936\\u0947\\u0915\\u0921\\u094b \\u0921\\u093e\\u0909\\u0928\\u091f\\u093e\\u0909\\u0928 \\u0932\\u0949\\u0938 \\u090f\\u0902\\u091c\\u0947\\u0932\\u094d\\u0938, \\u0936\\u0939\\u0930 & # 39 \\u0916\\u093e\\u0932\\u0940 \\u0909\\u0924\\u0930\\u0924 \\u0905\\u0938\\u0924\\u093e\\u0928\\u093e ; \\u091a\\u094d\\u092f\\u093e \\u092e\\u0902\\u0917\\u0933\\u0935\\u093e\\u0930\\u0940 \\u092a\\u094b\\u0932\\u0940\\u0938 \\u0915\\u092e\\u0940\\u0936\\u0928 \\u0924\\u094d\\u092f\\u093e\\u0902\\u091a\\u094d\\u092f\\u093e \\u0918\\u094b\\u091f\\u093e\\u0933\\u094d\\u092f\\u093e\\u0924 \\u0917\\u0947\\u0932\\u094d\\u092f\\u093e \\u0935\\u0930\\u094d\\u0937\\u0940 \\u0926\\u0915\\u094d\\u0937\\u093f\\u0923 \\u0932\\u0941\\u091d\\u093f\\u092f\\u093e\\u0928\\u093e \\u090f\\u0915 \\u0915\\u093e\\u0933\\u093e \\u0938\\u094d\\u0924\\u094d\\u0930\\u0940 \\u0939\\u0924\\u094d\\u092f\\u093e \\u092a\\u0930\\u094d\\u092f\\u0902\\u0924 \\u0906\\u0918\\u093e\\u0921\\u0940\\u091a\\u094d\\u092f\\u093e \\u0926\\u094b\\u0928 LAPD \\u0905\\u0927\\u093f\\u0915\\u093e\\u0930\\u0940 faulted , \\u092a\\u0923 \\u091c\\u0940\\u0935\\u0918\\u0947\\u0923\\u093e \\u0928\\u0947\\u092e\\u092c\\u093e\\u091c\\u0940 \\u0905\\u0938\\u0947 \\u0906\\u0922\\u0933\\u0932\\u0947 .. .',3,0,'2016-07-19 16:04:10'),(8,'\\u0932\\u0949\\u0938 \\u090f\\u0902\\u091c\\u0947\\u0932\\u093f\\u0938 \\u091f\\u093e\\u0907\\u092e\\u094d\\u0938 - \\u0928\\u093f\\u0937\\u0947\\u0927 \\u092e\\u0927\\u094d\\u092f\\u0947 , \\u092a\\u0945\\u0928\\u0947\\u0932 LAPD \\u0926\\u0915\\u094d\\u0937\\u093f\\u0923 \\u0932\\u0941\\u091d\\u093f\\u092f\\u093e\\u0928\\u093e \\u0915\\u093e\\u0933\\u093e \\u0938\\u094d\\u0924\\u094d\\u0930\\u0940 \\u0936\\u0942\\u091f\\u093f\\u0902\\u0917 \\u092e\\u0927\\u094d\\u092f\\u0947 \\u092a\\u094d\\u0930\\u093e\\u0923\\u0918\\u093e\\u0924\\u0915 \\u0936\\u0915\\u094d\\u0924\\u0940 \\u0928\\u093f\\u092f\\u092e\\u093e\\u0902\\u091a\\u0947 \\u0909\\u0932\\u094d\\u0932\\u0902\\u0918\\u0928 \\u0928\\u093e\\u0939\\u0940, \\u0928\\u093e\\u0939\\u0940','http://news.google.com/news/url?sa=t&fd=R&ct2=us&usg=AFQjCNFXbvyE-GlxulpM8PWR2DLLzaLcEw&clid=c3a7d30bb8a4878e06b80cf16b898331&cid=52779156303043&ei=2RGGV6jgIYGq4ALh-IrIAw&url=http://www.latimes.com/local/lanow/la-me-ln-lapd-shooting-redel-jones-20160712-snap-story.html','http:////t1.gstatic.com/images?q=tbn:ANd9GcTvEvvfjGlxL9w7zVU2RGl3gANlMQM5YQqbyYZD6HooNAs5HrWquQ9YkOAdjxFB12OsJDPkUk8','2016-07-20','demonstrators \\u0936\\u0947\\u0915\\u0921\\u094b \\u0921\\u093e\\u0909\\u0928\\u091f\\u093e\\u0909\\u0928 \\u0932\\u0949\\u0938 \\u090f\\u0902\\u091c\\u0947\\u0932\\u094d\\u0938, \\u0936\\u0939\\u0930 & # 39 \\u0916\\u093e\\u0932\\u0940 \\u0909\\u0924\\u0930\\u0924 \\u0905\\u0938\\u0924\\u093e\\u0928\\u093e ; \\u091a\\u094d\\u092f\\u093e \\u092e\\u0902\\u0917\\u0933\\u0935\\u093e\\u0930\\u0940 \\u092a\\u094b\\u0932\\u0940\\u0938 \\u0915\\u092e\\u0940\\u0936\\u0928 \\u0924\\u094d\\u092f\\u093e\\u0902\\u091a\\u094d\\u092f\\u093e \\u0918\\u094b\\u091f\\u093e\\u0933\\u094d\\u092f\\u093e\\u0924 \\u0917\\u0947\\u0932\\u094d\\u092f\\u093e \\u0935\\u0930\\u094d\\u0937\\u0940 \\u0926\\u0915\\u094d\\u0937\\u093f\\u0923 \\u0932\\u0941\\u091d\\u093f\\u092f\\u093e\\u0928\\u093e \\u090f\\u0915 \\u0915\\u093e\\u0933\\u093e \\u0938\\u094d\\u0924\\u094d\\u0930\\u0940 \\u0939\\u0924\\u094d\\u092f\\u093e \\u092a\\u0930\\u094d\\u092f\\u0902\\u0924 \\u0906\\u0918\\u093e\\u0921\\u0940\\u091a\\u094d\\u092f\\u093e \\u0926\\u094b\\u0928 LAPD \\u0905\\u0927\\u093f\\u0915\\u093e\\u0930\\u0940 faulted , \\u092a\\u0923 \\u091c\\u0940\\u0935\\u0918\\u0947\\u0923\\u093e \\u0928\\u0947\\u092e\\u092c\\u093e\\u091c\\u0940 \\u0905\\u0938\\u0947 \\u0906\\u0922\\u0933\\u0932\\u0947 .. .',3,0,'2016-07-19 16:04:11'),(9,'\\u0ab5\\u0abf\\u0ab0\\u0acb\\u0aa7 \\u0ab5\\u0a9a\\u0acd\\u0a9a\\u0ac7 , \\u0aaa\\u0ac7\\u0aa8\\u0ab2 \\u0ab6\\u0acb\\u0aa7\\u0ac7 \\u0a9b\\u0ac7 \\u0a95\\u0ac7 \\u0a9c\\u0ac7 \\u0a8f\\u0ab2\\u0a8f\\u0aaa\\u0ac0\\u0aa1\\u0ac0 \\u0aa6\\u0a95\\u0acd\\u0ab7\\u0abf\\u0aa3 LA \\u0aae\\u0abe\\u0a82 \\u0aac\\u0acd\\u0ab2\\u0ac7\\u0a95 \\u0aae\\u0ab9\\u0abf\\u0ab2\\u0abe \\u0ab6\\u0ac2\\u0a9f\\u0abf\\u0a82\\u0a97 \\u0a98\\u0acb\\u0ab0 \\u0aac\\u0ab3 \\u0aa8\\u0abf\\u0aaf\\u0aae\\u0acb \\u0a89\\u0ab2\\u0acd\\u0ab2\\u0a82\\u0a98\\u0aa8 \\u0aa8 \\u0ab9\\u0aa4\\u0ac0 - \\u0ab2\\u0acb\\u0ab8 \\u0a8f\\u0aa8\\u0acd\\u0a9c\\u0ab2\\u0ab8 \\u0a9f\\u0abe\\u0a87\\u0aae\\u0acd\\u0ab8','http://news.google.com/news/url?sa=t&fd=R&ct2=us&usg=AFQjCNFXbvyE-GlxulpM8PWR2DLLzaLcEw&clid=c3a7d30bb8a4878e06b80cf16b898331&cid=52779156303043&ei=2RGGV6jgIYGq4ALh-IrIAw&url=http://www.latimes.com/local/lanow/la-me-ln-lapd-shooting-redel-jones-20160712-snap-story.html','http:////t1.gstatic.com/images?q=tbn:ANd9GcTvEvvfjGlxL9w7zVU2RGl3gANlMQM5YQqbyYZD6HooNAs5HrWquQ9YkOAdjxFB12OsJDPkUk8','2016-07-20','\\u0aa8\\u0abf\\u0aa6\\u0ab0\\u0acd\\u0ab6\\u0aa8 \\u0ab8\\u0ac7\\u0a82\\u0a95\\u0aa1\\u0acb \\u0aa1\\u0abe\\u0a89\\u0aa8\\u0a9f\\u0abe\\u0a89\\u0aa8 \\u0ab2\\u0acb\\u0ab8 \\u0a8f\\u0aa8\\u0acd\\u0a9c\\u0ab2\\u0ab8, \\u0ab6\\u0ab9\\u0ac7\\u0ab0 \\u0a85\\u0aa8\\u0ac7 # 39 \\u0aaa\\u0ab0 \\u0a89\\u0aa4\\u0ab0\\u0ac0 \\u0aa4\\u0ab0\\u0ac0\\u0a95\\u0ac7 ; \\u0aaa\\u0acb\\u0ab2\\u0ac0\\u0ab8 \\u0a95\\u0aae\\u0abf\\u0ab6\\u0aa8 \\u0aae\\u0a82\\u0a97\\u0ab3\\u0ab5\\u0abe\\u0ab0\\u0ac7 faulted \\u0aa4\\u0ac7\\u0aae\\u0aa8\\u0ac0 \\u0ab0\\u0aa3\\u0aa8\\u0ac0\\u0aa4\\u0abf \\u0a97\\u0aaf\\u0abe \\u0ab5\\u0ab0\\u0acd\\u0ab7\\u0ac7 \\u0aa6\\u0a95\\u0acd\\u0ab7\\u0abf\\u0aa3 LA \\u0aae\\u0abe\\u0a82 \\u0a95\\u0abe\\u0ab3\\u0abe \\u0aae\\u0ab9\\u0abf\\u0ab2\\u0abe \\u0ab9\\u0aa4\\u0acd\\u0aaf\\u0abe \\u0ab8\\u0ac1\\u0aa7\\u0ac0 \\u0aa6\\u0acb\\u0ab0\\u0ac0 \\u0aac\\u0ac7 \\u0a8f\\u0ab2\\u0a8f\\u0aaa\\u0ac0\\u0aa1\\u0ac0 \\u0a85\\u0aa7\\u0abf\\u0a95\\u0abe\\u0ab0\\u0ac0\\u0a93, \\u0aaa\\u0ab0\\u0a82\\u0aa4\\u0ac1 \\u0aa4\\u0ac7 \\u0a9c\\u0ac0\\u0ab5\\u0ab2\\u0ac7\\u0aa3 \\u0ab6\\u0ac2\\u0a9f\\u0abf\\u0a82\\u0a97 \\u0aae\\u0ab3\\u0ac0 .. .',4,0,'2016-07-19 16:06:50'),(10,'\\u0ab5\\u0abf\\u0ab0\\u0acb\\u0aa7 \\u0ab5\\u0a9a\\u0acd\\u0a9a\\u0ac7 , \\u0aaa\\u0ac7\\u0aa8\\u0ab2 \\u0ab6\\u0acb\\u0aa7\\u0ac7 \\u0a9b\\u0ac7 \\u0a95\\u0ac7 \\u0a9c\\u0ac7 \\u0a8f\\u0ab2\\u0a8f\\u0aaa\\u0ac0\\u0aa1\\u0ac0 \\u0aa6\\u0a95\\u0acd\\u0ab7\\u0abf\\u0aa3 LA \\u0aae\\u0abe\\u0a82 \\u0aac\\u0acd\\u0ab2\\u0ac7\\u0a95 \\u0aae\\u0ab9\\u0abf\\u0ab2\\u0abe \\u0ab6\\u0ac2\\u0a9f\\u0abf\\u0a82\\u0a97 \\u0a98\\u0acb\\u0ab0 \\u0aac\\u0ab3 \\u0aa8\\u0abf\\u0aaf\\u0aae\\u0acb \\u0a89\\u0ab2\\u0acd\\u0ab2\\u0a82\\u0a98\\u0aa8 \\u0aa8 \\u0ab9\\u0aa4\\u0ac0 - \\u0ab2\\u0acb\\u0ab8 \\u0a8f\\u0aa8\\u0acd\\u0a9c\\u0ab2\\u0ab8 \\u0a9f\\u0abe\\u0a87\\u0aae\\u0acd\\u0ab8','http://news.google.com/news/url?sa=t&fd=R&ct2=us&usg=AFQjCNFXbvyE-GlxulpM8PWR2DLLzaLcEw&clid=c3a7d30bb8a4878e06b80cf16b898331&cid=52779156303043&ei=2RGGV6jgIYGq4ALh-IrIAw&url=http://www.latimes.com/local/lanow/la-me-ln-lapd-shooting-redel-jones-20160712-snap-story.html','http:////t1.gstatic.com/images?q=tbn:ANd9GcTvEvvfjGlxL9w7zVU2RGl3gANlMQM5YQqbyYZD6HooNAs5HrWquQ9YkOAdjxFB12OsJDPkUk8','2016-07-20','\\u0aa8\\u0abf\\u0aa6\\u0ab0\\u0acd\\u0ab6\\u0aa8 \\u0ab8\\u0ac7\\u0a82\\u0a95\\u0aa1\\u0acb \\u0aa1\\u0abe\\u0a89\\u0aa8\\u0a9f\\u0abe\\u0a89\\u0aa8 \\u0ab2\\u0acb\\u0ab8 \\u0a8f\\u0aa8\\u0acd\\u0a9c\\u0ab2\\u0ab8, \\u0ab6\\u0ab9\\u0ac7\\u0ab0 \\u0a85\\u0aa8\\u0ac7 # 39 \\u0aaa\\u0ab0 \\u0a89\\u0aa4\\u0ab0\\u0ac0 \\u0aa4\\u0ab0\\u0ac0\\u0a95\\u0ac7 ; \\u0aaa\\u0acb\\u0ab2\\u0ac0\\u0ab8 \\u0a95\\u0aae\\u0abf\\u0ab6\\u0aa8 \\u0aae\\u0a82\\u0a97\\u0ab3\\u0ab5\\u0abe\\u0ab0\\u0ac7 faulted \\u0aa4\\u0ac7\\u0aae\\u0aa8\\u0ac0 \\u0ab0\\u0aa3\\u0aa8\\u0ac0\\u0aa4\\u0abf \\u0a97\\u0aaf\\u0abe \\u0ab5\\u0ab0\\u0acd\\u0ab7\\u0ac7 \\u0aa6\\u0a95\\u0acd\\u0ab7\\u0abf\\u0aa3 LA \\u0aae\\u0abe\\u0a82 \\u0a95\\u0abe\\u0ab3\\u0abe \\u0aae\\u0ab9\\u0abf\\u0ab2\\u0abe \\u0ab9\\u0aa4\\u0acd\\u0aaf\\u0abe \\u0ab8\\u0ac1\\u0aa7\\u0ac0 \\u0aa6\\u0acb\\u0ab0\\u0ac0 \\u0aac\\u0ac7 \\u0a8f\\u0ab2\\u0a8f\\u0aaa\\u0ac0\\u0aa1\\u0ac0 \\u0a85\\u0aa7\\u0abf\\u0a95\\u0abe\\u0ab0\\u0ac0\\u0a93, \\u0aaa\\u0ab0\\u0a82\\u0aa4\\u0ac1 \\u0aa4\\u0ac7 \\u0a9c\\u0ac0\\u0ab5\\u0ab2\\u0ac7\\u0aa3 \\u0ab6\\u0ac2\\u0a9f\\u0abf\\u0a82\\u0a97 \\u0aae\\u0ab3\\u0ac0 .. .',4,0,'2016-07-19 16:06:51'),(11,'\\u0ab5\\u0abf\\u0ab0\\u0acb\\u0aa7 \\u0ab5\\u0a9a\\u0acd\\u0a9a\\u0ac7 , \\u0aaa\\u0ac7\\u0aa8\\u0ab2 \\u0ab6\\u0acb\\u0aa7\\u0ac7 \\u0a9b\\u0ac7 \\u0a95\\u0ac7 \\u0a9c\\u0ac7 \\u0a8f\\u0ab2\\u0a8f\\u0aaa\\u0ac0\\u0aa1\\u0ac0 \\u0aa6\\u0a95\\u0acd\\u0ab7\\u0abf\\u0aa3 LA \\u0aae\\u0abe\\u0a82 \\u0aac\\u0acd\\u0ab2\\u0ac7\\u0a95 \\u0aae\\u0ab9\\u0abf\\u0ab2\\u0abe \\u0ab6\\u0ac2\\u0a9f\\u0abf\\u0a82\\u0a97 \\u0a98\\u0acb\\u0ab0 \\u0aac\\u0ab3 \\u0aa8\\u0abf\\u0aaf\\u0aae\\u0acb \\u0a89\\u0ab2\\u0acd\\u0ab2\\u0a82\\u0a98\\u0aa8 \\u0aa8 \\u0ab9\\u0aa4\\u0ac0 - \\u0ab2\\u0acb\\u0ab8 \\u0a8f\\u0aa8\\u0acd\\u0a9c\\u0ab2\\u0ab8 \\u0a9f\\u0abe\\u0a87\\u0aae\\u0acd\\u0ab8','http://news.google.com/news/url?sa=t&fd=R&ct2=us&usg=AFQjCNFXbvyE-GlxulpM8PWR2DLLzaLcEw&clid=c3a7d30bb8a4878e06b80cf16b898331&cid=52779156303043&ei=2RGGV6jgIYGq4ALh-IrIAw&url=http://www.latimes.com/local/lanow/la-me-ln-lapd-shooting-redel-jones-20160712-snap-story.html','http:////t1.gstatic.com/images?q=tbn:ANd9GcTvEvvfjGlxL9w7zVU2RGl3gANlMQM5YQqbyYZD6HooNAs5HrWquQ9YkOAdjxFB12OsJDPkUk8','2016-07-20','\\u0aa8\\u0abf\\u0aa6\\u0ab0\\u0acd\\u0ab6\\u0aa8 \\u0ab8\\u0ac7\\u0a82\\u0a95\\u0aa1\\u0acb \\u0aa1\\u0abe\\u0a89\\u0aa8\\u0a9f\\u0abe\\u0a89\\u0aa8 \\u0ab2\\u0acb\\u0ab8 \\u0a8f\\u0aa8\\u0acd\\u0a9c\\u0ab2\\u0ab8, \\u0ab6\\u0ab9\\u0ac7\\u0ab0 \\u0a85\\u0aa8\\u0ac7 # 39 \\u0aaa\\u0ab0 \\u0a89\\u0aa4\\u0ab0\\u0ac0 \\u0aa4\\u0ab0\\u0ac0\\u0a95\\u0ac7 ; \\u0aaa\\u0acb\\u0ab2\\u0ac0\\u0ab8 \\u0a95\\u0aae\\u0abf\\u0ab6\\u0aa8 \\u0aae\\u0a82\\u0a97\\u0ab3\\u0ab5\\u0abe\\u0ab0\\u0ac7 faulted \\u0aa4\\u0ac7\\u0aae\\u0aa8\\u0ac0 \\u0ab0\\u0aa3\\u0aa8\\u0ac0\\u0aa4\\u0abf \\u0a97\\u0aaf\\u0abe \\u0ab5\\u0ab0\\u0acd\\u0ab7\\u0ac7 \\u0aa6\\u0a95\\u0acd\\u0ab7\\u0abf\\u0aa3 LA \\u0aae\\u0abe\\u0a82 \\u0a95\\u0abe\\u0ab3\\u0abe \\u0aae\\u0ab9\\u0abf\\u0ab2\\u0abe \\u0ab9\\u0aa4\\u0acd\\u0aaf\\u0abe \\u0ab8\\u0ac1\\u0aa7\\u0ac0 \\u0aa6\\u0acb\\u0ab0\\u0ac0 \\u0aac\\u0ac7 \\u0a8f\\u0ab2\\u0a8f\\u0aaa\\u0ac0\\u0aa1\\u0ac0 \\u0a85\\u0aa7\\u0abf\\u0a95\\u0abe\\u0ab0\\u0ac0\\u0a93, \\u0aaa\\u0ab0\\u0a82\\u0aa4\\u0ac1 \\u0aa4\\u0ac7 \\u0a9c\\u0ac0\\u0ab5\\u0ab2\\u0ac7\\u0aa3 \\u0ab6\\u0ac2\\u0a9f\\u0abf\\u0a82\\u0a97 \\u0aae\\u0ab3\\u0ac0 .. .',4,0,'2016-07-19 16:06:53');
/*!40000 ALTER TABLE `flix_news_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flix_profiles`
--

DROP TABLE IF EXISTS `flix_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flix_profiles` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `occupation` varchar(200) DEFAULT NULL,
  `permanent_address` text,
  `currently_living_address` text,
  `age` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `person_profile_description` varchar(300) DEFAULT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flix_profiles`
--

LOCK TABLES `flix_profiles` WRITE;
/*!40000 ALTER TABLE `flix_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `flix_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flix_profiles_raw_audio`
--

DROP TABLE IF EXISTS `flix_profiles_raw_audio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flix_profiles_raw_audio` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(300) DEFAULT NULL,
  `audio_paths` varchar(300) DEFAULT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flix_profiles_raw_audio`
--

LOCK TABLES `flix_profiles_raw_audio` WRITE;
/*!40000 ALTER TABLE `flix_profiles_raw_audio` DISABLE KEYS */;
/*!40000 ALTER TABLE `flix_profiles_raw_audio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flix_profiles_raw_images`
--

DROP TABLE IF EXISTS `flix_profiles_raw_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flix_profiles_raw_images` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(300) DEFAULT NULL,
  `image_paths` varchar(300) DEFAULT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flix_profiles_raw_images`
--

LOCK TABLES `flix_profiles_raw_images` WRITE;
/*!40000 ALTER TABLE `flix_profiles_raw_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `flix_profiles_raw_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flix_profiles_raw_video`
--

DROP TABLE IF EXISTS `flix_profiles_raw_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flix_profiles_raw_video` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(300) DEFAULT NULL,
  `video_paths` varchar(300) DEFAULT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flix_profiles_raw_video`
--

LOCK TABLES `flix_profiles_raw_video` WRITE;
/*!40000 ALTER TABLE `flix_profiles_raw_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `flix_profiles_raw_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flix_search`
--

DROP TABLE IF EXISTS `flix_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flix_search` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `value` text,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flix_search`
--

LOCK TABLES `flix_search` WRITE;
/*!40000 ALTER TABLE `flix_search` DISABLE KEYS */;
INSERT INTO `flix_search` VALUES (1,'home','2016-07-17 06:41:39'),(2,'contact','2016-07-17 06:42:08'),(3,'change lang','2016-07-17 06:42:34'),(4,'about us','2016-07-17 06:42:53');
/*!40000 ALTER TABLE `flix_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gcm_users`
--

DROP TABLE IF EXISTS `gcm_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gcm_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gcm_regid` text,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gcm_users`
--

LOCK TABLES `gcm_users` WRITE;
/*!40000 ALTER TABLE `gcm_users` DISABLE KEYS */;
INSERT INTO `gcm_users` VALUES (1,'APA91bHj_Lq8CEn5il-ciqr_o6MarolVUTNGDJ4ln_UigORJKeaNjOl0j42jMEVNlasdzaN6lhoiPy2QAiBtV2DvDyjl0D9m5K4vGvO0rBFK1nv-uxisjI2Rj2kNa75ZhqCrRQmfy5p2','rashid','1133225566','2016-07-23 13:04:09'),(2,'','samina siddiqui','9029100860','2016-07-23 13:14:09'),(3,'APA91bGM_NGSTfpTyjG-4tvNoFSwp_NPDGUjmOzcRnRa48r8zvPgwykFxFVDr3B18m9VSYuua0U4Ev9t1lN1RTdpmUrBXGBSXoHpQwW4HsZyCxKn6eVYGQic7eyI4MDJ51Toy_YOBIYX','rashid1','5555555555','2016-07-23 19:15:45'),(4,'','noor','8767671001','2016-07-24 06:05:30'),(5,'','nur','9987399929','2016-07-24 06:08:58');
/*!40000 ALTER TABLE `gcm_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-26 10:40:38
