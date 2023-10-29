-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-10-25 19:52:37','2023-10-25 19:52:37','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
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
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=392 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Fictional University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','akwnorris@gmail.com','yes');
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
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:183:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"campuses/?$\";s:26:\"index.php?post_type=campus\";s:41:\"campuses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:36:\"campuses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:28:\"campuses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"campuses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"campuses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"campuses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"campuses/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:29:\"campuses/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:49:\"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:44:\"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:37:\"campuses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:44:\"campuses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:33:\"campuses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:25:\"campuses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"campuses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"campuses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=36&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"manual-image-crop/manual-image-crop.php\";i:2;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','55853','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','38','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','36','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1713815557','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','55853','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:8:{i:1698555158;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1698565958;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1698566039;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1698609158;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698609239;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698889997;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1698954758;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.3.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}','yes');
INSERT INTO `wp_options` VALUES (122,'recovery_keys','a:1:{s:22:\"mYA7Bzr5kk0nxWvSAKgM8y\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BpIYnOMfBHcLNWVdewU2wI5FJSOmPT1\";s:10:\"created_at\";i:1698554281;}}','yes');
INSERT INTO `wp_options` VALUES (123,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698283299;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (124,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (125,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1698522760;s:15:\"version_checked\";s:5:\"6.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1698522761;s:7:\"checked\";a:1:{s:26:\"fictional-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_timeout_browser_cf407ef2b8f16b721f42a80271bc8642','1698868439','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_browser_cf407ef2b8f16b721f42a80271bc8642','a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"15.6\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (133,'_site_transient_timeout_php_check_18f908370f4cb169b20964c7203d6110','1698868439','no');
INSERT INTO `wp_options` VALUES (134,'_site_transient_php_check_18f908370f4cb169b20964c7203d6110','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (136,'can_compress_scripts','0','yes');
INSERT INTO `wp_options` VALUES (151,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (156,'current_theme','Fictional University','yes');
INSERT INTO `wp_options` VALUES (157,'theme_mods_fictional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:17:\"footerLocationOne\";i:3;s:17:\"footerLocationTwo\";i:4;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (158,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (169,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (212,'_transient_health-check-site-status-result','{\"good\":16,\"recommended\":4,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (215,'_site_transient_timeout_browser_6bf9f47fa7833780f7fb47814ffc5090','1698957107','no');
INSERT INTO `wp_options` VALUES (216,'_site_transient_browser_6bf9f47fa7833780f7fb47814ffc5090','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"118.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (219,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (241,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (251,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (252,'recovery_mode_email_last_sent','1698554281','yes');
INSERT INTO `wp_options` VALUES (282,'acf_version','6.2.2','yes');
INSERT INTO `wp_options` VALUES (324,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1698522761;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.6\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.6.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}}s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.2\";s:39:\"manual-image-crop/manual-image-crop.php\";s:4:\"1.12\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.6\";}}','no');
INSERT INTO `wp_options` VALUES (325,'mic_make2x','true','yes');
INSERT INTO `wp_options` VALUES (381,'_site_transient_timeout_theme_roots','1698524561','no');
INSERT INTO `wp_options` VALUES (382,'_site_transient_theme_roots','a:1:{s:26:\"fictional-university-theme\";s:7:\"/themes\";}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,6,'_edit_lock','1698286277:1');
INSERT INTO `wp_postmeta` VALUES (6,8,'_edit_lock','1698286957:1');
INSERT INTO `wp_postmeta` VALUES (9,10,'_edit_lock','1698330668:1');
INSERT INTO `wp_postmeta` VALUES (10,12,'_edit_lock','1698330591:1');
INSERT INTO `wp_postmeta` VALUES (11,2,'_edit_lock','1698330633:1');
INSERT INTO `wp_postmeta` VALUES (12,3,'_edit_lock','1698330713:1');
INSERT INTO `wp_postmeta` VALUES (13,13,'_edit_lock','1698457759:1');
INSERT INTO `wp_postmeta` VALUES (14,16,'_edit_lock','1698349672:1');
INSERT INTO `wp_postmeta` VALUES (15,18,'_edit_lock','1698352279:1');
INSERT INTO `wp_postmeta` VALUES (16,20,'_edit_lock','1698349410:1');
INSERT INTO `wp_postmeta` VALUES (17,20,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (18,23,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (19,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (20,23,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (21,23,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (22,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (23,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (24,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (25,23,'_menu_item_url','http://fictional-university.local/');
INSERT INTO `wp_postmeta` VALUES (26,23,'_menu_item_orphaned','1698364634');
INSERT INTO `wp_postmeta` VALUES (27,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (28,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (29,24,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (30,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (31,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (32,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (33,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (34,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (36,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (37,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (38,25,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (39,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (40,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (41,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (42,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (43,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (44,25,'_menu_item_orphaned','1698364634');
INSERT INTO `wp_postmeta` VALUES (45,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (46,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (47,26,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (48,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (49,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (50,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (51,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (52,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (54,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (55,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (56,27,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (57,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (58,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (59,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (60,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (61,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (62,27,'_menu_item_orphaned','1698364634');
INSERT INTO `wp_postmeta` VALUES (63,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (64,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (65,28,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (66,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (67,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (68,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (69,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (70,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (71,28,'_menu_item_orphaned','1698364634');
INSERT INTO `wp_postmeta` VALUES (72,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (73,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (74,29,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (75,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (76,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (77,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (78,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (79,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (80,29,'_menu_item_orphaned','1698364634');
INSERT INTO `wp_postmeta` VALUES (81,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (82,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (83,30,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (84,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (85,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (86,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (87,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (88,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (89,30,'_menu_item_orphaned','1698364634');
INSERT INTO `wp_postmeta` VALUES (90,31,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (91,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (92,31,'_menu_item_object_id','31');
INSERT INTO `wp_postmeta` VALUES (93,31,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (94,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (95,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (96,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (97,31,'_menu_item_url','http://google.com');
INSERT INTO `wp_postmeta` VALUES (99,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (100,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (101,32,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (102,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (103,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (104,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (105,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (106,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (108,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (109,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (110,33,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (111,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (112,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (113,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (114,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (115,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (117,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (118,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (119,34,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (120,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (121,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (122,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (123,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (124,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (126,35,'_edit_lock','1698366412:1');
INSERT INTO `wp_postmeta` VALUES (127,36,'_edit_lock','1698373666:1');
INSERT INTO `wp_postmeta` VALUES (128,38,'_edit_lock','1698366452:1');
INSERT INTO `wp_postmeta` VALUES (129,40,'_edit_lock','1698425338:1');
INSERT INTO `wp_postmeta` VALUES (134,44,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (135,44,'_edit_lock','1698428334:1');
INSERT INTO `wp_postmeta` VALUES (136,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (137,45,'_edit_lock','1698443900:1');
INSERT INTO `wp_postmeta` VALUES (138,46,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (139,46,'_edit_lock','1698460714:1');
INSERT INTO `wp_postmeta` VALUES (142,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (143,49,'_edit_lock','1698427745:1');
INSERT INTO `wp_postmeta` VALUES (144,46,'event_date','20221101');
INSERT INTO `wp_postmeta` VALUES (145,46,'_event_date','field_653bf31cf0ecf');
INSERT INTO `wp_postmeta` VALUES (146,45,'event_date','20231110');
INSERT INTO `wp_postmeta` VALUES (147,45,'_event_date','field_653bf31cf0ecf');
INSERT INTO `wp_postmeta` VALUES (148,44,'event_date','20231209');
INSERT INTO `wp_postmeta` VALUES (149,44,'_event_date','field_653bf31cf0ecf');
INSERT INTO `wp_postmeta` VALUES (150,52,'_edit_lock','1698432060:1');
INSERT INTO `wp_postmeta` VALUES (151,54,'_edit_lock','1698460453:1');
INSERT INTO `wp_postmeta` VALUES (152,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (153,54,'event_date','20211231');
INSERT INTO `wp_postmeta` VALUES (154,54,'_event_date','field_653bf31cf0ecf');
INSERT INTO `wp_postmeta` VALUES (155,55,'_edit_lock','1698524323:1');
INSERT INTO `wp_postmeta` VALUES (156,56,'_edit_lock','1698435502:1');
INSERT INTO `wp_postmeta` VALUES (157,57,'_edit_lock','1698435525:1');
INSERT INTO `wp_postmeta` VALUES (158,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (159,58,'_edit_lock','1698450668:1');
INSERT INTO `wp_postmeta` VALUES (160,45,'related_programs','a:2:{i:0;s:2:\"56\";i:1;s:2:\"55\";}');
INSERT INTO `wp_postmeta` VALUES (161,45,'_related_programs','field_653c1a2699539');
INSERT INTO `wp_postmeta` VALUES (162,60,'_edit_lock','1698450485:1');
INSERT INTO `wp_postmeta` VALUES (163,61,'_edit_lock','1698452446:1');
INSERT INTO `wp_postmeta` VALUES (164,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (165,61,'related_programs','a:1:{i:0;s:2:\"56\";}');
INSERT INTO `wp_postmeta` VALUES (166,61,'_related_programs','field_653c1a2699539');
INSERT INTO `wp_postmeta` VALUES (167,62,'_wp_attached_file','2023/10/review2.jpg');
INSERT INTO `wp_postmeta` VALUES (168,62,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:19:\"2023/10/review2.jpg\";s:8:\"filesize\";i:60032;s:5:\"sizes\";a:4:{s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:19:\"review2-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15151;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:19:\"review2-480x512.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36338;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"review2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5200;}s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"review2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14500;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:15:\"micSelectedArea\";a:2:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"70\";s:1:\"w\";s:3:\"350\";s:1:\"h\";s:18:\"227.50000000000568\";s:5:\"scale\";s:15:\"1.4628571428571\";}s:17:\"professorPortrait\";a:5:{s:1:\"x\";s:6:\"21.875\";s:1:\"y\";s:1:\"0\";s:1:\"w\";s:7:\"328.125\";s:1:\"h\";s:3:\"350\";s:5:\"scale\";s:15:\"1.4628571428571\";}}}');
INSERT INTO `wp_postmeta` VALUES (169,61,'_thumbnail_id','62');
INSERT INTO `wp_postmeta` VALUES (170,63,'_wp_attached_file','2023/10/review3.jpg');
INSERT INTO `wp_postmeta` VALUES (171,63,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:19:\"2023/10/review3.jpg\";s:8:\"filesize\";i:54494;s:5:\"sizes\";a:4:{s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:19:\"review3-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13883;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:19:\"review3-480x512.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33397;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"review3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4911;}s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"review3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13464;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:15:\"micSelectedArea\";a:2:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"73\";s:1:\"w\";s:3:\"350\";s:1:\"h\";s:18:\"227.50000000000568\";s:5:\"scale\";s:15:\"1.4628571428571\";}s:17:\"professorPortrait\";a:5:{s:1:\"x\";s:1:\"9\";s:1:\"y\";s:1:\"0\";s:1:\"w\";s:7:\"328.125\";s:1:\"h\";s:3:\"350\";s:5:\"scale\";s:15:\"1.4628571428571\";}}}');
INSERT INTO `wp_postmeta` VALUES (172,60,'_thumbnail_id','63');
INSERT INTO `wp_postmeta` VALUES (173,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (174,60,'related_programs','a:1:{i:0;s:2:\"56\";}');
INSERT INTO `wp_postmeta` VALUES (175,60,'_related_programs','field_653c1a2699539');
INSERT INTO `wp_postmeta` VALUES (176,64,'_edit_lock','1698450217:1');
INSERT INTO `wp_postmeta` VALUES (177,65,'_wp_attached_file','2023/10/review5.jpg');
INSERT INTO `wp_postmeta` VALUES (178,65,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:19:\"2023/10/review5.jpg\";s:8:\"filesize\";i:66986;s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"review5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5570;}s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"review5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16108;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:19:\"review5-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16989;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:19:\"review5-480x512.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40773;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:15:\"micSelectedArea\";a:2:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"80\";s:1:\"w\";s:3:\"350\";s:1:\"h\";s:18:\"227.50000000000568\";s:5:\"scale\";s:15:\"1.4628571428571\";}s:17:\"professorPortrait\";a:5:{s:1:\"x\";s:1:\"2\";s:1:\"y\";s:1:\"0\";s:1:\"w\";s:7:\"328.125\";s:1:\"h\";s:3:\"350\";s:5:\"scale\";s:15:\"1.4628571428571\";}}}');
INSERT INTO `wp_postmeta` VALUES (179,64,'_thumbnail_id','65');
INSERT INTO `wp_postmeta` VALUES (180,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (181,64,'related_programs','a:1:{i:0;s:2:\"57\";}');
INSERT INTO `wp_postmeta` VALUES (182,64,'_related_programs','field_653c1a2699539');
INSERT INTO `wp_postmeta` VALUES (183,66,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (184,66,'_edit_lock','1698450661:1');
INSERT INTO `wp_postmeta` VALUES (185,69,'_wp_attached_file','2023/10/field-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (186,69,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:24:\"2023/10/field-scaled.jpg\";s:8:\"filesize\";i:825225;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"field-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14540;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"field-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:127852;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7967;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"field-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72473;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:19:\"field-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:289062;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:19:\"field-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:523394;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:17:\"field-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22478;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:17:\"field-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59582;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:18:\"field-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:106291;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"field.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"93\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (187,61,'page_banner_subtitle','The leading voice on microbiology. ');
INSERT INTO `wp_postmeta` VALUES (188,61,'_page_banner_subtitle','field_653c4d0bcd437');
INSERT INTO `wp_postmeta` VALUES (189,61,'page_banner_background_image','69');
INSERT INTO `wp_postmeta` VALUES (190,61,'_page_banner_background_image','field_653c4d28cd438');
INSERT INTO `wp_postmeta` VALUES (191,70,'_wp_attached_file','2023/10/building-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (192,70,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:27:\"2023/10/building-scaled.jpg\";s:8:\"filesize\";i:439767;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"building-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11427;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"building-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77339;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"building-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6705;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"building-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45577;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"building-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:167861;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"building-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:290768;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:20:\"building-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15891;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:20:\"building-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35298;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:21:\"building-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76638;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"building.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"84\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (193,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (194,13,'page_banner_subtitle','Discover, Innovate, Excel: Your Future Begins Here!');
INSERT INTO `wp_postmeta` VALUES (195,13,'_page_banner_subtitle','field_653c4d0bcd437');
INSERT INTO `wp_postmeta` VALUES (196,13,'page_banner_background_image','70');
INSERT INTO `wp_postmeta` VALUES (197,13,'_page_banner_background_image','field_653c4d28cd438');
INSERT INTO `wp_postmeta` VALUES (198,71,'page_banner_subtitle','Discover, Innovate, Excel: Your Future Begins Here!');
INSERT INTO `wp_postmeta` VALUES (199,71,'_page_banner_subtitle','field_653c4d0bcd437');
INSERT INTO `wp_postmeta` VALUES (200,71,'page_banner_background_image','70');
INSERT INTO `wp_postmeta` VALUES (201,71,'_page_banner_background_image','field_653c4d28cd438');
INSERT INTO `wp_postmeta` VALUES (202,54,'page_banner_subtitle','Ring in 2022 with us!');
INSERT INTO `wp_postmeta` VALUES (203,54,'_page_banner_subtitle','field_653c4d0bcd437');
INSERT INTO `wp_postmeta` VALUES (204,54,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (205,54,'_page_banner_background_image','field_653c4d28cd438');
INSERT INTO `wp_postmeta` VALUES (206,54,'related_programs','');
INSERT INTO `wp_postmeta` VALUES (207,54,'_related_programs','field_653c1a2699539');
INSERT INTO `wp_postmeta` VALUES (208,72,'_wp_attached_file','2023/10/notebook-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (209,72,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1922;s:4:\"file\";s:27:\"2023/10/notebook-scaled.jpg\";s:8:\"filesize\";i:288667;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"notebook-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12331;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"notebook-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58584;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"notebook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7187;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"notebook-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39240;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"notebook-1536x1153.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1153;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:107456;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"notebook-2048x1538.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1538;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:180074;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:20:\"notebook-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15910;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:20:\"notebook-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27239;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:21:\"notebook-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35758;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"notebook.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:3:\"146\";s:1:\"w\";s:3:\"466\";s:1:\"h\";s:18:\"108.73333333333298\";s:5:\"scale\";s:15:\"5.4914285714286\";}}}');
INSERT INTO `wp_postmeta` VALUES (210,46,'page_banner_subtitle','Words That Paint the Soul: Poetry Day Celebration');
INSERT INTO `wp_postmeta` VALUES (211,46,'_page_banner_subtitle','field_653c4d0bcd437');
INSERT INTO `wp_postmeta` VALUES (212,46,'page_banner_background_image','72');
INSERT INTO `wp_postmeta` VALUES (213,46,'_page_banner_background_image','field_653c4d28cd438');
INSERT INTO `wp_postmeta` VALUES (214,46,'related_programs','');
INSERT INTO `wp_postmeta` VALUES (215,46,'_related_programs','field_653c1a2699539');
INSERT INTO `wp_postmeta` VALUES (216,73,'_edit_lock','1698467825:1');
INSERT INTO `wp_postmeta` VALUES (217,74,'_edit_lock','1698467837:1');
INSERT INTO `wp_postmeta` VALUES (218,75,'_edit_lock','1698507315:1');
INSERT INTO `wp_postmeta` VALUES (219,75,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (220,75,'page_banner_subtitle','A beautiful campus in the heart of downtown.');
INSERT INTO `wp_postmeta` VALUES (221,75,'_page_banner_subtitle','field_653c4d0bcd437');
INSERT INTO `wp_postmeta` VALUES (222,75,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (223,75,'_page_banner_background_image','field_653c4d28cd438');
INSERT INTO `wp_postmeta` VALUES (224,76,'_edit_lock','1698505589:1');
INSERT INTO `wp_postmeta` VALUES (225,76,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (226,76,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (227,76,'_page_banner_subtitle','field_653c4d0bcd437');
INSERT INTO `wp_postmeta` VALUES (228,76,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (229,76,'_page_banner_background_image','field_653c4d28cd438');
INSERT INTO `wp_postmeta` VALUES (230,77,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (231,77,'_edit_lock','1698468086:1');
INSERT INTO `wp_postmeta` VALUES (232,75,'map_location','a:14:{s:7:\"address\";s:38:\"254 W 82nd St, New York, NY 10024, USA\";s:3:\"lat\";d:40.785789823291388;s:3:\"lng\";d:-73.979488546093734;s:4:\"zoom\";i:14;s:8:\"place_id\";s:27:\"ChIJ5ayIRoZYwokRwgGVU1wONKI\";s:13:\"street_number\";s:3:\"254\";s:11:\"street_name\";s:16:\"West 82nd Street\";s:17:\"street_name_short\";s:9:\"W 82nd St\";s:4:\"city\";s:8:\"New York\";s:5:\"state\";s:8:\"New York\";s:11:\"state_short\";s:2:\"NY\";s:9:\"post_code\";s:5:\"10024\";s:7:\"country\";s:13:\"United States\";s:13:\"country_short\";s:2:\"US\";}');
INSERT INTO `wp_postmeta` VALUES (233,75,'_map_location','field_653c9127cca7f');
INSERT INTO `wp_postmeta` VALUES (234,76,'map_location','a:14:{s:7:\"address\";s:38:\"319 E 95th St, New York, NY 10128, USA\";s:3:\"lat\";d:40.783320259432308;s:3:\"lng\";d:-73.946272069653304;s:4:\"zoom\";i:14;s:8:\"place_id\";s:27:\"ChIJc1gSQK9YwokRoWVvXsp6WXU\";s:13:\"street_number\";s:3:\"319\";s:11:\"street_name\";s:16:\"East 95th Street\";s:17:\"street_name_short\";s:9:\"E 95th St\";s:4:\"city\";s:8:\"New York\";s:5:\"state\";s:8:\"New York\";s:11:\"state_short\";s:2:\"NY\";s:9:\"post_code\";s:5:\"10128\";s:7:\"country\";s:13:\"United States\";s:13:\"country_short\";s:2:\"US\";}');
INSERT INTO `wp_postmeta` VALUES (235,76,'_map_location','field_653c9127cca7f');
INSERT INTO `wp_postmeta` VALUES (236,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (237,79,'_edit_lock','1698507272:1');
INSERT INTO `wp_postmeta` VALUES (244,79,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (245,79,'_wp_trash_meta_time','1698507497');
INSERT INTO `wp_postmeta` VALUES (246,79,'_wp_desired_post_slug','group_653d2a454c947');
INSERT INTO `wp_postmeta` VALUES (247,80,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (248,80,'_wp_trash_meta_time','1698507497');
INSERT INTO `wp_postmeta` VALUES (249,80,'_wp_desired_post_slug','field_653d2a45b06f0');
INSERT INTO `wp_postmeta` VALUES (250,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (251,81,'_edit_lock','1698507437:1');
INSERT INTO `wp_postmeta` VALUES (252,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (253,55,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (254,55,'_page_banner_subtitle','field_653c4d0bcd437');
INSERT INTO `wp_postmeta` VALUES (255,55,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (256,55,'_page_banner_background_image','field_653c4d28cd438');
INSERT INTO `wp_postmeta` VALUES (257,55,'related_campus','a:1:{i:0;s:2:\"75\";}');
INSERT INTO `wp_postmeta` VALUES (258,55,'_related_campus','field_653d2aeb6aa13');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-10-25 19:52:37','2023-10-25 19:52:37','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-10-25 19:52:37','2023-10-25 19:52:37','',0,'http://fictional-university.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-10-25 19:52:37','2023-10-25 19:52:37','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictional-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2023-10-25 19:52:37','2023-10-25 19:52:37','',0,'http://fictional-university.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-10-25 19:52:37','2023-10-25 19:52:37','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2023-10-26 14:34:13','2023-10-26 14:34:13','',0,'http://fictional-university.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2023-10-25 19:52:38','2023-10-25 19:52:38','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2023-10-25 19:52:38','2023-10-25 19:52:38','',0,'https://fictional-university.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2023-10-25 19:53:59','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-10-25 19:53:59','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-10-26 02:13:30','2023-10-26 02:13:30','<!-- wp:paragraph -->\n<p>Lorem ipsum.</p>\n<!-- /wp:paragraph -->','Test post','','publish','open','open','','test-post','','','2023-10-26 02:13:30','2023-10-26 02:13:30','',0,'http://fictional-university.local/?p=6',0,'post','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2023-10-26 02:13:30','2023-10-26 02:13:30','<!-- wp:paragraph -->\n<p>Lorem ipsum.</p>\n<!-- /wp:paragraph -->','Test post','','inherit','closed','closed','','6-revision-v1','','','2023-10-26 02:13:30','2023-10-26 02:13:30','',6,'http://fictional-university.local/?p=7',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-10-26 02:13:52','2023-10-26 02:13:52','<!-- wp:paragraph -->\n<p>Lorem ipsum.</p>\n<!-- /wp:paragraph -->','Second Test Post','','publish','open','open','','second-test-post','','','2023-10-26 02:13:52','2023-10-26 02:13:52','',0,'http://fictional-university.local/?p=8',0,'post','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2023-10-26 02:13:52','2023-10-26 02:13:52','<!-- wp:paragraph -->\n<p>Lorem ipsum.</p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','8-revision-v1','','','2023-10-26 02:13:52','2023-10-26 02:13:52','',8,'http://fictional-university.local/?p=9',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2023-10-26 02:22:51','2023-10-26 02:22:51','<!-- wp:paragraph -->\n<p>Lorem ipsum</p>\n<!-- /wp:paragraph -->','Test Page 123','','publish','closed','closed','','test-page-123','','','2023-10-26 02:22:51','2023-10-26 02:22:51','',0,'http://fictional-university.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2023-10-26 02:22:51','2023-10-26 02:22:51','<!-- wp:paragraph -->\n<p>Lorem ipsum</p>\n<!-- /wp:paragraph -->','Test Page 123','','inherit','closed','closed','','10-revision-v1','','','2023-10-26 02:22:51','2023-10-26 02:22:51','',10,'http://fictional-university.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2023-10-26 14:31:30','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2023-10-26 14:31:30','0000-00-00 00:00:00','',0,'http://fictional-university.local/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2023-10-26 14:33:43','2023-10-26 14:33:43','<!-- wp:paragraph -->\n<p>This is the about page.</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2023-10-28 01:39:48','2023-10-28 01:39:48','',0,'http://fictional-university.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-10-26 14:33:43','2023-10-26 14:33:43','<!-- wp:paragraph -->\n<p>This is the about page.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','13-revision-v1','','','2023-10-26 14:33:43','2023-10-26 14:33:43','',13,'http://fictional-university.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2023-10-26 14:34:13','2023-10-26 14:34:13','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2023-10-26 14:34:13','2023-10-26 14:34:13','',3,'http://fictional-university.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2023-10-26 16:08:29','2023-10-26 16:08:29','<!-- wp:paragraph -->\n<p>Lorem ipsum </p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2023-10-26 19:50:15','2023-10-26 19:50:15','',13,'http://fictional-university.local/?page_id=16',1,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2023-10-26 16:08:29','2023-10-26 16:08:29','<!-- wp:paragraph -->\n<p>Lorem ipsum </p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','16-revision-v1','','','2023-10-26 16:08:29','2023-10-26 16:08:29','',16,'http://fictional-university.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2023-10-26 16:08:50','2023-10-26 16:08:50','<!-- wp:paragraph -->\n<p>Content</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2023-10-26 19:50:23','2023-10-26 19:50:23','',13,'http://fictional-university.local/?page_id=18',2,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2023-10-26 16:08:50','2023-10-26 16:08:50','<!-- wp:paragraph -->\n<p>Content</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','18-revision-v1','','','2023-10-26 16:08:50','2023-10-26 16:08:50','',18,'http://fictional-university.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2023-10-26 16:30:37','2023-10-26 16:30:37','<!-- wp:paragraph -->\n<p>Lorem ipsum</p>\n<!-- /wp:paragraph -->','Inside Privacy Policy','','publish','closed','closed','','inside-privacy-policy','','','2023-10-26 16:31:17','2023-10-26 16:31:17','',3,'http://fictional-university.local/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2023-10-26 16:30:37','2023-10-26 16:30:37','<!-- wp:paragraph -->\n<p>Lorem ipsum</p>\n<!-- /wp:paragraph -->','Inside Privacy Policy','','inherit','closed','closed','','20-revision-v1','','','2023-10-26 16:30:37','2023-10-26 16:30:37','',20,'http://fictional-university.local/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2023-10-26 16:31:32','2023-10-26 16:31:32','<!-- wp:paragraph -->\n<p>Lorem ipsum</p>\n<!-- /wp:paragraph -->','Inside Privacy Policy','','inherit','closed','closed','','20-autosave-v1','','','2023-10-26 16:31:32','2023-10-26 16:31:32','',20,'http://fictional-university.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2023-10-26 23:57:14','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2023-10-26 23:57:14','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=23',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2023-10-26 23:58:47','2023-10-26 23:58:21',' ','','','publish','closed','closed','','24','','','2023-10-26 23:58:47','2023-10-26 23:58:47','',0,'http://fictional-university.local/?p=24',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2023-10-26 23:57:14','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-10-26 23:57:14','0000-00-00 00:00:00','',3,'http://fictional-university.local/?p=25',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2023-10-26 23:58:47','2023-10-26 23:58:21',' ','','','publish','closed','closed','','26','','','2023-10-26 23:58:47','2023-10-26 23:58:47','',0,'http://fictional-university.local/?p=26',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2023-10-26 23:57:14','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-10-26 23:57:14','0000-00-00 00:00:00','',13,'http://fictional-university.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2023-10-26 23:57:14','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-10-26 23:57:14','0000-00-00 00:00:00','',13,'http://fictional-university.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2023-10-26 23:57:14','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-10-26 23:57:14','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2023-10-26 23:57:14','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-10-26 23:57:14','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2023-10-27 00:17:05','2023-10-27 00:17:05','','Google','','publish','closed','closed','','google','','','2023-10-27 00:17:05','2023-10-27 00:17:05','',0,'http://fictional-university.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2023-10-27 00:17:05','2023-10-27 00:17:05',' ','','','publish','closed','closed','','32','','','2023-10-27 00:17:05','2023-10-27 00:17:05','',0,'http://fictional-university.local/?p=32',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2023-10-27 00:17:15','2023-10-27 00:17:15',' ','','','publish','closed','closed','','33','','','2023-10-27 00:17:15','2023-10-27 00:17:15','',0,'http://fictional-university.local/?p=33',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2023-10-27 00:17:15','2023-10-27 00:17:15',' ','','','publish','closed','closed','','34','','','2023-10-27 00:17:15','2023-10-27 00:17:15','',3,'http://fictional-university.local/?p=34',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2023-10-27 00:29:06','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2023-10-27 00:29:06','0000-00-00 00:00:00','',0,'http://fictional-university.local/?page_id=35',0,'page','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2023-10-27 00:29:38','2023-10-27 00:29:38','','Testing 123','','publish','closed','closed','','home','','','2023-10-27 02:18:47','2023-10-27 02:18:47','',0,'http://fictional-university.local/?page_id=36',0,'page','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2023-10-27 00:29:38','2023-10-27 00:29:38','','Home','','inherit','closed','closed','','36-revision-v1','','','2023-10-27 00:29:38','2023-10-27 00:29:38','',36,'http://fictional-university.local/?p=37',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2023-10-27 00:29:55','2023-10-27 00:29:55','','Blog','','publish','closed','closed','','blog','','','2023-10-27 00:29:55','2023-10-27 00:29:55','',0,'http://fictional-university.local/?page_id=38',0,'page','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2023-10-27 00:29:55','2023-10-27 00:29:55','','Blog','','inherit','closed','closed','','38-revision-v1','','','2023-10-27 00:29:55','2023-10-27 00:29:55','',38,'http://fictional-university.local/?p=39',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2023-10-27 01:07:01','2023-10-27 01:07:01','<!-- wp:paragraph -->\n<p>Test blog post for category.</p>\n<!-- /wp:paragraph -->','Another Test Post','Test excerpt capabilities for Another Test Post','publish','open','open','','test-post-2','','','2023-10-27 16:40:43','2023-10-27 16:40:43','',0,'http://fictional-university.local/?p=40',0,'post','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2023-10-27 01:07:01','2023-10-27 01:07:01','<!-- wp:paragraph -->\n<p>Test blog post for category.</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','40-revision-v1','','','2023-10-27 01:07:01','2023-10-27 01:07:01','',40,'http://fictional-university.local/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2023-10-27 01:13:11','2023-10-27 01:13:11','<!-- wp:paragraph -->\n<p>Test blog post for category.</p>\n<!-- /wp:paragraph -->','Another Test Post','','inherit','closed','closed','','40-revision-v1','','','2023-10-27 01:13:11','2023-10-27 01:13:11','',40,'http://fictional-university.local/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2023-10-27 02:18:47','2023-10-27 02:18:47','','Testing 123','','inherit','closed','closed','','36-revision-v1','','','2023-10-27 02:18:47','2023-10-27 02:18:47','',36,'http://fictional-university.local/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2023-10-27 15:35:18','2023-10-27 15:35:18','Info for Math Meetup','Math Meetup','','publish','closed','closed','','math-meetup','','','2023-10-27 17:38:54','2023-10-27 17:38:54','',0,'http://fictional-university.local/?post_type=event&#038;p=44',0,'event','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2023-10-27 15:35:32','2023-10-27 15:35:32','Info for Science Event','Science Event','','publish','closed','closed','','science-event','','','2023-10-27 20:21:38','2023-10-27 20:21:38','',0,'http://fictional-university.local/?post_type=event&#038;p=45',0,'event','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2023-10-27 15:35:44','2023-10-27 15:35:44','Info for Poetry Day','Poetry Day','Poetry day is going to be amazing.','publish','closed','closed','','poetry-day','','','2023-10-28 02:35:37','2023-10-28 02:35:37','',0,'http://fictional-university.local/?post_type=event&#038;p=46',0,'event','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2023-10-27 15:42:27','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2023-10-27 15:42:27','0000-00-00 00:00:00','',0,'http://fictional-university.local/?post_type=event&p=47',0,'event','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2023-10-27 16:40:43','2023-10-27 16:40:43','<!-- wp:paragraph -->\n<p>Test blog post for category.</p>\n<!-- /wp:paragraph -->','Another Test Post','Test excerpt capabilities for Another Test Post','inherit','closed','closed','','40-revision-v1','','','2023-10-27 16:40:43','2023-10-27 16:40:43','',40,'http://fictional-university.local/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2023-10-27 17:31:24','2023-10-27 17:31:24','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Event Date','event-date','publish','closed','closed','','group_653bf31c65c75','','','2023-10-27 17:31:24','2023-10-27 17:31:24','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=49',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2023-10-27 17:31:24','2023-10-27 17:31:24','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_653bf31cf0ecf','','','2023-10-27 17:31:24','2023-10-27 17:31:24','',49,'http://fictional-university.local/?post_type=acf-field&p=50',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2023-10-27 18:43:20','2023-10-27 18:43:20','','Past Events','','publish','closed','closed','','past-events','','','2023-10-27 18:43:20','2023-10-27 18:43:20','',0,'http://fictional-university.local/?page_id=52',0,'page','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2023-10-27 18:43:20','2023-10-27 18:43:20','','Past Events','','inherit','closed','closed','','52-revision-v1','','','2023-10-27 18:43:20','2023-10-27 18:43:20','',52,'http://fictional-university.local/?p=53',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2023-10-27 18:49:23','2023-10-27 18:49:23','<!-- wp:paragraph -->\n<p>Past Event Sample</p>\n<!-- /wp:paragraph -->','New Year 2022','','publish','closed','closed','','new-year-2022','','','2023-10-28 02:34:13','2023-10-28 02:34:13','',0,'http://fictional-university.local/?post_type=event&#038;p=54',0,'event','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2023-10-27 19:40:35','2023-10-27 19:40:35','<!-- wp:paragraph -->\n<p>Math program content</p>\n<!-- /wp:paragraph -->','Math','','publish','closed','closed','','math','','','2023-10-28 15:39:56','2023-10-28 15:39:56','',0,'http://fictional-university.local/?post_type=program&#038;p=55',0,'program','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2023-10-27 19:40:45','2023-10-27 19:40:45','<!-- wp:paragraph -->\n<p>Biology program content</p>\n<!-- /wp:paragraph -->','Biology','','publish','closed','closed','','biology','','','2023-10-27 19:40:45','2023-10-27 19:40:45','',0,'http://fictional-university.local/?post_type=program&#038;p=56',0,'program','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2023-10-27 19:40:55','2023-10-27 19:40:55','<!-- wp:paragraph -->\n<p>English program content</p>\n<!-- /wp:paragraph -->','English','','publish','closed','closed','','english','','','2023-10-27 19:40:55','2023-10-27 19:40:55','',0,'http://fictional-university.local/?post_type=program&#038;p=57',0,'program','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2023-10-27 20:16:13','2023-10-27 20:16:13','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Program','related-program','publish','closed','closed','','group_653c1a260606b','','','2023-10-28 15:37:53','2023-10-28 15:37:53','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=58',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2023-10-27 20:16:13','2023-10-27 20:16:13','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";s:13:\"bidirectional\";i:0;s:20:\"bidirectional_target\";a:0:{}}','Related Program(s)','related_programs','publish','closed','closed','','field_653c1a2699539','','','2023-10-28 15:37:53','2023-10-28 15:37:53','',58,'http://fictional-university.local/?post_type=acf-field&#038;p=59',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2023-10-27 22:39:06','2023-10-27 22:39:06','<!-- wp:paragraph -->\n<p>Lorem ipsum</p>\n<!-- /wp:paragraph -->','Dr. Smith','','publish','closed','closed','','doctor-smith','','','2023-10-27 23:09:01','2023-10-27 23:09:01','',0,'http://fictional-university.local/?post_type=professor&#038;p=60',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2023-10-27 22:39:22','2023-10-27 22:39:22','<!-- wp:paragraph -->\n<p>Lorem ipsum</p>\n<!-- /wp:paragraph -->','Dr. Banks','','publish','closed','closed','','dr-banks','','','2023-10-28 00:03:50','2023-10-28 00:03:50','',0,'http://fictional-university.local/?post_type=professor&#038;p=61',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2023-10-27 23:07:02','2023-10-27 23:07:02','','review2','','inherit','open','closed','','review2','','','2023-10-27 23:07:02','2023-10-27 23:07:02','',61,'http://fictional-university.local/wp-content/uploads/2023/10/review2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (63,1,'2023-10-27 23:08:55','2023-10-27 23:08:55','','review3','','inherit','open','closed','','review3','','','2023-10-27 23:08:55','2023-10-27 23:08:55','',60,'http://fictional-university.local/wp-content/uploads/2023/10/review3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (64,1,'2023-10-27 23:37:23','2023-10-27 23:37:23','<!-- wp:paragraph -->\n<p>Dr. Williams bio</p>\n<!-- /wp:paragraph -->','Dr. Williams','','publish','closed','closed','','dr-williams','','','2023-10-27 23:37:24','2023-10-27 23:37:24','',0,'http://fictional-university.local/?post_type=professor&#038;p=64',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2023-10-27 23:36:50','2023-10-27 23:36:50','','review5','','inherit','open','closed','','review5','','','2023-10-27 23:36:50','2023-10-27 23:36:50','',64,'http://fictional-university.local/wp-content/uploads/2023/10/review5.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (66,1,'2023-10-27 23:53:20','2023-10-27 23:53:20','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Page Banner','page-banner','publish','closed','closed','','group_653c4d0b1f5b8','','','2023-10-27 23:53:20','2023-10-27 23:53:20','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=66',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2023-10-27 23:53:20','2023-10-27 23:53:20','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Page Banner Subtitle','page_banner_subtitle','publish','closed','closed','','field_653c4d0bcd437','','','2023-10-27 23:53:20','2023-10-27 23:53:20','',66,'http://fictional-university.local/?post_type=acf-field&p=67',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2023-10-27 23:53:20','2023-10-27 23:53:20','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_653c4d28cd438','','','2023-10-27 23:53:20','2023-10-27 23:53:20','',66,'http://fictional-university.local/?post_type=acf-field&p=68',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2023-10-27 23:56:02','2023-10-27 23:56:02','','field','','inherit','open','closed','','field','','','2023-10-27 23:56:02','2023-10-27 23:56:02','',61,'http://fictional-university.local/wp-content/uploads/2023/10/field.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (70,1,'2023-10-28 01:39:42','2023-10-28 01:39:42','','building','','inherit','open','closed','','building','','','2023-10-28 01:39:42','2023-10-28 01:39:42','',13,'http://fictional-university.local/wp-content/uploads/2023/10/building.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (71,1,'2023-10-28 01:39:48','2023-10-28 01:39:48','<!-- wp:paragraph -->\n<p>This is the about page.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','13-revision-v1','','','2023-10-28 01:39:48','2023-10-28 01:39:48','',13,'http://fictional-university.local/?p=71',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2023-10-28 02:35:15','2023-10-28 02:35:15','','notebook','','inherit','open','closed','','notebook','','','2023-10-28 02:35:15','2023-10-28 02:35:15','',46,'http://fictional-university.local/wp-content/uploads/2023/10/notebook.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (73,1,'2023-10-28 04:38:47','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2023-10-28 04:38:47','0000-00-00 00:00:00','',0,'http://fictional-university.local/?post_type=campus&p=73',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2023-10-28 04:39:33','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2023-10-28 04:39:33','0000-00-00 00:00:00','',0,'http://fictional-university.local/?post_type=campus&p=74',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2023-10-28 04:40:50','2023-10-28 04:40:50','<!-- wp:paragraph -->\n<p>Info on Downtown West campus</p>\n<!-- /wp:paragraph -->','Downtown West','','publish','closed','closed','','downtown-west','','','2023-10-28 05:08:29','2023-10-28 05:08:29','',0,'http://fictional-university.local/?post_type=campus&#038;p=75',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2023-10-28 04:41:14','2023-10-28 04:41:14','<!-- wp:paragraph -->\n<p>Info on Downtown East campus</p>\n<!-- /wp:paragraph -->','Downtown East','','publish','closed','closed','','downtown-east','','','2023-10-28 05:09:03','2023-10-28 05:09:03','',0,'http://fictional-university.local/?post_type=campus&#038;p=76',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2023-10-28 04:43:30','2023-10-28 04:43:30','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Map Location','map-location','publish','closed','closed','','group_653c912735688','','','2023-10-28 04:43:30','2023-10-28 04:43:30','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=77',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2023-10-28 04:43:30','2023-10-28 04:43:30','a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}','Map Location','map_location','publish','closed','closed','','field_653c9127cca7f','','','2023-10-28 04:43:30','2023-10-28 04:43:30','',77,'http://fictional-university.local/?post_type=acf-field&p=78',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2023-10-28 15:35:43','2023-10-28 15:35:43','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Campus(es)','related-campuses','trash','closed','closed','','group_653d2a454c947__trashed','','','2023-10-28 15:38:17','2023-10-28 15:38:17','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=79',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2023-10-28 15:35:43','2023-10-28 15:35:43','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"campus\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";s:13:\"bidirectional\";i:0;s:20:\"bidirectional_target\";a:0:{}}','Related Campus(es)','related_campus','trash','closed','closed','','field_653d2a45b06f0__trashed','','','2023-10-28 15:38:17','2023-10-28 15:38:17','',79,'http://fictional-university.local/?post_type=acf-field&#038;p=80',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2023-10-28 15:39:33','2023-10-28 15:39:33','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Campus(es)','related-campuses','publish','closed','closed','','group_653d2aeb892de','','','2023-10-28 15:39:34','2023-10-28 15:39:34','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=81',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2023-10-28 15:39:33','2023-10-28 15:39:33','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"campus\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";s:13:\"bidirectional\";i:0;s:20:\"bidirectional_target\";a:0:{}}','Related Campus(es)','related_campus','publish','closed','closed','','field_653d2aeb6aa13','','','2023-10-28 15:39:33','2023-10-28 15:39:33','',81,'http://fictional-university.local/?post_type=acf-field&p=82',0,'acf-field','',0);
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
INSERT INTO `wp_term_relationships` VALUES (6,1,0);
INSERT INTO `wp_term_relationships` VALUES (8,1,0);
INSERT INTO `wp_term_relationships` VALUES (24,2,0);
INSERT INTO `wp_term_relationships` VALUES (26,2,0);
INSERT INTO `wp_term_relationships` VALUES (31,4,0);
INSERT INTO `wp_term_relationships` VALUES (32,4,0);
INSERT INTO `wp_term_relationships` VALUES (33,3,0);
INSERT INTO `wp_term_relationships` VALUES (34,3,0);
INSERT INTO `wp_term_relationships` VALUES (40,5,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','Test awards description.',0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'My Main Header Menu','my-main-header-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Second Menu','second-menu',0);
INSERT INTO `wp_terms` VALUES (4,'Third Menu','third-menu',0);
INSERT INTO `wp_terms` VALUES (5,'Awards','awards',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Alex');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Testing hello world 123');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"f61ecc1ed2fa58b7e29a3cd288a390c9791b1e676f0b790e1e22debaa2f905eb\";a:4:{s:10:\"expiration\";i:1699755992;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36\";s:5:\"login\";i:1698546392;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','5');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:5:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:23:\"taxonomy-panel-category\";i:3;s:12:\"post-excerpt\";i:4;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2023-10-27T23:05:57.699Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (22,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings','libraryContent=browse&mfold=o');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings-time','1698507418');
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
INSERT INTO `wp_users` VALUES (1,'Sc0ut','$P$BopIuIOFiBnxmk7A6WgZz6g4hH6YuR1','sc0ut','akwnorris@gmail.com','http://fictional-university.local','2023-10-25 19:52:37','',0,'Alex');
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

-- Dump completed on 2023-10-28 23:39:48
