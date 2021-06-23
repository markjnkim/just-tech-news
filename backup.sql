-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: newsfeed_db
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(255) NOT NULL,
  `user_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Nunc rhoncus dui vel sem.',6,1,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(2,'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.',6,8,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(3,'Aliquam erat volutpat. In congue.',3,10,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(4,'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',3,18,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(5,'In hac habitasse platea dictumst.',7,5,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(6,'Vivamus vestibulum sagittis sapien.',1,20,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(7,'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.',6,7,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(8,'Sed vel enim sit amet nunc viverra dapibus.',7,4,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(9,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.',6,12,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(10,'Morbi a ipsum.',6,20,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(11,'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',3,14,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(12,'Donec ut mauris eget massa tempor convallis.',5,4,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(13,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.',4,9,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(14,'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',5,14,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(15,'Quisque porta volutpat erat.',6,2,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(16,'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',8,2,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(17,'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.',2,20,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(18,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.',4,11,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(19,'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.',5,13,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(20,'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',9,16,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(21,'Curabitur convallis.',6,4,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(22,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',4,10,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(23,'Morbi non quam nec dui luctus rutrum.',3,8,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(24,'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.',8,10,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(25,'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',1,15,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(26,'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.',5,3,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(27,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',1,15,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(28,'Nam tristique tortor eu pede.',4,16,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(29,'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.',4,18,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(30,'Proin eu mi. Nulla ac enim.',4,10,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(31,'Sed ante. Vivamus tortor.',7,5,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(32,'Aliquam quis turpis eget elit sodales scelerisque.',10,1,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(33,'Donec quis orci eget orci vehicula condimentum.',3,19,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(34,'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',5,3,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(35,'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.',10,14,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(36,'Maecenas ut massa quis augue luctus tincidunt.',10,8,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(37,'Cras in purus eu magna vulputate luctus.',10,11,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(38,'Etiam vel augue. Vestibulum rutrum rutrum neque.',8,5,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(39,'Proin at turpis a pede posuere nonummy.',8,19,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(40,'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.',9,19,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(41,'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',5,4,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(42,'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.',2,11,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(43,'Vestibulum ac est lacinia nisi venenatis tristique.',4,6,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(44,'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',9,6,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(45,'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.',7,9,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(46,'Integer ac leo. Pellentesque ultrices mattis odio.',4,19,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(47,'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',10,1,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(48,'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.',2,19,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(49,'Proin risus. Praesent lectus.',10,1,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(50,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.',10,12,'2021-03-16 22:39:21','2021-03-16 22:39:21');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `post_url` varchar(255) NOT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Donec posuere metus vitae ipsum.','https://buzzfeed.com/in/imperdiet/et/commodo/vulputate.png',10,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(2,'Morbi non quam nec dui luctus rutrum.','https://nasa.gov/donec.json',8,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(3,'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.','https://europa.eu/parturient/montes/nascetur/ridiculus/mus/etiam/vel.aspx',1,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(4,'Nunc purus.','http://desdev.cn/enim/blandit/mi.jpg',4,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(5,'Pellentesque eget nunc.','http://google.ca/nam/nulla/integer.aspx',7,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','https://stanford.edu/consequat.png',4,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(7,'In hac habitasse platea dictumst.','http://edublogs.org/non/ligula/pellentesque.js',1,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(8,'Morbi non quam nec dui luctus rutrum.','http://ucla.edu/consequat/nulla.html',1,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(9,'Duis ac nibh.','http://theguardian.com/dui/vel/nisl/duis/ac/nibh.aspx',9,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(10,'Curabitur at ipsum ac tellus semper interdum.','https://reverbnation.com/ligula/sit.jpg',5,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(11,'In hac habitasse platea dictumst.','http://china.com.cn/lectus/vestibulum.json',3,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(12,'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.','http://networksolutions.com/nam/ultrices/libero/non/mattis/pulvinar.json',10,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(13,'Donec dapibus.','https://instagram.com/ac/neque/duis/bibendum/morbi/non.xml',8,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(14,'Nulla tellus.','https://lycos.com/natoque/penatibus/et.html',3,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(15,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.','https://gmpg.org/lorem.jpg',3,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(16,'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.','https://paginegialle.it/mattis/egestas.jsp',7,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(17,'In hac habitasse platea dictumst.','http://wikia.com/turpis/eget.jpg',6,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(18,'Etiam justo.','https://shareasale.com/quis.json',4,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(19,'Nulla ut erat id mauris vulputate elementum.','http://java.com/diam/neque/vestibulum/eget/vulputate/ut/ultrices.png',6,'2021-03-16 22:39:21','2021-03-16 22:39:21'),(20,'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','https://java.com/at/nibh/in.png',7,'2021-03-16 22:39:21','2021-03-16 22:39:21');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Session`
