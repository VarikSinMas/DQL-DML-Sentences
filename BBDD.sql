CREATE DATABASE  IF NOT EXISTS `gym` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gym`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: gym
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividad` (
  `id_actividad` int NOT NULL AUTO_INCREMENT,
  `actividad` varchar(40) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `dirigida_a` enum('Adultos','Bebés','Niños','Todo Público') NOT NULL,
  `nivel` enum('Inicial',' Básico','Intermedio','Avanzado') NOT NULL COMMENT 'niveles de dificultad',
  `duracion_sesion_minutos` int NOT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `resistencia` tinyint DEFAULT NULL,
  `fuerza` tinyint DEFAULT NULL,
  `velocidad` tinyint DEFAULT NULL,
  `coordinacion` tinyint DEFAULT NULL,
  `flexibilidad` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_actividad`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` VALUES (1,'Acroyoga','Es una disciplina que mezcla el yoga, las acrobacias y el masaje. Se practica en parejas','Adultos','Intermedio',50,NULL,0,1,0,1,1),(2,'Aeróbicos','Deporte de intensidad media que trabaja la capacidad aeróbica','Adultos','Intermedio',50,NULL,1,0,0,0,1),(3,'Aerodance','Es una actividad de ejercicios aeróbicos con una coreografía de baile donde la resistencia también es importante. ','Adultos','Intermedio',45,NULL,1,1,0,0,1),(4,'BodyPump','Programa de entrenamiento físico intenso que combina actividad aeróbica y trabajo muscular mediante el levantamiento de pesas al ritmo de la música. ','Adultos','Avanzado',55,NULL,1,1,0,0,1),(5,'Circuito Funcional','Entrenamiento de 24 ejercicios en circuito que respalda la fuerza general, la resistencia y una mejor absorción de oxígeno.','Adultos','Avanzado',55,NULL,1,1,0,0,1),(6,'CX Work','Son rutinas de ejercicios destinadas a modelar y tonificar los músculos del ‘core’: tronco, hombros y caderas.','Todo Público','Intermedio',30,NULL,1,1,0,0,0),(7,'Cycling','Es una  actividad aeróbica que se adapta a todo el mundo. No requiere una gran coordinación, ni equilibrio, ni destrezas físicas específicas','Todo Público','Intermedio',50,NULL,1,0,0,0,0),(8,'Body Balance','Programa de entrenamiento inspirado en el yoga, tai chi y pilates, que mejora la flexibilidad, la fuerza y te aporta una sensación de calma, armonía y bienestar. ','Todo Público','Intermedio',50,NULL,0,1,0,1,0),(9,'GAC','Una clase colectiva de tonificación específica para trabajar el tren inferior y la zona del core.','Todo Público','Intermedio',50,NULL,1,1,0,0,0),(10,'Hipopresivos (GAH)','Los hipopresivos son técnicas tienen como objetivo la reeducación postural combinada con la respiración.','Todo Público','Intermedio',50,NULL,0,1,0,0,1),(11,'Natación','La natación es un deporte recomendado para personas de todas las edades, ya que tiene beneficios particulares para cada franja','Adultos','Intermedio',50,NULL,1,0,1,1,1),(12,'Natación','La natación es un deporte recomendado para personas de todas las edades, ya que tiene beneficios particulares para cada franja','Bebés','Inicial',50,NULL,1,0,1,1,1),(13,'Natación','La natación es un deporte recomendado para personas de todas las edades, ya que tiene beneficios particulares para cada franja','Niños','Inicial',50,NULL,1,0,1,1,1),(14,'Pilates','Ejercicios que busca la correcta alineación del cuerpo pidiendo a la persona que se conciencie de la postura para corregirla mediante ejercicios de fuerza y flexibilidad.','Todo Público','Intermedio',50,NULL,0,0,0,1,1),(15,'Step','Actividad física variante del aeróbic que consiste en la realización de una secuencia de ejercicios sobre un escalón, denominado step. ','Todo Público','Intermedio',50,NULL,1,1,0,1,1),(16,'Stretching','Es una actividad que tiene como objetivo preservar o aumentar la propiedad elástica de los tejidos.','Todo Público','Intermedio',30,NULL,0,1,0,1,0),(17,'Tai-chi','Ejercicios lentos y suaves y para trabajar todos los músculos del cuerpo ','Todo Público','Intermedio',50,NULL,0,1,0,1,1),(18,'Total HIIT','Programa de entrenamiento cardiovascular de alta intensidad.','Adultos','Avanzado',30,NULL,1,1,0,0,0),(19,'TRX30','Ejercicios unilaterales en los que trabajamos con un lado del cuerpo de forma independiente al otro','Adultos','Intermedio',50,NULL,0,1,0,0,0),(20,'Hatha Yoga ','Posturas basadas en el control de la respiración y de las posiciones corporales para alcanzar el dominio del cuerpo y de la vitalidad.','Todo Público','Intermedio',50,NULL,0,0,0,1,1),(21,'Zumba','Mezcla de ritmos latinos –salsa, merengue, flamenco o bachata– y ejercicios aeróbicos','Todo Público','Intermedio',50,NULL,1,0,0,0,1);
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corporativo`
--

DROP TABLE IF EXISTS `corporativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corporativo` (
  `id_socio` int NOT NULL,
  `nif` varchar(15) NOT NULL,
  PRIMARY KEY (`nif`,`id_socio`),
  KEY `socio_corporativo_idx` (`id_socio`),
  CONSTRAINT `socio_corporativo` FOREIGN KEY (`id_socio`) REFERENCES `socio` (`id_socio`),
  CONSTRAINT `socio_empresa` FOREIGN KEY (`nif`) REFERENCES `empresa` (`nif`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporativo`
--

LOCK TABLES `corporativo` WRITE;
/*!40000 ALTER TABLE `corporativo` DISABLE KEYS */;
INSERT INTO `corporativo` VALUES (6,'B85868339'),(10,'B85868339'),(11,'A28788909'),(13,'A28788909'),(17,'A28788909'),(21,'A79935607'),(29,'B85868339'),(31,'B85868339'),(33,'A28788909'),(36,'B85868339'),(37,'B85868339'),(40,'A79935607'),(44,'B85868339'),(50,'A28788909'),(60,'A79935607'),(62,'A28788909'),(70,'A28788909'),(72,'B85868339'),(73,'A79935607'),(75,'B85868339'),(80,'B85868339'),(81,'A79935607'),(82,'A79935607'),(87,'B85868339'),(97,'B85868339'),(104,'27658945D'),(105,'36584123E');
/*!40000 ALTER TABLE `corporativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `nif` varchar(15) NOT NULL,
  `empresa` varchar(45) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `persona_contacto` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `fecha_inicio_convenio` date NOT NULL,
  `fecha_fin_convenio` date DEFAULT NULL,
  PRIMARY KEY (`nif`),
  UNIQUE KEY `Empresa_UNIQUE` (`empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES ('A28788909','ADIDAS','876 76 89 23','E. Sanchez','esanchez@adidas.es','2022-01-02',NULL),('A79935607','DECATHLON','916 85 72 72','J. López','rrhh@decathlon.com','2022-01-03',NULL),('B85868339','PUMA','911 39 01 52','M. Köppel','rrhh-es@puma.com','2022-01-08',NULL);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `id_socio` int NOT NULL,
  `tipo_socio` int NOT NULL COMMENT '1=Principal, 2=Corporativo',
  `fecha_cambio` date NOT NULL,
  `plan_anterior` int NOT NULL,
  `plan_actual` int DEFAULT NULL,
  `nif_empresa` varchar(15) DEFAULT NULL,
  `tarjeta_acceso` varchar(15) DEFAULT NULL,
  `fecha_alta_plan` date DEFAULT NULL,
  `baja_definitiva` tinyint DEFAULT NULL,
  KEY `historico_socio_idx` (`id_socio`),
  CONSTRAINT `historico_socio` FOREIGN KEY (`id_socio`) REFERENCES `socio` (`id_socio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` VALUES (24,1,'2022-01-13',4,4,NULL,'ALCI00024','2019-08-01',1),(25,1,'2022-03-09',1,1,NULL,NULL,'2017-11-28',1),(26,1,'2022-01-22',3,3,NULL,NULL,'2018-05-27',1),(27,1,'2022-02-14',2,2,NULL,NULL,'2019-08-14',1),(28,1,'2022-03-01',4,4,NULL,'ALVA00028','2019-09-06',1),(47,1,'2020-01-01',6,6,NULL,NULL,'2018-05-12',1),(6,2,'2022-02-05',7,7,'B85868339',NULL,'2019-02-24',1),(13,2,'2022-01-26',7,7,'A28788909',NULL,'2018-04-09',1),(29,2,'2022-03-07',7,7,'B85868339',NULL,'2017-08-13',1),(80,2,'2022-01-08',8,8,'B85868339','JEHE00080','2019-03-28',1),(81,2,'2022-02-17',7,7,'A79935607',NULL,'2019-02-03',1),(82,2,'2022-03-05',8,8,'A79935607','BESM00082','2019-05-17',1),(9,1,'2022-02-24',1,3,NULL,NULL,'2021-03-01',0),(34,1,'2022-03-12',2,3,NULL,NULL,'2021-03-17',0);
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario` (
  `id_actividad` int NOT NULL,
  `id_instalacion` int NOT NULL,
  `id_monitor` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_actividad`,`id_instalacion`,`fecha`,`hora`),
  KEY `actividad_instalacion_idx` (`id_instalacion`),
  KEY `actividad_monitor` (`id_monitor`),
  CONSTRAINT `actividad_horario` FOREIGN KEY (`id_actividad`) REFERENCES `actividad` (`id_actividad`),
  CONSTRAINT `actividad_instalacion` FOREIGN KEY (`id_instalacion`) REFERENCES `instalacion` (`id_instalacion`),
  CONSTRAINT `actividad_monitor` FOREIGN KEY (`id_monitor`) REFERENCES `monitor` (`id_monitor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` VALUES (1,12,1,'2022-01-03','19:00:00',NULL),(1,12,7,'2022-01-06','19:00:00',NULL),(1,12,5,'2022-01-10','19:00:00',NULL),(1,12,5,'2022-01-13','19:00:00',NULL),(1,12,4,'2022-01-17','19:00:00',NULL),(1,12,3,'2022-01-20','19:00:00',NULL),(1,12,2,'2022-01-24','19:00:00',NULL),(1,12,6,'2022-01-27','19:00:00',NULL),(1,12,7,'2022-01-31','19:00:00',NULL),(2,2,5,'2022-01-09','13:00:00',NULL),(2,2,3,'2022-01-16','13:00:00',NULL),(2,2,2,'2022-01-23','13:00:00',NULL),(2,2,3,'2022-01-30','13:00:00',NULL),(2,12,7,'2022-01-04','18:00:00',NULL),(2,12,6,'2022-01-07','18:00:00',NULL),(2,12,1,'2022-01-11','18:00:00',NULL),(2,12,2,'2022-01-14','18:00:00',NULL),(2,12,3,'2022-01-18','18:00:00',NULL),(2,12,4,'2022-01-21','18:00:00',NULL),(2,12,5,'2022-01-25','18:00:00',NULL),(2,12,6,'2022-01-28','18:00:00',NULL),(3,2,7,'2022-01-03','18:00:00',NULL),(3,2,5,'2022-01-06','18:00:00',NULL),(3,2,3,'2022-01-10','18:00:00',NULL),(3,2,2,'2022-01-13','18:00:00',NULL),(3,2,4,'2022-01-17','18:00:00',NULL),(3,2,6,'2022-01-20','18:00:00',NULL),(3,2,7,'2022-01-24','18:00:00',NULL),(3,2,5,'2022-01-27','18:00:00',NULL),(3,2,3,'2022-01-31','18:00:00',NULL),(4,2,1,'2022-01-04','20:00:00',NULL),(4,2,1,'2022-01-07','20:00:00',NULL),(4,2,2,'2022-01-11','20:00:00',NULL),(4,2,5,'2022-01-14','20:00:00',NULL),(4,2,7,'2022-01-18','20:00:00',NULL),(4,2,7,'2022-01-21','20:00:00',NULL),(4,2,6,'2022-01-25','20:00:00',NULL),(4,2,5,'2022-01-28','20:00:00',NULL),(5,1,4,'2022-01-03','08:00:00',NULL),(5,1,5,'2022-01-06','08:00:00',NULL),(5,1,6,'2022-01-10','08:00:00',NULL),(5,1,7,'2022-01-13','08:00:00',NULL),(5,1,2,'2022-01-17','08:00:00',NULL),(5,1,1,'2022-01-20','08:00:00',NULL),(5,1,4,'2022-01-24','08:00:00',NULL),(5,1,3,'2022-01-27','08:00:00',NULL),(5,1,2,'2022-01-31','08:00:00',NULL),(6,1,1,'2022-01-04','08:00:00',NULL),(6,1,3,'2022-01-07','08:00:00',NULL),(6,1,2,'2022-01-11','08:00:00',NULL),(6,1,6,'2022-01-14','08:00:00',NULL),(6,1,7,'2022-01-18','08:00:00',NULL),(6,1,4,'2022-01-21','08:00:00',NULL),(6,1,3,'2022-01-25','08:00:00',NULL),(6,1,2,'2022-01-28','08:00:00',NULL),(7,3,1,'2022-01-03','13:30:00',NULL),(7,3,5,'2022-01-05','18:00:00',NULL),(7,3,6,'2022-01-06','13:30:00',NULL),(7,3,5,'2022-01-08','18:00:00',NULL),(7,3,2,'2022-01-10','13:30:00',NULL),(7,3,1,'2022-01-12','18:00:00',NULL),(7,3,4,'2022-01-13','13:30:00',NULL),(7,3,5,'2022-01-15','18:00:00',NULL),(7,3,7,'2022-01-17','13:30:00',NULL),(7,3,7,'2022-01-19','18:00:00',NULL),(7,3,6,'2022-01-20','13:30:00',NULL),(7,3,5,'2022-01-22','18:00:00',NULL),(7,3,5,'2022-01-24','13:30:00',NULL),(7,3,5,'2022-01-26','18:00:00',NULL),(7,3,4,'2022-01-27','13:30:00',NULL),(7,3,4,'2022-01-29','18:00:00',NULL),(7,3,3,'2022-01-31','13:30:00',NULL),(8,1,2,'2022-01-03','14:30:00',NULL),(8,1,1,'2022-01-06','14:30:00',NULL),(8,1,3,'2022-01-10','14:30:00',NULL),(8,1,1,'2022-01-13','14:30:00',NULL),(8,1,2,'2022-01-17','14:30:00',NULL),(8,1,6,'2022-01-20','14:30:00',NULL),(8,1,3,'2022-01-24','14:30:00',NULL),(8,1,5,'2022-01-27','14:30:00',NULL),(8,1,4,'2022-01-31','14:30:00',NULL),(8,2,6,'2022-01-05','09:00:00',NULL),(8,2,5,'2022-01-08','09:00:00',NULL),(8,2,4,'2022-01-12','09:00:00',NULL),(8,2,3,'2022-01-15','09:00:00',NULL),(8,2,2,'2022-01-19','09:00:00',NULL),(8,2,7,'2022-01-22','09:00:00',NULL),(8,2,6,'2022-01-26','09:00:00',NULL),(8,2,5,'2022-01-29','09:00:00',NULL),(9,1,5,'2022-01-05','08:00:00',NULL),(9,1,4,'2022-01-08','08:00:00',NULL),(9,1,4,'2022-01-12','08:00:00',NULL),(9,1,4,'2022-01-15','08:00:00',NULL),(9,1,5,'2022-01-19','08:00:00',NULL),(9,1,4,'2022-01-22','08:00:00',NULL),(9,1,5,'2022-01-26','08:00:00',NULL),(9,1,3,'2022-01-29','08:00:00',NULL),(9,2,2,'2022-01-09','09:00:00',NULL),(9,2,3,'2022-01-16','09:00:00',NULL),(9,2,2,'2022-01-23','09:00:00',NULL),(9,2,3,'2022-01-30','09:00:00',NULL),(10,2,5,'2022-01-03','09:00:00',NULL),(10,2,6,'2022-01-06','09:00:00',NULL),(10,2,5,'2022-01-10','09:00:00',NULL),(10,2,6,'2022-01-13','09:00:00',NULL),(10,2,5,'2022-01-17','09:00:00',NULL),(10,2,4,'2022-01-20','09:00:00',NULL),(10,2,3,'2022-01-24','09:00:00',NULL),(10,2,2,'2022-01-27','09:00:00',NULL),(10,2,2,'2022-01-31','09:00:00',NULL),(11,6,1,'2022-01-04','13:30:00',NULL),(11,6,1,'2022-01-07','13:30:00',NULL),(11,6,1,'2022-01-11','13:30:00',NULL),(11,6,6,'2022-01-14','13:30:00',NULL),(11,6,7,'2022-01-18','13:30:00',NULL),(11,6,5,'2022-01-21','13:30:00',NULL),(11,6,4,'2022-01-25','13:30:00',NULL),(11,6,4,'2022-01-28','13:30:00',NULL),(12,5,3,'2022-01-05','10:00:00',NULL),(12,5,3,'2022-01-08','10:00:00',NULL),(12,5,2,'2022-01-12','10:00:00',NULL),(12,5,2,'2022-01-15','10:00:00',NULL),(12,5,1,'2022-01-19','10:00:00',NULL),(12,5,1,'2022-01-22','10:00:00',NULL),(12,5,1,'2022-01-26','10:00:00',NULL),(12,5,1,'2022-01-29','10:00:00',NULL),(13,6,2,'2022-01-05','14:30:00',NULL),(13,6,2,'2022-01-08','14:30:00',NULL),(13,6,3,'2022-01-12','14:30:00',NULL),(13,6,3,'2022-01-15','14:30:00',NULL),(13,6,3,'2022-01-19','14:30:00',NULL),(13,6,4,'2022-01-22','14:30:00',NULL),(13,6,4,'2022-01-26','14:30:00',NULL),(13,6,6,'2022-01-29','14:30:00',NULL),(14,2,7,'2022-01-04','09:00:00',NULL),(14,2,5,'2022-01-04','14:30:00',NULL),(14,2,7,'2022-01-07','09:00:00',NULL),(14,2,6,'2022-01-07','14:30:00',NULL),(14,2,6,'2022-01-11','09:00:00',NULL),(14,2,6,'2022-01-11','14:30:00',NULL),(14,2,6,'2022-01-14','09:00:00',NULL),(14,2,6,'2022-01-14','14:30:00',NULL),(14,2,5,'2022-01-18','09:00:00',NULL),(14,2,5,'2022-01-18','14:30:00',NULL),(14,2,5,'2022-01-21','09:00:00',NULL),(14,2,5,'2022-01-21','14:30:00',NULL),(14,2,4,'2022-01-25','09:00:00',NULL),(14,2,1,'2022-01-25','14:30:00',NULL),(14,2,1,'2022-01-28','09:00:00',NULL),(14,2,1,'2022-01-28','14:30:00',NULL),(14,3,1,'2022-01-09','08:00:00',NULL),(14,3,1,'2022-01-23','08:00:00',NULL),(15,12,1,'2022-01-05','13:30:00',NULL),(15,12,1,'2022-01-08','13:30:00',NULL),(15,12,1,'2022-01-12','13:30:00',NULL),(15,12,1,'2022-01-15','13:30:00',NULL),(15,12,2,'2022-01-19','13:30:00',NULL),(15,12,2,'2022-01-22','13:30:00',NULL),(15,12,3,'2022-01-26','13:30:00',NULL),(15,12,4,'2022-01-29','13:30:00',NULL),(16,1,4,'2022-01-04','10:00:00',NULL),(16,1,4,'2022-01-07','10:00:00',NULL),(16,1,4,'2022-01-09','10:00:00',NULL),(16,1,4,'2022-01-11','10:00:00',NULL),(16,1,6,'2022-01-14','10:00:00',NULL),(16,1,7,'2022-01-16','10:00:00',NULL),(16,1,5,'2022-01-18','10:00:00',NULL),(16,1,4,'2022-01-21','10:00:00',NULL),(16,1,3,'2022-01-23','10:00:00',NULL),(16,1,2,'2022-01-25','10:00:00',NULL),(16,1,2,'2022-01-28','10:00:00',NULL),(16,1,2,'2022-01-30','10:00:00',NULL),(17,1,3,'2022-01-03','10:00:00',NULL),(17,1,3,'2022-01-06','10:00:00',NULL),(17,1,4,'2022-01-10','10:00:00',NULL),(17,1,5,'2022-01-13','10:00:00',NULL),(17,1,6,'2022-01-17','10:00:00',NULL),(17,1,7,'2022-01-20','10:00:00',NULL),(17,1,6,'2023-01-24','10:00:00',NULL),(17,1,1,'2023-01-27','10:00:00',NULL),(17,1,1,'2023-01-31','10:00:00',NULL),(18,4,3,'2022-01-20','20:00:00',NULL),(18,4,3,'2022-01-24','20:00:00',NULL),(18,4,1,'2023-01-03','20:00:00',NULL),(18,4,2,'2023-01-06','20:00:00',NULL),(18,4,4,'2023-01-10','20:00:00',NULL),(18,4,5,'2023-01-13','20:00:00',NULL),(18,4,2,'2023-01-17','20:00:00',NULL),(18,4,2,'2023-01-27','20:00:00',NULL),(18,4,1,'2023-01-31','20:00:00',NULL),(19,1,1,'2023-01-05','20:00:00',NULL),(19,1,2,'2023-01-08','20:00:00',NULL),(19,1,3,'2023-01-12','20:00:00',NULL),(19,1,4,'2023-01-15','20:00:00',NULL),(19,1,5,'2023-01-19','20:00:00',NULL),(19,1,2,'2023-01-22','20:00:00',NULL),(19,1,1,'2023-01-26','20:00:00',NULL),(19,1,2,'2023-01-29','20:00:00',NULL),(20,1,1,'2023-01-04','19:00:00',NULL),(20,1,5,'2023-01-07','19:00:00',NULL),(20,1,5,'2023-01-11','19:00:00',NULL),(20,1,4,'2023-01-14','19:00:00',NULL),(20,1,3,'2023-01-18','19:00:00',NULL),(20,1,5,'2023-01-21','19:00:00',NULL),(20,1,6,'2023-01-25','19:00:00',NULL),(20,1,6,'2023-01-28','19:00:00',NULL),(20,3,5,'2022-01-16','08:00:00',NULL),(20,3,4,'2023-01-30','08:00:00',NULL),(21,2,2,'2022-01-15','19:00:00',NULL),(21,2,3,'2023-01-05','19:00:00',NULL),(21,2,2,'2023-01-08','19:00:00',NULL),(21,2,2,'2023-01-12','19:00:00',NULL),(21,2,2,'2023-01-19','19:00:00',NULL),(21,2,2,'2023-01-22','19:00:00',NULL),(21,2,1,'2023-01-26','19:00:00',NULL),(21,2,5,'2023-01-29','19:00:00',NULL),(21,12,4,'2023-01-09','12:30:00',NULL),(21,12,3,'2023-01-16','12:30:00',NULL),(21,12,2,'2023-01-23','12:30:00',NULL),(21,12,1,'2023-01-30','12:30:00',NULL);
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instalacion`
--

DROP TABLE IF EXISTS `instalacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instalacion` (
  `id_instalacion` int NOT NULL,
  `zona` varchar(15) NOT NULL COMMENT 'zona 24h y estándar',
  `denominacion` varchar(45) NOT NULL,
  `descripcion_zona` varchar(255) DEFAULT NULL,
  `metros_cuadrados` decimal(10,2) NOT NULL,
  `aforo` int NOT NULL,
  PRIMARY KEY (`id_instalacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instalacion`
--

LOCK TABLES `instalacion` WRITE;
/*!40000 ALTER TABLE `instalacion` DISABLE KEYS */;
INSERT INTO `instalacion` VALUES (1,'A','Sala 1 de actividades dirigidas','',60.00,20),(2,'A','Sala 2 de actividades dirigidas','',90.00,30),(3,'A','Sala de Spinning','',90.00,20),(4,'A','Zona Fitness','',100.00,20),(5,'A','Piscina interior','Piscina de natación',20.00,10),(6,'A','Piscina exterior','Piscina de natación',25.00,10),(7,'A','Baño de vapor','',50.00,15),(8,'A','Sauna','',50.00,15),(9,'A','Duchas','12 duchas',40.00,10),(10,'B','Restaurante','',300.00,60),(11,'B ','Parking','',600.00,30),(12,'C','Espacio Cardio','',100.00,30),(13,'C','Zona de Relajación','',150.00,20),(14,'C','Zona de Musculación','',100.00,20),(15,'C','Duchas','6 duchas',20.00,5);
/*!40000 ALTER TABLE `instalacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitor`
--

DROP TABLE IF EXISTS `monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitor` (
  `id_monitor` int NOT NULL AUTO_INCREMENT,
  `documento_identidad` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido1` varchar(20) NOT NULL,
  `apellido2` varchar(20) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `formacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_monitor`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitor`
--

LOCK TABLES `monitor` WRITE;
/*!40000 ALTER TABLE `monitor` DISABLE KEYS */;
INSERT INTO `monitor` VALUES (1,'46007995Y','Lionel','HERNANDEZ','','2000-06-09','Inef'),(2,'46016083C','Denis','BAG','','2001-01-10','Crossfit'),(3,'46345781N','Lana ','LATA','','1934-12-27','Gimnasia Rítmica'),(4,'46645443F','Ronni','ENGLAND','','1925-05-02','Inef'),(5,'46655639S','Stephane','PETER','','1965-08-06','Inef'),(6,'46702557K','Leo','MOOERE','','1970-03-22','Spinning'),(7,'46720532L','Sintia','NEAL','','1972-03-06','Inef');
/*!40000 ALTER TABLE `monitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan` (
  `id_plan` int NOT NULL AUTO_INCREMENT,
  `plan` varchar(45) NOT NULL,
  `tipo` char(1) DEFAULT NULL,
  `matricula` decimal(10,2) NOT NULL,
  `cuota_mensual` decimal(10,2) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id_plan`),
  UNIQUE KEY `Plan_UNIQUE` (`plan`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,'Básico mañanas','P',45.00,60.84,'Acceso a todo el gimnasio. Horario de 7:00 a 15:00'),(2,'Básico tardes','P',45.00,60.84,'Acceso a todo el gimnasio. Horario de 15:00 a 23:00'),(3,'Premium','P',45.00,83.65,'Acceso a todo el gimnasio. Horario de 7:00 a 23:00'),(4,'24h VIP','P',60.00,65.00,'Acceso a todo el gimnasio. Horario completo  + 24h en zona C'),(5,'24h','P',60.00,30.00,'24 horas de acceso en zona C'),(6,'Rosa (>  60 años)','P',0.00,30.42,'Acceso a todo el gimnasio. Horario completo'),(7,'Corporativo','C',0.00,60.84,'Acceso a todo el gimnasio. Horario completo'),(8,'Corporativo 24h','C',15.00,76.05,'Acceso a todo el gimnasio. Horario completo +24h en zona C');
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_actividad`
--

DROP TABLE IF EXISTS `plan_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_actividad` (
  `id_plan` int NOT NULL,
  `id_actividad` int NOT NULL,
  PRIMARY KEY (`id_actividad`,`id_plan`),
  KEY `plan_a` (`id_plan`),
  CONSTRAINT `actividad_p` FOREIGN KEY (`id_actividad`) REFERENCES `actividad` (`id_actividad`),
  CONSTRAINT `plan_a` FOREIGN KEY (`id_plan`) REFERENCES `plan` (`id_plan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_actividad`
--

LOCK TABLES `plan_actividad` WRITE;
/*!40000 ALTER TABLE `plan_actividad` DISABLE KEYS */;
INSERT INTO `plan_actividad` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(3,17),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(4,15),(4,16),(4,17),(4,18),(4,19),(4,20),(4,21),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,10),(5,11),(5,12),(5,13),(5,14),(5,15),(5,16),(5,17),(5,18),(5,19),(5,20),(5,21),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(6,9),(6,10),(6,11),(6,12),(6,13),(6,14),(6,15),(6,16),(6,17),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(7,8),(7,9),(7,10),(7,11),(7,12),(7,13),(7,14),(7,15),(7,16),(7,17),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(8,9),(8,10),(8,11),(8,12),(8,13),(8,14),(8,15),(8,16),(8,17),(8,18),(8,19),(8,20),(8,21);
/*!40000 ALTER TABLE `plan_actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal`
--

DROP TABLE IF EXISTS `principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `principal` (
  `idsocio` int NOT NULL,
  `cuenta` varchar(20) NOT NULL,
  `banco` varchar(45) NOT NULL,
  PRIMARY KEY (`idsocio`),
  CONSTRAINT `socio_principal` FOREIGN KEY (`idsocio`) REFERENCES `socio` (`id_socio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal`
--

LOCK TABLES `principal` WRITE;
/*!40000 ALTER TABLE `principal` DISABLE KEYS */;
INSERT INTO `principal` VALUES (1,'00491777273394810200','BANCO SANTANDER'),(2,'01222236397007887390','CITIBANK'),(3,'01828970796990655690','BANCO BBVA'),(4,'01828391523804297600','BANCO BBVA'),(5,'01227411697766120860','CITIBANK'),(7,'00498046712375308040','BANCO SANTANDER'),(8,'00819635297253577540','BANCO SABADELL'),(9,'00494004059266185710','BANCO SANTANDER'),(12,'21001178265717231000','CAIXABANC'),(14,'00497852072480477180','BANCO SANTANDER'),(15,'21004315212601148860','CAIXABANC'),(16,'00599792734336341640','BANCO MADRID'),(18,'00592181444266539510','BANCO MADRID'),(19,'00495109665304287650','BANCO SANTANDER'),(20,'00499395303578004530','BANCO SANTANDER'),(22,'00596794478878415250','BANCO MADRID'),(23,'00595519548801411480','BANCO MADRID'),(24,'01228215756530605820','CITIBANK'),(25,'00491381644398851360','BANCO SANTANDER'),(26,'21003056730071691750','CAIXABANC'),(27,'00813208566866507230','BANCO SABADELL'),(28,'01227361023165041020','CITIBANK'),(30,'01828402768867022100','BANCO BBVA'),(32,'01822383223928674070','BANCO BBVA'),(34,'00811358254499258020','BANCO SABADELL'),(35,'00499710704245262870','BANCO SANTANDER'),(38,'00819074727495311800','BANCO SABADELL'),(39,'21002640932149944340','CAIXABANC'),(41,'00495808105645368880','BANCO SANTANDER'),(42,'00595148873719725830','BANCO MADRID'),(43,'00595158752190002080','BANCO MADRID'),(45,'00497891558396231710','BANCO SANTANDER'),(46,'01826867034655265230','BANCO BBVA'),(47,'01827494144978018930','BANCO BBVA'),(48,'01821539963926149920','BANCO BBVA'),(49,'00817193634707530930','BANCO SABADELL'),(51,'21001858688259520110','CAIXABANC'),(52,'01229840961947339370','CITIBANK'),(53,'00493733033905574580','BANCO SANTANDER'),(54,'00594057282185058240','BANCO MADRID'),(55,'00596487752321293130','BANCO MADRID'),(56,'00594287953330569490','BANCO MADRID'),(57,'21004952178815440990','CAIXABANC'),(58,'01824538921677132830','BANCO BBVA'),(59,'01224015352742661520','CITIBANK'),(61,'21003421521141043350','CAIXABANC'),(63,'21001433109460395410','CAIXABANC'),(64,'21002977260273059440','CAIXABANC'),(65,'00812385786316938220','BANCO SABADELL'),(66,'21009873223188910990','CAIXABANC'),(67,'21006272679756016000','CAIXABANC'),(68,'01224812815225337180','CITIBANK'),(69,'01228891801285239130','CITIBANK'),(71,'21008703728321683600','CAIXABANC'),(74,'01229416293290598140','CITIBANK'),(76,'00494350787124207570','BANCO SANTANDER'),(77,'01828741074999198920','BANCO BBVA'),(78,'21009355848310788590','CAIXABANC'),(79,'00596912580230869110','BANCO MADRID'),(83,'01827833335406246630','BANCO BBVA'),(84,'00598880846274525520','BANCO MADRID'),(85,'00814333473313620480','BANCO SABADELL'),(86,'00499134086244456020','BANCO SANTANDER'),(88,'00496784209342802980','BANCO SANTANDER'),(89,'21005543833688188120','CAIXABANC'),(90,'00812919611397291070','BANCO SABADELL'),(91,'01221307566619599590','CITIBANK'),(92,'00812105204521229390','BANCO SABADELL'),(93,'21001379633945718220','CAIXABANC'),(94,'21002614235196297530','CAIXABANC'),(95,'01824124571251198230','BANCO BBVA'),(96,'21003119286966620900','CAIXABANC'),(98,'01221247637736057460','CITIBANK'),(99,'01226443434513103280','CITIBANK'),(100,'00591410403032091730','BANCO MADRID');
/*!40000 ALTER TABLE `principal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguimiento`
--

DROP TABLE IF EXISTS `seguimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguimiento` (
  `id_socio` int NOT NULL,
  `anno` int NOT NULL,
  `semana` int NOT NULL,
  `estatura_cm` int NOT NULL,
  `peso` decimal(10,2) NOT NULL,
  `tension_arterial` varchar(6) NOT NULL,
  `pulsaciones_reposo` int NOT NULL,
  `saturacion_oxigeno` int NOT NULL,
  `porcentaje_grasa_corporal` decimal(10,2) NOT NULL,
  `recomendaciones` varchar(45) NOT NULL,
  PRIMARY KEY (`id_socio`,`anno`,`semana`),
  CONSTRAINT `seguimiento_socio` FOREIGN KEY (`id_socio`) REFERENCES `socio` (`id_socio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguimiento`
--

LOCK TABLES `seguimiento` WRITE;
/*!40000 ALTER TABLE `seguimiento` DISABLE KEYS */;
INSERT INTO `seguimiento` VALUES (2,2022,12,150,52.00,'72/106',60,99,0.21,''),(2,2022,13,150,52.00,'71/106',60,99,0.21,''),(2,2022,14,150,52.00,'72/106',60,99,0.21,''),(2,2022,15,150,52.00,'72/106',60,100,0.21,''),(2,2022,16,150,52.00,'71/105',61,99,0.21,''),(42,2022,4,163,50.00,'75/112',67,96,0.30,''),(42,2022,5,163,50.00,'74/111',66,96,0.30,''),(42,2022,6,163,50.00,'74/110',67,97,0.30,''),(42,2022,7,163,51.00,'74/110',68,97,0.30,''),(42,2022,8,163,51.00,'74/110',68,97,0.30,''),(53,2022,3,169,75.00,'80/107',67,96,0.23,''),(53,2022,4,169,75.00,'79/106',66,97,0.23,''),(53,2022,5,169,75.00,'79/105',66,98,0.23,''),(53,2022,6,169,75.00,'78/106',65,97,0.23,''),(66,2022,4,163,57.00,'70/115',66,97,0.26,''),(66,2022,5,163,57.00,'71/116',66,98,0.26,''),(66,2022,6,163,57.00,'71/116',65,97,0.26,''),(66,2022,7,163,57.00,'71/116',64,97,0.26,''),(68,2022,7,190,78.00,'76/118',64,97,0.15,''),(68,2022,8,190,78.00,'76/119',63,97,0.15,''),(68,2022,9,190,78.00,'76/119',63,98,0.15,''),(68,2022,10,190,78.00,'76/119',63,99,0.15,''),(68,2022,11,190,78.00,'75/119',62,99,0.15,''),(92,2022,10,170,50.00,'76/122',67,97,0.22,''),(92,2022,11,170,50.00,'77/122',68,97,0.22,''),(92,2022,12,170,50.00,'77/121',67,97,0.22,''),(92,2022,13,170,50.00,'77/121',66,96,0.22,'');
/*!40000 ALTER TABLE `seguimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socio`
--

DROP TABLE IF EXISTS `socio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socio` (
  `id_socio` int NOT NULL AUTO_INCREMENT,
  `documento_identidad` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido1` varchar(20) NOT NULL,
  `apellido2` varchar(20) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `id_plan` int NOT NULL,
  `fecha_alta` date NOT NULL,
  `activo` tinyint NOT NULL,
  `tarjeta_acceso` varchar(15) DEFAULT NULL,
  `telefono_contacto` varchar(15) NOT NULL,
  `email` varchar(45) NOT NULL,
  `codigo_postal` char(5) NOT NULL,
  `enfermedades` varchar(255) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_socio`),
  KEY `socio_plan_idx` (`id_plan`),
  CONSTRAINT `socio_plan` FOREIGN KEY (`id_plan`) REFERENCES `plan` (`id_plan`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socio`
--

LOCK TABLES `socio` WRITE;
/*!40000 ALTER TABLE `socio` DISABLE KEYS */;
INSERT INTO `socio` VALUES (1,'46000995Y','Laurie','HERNANDEZ','','M','2000-06-09',1,'2022-02-19',1,NULL,'655845494','hernandez_l@gymsport.com','28016',NULL,'Gimnasia Artística'),(2,'46011083C','Demi','BAGBI','','M','2001-01-10',4,'2022-03-13',1,'DEBA00002','651877531','bagbi_d@gymsport.com','41045',NULL,'Crossfit'),(3,'46342781N','Larisa ','LATYNINA','','M','1934-12-27',6,'2022-01-11',1,NULL,'655893028','latynina_l@gymsport.com','38009',NULL,'Gimnasia Rítmica'),(4,'46642443F','Roy','ENGLERT','','H','1925-05-02',6,'2022-02-28',1,NULL,'657472808','englert_r@gymsport.com','38045',NULL,'Béisbol'),(5,'46650639S','Stephane','PETERHANSEL','','H','1965-08-06',4,'2022-02-24',1,'STPE00005','652535392','peterhansel_s@gymsport.com','41023',NULL,'Rallies'),(6,'46702257K','Leontien','VAN MOORSEL','','M','1970-03-22',7,'2019-02-24',0,NULL,'651314274','van moorsel_l@gymsport.com','29026',NULL,'Ciclismo'),(7,'46720632L','Shaquille','O\'NEAL','','H','1972-03-06',1,'2022-02-28',1,NULL,'655234165','oneal_s@gymsport.com','28005',NULL,'Baloncesto'),(8,'46721131N','Kelly','SLATER','','H','1972-02-11',2,'2022-01-06',1,NULL,'656809138','slater_k@gymsport.com','08009',NULL,'Surf'),(9,'46722325X','Zinedine','ZIDANNE','','H','1972-06-23',3,'2021-03-01',1,NULL,'656028682','zidanne_z@gymsport.com','28016',NULL,'Fútbol'),(10,'46741434Y','Hicham','EL-GUERROUJ','','H','1974-09-14',7,'2022-02-11',1,NULL,'651339020','el_guerrouj_h@gymsport.com','29006',NULL,'Atletismo'),(11,'46742650A','Sebastien','LOEB','','H','1974-02-26',7,'2022-02-15',1,NULL,'657154866','loeb_s@gymsport.com','29024',NULL,'Rallies'),(13,'46760276B','Núria','PICAS','','M','1976-11-02',7,'2018-04-09',0,NULL,'652560837','picas_n@gymsport.com','29036',NULL,'Carrera montaña'),(14,'46762219E','Nazario','RONALDO','DE LIMA','H','1976-09-22',1,'2022-02-06',1,NULL,'651333069','ronaldo_n@gymsport.com','28023',NULL,'Fútbol'),(15,'46762528D','Tim','DUNCAN','','H','1976-04-25',3,'2022-02-12',1,NULL,'656605821','duncan_t@gymsport.com','48046',NULL,'Baloncesto'),(16,'46770318W','Tom','BRADY','','H','1977-08-03',5,'2022-03-14',1,'TOBR00016','655124869','brady_t@gymsport.com','46046',NULL,'Fútbol Americano'),(17,'46772430K','Floyd','MAYWEATHER JR','','H','1977-02-24',8,'2022-01-09',1,'FLMA00017','659044572','mayweather jr_f@gymsport.com','15024',NULL,'Boxeo'),(18,'46773064B','Laila','ALI','','M','1977-12-30',5,'2022-01-05',1,'LAAL00018','652743995','ali_l@gymsport.com','46006',NULL,'Boxeo'),(19,'46781716S','Many','PACQUIAO','','H','1978-12-17',1,'2022-02-26',1,NULL,'659470289','pacquiao_m@gymsport.com','28036',NULL,'Boxeo'),(20,'46781947Q','Dirk','NOWITSKI','','H','1978-06-19',1,'2022-01-15',1,NULL,'658295424','nowitski_d@gymsport.com','28026',NULL,'Baloncesto'),(21,'46782305Y','Kobe','BRYAN','','H','1978-08-23',7,'2022-01-08',1,NULL,'659020517','bryan_k@gymsport.com','29016',NULL,'Baloncesto'),(22,'46790174D','Ruth','BEITIA','VILA','M','1979-04-01',5,'2022-01-24',1,'RUBE00022','656479812','beitia_r@gymsport.com','46006',NULL,'Atletismo'),(23,'46791609H','Valentino','ROSSI','','H','1979-02-16',5,'2022-01-17',1,'VARO00023','655948450','rossi_v@gymsport.com','46023',NULL,'Motociclismo'),(24,'46801569L','Almudena ','CID','TOSTADO','M','1980-06-15',4,'2019-08-01',0,'ALCI00024','659713965','cid_a@gymsport.com','41023',NULL,'Gimnasia Rítmica'),(25,'46801678J','Sue ','BIRD','','M','1980-10-16',1,'2017-11-28',0,NULL,'651166318','bird_s@gymsport.com','28046',NULL,'Baloncesto'),(26,'46801772S','Rafael','NADAL','PARERA','H','1986-06-03',3,'2018-05-27',0,NULL,'654213754','nadal_r@gymsport.com','48005',NULL,'Tennis'),(27,'46802122C','Ronaldinho','DE_ASSIS','MOREIRA','H','1980-03-21',2,'2019-08-14',0,NULL,'654326568','de_assis_r@gymsport.com','08005',NULL,'Fútbol'),(28,'46802548D','Alejandro','VALVERDE','BELMONTE','H','1980-04-25',4,'2019-09-06',0,'ALVA00028','659076254','valverde_a@gymsport.com','41046',NULL,'Ciclismo'),(29,'46802841A','Bradley ','WIGGINS','','H','1980-04-28',7,'2017-08-13',0,NULL,'654629397','wiggins_b@gymsport.com','29009',NULL,'Ciclismo'),(30,'46810803F','David ','KUCHERAWY','','H','1952-09-14',6,'2022-03-22',1,NULL,'659065986','kucherawy_d@gymsport.com','38045',NULL,'Atletismo'),(31,'46811844J','Fabian','CANCELLARA','','H','1981-03-18',7,'2022-01-19',1,NULL,'654425214','cancellara_f@gymsport.com','29006',NULL,'Ciclismo'),(32,'46812598P','Nancy','COX','','M','1951-10-23',6,'2022-03-16',1,NULL,'655167026','cox_n@gymsport.com','38046',NULL,'Patinaje Artístico'),(33,'46812673Z','Serena','WILLIAMS','','M','1981-09-26',8,'2022-03-24',1,'SEWI00033','656722080','williams_s@gymsport.com','15045',NULL,'Tennis'),(34,'46812946B','Fernando','ALONSO','DÍAZ','H','1981-07-29',3,'2021-03-17',1,NULL,'652779225','alonso_f@gymsport.com','08036',NULL,'Fórmula 1'),(35,'46820629N','Alberto','CONTADOR','VELASCO','H','1982-12-06',1,'2022-03-13',1,NULL,'652656658','contador_a@gymsport.com','28023',NULL,'Ciclismo'),(36,'46821177P','Diana','TAURASI','','M','1982-06-11',8,'2022-03-06',1,'DITA00036','659603580','taurasi_d@gymsport.com','15026',NULL,'Baloncesto'),(37,'46821327C','Kenenisa','BEKELE','','H','1982-06-13',7,'2022-03-22',1,NULL,'657892957','bekele_k@gymsport.com','29026',NULL,'Atletismo'),(38,'46822385C','Natalie ','COUGHLIN','','M','1982-08-23',2,'2022-01-16',1,NULL,'654207028','coughlin_n@gymsport.com','08016',NULL,'Natación'),(39,'46830254T','Tina','MAZE','','M','1983-05-02',3,'2022-03-13',1,NULL,'653446743','maze_t@gymsport.com','48006',NULL,'Esquí'),(40,'46830282M','Tina','MAZE','','M','1983-05-02',8,'2022-03-02',1,'TIMA00040','656926391','maze_t@gymsport.com','15005',NULL,'Esquí'),(41,'46831152R','Lauryn ','WILLIAMS','','M','1983-09-11',1,'2022-02-03',1,NULL,'651994759','williams_l@gymsport.com','28005',NULL,'Atletismo'),(42,'46831253X','Alina','KABAYEVA','','M','1983-05-12',5,'2022-01-17',1,'ALKA00042','654732864','kabayeva_a@gymsport.com','46045',NULL,'Gimnasia Rítmica'),(43,'46840514W','Eliud','KIPCHOGE','','H','1984-11-05',5,'2022-01-05',1,'ELKI00043','656959220','kipchoge_e@gymsport.com','46006',NULL,'Atletismo'),(44,'46841124Z','Nikola','KARABATIC','','H','1984-04-11',7,'2022-01-15',1,NULL,'652536725','karabatic_n@gymsport.com','29006',NULL,'Balonmano'),(45,'46841137G','Andrés','INIESTA','LUJÁN','H','1984-05-11',1,'2022-03-15',1,NULL,'652996103','iniesta_a@gymsport.com','28026',NULL,'Fútbol'),(46,'46841255F','Betty','GOEDHART','','M','1933-10-18',6,'2022-03-17',1,NULL,'654219685','goedhart_b@gymsport.com','38016',NULL,'Acrobacia'),(47,'46841435A','Chester','YORTON','','H','1939-07-01',6,'2018-05-12',0,NULL,'656713383','yorton_c@gymsport.com','38016',NULL,'Culturismo'),(48,'46843015L','John','GOLDMAN','','H','1941-12-30',6,'2022-02-22',1,NULL,'653323959','goldman_j@gymsport.com','38016',NULL,'Rugby'),(49,'46850336A','Ricardinho','DA_SILVA','BRAGA','H','1985-09-03',2,'2022-02-08',1,NULL,'655190394','da_silva_r@gymsport.com','08036',NULL,'Fútbol Sala'),(50,'46850510Q','Cristiano','RONALDO','','H','1985-02-05',7,'2022-01-02',1,NULL,'652099733','ronaldo_c@gymsport.com','29024',NULL,'Fútbol'),(51,'46850708F','Lewis','HAMILTON','','H','1985-01-07',3,'2022-03-04',1,NULL,'659234821','hamilton_l@gymsport.com','48046',NULL,'Fórmula 1'),(52,'46850851N','Anita','WLODARKZYC','','M','1985-08-08',4,'2022-03-21',1,'ANWL00052','655890482','wlodarkzyc_a@gymsport.com','41009',NULL,'Atletismo'),(53,'46851070R','Lydia','VALENTIN','PÉREZ','M','1985-02-10',1,'2022-01-11',1,NULL,'654348469','valentin_l@gymsport.com','28024',NULL,'Halterofilia'),(54,'46851110H','Laia','SANZ','PLA-GIRIBERT','M','1985-12-11',5,'2022-03-28',1,'LASA00054','652685761','sanz_l@gymsport.com','46024',NULL,'Trial'),(55,'46852017M','Chris','FROOME','','H','1985-05-20',5,'2022-02-17',1,'CHFR00055','653925425','froome_c@gymsport.com','46026',NULL,'Ciclismo'),(56,'46852059R','Adriana','JIMENEZ','','M','1985-01-20',5,'2022-02-11',1,'ADJI00056','651544897','jimenez_a@gymsport.com','46023',NULL,'Clavado'),(57,'46853001T','Michael','PHELPS','','H','1985-06-30',3,'2022-01-05',1,NULL,'653016190','phelps_m@gymsport.com','48009',NULL,'Natación'),(58,'46860304N','Ernestine','SHEPHERD','','M','1936-06-08',6,'2022-03-19',1,NULL,'653431629','shepherd_e@gymsport.com','38006',NULL,'Tennis'),(59,'46861984J','Marta','VIEIRA','DA SILVA','M','1986-02-19',4,'2022-01-16',1,'MAVI00059','654560948','vieira_m@gymsport.com','41006',NULL,'Fútbol'),(60,'46862102Q','Usain','BOLT','','H','1986-08-21',7,'2022-01-03',1,NULL,'659833439','bolt_u@gymsport.com','29005',NULL,'Atletismo'),(61,'46870175Q','Ronda','ROUSEY','','M','1987-02-01',3,'2022-03-17',1,NULL,'657842117','rousey_r@gymsport.com','48016',NULL,'Artes Marciales'),(62,'46870333J','Sebastian','VETTEL','','H','1987-07-03',7,'2022-01-20',1,NULL,'653169856','vettel_s@gymsport.com','29045',NULL,'Fórmula 1'),(63,'46872211M','Novak','DJOKOVIC','','H','1987-05-22',3,'2022-01-20',1,NULL,'657405839','djokovic_n@gymsport.com','48009',NULL,'Tennis'),(64,'46872407V','Lionel','MESSI','','H','1987-06-24',3,'2022-03-11',1,NULL,'653440181','messi_l@gymsport.com','48026',NULL,'Fútbol'),(65,'46872720P','Kilian','JORNET','BURGADA','H','1987-10-27',2,'2022-01-03',1,NULL,'655177977','jornet_k@gymsport.com','08024',NULL,'Carrera montaña'),(66,'46873088P','Flora','DUFFY','','M','1987-09-30',3,'2022-01-15',1,NULL,'653381109','duffy_f@gymsport.com','48046',NULL,'Triatlón'),(67,'46881449C','Conor','MCGREGOR','','H','1988-07-14',3,'2022-02-09',1,NULL,'654989247','mcgregor_c@gymsport.com','48023',NULL,'Artes Marciales'),(68,'46881745V','David ','RUDISHA','','H','1988-12-17',4,'2022-02-06',1,'DARU00068','656900094','rudisha_d@gymsport.com','41016',NULL,'Atletismo'),(69,'46881879J','Elizabeth ','DEIGNAN','','M','1988-12-18',4,'2022-01-14',1,'ELDE00069','659093665','deignan_e@gymsport.com','41023',NULL,'Ciclismo'),(70,'46882340Z','Alistair ','BROWNLEE','','H','1988-04-23',8,'2022-01-18',1,'ALBR00070','657239764','brownlee_a@gymsport.com','15024',NULL,'Triatlón'),(71,'46882442R','Daniel','DE_FARIA','DIAS','H','1988-05-24',3,'2022-02-12',1,NULL,'658886404','de_faria_d@gymsport.com','48005',NULL,'Natación'),(72,'46890221Y','Marcel','HIRSCHER','','H','1989-03-02',7,'2022-03-24',1,NULL,'658134916','hirscher_m@gymsport.com','29009',NULL,'Esquí'),(73,'46890292P','Alex','MORGAN','CARRASCO','M','1989-07-02',8,'2022-02-09',1,'ALMO00073','655552429','morgan_a@gymsport.com','15005',NULL,'Fútbol'),(74,'46890323Q','Kohei','UCHIMURA','','H','1989-01-03',4,'2022-02-14',1,'KOUC00074','657065474','uchimura_k@gymsport.com','41045',NULL,'Gimnasia Artística'),(75,'46890397K','Katinka ','HOSSZÚ','','M','1989-05-03',7,'2022-01-24',1,NULL,'657479464','hosszu_k@gymsport.com','29026',NULL,'Natación'),(76,'46890726M','Teddy','RINER','','H','1989-04-07',1,'2022-03-27',1,NULL,'658499919','riner_t@gymsport.com','28036',NULL,'Judo'),(77,'46891180E','Marie','NEAVES','','M','1947-06-14',6,'2022-02-11',1,NULL,'653960229','neaves_m@gymsport.com','38024',NULL,'Triatlón'),(78,'46892058A','Paola ','LONGORIA','','M','1989-07-20',3,'2022-01-12',1,NULL,'654753219','longoria_p@gymsport.com','48046',NULL,'Ráquetbol'),(79,'46893091R','Alba','TORRENS','SALOM','M','1989-08-30',5,'2022-02-15',1,'ALTO00079','657360468','torrens_a@gymsport.com','46009',NULL,'Baloncesto'),(80,'46900994S','Jennifer','HERMOSO','FUENTES','M','1990-05-09',8,'2019-03-28',0,'JEHE00080','655739115','hermoso_j@gymsport.com','15006',NULL,'Fútbol'),(81,'46901065V','Mireia','BELMONTE','GARCÍA','M','1990-11-10',7,'2019-02-03',0,NULL,'651426650','belmonte_m@gymsport.com','29016',NULL,'Natación'),(82,'46901638S','Ben ','SMITH','','H','1990-05-16',8,'2019-05-17',0,'BESM00082','654266996','smith_b@gymsport.com','15046',NULL,'Crossfit'),(83,'46902587K','Lesley ','MAXWELL','','M','1956-08-23',6,'2022-01-15',1,NULL,'655186909','maxwell_l@gymsport.com','38026',NULL,'Patinaje Artístico'),(84,'46911061P','Mariana','PAJÓN','LONDOÑO','M','1991-10-10',5,'2022-01-19',1,'MAPA00084','651360203','pajon_m@gymsport.com','46009',NULL,'BMX'),(85,'46930866X','Garbiñe ','MUGURUZA','BLANCO','M','1993-10-08',2,'2022-01-21',1,NULL,'652063123','muguruza_g@gymsport.com','08036',NULL,'Tennis'),(86,'46931363R','Leticia','BUFONI','SILVA','M','1993-04-13',1,'2022-01-20',1,NULL,'657950858','bufoni_l@gymsport.com','28045',NULL,'Skate'),(87,'46931567K','Carolina ','MARÍN','MARTÍN','M','1993-06-15',8,'2022-03-26',1,'CAMA00087','653718015','marin_c@gymsport.com','15026',NULL,'Badmiton'),(88,'46931712M','Marc','MARQUEZ','ALENTÀ','H','1993-02-17',1,'2022-02-13',1,NULL,'652021090','marquez_m@gymsport.com','28005',NULL,'Motociclismo'),(89,'46941468D','Gisela ','PULIDO','BORRELL','M','1994-01-14',3,'2022-03-11',1,NULL,'652924480','pulido_g@gymsport.com','48046',NULL,'Kitesurf'),(90,'46942660M','Marcela','ZACARÍAS','','M','1994-03-26',2,'2022-02-14',1,NULL,'657868950','zacarias_m@gymsport.com','08024',NULL,'Tennis'),(91,'46942790C','Breanna','STEWART','','M','1994-08-27',4,'2022-01-01',1,'BRST00091','651725586','stewart_b@gymsport.com','41024',NULL,'Baloncesto'),(92,'46950196C','Rita','MAMUM','','M','1995-11-01',2,'2022-02-28',1,NULL,'658010902','mamum_r@gymsport.com','08036',NULL,'Gimnasia Rítmica'),(93,'46951093C','Ada','HEGERBERG','','M','1995-07-10',3,'2022-01-20',1,NULL,'659496176','hegerberg_a@gymsport.com','48045',NULL,'Fútbol'),(95,'46952199E','Josefina','MONASTERIOS','','M','1946-04-16',6,'2022-03-18',1,NULL,'656294290','monasterios_j@gymsport.com','38023',NULL,'Atletismo'),(96,'46952962A','Kate','COURTNEY','','M','1995-10-29',3,'2022-01-15',1,NULL,'657128923','courtney_k@gymsport.com','48005',NULL,'Ciclismo'),(97,'46971471C','Simone','BILES','','M','1997-03-14',8,'2022-02-28',1,'SIBI00097','657914581','biles_s@gymsport.com','15009',NULL,'Gimnasia Artística'),(98,'46971786J','Katie ','LEDECKY','','M','1997-03-17',4,'2022-01-20',1,'KALE00098','652305676','ledecky_k@gymsport.com','41036',NULL,'Natación'),(99,'46982089N','Jamie ','CHADWIK','','M','1998-05-20',4,'2022-01-18',1,'JACH00099','652907137','chadwik_j@gymsport.com','41023',NULL,'Automovilismo'),(100,'46992213Q','Mick','SCHUMACHER','','H','1999-03-22',5,'2022-03-15',1,'MISC00100','656865088','schumacher_m@gymsport.com','46045',NULL,'Fórmula 1'),(101,'43285894F','Antoni','FERNANDEZ','ALMECIJA','M','1998-02-11',1,'2023-05-14',1,NULL,'644370645','afernandezalme@uoc.edu','8224',NULL,'Gimnasia Artística'),(102,'12345678X','María','LOPEZ','GARCIA','F','1995-08-22',1,'2023-05-14',1,NULL,'611223344','maria.lopez@example.com','28001',NULL,'Gimnasia Artística'),(103,'87654321A','David','MARTINEZ','PEREZ','M','1988-05-14',1,'2023-05-14',1,NULL,'633445566','david.martinez@example.com','41001',NULL,'Gimnasia Artística'),(104,'27658945D','Laura','MARTINEZ','GONZALEZ','F','1985-07-25',1,'2023-05-14',1,NULL,'666554433','lmartinezg@gmail.com','28026',NULL,'Gimnasia Artística');
/*!40000 ALTER TABLE `socio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16  0:03:50
