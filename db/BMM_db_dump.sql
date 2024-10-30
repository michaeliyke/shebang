-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: BMM_db
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

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
-- Table structure for table `bookmark_tag`
--

DROP TABLE IF EXISTS `bookmark_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmark_tag` (
  `bookmark_id` varchar(60) NOT NULL,
  `tag_id` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`bookmark_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `bookmark_tag_ibfk_1` FOREIGN KEY (`bookmark_id`) REFERENCES `bookmarks` (`id`),
  CONSTRAINT `bookmark_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmark_tag`
--

LOCK TABLES `bookmark_tag` WRITE;
/*!40000 ALTER TABLE `bookmark_tag` DISABLE KEYS */;
INSERT INTO `bookmark_tag` VALUES ('09706175-c8ec-4ffd-b844-58b12871ce8a','2384b1f7-2da3-4e1e-b05b-de69e3c4fea0',NULL,'2024-06-15 13:46:08',NULL),('09706175-c8ec-4ffd-b844-58b12871ce8a','26d69819-7a9b-40b4-82f9-2c6c2fb50403',NULL,'2024-06-15 13:45:12',NULL),('62223017-f0fa-4eea-b965-32ca3f80a819','f7358728-52eb-4032-bce0-7cac4b46739d',NULL,'2024-06-17 14:50:26',NULL),('8ba5321e-d709-4cfe-a7db-f5c3d1408827','bf621c03-7bf5-4548-8fca-247623f1a537',NULL,'2024-06-17 15:10:37',NULL),('8e6db32c-05b1-4b27-b78c-7fff3808f246','f7358728-52eb-4032-bce0-7cac4b46739d',NULL,'2024-06-17 14:50:33',NULL),('aa6bce16-9e51-4301-bf7d-633d914cfb81','f7358728-52eb-4032-bce0-7cac4b46739d',NULL,'2024-06-17 14:44:00',NULL),('b9d11ae5-23f8-4e78-a62a-79cc9be83075','f7358728-52eb-4032-bce0-7cac4b46739d',NULL,'2024-06-17 14:44:26',NULL),('c84aae4f-2502-441c-a307-af88f7d816e2','bf621c03-7bf5-4548-8fca-247623f1a537',NULL,'2024-06-17 15:11:18',NULL),('cc697fb3-f088-4212-a3a4-0aba71316950','f7358728-52eb-4032-bce0-7cac4b46739d',NULL,'2024-06-17 14:50:35',NULL);
/*!40000 ALTER TABLE `bookmark_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarks`
--

DROP TABLE IF EXISTS `bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmarks` (
  `id` varchar(60) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(1024) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarks`
--

LOCK TABLES `bookmarks` WRITE;
/*!40000 ALTER TABLE `bookmarks` DISABLE KEYS */;
INSERT INTO `bookmarks` VALUES ('09706175-c8ec-4ffd-b844-58b12871ce8a','The Gemini App','https://gemini.google.com/app/eef3ab6ba93347e7','Nice AI by Google - So great with teaching new concepts','2024-06-07 06:56:32','2024-06-07 06:56:32'),('0b760b3b-00a0-4bd0-837b-a8e30df925c9',NULL,'www.google.com',NULL,'2024-06-15 16:47:09','2024-06-15 16:47:09'),('0f0a3d00-857b-4cc9-b0a1-b65ccc29f388',NULL,'www.anexe.tech',NULL,'2024-06-15 21:42:33','2024-06-15 21:42:33'),('0fdb2117-b263-464d-b36d-500b43ab313a',NULL,'unicef.com',NULL,'2024-06-16 18:33:07','2024-06-16 18:33:07'),('1627b9f7-5a3c-4973-9579-0d914b8874d7',NULL,'chrome://extensions/',NULL,'2024-06-07 08:49:46','2024-06-07 08:49:46'),('2b01c592-e33a-4a07-8830-0aa32c880b4a',NULL,'google.com',NULL,'2024-06-13 15:55:33','2024-06-13 15:55:33'),('36d98426-bf80-4086-8305-2677506207ee',NULL,'ncf.org',NULL,'2024-06-17 14:59:14','2024-06-17 14:59:14'),('3c88747b-3534-46d2-a215-214ae64c99cf',NULL,'www.google.com',NULL,'2024-06-15 16:42:34','2024-06-15 16:42:34'),('504308dd-81c5-428a-9064-2eede49c3690',NULL,'www.anexe.tech',NULL,'2024-06-15 21:29:24','2024-06-15 21:29:24'),('54ce8953-9981-4a71-9c77-f56165c91509',NULL,'nsf.com',NULL,'2024-06-17 14:59:26','2024-06-17 14:59:26'),('62223017-f0fa-4eea-b965-32ca3f80a819',NULL,'twitter.com',NULL,'2024-06-17 15:50:25','2024-06-17 15:50:25'),('77c9b2b9-2be8-4727-aeaa-7e46b0a43c85',NULL,'https://www.google.com',NULL,'2024-06-05 13:44:14','2024-06-05 13:44:14'),('7abd20c7-b54a-4d30-80ce-9fbfc8f2b65f',NULL,'https://www.facebook.com',NULL,'2024-06-05 13:45:08','2024-06-05 13:45:08'),('87bae719-9d24-49a0-93e7-31c5ea2ed713',NULL,'anexe.tech',NULL,'2024-06-17 08:25:28','2024-06-17 08:25:28'),('88c268a9-6712-4e90-a719-2a5f3af8878e',NULL,'abc.com',NULL,'2024-06-13 13:27:23','2024-06-13 13:27:23'),('8ba5321e-d709-4cfe-a7db-f5c3d1408827',NULL,'yahoo.com',NULL,'2024-06-17 16:10:37','2024-06-17 16:10:37'),('8e6db32c-05b1-4b27-b78c-7fff3808f246',NULL,'twitter.com',NULL,'2024-06-17 15:50:33','2024-06-17 15:50:33'),('8f86c1ec-0e0c-42c7-9da3-d060fc5d97ff',NULL,'anexe.tech',NULL,'2024-06-17 08:58:22','2024-06-17 08:58:22'),('906bb978-9d2f-46ae-a14c-2b9e3261d941',NULL,'anexe.tech',NULL,'2024-06-17 08:28:16','2024-06-17 08:28:16'),('98e4e7ea-6f12-4f23-a83e-1fe0b5448064',NULL,'abc.com','Must have','2024-06-13 13:00:09','2024-06-13 13:00:09'),('a6571b9b-07a8-4224-9c1c-773e1c47af75',NULL,'farms.net',NULL,'2024-06-16 18:53:28','2024-06-16 18:53:28'),('aa6bce16-9e51-4301-bf7d-633d914cfb81',NULL,'chrome://extensions/',NULL,'2024-06-07 08:34:24','2024-06-17 15:44:00'),('b663c68a-686a-49ba-827e-c4d7178b4c3f',NULL,'www.anexe.tech',NULL,'2024-06-15 21:42:20','2024-06-15 21:42:20'),('b9d11ae5-23f8-4e78-a62a-79cc9be83075',NULL,'chrome://extensions/',NULL,'2024-06-07 08:43:32','2024-06-17 15:44:26'),('c84aae4f-2502-441c-a307-af88f7d816e2',NULL,'http://anexe.tech/',NULL,'2024-06-07 08:26:22','2024-06-17 16:11:18'),('c9325457-4c30-4920-addb-bbfc2eae1414',NULL,'facebook.com',NULL,'2024-06-16 18:47:39','2024-06-16 18:47:39'),('cc697fb3-f088-4212-a3a4-0aba71316950',NULL,'twitter.com',NULL,'2024-06-17 15:50:35','2024-06-17 15:50:35'),('d10f6b6b-35ec-419b-9992-5b47c52ebcf9',NULL,'michaeliyke.com',NULL,'2024-06-17 14:59:34','2024-06-17 14:59:34'),('e42fe0d6-76b5-43a3-a47b-aefdbcea5089',NULL,'www.anexe.tech',NULL,'2024-06-15 21:42:30','2024-06-15 21:42:30'),('f60a674a-cca8-4ebd-996c-692a3fd8e978',NULL,'https://gemini.google.com/app/eef3ab6ba93347e7',NULL,'2024-06-07 07:05:13','2024-06-07 07:05:13'),('f6aa5b88-4ce7-4afd-a042-096d4bfe45ff',NULL,'anexe.tech',NULL,'2024-06-17 08:27:18','2024-06-17 08:27:18'),('f80f4a8c-9e93-4701-a249-a27884baf3d8',NULL,'www.google.com',NULL,'2024-06-15 21:27:00','2024-06-15 21:27:00'),('fe33c59e-ca0c-47f4-a38a-8337cb481ee4',NULL,'www.google.com',NULL,'2024-06-15 21:24:55','2024-06-15 21:24:55'),('fe3e37d8-dcee-4cf2-bf9e-a86d7841b233','Posible BMM site','https://www.bmmweb.com','The app claims much for very little. Lets find out first','2024-06-05 13:46:53','2024-06-05 13:46:53');
/*!40000 ALTER TABLE `bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('1b3a5860-5f74-445d-b40f-6b1d7ed55937','Offline','d66b7569-1081-4bdc-85ea-aab8f08b16b0','2024-06-09 15:13:02','2024-06-17 14:55:14'),('60def1e5-e200-4df1-a81a-7c78d95ea66f','Orginization','01b71c8f-98e4-4d5a-8ccd-78761bdbe287','2024-06-05 12:47:13','2024-06-17 14:54:56'),('7fc483f9-eae1-4736-a2b1-41d9cc22f1a8','squads','d66b7569-1081-4bdc-85ea-aab8f08b16b0','2024-06-17 12:57:26','2024-06-17 12:57:26'),('8404e909-f8d0-4371-82a4-e0f00a35036c','Morn-dwn','01b71c8f-98e4-4d5a-8ccd-78761bdbe287','2024-06-13 11:32:02','2024-06-17 14:54:36'),('99c3d03f-4f0d-4370-b2ac-f60649341dc0','makings','01b71c8f-98e4-4d5a-8ccd-78761bdbe287','2024-06-13 10:58:39','2024-06-13 10:58:39'),('9c2af693-ab29-4a4f-a091-8205f2158dec','makers_','01b71c8f-98e4-4d5a-8ccd-78761bdbe287','2024-06-13 10:33:56','2024-06-13 10:33:56'),('a29019c9-49ba-4a56-be14-effecfbf0c00','makers__','01b71c8f-98e4-4d5a-8ccd-78761bdbe287','2024-06-13 10:36:12','2024-06-13 10:36:12'),('b0086376-ccb6-4726-b89e-9f5b4b748fa9','makers','01b71c8f-98e4-4d5a-8ccd-78761bdbe287','2024-06-13 10:22:00','2024-06-13 10:22:00'),('b3d2caa7-0d7f-438d-bbd7-78ef7ac03c2d','Awesome-Earth','01b71c8f-98e4-4d5a-8ccd-78761bdbe287','2024-06-13 11:27:11','2024-06-13 11:27:11'),('c42536ea-861e-49a9-8b03-5e925eddc4f6','Giving','d66b7569-1081-4bdc-85ea-aab8f08b16b0','2024-06-17 12:58:55','2024-06-17 12:58:55'),('c87ac3d7-e38e-46bf-a98b-7b58979968ec','Stellas','01b71c8f-98e4-4d5a-8ccd-78761bdbe287','2024-06-15 14:07:00','2024-06-15 14:07:00'),('f33efad9-7549-41af-873a-6e23ca577788','Homes','01b71c8f-98e4-4d5a-8ccd-78761bdbe287','2024-06-05 22:14:41','2024-06-15 14:10:15'),('ff2924ad-dc30-4a07-81a3-992ec43a1b18','makering','01b71c8f-98e4-4d5a-8ccd-78761bdbe287','2024-06-13 10:56:33','2024-06-13 10:56:33'),('ff86ba75-cd38-4d7b-b861-db218f432ec6','Aweseom-worlds','01b71c8f-98e4-4d5a-8ccd-78761bdbe287','2024-06-13 11:04:44','2024-06-13 11:04:44');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_bookmark`
--

DROP TABLE IF EXISTS `category_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_bookmark` (
  `category_id` varchar(60) NOT NULL,
  `bookmark_id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`category_id`,`bookmark_id`),
  KEY `bookmark_id` (`bookmark_id`),
  CONSTRAINT `category_bookmark_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `category_bookmark_ibfk_2` FOREIGN KEY (`bookmark_id`) REFERENCES `bookmarks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_bookmark`
--

LOCK TABLES `category_bookmark` WRITE;
/*!40000 ALTER TABLE `category_bookmark` DISABLE KEYS */;
INSERT INTO `category_bookmark` VALUES ('1b3a5860-5f74-445d-b40f-6b1d7ed55937','09706175-c8ec-4ffd-b844-58b12871ce8a','2024-06-17 14:55:14','2024-06-17 14:55:15','97b54005-e459-416a-800f-d837019650f5'),('1b3a5860-5f74-445d-b40f-6b1d7ed55937','0fdb2117-b263-464d-b36d-500b43ab313a','2024-06-16 18:33:07','2024-06-16 18:33:07','1fc57abb-513f-4ade-8574-5d573ed29101'),('1b3a5860-5f74-445d-b40f-6b1d7ed55937','36d98426-bf80-4086-8305-2677506207ee','2024-06-17 14:59:14','2024-06-17 14:59:14','bd74176c-2b04-4511-b8dc-75f0117c1158'),('1b3a5860-5f74-445d-b40f-6b1d7ed55937','54ce8953-9981-4a71-9c77-f56165c91509','2024-06-17 14:59:26','2024-06-17 14:59:26','cb0483ed-f67f-46a0-afd1-6423d7667ea9'),('1b3a5860-5f74-445d-b40f-6b1d7ed55937','a6571b9b-07a8-4224-9c1c-773e1c47af75','2024-06-16 18:53:28','2024-06-16 18:53:28','d8c82d03-a055-4caa-bc1f-bb6def4ed312'),('1b3a5860-5f74-445d-b40f-6b1d7ed55937','aa6bce16-9e51-4301-bf7d-633d914cfb81','2024-06-17 14:58:07','2024-06-17 14:58:07','eb92614a-9fbb-43c6-99f0-31d338c4763c'),('1b3a5860-5f74-445d-b40f-6b1d7ed55937','c9325457-4c30-4920-addb-bbfc2eae1414','2024-06-16 18:47:39','2024-06-16 18:47:39','495cd02e-f0a2-4883-8ebe-1e1d12f4a669'),('1b3a5860-5f74-445d-b40f-6b1d7ed55937','d10f6b6b-35ec-419b-9992-5b47c52ebcf9','2024-06-17 14:59:34','2024-06-17 14:59:34','45381546-d2da-4d1a-903b-e17a16d58a8f'),('60def1e5-e200-4df1-a81a-7c78d95ea66f','09706175-c8ec-4ffd-b844-58b12871ce8a','2024-06-17 14:54:56','2024-06-17 14:54:56','e9d24adb-4fa6-4dfc-8ab7-63b18131452d'),('60def1e5-e200-4df1-a81a-7c78d95ea66f','87bae719-9d24-49a0-93e7-31c5ea2ed713','2024-06-17 08:25:28','2024-06-17 08:25:28','0ed65853-e3a7-429f-b437-f901bec32bc7'),('60def1e5-e200-4df1-a81a-7c78d95ea66f','8f86c1ec-0e0c-42c7-9da3-d060fc5d97ff','2024-06-17 08:58:22','2024-06-17 08:58:22','4da70b39-169d-4e62-9a48-a189adcd8aeb'),('60def1e5-e200-4df1-a81a-7c78d95ea66f','906bb978-9d2f-46ae-a14c-2b9e3261d941','2024-06-17 08:28:16','2024-06-17 08:28:16','ddb603f1-c3ac-4680-b07c-51c803d35028'),('60def1e5-e200-4df1-a81a-7c78d95ea66f','f6aa5b88-4ce7-4afd-a042-096d4bfe45ff','2024-06-17 08:27:18','2024-06-17 08:27:18','e2a3213f-d765-4cf8-aef2-b34f448ecad7'),('8404e909-f8d0-4371-82a4-e0f00a35036c','09706175-c8ec-4ffd-b844-58b12871ce8a','2024-06-17 14:54:36','2024-06-17 14:54:36','b36aa4a2-b33b-44ee-a681-43e8e67578d0'),('ff86ba75-cd38-4d7b-b861-db218f432ec6','0f0a3d00-857b-4cc9-b0a1-b65ccc29f388','2024-06-15 21:42:33','2024-06-15 21:42:33','b09a6624-606c-45c5-af73-fea0a3019a1a'),('ff86ba75-cd38-4d7b-b861-db218f432ec6','b663c68a-686a-49ba-827e-c4d7178b4c3f','2024-06-15 21:42:20','2024-06-15 21:42:20','5252eb27-b517-42ed-98cd-9d4afb70d0bf'),('ff86ba75-cd38-4d7b-b861-db218f432ec6','e42fe0d6-76b5-43a3-a47b-aefdbcea5089','2024-06-15 21:42:30','2024-06-15 21:42:30','91dc343d-ddc5-4ec3-bde8-74e5536824bf'),('ff86ba75-cd38-4d7b-b861-db218f432ec6','f80f4a8c-9e93-4701-a249-a27884baf3d8','2024-06-15 21:27:00','2024-06-15 21:27:01',NULL);
/*!40000 ALTER TABLE `category_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_tag`
--

DROP TABLE IF EXISTS `category_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_tag` (
  `category_id` varchar(60) NOT NULL,
  `tag_id` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`category_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `category_tag_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `category_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_tag`
--

LOCK TABLES `category_tag` WRITE;
/*!40000 ALTER TABLE `category_tag` DISABLE KEYS */;
INSERT INTO `category_tag` VALUES ('1b3a5860-5f74-445d-b40f-6b1d7ed55937','103c5557-72f0-4408-99a2-3a7be1a6916a',NULL,'2024-06-17 08:14:07',NULL),('1b3a5860-5f74-445d-b40f-6b1d7ed55937','2384b1f7-2da3-4e1e-b05b-de69e3c4fea0',NULL,'2024-06-15 15:14:12',NULL),('1b3a5860-5f74-445d-b40f-6b1d7ed55937','26d69819-7a9b-40b4-82f9-2c6c2fb50403',NULL,'2024-06-15 15:13:34',NULL),('1b3a5860-5f74-445d-b40f-6b1d7ed55937','27f9981f-7005-4145-b42a-f16986530577',NULL,'2024-06-17 08:12:41',NULL),('1b3a5860-5f74-445d-b40f-6b1d7ed55937','f7358728-52eb-4032-bce0-7cac4b46739d',NULL,'2024-06-17 08:13:42',NULL),('7fc483f9-eae1-4736-a2b1-41d9cc22f1a8','f7358728-52eb-4032-bce0-7cac4b46739d',NULL,'2024-06-17 11:57:27',NULL),('c42536ea-861e-49a9-8b03-5e925eddc4f6','f7358728-52eb-4032-bce0-7cac4b46739d',NULL,'2024-06-17 11:58:55',NULL);
/*!40000 ALTER TABLE `category_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES ('103c5557-72f0-4408-99a2-3a7be1a6916a','longing','2024-06-17 09:14:07','2024-06-17 09:14:07'),('2384b1f7-2da3-4e1e-b05b-de69e3c4fea0','micheline','2024-06-15 14:46:07','2024-06-15 16:14:12'),('26d69819-7a9b-40b4-82f9-2c6c2fb50403','marketing','2024-06-04 12:54:16','2024-06-15 16:13:34'),('27f9981f-7005-4145-b42a-f16986530577','wonderful','2024-06-04 16:02:28','2024-06-17 09:12:41'),('29969a87-7b4f-4999-86b0-370effd3877f','school','2024-06-04 11:39:09','2024-06-04 11:39:09'),('61c737a4-4fca-4900-9370-addafc9c956b','towns','2024-06-04 13:40:44','2024-06-04 13:40:44'),('718ae586-c4a7-4a01-b030-dfce55b48ca3','educative','2024-06-07 08:37:20','2024-06-07 08:37:20'),('bf621c03-7bf5-4548-8fca-247623f1a537','family','2024-06-04 12:40:14','2024-06-04 12:40:14'),('c83f4bce-72bc-4c72-93f0-ba8b87b7cfea','social','2024-06-04 12:54:45','2024-06-04 12:54:45'),('d633e1ff-4027-4844-8288-4f3d89a85d55','education','2024-06-04 12:39:24','2024-06-04 12:39:24'),('df28e392-5e11-4c30-93dc-d98eeaa9d336','mike','2024-06-15 14:35:16','2024-06-15 14:35:16'),('f7358728-52eb-4032-bce0-7cac4b46739d','informative','2024-06-04 13:31:19','2024-06-17 09:13:42');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(60) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('01b71c8f-98e4-4d5a-8ccd-78761bdbe287','iykengwu','password','michael@localhost','odo','Ngwu','2024-06-04 22:00:32','2024-06-04 22:00:32'),('05d91540-7f03-49fa-bbb7-950d9b762396',NULL,'password','michael@iyke',NULL,NULL,'2024-06-07 08:28:14','2024-06-07 08:28:14'),('1ca348ce-703e-4a14-a166-75893c1cce2c',NULL,'password','user@michaeliyke','odo','Gwu','2024-06-07 08:50:55','2024-06-07 08:50:55'),('32c21777-fa0c-4e50-a7da-535bc8810478',NULL,'password','users@user',NULL,NULL,'2024-06-08 16:11:36','2024-06-08 16:11:36'),('7d31f9a1-154a-4d92-8a7b-b42b70fcdb57',NULL,'password','user@michael.iykes','odo','Gwu','2024-06-07 08:44:36','2024-06-07 08:44:36'),('c9da4135-7a31-4646-a7b4-d1fee2e1ceaa',NULL,'password','user@user',NULL,NULL,'2024-06-08 16:08:45','2024-06-08 16:08:45'),('d66b7569-1081-4bdc-85ea-aab8f08b16b0',NULL,'password','user@michael.iyke','odo','Gwu','2024-06-07 08:35:41','2024-06-07 08:35:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-29 20:57:26
