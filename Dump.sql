-- MySQL dump 10.13  Distrib 8.4.0, for Linux (x86_64)
--
-- Host: localhost    Database: rede_social
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `amizades`
--

DROP TABLE IF EXISTS `amizades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amizades` (
  `usuario1_id` int NOT NULL,
  `usuario2_id` int NOT NULL,
  `data_inicio` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`usuario1_id`,`usuario2_id`),
  KEY `usuario2_id` (`usuario2_id`),
  KEY `idx_amizade_usuario1` (`usuario1_id`),
  CONSTRAINT `amizades_ibfk_1` FOREIGN KEY (`usuario1_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `amizades_ibfk_2` FOREIGN KEY (`usuario2_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amizades`
--

LOCK TABLES `amizades` WRITE;
/*!40000 ALTER TABLE `amizades` DISABLE KEYS */;
INSERT INTO `amizades` VALUES (1,2,'2023-01-01 00:00:00'),(1,3,'2023-01-01 00:00:00'),(1,4,'2023-01-01 00:00:00'),(1,5,'2023-01-01 00:00:00'),(1,6,'2023-01-01 00:00:00'),(1,7,'2023-01-01 00:00:00'),(1,8,'2023-01-01 00:00:00'),(1,9,'2023-01-01 00:00:00'),(1,10,'2023-01-01 00:00:00'),(1,11,'2023-01-01 00:00:00'),(1,12,'2023-01-01 00:00:00'),(1,13,'2023-01-01 00:00:00'),(1,14,'2023-01-01 00:00:00'),(1,15,'2023-01-01 00:00:00'),(1,16,'2023-01-01 00:00:00'),(1,17,'2023-01-01 00:00:00'),(1,18,'2023-01-01 00:00:00'),(2,1,'2023-01-01 00:00:00'),(3,1,'2023-01-01 00:00:00'),(4,1,'2023-01-01 00:00:00'),(5,1,'2023-01-01 00:00:00'),(6,1,'2023-01-01 00:00:00'),(7,1,'2023-01-01 00:00:00'),(8,1,'2023-01-01 00:00:00'),(9,1,'2023-01-01 00:00:00'),(10,1,'2023-01-01 00:00:00'),(11,1,'2023-01-01 00:00:00'),(12,1,'2023-01-01 00:00:00'),(13,1,'2023-01-01 00:00:00'),(14,1,'2023-01-01 00:00:00'),(15,1,'2023-01-01 00:00:00'),(16,1,'2023-01-01 00:00:00'),(17,1,'2023-01-01 00:00:00'),(18,1,'2023-01-01 00:00:00');
/*!40000 ALTER TABLE `amizades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int DEFAULT NULL,
  `autor_id` int DEFAULT NULL,
  `texto` text,
  `data_publicacao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `autor_id` (`autor_id`),
  KEY `idx_comentario_post` (`post_id`),
  CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`autor_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,1,2,'ComentÃ¡rio de Bob no post de Alice','2024-06-12 16:14:19'),(2,2,3,'ComentÃ¡rio de Carol no post de Bob','2024-06-12 16:14:19');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` VALUES (1,'Grupo A','DescriÃ§Ã£o do Grupo A'),(2,'Grupo B','DescriÃ§Ã£o do Grupo B');
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int DEFAULT NULL,
  `autor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `autor_id` (`autor_id`),
  KEY `idx_like_post` (`post_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`autor_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1,2),(2,1,3),(3,1,4),(4,1,5),(5,1,6),(6,1,7),(7,1,8),(8,1,9),(9,1,10),(10,1,11),(11,1,12),(12,1,13),(13,1,14),(14,1,15),(15,1,16),(16,1,17),(17,1,18);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membros_grupo`
--

DROP TABLE IF EXISTS `membros_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membros_grupo` (
  `usuario_id` int NOT NULL,
  `grupo_id` int NOT NULL,
  `data_entrada` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`usuario_id`,`grupo_id`),
  KEY `grupo_id` (`grupo_id`),
  KEY `idx_membro_usuario` (`usuario_id`),
  CONSTRAINT `membros_grupo_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `membros_grupo_ibfk_2` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membros_grupo`
--

LOCK TABLES `membros_grupo` WRITE;
/*!40000 ALTER TABLE `membros_grupo` DISABLE KEYS */;
INSERT INTO `membros_grupo` VALUES (1,1,'2023-02-01 00:00:00'),(2,1,'2023-02-01 00:00:00'),(3,1,'2023-02-01 00:00:00'),(4,1,'2023-02-01 00:00:00'),(5,1,'2023-02-01 00:00:00'),(6,1,'2023-02-01 00:00:00'),(7,1,'2023-02-01 00:00:00'),(8,1,'2023-02-01 00:00:00'),(9,1,'2023-02-01 00:00:00'),(10,1,'2023-02-01 00:00:00'),(11,1,'2023-02-01 00:00:00'),(12,1,'2023-02-01 00:00:00'),(13,1,'2023-02-01 00:00:00'),(14,1,'2023-02-01 00:00:00'),(15,1,'2023-02-01 00:00:00'),(16,1,'2023-02-01 00:00:00');
/*!40000 ALTER TABLE `membros_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagens_privadas`
--

DROP TABLE IF EXISTS `mensagens_privadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensagens_privadas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `remetente_id` int DEFAULT NULL,
  `destinatario_id` int DEFAULT NULL,
  `texto` text,
  `data_envio` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `destinatario_id` (`destinatario_id`),
  KEY `idx_mensagem_remetente` (`remetente_id`),
  CONSTRAINT `mensagens_privadas_ibfk_1` FOREIGN KEY (`remetente_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `mensagens_privadas_ibfk_2` FOREIGN KEY (`destinatario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagens_privadas`
--

LOCK TABLES `mensagens_privadas` WRITE;
/*!40000 ALTER TABLE `mensagens_privadas` DISABLE KEYS */;
INSERT INTO `mensagens_privadas` VALUES (1,1,2,'Mensagem privada de Alice para Bob','2024-06-12 16:14:19'),(2,2,3,'Mensagem privada de Bob para Carol','2024-06-12 16:14:19');
/*!40000 ALTER TABLE `mensagens_privadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `autor_id` int DEFAULT NULL,
  `texto` text,
  `data_publicacao` datetime DEFAULT CURRENT_TIMESTAMP,
  `grupo_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `grupo_id` (`grupo_id`),
  KEY `idx_post_autor` (`autor_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'Primeiro post de Alice','2024-06-12 16:14:19',NULL),(2,2,'Post de Bob no Grupo A','2024-06-12 16:14:19',1),(4,4,'Post de Devin sem grupo','2024-06-12 16:14:19',NULL),(5,5,'Post de Eve no Grupo A','2024-06-12 16:14:19',1),(6,6,'Post de Frank no Grupo A','2024-06-12 16:14:19',1),(7,7,'Post de Grace no Grupo A','2024-06-12 16:14:19',1),(8,8,'Post de Heidi no Grupo A','2024-06-12 16:14:19',1),(9,9,'Post de Ivan no Grupo A','2024-06-12 16:14:19',1),(10,10,'Post de Judy no Grupo A','2024-06-12 16:14:19',1),(11,11,'Post de Mallory no Grupo A','2024-06-12 16:14:19',1),(12,12,'Post de Niaj no Grupo A','2024-06-12 16:14:19',1),(13,13,'Post de Olivia no Grupo A','2024-06-12 16:14:19',1),(14,14,'Post de Peggy no Grupo A','2024-06-12 16:14:19',1),(15,15,'Post de Sybil no Grupo A','2024-06-12 16:14:19',1),(16,NULL,'Post sem autor','2024-06-12 16:14:19',NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `data_registro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Alice','alice@example.com','senha123','2024-06-12 16:14:19'),(2,'Bob','bob@example.com','senha123','2024-06-12 16:14:19'),(3,'Carol','carol@example.com','senha123','2024-06-12 16:14:19'),(4,'Devin','devin@example.com','senha123','2024-06-12 16:14:19'),(5,'Novo Nome','eve@example.com','senha123','2024-06-12 16:14:19'),(6,'Frank','frank@example.com','senha123','2024-06-12 16:14:19'),(7,'Grace','grace@example.com','senha123','2024-06-12 16:14:19'),(8,'Heidi','heidi@example.com','senha123','2024-06-12 16:14:19'),(9,'Ivan','ivan@example.com','senha123','2024-06-12 16:14:19'),(10,'Judy','judy@example.com','senha123','2024-06-12 16:14:19'),(11,'Mallory','mallory@example.com','senha123','2024-06-12 16:14:19'),(12,'Niaj','niaj@example.com','senha123','2024-06-12 16:14:19'),(13,'Olivia','olivia@example.com','senha123','2024-06-12 16:14:19'),(14,'Peggy','peggy@example.com','senha123','2024-06-12 16:14:19'),(15,'Sybil','sybil@example.com','senha123','2024-06-12 16:14:19'),(16,'Trent','trent@example.com','senha123','2024-06-12 16:14:19'),(17,'Victor','victor@example.com','senha123','2024-06-12 16:14:19'),(18,'Walter','walter@example.com','senha123','2024-06-12 16:14:19'),(19,'Pedro','pedro@example.com','password000','2023-06-10 18:14:48');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12 21:07:15
