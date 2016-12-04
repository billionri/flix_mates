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
  `first_name` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `gcm_regid` text,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flix_login`
--

LOCK TABLES `flix_login` WRITE;
/*!40000 ALTER TABLE `flix_login` DISABLE KEYS */;
INSERT INTO `flix_login` VALUES (1,'CHAYAN','1234567890','c@c.com','c','','2016-08-01 05:55:32'),(2,'CHAYAN PUROHIT','1234567891','c@gmail.com','c','APA91bHEDWo3TcQU89zn1j0SIfcrLCvj6OmZRBCVglQ3amNH6f4mFfZuVBIwGO3UzLsNd8Hvl502xkIBsJ-bNrW5zDS_tsgjerDRrsCUqoLruDeVUhU-DmqZAMuGZxHPTe1mOomakeYe','2016-08-01 06:31:04'),(3,'cc','1234567899','cc@cc.com','c','APA91bHMM_r5ULN6fXb-qN7ZaScVL3ywrl1ifdhXcr3KemETveBtP-4-DEnUaybkmUO3zNR5u3NFwiXZIch8_1trTLK8oHIXLyDq5ju1x8C__u81BagLkeK4uDAR64PCabB3N9eUd6VK','2016-08-01 07:27:42'),(4,'CC','1234567898','cc@gmail.com','cc','APA91bG7N_h6eZt_0QwadVTanJ0OKNsqi6uEtTwKTHbeghJXFY620UAEjAIKuLWtM8qC4nVtCiNGAUX5b-UzUGC8KaGYtWnGy_nWUiUwya7JTwMvA2SgEpZMuALz670yKF7YH0wG5ucv','2016-08-01 08:35:11'),(5,'chayan','0987654321','chayan@chayan.com','c','APA91bHIhvhzJAdWALe4WO-MyopudZJPOBP-eWsSfL-nM2dEbo4C0tUSNCwdP41Zsie2dy48Ja9KCM7VZ-cV3hFoybG83CZptLpv9jgQBQHElaD8A5_bUiPC72r5ZQ28C31vJgFd3jQV','2016-08-01 09:37:02'),(6,'hbgbybyb','0987654322','chayan@gmail.com','c','','2016-08-01 09:45:18');
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
  `user_image` varchar(100) DEFAULT NULL,
  `achievements` varchar(100) DEFAULT NULL,
  `awards` varchar(100) DEFAULT NULL,
  `recommendations` varchar(100) DEFAULT NULL,
  `working_with_person` varchar(100) DEFAULT NULL,
  `person_profile_description` varchar(300) DEFAULT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flix_profiles`
--

LOCK TABLES `flix_profiles` WRITE;
/*!40000 ALTER TABLE `flix_profiles` DISABLE KEYS */;
INSERT INTO `flix_profiles` VALUES (1,'1','CHAYAN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-08-01 05:55:32'),(2,'2','CHAYAN PUROHIT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-08-01 06:31:04'),(3,'3','cc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-08-01 07:27:42'),(4,'4','CC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-08-01 08:35:11'),(5,'5','chayan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-08-01 09:37:02'),(6,'6','hbgbybyb','yhybybybhnh','hnhnhnhn','hnhnhn','69696','hnhnhn','images_upload/Screenshot_20160729-175017.png','ynynynyn','hnhnh hnh','hnhnhnhnhn','hnh h h h h h','ybyng km hngNnhngbgbh gbgbf','2016-08-01 09:45:18');
/*!40000 ALTER TABLE `flix_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flix_profiles_raw_audios`
--

DROP TABLE IF EXISTS `flix_profiles_raw_audios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flix_profiles_raw_audios` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(300) DEFAULT NULL,
  `audio_path` varchar(300) DEFAULT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flix_profiles_raw_audios`
--

LOCK TABLES `flix_profiles_raw_audios` WRITE;
/*!40000 ALTER TABLE `flix_profiles_raw_audios` DISABLE KEYS */;
INSERT INTO `flix_profiles_raw_audios` VALUES (1,'1',NULL,'2016-08-01 05:55:32'),(2,'2',NULL,'2016-08-01 06:31:04'),(3,'3',NULL,'2016-08-01 07:27:42'),(4,'4',NULL,'2016-08-01 08:35:11'),(5,'5',NULL,'2016-08-01 09:37:02'),(6,'6','audios_upload/hangouts_incoming_call.ogg','2016-08-01 09:45:18');
/*!40000 ALTER TABLE `flix_profiles_raw_audios` ENABLE KEYS */;
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
  `image_path` varchar(300) DEFAULT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flix_profiles_raw_images`
--

LOCK TABLES `flix_profiles_raw_images` WRITE;
/*!40000 ALTER TABLE `flix_profiles_raw_images` DISABLE KEYS */;
INSERT INTO `flix_profiles_raw_images` VALUES (1,'1',NULL,'2016-08-01 05:55:32'),(2,'2',NULL,'2016-08-01 06:31:04'),(3,'3',NULL,'2016-08-01 07:27:42'),(4,'4',NULL,'2016-08-01 08:35:11'),(5,'5',NULL,'2016-08-01 09:37:02'),(6,'6','images_upload/Screenshot_20160729-175017.png','2016-08-01 09:45:18');
/*!40000 ALTER TABLE `flix_profiles_raw_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flix_profiles_raw_profile_images`
--

DROP TABLE IF EXISTS `flix_profiles_raw_profile_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flix_profiles_raw_profile_images` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(300) DEFAULT NULL,
  `profile_image` varchar(300) DEFAULT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flix_profiles_raw_profile_images`
