CREATE DATABASE  IF NOT EXISTS `inventario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inventario`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: inventario
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `andamio`
--

DROP TABLE IF EXISTS `andamio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `andamio` (
  `cod_andamio` int NOT NULL,
  `descripcion_andamio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cod_andamio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `andamio`
--

LOCK TABLES `andamio` WRITE;
/*!40000 ALTER TABLE `andamio` DISABLE KEYS */;
/*!40000 ALTER TABLE `andamio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `cod_categoria` int NOT NULL,
  `nombre_categoria` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cod_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clienteempresa`
--

DROP TABLE IF EXISTS `clienteempresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clienteempresa` (
  `cod_empresa` int NOT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `ruc` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cod_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienteempresa`
--

LOCK TABLES `clienteempresa` WRITE;
/*!40000 ALTER TABLE `clienteempresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `clienteempresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientepersona`
--

DROP TABLE IF EXISTS `clientepersona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientepersona` (
  `cod_persona` int NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `dni` varchar(15) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cod_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientepersona`
--

LOCK TABLES `clientepersona` WRITE;
/*!40000 ALTER TABLE `clientepersona` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientepersona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleubicacion`
--

DROP TABLE IF EXISTS `detalleubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalleubicacion` (
  `cod_detalleub` int NOT NULL,
  `stock` int DEFAULT NULL,
  `producto_fk` int DEFAULT NULL,
  `ubicacion_fk` int DEFAULT NULL,
  PRIMARY KEY (`cod_detalleub`),
  KEY `producto_fk` (`producto_fk`),
  KEY `ubicacion_fk` (`ubicacion_fk`),
  CONSTRAINT `detalleubicacion_ibfk_1` FOREIGN KEY (`producto_fk`) REFERENCES `producto` (`cod_producto`),
  CONSTRAINT `detalleubicacion_ibfk_2` FOREIGN KEY (`ubicacion_fk`) REFERENCES `ubicacion` (`cod_ubicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleubicacion`
--

LOCK TABLES `detalleubicacion` WRITE;
/*!40000 ALTER TABLE `detalleubicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalleubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `cod_estado` int NOT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `descripcion_estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cod_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_factura`
--

DROP TABLE IF EXISTS `pedido_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_factura` (
  `cod_pedido` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `cliente_persona_fk` int DEFAULT NULL,
  `estado_fk` int DEFAULT NULL,
  `tipo_entrega_fk` int DEFAULT NULL,
  PRIMARY KEY (`cod_pedido`),
  KEY `cliente_persona_fk` (`cliente_persona_fk`),
  KEY `estado_fk` (`estado_fk`),
  KEY `tipo_entrega_fk` (`tipo_entrega_fk`),
  CONSTRAINT `pedido_factura_ibfk_1` FOREIGN KEY (`cliente_persona_fk`) REFERENCES `clientepersona` (`cod_persona`),
  CONSTRAINT `pedido_factura_ibfk_2` FOREIGN KEY (`estado_fk`) REFERENCES `estado` (`cod_estado`),
  CONSTRAINT `pedido_factura_ibfk_3` FOREIGN KEY (`tipo_entrega_fk`) REFERENCES `tipo_entrega` (`cod_tipoentrega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_factura`
--

LOCK TABLES `pedido_factura` WRITE;
/*!40000 ALTER TABLE `pedido_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piso`
--

DROP TABLE IF EXISTS `piso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `piso` (
  `cod_piso` int NOT NULL,
  `descripcion_piso` varchar(255) DEFAULT NULL,
  `andamio_fk` int DEFAULT NULL,
  PRIMARY KEY (`cod_piso`),
  KEY `andamio_fk` (`andamio_fk`),
  CONSTRAINT `piso_ibfk_1` FOREIGN KEY (`andamio_fk`) REFERENCES `andamio` (`cod_andamio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piso`
--

LOCK TABLES `piso` WRITE;
/*!40000 ALTER TABLE `piso` DISABLE KEYS */;
/*!40000 ALTER TABLE `piso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `cod_producto` int NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre_producto` varchar(255) DEFAULT NULL,
  `categoria_fk` int DEFAULT NULL,
  PRIMARY KEY (`cod_producto`),
  KEY `categoria_fk` (`categoria_fk`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_fk`) REFERENCES `categoria` (`cod_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `row_pedido`
--

DROP TABLE IF EXISTS `row_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `row_pedido` (
  `cod_rowpedido` int NOT NULL,
  `cantidad` int DEFAULT NULL,
  `producto_fk` int DEFAULT NULL,
  `pedido_factura_fk` int DEFAULT NULL,
  PRIMARY KEY (`cod_rowpedido`),
  KEY `producto_fk` (`producto_fk`),
  KEY `pedido_factura_fk` (`pedido_factura_fk`),
  CONSTRAINT `row_pedido_ibfk_1` FOREIGN KEY (`producto_fk`) REFERENCES `producto` (`cod_producto`),
  CONSTRAINT `row_pedido_ibfk_2` FOREIGN KEY (`pedido_factura_fk`) REFERENCES `pedido_factura` (`cod_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `row_pedido`
--

LOCK TABLES `row_pedido` WRITE;
/*!40000 ALTER TABLE `row_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `row_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_entrega`
--

DROP TABLE IF EXISTS `tipo_entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_entrega` (
  `cod_tipoentrega` int NOT NULL,
  `descripcion_entrega` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `distrito` varchar(255) DEFAULT NULL,
  `parentesco` varchar(255) DEFAULT NULL,
  `persona_recepcion` varchar(255) DEFAULT NULL,
  `telefono_referencia` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cod_tipoentrega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_entrega`
--

LOCK TABLES `tipo_entrega` WRITE;
/*!40000 ALTER TABLE `tipo_entrega` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicacion`
--

DROP TABLE IF EXISTS `ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ubicacion` (
  `cod_ubicacion` int NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `piso_fk` int DEFAULT NULL,
  PRIMARY KEY (`cod_ubicacion`),
  KEY `piso_fk` (`piso_fk`),
  CONSTRAINT `ubicacion_ibfk_1` FOREIGN KEY (`piso_fk`) REFERENCES `piso` (`cod_piso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicacion`
--

LOCK TABLES `ubicacion` WRITE;
/*!40000 ALTER TABLE `ubicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-30  1:03:20
