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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 15:52:16
