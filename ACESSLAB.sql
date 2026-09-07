-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: acesslab
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
-- Table structure for table `acessibilidade`
--

DROP TABLE IF EXISTS `acessibilidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acessibilidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_lab` int DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `descricao` text,
  `nivel` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_lab` (`id_lab`),
  CONSTRAINT `acessibilidade_ibfk_1` FOREIGN KEY (`id_lab`) REFERENCES `lab` (`id_lab`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acessibilidade`
--

LOCK TABLES `acessibilidade` WRITE;
/*!40000 ALTER TABLE `acessibilidade` DISABLE KEYS */;
INSERT INTO `acessibilidade` VALUES (1,1,'Fisica','Espaco para circulacao','PARCIAL'),(2,2,'Digital','Recursos de acessibilidade','ADEQUADO'),(3,3,'Mobiliario','Mesas adaptadas','INADEQUADO');
/*!40000 ALTER TABLE `acessibilidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checklist`
--

DROP TABLE IF EXISTS `checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checklist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_lab` int DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `data_avaliacao` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_lab` (`id_lab`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `checklist_ibfk_1` FOREIGN KEY (`id_lab`) REFERENCES `lab` (`id_lab`),
  CONSTRAINT `checklist_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checklist`
--

LOCK TABLES `checklist` WRITE;
/*!40000 ALTER TABLE `checklist` DISABLE KEYS */;
INSERT INTO `checklist` VALUES (1,1,2,'2026-09-01'),(2,2,2,'2026-09-02'),(3,3,3,'2026-09-03');
/*!40000 ALTER TABLE `checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipamento`
--

DROP TABLE IF EXISTS `equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipamento` (
  `id_equip` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_equip`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipamento`
--

LOCK TABLES `equipamento` WRITE;
/*!40000 ALTER TABLE `equipamento` DISABLE KEYS */;
INSERT INTO `equipamento` VALUES (1,'Teclado adaptado','Entrada',5,'BOM'),(2,'Mouse adaptado','Entrada',5,'BOM'),(3,'Monitor ampliado','Saida',3,'BOM');
/*!40000 ALTER TABLE `equipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_solicitacao`
--

DROP TABLE IF EXISTS `hist_solicitacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hist_solicitacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_solicitacao` int DEFAULT NULL,
  `status_anterior` varchar(30) DEFAULT NULL,
  `status_novo` varchar(30) DEFAULT NULL,
  `observacao` text,
  PRIMARY KEY (`id`),
  KEY `id_solicitacao` (`id_solicitacao`),
  CONSTRAINT `hist_solicitacao_ibfk_1` FOREIGN KEY (`id_solicitacao`) REFERENCES `solicitacao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_solicitacao`
--

LOCK TABLES `hist_solicitacao` WRITE;
/*!40000 ALTER TABLE `hist_solicitacao` DISABLE KEYS */;
INSERT INTO `hist_solicitacao` VALUES (1,1,NULL,'PENDENTE','Solicitacao criada'),(2,2,NULL,'EM_ANALISE','Solicitacao recebida'),(3,3,'PENDENTE','CONCLUIDA','Solicitacao atendida');
/*!40000 ALTER TABLE `hist_solicitacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_checklist`
--

DROP TABLE IF EXISTS `item_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_checklist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_checklist`
--

LOCK TABLES `item_checklist` WRITE;
/*!40000 ALTER TABLE `item_checklist` DISABLE KEYS */;
INSERT INTO `item_checklist` VALUES (1,'Espaco adequado para circulacao','Fisico'),(2,'Mobiliario adaptado','Mobiliario'),(3,'Equipamentos acessiveis','Equipamento');
/*!40000 ALTER TABLE `item_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_orcamento`
--

DROP TABLE IF EXISTS `item_orcamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_orcamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_orcamento` int DEFAULT NULL,
  `id_equip` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `valor_unitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_orcamento` (`id_orcamento`),
  KEY `id_equip` (`id_equip`),
  CONSTRAINT `item_orcamento_ibfk_1` FOREIGN KEY (`id_orcamento`) REFERENCES `orcamento` (`id`),
  CONSTRAINT `item_orcamento_ibfk_2` FOREIGN KEY (`id_equip`) REFERENCES `equipamento` (`id_equip`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_orcamento`
--

LOCK TABLES `item_orcamento` WRITE;
/*!40000 ALTER TABLE `item_orcamento` DISABLE KEYS */;
INSERT INTO `item_orcamento` VALUES (1,1,1,2,300.00),(2,2,2,2,200.00),(3,3,3,1,600.00);
/*!40000 ALTER TABLE `item_orcamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab`
--

DROP TABLE IF EXISTS `lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab` (
  `id_lab` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `localizacao` varchar(100) DEFAULT NULL,
  `capacidade` int DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_lab`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab`
--

LOCK TABLES `lab` WRITE;
/*!40000 ALTER TABLE `lab` DISABLE KEYS */;
INSERT INTO `lab` VALUES (1,'Lab 01','Bloco A',30,'PARCIAL'),(2,'Lab 02','Bloco B',25,'ACESSIVEL'),(3,'Lab 03','Bloco C',20,'INAcessivel'),(4,'Lab 04','Bloco D',35,'ACESSIVEL');
/*!40000 ALTER TABLE `lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_equip`
--

DROP TABLE IF EXISTS `lab_equip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_equip` (
  `id_lab` int DEFAULT NULL,
  `id_equip` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  KEY `id_lab` (`id_lab`),
  KEY `id_equip` (`id_equip`),
  CONSTRAINT `lab_equip_ibfk_1` FOREIGN KEY (`id_lab`) REFERENCES `lab` (`id_lab`),
  CONSTRAINT `lab_equip_ibfk_2` FOREIGN KEY (`id_equip`) REFERENCES `equipamento` (`id_equip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_equip`
--

LOCK TABLES `lab_equip` WRITE;
/*!40000 ALTER TABLE `lab_equip` DISABLE KEYS */;
INSERT INTO `lab_equip` VALUES (1,1,2),(1,2,2),(2,3,1);
/*!40000 ALTER TABLE `lab_equip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orcamento`
--

DROP TABLE IF EXISTS `orcamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orcamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_solicitacao` int DEFAULT NULL,
  `descricao` text,
  `valor` decimal(10,2) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_solicitacao` (`id_solicitacao`),
  CONSTRAINT `orcamento_ibfk_1` FOREIGN KEY (`id_solicitacao`) REFERENCES `solicitacao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orcamento`
--

LOCK TABLES `orcamento` WRITE;
/*!40000 ALTER TABLE `orcamento` DISABLE KEYS */;
INSERT INTO `orcamento` VALUES (1,1,'Adaptacao dos corredores',1500.00,'PENDENTE'),(2,2,'Compra de mesa adaptada',800.00,'EM_ANALISE'),(3,3,'Compra de teclado adaptado',600.00,'APROVADO');
/*!40000 ALTER TABLE `orcamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resposta_checklist`
--

DROP TABLE IF EXISTS `resposta_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resposta_checklist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_checklist` int DEFAULT NULL,
  `id_item` int DEFAULT NULL,
  `resultado` varchar(30) DEFAULT NULL,
  `observacao` text,
  PRIMARY KEY (`id`),
  KEY `id_checklist` (`id_checklist`),
  KEY `id_item` (`id_item`),
  CONSTRAINT `resposta_checklist_ibfk_1` FOREIGN KEY (`id_checklist`) REFERENCES `checklist` (`id`),
  CONSTRAINT `resposta_checklist_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `item_checklist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resposta_checklist`
--

LOCK TABLES `resposta_checklist` WRITE;
/*!40000 ALTER TABLE `resposta_checklist` DISABLE KEYS */;
INSERT INTO `resposta_checklist` VALUES (1,1,1,'PARCIAL',NULL),(2,2,2,'ATENDE',NULL),(3,3,3,'NAO_ATENDE',NULL);
/*!40000 ALTER TABLE `resposta_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitacao`
--

DROP TABLE IF EXISTS `solicitacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_lab` int DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descricao` text,
  `prioridade` varchar(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_lab` (`id_lab`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `solicitacao_ibfk_1` FOREIGN KEY (`id_lab`) REFERENCES `lab` (`id_lab`),
  CONSTRAINT `solicitacao_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitacao`
--

LOCK TABLES `solicitacao` WRITE;
/*!40000 ALTER TABLE `solicitacao` DISABLE KEYS */;
INSERT INTO `solicitacao` VALUES (1,1,2,'Ampliar corredores','Melhorar circulacao','ALTA','PENDENTE'),(2,3,3,'Mesa adaptada','Adicionar mesa acessivel','MEDIA','EM_ANALISE'),(3,1,2,'Novo teclado','Comprar teclado adaptado','BAIXA','CONCLUIDA');
/*!40000 ALTER TABLE `solicitacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `perfil` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Administrador','admin@accesslab.com','123456','ADMIN'),(2,'Juliana Santos','juliana@accesslab.com','123456','CAPNE'),(3,'Carlos Silva','carlos@accesslab.com','123456','CAPNE');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-07 13:30:52