--

LOCK TABLES `flix_profiles_raw_profile_images` WRITE;
/*!40000 ALTER TABLE `flix_profiles_raw_profile_images` DISABLE KEYS */;
INSERT INTO `flix_profiles_raw_profile_images` VALUES (1,'9','','2016-07-29 19:14:14'),(2,'9','','2016-07-29 19:17:04'),(3,'9','','2016-07-29 19:19:28'),(4,'9','','2016-07-29 19:19:46'),(5,'9','','2016-07-29 19:23:46');
/*!40000 ALTER TABLE `flix_profiles_raw_profile_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flix_profiles_raw_videos`
--

DROP TABLE IF EXISTS `flix_profiles_raw_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flix_profiles_raw_videos` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(300) DEFAULT NULL,
  `video_path` varchar(300) DEFAULT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flix_profiles_raw_videos`
--

LOCK TABLES `flix_profiles_raw_videos` WRITE;
/*!40000 ALTER TABLE `flix_profiles_raw_videos` DISABLE KEYS */;
INSERT INTO `flix_profiles_raw_videos` VALUES (1,'1',NULL,'2016-08-01 05:55:32'),(2,'2',NULL,'2016-08-01 06:31:04'),(3,'3',NULL,'2016-08-01 07:27:42'),(4,'4',NULL,'2016-08-01 08:35:11'),(5,'5',NULL,'2016-08-01 09:37:02'),(6,'6','','2016-08-01 09:45:18');
/*!40000 ALTER TABLE `flix_profiles_raw_videos` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flix_search`
--

LOCK TABLES `flix_search` WRITE;
/*!40000 ALTER TABLE `flix_search` DISABLE KEYS */;
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
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gcm_users`
--

LOCK TABLES `gcm_users` WRITE;
/*!40000 ALTER TABLE `gcm_users` DISABLE KEYS */;
INSERT INTO `gcm_users` VALUES (1,'','c','2016-08-01 05:55:32'),(2,'APA91bHEDWo3TcQU89zn1j0SIfcrLCvj6OmZRBCVglQ3amNH6f4mFfZuVBIwGO3UzLsNd8Hvl502xkIBsJ-bNrW5zDS_tsgjerDRrsCUqoLruDeVUhU-DmqZAMuGZxHPTe1mOomakeYe','c','2016-08-01 06:31:04'),(3,'APA91bHMM_r5ULN6fXb-qN7ZaScVL3ywrl1ifdhXcr3KemETveBtP-4-DEnUaybkmUO3zNR5u3NFwiXZIch8_1trTLK8oHIXLyDq5ju1x8C__u81BagLkeK4uDAR64PCabB3N9eUd6VK','c','2016-08-01 07:27:42'),(4,'APA91bG7N_h6eZt_0QwadVTanJ0OKNsqi6uEtTwKTHbeghJXFY620UAEjAIKuLWtM8qC4nVtCiNGAUX5b-UzUGC8KaGYtWnGy_nWUiUwya7JTwMvA2SgEpZMuALz670yKF7YH0wG5ucv','cc','2016-08-01 08:35:11'),(5,'APA91bHIhvhzJAdWALe4WO-MyopudZJPOBP-eWsSfL-nM2dEbo4C0tUSNCwdP41Zsie2dy48Ja9KCM7VZ-cV3hFoybG83CZptLpv9jgQBQHElaD8A5_bUiPC72r5ZQ28C31vJgFd3jQV','c','2016-08-01 09:37:02'),(6,'','c','2016-08-01 09:45:18');
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

-- Dump completed on 2016-08-02 11:20:41
