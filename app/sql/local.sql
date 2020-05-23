-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_cocoon_accesses`
--

DROP TABLE IF EXISTS `wp_cocoon_accesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_cocoon_accesses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `post_type` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT 'post',
  `date` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` bigint(20) DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pid_ptype_date` (`post_id`,`post_type`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cocoon_accesses`
--

LOCK TABLES `wp_cocoon_accesses` WRITE;
/*!40000 ALTER TABLE `wp_cocoon_accesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_cocoon_accesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cocoon_affiliate_tags`
--

DROP TABLE IF EXISTS `wp_cocoon_affiliate_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_cocoon_affiliate_tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(126) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `visible` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cocoon_affiliate_tags`
--

LOCK TABLES `wp_cocoon_affiliate_tags` WRITE;
/*!40000 ALTER TABLE `wp_cocoon_affiliate_tags` DISABLE KEYS */;
INSERT INTO `wp_cocoon_affiliate_tags` VALUES (1,'2020-05-18 13:07:56','2020-05-18 13:07:56','アフィリエイトタグサンプル','<a href=\"https://wp-simplicity.com/\">Simplicity | 内部SEO施策済みのシンプルな無料WordPressテーマ</a>',_binary '');
/*!40000 ALTER TABLE `wp_cocoon_affiliate_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cocoon_function_texts`
--

DROP TABLE IF EXISTS `wp_cocoon_function_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_cocoon_function_texts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(126) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `visible` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cocoon_function_texts`
--

LOCK TABLES `wp_cocoon_function_texts` WRITE;
/*!40000 ALTER TABLE `wp_cocoon_function_texts` DISABLE KEYS */;
INSERT INTO `wp_cocoon_function_texts` VALUES (1,'2020-05-18 13:07:56','2020-05-18 13:07:56','WordPressカスタマイズ注意文サンプル','<p class=\"alert-box\">WordPressのfunctions.phpを編集する前は、編集前に必ずバックアップを取って保存してください。もし編集後、エラーが出るようでしたら、バックアップファイルを元に復元してください。 </p>',_binary '');
/*!40000 ALTER TABLE `wp_cocoon_function_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cocoon_item_rankings`
--

DROP TABLE IF EXISTS `wp_cocoon_item_rankings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_cocoon_item_rankings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(126) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `item_ranking` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `count` bigint(20) DEFAULT '1',
  `visible` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cocoon_item_rankings`
--

LOCK TABLES `wp_cocoon_item_rankings` WRITE;
/*!40000 ALTER TABLE `wp_cocoon_item_rankings` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_cocoon_item_rankings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cocoon_speech_balloons`
--

DROP TABLE IF EXISTS `wp_cocoon_speech_balloons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_cocoon_speech_balloons` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(126) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(36) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `icon` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'http://lesson1.local/wp-content/themes/cocoon-master/images/anony.png',
  `style` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'stn',
  `position` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'l',
  `iconstyle` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'cb',
  `credit` varchar(256) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cocoon_speech_balloons`
--

LOCK TABLES `wp_cocoon_speech_balloons` WRITE;
/*!40000 ALTER TABLE `wp_cocoon_speech_balloons` DISABLE KEYS */;
INSERT INTO `wp_cocoon_speech_balloons` VALUES (1,'2020-05-18 13:07:56','2020-05-18 13:07:56','[SAMPLE 001] 男性（左）','','http://lesson1.local/wp-content/themes/cocoon-master/images/man.png','stn','l','cb',NULL,_binary '');
INSERT INTO `wp_cocoon_speech_balloons` VALUES (2,'2020-05-18 13:07:56','2020-05-18 13:07:56','[SAMPLE 002] 女性（右）','','http://lesson1.local/wp-content/themes/cocoon-master/images/woman.png','stn','r','cb',NULL,_binary '');
INSERT INTO `wp_cocoon_speech_balloons` VALUES (3,'2020-05-18 13:07:56','2020-05-18 13:07:56','[SAMPLE 003] ビジネスマン（左）','','http://lesson1.local/wp-content/themes/cocoon-master/images/b-man.png','line','l','cb',NULL,_binary '');
INSERT INTO `wp_cocoon_speech_balloons` VALUES (4,'2020-05-18 13:07:56','2020-05-18 13:07:56','[SAMPLE 004] ビジネスウーマン（右）','','http://lesson1.local/wp-content/themes/cocoon-master/images/b-woman.png','line','r','cb',NULL,_binary '');
INSERT INTO `wp_cocoon_speech_balloons` VALUES (5,'2020-05-18 13:07:56','2020-05-18 13:07:56','[SAMPLE 005] 悩むおじさん（左）','','http://lesson1.local/wp-content/themes/cocoon-master/images/ojisan.png','flat','l','cb',NULL,_binary '');
INSERT INTO `wp_cocoon_speech_balloons` VALUES (6,'2020-05-18 13:07:56','2020-05-18 13:07:56','[SAMPLE 006] 悩むおばさん（左）','','http://lesson1.local/wp-content/themes/cocoon-master/images/obasan.png','flat','r','cb',NULL,_binary '');
INSERT INTO `wp_cocoon_speech_balloons` VALUES (7,'2020-05-18 13:07:56','2020-05-18 13:07:56','[SAMPLE 007] 男性医師（左）','','http://lesson1.local/wp-content/themes/cocoon-master/images/doctor.png','stn','l','sb',NULL,_binary '');
INSERT INTO `wp_cocoon_speech_balloons` VALUES (8,'2020-05-18 13:07:56','2020-05-18 13:07:56','[SAMPLE 008] 女性医師（右）','','http://lesson1.local/wp-content/themes/cocoon-master/images/doctress.png','stn','r','sb',NULL,_binary '');
INSERT INTO `wp_cocoon_speech_balloons` VALUES (9,'2020-05-18 13:07:56','2020-05-18 13:07:56','[SAMPLE 009] どや顔男性（左）','','http://lesson1.local/wp-content/themes/cocoon-master/images/doya-man.png','think','l','cb',NULL,_binary '');
INSERT INTO `wp_cocoon_speech_balloons` VALUES (10,'2020-05-18 13:07:56','2020-05-18 13:07:56','[SAMPLE 010] どや顔女性（右）','','http://lesson1.local/wp-content/themes/cocoon-master/images/doya-woman.png','think','r','cb',NULL,_binary '');
/*!40000 ALTER TABLE `wp_cocoon_speech_balloons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-05-18 12:55:06','2020-05-18 12:55:06','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://lesson1.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://lesson1.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','lesson-1','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/hello','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:106:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:33:\"[^/]+/hello/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"[^/]+/hello/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"[^/]+/hello/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"[^/]+/hello/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"[^/]+/hello/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"[^/]+/hello/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"([^/]+)/hello/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:26:\"([^/]+)/hello/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:46:\"([^/]+)/hello/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:41:\"([^/]+)/hello/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:34:\"([^/]+)/hello/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:41:\"([^/]+)/hello/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:30:\"([^/]+)/hello(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:22:\"[^/]+/hello/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"[^/]+/hello/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"[^/]+/hello/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"[^/]+/hello/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"[^/]+/hello/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"[^/]+/hello/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:3:{i:0;s:84:\"C:\\Users\\sator\\Local Sites\\lesson1\\app\\public/wp-content/themes/lesson/functions.php\";i:1;s:80:\"C:\\Users\\sator\\Local Sites\\lesson1\\app\\public/wp-content/themes/lesson/style.css\";i:3;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','lesson','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','lesson','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','44719','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'initial_db_version','44719','yes');
INSERT INTO `wp_options` VALUES (94,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (95,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (102,'cron','a:5:{i:1589979307;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589979309;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1589979560;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589979564;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'nonce_key','@U~iO<@O8yP tMAD+v?C.|3Q&`Wp6aL3^2y8Kx6P6otMhmm]`)kY^=vbvkBP+NQJ','no');
INSERT INTO `wp_options` VALUES (110,'nonce_salt','nns<2XbKI0W{1//)o#UMzc!|mmvXh:5Diw,zoXx:B>z-+n(%-X8yH,f1wvFv7WF3','no');
INSERT INTO `wp_options` VALUES (111,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:1:{s:22:\"dbBdqr04RjwlrLjbaD9d9k\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BN6SvPjlUKUrYCQx11um4uZ61qSvzm.\";s:10:\"created_at\";i:1589893841;}}','yes');
INSERT INTO `wp_options` VALUES (125,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"dev-email@flywheel.local\";s:7:\"version\";s:5:\"5.2.6\";s:9:\"timestamp\";i:1589806760;}','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_timeout_browser_31f552011cd49d12bc3cd930bb193459','1590411563','no');
INSERT INTO `wp_options` VALUES (129,'_site_transient_browser_31f552011cd49d12bc3cd930bb193459','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.138\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1590411564','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (146,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (149,'WPLANG','ja','yes');
INSERT INTO `wp_options` VALUES (150,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (164,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-5.4.1.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.3\";s:7:\"version\";s:5:\"5.3.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1589976226;s:15:\"version_checked\";s:5:\"5.2.6\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (165,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1589972873;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (167,'theme_mods_twentynineteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1589807275;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (168,'current_theme','lesson-1','yes');
INSERT INTO `wp_options` VALUES (169,'theme_mods_cocoon-master','a:9:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:22:\"accesses_table_version\";s:5:\"0.0.3\";s:29:\"speech_balloons_table_version\";s:5:\"0.0.0\";s:28:\"affiliate_tags_table_version\";s:3:\"0.0\";s:28:\"function_texts_table_version\";s:3:\"0.0\";s:27:\"item_rankings_table_version\";s:3:\"0.0\";s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1589885453;s:4:\"data\";a:30:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:14:\"sidebar-scroll\";a:0:{}s:11:\"main-scroll\";a:0:{}s:26:\"above-single-content-title\";a:0:{}s:26:\"below-single-content-title\";a:0:{}s:18:\"single-content-top\";a:0:{}s:21:\"single-content-middle\";a:0:{}s:21:\"single-content-bottom\";a:0:{}s:24:\"above-single-sns-buttons\";a:0:{}s:24:\"below-single-sns-buttons\";a:0:{}s:28:\"below-single-related-entries\";a:0:{}s:25:\"below-single-comment-form\";a:0:{}s:24:\"above-page-content-title\";a:0:{}s:24:\"below-page-content-title\";a:0:{}s:16:\"page-content-top\";a:0:{}s:19:\"page-content-middle\";a:0:{}s:19:\"page-content-bottom\";a:0:{}s:22:\"above-page-sns-buttons\";a:0:{}s:22:\"below-page-sns-buttons\";a:0:{}s:9:\"index-top\";a:0:{}s:12:\"index-middle\";a:0:{}s:12:\"index-bottom\";a:0:{}s:11:\"content-top\";a:0:{}s:14:\"content-bottom\";a:0:{}s:11:\"footer-left\";a:0:{}s:13:\"footer-center\";a:0:{}s:12:\"footer-right\";a:0:{}s:13:\"footer-mobile\";a:0:{}s:8:\"404-page\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (170,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (171,'widget_links','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (172,'widget_new_entries','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (173,'widget_related_entries','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (174,'widget_popular_entries','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (175,'widget_recent_comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (176,'widget_sns_follow_buttons','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (177,'widget_pc_text','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (178,'widget_pc_ad','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (179,'widget_mobile_text','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (180,'widget_mobile_ad','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (181,'widget_author_box','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (182,'widget_fb_like_box','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (183,'widget_cta_box','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (184,'widget_item_ranking','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (185,'widget_common_ad','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (186,'widget_toc','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (187,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (201,'theme_mods_lesson','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (208,'theme_mods_twentysixteen','a:1:{s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (210,'_transient_twentysixteen_categories','2','yes');
INSERT INTO `wp_options` VALUES (214,'_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e','1590019116','no');
INSERT INTO `wp_options` VALUES (215,'_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e','a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:20:\"WordCamp Kent Online\";s:3:\"url\";s:30:\"https://2020.kent.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-05-30 12:30:00\";s:8:\"end_date\";s:19:\"2020-05-31 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:41.153667400000003;s:9:\"longitude\";d:-81.357885899999999;}}}}','no');
INSERT INTO `wp_options` VALUES (226,'recovery_mode_email_last_sent','1589893841','yes');
INSERT INTO `wp_options` VALUES (232,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1589972878;s:7:\"checked\";a:5:{s:13:\"cocoon-master\";s:7:\"2.1.5.4\";s:6:\"lesson\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.5.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.1.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (233,'_transient_timeout_feed_992efac292246ae35bf235a03417a202','1590018035','no');
INSERT INTO `wp_options` VALUES (234,'_transient_feed_992efac292246ae35bf235a03417a202','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"ブログ | WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://ja.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WordPress 日本語ローカルサイトブログ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 May 2020 11:00:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"ja\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.5-alpha-47821\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordPress 5.4.1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://ja.wordpress.org/2020/05/01/wordpress-5-4-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 May 2020 11:00:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5857\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、Jake Spurlock が書いた WordPress.org 公式ブログの記事「WordPress 5.4.1」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 WordPre [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4821:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/04/wordpress-5-4-1/\">WordPress 5.4.1</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.4.1 がご利用いただけるようになりました。</p>\n\n\n\n<p>このセキュリティとメンテナンスのリリースには、7つのセキュリティ修正に加え、17の<a href=\"https://core.trac.wordpress.org/query?milestone=5.4.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priorityhttps://core.trac.wordpress.org/query?milestone=5.4.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">バグ修正</a>が含まれています。<strong>セキュリティリリース</strong>ですので、すぐにサイトを更新することをお勧めします。WordPress 3.7 以降のすべてのバージョンも更新されています。</p>\n\n\n\n<p>WordPress 5.4.1 は短期サイクルのセキュリティとメンテナンスのリリースです。次のメジャーリリースはバージョン 5.5 となります。</p>\n\n\n\n<p>WordPress 5.4.1 を入手するには WordPress.org からダウンロード、または、「ダッシュボード」→「更新」から「今すぐ更新」をクリックします。</p>\n\n\n\n<p>自動バックグラウンド更新に対応しているサイトであれば、すでに更新プロセスが開始されています。</p>\n\n\n\n<h3>セキュリティ更新</h3>\n\n\n\n<p>7つのセキュリティの問題が WordPress 5.4 とそれ以前のバージョンに影響を与えています。5.4 への更新をまだ行っていない場合、3.7 以降のすべての WordPress バージョンでも以下のセキュリティ問題が修正されています。</p>\n\n\n\n<ul><li>パスワードリセットトークンが適切に無効化されない問題（<a href=\"https://hackerone.com/hijibiji\">Muaz Bin Abdus Sattar</a> と <a href=\"https://hackerone.com/dyennez\">Jannes</a> の個別報告）</li><li>特定のプライベートな投稿が認証されていない状態で閲覧できてしまう問題（<a href=\"https://github.com/ka1n4t\">ka1n4t</a> の報告）</li><li>カスタマイザーの XSS 問題（<a href=\"https://evanricafort.com/\">Evan Ricafort</a> の報告）</li><li>検索ブロックの XSS 問題（WordPress セキュリティチーム Ben Bidner の報告）</li><li><code>wp-object-cache</code> の XSS 問題（<a href=\"https://wpvip.com/\">WordPress VIP</a> / WordPress セキュリティチーム Nick Daugherty の報告）</li><li>ファイルアップロードの XSS 問題（Ronnie Goodrich（<a href=\"https://hackerone.com/kahoots\">Kahoots</a>）と <a href=\"http://pentestusa.com/\">Jason Medeiros</a> の個別報告）</li><li>カスタマイザーに保存された XSS 脆弱性（<a href=\"https://weston.ruter.net/\">Weston Ruter</a> により修正）</li><li>さらに WordPress 5.4 RC1 と RC2 のブロックエディターの認証済み XSS 問題（Nguyen The Duc（<a href=\"https://twitter.com/ducnt_\">ducnt</a>）の報告）が 5.4 RC5 で修正されました。WordPress をより安全にするために行われたすべての作業に対しクレジットと謝意を示したいと思います。</li></ul>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">非公開で脆弱性情報を開示</a>してくださった報告者の皆様、ありがとうございました。これにより、セキュリティチームは WordPress サイトが攻撃される前に脆弱性を修正する時間を得ることができました。</p>\n\n\n\n<p>詳細については、Trac で<a href=\"https://core.trac.wordpress.org/query?milestone=5.4.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">変更点の全リスト</a>を参照するか、<a href=\"https://wordpress.org/support/wordpress-version/version-5-4-1/\">バージョン 5.4.1 の HelpHub ページ</a>を確認してください。</p>\n\n\n\n<p>上記セキュリティ研究者の方々に加え、WordPress 5.4.1 にご協力いただいた皆様、ありがとうございました。</p>\n\n\n\n<p>（訳注: 貢献者一覧は<a href=\"https://wordpress.org/news/2020/04/wordpress-5-4-1/\">元記事</a>を参照してください。）</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:58:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"WordPress 5.4 “アダレイ”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://ja.wordpress.org/2020/04/01/adderley/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 01 Apr 2020 10:38:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5826\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、Matt Mullenweg が書いた WordPress.org 公式ブログの記事「WordPress 5.4 “Adderley”」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせくださ [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:54:\"https://wordpress.org/news/files/2020/03/textcolor.mp4\";s:6:\"length\";s:6:\"440616\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:10499:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/matt/\">Matt Mullenweg</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/03/adderley/\">WordPress 5.4 “Adderley”</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>お待たせしました！ナット・アダレイにちなんで「アダレイ」と名付けられた最新で最高なバージョンの WordPress を<a href=\"https://ja.wordpress.org/download/\">ダウンロード</a>、または、ダッシュボードから更新いただけます。</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=768%2C768&amp;ssl=1\" alt=\"\" /></figure>\n\n\n\n<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#0400e0\"><div class=\"wp-block-cover__inner-container\">\n<p style=\"font-size:32px\" class=\"has-text-align-center\"><strong>Hello, さらなる機能と向上</strong></p>\n\n\n\n<p class=\"has-text-align-center\">ページを生き生きと見せる方法が増えました。より簡単な方法で、いまだかつてなく美しく、感じるスピードも向上します。</p>\n</div></div>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2><strong>WordPress 5.4 へようこそ</strong></h2>\n\n\n\n<p style=\"font-size:15px\"><strong>メジャーリリースのたびにブロックエディターにさらに機能を追加。</strong></p>\n\n\n\n<p>最高の画像で、投稿やページをさらに活かす方法。 人気の Web サービスからのリッチな埋め込みメディアにより、さまざまな方法で訪問者を引き寄せ、サイトのファンにします。</p>\n\n\n\n<p>ビジョンを実現し、完璧な場所にブロックを配置するより多くの方法 — ある種類のブロックを使うのが初めてでも。さらに効率的なプロセス。</p>\n\n\n\n<p>そしてあらゆる場面でより速く。セクションやギャラリーを作成したり、文章をただ入力するだけでも作業レスポンスの向上を体感するでしょう。</p>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=768%2C384&amp;ssl=1\" alt=\"\" /></figure>\n\n\n\n<h3>2つの新しいブロック。そしてあらゆるブロックの改善。</h3>\n\n\n\n<ul><li>2つの新ブロック「ソーシャルアイコン」と「(複数追加可能な) ボタン」を使って、早く、簡単に、インタラクティブな機能を追加できます。</li><li>色の新しい使い方。ボタンブロックとカバーブロックのグラデーション、リッチテキストブロックで初の色設定へのツールバーアクセス、グループおよびカラムブロックでの色設定。</li><li>分かりづらい操作が減りました。バージョン5.4では、マルチメディアの配置や置換のプロセス全体を各ブロックで効率化。ほぼすべてのブロックで同じように動作します。</li><li>「メディア」と「テキスト」ブロック内の画像を何か他のもの (例えばパンフレットの画像) にリンクして、そのパンフレットをドキュメントとしてダウンロードできたらいいのに、と思ったことはありませんか ? これができるようになりました。</li></ul>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://wordpress.org/news/files/2020/03/textcolor.mp4\"></video></figure>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h3>クリーンな UI、明快なナビゲーション—簡単なタブ移動 !</h3>\n\n\n\n<ul><li>ブロックパンくずリストによる明快なブロックナビゲーション。そして一度いた場所へ簡単に戻れます。</li><li>キーボード操作が必要な場合のタブ移動とフォーカスを改善。加えて、ほぼすべてのブロックでのタブキーを使ったサイドバーへの移動。</li><li>エディターの読み込みが14％、入力にかかる時間が51％速くなりました！</li><li>「ヒント」はなくなりました。代わりに、必要に応じて「ウェルカムガイド」を表示できます。必要な場合のみに、何度でもです。</li><li>ブロックの「編集」モードにいるのか「移動」モードにいるのかが一瞬でわかります。視覚的に難しい場合も、スクリーンリーダーがモードを知らせます。</li></ul>\n\n\n\n<p style=\"background-color:#f8f8f9\" class=\"has-background\">ブロックエディターの最新のツールや機能を使用したければ <a href=\"https://ja.wordpress.org/plugins/gutenberg/\">Gutenberg プラグイン</a>をインストールしてください。まだ誰も使っていない新しくエキサイティングな機能を試すことができます。</p>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=768%2C384&amp;ssl=1\" alt=\"\" /></figure>\n\n\n\n<h3>基本的な権利: プライバシー</h3>\n\n\n\n<p>5.4 は世界中のさまざまなプライバシー問題の解決を支援します。ユーザーや関係者がコンプライアンス遵守を求めてきたり、チームでのユーザーデータの取り扱いに悩む場合も、より簡単に正しい答えを導きます。</p>\n\n\n\n<p>詳細:</p>\n\n\n\n<ul><li>個人データのエクスポートに、ユーザーセッション情報と、コミュニティイベントウィジェットからのユーザーの位置データが含まれるようになりました。また、目次も追加しました。</li><li>プライバシーツールを使用してエクスポートおよび消去のリクエストを処理する際の進捗を確認してください。</li><li>さらに、プライバシーツール全体に細かな拡張を加えて見た感じをかなりスッキリさせました。</li></ul>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=768%2C384&amp;ssl=1\" alt=\"\" /></figure>\n\n\n\n<h2>開発者向け情報</h2>\n\n\n\n<h3>メニュー項目へのカスタムフィールド追加をネイティブサポート</h3>\n\n\n\n<p>新しい2つのアクションにより、メニュー項目にカスタムフィールドを追加できます—プラグインもカスタムウォーカーを書く必要もありません。</p>\n\n\n\n<p>メニュー管理画面では、メニューエディターのナビゲーションメニュー項目移動ボタンの直前で <code>wp_nav_menu_item_custom_fields</code> が発火します。</p>\n\n\n\n<p>カスタマイザー内では、メニュー項目フォームフィールドテンプレートの最後で <code>wp_nav_menu_item_custom_fields_customize_template</code> が発火します。</p>\n\n\n\n<p>コードを確認し、この新しいアクションで置換できるカスタムコードを見つけてください。重複が嫌なら WordPress のバージョンチェックを追加してください。</p>\n\n\n\n<h3>ブロック: よりシンプルなスタイル、新しい API と埋め込み</h3>\n\n\n\n<ul><li>ブロックのスタイリングが徹底的に簡単になりました。マイナス値のマージンやデフォルトのパディングはなくなりました。必要に応じて、ブロックに自由にスタイルを当てられます。さらにリファクタリングにより、4段階の冗長なラッパー div を取り除きました。</li><li>プラグインを作成すると、カテゴリーの名前空間ごとにブロックのコレクションを登録できるようになりました。これにより、ブランドの認知度を高めることができます。</li><li>ブロックバリエーションとグラデーションの2つの新しい API を使用して、ユーザーがさらに多くのことを行えるようにしましょう。</li><li>埋め込みでは、ブロックエディターが TikTok をサポートするようになり、CollegeHumor はなくなりました。</li></ul>\n\n\n\n<p style=\"background-color:#f8f8f9\" class=\"has-background\">開発者が気に入る変更点が WordPress 5.4 にはまだ沢山あります。サイトやテーマ、プラグインなどでこれらの変更をさらに発見する方法を学ぶには、 <a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 フィールドガイド</a>を確認してください。</p>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2>The Squad</h2>\n\n\n\n<p>（訳注: このセクションの内容は<a href=\"https://wordpress.org/news/2020/03/adderley/\">元記事</a>を参照してください）</p>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p><a href=\"https://ja.wordpress.org/support/\">サポートフォーラム</a>に貢献されているコミュニティボランティアの皆さんに感謝します。彼らは WordPress を初めて使う人であれ、最初のリリースから使っている人であれ、世界中の人々からの質問に答えてくれています。リリースは、その努力のおかげで成功をおさめています。</p>\n\n\n\n<p>最後に、WordPress 5.4 に取り組んでくれたコミュニティ翻訳者の皆さんに感謝します。彼らの努力により、リリース時に WordPress は、46言語に完全翻訳され、さらに多くの言語に翻訳されるでしょう。</p>\n\n\n\n<p>WordPress のボランティア活動について詳しく知りたい方は、<a href=\"https://make.wordpress.org/\">Make WordPress</a> や<a href=\"https://make.wordpress.org/core/\">コア開発ブログ</a>をチェックしてみてください。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://ja.wordpress.org/2020/03/29/wordpress-5-4-rc5/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 29 Mar 2020 12:45:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5824\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、David Baumwald が書いた WordPress.org 公式ブログの記事「WordPress 5.4 RC5」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 Word [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2889:\"<p>以下は、<a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-rc5/\">WordPress 5.4 RC5</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 の5つ目のリリース候補がご利用いただけるようになりました。</p>\n<p>WordPress 5.4 は、<strong><a href=\"https://make.wordpress.org/core/5-4/\">2020年3月31日</a></strong>に公開が予定されていますが、そのためには皆様からの助けが必要です。まだ 5.4 を試していないなら今がその時です！</p>\n<p>WordPress 5.4 リリース候補は、次の2通りの方法でテストすることができます。</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」を選択）。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-RC5.zip\">リリース候補の zip ファイルをダウンロード</a>する。</li>\n</ul>\n<p>WordPress 5.4 の詳細については、<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">最初のリリース候補の投稿</a>を参照してください。</p>\n<h2>プラグイン・テーマ開発者の方へ</h2>\n<p>WordPress 5.4 でプラグインやテーマのテストを行い、readme の <em>Tested up to</em> バージョンを 5.4 に更新してください。テストで優先すべきは互換性です。もしも問題を見つけた場合は、最終リリース前に解決できるよう必ず<a href=\"https://wordpress.org/support/forum/alphabeta/\">サポートフォーラム</a>に投稿してください。</p>\n<p><a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 フィールドガイド</a>が公開されています！主要変更点の詳細についてはこちらを参照してください。</p>\n<h2>リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress の100言語を超す翻訳にご協力ください</a>！</p>\n<p><strong>バグを見つけた場合</strong>は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！再現可能なバグのレポートが書ける方は <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://ja.wordpress.org/2020/03/25/wordpress-5-4-rc4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Mar 2020 12:56:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5821\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、Francesca Marano が書いた WordPress.org 公式ブログの記事「WordPress 5.4 RC4」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 Wo [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3149:\"<p>以下は、<a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-rc4/\">WordPress 5.4 RC4</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 の4つ目のリリース候補がご利用いただけるようになりました。</p>\n<p>WordPress 5.4 は、<strong><a href=\"https://make.wordpress.org/core/5-4/\">2020年3月31日</a></strong>に公開が予定されていますが、そのためには皆様からの助けが必要です。まだ 5.4 を試していないなら今がその時です！</p>\n<p>WordPress 5.4 リリース候補は、次の2通りの方法でテストすることができます。</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」を選択）。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-RC4.zip\">リリース候補の zip ファイルをダウンロード</a>する。</li>\n</ul>\n<p>WordPress 5.4 の詳細については、<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">最初のリリース候補の投稿</a>を参照してください。</p>\n<p>RC4 では、新しい<a href=\"https://core.trac.wordpress.org/ticket/49295\">「WordPress について」ページ</a>をコミットし、<a href=\"https://core.trac.wordpress.org/ticket/49688\">エディターパッケージを更新</a>しています。</p>\n<h2>プラグイン・テーマ開発者の方へ</h2>\n<p>WordPress 5.4 でプラグインやテーマのテストを行い、readme の <em>Tested up to</em> バージョンを 5.4 に更新してください。テストで優先すべきは互換性です。もしも問題を見つけた場合は、最終リリース前に解決できるよう必ず<a href=\"https://wordpress.org/support/forum/alphabeta/\">サポートフォーラム</a>に投稿してください。</p>\n<p><a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 フィールドガイド</a>が公開されています！主要変更点の詳細についてはこちらを参照してください。</p>\n<h2>リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress の100言語を超す翻訳にご協力ください</a>！</p>\n<p><strong>バグを見つけた場合</strong>は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！再現可能なバグのレポートが書ける方は <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://ja.wordpress.org/2020/03/20/wordpress-5-4-rc3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Mar 2020 12:47:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5818\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、David Baumwald が書いた WordPress.org 公式ブログの記事「WordPress 5.4 RC3」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 Word [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4832:\"<p>以下は、<a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-rc3/\">WordPress 5.4 RC3</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 の3つ目のリリース候補がご利用いただけるようになりました。</p>\n<p>WordPress 5.4 は、<strong><a href=\"https://make.wordpress.org/core/5-4/\">2020年3月31日</a></strong>に公開が予定されていますが、そのためには皆様からの助けが必要です。まだ 5.4 を試していないなら今がその時です!</p>\n<p>WordPress 5.4 リリース候補をテストするには、次の2通りの方法があります。</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」を選択）。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-RC3.zip\">リリース候補の zip ファイルをダウンロード</a>する。</li>\n</ul>\n<p>WordPress 5.4 の詳細については、<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">最初のリリース候補の投稿</a>を参照してください。</p>\n<p>RC3 では、新しい「WordPress について」ページの改善と、次のバグとリグレッションについて<a href=\"https://core.trac.wordpress.org/query?id=49657%2C49621%2C48164%2C49577%2C47053%2C48303%2C49374%2C49619&amp;milestone=5.4&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">8つの修正</a>を行いました。</p>\n<ul>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49657\">49657 – ブロックエディター: WordPress パッケージの更新 WordPress 5.4 RC 3</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49621\">49621 – Travis: E2E テストの場合のみ Chromium をダウンロード</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/48164\">48164 – media_sideload_image では元の URL を保存してオプションで重複をチェックするべき</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49577\">49577 – サイトヘルスステータスダッシュボードが初期読み込み時に誤ったアイテム数を表示する</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/47053\">47053 – アクセシビリティ: 「ツールバーへスキップ」の HTML には適切な tabindex を設定する必要がある</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/48303\">48303 – 5.4 向け Docblock 改善</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49374\">49374 – get_post_states を利用して追加されたメニュー項目のアコーディオンで特別なページを表示</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49619\">49619 – 「自由について」ページでマージンの代わりに &lt;hr /&gt; を使用する</a></li>\n</ul>\n<p>（訳注: 上記はチケット番号とそのタイトルの訳です。実際の修正内容については個々のチケットを参照してください。）</p>\n<h2>プラグイン・テーマ開発者の方へ</h2>\n<p>WordPress 5.4 であなたのプラグインやテーマのテストを行い、readme の <em>Tested up to</em> バージョンを 5.4 に更新してください。もしも互換性の問題が見つかった場合は、最終リリース前に問題解決できるよう必ず<a href=\"https://wordpress.org/support/forum/alphabeta/\">サポートフォーラム</a>に投稿してください。</p>\n<p>主な変更点が詳しく説明されている <a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 フィールドガイド</a>が公開されています。</p>\n<h2>リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress の100言語を超す翻訳にご協力ください</a>！</p>\n<p><strong>バグを見つけた場合</strong>は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！再現可能なバグのレポートが書ける方は <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://ja.wordpress.org/2020/03/14/wordpress-5-4-rc2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 14 Mar 2020 07:38:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5815\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、Francesca Marano が書いた WordPress.org 公式ブログの記事「WordPress 5.4 RC2」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 Wo [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4128:\"<p>以下は、<a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-rc2/\">WordPress 5.4 RC2</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 の2つ目のリリース候補がご利用いただけるようになりました。</p>\n<p>WordPress 5.4 は、<strong><a href=\"https://make.wordpress.org/core/5-4/\">2020年3月31日</a></strong>に公開が予定されていますが、そのためには皆様からの助けが必要です。まだ 5.4 を試していないなら今がその時です!</p>\n<p>WordPress 5.4 リリース候補をテストするには、次の2通りの方法があります。</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」を選択）。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-RC2.zip\">リリース候補の zip ファイルをダウンロード</a>する。</li>\n</ul>\n<p>WordPress 5.4 の詳細については、<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">最初のリリース候補の投稿</a>を参照してください。</p>\n<p>RC2 では、新しい「WordPress について」ページの改善と、次のバグとリグレッションについて<a href=\"https://core.trac.wordpress.org/query?id=49611%2C49318%2C49295%2C49585%2C49568%2C49549&amp;milestone=5.4&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">5つの修正</a>を行いました。</p>\n<ul>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49611\">49611</a> – ブロックエディター: WordPress パッケージの更新 WordPress 5.4 RC 2</li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49318\">49318</a> – 同梱テーマ: Twenty Twenty コンテンツフォントの CSS セレクターの重要度が高すぎる問題</li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49585\">49585</a> – REST API: disable-custom-gradients のテーマ機能説明の誤字修正</li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49568\">49568</a> – ブロックエディター: エディターカラーピッカーの視覚的リグレッションの修正</li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49549\">49549</a> – 同梱テーマ: 同梱テーマにおけるカレンダーウィジェットの CSS 修正</li>\n</ul>\n<h2>プラグイン・テーマ開発者の方へ</h2>\n<p>WordPress 5.4 であなたのプラグインやテーマのテストを行い、readme の Tested up to バージョンを 5.4 に更新してください。もしも互換性の問題が見つかった場合は、最終リリース前に問題解決できるよう必ず<a href=\"https://wordpress.org/support/forum/alphabeta/\">サポートフォーラム</a>に投稿してください。</p>\n<p>主な変更点が詳しく説明されている <a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 フィールドガイド</a>が公開されています。</p>\n<h2>リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress の100言語を超す翻訳にご協力ください</a>！</p>\n<p><strong>バグを見つけた場合</strong>は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！再現可能なバグのレポートが書ける方は <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"WordPress 5.4 リリース候補\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://ja.wordpress.org/2020/03/07/wordpress-5-4-release-candidate/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Mar 2020 16:15:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5813\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:216:\"以下は、David Baumwald が書いた WordPress.org 公式ブログの記事「WordPress 5.4 Release Candidate」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまで [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3675:\"<p>以下は、<a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">WordPress 5.4 Release Candidate</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 の最初のリリース候補がご利用いただけるようになりました。</p>\n<p>これは WordPress 5.4 公開日へと向かう重要なマイルストーンです。「リリース候補」とは、この新しいバージョンは公開可能なレベルではあるが多くのユーザーや様々なプラグイン・テーマで使うには何らかの見落としがあるかもしれない、といった意味合いのものとなります。WordPress 5.4 は、<strong>2020年3月31日</strong>に公開が予定されていますが、そのためには皆様からの助けが必要です。まだ 5.4 を試していないなら<strong>今がその時です</strong>!</p>\n<p>WordPress 5.4 リリース候補をテストするには、次の2通りの方法があります。</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」を選択）。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-RC1.zip\">リリース候補の zip ファイルをダウンロード</a>する。</li>\n</ul>\n<h2>WordPress 5.4 の詳細</h2>\n<p>WordPress 5.4 には、開発体験向上のための多くの改良が加えられています。最新情報を知るには <a href=\"https://make.wordpress.org/core/\">Make WordPress Core ブログ</a>を購読して、あなたのプロダクトに影響を与える可能性のある変更がないか、<a href=\"https://make.wordpress.org/core/tag/5-4+dev-notes/\">デベロッパーノート</a>のタグを注意深く確認してください。</p>\n<h2>プラグイン・テーマ開発者の方へ</h2>\n<p>WordPress 5.4 であなたのプラグインやテーマのテストを行い、readme ファイルの Tested up to バージョンを 5.4 に更新してください。もしも互換性の問題が見つかった場合は、最終リリース前に問題解決できるよう必ず<a href=\"https://wordpress.org/support/forum/alphabeta/\">サポートフォーラム</a>に投稿してください。</p>\n<p>主要変更点のより詳しい情報が載っている WordPress 5.4 フィールドガイドが24時間以内に公開される予定です。</p>\n<h2>リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress の100言語を超す翻訳にご協力ください</a>！このリリースは 5.4 リリーススケジュールにおける<a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#hard-freeze\">翻訳語句のハードフリーズ（凍結）</a>ポイントとなります。</p>\n<p><strong>バグを見つけた場合</strong>は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！再現可能なバグのレポートが書ける方は <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 5.4 ベータ 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2020/02/26/wordpress-5-4-beta-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 26 Feb 2020 12:15:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5810\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、David Baumwald が書いた WordPress.org 公式ブログの記事「WordPress 5.4 Beta 3」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 W [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3733:\"<p>以下は、<a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-3/\">WordPress 5.4 Beta 3</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 ベータ 3 がご利用いただけるようになりました。</p>\n<p><strong>このソフトウェアはまだ開発中</strong>ですので、実運用中のサイトでの使用はおすすめしません。テストサイトを立ち上げてこの新しいバージョンを試すことを検討してください。</p>\n<p>WordPress 5.4 ベータ版をテストする方法は次の二通りです:</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」または「Beta/RC – Bleeding edge」オプションをプラグインバージョン 2.2.0 以上で選択）。*「Beta/RC – Bleeding edge」オプションを利用するには、サイトを「最新版ナイトリービルド」に更新する必要があります。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-beta3.zip\">ベータ版の zip ファイル</a>をダウンロードする。</li>\n</ul>\n<p>WordPress 5.4 の正式リリースは、<a href=\"https://make.wordpress.org/core/5-4/\">2020年3月31日</a>を予定していますが、そこに至るには皆様の助けが必要です。</p>\n<p>先週<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=02%2F18%2F2020..02%2F25%2F2020&amp;milestone=5.4&amp;col=id&amp;col=summary&amp;col=status&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=priority&amp;order=priority\">閉じられた24件のチケット</a>について、<a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-2/\">ベータ 2</a>（と<a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-1/\">ベータ 1</a>）をテストしてくださった方々のテストとフィードバックに感謝します。</p>\n<h2>いくつかのハイライト</h2>\n<ul>\n<li><a href=\"https://github.com/WordPress/gutenberg/pull/20424\">グーテンベルク修正のまとめ</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/47606\">サイトヘルススコアのダッシュボード表示</a></li>\n</ul>\n<h2>開発者向け情報</h2>\n<p>WordPress 5.4 には、開発体験向上のための多くの改良が加えられています。最新情報を知るには <a href=\"https://make.wordpress.org/core/\">Make WordPress Core ブログ</a>を購読して、あなたのプロダクトに影響を与える可能性のある変更がないか、<a href=\"https://make.wordpress.org/core/tag/5-4+dev-notes/\">デベロッパーノート</a>のタグを注意深く確認してください。</p>\n<h2>リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev/\">WordPress の100言語を超す翻訳にご協力ください</a>！</p>\n<p>バグを見つけた場合は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta/\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！再現可能なバグのレポートが書ける方は <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 5.4 ベータ 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2020/02/21/wordpress-5-4-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 21 Feb 2020 08:18:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5807\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、Francesca Marano が書いた WordPress.org 公式ブログの記事「WordPress 5.4 Beta 2」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4549:\"<p>以下は、<a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-2/\">WordPress 5.4 Beta 2</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 ベータ 2 がご利用いただけるようになりました。</p>\n<p><strong>このソフトウェアはまだ開発中</strong>ですので、実運用中のサイトでの使用はおすすめしません。テストサイトを立ち上げてこの新しいバージョンを試すことを検討してください。</p>\n<p>WordPress 5.4 ベータ 2 をテストする方法は次の二通りです:</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」を選択）。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-beta2.zip\">ベータ版の zip ファイル</a>をダウンロードする。</li>\n</ul>\n<p>WordPress 5.4 の正式リリースは、<a href=\"https://make.wordpress.org/core/5-4/\">2020年3月31日</a>を予定していますが、そこに至るには<strong>皆様の助けが必要です</strong>！</p>\n<p><a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-1/\">ベータ 1</a> 開発版をテストし、フィードバックを提供してくれたすべての貢献者に感謝します。ベータ段階でバグがないかテストを行うことは、リリースの完成度を高める重要な部分であり WordPress に貢献する素晴らしい方法です。</p>\n<h2 id=\"いくつかのハイライト\">いくつかのハイライト</h2>\n<p><a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-1/\">ベータ 1</a> 以降、<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=02%2F12%2F2020..&amp;milestone=5.4&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">27個</a>のバグが修正されました。以下は、ベータ 2 に含まれるいくつかの変更の概要です。</p>\n<ul>\n<li>ブロックエディター: 幅が割り当てられていないブロックライブラリのカラムは、均等に伸長します。</li>\n<li>ブロックエディター: カスタムグラデーションピッカーが英語以外の言語でも動作するようになりました。</li>\n<li>ブロックエディター: 色を選択できない場合、カラーフォーマッターは表示されなくなりました。</li>\n<li>プライバシー: プライバシーリクエストフォームのフィールドが、モバイルでより一貫性を持つように調整されました。</li>\n<li>プライバシー: プライバシーポリシーページ編集のヘルプ通知は、管理画面のすべてのページ上部で表示されなくなりました。</li>\n<li>サイトヘルス: 失敗した REST API テストのエラーコードが正しく表示されるようになりました。</li>\n</ul>\n<h2 id=\"開発者向け情報\">開発者向け情報</h2>\n<p>WordPress 5.4 には、開発体験向上のための多くの改良が加えられています。最新情報を知るには <a href=\"https://make.wordpress.org/core/\">Make WordPress Core ブログ</a>を購読して、あなたのプロダクトに影響を与える可能性のある変更がないか、<a href=\"https://make.wordpress.org/core/tag/5-4+dev-notes/\">デベロッパーノート</a>を注意深く確認してください。</p>\n<h2 id=\"リリースに協力する\">リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev/\">WordPress の100言語を超す翻訳にご協力ください</a>！</p>\n<p>バグを見つけた場合は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta/\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！</p>\n<p>再現可能なバグのレポートが書ける方は <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 5.4 ベータ 1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2020/02/19/wordpress-5-4-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 19 Feb 2020 12:12:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5804\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、Francesca Marano が書いた WordPress.org 公式ブログの記事、「WordPress 5.4 Beta 1」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9680:\"<p>以下は、<a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a> が書いた WordPress.org 公式ブログの記事、「<a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-1/\">WordPress 5.4 Beta 1</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 ベータ 1 がご利用いただけるようになりました。</p>\n<p><strong>このソフトウェアはまだ開発中</strong>ですので、実運用中のサイトでの使用はおすすめしません。テストサイトを立ち上げて新しいバージョンを試すことを検討してください。</p>\n<p>WordPress 5.4 ベータ版をテストする方法は次の二通りです:</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」を選択）。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-beta1.zip\">ベータ版の zip ファイル</a>をダウンロードする。</li>\n</ul>\n<p>WordPress 5.4 の正式リリースは、<a href=\"https://make.wordpress.org/core/5-4/\">2020年3月31日</a>を予定していますが、そこに至るには<strong>皆様の助けが必要です</strong>！</p>\n<p><strong>2020年の主な目標はブロックを使用したフルサイト編集</strong>ですが、WordPress の貢献者達はソフトウェアが前進し続けるようプロジェクトの様々な分野に取り組んでいます。</p>\n<p>ベータ段階でバグがないかテストを行うことは、リリースの完成度を高める重要な部分であり WordPress に貢献する素晴らしい方法です。テストに際し注意を払うべき大きな変更点と機能を以下に示します。</p>\n<h2>ブロックエディター: 新機能と改善点</h2>\n<p>WordPress 5.4 のコアには Gutenberg プラグイン10回分のリリースがマージされます。これは、たくさんのエキサイティングな新機能があることを意味します。次にそのほんの一部を紹介します。</p>\n<ul>\n<li>2つの新ブロック: ソーシャルリンクとボタン</li>\n<li>ボタン、カバー、グループ、カラムのブロックへの色オプション追加</li>\n<li>ウェルカムガイドモーダル</li>\n<li>最新の記事ブロックにアイキャッチ画像を追加するためのツール</li>\n<li>より簡単なパンくずリストブロックのナビゲーション</li>\n</ul>\n<p>いくつかの変更点:</p>\n<ul>\n<li>モバイルではツールバーが上に留まるため見失うことはありません。</li>\n<li>ギャラリーブロックでの画像サイズ変更が簡単に。</li>\n<li>アイキャッチ画像ボックスへの画像のドラッグアンドドロップ</li>\n<li>いくつかの新しい API</li>\n<li>REST API リクエストが失敗した際のわかりやすいオフラインエラーメッセージ</li>\n<li>テーブルブロックのキャプション</li>\n<li>リッチテキストブロックでテキストの一部だけに色を付けることが可能に。</li>\n</ul>\n<h3>アクセシビリティの改善点</h3>\n<ul>\n<li>複数ブロックの選択が簡単に。</li>\n<li>画像ブロック内での画像タイトル属性の変更サポート</li>\n<li>より簡単なタブ移動。これはエディター最大のアクセシビリティの問題でしたが、ブロックのサイドバーでタブ移動ができるようになりました。</li>\n<li>編集モードとナビゲーションモードの視覚的切り替え、スクリーンリーダーのアナウンスの有効化</li>\n</ul>\n<p>各リリースのすべての機能の詳細についてはリリースの投稿をご覧ください: <a href=\"https://make.wordpress.org/core/2019/10/02/whats-new-in-gutenberg-2-october/\">6.6</a>、<a href=\"https://make.wordpress.org/core/2019/10/16/whats-new-in-gutenberg-16-october/\">6.7</a>、<a href=\"https://make.wordpress.org/core/2019/10/30/whats-new-in-gutenberg-30-october/\">6.8</a>、<a href=\"https://make.wordpress.org/core/2019/11/13/whats-new-in-gutenberg-13-november/\">6.9</a>、<a href=\"https://make.wordpress.org/core/2019/11/27/whats-new-in-gutenberg-27-november/\">7.0</a>、<a href=\"https://make.wordpress.org/core/2019/12/11/whats-new-in-gutenberg-11-december/\">7.1</a>、<a href=\"https://make.wordpress.org/core/2020/01/09/whats-new-in-gutenberg-8-january/\">7.2</a>、<a href=\"https://make.wordpress.org/core/2020/01/22/whats-new-in-gutenberg-22-january/\">7.3</a>、<a href=\"https://make.wordpress.org/core/2020/02/05/whats-new-in-gutenberg-5-february/\">7.4</a>、7.5</p>\n<h3>パフォーマンス向上への継続的な取り組み</h3>\n<p>ブロックエディターチームは WordPress 5.3 以降、特にサイズの大きい投稿（〜36,000語、〜1,000ブロック）において、読み込み時間を14%、入力時間を51%短縮することに成功しました。</p>\n<h2>その他</h2>\n<h3>サイトヘルス</h3>\n<p>WordPress プロジェクトが世界のウェブサイトの34％を支えている以上、セキュリティにも注視しなくてはなりません。これが貢献者達がサイトヘルスプロジェクトに熱心に取り組んでいる理由となっています。</p>\n<p>WordPress 5.4 では、サイトのパフォーマンスやセキュリティに影響を与える可能性のある潜在的な問題について管理者に警告するウィジェットがダッシュ​​ボードに追加されます。行動を促すボタンをクリックすると、サイトヘルス画面に移動して詳細と修正案を確認できます。</p>\n<h3>アクセシビリティの改善点</h3>\n<p>WordPress はリリースごとにアクセシビリティの向上に努めていますが、このリリースも例外ではありません。バージョン 5.4 には、次のアクセシビリティ強化が含まれています。</p>\n<ul>\n<li>メニュー、カスタマイザー、サイトヘルス画面でのフォーカス管理を改善し、キーボードナビゲーションの既知の問題を修正。</li>\n<li>メディアモーダルのセマンティクス向上のためキーボードナビゲーションを簡易化。</li>\n<li>分かりやすいプライバシーポリシーガイド</li>\n</ul>\n<h2>開発者向け情報</h2>\n<p>5.4 には、開発者向けの変更も数多く含まれています。</p>\n<h3>カレンダーウィジェット</h3>\n<p>HTML 5.1 の仕様では <code>&lt;tfoot&gt;</code> タグは <code>&lt;tbody&gt;</code> タグの後に続く必要があります（カレンダーウィジェットではそのようになっていなかった）。 WordPress 5.4 では valid な HTML を生成するためにナビゲーションリンクを <code>&lt;table&gt;</code> 要素の直後に続く <code>&lt;nav&gt;</code> 要素に移動します。</p>\n<h3>apply_shortcodes() を do_shortcode() のエイリアスに</h3>\n<p><code>do_shortcode()</code> の代わりに <code>apply_shortcodes()</code> を使用してください。 <code>do_shortcode()</code> は非推奨にはなりませんが、新しい関数はより良いセマンティクスを提供します。</p>\n<h3>favicon の取り扱いを改善</h3>\n<p>favicon のリクエストをより柔軟に管理できるようになりました。管理者は、カスタマイザーで favicon を選択、または、<code>favicon.ico</code> ファイルをアップロードできます。 フォールバックとして WordPress ロゴが常に読み込まれます。</p>\n<h3>開発者向けのその他の変更点</h3>\n<ul>\n<li><code>wp_login_failed</code> でのエラー情報の明確化</li>\n<li>マルチサイトインストール用の <code>newblog_notify_siteadmin</code> フィルターにサイト ID が追加されました。</li>\n<li>テーマで要件となる WordPress と PHP バージョンのヘッダーのサポートが追加されました。</li>\n<li>TikTok の埋め込みサポートが追加されました。</li>\n</ul>\n<p><a href=\"https://make.wordpress.org/core/tag/5-4+dev-notes/\">5.4 関連のデベロッパーノート</a>については、今後数週間の <a href=\"https://make.wordpress.org/core/\">Make WordPress Core ブログ</a>をご覧ください。変更点についてより詳細に説明しています。</p>\n<p>WordPress 5.4 では、貢献者達の手によってこれまでに<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.4&amp;group=component&amp;max=500&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">255個以上のチケット</a>が修正されました。</p>\n<h2>リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev/\">WordPress の100言語を超す翻訳にご協力ください</a>！</p>\n<p>バグを見つけた場合は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta/\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！再現可能なバグのレポートが書ける方は <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://ja.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 20 May 2020 11:40:33 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Wed, 18 Jul 2012 08:25:33 GMT\";s:4:\"link\";s:61:\"<https://ja.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20130911040210\";}','no');
INSERT INTO `wp_options` VALUES (235,'_transient_timeout_feed_mod_992efac292246ae35bf235a03417a202','1590018035','no');
INSERT INTO `wp_options` VALUES (236,'_transient_feed_mod_992efac292246ae35bf235a03417a202','1589974835','no');
INSERT INTO `wp_options` VALUES (237,'_transient_timeout_feed_6f409681938158427d2ded6eb1b9ea27','1590018036','no');
INSERT INTO `wp_options` VALUES (238,'_transient_feed_6f409681938158427d2ded6eb1b9ea27','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n\n	\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:141:\"\n\n		\n		\n		\n				\n		\n		\n\n		\n		\n					\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n					\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WordPress | サポートフォーラム » 返信一覧\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://ja.wordpress.org/support/forums/feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 May 2020 11:39:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"https://bbpress.org/?v=2.7.0-alpha-1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"ja\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:246:\"https://ja.wordpress.org/support/topic/%e6%9b%b4%e6%96%b0%e3%81%ab%e5%a4%b1%e6%95%97%e3%81%97%e3%81%be%e3%81%97%e3%81%9f%e3%80%82-%e7%8f%be%e5%9c%a8%e3%82%aa%e3%83%95%e3%83%a9%e3%82%a4%e3%83%b3%e3%81%ae%e3%82%88%e3%81%86%e3%81%a7-2/#post-11664399\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"更新に失敗しました。 現在オフラインのようです。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:246:\"https://ja.wordpress.org/support/topic/%e6%9b%b4%e6%96%b0%e3%81%ab%e5%a4%b1%e6%95%97%e3%81%97%e3%81%be%e3%81%97%e3%81%9f%e3%80%82-%e7%8f%be%e5%9c%a8%e3%82%aa%e3%83%95%e3%83%a9%e3%82%a4%e3%83%b3%e3%81%ae%e3%82%88%e3%81%86%e3%81%a7-2/#post-11664399\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 May 2020 11:24:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:257:\"\n						\n						<p>更新に失敗しました。 現在オフラインのようです。<br />\nとなり固定ページが更新できません。<br />\n確実にネットにはつながっています。<br />\nどうしてでしょうか？</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"mimitab\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://ja.wordpress.org/support/topic/woocommerce-amazon-pay/#post-11664398\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"返信先: Woocommerce Amazon pay\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://ja.wordpress.org/support/topic/woocommerce-amazon-pay/#post-11664398\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 May 2020 09:27:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"\n						\n						<p>kimi0901さん<br />\nありがとうございます。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"sumapan\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e3%83%98%e3%83%83%e3%83%80%e3%83%bc%e3%81%8c%ef%bc%92%e3%81%a4%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%a6%e3%81%97%e3%81%be%e3%81%84%e3%80%81%e8%a1%a8%e7%a4%ba%e3%81%8c%e5%a4%89%e5%bd%a2%e3%81%97/#post-11664397\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"返信先: ヘッダーが２つ表示されてしまい、表示が変形している。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e3%83%98%e3%83%83%e3%83%80%e3%83%bc%e3%81%8c%ef%bc%92%e3%81%a4%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%a6%e3%81%97%e3%81%be%e3%81%84%e3%80%81%e8%a1%a8%e7%a4%ba%e3%81%8c%e5%a4%89%e5%bd%a2%e3%81%97/#post-11664397\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 May 2020 09:20:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:455:\"\n						\n						<p>ishitakaさま</p>\n<p>このような状態になります。<br />\n<a href=\"https://d.pr/free/i/Wl5vNr\" rel=\"nofollow ugc\">https://d.pr/free/i/Wl5vNr</a></p>\n<p>お教えいただきましたサポートを拝読いたしました。<br />\nよく理解できないところもあるのですが、<br />\nちょっとやってみます。<br />\n引き続きご指南ください。<br />\nよろしくお願いします。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"pkei\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e3%83%98%e3%83%83%e3%83%80%e3%83%bc%e3%81%8c%ef%bc%92%e3%81%a4%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%a6%e3%81%97%e3%81%be%e3%81%84%e3%80%81%e8%a1%a8%e7%a4%ba%e3%81%8c%e5%a4%89%e5%bd%a2%e3%81%97/#post-11664396\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"返信先: ヘッダーが２つ表示されてしまい、表示が変形している。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e3%83%98%e3%83%83%e3%83%80%e3%83%bc%e3%81%8c%ef%bc%92%e3%81%a4%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%a6%e3%81%97%e3%81%be%e3%81%84%e3%80%81%e8%a1%a8%e7%a4%ba%e3%81%8c%e5%a4%89%e5%bd%a2%e3%81%97/#post-11664396\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 May 2020 09:09:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:513:\"\n						\n						<blockquote><p>キャッシュは削除できず、</p></blockquote>\n<p>削除できないとは、どのような状態（エラーになる？）なのでしょうか？</p>\n<p>プラグインサポートページの下記トピックは参考になりませんか？<br />\n<a href=\"https://wordpress.org/support/topic/homepage-cache-not-updating-after-publishing-post/\" rel=\"nofollow ugc\">https://wordpress.org/support/topic/homepage-cache-not-updating-after-publishing-post/</a></p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"ishitaka\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e3%83%98%e3%83%83%e3%83%80%e3%83%bc%e3%81%8c%ef%bc%92%e3%81%a4%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%a6%e3%81%97%e3%81%be%e3%81%84%e3%80%81%e8%a1%a8%e7%a4%ba%e3%81%8c%e5%a4%89%e5%bd%a2%e3%81%97/#post-11664395\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"返信先: ヘッダーが２つ表示されてしまい、表示が変形している。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e3%83%98%e3%83%83%e3%83%80%e3%83%bc%e3%81%8c%ef%bc%92%e3%81%a4%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%a6%e3%81%97%e3%81%be%e3%81%84%e3%80%81%e8%a1%a8%e7%a4%ba%e3%81%8c%e5%a4%89%e5%bd%a2%e3%81%97/#post-11664395\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 May 2020 08:36:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:367:\"\n						\n						<p>ishitakaさま</p>\n<p>いつもお世話になります。<br />\nキャッシュは削除できず、<br />\nプラグインを停止しましたところ添付のようにヘッダー以外<br />\n真っ白になってしまいました。<br />\nご指南いただけますと助かります。<br />\nよろしくお願いします。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"pkei\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e3%83%98%e3%83%83%e3%83%80%e3%83%bc%e3%81%8c%ef%bc%92%e3%81%a4%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%a6%e3%81%97%e3%81%be%e3%81%84%e3%80%81%e8%a1%a8%e7%a4%ba%e3%81%8c%e5%a4%89%e5%bd%a2%e3%81%97/#post-11664394\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"返信先: ヘッダーが２つ表示されてしまい、表示が変形している。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e3%83%98%e3%83%83%e3%83%80%e3%83%bc%e3%81%8c%ef%bc%92%e3%81%a4%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%a6%e3%81%97%e3%81%be%e3%81%84%e3%80%81%e8%a1%a8%e7%a4%ba%e3%81%8c%e5%a4%89%e5%bd%a2%e3%81%97/#post-11664394\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 May 2020 08:09:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:180:\"\n						\n						<p>こんにちは</p>\n<p>Hummingbird プラグインのキャッシュの削除やプラグインを停止してみてはいかがでしょうか？</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"ishitaka\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e3%83%98%e3%83%83%e3%83%80%e3%83%bc%e3%81%8c%ef%bc%92%e3%81%a4%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%a6%e3%81%97%e3%81%be%e3%81%84%e3%80%81%e8%a1%a8%e7%a4%ba%e3%81%8c%e5%a4%89%e5%bd%a2%e3%81%97/#post-11664393\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"ヘッダーが２つ表示されてしまい、表示が変形している。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/%e3%83%98%e3%83%83%e3%83%80%e3%83%bc%e3%81%8c%ef%bc%92%e3%81%a4%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%a6%e3%81%97%e3%81%be%e3%81%84%e3%80%81%e8%a1%a8%e7%a4%ba%e3%81%8c%e5%a4%89%e5%bd%a2%e3%81%97/#post-11664393\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 May 2020 07:40:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:736:\"\n						\n						<p>All in SEOの設定をしていました。<br />\n<a href=\"https://kagesai.net/all-in-one-seo-pack-perfectmanual/#Google%E8%A8%AD%E5%AE%9A\" rel=\"nofollow ugc\">https://kagesai.net/all-in-one-seo-pack-perfectmanual/#Google%E8%A8%AD%E5%AE%9A</a><br />\nを参考にすすめていましたが、<br />\nいつのまにかヘッダーが２つ、<br />\nコンテンツのサイズが変更されてしまいました。<br />\nどこからどうなったのかさっぱりわからず困っています。<br />\n現在は、<br />\nAll in SEOのプラグインを停止しました。<br />\n恐れ入りますが、<br />\nご指南いただけますと助かります。<br />\nよろしくお願いします。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"pkei\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:171:\"https://ja.wordpress.org/support/topic/%e4%b8%8d%e5%af%a9%e3%81%aa%e3%82%b5%e3%82%a4%e3%83%88%e3%81%a8%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%be%e3%81%99/#post-11664392\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"返信先: 不審なサイトと表示されます\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:171:\"https://ja.wordpress.org/support/topic/%e4%b8%8d%e5%af%a9%e3%81%aa%e3%82%b5%e3%82%a4%e3%83%88%e3%81%a8%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%be%e3%81%99/#post-11664392\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 May 2020 07:02:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:456:\"\n						\n						<p>質問した本人です。</p>\n<p>こちらのフォーラムでする質問ではなかったかもしれません。<br />\n私の使用しているブラウザMicrosofEdge のセキュリティによって<br />\nこのような警告がでたようです。</p>\n<p>Microsoftにただいま問い合わせ中でして、解決できそうです。<br />\nまた何かありましたら、ご相談させてください。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"ta4ropika8yoga5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:237:\"https://ja.wordpress.org/support/topic/php%e3%81%ae%e3%83%90%e3%83%bc%e3%82%b8%e3%83%a7%e3%83%b3%e3%82%a2%e3%83%83%e3%83%97%e5%be%8c%e5%86%8d%e5%ba%a6%e6%88%bb%e3%81%97%e3%81%9f%e9%9a%9b%e3%81%ae%e4%b8%8d%e5%85%b7%e5%90%88/#post-11664391\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"返信先: phpのバージョンアップ後再度戻した際の不具合\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:237:\"https://ja.wordpress.org/support/topic/php%e3%81%ae%e3%83%90%e3%83%bc%e3%82%b8%e3%83%a7%e3%83%b3%e3%82%a2%e3%83%83%e3%83%97%e5%be%8c%e5%86%8d%e5%ba%a6%e6%88%bb%e3%81%97%e3%81%9f%e9%9a%9b%e3%81%ae%e4%b8%8d%e5%85%b7%e5%90%88/#post-11664391\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 May 2020 06:39:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:652:\"\n						\n						<p>こちらのエラーも<a href=\"https://ja.wordpress.org/support/topic/php%e3%81%ae%e3%83%90%e3%83%bc%e3%82%b8%e3%83%a7%e3%83%b3%e3%82%a2%e3%83%83%e3%83%97%e5%be%8c%e5%86%8d%e5%ba%a6%e6%88%bb%e3%81%97%e3%81%9f%e9%9a%9b%e3%81%ae%e4%b8%8d%e5%85%b7%e5%90%88/#post-11664380\">以前のレス</a>と同じ理由です。</p>\n<p>PHP のバージョンを上げるか、WordPress バージョン 5.2 未満をインストールして復元するかになるかと思います。</p>\n<p>※ もし、自信が無ければ専門の方や業者に依頼されたほうが後々のことを考えるといいのかなと・・・</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"ishitaka\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:237:\"https://ja.wordpress.org/support/topic/php%e3%81%ae%e3%83%90%e3%83%bc%e3%82%b8%e3%83%a7%e3%83%b3%e3%82%a2%e3%83%83%e3%83%97%e5%be%8c%e5%86%8d%e5%ba%a6%e6%88%bb%e3%81%97%e3%81%9f%e9%9a%9b%e3%81%ae%e4%b8%8d%e5%85%b7%e5%90%88/#post-11664390\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"返信先: phpのバージョンアップ後再度戻した際の不具合\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:237:\"https://ja.wordpress.org/support/topic/php%e3%81%ae%e3%83%90%e3%83%bc%e3%82%b8%e3%83%a7%e3%83%b3%e3%82%a2%e3%83%83%e3%83%97%e5%be%8c%e5%86%8d%e5%ba%a6%e6%88%bb%e3%81%97%e3%81%9f%e9%9a%9b%e3%81%ae%e4%b8%8d%e5%85%b7%e5%90%88/#post-11664390\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 May 2020 06:30:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:563:\"\n						\n						<p>ダッシュボードにも入れない状態で、<br />\nWarning: require_once(__DIR__/admin.php) [function.require-once]: failed to open stream: No such file or directory in /home/users/0/main.jp-〇〇〇/web/2012/wp-admin/index.php on line 10</p>\n<p>Fatal error: require_once() [function.require]: Failed opening required ‘__DIR__/admin.php’ (include_path=’.:/usr/local/php/5.2/lib/php’) in /home/users/0/main.jp-〇〇〇/web/2012/wp-admin/index.php on line 10</p>\n<p>というエラーが出ている状態です。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"11wood11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:44:\"https://ja.wordpress.org/support/forums/feed\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:7:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 20 May 2020 11:40:35 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:12:\"x-robots-tag\";s:15:\"noindex, follow\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20130911040210\";}','no');
INSERT INTO `wp_options` VALUES (239,'_transient_timeout_feed_mod_6f409681938158427d2ded6eb1b9ea27','1590018036','no');
INSERT INTO `wp_options` VALUES (240,'_transient_feed_mod_6f409681938158427d2ded6eb1b9ea27','1589974836','no');
INSERT INTO `wp_options` VALUES (241,'_transient_timeout_dash_v2_45827e8e892dd0b85803a110fad8690f','1590018036','no');
INSERT INTO `wp_options` VALUES (242,'_transient_dash_v2_45827e8e892dd0b85803a110fad8690f','<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/2020/05/01/wordpress-5-4-1/\'>WordPress 5.4.1</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/%E6%9B%B4%E6%96%B0%E3%81%AB%E5%A4%B1%E6%95%97%E3%81%97%E3%81%BE%E3%81%97%E3%81%9F%E3%80%82-%E7%8F%BE%E5%9C%A8%E3%82%AA%E3%83%95%E3%83%A9%E3%82%A4%E3%83%B3%E3%81%AE%E3%82%88%E3%81%86%E3%81%A7-2/#post-11664399\'>更新に失敗しました。 現在オフラインのようです。</a></li><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/woocommerce-amazon-pay/#post-11664398\'>返信先: Woocommerce Amazon pay</a></li><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/%E3%83%98%E3%83%83%E3%83%80%E3%83%BC%E3%81%8C%EF%BC%92%E3%81%A4%E8%A1%A8%E7%A4%BA%E3%81%95%E3%82%8C%E3%81%A6%E3%81%97%E3%81%BE%E3%81%84%E3%80%81%E8%A1%A8%E7%A4%BA%E3%81%8C%E5%A4%89%E5%BD%A2%E3%81%97/#post-11664397\'>返信先: ヘッダーが２つ表示されてしまい、表示が変形している。</a></li></ul></div>','no');
INSERT INTO `wp_options` VALUES (243,'_site_transient_timeout_theme_roots','1589977449','no');
INSERT INTO `wp_options` VALUES (244,'_site_transient_theme_roots','a:5:{s:13:\"cocoon-master\";s:7:\"/themes\";s:6:\"lesson\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (5,6,'_edit_lock','1589889842:1');
INSERT INTO `wp_postmeta` VALUES (6,7,'_wp_attached_file','2020/05/castle-4873097__480.jpg');
INSERT INTO `wp_postmeta` VALUES (7,7,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:720;s:6:\"height\";i:480;s:4:\"file\";s:31:\"2020/05/castle-4873097__480.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"castle-4873097__480-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"castle-4873097__480-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"thumb100\";a:4:{s:4:\"file\";s:31:\"castle-4873097__480-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"thumb150\";a:4:{s:4:\"file\";s:31:\"castle-4873097__480-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"thumb120\";a:4:{s:4:\"file\";s:30:\"castle-4873097__480-120x68.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"thumb160\";a:4:{s:4:\"file\";s:30:\"castle-4873097__480-160x90.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"thumb320\";a:4:{s:4:\"file\";s:31:\"castle-4873097__480-320x180.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (10,6,'_thumbnail_id','7');
INSERT INTO `wp_postmeta` VALUES (11,6,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (12,6,'_pingme','1');
INSERT INTO `wp_postmeta` VALUES (13,6,'_encloseme','1');
INSERT INTO `wp_postmeta` VALUES (14,6,'the_page_seo_title','');
INSERT INTO `wp_postmeta` VALUES (15,6,'the_page_meta_description','');
INSERT INTO `wp_postmeta` VALUES (16,6,'the_page_meta_keywords','');
INSERT INTO `wp_postmeta` VALUES (17,6,'the_page_noindex','0');
INSERT INTO `wp_postmeta` VALUES (18,6,'the_page_nofollow','0');
INSERT INTO `wp_postmeta` VALUES (19,6,'the_page_canonical_url','');
INSERT INTO `wp_postmeta` VALUES (20,6,'the_page_ads_novisible','0');
INSERT INTO `wp_postmeta` VALUES (21,6,'page_type','default');
INSERT INTO `wp_postmeta` VALUES (22,6,'the_page_read_time_novisible','0');
INSERT INTO `wp_postmeta` VALUES (23,6,'the_page_toc_novisible','0');
INSERT INTO `wp_postmeta` VALUES (24,6,'update_level','high');
INSERT INTO `wp_postmeta` VALUES (25,6,'the_review_enable','0');
INSERT INTO `wp_postmeta` VALUES (26,6,'the_review_type','Product');
INSERT INTO `wp_postmeta` VALUES (27,6,'the_review_name','');
INSERT INTO `wp_postmeta` VALUES (28,6,'the_review_rate','5');
INSERT INTO `wp_postmeta` VALUES (29,6,'redirect_url','');
INSERT INTO `wp_postmeta` VALUES (30,6,'the_page_no_amp','0');
INSERT INTO `wp_postmeta` VALUES (31,6,'_custom_css','');
INSERT INTO `wp_postmeta` VALUES (32,6,'_custom_js','');
INSERT INTO `wp_postmeta` VALUES (33,6,'the_page_memo','');
INSERT INTO `wp_postmeta` VALUES (34,6,'sns_image_url','');
INSERT INTO `wp_postmeta` VALUES (35,9,'_edit_lock','1589975636:1');
INSERT INTO `wp_postmeta` VALUES (36,10,'_edit_lock','1589976020:1');
INSERT INTO `wp_postmeta` VALUES (37,11,'_edit_lock','1589976181:1');
INSERT INTO `wp_postmeta` VALUES (38,12,'_edit_lock','1589976196:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-05-18 12:55:06','2020-05-18 12:55:06','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-05-18 12:55:06','2020-05-18 12:55:06','',0,'http://lesson1.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-05-18 12:55:06','2020-05-18 12:55:06','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://lesson1.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-05-18 12:55:06','2020-05-18 12:55:06','',0,'http://lesson1.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-05-18 12:55:06','2020-05-18 12:55:06','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://lesson1.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2020-05-18 12:55:06','2020-05-18 12:55:06','',0,'http://lesson1.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2020-05-18 12:59:24','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-05-18 12:59:24','0000-00-00 00:00:00','',0,'http://lesson1.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-05-18 13:22:52','2020-05-18 13:22:52','<!-- wp:heading -->\n<h2>自己紹介</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>宇野です</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>こんにちは</p>\n<!-- /wp:paragraph -->','こんにちは','','publish','open','open','','year','','','2020-05-18 13:22:53','2020-05-18 13:22:53','',0,'http://lesson1.local/?p=6',0,'post','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-05-18 13:16:22','2020-05-18 13:16:22','','castle-4873097__480','','inherit','open','closed','','castle-4873097__480','','','2020-05-18 13:16:22','2020-05-18 13:16:22','',6,'http://lesson1.local/wp-content/uploads/2020/05/castle-4873097__480.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-05-18 13:22:52','2020-05-18 13:22:52','<!-- wp:heading -->\n<h2>自己紹介</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>宇野です</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>こんにちは</p>\n<!-- /wp:paragraph -->','こんにちは','','inherit','closed','closed','','6-revision-v1','','','2020-05-18 13:22:52','2020-05-18 13:22:52','',6,'http://lesson1.local/6-revision-v1/hello',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-05-20 11:40:40','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2020-05-20 11:40:40','0000-00-00 00:00:00','',0,'http://lesson1.local/?p=9',0,'post','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-05-20 12:00:20','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2020-05-20 12:00:20','0000-00-00 00:00:00','',0,'http://lesson1.local/?p=10',0,'post','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-05-20 12:03:01','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2020-05-20 12:03:01','0000-00-00 00:00:00','',0,'http://lesson1.local/?p=11',0,'post','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-05-20 12:03:16','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2020-05-20 12:03:16','0000-00-00 00:00:00','',0,'http://lesson1.local/?p=12',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'test','test',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','uuno');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"7b7c6440457ca5b0253daed6bcca4c2d5a94fdc12635f4d77044af9cc4a62379\";a:4:{s:10:\"expiration\";i:1591016314;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589806714;}s:64:\"ea48b0654bb618f83018487159137f35b0cb5eb4d5aa3e7da2613347f856a3b0\";a:4:{s:10:\"expiration\";i:1591016364;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589806764;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings-time','1589808091');
INSERT INTO `wp_usermeta` VALUES (20,1,'closedpostboxes_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (21,1,'metaboxhidden_dashboard','a:0:{}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'uuno','$P$BQg1ogdYY.p4XeHw5iui560SnCrm901','uuno','dev-email@flywheel.local','','2020-05-18 12:55:06','',0,'uuno');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-20 21:10:13
