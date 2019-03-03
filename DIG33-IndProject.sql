-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: c9
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` text NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','',''),(2,'Products','',''),(5,'The Company','',''),(6,'What is Prosecco','',''),(7,'Privacy Statement','','');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'Spumante','The SCAVI & RAY SPUMANTE products, compared to FRIZZANTE products, have a stronger perlage and a more intense tingling sensation on the tongue. This means the bottle pressure is greater requiring the SPUMANTE to have a sparkling wine cork closure with an agraffe for the bottle to remain securely closed.'),(2,'Frizzante','SCAVI & RAY FRIZZANTE products are known for their fine perlage on account of lower carbon dioxide levels. This also explains the low bottle pressure and use of a simple cork without an additional agraffe.'),(3,'Aperitivi','The much-loved Italian prosecco cocktails guarantee a refreshing thrill: sparkling prosecco with fresh mint leaves and elderflower syrup or fruity bitter orange.');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `size` varchar(10) NOT NULL,
  `price` double(10,2) NOT NULL,
  `image_url` text NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Prosecco Spumante','SCAVI & RAY\nProsecco Spumante\n\nVINO SPUMANTE fully embodies the SCAVI & RAY character. Longer fermentation times lend this prosecco a more intense perlage. It has a fresh nose and many fruit notes. It is a spumante rich in flavour, invigorating lifes wonderful moments.\n\nVENETO PROSECCO D.O.C. VINO SPUMANTE Alcohol content 11.0% vol. \nIdeal serving temperature 8 to 10 deg C','200ml',3.00,'/images/SR_Prosecco_200ml.jpg',1),(2,'Prosecco Spumante','SCAVI & RAY\nProsecco Spumante\n\nVINO SPUMANTE fully embodies the SCAVI & RAY character. Longer fermentation times lend this prosecco a more intense perlage. It has a fresh nose and many fruit notes. It is a spumante rich in flavour, invigorating lifes wonderful moments.\n\nVENETO PROSECCO D.O.C. VINO SPUMANTE Alcohol content 11.0% vol. \nIdeal serving temperature 8 to 10 deg C','750ml',11.00,'/images/SR_Prosecco_750ml.jpg',1),(3,'Rosato Frizzante','The summery ROSATO FRIZZANTE charms us with its ruby red colour and fine perlage. The special bottle, made of white glass, comes in a SCAVI & RAY design paying homage to the extraordinary colour of the Frizzante. The deep colour and fruity aroma give the VINO ROSATO its very original wine character.\n\nVENETO ROSATO I.G.T. VINO FRIZZANTE Alcohol content 10.5% vol. \nIdeal serving temperature 8 to 10 deg C','200ml',3.00,'/images/SR_Rosato_200ml.jpg',2),(4,'Rosato Frizzante','The summery ROSATO FRIZZANTE charms us with its ruby red colour and fine perlage. The special bottle, made of white glass, comes in a SCAVI & RAY design paying homage to the extraordinary colour of the Frizzante. The deep colour and fruity aroma give the VINO ROSATO its very original wine character.\n\nVENETO ROSATO I.G.T. VINO FRIZZANTE Alcohol content 10.5% vol. \nIdeal serving temperature 8 to 10 deg C','750ml',9.50,'/images/SR_Rosato_750ml.jpg',2),(5,'Hugo','HUGO combines first-class vino frizzante with elderflower syrup, a dash of lime juice and a shot of soda. It has become greatly popular in Italian bars and is the new darling of the scene. With only 6% vol., HUGO is a perfect, light accompaniment to Mediterranean dishes and a wonderful refreshment on any evening or during the day for that matter. HUGO by SCAVI & RAY is best served in a wine glass on the rocks. Put three ice cubes and a sprig of mint into a glass and top up with HUGO. Ready to serve!\n\nVENETO APERITIVO \nAlcohol content 6% vol. \nIdeal serving temperature 8 to 10 deg C','200ml',3.00,'/images/SR_Hugo_200ml.jpg',3),(6,'Hugo','HUGO combines first-class vino frizzante with elderflower syrup, a dash of lime juice and a shot of soda. It has become greatly popular in Italian bars and is the new darling of the scene. With only 6% vol., HUGO is a perfect, light accompaniment to Mediterranean dishes and a wonderful refreshment on any evening or during the day for that matter. HUGO by SCAVI & RAY is best served in a wine glass on the rocks. Put three ice cubes and a sprig of mint into a glass and top up with HUGO. Ready to serve!\n\nVENETO APERITIVO \nAlcohol content 6% vol. \nIdeal serving temperature 8 to 10 deg C','750ml',9.50,'/images/SR_Hugo_750ml.jpg',3);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `youtube_url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (6,'Hugo Summer Feeling by SCAVI and RAY','','https://www.youtube.com/watch?v=sxflEEQ2JO4'),(8,'Scavi & Ray Advert','','https://www.youtube.com/watch?v=NxXvyPyI1Lo'),(9,'SCAVI & RAY Promotional Video','','https://www.youtube.com/watch?v=eeWFDcylWIY'),(10,'SCAVI and  RAY - Prosecco','In this video SCAVI & RAY represents the Italian Dolce Vita with the joy of good weather and above all a sparkling pleasure in the form of a Prosecco. ','https://www.youtube.com/watch?v=wzePIoxrnWc'),(11,'SCAVI & RAY Prosecco Frizzante','Vino Frizzante spoils you with its freshness, delicate bouquet and fruity petillance. The grapes are picked when they are perfectly ripe, and only the highest quality Vino Frizzante is bottled. After filling, the bottles receive the seal of quality in the form of an exclusive SCAVI & RAY lead seal, which is applied by hand. This is the only way to ensure the high quality standards. Of the hundreds of Prosecco sparkling wines available, SCAVI & RAY is truly among the very best. \r\nTasting notes:   This pleasantly sparkling wine from the Veneto region of Italy is ideally suited as both a dry aperitivo or as a great accompaniment to light mediterranean dishes. ','https://www.youtube.com/watch?v=YxCb2xfHZuo');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-14  9:52:02
