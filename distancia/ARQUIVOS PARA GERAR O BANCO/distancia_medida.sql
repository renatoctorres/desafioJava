-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: distancia
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `medida`
--

DROP TABLE IF EXISTS `medida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medida` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `destino_id` bigint(20) NOT NULL,
  `mapa_id` bigint(20) NOT NULL,
  `origem_id` bigint(20) NOT NULL,
  `valor` decimal(19,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8lsulbps9cnw9yx5i2v6ygvw9` (`destino_id`),
  KEY `FK_287ys9mkhja265xk6cjugjeye` (`mapa_id`),
  KEY `FK_eqw2vdc7gnim3snkx5jovab71` (`origem_id`),
  CONSTRAINT `FK_287ys9mkhja265xk6cjugjeye` FOREIGN KEY (`mapa_id`) REFERENCES `mapa` (`id`),
  CONSTRAINT `FK_8lsulbps9cnw9yx5i2v6ygvw9` FOREIGN KEY (`destino_id`) REFERENCES `ponto` (`id`),
  CONSTRAINT `FK_eqw2vdc7gnim3snkx5jovab71` FOREIGN KEY (`origem_id`) REFERENCES `ponto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medida`
--

LOCK TABLES `medida` WRITE;
/*!40000 ALTER TABLE `medida` DISABLE KEYS */;
INSERT INTO `medida` VALUES (1,0,1,1,2,10.00),(2,0,2,1,4,15.00),(3,0,1,1,3,20.00),(4,0,3,1,4,30.00),(5,0,2,1,5,50.00),(6,0,4,1,5,30.00);
/*!40000 ALTER TABLE `medida` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-10  3:13:11
