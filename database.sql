-- MySQL dump 10.13  Distrib 8.1.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: stories
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'8zEgcShSKaPHlPWcsZxwWJhB5SGpyiaZ',1,'2024-01-29 02:48:46','2024-01-29 02:48:46','2024-01-29 02:48:46'),(2,2,'Y3Jmd6zaqH9fFC9DxCi0sRnKfJOuqhSp',1,'2024-01-29 02:48:47','2024-01-29 02:48:47','2024-01-29 02:48:47');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Panel Ads','2029-01-29 00:00:00','panel-ads','HHAAFUOLCVM0','banners/1.jpg','https://botble.com',0,1,'published','2024-01-29 02:48:48','2024-01-29 02:48:48',1,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Uncategorized',0,'Rerum vel architecto aliquam eius ducimus non. Aut aspernatur doloribus ut eveniet vitae accusantium. Tenetur ut est aut odit blanditiis est. Et et voluptatibus odio ut qui optio et dolorem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(2,'Travel',0,'Enim fugiat aspernatur dolor voluptatibus dolores suscipit qui. Et ut illo quo quo temporibus quia ullam. Necessitatibus nemo qui sapiente autem dolore. Facere qui nihil porro repudiandae.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(3,'Guides',2,'Libero repellat facilis sed laborum. Dolor sit quisquam est mollitia ut omnis ipsam. Voluptates non quia rerum modi tempora. Molestiae vel quia molestiae sunt error ut nobis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(4,'Destination',0,'Quod in perferendis minima odio. Voluptates nemo recusandae laborum magni suscipit sed eum. Sequi et dolores sunt sapiente.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(5,'Food',4,'Voluptatum voluptas tempore sint illo voluptatem. Est mollitia iusto aut aspernatur ipsa molestias. Perferendis quis facere mollitia similique.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(6,'Hotels',0,'Quo inventore nemo commodi nihil non neque quisquam. Alias laudantium excepturi qui qui. Sint mollitia iusto ullam et labore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(7,'Review',6,'Laudantium pariatur hic qui fugit quia nam placeat. Sit qui omnis et ut blanditiis. Fugiat ad minima alias amet.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(8,'Healthy',0,'Fuga nam aspernatur sapiente et et voluptatem. Eligendi doloribus assumenda unde facilis ea similique. Perspiciatis facere itaque debitis est consequatur.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(9,'Lifestyle',0,'Aut recusandae quos modi sint corrupti dolorem. Ipsam quo nihil architecto perspiciatis. Sed quisquam pariatur dicta provident quia non ut. Exercitationem iure nesciunt velit non optio assumenda.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-01-29 02:48:47','2024-01-29 02:48:47');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Ardella Haley DDS','neal73@example.net','(762) 380-5134','5182 Schoen Gardens\nErdmanton, NM 63495','Velit in sunt nesciunt doloremque qui.','Id itaque enim iste nostrum. Itaque dolorem sunt praesentium est ut. Nesciunt esse voluptatem esse dolorem. Et sunt voluptas exercitationem et amet. Est reiciendis blanditiis magnam. Repellendus sit nam architecto corporis molestias natus. Repudiandae facere rerum minus voluptatem odit. Iure possimus quam assumenda qui eveniet. Debitis porro et enim ratione architecto sed asperiores.','unread','2024-01-29 02:48:47','2024-01-29 02:48:47'),(2,'Maxie Stiedemann','wrussel@example.org','+1-209-459-7924','8689 Keeling Knolls Apt. 139\nPort Norvalmouth, VT 32874','Animi iste dolores quos in sit vero quia.','Adipisci ratione velit ipsum quo. Ipsam itaque dignissimos optio corrupti praesentium et quis. Recusandae non omnis quo eveniet libero vel. Maiores repellendus veritatis ad voluptas. Quam officia dolorem laboriosam nulla. Aut illo labore quia non eos vitae quas deleniti. Qui molestiae totam hic itaque.','unread','2024-01-29 02:48:47','2024-01-29 02:48:47'),(3,'Yolanda Breitenberg DVM','runolfsdottir.sydney@example.org','878-981-7658','517 Dach Coves\nEichmannland, SD 23097','Ratione aut id dolor recusandae.','Nemo sed debitis et reiciendis. Sed rerum vero voluptas saepe. Vel possimus aperiam ut nam repudiandae qui. Unde ea minima nihil. Sint est eveniet iste hic. Similique eveniet culpa culpa. Eos sed et ipsam qui. Nam qui ut voluptates ex cumque soluta et. Adipisci repudiandae aperiam necessitatibus quia. Eum enim deserunt et quis. Perferendis nam totam dolores beatae nisi. Ut quis labore quibusdam vitae incidunt aut.','unread','2024-01-29 02:48:47','2024-01-29 02:48:47'),(4,'Prof. Camden Koss','quitzon.barbara@example.net','(956) 622-4509','50577 Yasmin Radial Apt. 751\nLake Ignatiustown, KY 62339-3620','Corporis libero enim maxime.','Assumenda repellendus laboriosam et fuga provident. Magnam molestiae et est asperiores voluptas. Sunt esse est veniam ex ea. Et magni quasi optio ea. Quia non itaque aut et dolores iusto. Earum blanditiis quo ipsam adipisci. Aliquam eos eveniet qui sunt quo eaque facilis porro. Tempora similique praesentium qui iusto dicta est vero. Quia soluta deleniti pariatur consectetur. A aut voluptas et rerum incidunt illum. Iste illum dolores qui est. Quia nisi perferendis quae incidunt autem in.','unread','2024-01-29 02:48:47','2024-01-29 02:48:47'),(5,'Immanuel Rice','greg31@example.com','463.418.0962','610 Kunde Trail Apt. 822\nLake Tiffanymouth, MO 70373-8314','Ea minus velit non nihil. Sit et omnis est et.','Quasi commodi omnis quod ea occaecati aut. Labore doloremque quis molestiae quam distinctio incidunt. Perferendis neque id illo. Id eum qui impedit et. Enim tempora est vel perspiciatis iure. Dolores blanditiis quaerat nihil est voluptatem. Velit hic rerum dolorem nihil ut sit. Harum nostrum ad ut quam esse. Ut numquam et est dolor et. Natus minus officia qui ut recusandae. Error fugit libero et dolorum.','unread','2024-01-29 02:48:47','2024-01-29 02:48:47'),(6,'Dr. Nadia Bogisich I','will.alyce@example.org','+13059290940','76606 Clay Square\nSouth Icie, ME 77284','Dicta velit itaque minus natus.','Assumenda voluptatem voluptatum id inventore possimus enim veniam quae. Dolor ea et est sit ut ipsam in. Voluptates doloremque suscipit dolor distinctio sequi molestiae eligendi. Odio aut aliquid sed molestiae illum. Id deleniti aliquam eaque dolores veniam sint minima. Adipisci itaque praesentium quae nulla officiis. Cupiditate sit atque debitis consequatur.','read','2024-01-29 02:48:47','2024-01-29 02:48:47'),(7,'Sister Volkman','nweber@example.com','+1-661-941-1488','22995 Leuschke Way Suite 864\nSouth Lewisberg, FL 42437','Sequi velit cumque vel non eligendi.','Sequi libero architecto fuga voluptatem. Labore veritatis temporibus blanditiis est. Hic vel ab pariatur alias est. Debitis qui aspernatur necessitatibus cumque quia. Maxime facilis vel suscipit omnis sunt voluptatem vel. Suscipit sit est voluptatum vel. Debitis ut dolores cumque iste incidunt. Repellat doloremque unde tempora cumque. Incidunt amet dolorum dolor error magni.','read','2024-01-29 02:48:47','2024-01-29 02:48:47'),(8,'Cathrine Dibbert','richmond.ondricka@example.net','+1.660.428.7937','42112 Moore Parks Apt. 898\nBreitenbergfurt, AZ 15778-3627','Ratione dolores sed enim eius velit.','Dolore corrupti et sit ratione. Illo reprehenderit itaque quaerat aut quibusdam dolor consequatur. Dolor quos ut omnis iure cum. Commodi omnis est et temporibus. Et amet quia tenetur voluptatem. Qui voluptas molestiae fuga nihil voluptatem quia ad pariatur. Sit sapiente sed aut perspiciatis non doloremque. Facilis molestias veritatis beatae et. Magni minima sed recusandae odit sit eveniet.','read','2024-01-29 02:48:47','2024-01-29 02:48:47'),(9,'Ophelia Huel','shanahan.shirley@example.com','(207) 474-3481','57850 Peggie Shores\nJanelleland, KS 95595-8351','Est sit qui libero harum doloribus facere qui.','Recusandae exercitationem reiciendis sint blanditiis aut fugit enim doloremque. Omnis dolorem magnam omnis architecto nostrum ipsum ex quo. Sapiente et incidunt fuga adipisci nesciunt. Fugiat sed et eum dolores quidem omnis et. Sit aut ea et.','unread','2024-01-29 02:48:47','2024-01-29 02:48:47'),(10,'Marquis Morar IV','tyrell98@example.org','469-603-7422','443 Waters Lights Apt. 281\nWest Jerrell, GA 99472','Culpa natus et culpa minus illo est.','Porro distinctio amet voluptatem in. Quo mollitia distinctio numquam. Est enim sint modi magni in iste officiis. Odit repudiandae nihil fuga optio amet velit unde. Et est modi autem dolores. Saepe qui quia reiciendis incidunt qui. Sequi doloribus sunt ut in explicabo. Molestiae velit dolor et illum nesciunt esse. Aut exercitationem inventore nam similique qui laboriosam. Sapiente vel pariatur rem id excepturi pariatur. Numquam et reprehenderit est.','unread','2024-01-29 02:48:47','2024-01-29 02:48:47');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Eveniet suscipit repellendus in. Tempora non officia omnis sunt illum architecto. Enim quas ullam nihil sunt sed ducimus neque.',1,0,'galleries/1.jpg',1,'published','2024-01-29 02:48:48','2024-01-29 02:48:48'),(2,'New Day','Perspiciatis et assumenda nam inventore. Molestiae tempore aut eligendi. Eius animi aut quia cum.',1,0,'galleries/2.jpg',1,'published','2024-01-29 02:48:48','2024-01-29 02:48:48'),(3,'Happy Day','Quis nihil voluptas veritatis saepe. Hic nesciunt molestiae nisi voluptas perspiciatis. Eos dolorem quas voluptatibus aut dolorem.',1,0,'galleries/3.jpg',1,'published','2024-01-29 02:48:48','2024-01-29 02:48:48'),(4,'Nature','Nobis facere et qui consequatur sequi nobis est. Et quia est qui velit voluptatem. Est et sint et quo sint sit alias.',1,0,'galleries/4.jpg',1,'published','2024-01-29 02:48:48','2024-01-29 02:48:48'),(5,'Morning','Nihil sunt tempore dolor laboriosam. Earum non asperiores ea animi.',1,0,'galleries/5.jpg',1,'published','2024-01-29 02:48:48','2024-01-29 02:48:48'),(6,'Photography','Illo ea consequatur temporibus odio. Sunt enim qui facilis laborum.',1,0,'galleries/6.jpg',1,'published','2024-01-29 02:48:48','2024-01-29 02:48:48');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Totam quos et exercitationem adipisci deleniti fuga commodi non. Est et id voluptas tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aut sequi sit ducimus qui. Quia et ut distinctio sunt. Et sunt sunt corrupti in et.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Est dicta maiores ea dicta veniam animi. Eius est possimus reprehenderit ut animi. Quibusdam nostrum qui inventore qui consequuntur.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut consequatur in alias quam totam doloribus officiis minima. Alias ipsam esse corrupti repellat.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et eum tempore repellat odio. Architecto et nihil repellendus quia voluptates. Nisi eligendi possimus dolor.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Unde placeat sed neque. Doloribus architecto adipisci consequatur voluptatem blanditiis ad.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Sit nisi est dolor. Voluptatibus deleniti iste aliquam quibusdam. Eos iusto consequatur deleniti nihil vel quasi saepe.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Cupiditate odit labore totam tempore vel. Rerum dolore et voluptas officiis. Dolor aut laudantium omnis reiciendis tenetur.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Fugiat autem occaecati aut error. Sint aliquam quidem commodi necessitatibus. Ex animi et consequuntur iure rerum et.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-01-29 02:48:48','2024-01-29 02:48:48'),(2,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Totam quos et exercitationem adipisci deleniti fuga commodi non. Est et id voluptas tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aut sequi sit ducimus qui. Quia et ut distinctio sunt. Et sunt sunt corrupti in et.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Est dicta maiores ea dicta veniam animi. Eius est possimus reprehenderit ut animi. Quibusdam nostrum qui inventore qui consequuntur.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut consequatur in alias quam totam doloribus officiis minima. Alias ipsam esse corrupti repellat.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et eum tempore repellat odio. Architecto et nihil repellendus quia voluptates. Nisi eligendi possimus dolor.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Unde placeat sed neque. Doloribus architecto adipisci consequatur voluptatem blanditiis ad.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Sit nisi est dolor. Voluptatibus deleniti iste aliquam quibusdam. Eos iusto consequatur deleniti nihil vel quasi saepe.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Cupiditate odit labore totam tempore vel. Rerum dolore et voluptas officiis. Dolor aut laudantium omnis reiciendis tenetur.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Fugiat autem occaecati aut error. Sint aliquam quidem commodi necessitatibus. Ex animi et consequuntur iure rerum et.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-01-29 02:48:48','2024-01-29 02:48:48'),(3,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Totam quos et exercitationem adipisci deleniti fuga commodi non. Est et id voluptas tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aut sequi sit ducimus qui. Quia et ut distinctio sunt. Et sunt sunt corrupti in et.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Est dicta maiores ea dicta veniam animi. Eius est possimus reprehenderit ut animi. Quibusdam nostrum qui inventore qui consequuntur.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut consequatur in alias quam totam doloribus officiis minima. Alias ipsam esse corrupti repellat.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et eum tempore repellat odio. Architecto et nihil repellendus quia voluptates. Nisi eligendi possimus dolor.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Unde placeat sed neque. Doloribus architecto adipisci consequatur voluptatem blanditiis ad.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Sit nisi est dolor. Voluptatibus deleniti iste aliquam quibusdam. Eos iusto consequatur deleniti nihil vel quasi saepe.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Cupiditate odit labore totam tempore vel. Rerum dolore et voluptas officiis. Dolor aut laudantium omnis reiciendis tenetur.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Fugiat autem occaecati aut error. Sint aliquam quidem commodi necessitatibus. Ex animi et consequuntur iure rerum et.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-01-29 02:48:48','2024-01-29 02:48:48'),(4,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Totam quos et exercitationem adipisci deleniti fuga commodi non. Est et id voluptas tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aut sequi sit ducimus qui. Quia et ut distinctio sunt. Et sunt sunt corrupti in et.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Est dicta maiores ea dicta veniam animi. Eius est possimus reprehenderit ut animi. Quibusdam nostrum qui inventore qui consequuntur.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut consequatur in alias quam totam doloribus officiis minima. Alias ipsam esse corrupti repellat.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et eum tempore repellat odio. Architecto et nihil repellendus quia voluptates. Nisi eligendi possimus dolor.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Unde placeat sed neque. Doloribus architecto adipisci consequatur voluptatem blanditiis ad.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Sit nisi est dolor. Voluptatibus deleniti iste aliquam quibusdam. Eos iusto consequatur deleniti nihil vel quasi saepe.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Cupiditate odit labore totam tempore vel. Rerum dolore et voluptas officiis. Dolor aut laudantium omnis reiciendis tenetur.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Fugiat autem occaecati aut error. Sint aliquam quidem commodi necessitatibus. Ex animi et consequuntur iure rerum et.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-01-29 02:48:48','2024-01-29 02:48:48'),(5,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Totam quos et exercitationem adipisci deleniti fuga commodi non. Est et id voluptas tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aut sequi sit ducimus qui. Quia et ut distinctio sunt. Et sunt sunt corrupti in et.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Est dicta maiores ea dicta veniam animi. Eius est possimus reprehenderit ut animi. Quibusdam nostrum qui inventore qui consequuntur.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut consequatur in alias quam totam doloribus officiis minima. Alias ipsam esse corrupti repellat.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et eum tempore repellat odio. Architecto et nihil repellendus quia voluptates. Nisi eligendi possimus dolor.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Unde placeat sed neque. Doloribus architecto adipisci consequatur voluptatem blanditiis ad.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Sit nisi est dolor. Voluptatibus deleniti iste aliquam quibusdam. Eos iusto consequatur deleniti nihil vel quasi saepe.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Cupiditate odit labore totam tempore vel. Rerum dolore et voluptas officiis. Dolor aut laudantium omnis reiciendis tenetur.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Fugiat autem occaecati aut error. Sint aliquam quidem commodi necessitatibus. Ex animi et consequuntur iure rerum et.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-01-29 02:48:48','2024-01-29 02:48:48'),(6,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Totam quos et exercitationem adipisci deleniti fuga commodi non. Est et id voluptas tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aut sequi sit ducimus qui. Quia et ut distinctio sunt. Et sunt sunt corrupti in et.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Est dicta maiores ea dicta veniam animi. Eius est possimus reprehenderit ut animi. Quibusdam nostrum qui inventore qui consequuntur.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut consequatur in alias quam totam doloribus officiis minima. Alias ipsam esse corrupti repellat.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et eum tempore repellat odio. Architecto et nihil repellendus quia voluptates. Nisi eligendi possimus dolor.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Unde placeat sed neque. Doloribus architecto adipisci consequatur voluptatem blanditiis ad.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Sit nisi est dolor. Voluptatibus deleniti iste aliquam quibusdam. Eos iusto consequatur deleniti nihil vel quasi saepe.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Cupiditate odit labore totam tempore vel. Rerum dolore et voluptas officiis. Dolor aut laudantium omnis reiciendis tenetur.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Fugiat autem occaecati aut error. Sint aliquam quidem commodi necessitatibus. Ex animi et consequuntur iure rerum et.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-01-29 02:48:48','2024-01-29 02:48:48');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','a8e15b9a89ac18be2b7aba38343be6e9',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','341c4b321af2a4c78b78f47aa0ec9011',1,'Botble\\Menu\\Models\\Menu'),(3,'en_US','818e6051ae3a2c51bc5ed485ae4c4521',2,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'author','author',1,'image/jpeg',116780,'general/author.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(2,0,'favicon','favicon',1,'image/png',818,'general/favicon.png','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(3,0,'featured','featured',1,'image/png',7884,'general/featured.png','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(4,0,'logo-white','logo-white',1,'image/png',1244,'general/logo-white.png','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(5,0,'logo','logo',1,'image/png',4346,'general/logo.png','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(6,0,'1','1',2,'image/jpeg',9730,'news/1.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(7,0,'10','10',2,'image/jpeg',9730,'news/10.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(8,0,'11','11',2,'image/jpeg',9730,'news/11.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(9,0,'12','12',2,'image/jpeg',9730,'news/12.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(10,0,'13','13',2,'image/jpeg',9730,'news/13.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(11,0,'14','14',2,'image/jpeg',9730,'news/14.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(12,0,'15','15',2,'image/jpeg',9730,'news/15.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(13,0,'16','16',2,'image/jpeg',9730,'news/16.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(14,0,'17','17',2,'image/jpeg',9730,'news/17.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(15,0,'18','18',2,'image/jpeg',9730,'news/18.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(16,0,'19','19',2,'image/jpeg',9730,'news/19.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(17,0,'2','2',2,'image/jpeg',9730,'news/2.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(18,0,'3','3',2,'image/jpeg',9730,'news/3.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(19,0,'4','4',2,'image/jpeg',9730,'news/4.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(20,0,'5','5',2,'image/jpeg',9730,'news/5.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(21,0,'6','6',2,'image/jpeg',9730,'news/6.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(22,0,'7','7',2,'image/jpeg',9730,'news/7.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(23,0,'8','8',2,'image/jpeg',9730,'news/8.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(24,0,'9','9',2,'image/jpeg',9730,'news/9.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(25,0,'1','1',3,'image/jpeg',9730,'categories/1.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(26,0,'2','2',3,'image/jpeg',9730,'categories/2.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(27,0,'3','3',3,'image/jpeg',9730,'categories/3.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(28,0,'4','4',3,'image/jpeg',9730,'categories/4.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(29,0,'5','5',3,'image/jpeg',9730,'categories/5.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(30,0,'6','6',3,'image/jpeg',9730,'categories/6.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(31,0,'7','7',3,'image/jpeg',9730,'categories/7.jpg','[]','2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(32,0,'1','1',4,'image/jpeg',9730,'galleries/1.jpg','[]','2024-01-29 02:48:48','2024-01-29 02:48:48',NULL),(33,0,'10','10',4,'image/jpeg',9730,'galleries/10.jpg','[]','2024-01-29 02:48:48','2024-01-29 02:48:48',NULL),(34,0,'2','2',4,'image/jpeg',9730,'galleries/2.jpg','[]','2024-01-29 02:48:48','2024-01-29 02:48:48',NULL),(35,0,'3','3',4,'image/jpeg',9730,'galleries/3.jpg','[]','2024-01-29 02:48:48','2024-01-29 02:48:48',NULL),(36,0,'4','4',4,'image/jpeg',9730,'galleries/4.jpg','[]','2024-01-29 02:48:48','2024-01-29 02:48:48',NULL),(37,0,'5','5',4,'image/jpeg',9730,'galleries/5.jpg','[]','2024-01-29 02:48:48','2024-01-29 02:48:48',NULL),(38,0,'6','6',4,'image/jpeg',9730,'galleries/6.jpg','[]','2024-01-29 02:48:48','2024-01-29 02:48:48',NULL),(39,0,'7','7',4,'image/jpeg',9730,'galleries/7.jpg','[]','2024-01-29 02:48:48','2024-01-29 02:48:48',NULL),(40,0,'8','8',4,'image/jpeg',9730,'galleries/8.jpg','[]','2024-01-29 02:48:48','2024-01-29 02:48:48',NULL),(41,0,'9','9',4,'image/jpeg',9730,'galleries/9.jpg','[]','2024-01-29 02:48:48','2024-01-29 02:48:48',NULL),(42,0,'1','1',5,'image/jpeg',9930,'banners/1.jpg','[]','2024-01-29 02:48:48','2024-01-29 02:48:48',NULL),(43,0,'2','2',5,'image/jpeg',9930,'banners/2.jpg','[]','2024-01-29 02:48:48','2024-01-29 02:48:48',NULL),(44,0,'3','3',5,'image/jpeg',9930,'banners/3.jpg','[]','2024-01-29 02:48:48','2024-01-29 02:48:48',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'general',NULL,'general',0,'2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(2,0,'news',NULL,'news',0,'2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(3,0,'categories',NULL,'categories',0,'2024-01-29 02:48:47','2024-01-29 02:48:47',NULL),(4,0,'galleries',NULL,'galleries',0,'2024-01-29 02:48:48','2024-01-29 02:48:48',NULL),(5,0,'banners',NULL,'banners',0,'2024-01-29 02:48:48','2024-01-29 02:48:48',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-01-29 02:48:47','2024-01-29 02:48:47');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/','elegant-icon icon_house_alt mr-5',0,'Home',NULL,'_self',1,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(2,1,1,NULL,NULL,'/',NULL,0,'Home default',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(3,1,1,2,'Botble\\Page\\Models\\Page','/home-2',NULL,0,'Home 2',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(4,1,1,3,'Botble\\Page\\Models\\Page','/home-3',NULL,0,'Home 3',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(5,1,0,2,'Botble\\Blog\\Models\\Category',NULL,NULL,0,'Travel',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(6,1,0,4,'Botble\\Blog\\Models\\Category',NULL,NULL,0,'Destination',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(7,1,0,6,'Botble\\Blog\\Models\\Category',NULL,NULL,0,'Hotels',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(8,1,0,9,'Botble\\Blog\\Models\\Category',NULL,NULL,0,'Lifestyle',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(9,1,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(10,1,0,NULL,NULL,'/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(11,1,0,NULL,NULL,'/blog',NULL,0,'Blog layouts',NULL,'_self',1,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(12,1,11,9,'Botble\\Page\\Models\\Page','/blog-grid-layout',NULL,0,'Grid layout',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(13,1,11,7,'Botble\\Page\\Models\\Page','/blog-list-layout',NULL,0,'List layout',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(14,1,11,8,'Botble\\Page\\Models\\Page','/blog-big-layout',NULL,0,'Big layout',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(15,1,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(16,2,0,NULL,NULL,'/',NULL,0,'Homepage',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(17,2,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(18,2,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(19,2,0,2,'Botble\\Blog\\Models\\Category',NULL,NULL,0,'Travel',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47'),(20,2,0,NULL,NULL,'/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-01-29 02:48:47','2024-01-29 02:48:47');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-01-29 02:48:47','2024-01-29 02:48:47'),(2,'Quick links','quick-links','published','2024-01-29 02:48:47','2024-01-29 02:48:47');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'image','[\"categories\\/1.jpg\"]',1,'Botble\\Blog\\Models\\Category','2024-01-29 02:48:47','2024-01-29 02:48:47'),(2,'image','[\"categories\\/2.jpg\"]',2,'Botble\\Blog\\Models\\Category','2024-01-29 02:48:47','2024-01-29 02:48:47'),(3,'image','[\"categories\\/2.jpg\"]',3,'Botble\\Blog\\Models\\Category','2024-01-29 02:48:47','2024-01-29 02:48:47'),(4,'image','[\"categories\\/3.jpg\"]',4,'Botble\\Blog\\Models\\Category','2024-01-29 02:48:47','2024-01-29 02:48:47'),(5,'image','[\"categories\\/3.jpg\"]',5,'Botble\\Blog\\Models\\Category','2024-01-29 02:48:47','2024-01-29 02:48:47'),(6,'image','[\"categories\\/4.jpg\"]',6,'Botble\\Blog\\Models\\Category','2024-01-29 02:48:47','2024-01-29 02:48:47'),(7,'image','[\"categories\\/4.jpg\"]',7,'Botble\\Blog\\Models\\Category','2024-01-29 02:48:47','2024-01-29 02:48:47'),(8,'image','[\"categories\\/5.jpg\"]',8,'Botble\\Blog\\Models\\Category','2024-01-29 02:48:47','2024-01-29 02:48:47'),(9,'image','[\"categories\\/6.jpg\"]',9,'Botble\\Blog\\Models\\Category','2024-01-29 02:48:47','2024-01-29 02:48:47');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_06_100448_change_random_hash_for_media',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2020_11_18_150916_ads_create_ads_table',2),(34,'2021_12_02_035301_add_ads_translations_table',2),(35,'2023_04_17_062645_add_open_in_new_tab',2),(36,'2023_11_07_023805_add_tablet_mobile_image',2),(37,'2015_06_29_025744_create_audit_history',3),(38,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(39,'2015_06_18_033822_create_blog_table',4),(40,'2021_02_16_092633_remove_default_value_for_author_type',4),(41,'2021_12_03_030600_create_blog_translations',4),(42,'2022_04_19_113923_add_index_to_table_posts',4),(43,'2023_08_29_074620_make_column_author_id_nullable',4),(44,'2016_06_17_091537_create_contacts_table',5),(45,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',5),(46,'2016_10_13_150201_create_galleries_table',6),(47,'2021_12_03_082953_create_gallery_translations',6),(48,'2022_04_30_034048_create_gallery_meta_translations_table',6),(49,'2023_08_29_075308_make_column_user_id_nullable',6),(50,'2016_10_03_032336_create_languages_table',7),(51,'2023_09_14_022423_add_index_for_language_table',7),(52,'2021_10_25_021023_fix-priority-load-for-language-advanced',8),(53,'2021_12_03_075608_create_page_translations',8),(54,'2023_07_06_011444_create_slug_translations_table',8),(55,'2017_10_24_154832_create_newsletter_table',9),(56,'2016_10_07_193005_create_translations_table',10),(57,'2023_12_12_105220_drop_translations_table',10);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[about-banner title=\"Hello, I’m &lt;span&gt;Steven&lt;/span&gt;\" subtitle=\"Welcome to my blog\" text_muted=\"Travel Blogger., Content Writer., Food Guides\" image=\"general/featured.png\" newsletter_title=\"Don\'t miss out on the latest news about Travel tips, Hotels review, Food guide...\" image=\"general/featured.png\" show_newsletter_form=\"yes\"][/about-banner]</div><div>[featured-posts title=\"Featured posts\"][/featured-posts]</div><div>[blog-categories-posts category_id=\"2\"][/blog-categories-posts]</div><div>[categories-with-posts category_id_1=\"3\" category_id_2=\"4\" category_id_3=\"5\"][/categories-with-posts]</div><div>[featured-categories title=\"Categories\"][/featured-categories]</div>',1,NULL,'homepage',NULL,'published','2024-01-29 02:48:47','2024-01-29 02:48:47'),(2,'Home 2','<div>[featured-posts-slider-full][/featured-posts-slider-full]</div><div>[blog-categories-posts category_id=\"2\"][/blog-categories-posts]</div><div>[categories-with-posts category_id_1=\"3\" category_id_2=\"4\" category_id_3=\"5\"][/categories-with-posts]</div><div>[featured-categories title=\"Categories\"][/featured-categories]</div>',1,NULL,'homepage',NULL,'published','2024-01-29 02:48:47','2024-01-29 02:48:47'),(3,'Home 3','<div>[featured-posts-slider][/featured-posts-slider]</div><div>[blog-categories-posts category_id=\"2\"][/blog-categories-posts]</div><div>[categories-with-posts category_id_1=\"3\" category_id_2=\"4\" category_id_3=\"5\"][/categories-with-posts]</div><div>[featured-categories title=\"Categories\"][/featured-categories]</div>',1,NULL,'homepage',NULL,'published','2024-01-29 02:48:47','2024-01-29 02:48:47'),(4,'Blog','---',1,NULL,'default',NULL,'published','2024-01-29 02:48:47','2024-01-29 02:48:47'),(5,'Contact','<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Hotline: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>For the fastest reply, please use the contact form below.</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2024-01-29 02:48:47','2024-01-29 02:48:47'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-01-29 02:48:47','2024-01-29 02:48:47'),(7,'Blog List layout','<div>[blog-list limit=\"12\"][/blog-list]</div>',1,NULL,'right-sidebar',NULL,'published','2024-01-29 02:48:47','2024-01-29 02:48:47'),(8,'Blog Big layout','<div>[blog-big limit=\"12\"][/blog-big]</div>',1,NULL,'default',NULL,'published','2024-01-29 02:48:47','2024-01-29 02:48:47'),(9,'Blog Grid layout','<div>[blog-big limit=\"12\"][/blog-big]</div>',1,NULL,'right-sidebar',NULL,'published','2024-01-29 02:48:47','2024-01-29 02:48:47');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(7,1),(2,2),(6,2),(4,3),(7,3),(1,4),(6,4),(4,5),(6,5),(3,6),(5,6),(4,7),(7,7),(2,8),(7,8),(3,9),(7,9),(2,10),(7,10),(2,11),(6,11),(2,12),(5,12),(1,13),(7,13),(2,14),(6,14),(4,15),(6,15),(2,16),(7,16);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11),(1,12),(2,12),(3,12),(4,12),(5,12),(1,13),(2,13),(3,13),(4,13),(5,13),(1,14),(2,14),(3,14),(4,14),(5,14),(1,15),(2,15),(3,15),(4,15),(5,15),(1,16),(2,16),(3,16),(4,16),(5,16);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'The Top 2020 Handbag Trends to Know','Repellat pariatur et ut voluptate. Sed qui molestiae sunt excepturi. Et dolores temporibus fugiat eum mollitia eos cupiditate facilis.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p><p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',2271,'video','2024-01-29 02:48:47','2024-01-29 02:48:47'),(2,'Top Search Engine Optimization Strategies!','Eos in adipisci sint non error quis aspernatur. Assumenda sequi enim dolorum praesentium eos magni. Sit voluptas dolore eaque rerum distinctio.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',623,'default','2024-01-29 02:48:47','2024-01-29 02:48:47'),(3,'Which Company Would You Choose?','Quidem nesciunt necessitatibus maiores ullam voluptas quos. Quae architecto voluptatem praesentium ipsum. Dolor nobis perspiciatis laboriosam. Ex cumque necessitatibus et nam vitae.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',146,'default','2024-01-29 02:48:47','2024-01-29 02:48:47'),(4,'Used Car Dealer Sales Tricks Exposed','Reprehenderit laborum molestiae dolorum eius dolor excepturi dignissimos. Fuga esse eius quo illo dolorem molestiae suscipit distinctio.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p><p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',365,'video','2024-01-29 02:48:47','2024-01-29 02:48:47'),(5,'20 Ways To Sell Your Product Faster','Aut sequi nesciunt quisquam quia. Quo nobis nam accusamus libero sunt ullam sunt. Rerum sunt magnam dolores quo ipsa qui voluptas.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1780,'default','2024-01-29 02:48:47','2024-01-29 02:48:47'),(6,'The Secrets Of Rich And Famous Writers','Pariatur quasi fugit provident incidunt nihil placeat. Accusantium nihil eveniet est eum vero ut animi maiores. Recusandae minima voluptates dignissimos repudiandae ducimus fuga reiciendis.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1160,'default','2024-01-29 02:48:47','2024-01-29 02:48:47'),(7,'Imagine Losing 20 Pounds In 14 Days!','Est dolorum qui itaque asperiores repellendus. Magnam nemo cupiditate doloremque maxime eum aut. Sequi quo esse eveniet autem ipsa id laudantium consequuntur.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p><p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1966,'video','2024-01-29 02:48:48','2024-01-29 02:48:48'),(8,'Are You Still Using That Slow, Old Typewriter?','Eligendi ut adipisci laudantium aliquid ut fugit. Ad velit laborum sint rem. Officia eveniet voluptas voluptatem magni. Nihil sit sed quaerat quas dolorum aut nemo.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',145,'default','2024-01-29 02:48:48','2024-01-29 02:48:48'),(9,'A Skin Cream That’s Proven To Work','Officiis molestiae libero tenetur. Dolores voluptate vitae error animi eius. Consectetur cupiditate omnis numquam. Optio architecto et temporibus.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',242,'default','2024-01-29 02:48:48','2024-01-29 02:48:48'),(10,'10 Reasons To Start Your Own, Profitable Website!','Quia qui nihil minus quibusdam qui ut. Et minus porro ut ipsam illo. Asperiores voluptatem et non quia explicabo.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p><p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',125,'video','2024-01-29 02:48:48','2024-01-29 02:48:48'),(11,'Simple Ways To Reduce Your Unwanted Wrinkles!','Eligendi quia sequi et sunt fuga atque. Fuga earum voluptas earum cupiditate perspiciatis. Porro assumenda asperiores beatae. Tenetur commodi provident esse repellendus.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1135,'default','2024-01-29 02:48:48','2024-01-29 02:48:48'),(12,'Apple iMac with Retina 5K display review','Ut autem numquam blanditiis eum. Ut quidem ex est id aperiam. Nesciunt animi aut consequuntur tempore quas cupiditate dolores ut.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',0,'news/12.jpg',754,'default','2024-01-29 02:48:48','2024-01-29 02:48:48'),(13,'10,000 Web Site Visitors In One Month:Guaranteed','Quo architecto atque necessitatibus alias vel vitae sint. Nam et consequatur repellendus occaecati.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p><p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',0,'news/13.jpg',2166,'video','2024-01-29 02:48:48','2024-01-29 02:48:48'),(14,'Unlock The Secrets Of Selling High Ticket Items','Quia molestiae dolorem tempore ex. Sunt tenetur eos nobis aut. Tempora quia exercitationem tenetur quidem enim quod. Qui aperiam debitis error ipsum dolor impedit.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',0,'news/14.jpg',1433,'default','2024-01-29 02:48:48','2024-01-29 02:48:48'),(15,'4 Expert Tips On How To Choose The Right Men’s Wallet','Magni asperiores provident nam animi aliquid deleniti. Dolorem non quod quasi vel dolores nemo quae. Excepturi hic suscipit quos.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',0,'news/15.jpg',1110,'default','2024-01-29 02:48:48','2024-01-29 02:48:48'),(16,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Rem nisi recusandae voluptatem reiciendis eum consequuntur. Qui enim qui similique amet provident. Mollitia consequatur veritatis labore dolores. Qui ad libero dignissimos voluptatem numquam.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p><p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"#\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-3.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"#\"><img src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-4.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"#\">intriguingly</a><sup><a href=\"#\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"#\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"#\">some across</a><sup><a href=\"#\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"#\">faltering alas</a><sup><a href=\"#\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"#\">dolor</a><sup><a href=\"#\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"https://stories-demo.netlify.app/assets/imgs/news/thumb-11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',0,'news/16.jpg',935,'video','2024-01-29 02:48:48','2024-01-29 02:48:48');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,2,2,'2024-01-29 02:48:47','2024-01-29 02:48:47');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-01-29 02:48:47'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"gallery\",\"newsletter\",\"rss-feed\",\"translation\"]',NULL,'2024-01-29 02:48:47'),(4,'theme','stories',NULL,'2024-01-29 02:48:47'),(5,'show_admin_bar','1',NULL,'2024-01-29 02:48:47'),(6,'language_hide_default','1',NULL,NULL),(7,'language_switcher_display','dropdown',NULL,NULL),(8,'language_display','all',NULL,NULL),(9,'language_hide_languages','[]',NULL,NULL),(10,'admin_logo','general/logo-white.png',NULL,NULL),(11,'admin_favicon','general/favicon.png',NULL,NULL),(14,'theme-stories-site_title','Stories - Laravel Personal Blog Script','2024-01-29 02:48:47','2024-01-29 02:48:47'),(15,'theme-stories-seo_description','Stories is a clean and minimal Laravel blog script perfect for writers who need to create a personal blog site with simple creative features and effects to make readers feel the pleasure of reading blog posts and articles.','2024-01-29 02:48:47','2024-01-29 02:48:47'),(16,'theme-stories-copyright','©2024 Stories - Laravel Personal Blog Script','2024-01-29 02:48:47','2024-01-29 02:48:47'),(17,'theme-stories-designed_by','Designed by AliThemes | All rights reserved.','2024-01-29 02:48:47','2024-01-29 02:48:47'),(18,'theme-stories-favicon','general/favicon.png','2024-01-29 02:48:47','2024-01-29 02:48:47'),(19,'theme-stories-site_description','Start writing, no matter what. The water does not flow until the faucet is turned on.','2024-01-29 02:48:47','2024-01-29 02:48:47'),(20,'theme-stories-address','123 Main Street New York, NY 100012','2024-01-29 02:48:47','2024-01-29 02:48:47'),(21,'theme-stories-facebook','https://facebook.com','2024-01-29 02:48:47','2024-01-29 02:48:47'),(22,'theme-stories-twitter','https://twitter.com','2024-01-29 02:48:47','2024-01-29 02:48:47'),(23,'theme-stories-youtube','https://youtube.com','2024-01-29 02:48:47','2024-01-29 02:48:47'),(24,'theme-stories-cookie_consent_message','Your experience on this site will be improved by allowing cookies ','2024-01-29 02:48:47','2024-01-29 02:48:47'),(25,'theme-stories-cookie_consent_learn_more_url','https://stories.test/cookie-policy','2024-01-29 02:48:47','2024-01-29 02:48:47'),(26,'theme-stories-cookie_consent_learn_more_text','Cookie Policy','2024-01-29 02:48:47','2024-01-29 02:48:47'),(27,'theme-stories-homepage_id','1','2024-01-29 02:48:47','2024-01-29 02:48:47'),(28,'theme-stories-blog_page_id','4','2024-01-29 02:48:47','2024-01-29 02:48:47'),(29,'theme-stories-logo','general/logo.png','2024-01-29 02:48:47','2024-01-29 02:48:47'),(30,'theme-stories-social_1_name','Facebook','2024-01-29 02:48:47','2024-01-29 02:48:47'),(31,'theme-stories-social_1_icon','social_facebook','2024-01-29 02:48:47','2024-01-29 02:48:47'),(32,'theme-stories-social_1_url','https://facebook.com','2024-01-29 02:48:47','2024-01-29 02:48:47'),(33,'theme-stories-social_1_color','#3b5999','2024-01-29 02:48:47','2024-01-29 02:48:47'),(34,'theme-stories-social_2_name','Twitter','2024-01-29 02:48:47','2024-01-29 02:48:47'),(35,'theme-stories-social_2_icon','social_twitter','2024-01-29 02:48:47','2024-01-29 02:48:47'),(36,'theme-stories-social_2_url','https://twitter.com','2024-01-29 02:48:47','2024-01-29 02:48:47'),(37,'theme-stories-social_2_color','#55ACF9','2024-01-29 02:48:47','2024-01-29 02:48:47'),(38,'theme-stories-social_3_name','Linkedin','2024-01-29 02:48:47','2024-01-29 02:48:47'),(39,'theme-stories-social_3_icon','social_linkedin','2024-01-29 02:48:47','2024-01-29 02:48:47'),(40,'theme-stories-social_3_url','https://linkedin.com','2024-01-29 02:48:47','2024-01-29 02:48:47'),(41,'theme-stories-social_3_color','#0a66c2','2024-01-29 02:48:47','2024-01-29 02:48:47'),(42,'theme-stories-action_button_text','Buy Now','2024-01-29 02:48:47','2024-01-29 02:48:47'),(43,'theme-stories-action_button_url','https://botble.com/go/stories','2024-01-29 02:48:47','2024-01-29 02:48:47'),(44,'media_random_hash','93cb4a6902b488b32712b49313d7f513',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'home',1,'Botble\\Page\\Models\\Page','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(2,'home-2',2,'Botble\\Page\\Models\\Page','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(3,'home-3',3,'Botble\\Page\\Models\\Page','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(4,'blog',4,'Botble\\Page\\Models\\Page','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(5,'contact',5,'Botble\\Page\\Models\\Page','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(6,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(7,'blog-list-layout',7,'Botble\\Page\\Models\\Page','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(8,'blog-big-layout',8,'Botble\\Page\\Models\\Page','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(9,'blog-grid-layout',9,'Botble\\Page\\Models\\Page','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(10,'uncategorized',1,'Botble\\Blog\\Models\\Category','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(11,'travel',2,'Botble\\Blog\\Models\\Category','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(12,'guides',3,'Botble\\Blog\\Models\\Category','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(13,'destination',4,'Botble\\Blog\\Models\\Category','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(14,'food',5,'Botble\\Blog\\Models\\Category','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(15,'hotels',6,'Botble\\Blog\\Models\\Category','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(16,'review',7,'Botble\\Blog\\Models\\Category','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(17,'healthy',8,'Botble\\Blog\\Models\\Category','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(18,'lifestyle',9,'Botble\\Blog\\Models\\Category','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(19,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-01-29 02:48:47','2024-01-29 02:48:47'),(20,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-01-29 02:48:47','2024-01-29 02:48:47'),(21,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-01-29 02:48:47','2024-01-29 02:48:47'),(22,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-01-29 02:48:47','2024-01-29 02:48:47'),(23,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-01-29 02:48:47','2024-01-29 02:48:47'),(24,'the-top-2020-handbag-trends-to-know',1,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(25,'top-search-engine-optimization-strategies',2,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(26,'which-company-would-you-choose',3,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(27,'used-car-dealer-sales-tricks-exposed',4,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(28,'20-ways-to-sell-your-product-faster',5,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:47','2024-01-29 02:48:47'),(29,'the-secrets-of-rich-and-famous-writers',6,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:48','2024-01-29 02:48:48'),(30,'imagine-losing-20-pounds-in-14-days',7,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:48','2024-01-29 02:48:48'),(31,'are-you-still-using-that-slow-old-typewriter',8,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:48','2024-01-29 02:48:48'),(32,'a-skin-cream-thats-proven-to-work',9,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:48','2024-01-29 02:48:48'),(33,'10-reasons-to-start-your-own-profitable-website',10,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:48','2024-01-29 02:48:48'),(34,'simple-ways-to-reduce-your-unwanted-wrinkles',11,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:48','2024-01-29 02:48:48'),(35,'apple-imac-with-retina-5k-display-review',12,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:48','2024-01-29 02:48:48'),(36,'10000-web-site-visitors-in-one-monthguaranteed',13,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:48','2024-01-29 02:48:48'),(37,'unlock-the-secrets-of-selling-high-ticket-items',14,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:48','2024-01-29 02:48:48'),(38,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',15,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:48','2024-01-29 02:48:48'),(39,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',16,'Botble\\Blog\\Models\\Post','','2024-01-29 02:48:48','2024-01-29 02:48:48'),(40,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-01-29 02:48:48','2024-01-29 02:48:48'),(41,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-01-29 02:48:48','2024-01-29 02:48:48'),(42,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-01-29 02:48:48','2024-01-29 02:48:48'),(43,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-01-29 02:48:48','2024-01-29 02:48:48'),(44,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-01-29 02:48:48','2024-01-29 02:48:48'),(45,'photography',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-01-29 02:48:48','2024-01-29 02:48:48');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2024-01-29 02:48:47','2024-01-29 02:48:47'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2024-01-29 02:48:47','2024-01-29 02:48:47'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2024-01-29 02:48:47','2024-01-29 02:48:47'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2024-01-29 02:48:47','2024-01-29 02:48:47'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2024-01-29 02:48:47','2024-01-29 02:48:47');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'alfonzo.conn@oreilly.org',NULL,'$2y$12$VwFApjC5hbCBAdrIbgiBiOzOrwt4OqT/jfNuUwaN5XUDdNoVxrq76',NULL,'2024-01-29 02:48:46','2024-01-29 02:48:46','Toni','Mosciski','botble',NULL,1,1,NULL,NULL),(2,'bennett63@mccullough.net',NULL,'$2y$12$VlwOS70y3yvZulYg31B7T.fxReubj7nsrLUtyptmQZJ8PgjSZcrdK',NULL,'2024-01-29 02:48:47','2024-01-29 02:48:47','Marjory','Dare','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','stories',0,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2024-01-29 02:48:47','2024-01-29 02:48:47'),(2,'TagsWidget','footer_sidebar','stories',1,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}','2024-01-29 02:48:47','2024-01-29 02:48:47'),(3,'NewsletterWidget','footer_sidebar','stories',2,'{\"id\":\"NewsletterWidget\",\"name\":\"Newsletter\"}','2024-01-29 02:48:47','2024-01-29 02:48:47'),(4,'AboutWidget','primary_sidebar','stories',0,'{\"id\":\"AboutWidget\",\"name\":\"Hello, I\'m Steven\",\"description\":\"Hi, I\\u2019m Steven, a Florida native, who left my career in corporate wealth management six years ago to embark on a summer of soul searching that would change the course of my life forever.\",\"image\":\"general\\/author.jpg\"}','2024-01-29 02:48:47','2024-01-29 02:48:47'),(5,'PopularPostsWidget','primary_sidebar','stories',1,'{\"id\":\"PopularPostsWidget\",\"name\":\"Most popular\",\"number_display\":5}','2024-01-29 02:48:47','2024-01-29 02:48:47'),(6,'GalleriesWidget','primary_sidebar','stories',2,'{\"id\":\"GalleriesWidget\",\"name\":\"Galleries\",\"number_display\":6}','2024-01-29 02:48:47','2024-01-29 02:48:47');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-29 16:48:48
