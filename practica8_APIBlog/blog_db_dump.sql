-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: blog_db
-- ------------------------------------------------------
-- Server version	8.0.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'Juan Pérez','juan.perez@example.com','juan.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(2,'María García','maria.garcia@example.com','maria.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(3,'Carlos López','carlos.lopez@example.com','carlos.jpg','$2b$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(4,'Ana Martínez','ana.martinez@example.com','ana.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(5,'David Sánchez','david.sanchez@example.com','david.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(6,'Laura Fernández','laura.fernandez@example.com','laura.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(7,'Miguel Torres','miguel.torres@example.com','miguel.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(8,'Elena Ruiz','elena.ruiz@example.com','elena.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(9,'Javier Romero','javier.romero@example.com','javier.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(10,'Sofía Navarro','sofia.navarro@example.com','sofia.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(11,'Pablo Díaz','pablo.diaz@example.com','pablo.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(12,'Lucía Moreno','lucia.moreno@example.com','lucia.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(13,'Diego Castillo','diego.castillo@example.com','diego.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(14,'Marta Ortega','marta.ortega@example.com','marta.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(15,'Alberto Vega','alberto.vega@example.com','alberto.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(16,'Patricia Gil','patricia.gil@example.com','patricia.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(17,'Raúl Herrera','raul.herrera@example.com','raul.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(18,'Cristina León','cristina.leon@example.com','cristina.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(19,'Sergio Molina','sergio.molina@example.com','sergio.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(20,'Natalia Cruz','natalia.cruz@example.com','natalia.jpg','$2b$10$123456789012345678901uVjM8sX0lN7D4h5J6k7L8m9N0pQ1rS2'),(21,'Álvaro Moreno','alvaromoreno@gmail.com','pruebaimagenregistro.jpg','$2b$08$/W/9mJA84kM0ZBFgFBrZiuI66WnQvV47YZ39p99MgajI.ivYFPm52'),(22,'Paula Cortés','paulacor@gmail.com','pruebaimagenregistro.jpg','$2b$08$6Ihtri3DEZPn9EGoq3P6GeLZ8T0ATe0wISzjgHosKakE5amMCT4fK'),(23,'Leire Moreno','leiremoreno@yahoo.com','leire.jpg','$2b$08$oQ1dHrQ1WQfYMfUmEUWqC.Hqxiy/9uiVyJlwNCOpzvT.z/HEP4rpa'),(24,'Alvaro','alvaromoreno@gmail.com','leire.jpg','$2b$08$k8nYZN3ewzhUCPM53E3PcueaNDFMKfcHZIbj7GZ5gBdLwqaVftYOy'),(25,'Alvaro','alvaromoreno@gmail.com','leire.jpg','$2b$08$d5t2sK8IM6rj2xn3HyAteeNV9TXo4k3TzJGkqoQsLWLY.AeU.hQqK'),(26,'Alvaro','alvaromoreno@gmail.com','leire.jpg','$2b$08$QNPTZgrgZX0y0aLgRTKRYulOWW8wGB.ZlsLEuqjHSsGQy2tgMxiTG'),(27,'Alvaro','alvaromoreno@gmail.com','leire.jpg','$2b$08$d/nGskx//8IkuBMkAfAD/eSf/xgwVtRUb.rmRDvt8pomWC9Of4SP2'),(28,'Alvaro','alvaromoreno@gmail.com','leire.jpg','$2b$08$rFz6XGTUIPc/b6I89kma/Oqj.sR2mfr1GDetS.gj5F64.eAdDIUmO'),(29,'Alvaro','alvaromoreno@gmail.com','leire.jpg','$2b$08$udpLNA6V7enCp/DifQr7sOf4v9JTu7DUsucGAHa2tkCszRRMBmrXe'),(30,'Alvaro','alvaromoreno@gmail.com','leire.jpg','$2b$08$kZBJUtF7ICJY7i5m.Kft5OF9mMWHQLQNjvDdp0Nkc5RxoANhA/YBe'),(31,'Alvaro','paulacor@gmail.com','leire.jpg','$2b$08$55SxkiqXyS5U2wl.zKnVEeXuOvHzxZ8xwnQvRFQOKiKzvO8nBKZoC'),(32,'Gema','gemada@gmail.com','leire.jpg','$2b$08$BbS8KJxSDJcNBEX/lbw4gOaS2WcSmAOxuEOdadKoVkNyJV4lPsnXa'),(33,'Gema','gemaa@gmail.com','leire.jpg','$2b$08$cYJfJINAI2h4IuWn5OFtiusc2smBBFzpzmYCcqmI/vz7atOch.qqS'),(34,'Hector','hector@gmail.com','leire.jpg','$2b$08$4TsELXwRvvPyRz2arenVOOL7ILlfDPcLuku37N/3BxQHxmmCLR58a'),(35,'Abuela','abuelar@gmail.com',NULL,'$2b$08$ZSMK2PpmLDDk4Zh2lLLMi.xB33auT7Z.rtNxUyag/MB23p.aegFAO'),(36,'Abuela','abuelaraaaaa@gmail.com',NULL,'$2b$08$9xd.oHS8sPWb5FO0UhX4HO5Vuxlf8eg8kdjdtkLp3twNqC3BwPqTm');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `category` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autores_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_posts_autores_idx` (`autores_id`),
  CONSTRAINT `fk_posts_autores` FOREIGN KEY (`autores_id`) REFERENCES `autores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Introducción a JavaScript','Aprende los conceptos básicos de JavaScript.','2026-06-13 13:15:53','Programación',1),(2,'Guía de Angular 20','Novedades y mejores prácticas de Angular.','2026-06-13 13:15:53','Frontend',2),(3,'Node.js para principiantes','Primeros pasos desarrollando APIs.','2026-06-13 13:15:53','Backend',3),(4,'Dominando CSS Grid','Diseños modernos con CSS Grid.','2026-06-13 13:15:53','Diseño Web',4),(5,'Bases de datos MySQL','Conceptos esenciales para trabajar con MySQL.','2026-06-13 13:15:53','Bases de Datos',5),(6,'API REST con Express','Construcción de servicios REST escalables.','2026-06-13 13:15:53','Backend',6),(7,'Introducción a Docker','Contenerización de aplicaciones.','2026-06-13 13:15:53','DevOps',7),(8,'Git y GitHub','Control de versiones para desarrolladores.','2026-06-13 13:15:53','Herramientas',8),(9,'Patrones de Diseño','Patrones más utilizados en desarrollo.','2026-06-13 13:15:53','Arquitectura',9),(10,'Testing en JavaScript','Pruebas unitarias y de integración.','2026-06-13 13:15:53','Testing',10),(11,'TypeScript Avanzado','Tipos genéricos y utilidades avanzadas.','2026-06-13 13:15:53','Programación',11),(12,'Seguridad Web','Buenas prácticas para proteger aplicaciones.','2026-06-13 13:15:53','Ciberseguridad',12),(13,'MongoDB Essentials','Introducción a bases de datos NoSQL.','2026-06-13 13:15:53','Bases de Datos',13),(14,'CI/CD con GitHub Actions','Automatización de despliegues.','2026-06-13 13:15:53','DevOps',14),(15,'Optimización Frontend','Mejorando el rendimiento de aplicaciones.','2026-06-13 13:15:53','Frontend',15),(16,'Arquitectura de Microservicios','Ventajas y desafíos de los microservicios.','2026-06-13 13:15:53','Arquitectura',16),(17,'Fundamentos de IA','Conceptos básicos de inteligencia artificial.','2026-06-13 13:15:53','Inteligencia Artificial',17),(18,'Prompt Engineering','Cómo diseñar prompts efectivos.','2026-06-13 13:15:53','IA Generativa',18),(19,'Azure para Desarrolladores','Servicios esenciales de Azure.','2026-06-13 13:15:53','Cloud',19),(20,'Desarrollo Full Stack','Integración de frontend y backend.','2026-06-13 13:15:53','Programación',20),(22,'Prueba 1','Esto es una prueba del post antes de que tenga gestión por id','2026-06-13 20:46:26','MySQL',1),(23,'Prueba 2','Prueba 2','2026-06-14 12:49:21','Prueba 2',22),(24,'Introdución a Python','Esto es un artículo que explica como puedes iniciarte en Python','2026-06-14 12:54:16','Python',23),(25,'Articulo informático','Esto es una prueba nueva','2026-06-14 14:34:40','Informática',34);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-14 15:03:01