--

DROP TABLE IF EXISTS `Session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Session` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Session`
--

LOCK TABLES `Session` WRITE;
/*!40000 ALTER TABLE `Session` DISABLE KEYS */;
INSERT INTO `Session` VALUES ('4trbbcQiVaejAqvGdzGbk0Bsr43ESyVn','2021-03-17 22:39:36','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}','2021-03-16 22:39:36','2021-03-16 22:39:36');
/*!40000 ALTER TABLE `Session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'djiri4','gmidgley4@weather.com','$2b$10$14U2LA7iCfOW/rBn1G//4ODYGfk2TDG0apf1c5n7.0VdNcJBAsjVW'),(2,'dstanmer3','ihellier3@goo.ne.jp','$2b$10$K5EpOw2APvfIivKVzmPLvOhOZC6A6pSFyvklnw9aPc4HsPnTCqt9S'),(3,'jwilloughway1','rmebes1@sogou.com','$2b$10$JS1JLGWxKOpSa.poIkmU4.gcWQKR71dkNCXOagjnOHhrwG00MRohG'),(4,'msprague5','larnout5@imdb.com','$2b$10$JspBIbz8Q3Rl4tR1f7hJCuEkT8M3WkTDTCfNg09e4jDVN7MVCACRm'),(5,'tpenniell7','kperigo7@china.com.cn','$2b$10$X1iparcuX/03FxKSMuOfjuUEx3RVfrj82nzUPojzP3Zm9hOIcJ/xK'),(6,'mpergens6','hnapleton6@feedburner.com','$2b$10$p2dqTh4CySEOddiFnn3WFew07wfCiqZMu1tn7tkH8tB7OOV94fWRq'),(7,'alesmonde0','nwestnedge0@cbc.ca','$2b$10$IFjvplt371EGarEG0FszCu9/xC8ZLcnqxMaCekzwGyVvnFXzVOmdC'),(8,'msabbins8','lmongain8@google.ru','$2b$10$53dVEpTAPsn1s/AxocgnjOFa8dtJ/E2Aglq/sfvX1gNs15ePCOMg6'),(9,'iboddam2','cstoneman2@last.fm','$2b$10$U1M7/ChZrTnfvwfhPGRNee654XlVYpe9VJIFdDGELhq4n/6Hl0BBa'),(10,'jmacarthur9','bsteen9@epa.gov','$2b$10$41S.PcjreW.FR0beXrDv5ejdsKXcZwQGniBJWWwdw9p//3A0qkpQ6');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vote_post_id_user_id_unique` (`user_id`,`post_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `vote_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
INSERT INTO `vote` VALUES (2,1,8),(26,1,15),(20,1,16),(39,1,17),(37,2,13),(32,2,18),(47,3,4),(6,3,16),(11,3,17),(9,3,18),(7,4,7),(22,4,10),(31,4,15),(44,5,2),(42,5,6),(14,5,11),(24,5,16),(15,6,1),(28,6,3),(19,6,4),(18,6,7),(13,6,10),(43,6,12),(29,6,13),(45,6,14),(17,6,15),(25,6,17),(30,7,1),(27,7,13),(35,8,1),(3,8,12),(46,8,18),(4,8,19),(5,9,3),(33,9,10),(10,9,16),(16,9,18),(1,9,19),(38,9,20),(12,10,2),(41,10,3),(23,10,5),(8,10,7),(36,10,8),(40,10,9),(34,10,15),(21,10,18);
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-16 18:41:04
