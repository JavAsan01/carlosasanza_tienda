-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tienda
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_producto`
--

DROP TABLE IF EXISTS `categoria_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_producto` (
  `id_categoria` bigint unsigned NOT NULL,
  `id_producto` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_categoria`,`id_producto`),
  KEY `categoria_producto_id_producto_foreign` (`id_producto`),
  CONSTRAINT `categoria_producto_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  CONSTRAINT `categoria_producto_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_producto`
--

LOCK TABLES `categoria_producto` WRITE;
/*!40000 ALTER TABLE `categoria_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'aperiam','Delectus quis vel qui illum et eos quo.','2024-10-09 00:47:17','2024-10-09 00:47:17'),(2,'aut','Soluta qui sapiente ratione sit.','2024-10-09 00:47:17','2024-10-09 00:47:17'),(3,'facere','Aperiam repellat ipsam molestiae et non.','2024-10-09 00:47:17','2024-10-09 00:47:17'),(4,'vitae','Non tenetur rerum cupiditate recusandae itaque dolor nesciunt.','2024-10-09 00:47:17','2024-10-09 00:47:17'),(5,'odio','Aut blanditiis aut deleniti illum.','2024-10-09 00:47:17','2024-10-09 00:47:17');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_10_08_190546_create_usuarios_table',1),(5,'2024_10_08_190726_create_productos_table',1),(6,'2024_10_08_190824_create_categorias_table',1),(7,'2024_10_08_190850_create_categoria_producto_table',1),(8,'2024_10_08_190955_create_transacciones_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` int NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `id_vendedor` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productos_id_vendedor_foreign` (`id_vendedor`),
  CONSTRAINT `productos_id_vendedor_foreign` FOREIGN KEY (`id_vendedor`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'neque','Sit voluptate ut mollitia et ex.',75,1,11,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(2,'neque','Rerum voluptatem optio voluptatibus dolorem.',44,1,12,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(3,'non','Eum sint excepturi praesentium cumque omnis nulla iusto.',4,0,13,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(4,'fugiat','Sed reprehenderit dolorem asperiores.',4,1,14,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(5,'ipsa','Nobis saepe sit cum deleniti.',34,1,15,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(6,'ducimus','Sit voluptates est a et libero.',9,1,16,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(7,'aut','Pariatur similique voluptatum autem omnis temporibus fuga ut.',46,0,17,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(8,'sit','Perferendis provident consequuntur tempore ab.',87,0,18,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(9,'blanditiis','A deserunt molestiae sit enim.',45,1,19,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(10,'vel','Repellat quo aut et quam vel assumenda.',77,0,20,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(11,'laudantium','Odit reprehenderit animi voluptatum et.',38,0,21,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(12,'aperiam','Id assumenda enim sit quae dolores.',33,1,22,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(13,'odit','Voluptas aliquam quo officiis quasi totam et.',79,0,23,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(14,'quaerat','Nam facilis est qui alias voluptatum.',63,1,24,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(15,'eius','Libero ipsam natus voluptas quia.',22,1,25,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(16,'reprehenderit','Tempore similique error non magni ut nam.',90,0,26,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(17,'velit','Minus quam voluptate dolor repellendus.',67,1,27,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(18,'vero','Et sed quo hic dolores dolorem.',63,0,28,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(19,'ea','Iste reprehenderit ab reiciendis repudiandae vero.',34,0,29,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(20,'sed','Nesciunt corporis accusamus numquam ipsam et.',85,0,30,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(21,'assumenda','Libero quibusdam sunt dolores aut.',54,1,32,'2024-10-09 00:47:22','2024-10-09 00:47:22'),(22,'nobis','Aut quam in laborum voluptatem distinctio perspiciatis id.',25,1,34,'2024-10-09 00:47:22','2024-10-09 00:47:22'),(23,'odit','Et quam quo error qui aut corporis explicabo.',29,1,36,'2024-10-09 00:47:23','2024-10-09 00:47:23'),(24,'est','Ipsum ut excepturi ratione non.',5,1,38,'2024-10-09 00:47:23','2024-10-09 00:47:23'),(25,'vero','Et suscipit consequatur quasi quae porro est.',24,0,40,'2024-10-09 00:47:24','2024-10-09 00:47:24'),(26,'est','In dolorum et enim.',89,1,42,'2024-10-09 00:47:24','2024-10-09 00:47:24'),(27,'quod','Amet hic nostrum dolorem ipsam.',76,1,44,'2024-10-09 00:47:25','2024-10-09 00:47:25'),(28,'aperiam','Eum ad quam neque non aut.',74,0,46,'2024-10-09 00:47:25','2024-10-09 00:47:25'),(29,'dolores','Blanditiis sit iste excepturi mollitia molestias omnis incidunt.',42,0,48,'2024-10-09 00:47:26','2024-10-09 00:47:26'),(30,'autem','Porro dolorum itaque ea voluptas quod aperiam harum.',29,0,50,'2024-10-09 00:47:26','2024-10-09 00:47:26'),(31,'nihil','Eligendi qui eum fuga ducimus id consectetur.',79,0,52,'2024-10-09 00:47:27','2024-10-09 00:47:27'),(32,'officiis','Sed exercitationem nulla ex aut earum dolor officia.',37,0,54,'2024-10-09 00:47:27','2024-10-09 00:47:27'),(33,'sed','Eum delectus non minus voluptas quasi.',39,1,56,'2024-10-09 00:47:28','2024-10-09 00:47:28'),(34,'asperiores','Nam nihil ullam corporis natus.',8,0,58,'2024-10-09 00:47:28','2024-10-09 00:47:28'),(35,'dolor','Neque nihil sint iusto et ipsam doloribus vel.',65,0,60,'2024-10-09 00:47:28','2024-10-09 00:47:28'),(36,'ea','Atque et architecto deserunt inventore.',67,1,62,'2024-10-09 00:47:29','2024-10-09 00:47:29'),(37,'omnis','Distinctio ratione et eum voluptatem numquam et sed.',7,0,64,'2024-10-09 00:47:29','2024-10-09 00:47:29'),(38,'labore','Ullam ut ipsa vitae aut.',5,0,66,'2024-10-09 00:47:30','2024-10-09 00:47:30'),(39,'autem','Enim deserunt impedit non animi.',60,1,68,'2024-10-09 00:47:30','2024-10-09 00:47:30'),(40,'voluptatibus','Et voluptas quia sed non exercitationem.',19,0,70,'2024-10-09 00:47:31','2024-10-09 00:47:31'),(41,'eligendi','Reiciendis et nobis soluta omnis facilis.',2,0,72,'2024-10-09 00:47:31','2024-10-09 00:47:31'),(42,'accusamus','Quas maxime quidem praesentium qui laudantium iusto.',45,0,74,'2024-10-09 00:47:32','2024-10-09 00:47:32'),(43,'fuga','Doloremque rerum voluptate est velit.',25,1,76,'2024-10-09 00:47:32','2024-10-09 00:47:32'),(44,'rerum','Explicabo velit ex nihil.',41,0,78,'2024-10-09 00:47:33','2024-10-09 00:47:33'),(45,'in','Numquam ullam voluptas et omnis sequi temporibus.',76,0,80,'2024-10-09 00:47:33','2024-10-09 00:47:33'),(46,'rerum','Eum aut exercitationem minus et eius et corporis.',76,0,82,'2024-10-09 00:47:34','2024-10-09 00:47:34'),(47,'necessitatibus','Iusto praesentium dolorem autem ea possimus ad cumque.',47,0,84,'2024-10-09 00:47:34','2024-10-09 00:47:34'),(48,'animi','A ad numquam officia sit et qui ut alias.',87,0,86,'2024-10-09 00:47:35','2024-10-09 00:47:35'),(49,'ipsam','Quam non iste et illum.',13,0,88,'2024-10-09 00:47:35','2024-10-09 00:47:35'),(50,'aspernatur','Doloremque quam nobis nisi facere provident quod.',1,1,90,'2024-10-09 00:47:36','2024-10-09 00:47:36');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('2rB0S0R3JcQ9rjSd2pNKNSM4eSVA6UNW5bpq7y5a',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWVPczJDZ2VLc1dLdEtueEtGNmlJTzRVMDlKa3JPQXMyMnRkcFZWViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1728420220);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacciones` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `id_comprador` bigint unsigned NOT NULL,
  `id_producto` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transacciones_id_comprador_foreign` (`id_comprador`),
  KEY `transacciones_id_producto_foreign` (`id_producto`),
  CONSTRAINT `transacciones_id_comprador_foreign` FOREIGN KEY (`id_comprador`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transacciones_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (1,8,31,21,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(2,1,33,22,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(3,8,35,23,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(4,6,37,24,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(5,2,39,25,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(6,7,41,26,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(7,6,43,27,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(8,10,45,28,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(9,10,47,29,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(10,9,49,30,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(11,1,51,31,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(12,8,53,32,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(13,2,55,33,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(14,2,57,34,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(15,7,59,35,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(16,10,61,36,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(17,8,63,37,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(18,7,65,38,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(19,1,67,39,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(20,1,69,40,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(21,3,71,41,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(22,4,73,42,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(23,1,75,43,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(24,7,77,44,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(25,9,79,45,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(26,7,81,46,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(27,7,83,47,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(28,8,85,48,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(29,2,87,49,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(30,2,89,50,'2024-10-09 00:47:36','2024-10-09 00:47:36');
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verificado` tinyint(1) NOT NULL DEFAULT '0',
  `verificacion_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuarios_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Saige Kilback','assunta63@example.com','$2y$12$vc34Ie5gSc3ev3ZyvSyj/u9pgTLVPSs5JcQty0sUvqZfNhDoFlcgS','inZ2GN2sOr',1,'O3e8sYzLMl',0,'2024-10-09 00:47:17','2024-10-09 00:47:17'),(2,'Mr. Lane Wuckert','xmclaughlin@example.com','$2y$12$Ce2wFezrMmIoJCRFMTnY9.tF/5KHEhHoBu.qFOprw1bijt.eOZOGS','CyMUE1FGuN',1,'Byan5fvscm',1,'2024-10-09 00:47:17','2024-10-09 00:47:17'),(3,'Damion Haley','alfonso10@example.org','$2y$12$gG4CCxFdfIvuV.Xk/10XF.sjZNfpX/6EIbiX50FIXTDHiw2oGM232','hf2bCzfv5Z',0,'NpvtOG3y3v',1,'2024-10-09 00:47:17','2024-10-09 00:47:17'),(4,'Javon Lindgren','wlangworth@example.net','$2y$12$GXuqv5JFcu8SR/gZy3BZi.4EkQu4GqyNZBMa5bpLKXJTwvLhfckie','hENFQsX4P5',1,'6ykTBHROvB',0,'2024-10-09 00:47:17','2024-10-09 00:47:17'),(5,'Loma Abbott','bahringer.nettie@example.net','$2y$12$vrVd4fB7Uu6OOhnTKILIiOY54PtyFeQHJNUepkyJEVtXcmx5RoW9G','LEhIibOxgM',0,'RGJJV29bFx',0,'2024-10-09 00:47:17','2024-10-09 00:47:17'),(6,'Chesley Wehner','tessie11@example.com','$2y$12$Y6ccwePVrb2SpSsADTw3mOwqAE2uRGnKA/yXST/d0qtX3v8HDdN6m','Wj6Ph5rOoS',1,'C7bn2cpCam',1,'2024-10-09 00:47:17','2024-10-09 00:47:17'),(7,'Aniyah Anderson','herzog.raphaelle@example.org','$2y$12$qlMQQPRybe4YwAV6ph1A.elNxSQqptA3gw1DexO8xmY5lKgJp6b7S','bn2eydlMsc',0,'j2Y3Gz3Zaa',0,'2024-10-09 00:47:17','2024-10-09 00:47:17'),(8,'Dr. Jude Renner','joey.trantow@example.com','$2y$12$VOk3jCsBQ6rFXQBIKCtcc.EMXw0K1xPZ2yVYL0oeJCv9T8YfXvyhG','7dAzTtu7kK',1,'nnFi091M2F',0,'2024-10-09 00:47:17','2024-10-09 00:47:17'),(9,'Bart Flatley','jjacobi@example.com','$2y$12$aC/d05SeLhpHWUM2qs2DN.i5HQuZ2YSIZ6npVp7yOeidPElQ09ECq','3UmpcVDRA1',0,'YgEWMrR4aI',1,'2024-10-09 00:47:17','2024-10-09 00:47:17'),(10,'Willa Legros III','marjolaine.kovacek@example.com','$2y$12$SSSxOf7QiLdr.RVLY6oBg.hW1neC88Y3hEM49fA36Xc/ZeApPMIWi','pTxfGJAsf9',1,'tMy2mBqomn',0,'2024-10-09 00:47:17','2024-10-09 00:47:17'),(11,'Prof. Devyn Hintz III','waters.ruthie@example.org','$2y$12$nwDRmZP/UGMirXf3vVqEoO6U9bn..IfX/mSe7ri6XVXjnsbTq.WOq','JmZi1QMq7z',0,'XEIKMfEUvy',1,'2024-10-09 00:47:17','2024-10-09 00:47:17'),(12,'Camden Kuhn III','allie03@example.com','$2y$12$KcZKQY95mlnQh8lO.9AV5uUae0MEeiV1aZnpVpQv0xL4Akxu8F./C','1aqCO6sK30',1,'NbgIeObI9T',0,'2024-10-09 00:47:17','2024-10-09 00:47:17'),(13,'Camden Lehner','zulauf.wendy@example.org','$2y$12$t3AOp/A2hg/iLmRHjHvLTutzidd.fZp2z3d057BKa.MRGlzdqPO52','NRC2gMVpKb',1,'NnTGVWNBAV',0,'2024-10-09 00:47:17','2024-10-09 00:47:17'),(14,'Orlando Reichel DDS','yost.halle@example.net','$2y$12$AhZkcB1Kbf/IWusKjIxYGu1dQFBBVXr06/0JrBxOt8IFrtwmaOGV6','G2qToJXlsi',0,'LN6aPH799K',1,'2024-10-09 00:47:18','2024-10-09 00:47:18'),(15,'Damien Luettgen II','cloyd.spencer@example.net','$2y$12$stwU7ZTJY.b7T1uXWHxf.eV0RdAXgSZsvwMxVuba7Cn5q8fgWr1EO','LqUCfiuiM0',0,'BqX06j5Usr',1,'2024-10-09 00:47:18','2024-10-09 00:47:18'),(16,'Vaughn Kautzer','ljast@example.org','$2y$12$1XdP/mUEApG0ASGnNyiYYuDeCgst5yMQDs6zuil/wumZfykvCdzfe','5Zvb909fFW',1,'KD9ZxQAMgl',1,'2024-10-09 00:47:18','2024-10-09 00:47:18'),(17,'Dr. Rico Jast PhD','richard.cummings@example.net','$2y$12$3/nLn2VszA7t2R/qXIJ5/.m3vF1vTuSW7yVNfvRdh6uSDbvaIhzKm','J6bAOO43lL',1,'O1U0pnwkrp',1,'2024-10-09 00:47:18','2024-10-09 00:47:18'),(18,'Tevin Considine','estell.zieme@example.org','$2y$12$TJ1JnGEHrQs57tb4DHJQ/ulyZ8L6sCH1TKmVrBj5VPlO8/b8zgZUy','engl0g4WMH',0,'5aoa5bpF83',1,'2024-10-09 00:47:18','2024-10-09 00:47:18'),(19,'Germaine Ledner','christiansen.lon@example.com','$2y$12$r9VlBAcbLpqGE8EQB11/.OcehKgWhSojD.TDlSfNzXAZWAYVYC8f6','BbLv5xNEMD',1,'eCNa1usqMG',0,'2024-10-09 00:47:19','2024-10-09 00:47:19'),(20,'Dr. Alex Wintheiser DVM','thomas08@example.com','$2y$12$KfM8Siv/nSaAakg3CgdJiO/J84bUq7T24Hoeu31gWfXcLylMi3lSq','DPQtGjPqYf',0,'WlB3dvaRxP',1,'2024-10-09 00:47:19','2024-10-09 00:47:19'),(21,'Demetris Leannon','tyrique.lind@example.org','$2y$12$xa2G4OjnfohUEO9iz6eGjua2176WbU5KgnjRTcSjK3Qy2jmDS8ic6','1Vx9dOeA6T',0,'dCn8nqire3',1,'2024-10-09 00:47:19','2024-10-09 00:47:19'),(22,'Ivory Ledner','carmen.wolff@example.com','$2y$12$p2SM9BKtzUdghUwxmoUtFeun4fzI2zHhAhNXW4ppWzobGt/TioqKC','xB5yHMkej0',1,'IrCKwORl13',0,'2024-10-09 00:47:19','2024-10-09 00:47:19'),(23,'Dr. Dortha Baumbach Sr.','mbernier@example.org','$2y$12$uAxijc81r7X0AfCbnFJxzuivO7RTeLU7ARrDZAsr7JnUjmNYl8abu','5M7QzqSOyk',1,'9DAEAsU7y9',1,'2024-10-09 00:47:20','2024-10-09 00:47:20'),(24,'Zechariah Effertz IV','quitzon.sonya@example.net','$2y$12$O/NDipnjNjWK6/pnzoUK0eNO089lpr3QubnQZhS7SduHik84Oz9Ai','cmzW5RRqrj',1,'taRNUfsDw5',0,'2024-10-09 00:47:20','2024-10-09 00:47:20'),(25,'Dr. Keyon Schaden V','abbott.eldon@example.net','$2y$12$.38rmeoR.V4FoBkud09P2OfkLgbIz4aKQ/C5tnjG9tY24ot8Q4N7e','q4y7ibFc99',1,'kWNfu9vUSk',0,'2024-10-09 00:47:20','2024-10-09 00:47:20'),(26,'Rodrick Daniel','beahan.destini@example.com','$2y$12$iE.xwvhOgpzQmnl6mr4LnOz9gb3j1eAw4Sve1icxJdRIMeAUNqJAq','Gdhd4B0LXU',1,'N89zaPHeTI',0,'2024-10-09 00:47:20','2024-10-09 00:47:20'),(27,'Gussie Schoen','lowe.stanton@example.com','$2y$12$b4JepadeqbgN7WiErlE2vON.fllP7UXBVMzWZhR3U0gJR4leAchzm','jEiNIdghAb',1,'uHGVl6g0a4',1,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(28,'Dr. Allan Kub','leora.rolfson@example.com','$2y$12$/Zb6IWpCm0/MW3hkWVGETOlUS8SS9N/utGGeDlITA2VheKRBPNJ6i','hCqQ9gzwYh',0,'f4RPj9Hy4y',0,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(29,'Candice Parisian','eleonore83@example.net','$2y$12$o2gd7Lg1CtVylcCqLxAGW.mmy1qCVcYQn92VXQQ68jStq8aC5gpii','IkGbIG08ej',0,'6LIt8fR5ZF',1,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(30,'Joel Jones','spencer.alexandria@example.com','$2y$12$WD0d1XancmpDUiGqq2pQXu0yb1qlh2qkm23QUsH2Dhwqh/uDk1sJK','Ak42RDvGRf',0,'ArpX5vbT1m',1,'2024-10-09 00:47:21','2024-10-09 00:47:21'),(31,'Millie Willms','uhickle@example.net','$2y$12$tl46NPeefyzknp9fm0..XOO/d6iy2rrZH8/v8gllWzIM7PGAPld1.','Zk8TgeVE7Z',1,'mkFEHklldI',1,'2024-10-09 00:47:22','2024-10-09 00:47:22'),(32,'Jake Considine','ipacocha@example.org','$2y$12$t0YX03KGPl7smmEA/1YGdeJekCFYV2gc5uOQMOfeTbHwugfaSggbS','hLJRqD8y65',1,'7548zAoqvy',1,'2024-10-09 00:47:22','2024-10-09 00:47:22'),(33,'Mr. Jefferey Weissnat','vivienne.morissette@example.org','$2y$12$ATspcqsYNVqwxHxPBm4tMeE1Y4J0RLnVn2J7xIrNn3EGsmOla8eEG','FaJ15eosiL',1,'360Kl3lAfq',1,'2024-10-09 00:47:22','2024-10-09 00:47:22'),(34,'Bulah Roob','mitchell.ima@example.org','$2y$12$PfOJ3wWHRApf4v.rWlYL/.Mxy6mrFTiMpOR3PJbzEOLmjGc489mbS','S84TTFyp6a',0,'9NWfXxHO2I',1,'2024-10-09 00:47:22','2024-10-09 00:47:22'),(35,'Prof. Gabriella Stehr I','izabella.zboncak@example.com','$2y$12$z21Ixl/Ii2lYeB8Ua5DkKOu7ZC.zqBVV3KtLmXs8zeNtZDn7hqfa.','O9B7IFAWBm',0,'VhVDTfde09',1,'2024-10-09 00:47:23','2024-10-09 00:47:23'),(36,'Josephine O\'Reilly','nienow.gina@example.com','$2y$12$PFkBNsW3X7mUDaINjvMBDuXUeQOoZnGhwGCm0kXL2LZwqP6iuIq2e','lpFuoKwgTA',0,'kydf5XArEq',1,'2024-10-09 00:47:23','2024-10-09 00:47:23'),(37,'Eva Lang III','goodwin.benny@example.com','$2y$12$xk9kRHUwuOQUE1FkR33hiegpFHKfYIUHi5fEnpUia9ixf4GUwYyvq','mB04OclKvp',0,'Zdo8pckItz',1,'2024-10-09 00:47:23','2024-10-09 00:47:23'),(38,'Kay Smitham','edna.fay@example.net','$2y$12$KE7tZMKL1IvYi5iWVNAsOukHVW60.kYaA4ZwM6k87eF/Bc/00aQdO','SzKyiWpDNj',1,'xh50YcM9Vb',1,'2024-10-09 00:47:23','2024-10-09 00:47:23'),(39,'Eden VonRueden','romaguera.letitia@example.org','$2y$12$Bu4v5UEdjngKuJpLFQL/rOTUt3KDvP7geTRJ1WlbvLlx1aiyZohEe','6Q2NOWC8Gk',1,'DW9LAtH6BY',0,'2024-10-09 00:47:23','2024-10-09 00:47:23'),(40,'Dr. Rosario Heller I','ehammes@example.org','$2y$12$vTetB.Bl6Xx3nlW2lQZlJ.rUc3eSJ0/8rKLsKD9LVeX7Eg9Mv1IiK','m30ZPX8vsH',0,'FmDGzYDx8r',0,'2024-10-09 00:47:24','2024-10-09 00:47:24'),(41,'Camryn Nienow I','kristofer.mills@example.net','$2y$12$5ylz4oRWN5sjqvNEySGTyOexfoAGW6nOGS3IW8BlfjsvR7A3.gSqe','Hn280nUTJJ',0,'rbk06uCrvR',1,'2024-10-09 00:47:24','2024-10-09 00:47:24'),(42,'Jadyn Schiller','tristian.casper@example.com','$2y$12$DNQnH./uxdqOHelTknQw5.XqNB5ZOe5wnfY94C.tQ.foUaRjUvALe','zWP7wvIhk3',1,'02yTvIMZ8M',1,'2024-10-09 00:47:24','2024-10-09 00:47:24'),(43,'Palma Predovic','jarrett.white@example.net','$2y$12$CmoEothaBnzwR7n3wiWxw.SunRFggFd7ZI/E.rXhDXHkTum6k.QWC','uNhp5qT8fc',1,'JdFBPAvxoZ',1,'2024-10-09 00:47:24','2024-10-09 00:47:24'),(44,'Dr. Amos Kertzmann DDS','onader@example.org','$2y$12$53LaGGwLipawvyyVcIZa6OyZTfAEZhwicRFe.7LiaSLrX7SjAq9vm','84CRfbp8c9',1,'eU4kT5xWs2',0,'2024-10-09 00:47:25','2024-10-09 00:47:25'),(45,'Tomasa Abbott','cjacobs@example.net','$2y$12$EUnsWFgN71818xSS7GDZuef9qTQflcdCjQbnp2hzOyltS1HmOHYgW','FCZglnzawr',1,'KackXOupp4',0,'2024-10-09 00:47:25','2024-10-09 00:47:25'),(46,'Arnold Mitchell','christop.hill@example.org','$2y$12$sqRMKby0zgzoet4W1zMrP.n7SARcBjMkMEXXvj7Sqjs5zT84ZbIFG','keh8a2hBoY',1,'T1VMTu8kYx',1,'2024-10-09 00:47:25','2024-10-09 00:47:25'),(47,'Ms. Athena Sipes','rau.dejuan@example.org','$2y$12$tPuBzqps8.ZWEQywm..jj.PfeqgRaWtew7x9MjmM0W2ZZPAtsnmQ2','9oPbfEZNeu',1,'QhXXIzBu4a',0,'2024-10-09 00:47:25','2024-10-09 00:47:25'),(48,'Weston Toy','daugherty.marco@example.com','$2y$12$nmiNaphaO4yYD.5xoyx4yukHIoaxq2x1CX0DMVbhQGyKOPV7VdtHG','cEcHuZdEzK',1,'PNcA2YgfzJ',1,'2024-10-09 00:47:26','2024-10-09 00:47:26'),(49,'Kristoffer Zieme II','zhammes@example.org','$2y$12$AxkCFotgdHDR6K6b6NVAYu.2wRu5E27c1sgWjILS9JKg5SQCUT.Qi','IbLY9v0xHg',1,'a3EVjSW0b3',0,'2024-10-09 00:47:26','2024-10-09 00:47:26'),(50,'Mrs. Alison Walter','jenkins.domingo@example.com','$2y$12$iB23Lgo7qJLde2I6ApAAY.81wlmJsaOsGtd75IaMa6acs7FwE8Mt6','81Iz7IEUHN',1,'M2AgW90URk',1,'2024-10-09 00:47:26','2024-10-09 00:47:26'),(51,'Jakob Lesch','casper76@example.net','$2y$12$qZlz0SEAsVboW8wp1Yr1NOY46qXWXtLbZLW2UoaA8axy6AI/9O00i','ZZEJc85oDs',0,'paAX96BmP9',1,'2024-10-09 00:47:26','2024-10-09 00:47:26'),(52,'Mrs. Magdalen Oberbrunner','antwon61@example.net','$2y$12$TriyNEe9FV8sVgMIKafE9uhGCOf.h07gsU2eAbmq9nqjVdYFgiIgm','JjlUveU0PB',0,'Iw3q3ay6Im',0,'2024-10-09 00:47:27','2024-10-09 00:47:27'),(53,'Edwin Padberg','jaquan56@example.org','$2y$12$P.bvpZHc3sKFPmF.2die6Oz4Tws9ij2MslQQbfGcO1.jV6Jp5L3ya','hTbjxG8xbs',0,'tqBJIoXFLh',1,'2024-10-09 00:47:27','2024-10-09 00:47:27'),(54,'Prof. Jacey Bosco','yrosenbaum@example.com','$2y$12$3D9Hd5Mb1U1ol5R6R.xiAecm0z0Af4/Xw1oTUehDqrc6hnpc82wGu','wb2ZardWU9',1,'EHZ6Xkhhiv',0,'2024-10-09 00:47:27','2024-10-09 00:47:27'),(55,'Kurt Murazik','althea00@example.net','$2y$12$MLpmNzp/vl41DX69FsAxS.xj5EchEYsA..rWw/YXvPX6P1uSAYaCa','a09WCZf5Bl',0,'L2lKngf66I',1,'2024-10-09 00:47:27','2024-10-09 00:47:27'),(56,'Gregory Nolan','alvera.kris@example.net','$2y$12$e3hbdNQiMdomR9OFAJy4TeL/ZEDrVu/WqOPODANLDAV5L9xdIO6xy','wAMf0vaUy9',0,'MJi1O5KvcC',1,'2024-10-09 00:47:28','2024-10-09 00:47:28'),(57,'Mr. Alberto Pacocha','jada.casper@example.org','$2y$12$aYTUXJuZ8ttzqkv3a.GLs.1Ta7iiDsL7WS2oARuuMFpubH1KsIrR6','CyYDWnskwY',0,'eX898qUxGg',0,'2024-10-09 00:47:28','2024-10-09 00:47:28'),(58,'Tyson Huel','delta.marvin@example.org','$2y$12$3e2WXuRPtNEHUpdQ1BH.heSfNxTGNs67.pE/yfv/aq3WH0EUNaEGG','Hnjsej4kay',1,'7ZpXFRN71R',1,'2024-10-09 00:47:28','2024-10-09 00:47:28'),(59,'Eunice Purdy DVM','gutmann.kaleigh@example.com','$2y$12$qvL6b9vGcJFxLezEANIgJu/7Lq1YyLm6Vo6rOJzL60gLr2qgj7o/q','PvUbcFdPCR',1,'W9ugmSibCC',0,'2024-10-09 00:47:28','2024-10-09 00:47:28'),(60,'Callie Jerde','cartwright.dariana@example.com','$2y$12$qz/Wq.PT9YHk/CjU7EVtaOmorhOz6tlIko4WOM8vMv0d7.ZWw8pPO','u9WhFz27mU',0,'L9oYC1uGNf',0,'2024-10-09 00:47:28','2024-10-09 00:47:28'),(61,'Doug Schuster','rlockman@example.net','$2y$12$2.IAKYHh74gAkfjIUObnC.Il.cyNwpFWms56k3QDgTiuJGhRqoHWO','3svOz3Uq8B',1,'fVsmMd7hVt',0,'2024-10-09 00:47:29','2024-10-09 00:47:29'),(62,'Prudence Lueilwitz','nat38@example.org','$2y$12$OQuDJRJXgF7nikdolOXD5O7wyUxyVFF5CNsP7qv.M3.jlypw4qYha','jdovl86WBn',0,'aIucDHqCS5',1,'2024-10-09 00:47:29','2024-10-09 00:47:29'),(63,'Nicholas Prosacco','walker.omari@example.net','$2y$12$6/ZM.V.40fME0FsaBzi9SOzUkuYnqNgtYwfLF7V15wQ9.3AZ0LESO','i3Tc7UulOp',0,'Lxen72ZWZd',0,'2024-10-09 00:47:29','2024-10-09 00:47:29'),(64,'Madelyn Stanton','lkovacek@example.com','$2y$12$LIypqGtjG9n28bEK0/sl.eM/D5k0GsLaTmzyY1LI6PvrvEVAEOYjO','T9KWhih1tC',1,'hQcXgrDAit',1,'2024-10-09 00:47:29','2024-10-09 00:47:29'),(65,'Esteban O\'Kon','don.corkery@example.net','$2y$12$/cmLBVF/.efYXEIWkFKeA.McIKqRkA4fzf7nABPh.5k1Wqn5rMora','CoroJkDp7j',0,'frMAKB5Ivi',0,'2024-10-09 00:47:30','2024-10-09 00:47:30'),(66,'Bernadine Mueller','acarter@example.com','$2y$12$.2Q7jagk81.6mrrwsSzZku3b/onXbVrczrT2ryCF.ALGcz/1PVfV2','2D6US0yULl',1,'WSLo76MUXf',0,'2024-10-09 00:47:30','2024-10-09 00:47:30'),(67,'Michael Borer Jr.','josie.sawayn@example.net','$2y$12$tSK0DHPh5fJDF2eINW9gg.QnZjDwH7Z4t9.sADzhjmHagms3Q605i','XUcomJkQUe',1,'DBGEaHojJn',0,'2024-10-09 00:47:30','2024-10-09 00:47:30'),(68,'Prof. Robyn Cummings MD','cmcdermott@example.net','$2y$12$RR4c28zfzULmp/5mN6J5dOJA/WEEaD6DzG8PwG8fkAvhBC2hTXCkm','OpdAX6Chgn',0,'eLPQRGDFRt',1,'2024-10-09 00:47:30','2024-10-09 00:47:30'),(69,'Nash Hamill PhD','price96@example.com','$2y$12$GS/oyDBSbE1nrndTN1/e0e0ybY3K7nEpUwTQMb0F39qe9/jnpzaLm','WKXVVmJfrc',1,'H3hsvUpYCH',0,'2024-10-09 00:47:31','2024-10-09 00:47:31'),(70,'Miss Rosie Hansen Jr.','klein.vince@example.net','$2y$12$b8P1bT.2R3.86cJBC59HPO7mazG5v76EYaKjgetW5S.c3qK8kZHyy','4QGgDgJkDK',0,'Qg9KNccVeE',1,'2024-10-09 00:47:31','2024-10-09 00:47:31'),(71,'Georgiana Koss','jaron.lubowitz@example.org','$2y$12$eOt1JFjMW8jvhFhkDx2cHumsfaKn/sutCyW1LJwzFI71shFRY7t/y','mzOVvqabuJ',1,'OKEFd9jmrL',0,'2024-10-09 00:47:31','2024-10-09 00:47:31'),(72,'Ms. Nedra Schaden II','mireille25@example.net','$2y$12$bueeF2ZpXE4NZpZJHypvSObgvhrdFvkW8L2Ll5WSCGRkGgXV89a42','hWUTv2JAi2',1,'phzdcK7N1M',1,'2024-10-09 00:47:31','2024-10-09 00:47:31'),(73,'Precious Hagenes','rmorissette@example.net','$2y$12$5YOKLg2wBvUReTrYxn3rwevDSTGN6qGWFP2C995rN99F7lV2cMBuq','jRjd4PEmgT',0,'Irua7RCsY2',0,'2024-10-09 00:47:32','2024-10-09 00:47:32'),(74,'Vladimir Corwin','louie16@example.org','$2y$12$8.Cx6GA12/s3OzWNaHSll.28SHZ/6hmzeSYUjPcGPDyapYZPgItA.','K6YfRkU4vo',0,'SZHAHHU8PV',0,'2024-10-09 00:47:32','2024-10-09 00:47:32'),(75,'Brant Miller','klowe@example.net','$2y$12$uvGRBsjHp8RmyBEfgSyj6OF1lex0B8OdzEyOurPYObD.xnVpFtS6a','LLDIa71OGq',1,'g7sbimGfg9',0,'2024-10-09 00:47:32','2024-10-09 00:47:32'),(76,'Zachary Torp','efadel@example.net','$2y$12$Djs0uoh4hewmc0Au4xbYZebki7HfjwslyCz5AdTBgyMUaUM2i8haa','5GqAMdK8Lu',1,'CeF6CCZkHv',0,'2024-10-09 00:47:32','2024-10-09 00:47:32'),(77,'Vesta Krajcik','yheidenreich@example.net','$2y$12$N1eO2AuEw5SJwPaPYsVWyuWhU1PBtyDGju2m9P2oSj0bnz2SyFzLW','vkLklZVIwr',1,'UzhRIakQaj',0,'2024-10-09 00:47:33','2024-10-09 00:47:33'),(78,'Kris Kutch','vlowe@example.org','$2y$12$omHd4YGFgnGPBIegOLMrzOMv3pVpENvVQ92XNUCknuVF6o1XGST9S','aLG30xGLUd',1,'9r3T5bRSxC',0,'2024-10-09 00:47:33','2024-10-09 00:47:33'),(79,'Mr. Bennett Cartwright','guy72@example.net','$2y$12$ngJ4oQ5l7iqfXmYxhzX07ujK7E7o5nrwPRWtzXUUCLBPw5E/NCuU2','9VkwPYDb9E',0,'x5wWAcSn3R',0,'2024-10-09 00:47:33','2024-10-09 00:47:33'),(80,'Dr. Herman Hilpert','zetta83@example.net','$2y$12$YGBBa7IKeIcfB9RWCvh/i.SRmp074YLbqAW3UFXxwgUk4wUmFvsjy','A6egyotzll',1,'TgmulTd0MW',1,'2024-10-09 00:47:33','2024-10-09 00:47:33'),(81,'Destiney Luettgen','candice.little@example.com','$2y$12$DWwt4l8lMzHILi5FtioMGe7TCqzVAr/UMgJ2paba60LSlyqId0Vni','mNzDdsKDap',0,'IKyybIeJ2H',1,'2024-10-09 00:47:33','2024-10-09 00:47:33'),(82,'Marie Stracke','pcollier@example.com','$2y$12$tFzFDjCMdysKbmqcqjIhD.2CMdIxEHObg05nu8Xvm/hoQ4JnAlGkC','ds1artGqQa',0,'dsRHxBVKFT',0,'2024-10-09 00:47:34','2024-10-09 00:47:34'),(83,'Dr. Kirsten Eichmann','agustin.weimann@example.org','$2y$12$ZSOiC4pgLT1NJ74EQ2/ef.Z1sAbxj6Jf5jBCzdvUiWmb.CV577yNW','xw8aI6GqeE',0,'CjpcGIeImO',1,'2024-10-09 00:47:34','2024-10-09 00:47:34'),(84,'Genoveva Blick','gutkowski.rocio@example.net','$2y$12$pg/N4IjYp8vFypJkuGpqse.Bx0FdEJGe8.AlZukz0QIvXq0ApCHAG','HIWvIwzFQE',0,'gXhgRavY0M',1,'2024-10-09 00:47:34','2024-10-09 00:47:34'),(85,'Hortense Fadel','alyson.stehr@example.net','$2y$12$zY26ZFBYpNMsXwIsTqHFdur1Oj4VfQFm0vfWdObKsX5FRF9wz0UsK','tZs3KdDqsU',0,'26LJzeAGMZ',0,'2024-10-09 00:47:35','2024-10-09 00:47:35'),(86,'Ansley Smitham','armstrong.rhea@example.com','$2y$12$P46t0c38AflS3PuJa.I3OOHlncpL9qYUn3OPmFHC3VbQBYuSXO.LW','1aLCXM4yY5',0,'ju8B1nc30i',1,'2024-10-09 00:47:35','2024-10-09 00:47:35'),(87,'Nolan Robel','xwest@example.org','$2y$12$6Sd8J8bmPFA9uwoSG6F6yOpPJFcegHiFSoEEbxvwdHohjojf/zpSC','smD8VETmqk',0,'VN931oAUbi',1,'2024-10-09 00:47:35','2024-10-09 00:47:35'),(88,'Caitlyn Barrows','briana.spinka@example.com','$2y$12$Y66W5Ia7Am9PHB7MZSumTOMYbbgVKBjurbZwJt4i6wrh3bZ0yQ26S','jafsD8wztm',1,'RRyzy6B922',1,'2024-10-09 00:47:35','2024-10-09 00:47:35'),(89,'Colten Altenwerth','dhermiston@example.net','$2y$12$mrFgTnHj/VY2ahXOCXa1qupDApAGMmuG7MU.v2/HbiVBWcy1uHG9a','mkAD39UjPA',0,'akRD8ZoM0R',1,'2024-10-09 00:47:35','2024-10-09 00:47:35'),(90,'Ms. Frederique Strosin','joconner@example.org','$2y$12$sUBx7BDh/0TlUpdGNiQex.bIUx3wzj2fBlnHskZ1xWWaAc.1MSnjK','2HbCgg3Mwd',1,'UkL1F0lJW2',1,'2024-10-09 00:47:36','2024-10-09 00:47:36'),(91,'Javier','javier@gmail.com','2001',NULL,1,NULL,1,NULL,NULL);
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

-- Dump completed on 2024-10-08 15:54:16
