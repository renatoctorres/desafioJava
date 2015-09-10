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
-- Table structure for table `percurso`
--

DROP TABLE IF EXISTS `percurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `percurso` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `autonomia` decimal(19,2) NOT NULL,
  `custo_viagem` decimal(19,2) NOT NULL,
  `distancia_total` decimal(19,2) NOT NULL,
  `preco_litro` decimal(19,2) NOT NULL,
  `destino_id` bigint(20) NOT NULL,
  `mapa_id` bigint(20) NOT NULL,
  `origem_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_161we9r7m3wb0xdaed7i38f62` (`destino_id`),
  KEY `FK_7vrklsv59kysvvqc5e1n82ma8` (`mapa_id`),
  KEY `FK_61fetge0fh3bd6l11rsl2xn6x` (`origem_id`),
  CONSTRAINT `FK_161we9r7m3wb0xdaed7i38f62` FOREIGN KEY (`destino_id`) REFERENCES `ponto` (`id`),
  CONSTRAINT `FK_61fetge0fh3bd6l11rsl2xn6x` FOREIGN KEY (`origem_id`) REFERENCES `ponto` (`id`),
  CONSTRAINT `FK_7vrklsv59kysvvqc5e1n82ma8` FOREIGN KEY (`mapa_id`) REFERENCES `mapa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `percurso`
--

LOCK TABLES `percurso` WRITE;
/*!40000 ALTER TABLE `percurso` DISABLE KEYS */;
/*!40000 ALTER TABLE `percurso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-10  3:13:12
