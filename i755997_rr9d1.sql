-- MySQL dump 10.13  Distrib 5.5.41, for Linux (x86_64)
--
-- Host: localhost    Database: i755997_rr9d1
-- ------------------------------------------------------
-- Server version	5.5.41-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `i755997_rr9d1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `i755997_rr9d1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `i755997_rr9d1`;

--
-- Table structure for table `rr9d_commentmeta`
--

DROP TABLE IF EXISTS `rr9d_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rr9d_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rr9d_commentmeta`
--

LOCK TABLES `rr9d_commentmeta` WRITE;
/*!40000 ALTER TABLE `rr9d_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `rr9d_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rr9d_comments`
--

DROP TABLE IF EXISTS `rr9d_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rr9d_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rr9d_comments`
--

LOCK TABLES `rr9d_comments` WRITE;
/*!40000 ALTER TABLE `rr9d_comments` DISABLE KEYS */;
INSERT INTO `rr9d_comments` VALUES (1,1,'Mr WordPress','','http://wordpress.org/','','2010-06-18 20:51:35','2010-06-18 20:51:35','Hi, this is a comment.<br />To delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0);
/*!40000 ALTER TABLE `rr9d_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rr9d_links`
--

DROP TABLE IF EXISTS `rr9d_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rr9d_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rr9d_links`
--

LOCK TABLES `rr9d_links` WRITE;
/*!40000 ALTER TABLE `rr9d_links` DISABLE KEYS */;
INSERT INTO `rr9d_links` VALUES (1,'http://codex.wordpress.org/','Documentation','','','','Y',1,0,'0000-00-00 00:00:00','','',''),(2,'http://wordpress.org/development/','WordPress Blog','','','','Y',1,0,'0000-00-00 00:00:00','','','http://wordpress.org/development/feed/'),(3,'http://wordpress.org/extend/ideas/','Suggest Ideas','','','','Y',1,0,'0000-00-00 00:00:00','','',''),(4,'http://wordpress.org/support/','Support Forum','','','','Y',1,0,'0000-00-00 00:00:00','','',''),(5,'http://wordpress.org/extend/plugins/','Plugins','','','','Y',1,0,'0000-00-00 00:00:00','','',''),(6,'http://wordpress.org/extend/themes/','Themes','','','','Y',1,0,'0000-00-00 00:00:00','','',''),(7,'http://planet.wordpress.org/','WordPress Planet','','','','Y',1,0,'0000-00-00 00:00:00','','','');
/*!40000 ALTER TABLE `rr9d_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rr9d_options`
--

DROP TABLE IF EXISTS `rr9d_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rr9d_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=459 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rr9d_options`
--

LOCK TABLES `rr9d_options` WRITE;
/*!40000 ALTER TABLE `rr9d_options` DISABLE KEYS */;
INSERT INTO `rr9d_options` VALUES (1,'siteurl','http://bigbensseafood.com','yes'),(2,'blogname','BIG BEN&#039;S SEAFOOD LLC','yes'),(3,'blogdescription','Enjoy the Simple taste of Sea Food','yes'),(4,'users_can_register','0','yes'),(5,'admin_email','afrikatec@p3plcpnl0454.prod.phx3.secureserver.net','yes'),(6,'start_of_week','1','yes'),(7,'use_balanceTags','0','yes'),(8,'use_smilies','1','yes'),(9,'require_name_email','1','yes'),(10,'comments_notify','1','yes'),(11,'posts_per_rss','10','yes'),(12,'rss_use_excerpt','0','yes'),(13,'mailserver_url','mail.example.com','yes'),(14,'mailserver_login','login@example.com','yes'),(15,'mailserver_pass','password','yes'),(16,'mailserver_port','110','yes'),(17,'default_category','1','yes'),(18,'default_comment_status','open','yes'),(19,'default_ping_status','open','yes'),(20,'default_pingback_flag','0','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(29,'comment_moderation','0','yes'),(30,'moderation_notify','1','yes'),(31,'permalink_structure','/%category%/%postname%/','yes'),(32,'gzipcompression','0','yes'),(33,'hack_file','0','yes'),(34,'blog_charset','UTF-8','yes'),(35,'moderation_keys','','no'),(36,'active_plugins','a:3:{i:0;s:45:\"limit-login-attempts/limit-login-attempts.php\";i:1;s:27:\"quick-setup/quick-setup.php\";i:2;s:17:\"wpclef/wpclef.php\";}','yes'),(37,'home','http://bigbensseafood.com','yes'),(38,'category_base','','yes'),(39,'ping_sites','http://rpc.pingomatic.com/','yes'),(40,'advanced_edit','0','yes'),(41,'comment_max_links','2','yes'),(42,'gmt_offset','0','yes'),(43,'default_email_category','1','yes'),(44,'recently_edited','a:3:{i:0;s:89:\"/home/afrikatec/public_html/bigbensseafood.com/wp-content/themes/twentythirteen/style.css\";i:1;s:75:\"/home/afrikatec/public_html/bigbensseafood.com/wp-content/plugins/hello.php\";i:2;s:0:\"\";}','no'),(45,'template','twentythirteen','yes'),(46,'stylesheet','twentythirteen','yes'),(47,'comment_whitelist','1','yes'),(48,'blacklist_keys','','no'),(49,'comment_registration','0','yes'),(51,'html_type','text/html','yes'),(52,'use_trackback','0','yes'),(53,'default_role','subscriber','yes'),(54,'db_version','31535','yes'),(55,'uploads_use_yearmonth_folders','1','yes'),(56,'upload_path','/home/afrikatec/public_html/bigbensseafood.com/wp-content/uploads','yes'),(57,'blog_public','1','yes'),(58,'default_link_category','2','yes'),(59,'show_on_front','posts','yes'),(60,'tag_base','','yes'),(61,'show_avatars','1','yes'),(62,'avatar_rating','G','yes'),(63,'upload_url_path','','yes'),(64,'thumbnail_size_w','150','yes'),(65,'thumbnail_size_h','150','yes'),(66,'thumbnail_crop','1','yes'),(67,'medium_size_w','300','yes'),(68,'medium_size_h','300','yes'),(69,'avatar_default','mystery','yes'),(72,'large_size_w','1024','yes'),(73,'large_size_h','1024','yes'),(74,'image_default_link_type','file','yes'),(75,'image_default_size','','yes'),(76,'image_default_align','','yes'),(77,'close_comments_for_old_posts','0','yes'),(78,'close_comments_days_old','14','yes'),(79,'thread_comments','1','yes'),(80,'thread_comments_depth','5','yes'),(81,'page_comments','0','yes'),(82,'comments_per_page','50','yes'),(83,'default_comments_page','newest','yes'),(84,'comment_order','asc','yes'),(85,'sticky_posts','a:0:{}','yes'),(86,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(87,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(88,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(89,'timezone_string','','yes'),(91,'embed_size_w','','yes'),(92,'embed_size_h','600','yes'),(93,'page_for_posts','0','yes'),(94,'page_on_front','0','yes'),(95,'rr9d_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_meta','a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:4;a:0:{}i:5;a:0:{}}','yes'),(101,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:17:\"recent-comments-2\";i:1;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:12:\"categories-2\";i:3;s:10:\"calendar-3\";i:4;s:10:\"archives-2\";}s:9:\"sidebar-2\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(177,'_wp_session_63dd87e8a890a61a253fc2bb14832c51','a:1:{s:5:\"state\";s:24:\"1mNBngeAstgDtZNQjPh3TBxC\";}','no'),(102,'ftp_credentials','a:3:{s:8:\"hostname\";s:9:\"localhost\";s:8:\"username\";N;s:15:\"connection_type\";s:3:\"ftp\";}','yes'),(103,'uninstall_plugins','a:1:{s:17:\"wpclef/wpclef.php\";a:2:{i:0;s:9:\"ClefSetup\";i:1;s:16:\"uninstall_plugin\";}}','no'),(104,'default_post_format','0','yes'),(105,'link_manager_enabled','1','yes'),(106,'initial_db_version','15260','yes'),(309,'WPLANG','en','yes'),(108,'db_upgraded','','yes'),(109,'cron','a:6:{i:1431896468;a:1:{s:29:\"wp_session_garbage_collection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1431921238;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1431934980;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1431935320;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1431964824;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(311,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.2.2.zip\";s:6:\"locale\";s:2:\"en\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.2.2\";s:7:\"version\";s:5:\"4.2.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1431888850;s:15:\"version_checked\";s:5:\"4.2.2\";s:12:\"translations\";a:0:{}}','yes'),(456,'_site_transient_timeout_theme_roots','1431890651','yes'),(457,'_site_transient_theme_roots','a:4:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";s:11:\"zblackbeard\";s:7:\"/themes\";}','yes'),(344,'limit_login_retries','a:1:{s:15:\"187.253.190.194\";i:3;}','no'),(345,'limit_login_retries_valid','a:1:{s:15:\"187.253.190.194\";i:1431749867;}','no'),(126,'_wp_session_c71148bafa72aad19b83828b8f6652c9','a:1:{s:5:\"state\";s:24:\"sVG5zSBfw7wSnJOMaUuNCwWD\";}','no'),(118,'wpclef','a:3:{s:12:\"installed_at\";s:7:\"2.2.9.3\";s:29:\"clef_form_settings_embed_clef\";i:1;s:7:\"version\";s:7:\"2.2.9.4\";}','yes'),(308,'rewrite_rules','a:73:{s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)(/[0-9]+)?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:26:\"(.+?)/([^/]+)(/[0-9]+)?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}','yes'),(122,'_transient_random_seed','04c6683ed583c2b873cbc8542d65971a','yes'),(124,'gd_quicksetup_version','1.04','yes'),(125,'gd_quicksetup_options','a:2:{s:3:\"key\";s:0:\"\";s:7:\"api_url\";s:33:\"https://wpqs.secureserver.net/v1/\";}','yes'),(165,'_wp_session_expires_c71148bafa72aad19b83828b8f6652c9','2892591184','no'),(217,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1431888851;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"1.2\";s:14:\"twentyfourteen\";s:3:\"1.4\";s:14:\"twentythirteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','yes'),(160,'_transient_update_plugins','O:8:\"stdClass\":1:{s:12:\"last_checked\";i:0;}','yes'),(132,'recently_activated','a:0:{}','yes'),(146,'theme_mods_twentyfifteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1430497138;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"secondary-widget-area\";a:0:{}s:24:\"first-footer-widget-area\";a:0:{}s:25:\"second-footer-widget-area\";a:0:{}s:24:\"third-footer-widget-area\";a:0:{}s:25:\"fourth-footer-widget-area\";a:0:{}}}}','yes'),(145,'_transient_twentyfifteen_categories','1','yes'),(147,'current_theme','Twenty Thirteen','yes'),(148,'theme_mods_twentyfourteen','a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1430552777;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes'),(149,'theme_switched','','yes'),(161,'_transient_update_themes','O:8:\"stdClass\":1:{s:12:\"last_checked\";i:0;}','yes'),(175,'_site_transient_timeout_browser_a344c581ee2eff9c9c4fcdf9997f17a9','1431157485','yes'),(176,'_site_transient_browser_a344c581ee2eff9c9c4fcdf9997f17a9','a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"42.0.2311.135\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','yes'),(205,'_wp_session_expires_63dd87e8a890a61a253fc2bb14832c51','2892645372','no'),(179,'_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca','1430595888','no'),(182,'_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9','1430595888','no'),(216,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1431888850;s:8:\"response\";a:1:{s:17:\"wpclef/wpclef.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"37352\";s:4:\"slug\";s:6:\"wpclef\";s:6:\"plugin\";s:17:\"wpclef/wpclef.php\";s:11:\"new_version\";s:7:\"2.2.9.5\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/wpclef/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wpclef.2.2.9.5.zip\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.1.1.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}s:45:\"limit-login-attempts/limit-login-attempts.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:4:\"6158\";s:4:\"slug\";s:20:\"limit-login-attempts\";s:6:\"plugin\";s:45:\"limit-login-attempts/limit-login-attempts.php\";s:11:\"new_version\";s:5:\"1.7.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/limit-login-attempts/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/limit-login-attempts.1.7.1.zip\";s:14:\"upgrade_notice\";s:249:\"Users of version 1.6.2 and 1.7.0 should upgrade immediately. There was a problem with &quot;auth cookie&quot; lockout enforcement. Lockout of normal password login attempts still worked as it should. Please see plugin Changelog for more information.\";}}}','yes'),(195,'theme_mods_twentythirteen','a:3:{i:0;b:0;s:16:\"header_textcolor\";s:6:\"ffffff\";s:12:\"header_image\";s:21:\"random-uploaded-image\";}','yes'),(196,'widget_calendar','a:3:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;i:3;a:0:{}}','yes'),(197,'widget_nav_menu','a:3:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;i:3;a:0:{}}','yes'),(198,'widget_links','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(199,'widget_pages','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(200,'widget_tag_cloud','a:3:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;i:3;a:0:{}}','yes'),(210,'_transient_is_multi_author','0','yes'),(346,'limit_login_lockouts','a:0:{}','yes'),(347,'limit_login_logged','a:1:{s:12:\"194.6.233.45\";a:1:{s:5:\"admin\";i:4;}}','no'),(348,'limit_login_lockouts_total','4','no'),(251,'category_children','a:0:{}','yes');
/*!40000 ALTER TABLE `rr9d_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rr9d_postmeta`
--

DROP TABLE IF EXISTS `rr9d_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rr9d_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rr9d_postmeta`
--

LOCK TABLES `rr9d_postmeta` WRITE;
/*!40000 ALTER TABLE `rr9d_postmeta` DISABLE KEYS */;
INSERT INTO `rr9d_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,1,'_edit_lock','1430554965:1'),(3,1,'_edit_last','1'),(5,5,'_wp_attached_file','2015/05/s.htm'),(6,6,'_wp_attached_file','2015/05/catering.jpg'),(7,6,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1551;s:6:\"height\";i:1052;s:4:\"file\";s:20:\"2015/05/catering.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"catering-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"catering-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"catering-1024x695.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:695;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"catering-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),(10,2,'_edit_lock','1430555671:1'),(11,2,'_edit_last','1'),(14,10,'_edit_last','1'),(13,1,'_wp_old_slug','hello-world'),(15,10,'_edit_lock','1430553086:1'),(16,13,'_wp_attached_file','2015/05/Lobster-and-Seafood-Mixed-Grill.jpg'),(17,13,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:4705;s:6:\"height\";i:2231;s:4:\"file\";s:43:\"2015/05/Lobster-and-Seafood-Mixed-Grill.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Lobster-and-Seafood-Mixed-Grill-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"Lobster-and-Seafood-Mixed-Grill-300x142.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:142;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"Lobster-and-Seafood-Mixed-Grill-1024x486.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:486;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:43:\"Lobster-and-Seafood-Mixed-Grill-604x270.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";d:16;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS-1Ds Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1138802104;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"90\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}'),(18,14,'_wp_attached_file','2015/05/Lobster.jpg'),(19,14,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1886;s:6:\"height\";i:1342;s:4:\"file\";s:19:\"2015/05/Lobster.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Lobster-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Lobster-300x213.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"Lobster-1024x729.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:729;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"Lobster-604x270.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),(20,15,'_wp_attached_file','2015/05/red_lobster_seafood.jpg'),(21,15,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1334;s:4:\"file\";s:31:\"2015/05/red_lobster_seafood.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"red_lobster_seafood-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"red_lobster_seafood-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"red_lobster_seafood-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:31:\"red_lobster_seafood-604x270.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:2:\"AP\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:337:\"This undated product image provided by Red Lobster shows its new Wood-Grilled Lobster, Shrimp and Salmon dish. Red Lobster on Monday, Nov. 3, 2014 plans to announce another revamped menu that removes dishes including Spicy Tortilla Soup and a Wood-Grilled Pork Chop, while tacking on more dishes featuring lobster. (AP Photo/Red Lobster)\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:19:\"Red Lobster Seafood\";s:11:\"orientation\";i:1;}}'),(22,16,'_wp_attached_file','2015/05/royal-view-seafood-restaurant.jpg'),(23,16,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:550;s:6:\"height\";i:425;s:4:\"file\";s:41:\"2015/05/royal-view-seafood-restaurant.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"royal-view-seafood-restaurant-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"royal-view-seafood-restaurant-300x232.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:232;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:41:\"royal-view-seafood-restaurant-550x270.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),(24,17,'_wp_attached_file','2015/05/seafood-2.jpg'),(25,17,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:590;s:6:\"height\";i:443;s:4:\"file\";s:21:\"2015/05/seafood-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"seafood-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"seafood-2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"seafood-2-590x270.jpg\";s:5:\"width\";i:590;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),(26,18,'_wp_attached_file','2015/05/seafood_1001.jpg'),(27,18,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:24:\"2015/05/seafood_1001.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"seafood_1001-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"seafood_1001-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"seafood_1001-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"seafood_1001-604x270.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}'),(28,19,'_wp_attached_file','2015/05/seafood_1002.jpg'),(29,19,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:24:\"2015/05/seafood_1002.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"seafood_1002-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"seafood_1002-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"seafood_1002-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"seafood_1002-604x270.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}'),(30,20,'_wp_attached_file','2015/05/supreme-seafood-catering-set-king-carb-lobster-oyster-brown-crab-dungeness-crab-hong-kong_1.jpg'),(31,20,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1238;s:6:\"height\";i:804;s:4:\"file\";s:103:\"2015/05/supreme-seafood-catering-set-king-carb-lobster-oyster-brown-crab-dungeness-crab-hong-kong_1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:103:\"supreme-seafood-catering-set-king-carb-lobster-oyster-brown-crab-dungeness-crab-hong-kong_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:103:\"supreme-seafood-catering-set-king-carb-lobster-oyster-brown-crab-dungeness-crab-hong-kong_1-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:104:\"supreme-seafood-catering-set-king-carb-lobster-oyster-brown-crab-dungeness-crab-hong-kong_1-1024x665.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:665;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:103:\"supreme-seafood-catering-set-king-carb-lobster-oyster-brown-crab-dungeness-crab-hong-kong_1-604x270.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),(32,21,'_wp_attached_file','2015/05/th.jpg'),(33,21,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:239;s:6:\"height\";i:179;s:4:\"file\";s:14:\"2015/05/th.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"th-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),(34,22,'_wp_attached_file','2015/05/cropped-th.jpg'),(35,22,'_wp_attachment_context','custom-header'),(36,22,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:230;s:4:\"file\";s:22:\"2015/05/cropped-th.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cropped-th-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cropped-th-300x43.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:43;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"cropped-th-1024x147.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"cropped-th-604x230.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),(58,27,'_wp_attachment_context','custom-header'),(57,27,'_wp_attached_file','2015/05/cropped-Lobster-and-Seafood-Mixed-Grill.jpg'),(39,23,'_wp_attached_file','2015/05/cropped-Lobster.jpg'),(40,23,'_wp_attachment_context','custom-header'),(41,23,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:230;s:4:\"file\";s:27:\"2015/05/cropped-Lobster.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-Lobster-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-Lobster-300x43.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:43;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"cropped-Lobster-1024x147.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-Lobster-604x230.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),(42,23,'_wp_attachment_custom_header_last_used_twentythirteen','1430554033'),(43,23,'_wp_attachment_is_custom_header','twentythirteen'),(44,24,'_wp_attached_file','2015/05/cropped-seafood_1001.jpg'),(45,24,'_wp_attachment_context','custom-header'),(46,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:230;s:4:\"file\";s:32:\"2015/05/cropped-seafood_1001.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-seafood_1001-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-seafood_1001-300x43.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:43;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"cropped-seafood_1001-1024x147.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-seafood_1001-604x230.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}'),(47,24,'_wp_attachment_custom_header_last_used_twentythirteen','1430554732'),(48,24,'_wp_attachment_is_custom_header','twentythirteen'),(49,25,'_wp_attached_file','2015/05/cropped-seafood_1002.jpg'),(50,25,'_wp_attachment_context','custom-header'),(51,25,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:230;s:4:\"file\";s:32:\"2015/05/cropped-seafood_1002.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-seafood_1002-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-seafood_1002-300x43.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:43;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"cropped-seafood_1002-1024x147.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-seafood_1002-604x230.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}'),(52,26,'_wp_attached_file','2015/05/cropped-red_lobster_seafood.jpg'),(53,26,'_wp_attachment_context','custom-header'),(54,26,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:230;s:4:\"file\";s:39:\"2015/05/cropped-red_lobster_seafood.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-red_lobster_seafood-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"cropped-red_lobster_seafood-300x43.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:43;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"cropped-red_lobster_seafood-1024x147.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-red_lobster_seafood-604x230.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:2:\"AP\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:337:\"This undated product image provided by Red Lobster shows its new Wood-Grilled Lobster, Shrimp and Salmon dish. Red Lobster on Monday, Nov. 3, 2014 plans to announce another revamped menu that removes dishes including Spicy Tortilla Soup and a Wood-Grilled Pork Chop, while tacking on more dishes featuring lobster. (AP Photo/Red Lobster)\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:19:\"Red Lobster Seafood\";s:11:\"orientation\";i:1;}}'),(55,26,'_wp_attachment_custom_header_last_used_twentythirteen','1430554860'),(56,26,'_wp_attachment_is_custom_header','twentythirteen'),(59,27,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:230;s:4:\"file\";s:51:\"2015/05/cropped-Lobster-and-Seafood-Mixed-Grill.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"cropped-Lobster-and-Seafood-Mixed-Grill-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"cropped-Lobster-and-Seafood-Mixed-Grill-300x43.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:43;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:52:\"cropped-Lobster-and-Seafood-Mixed-Grill-1024x147.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:51:\"cropped-Lobster-and-Seafood-Mixed-Grill-604x230.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";d:16;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS-1Ds Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1138802104;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"90\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}'),(60,27,'_wp_attachment_custom_header_last_used_twentythirteen','1430554946'),(61,27,'_wp_attachment_is_custom_header','twentythirteen'),(62,1,'_thumbnail_id','18');
/*!40000 ALTER TABLE `rr9d_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rr9d_posts`
--

DROP TABLE IF EXISTS `rr9d_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rr9d_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_name` (`post_name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rr9d_posts`
--

LOCK TABLES `rr9d_posts` WRITE;
/*!40000 ALTER TABLE `rr9d_posts` DISABLE KEYS */;
INSERT INTO `rr9d_posts` VALUES (1,1,'2015-05-01 08:53:57','2015-05-01 08:53:57','Enjoy the Simple Taste of Seafood and Sandwiches.\r\n\r\nStay Tune for the Grand Opening !','Welcome to Big Ben\'s Seafood!','','publish','closed','closed','','big-bens-seafood','','','2015-05-02 08:25:01','2015-05-02 08:25:01','',0,'http://bigbensseafood.com/?p=1',0,'post','',1),(2,1,'2015-05-01 08:53:57','2015-05-01 08:53:57','<strong>BIG BEN\'S SEAFOOD LLC.</strong>\r\nWe are located at 4628 Hwy 49 South , Suite A.\r\nHarrisburg , NC. 28075.\r\nPhone is 704-4545400, or 704-4545415.\r\n\r\n<strong>Business Hours:</strong>\r\n<ul>\r\n	<li>Monday to <span class=\"aBn\" tabindex=\"0\" data-term=\"goog_1549113287\"><span class=\"aQJ\">Saturday  <span class=\"aBn\" tabindex=\"0\" data-term=\"goog_1549113286\">11.00 AM to 9.00 PM</span></span></span></li>\r\n	<li>Sundays 2.00 PM  to 8.00 PM</li>\r\n</ul>','About us','','publish','closed','closed','','about','','','2015-05-02 08:26:19','2015-05-02 08:26:19','',0,'http://bigbensseafood.com/?page_id=2',0,'page','',0),(3,1,'2015-05-01 16:06:40','2015-05-01 16:06:40','Enjoy the Simple Taste of Seafood and Sandwiches.\n\nStay Tune for the Grand Opening !','Welcome to Big Ben\'s Seafood!','','inherit','open','open','','1-autosave-v1','','','2015-05-01 16:06:40','2015-05-01 16:06:40','',1,'http://bigbensseafood.com/uncategorized/1-autosave-v1/',0,'revision','',0),(4,1,'2015-05-01 16:06:49','2015-05-01 16:06:49','Enjoy the Simple Taste of Seafood and Sandwiches.\r\n\r\nStay Tune for the Grand Opening !','Welcome to Big Ben\'s Seafood!','','inherit','open','open','','1-revision-v1','','','2015-05-01 16:06:49','2015-05-01 16:06:49','',1,'http://bigbensseafood.com/uncategorized/1-revision-v1/',0,'revision','',0),(5,1,'2015-05-01 16:07:28','2015-05-01 16:07:28','','s','','inherit','open','open','','s','','','2015-05-01 16:07:28','2015-05-01 16:07:28','',1,'http://bigbensseafood.com/wp-content/uploads/2015/05/s.htm',0,'attachment','text/html',0),(6,1,'2015-05-01 16:08:12','2015-05-01 16:08:12','','catering','','inherit','open','open','','catering','','','2015-05-01 16:08:12','2015-05-01 16:08:12','',1,'http://bigbensseafood.com/wp-content/uploads/2015/05/catering.jpg',0,'attachment','image/jpeg',0),(7,1,'2015-05-01 16:14:46','2015-05-01 16:14:46','BIG BEN\'S SEAFOOD LLC.\nAddress is located at 4628 Hwy 49 South , Suite A.\nHarrisburg , NC. 28075.\nPhone is 704-4545400, or 704-4545415.\n\nHours\n<ul>\n	<li>Monday to <span class=\"aBn\" tabindex=\"0\" data-term=\"goog_1549113287\"><span class=\"aQJ\">Saturday  <span class=\"aBn\" tabindex=\"0\" data-term=\"goog_1549113286\">11.00 AM to 9.00 PM</span></span></span></li>\n	<li>Sundays 2.00 PM  to 8.00 PM</li>\n</ul>','About','','inherit','open','open','','2-autosave-v1','','','2015-05-01 16:14:46','2015-05-01 16:14:46','',2,'http://bigbensseafood.com/uncategorized/2-autosave-v1/',0,'revision','',0),(8,1,'2015-05-01 16:15:42','2015-05-01 16:15:42','<strong>BIG BEN\'S SEAFOOD LLC.</strong>\r\nAddress is located at 4628 Hwy 49 South , Suite A.\r\nHarrisburg , NC. 28075.\r\nPhone is 704-4545400, or 704-4545415.\r\n\r\n<strong>Hours of operation</strong>\r\n<ul>\r\n	<li>Monday to <span class=\"aBn\" tabindex=\"0\" data-term=\"goog_1549113287\"><span class=\"aQJ\">Saturday  <span class=\"aBn\" tabindex=\"0\" data-term=\"goog_1549113286\">11.00 AM to 9.00 PM</span></span></span></li>\r\n	<li>Sundays 2.00 PM  to 8.00 PM</li>\r\n</ul>','About','','inherit','open','open','','2-revision-v1','','','2015-05-01 16:15:42','2015-05-01 16:15:42','',2,'http://bigbensseafood.com/uncategorized/2-revision-v1/',0,'revision','',0),(28,1,'2015-05-02 08:26:11','2015-05-02 08:26:11','<strong>BIG BEN\'S SEAFOOD LLC.</strong>\r\nWe are located at 4628 Hwy 49 South , Suite A.\r\nHarrisburg , NC. 28075.\r\nPhone is 704-4545400, or 704-4545415.\r\n\r\n<strong>Business Hours:</strong>\r\n<ul>\r\n	<li>Monday to <span class=\"aBn\" tabindex=\"0\" data-term=\"goog_1549113287\"><span class=\"aQJ\">Saturday  <span class=\"aBn\" tabindex=\"0\" data-term=\"goog_1549113286\">11.00 AM to 9.00 PM</span></span></span></li>\r\n	<li>Sundays 2.00 PM  to 8.00 PM</li>\r\n</ul>','About us','','inherit','open','open','','2-revision-v1','','','2015-05-02 08:26:11','2015-05-02 08:26:11','',2,'http://bigbensseafood.com/uncategorized/2-revision-v1/',0,'revision','',0),(10,1,'2015-05-02 07:50:46','2015-05-02 07:50:46','<strong>Enjoy the simple taste of Sea Food</strong>\r\n<ol>\r\n	<li>Coming soon ... Stay Tuned!</li>\r\n	<li>Eat Perfect Seafood...</li>\r\n</ol>','Menu','','publish','closed','closed','','menu','','','2015-05-02 07:52:27','2015-05-02 07:52:27','',0,'http://bigbensseafood.com/?page_id=10',2,'page','',0),(11,1,'2015-05-02 07:50:46','2015-05-02 07:50:46','<strong>Enjoy the simple taste of Sea Food</strong>\r\n<ol>\r\n	<li>Coming soon ... Stay Tuned!</li>\r\n</ol>','Menu','','inherit','open','open','','10-revision-v1','','','2015-05-02 07:50:46','2015-05-02 07:50:46','',10,'http://bigbensseafood.com/uncategorized/10-revision-v1/',0,'revision','',0),(12,1,'2015-05-02 07:52:27','2015-05-02 07:52:27','<strong>Enjoy the simple taste of Sea Food</strong>\r\n<ol>\r\n	<li>Coming soon ... Stay Tuned!</li>\r\n	<li>Eat Perfect Seafood...</li>\r\n</ol>','Menu','','inherit','open','open','','10-revision-v1','','','2015-05-02 07:52:27','2015-05-02 07:52:27','',10,'http://bigbensseafood.com/uncategorized/10-revision-v1/',0,'revision','',0),(13,1,'2015-05-02 08:03:35','2015-05-02 08:03:35','','Lobster and Seafood Mixed Grill','','inherit','open','open','','lobster-and-seafood-mixed-grill','','','2015-05-02 08:03:35','2015-05-02 08:03:35','',0,'http://bigbensseafood.com/wp-content/uploads/2015/05/Lobster-and-Seafood-Mixed-Grill.jpg',0,'attachment','image/jpeg',0),(14,1,'2015-05-02 08:03:50','2015-05-02 08:03:50','','Lobster','','inherit','open','open','','lobster','','','2015-05-02 08:03:50','2015-05-02 08:03:50','',0,'http://bigbensseafood.com/wp-content/uploads/2015/05/Lobster.jpg',0,'attachment','image/jpeg',0),(15,1,'2015-05-02 08:04:01','2015-05-02 08:04:01','','Red Lobster Seafood','This undated product image provided by Red Lobster shows its new Wood-Grilled Lobster, Shrimp and Salmon dish. Red Lobster on Monday, Nov. 3, 2014 plans to announce another revamped menu that removes dishes including Spicy Tortilla Soup and a Wood-Grilled Pork Chop, while tacking on more dishes featuring lobster. (AP Photo/Red Lobster)','inherit','open','open','','red-lobster-seafood','','','2015-05-02 08:04:01','2015-05-02 08:04:01','',0,'http://bigbensseafood.com/wp-content/uploads/2015/05/red_lobster_seafood.jpg',0,'attachment','image/jpeg',0),(16,1,'2015-05-02 08:04:09','2015-05-02 08:04:09','','royal-view-seafood-restaurant','','inherit','open','open','','royal-view-seafood-restaurant','','','2015-05-02 08:04:09','2015-05-02 08:04:09','',0,'http://bigbensseafood.com/wp-content/uploads/2015/05/royal-view-seafood-restaurant.jpg',0,'attachment','image/jpeg',0),(17,1,'2015-05-02 08:04:12','2015-05-02 08:04:12','','seafood 2','','inherit','open','open','','seafood-2','','','2015-05-02 08:04:12','2015-05-02 08:04:12','',0,'http://bigbensseafood.com/wp-content/uploads/2015/05/seafood-2.jpg',0,'attachment','image/jpeg',0),(18,1,'2015-05-02 08:04:17','2015-05-02 08:04:17','','seafood_1001','','inherit','open','open','','seafood_1001','','','2015-05-02 08:04:17','2015-05-02 08:04:17','',0,'http://bigbensseafood.com/wp-content/uploads/2015/05/seafood_1001.jpg',0,'attachment','image/jpeg',0),(19,1,'2015-05-02 08:04:26','2015-05-02 08:04:26','','seafood_1002','','inherit','open','open','','seafood_1002','','','2015-05-02 08:04:26','2015-05-02 08:04:26','',0,'http://bigbensseafood.com/wp-content/uploads/2015/05/seafood_1002.jpg',0,'attachment','image/jpeg',0),(20,1,'2015-05-02 08:04:36','2015-05-02 08:04:36','','supreme-seafood-catering-set-king-carb-lobster-oyster-brown-crab-dungeness-crab-hong-kong_1','','inherit','open','open','','supreme-seafood-catering-set-king-carb-lobster-oyster-brown-crab-dungeness-crab-hong-kong_1','','','2015-05-02 08:04:36','2015-05-02 08:04:36','',0,'http://bigbensseafood.com/wp-content/uploads/2015/05/supreme-seafood-catering-set-king-carb-lobster-oyster-brown-crab-dungeness-crab-hong-kong_1.jpg',0,'attachment','image/jpeg',0),(21,1,'2015-05-02 08:04:43','2015-05-02 08:04:43','','th','','inherit','open','open','','th','','','2015-05-02 08:04:43','2015-05-02 08:04:43','',0,'http://bigbensseafood.com/wp-content/uploads/2015/05/th.jpg',0,'attachment','image/jpeg',0),(22,1,'2015-05-02 08:05:49','2015-05-02 08:05:49','http://bigbensseafood.com/wp-content/uploads/2015/05/cropped-th.jpg','cropped-th.jpg','','inherit','open','open','','cropped-th-jpg','','','2015-05-02 08:05:49','2015-05-02 08:05:49','',0,'http://bigbensseafood.com/wp-content/uploads/2015/05/cropped-th.jpg',0,'attachment','image/jpeg',0),(23,1,'2015-05-02 08:07:10','2015-05-02 08:07:10','http://bigbensseafood.com/wp-content/uploads/2015/05/cropped-Lobster.jpg','cropped-Lobster.jpg','','inherit','open','open','','cropped-lobster-jpg','','','2015-05-02 08:07:10','2015-05-02 08:07:10','',0,'http://bigbensseafood.com/wp-content/uploads/2015/05/cropped-Lobster.jpg',0,'attachment','image/jpeg',0),(24,1,'2015-05-02 08:08:04','2015-05-02 08:08:04','http://bigbensseafood.com/wp-content/uploads/2015/05/cropped-seafood_1001.jpg','cropped-seafood_1001.jpg','','inherit','open','open','','cropped-seafood_1001-jpg','','','2015-05-02 08:08:04','2015-05-02 08:08:04','',0,'http://bigbensseafood.com/wp-content/uploads/2015/05/cropped-seafood_1001.jpg',0,'attachment','image/jpeg',0),(25,1,'2015-05-02 08:09:13','2015-05-02 08:09:13','http://bigbensseafood.com/wp-content/uploads/2015/05/cropped-seafood_1002.jpg','cropped-seafood_1002.jpg','','inherit','open','open','','cropped-seafood_1002-jpg','','','2015-05-02 08:09:13','2015-05-02 08:09:13','',0,'http://bigbensseafood.com/wp-content/uploads/2015/05/cropped-seafood_1002.jpg',0,'attachment','image/jpeg',0),(26,1,'2015-05-02 08:20:56','2015-05-02 08:20:56','http://bigbensseafood.com/wp-content/uploads/2015/05/cropped-red_lobster_seafood.jpg','cropped-red_lobster_seafood.jpg','','inherit','open','open','','cropped-red_lobster_seafood-jpg','','','2015-05-02 08:20:56','2015-05-02 08:20:56','',0,'http://bigbensseafood.com/wp-content/uploads/2015/05/cropped-red_lobster_seafood.jpg',0,'attachment','image/jpeg',0),(27,1,'2015-05-02 08:22:11','2015-05-02 08:22:11','http://bigbensseafood.com/wp-content/uploads/2015/05/cropped-Lobster-and-Seafood-Mixed-Grill.jpg','cropped-Lobster-and-Seafood-Mixed-Grill.jpg','','inherit','open','open','','cropped-lobster-and-seafood-mixed-grill-jpg','','','2015-05-02 08:22:11','2015-05-02 08:22:11','',0,'http://bigbensseafood.com/wp-content/uploads/2015/05/cropped-Lobster-and-Seafood-Mixed-Grill.jpg',0,'attachment','image/jpeg',0);
/*!40000 ALTER TABLE `rr9d_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rr9d_term_relationships`
--

DROP TABLE IF EXISTS `rr9d_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rr9d_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rr9d_term_relationships`
--

LOCK TABLES `rr9d_term_relationships` WRITE;
/*!40000 ALTER TABLE `rr9d_term_relationships` DISABLE KEYS */;
INSERT INTO `rr9d_term_relationships` VALUES (1,2,0),(2,2,0),(3,2,0),(4,2,0),(5,2,0),(6,2,0),(7,2,0),(1,1,0);
/*!40000 ALTER TABLE `rr9d_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rr9d_term_taxonomy`
--

DROP TABLE IF EXISTS `rr9d_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rr9d_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rr9d_term_taxonomy`
--

LOCK TABLES `rr9d_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `rr9d_term_taxonomy` DISABLE KEYS */;
INSERT INTO `rr9d_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'link_category','',0,7);
/*!40000 ALTER TABLE `rr9d_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rr9d_terms`
--

DROP TABLE IF EXISTS `rr9d_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rr9d_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `name` (`name`(191)),
  KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rr9d_terms`
--

LOCK TABLES `rr9d_terms` WRITE;
/*!40000 ALTER TABLE `rr9d_terms` DISABLE KEYS */;
INSERT INTO `rr9d_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Blogroll','blogroll',0);
/*!40000 ALTER TABLE `rr9d_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rr9d_usermeta`
--

DROP TABLE IF EXISTS `rr9d_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rr9d_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rr9d_usermeta`
--

LOCK TABLES `rr9d_usermeta` WRITE;
/*!40000 ALTER TABLE `rr9d_usermeta` DISABLE KEYS */;
INSERT INTO `rr9d_usermeta` VALUES (1,1,'first_name',''),(2,1,'last_name',''),(3,1,'nickname','admin'),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','light'),(8,1,'use_ssl','0'),(9,1,'aim',''),(10,1,'yim',''),(11,1,'jabber',''),(12,1,'rr9d_capabilities','a:1:{s:13:\"administrator\";s:1:\"1\";}'),(13,1,'rr9d_user_level','10'),(14,1,'session_tokens','a:1:{s:64:\"0b2f1b65f1cc2816902f989b9a6172c5a312d4a67f05021dc5cdfd01390b7125\";a:4:{s:10:\"expiration\";i:1430668824;s:2:\"ip\";s:15:\"107.210.173.134\";s:2:\"ua\";s:72:\"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0\";s:5:\"login\";i:1430496024;}}'),(15,1,'rr9d_user-settings','libraryContent=browse'),(16,1,'rr9d_user-settings-time','1430496508'),(17,1,'closedpostboxes_page','a:0:{}'),(18,1,'metaboxhidden_page','a:7:{i:0;s:13:\"pageparentdiv\";i:1;s:12:\"postimagediv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),(19,1,'dismissed_wp_pointers','wp390_widgets'),(20,1,'rr9d_dashboard_quick_press_last_post_id','9'),(21,1,'show_admin_bar_front','true');
/*!40000 ALTER TABLE `rr9d_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rr9d_users`
--

DROP TABLE IF EXISTS `rr9d_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rr9d_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rr9d_users`
--

LOCK TABLES `rr9d_users` WRITE;
/*!40000 ALTER TABLE `rr9d_users` DISABLE KEYS */;
INSERT INTO `rr9d_users` VALUES (1,'9zwupl','8f16e23bb9d8b9d45e4aa8f3c782199f','admin','afrikatec@p3plcpnl0454.prod.phx3.secureserver.net','','2015-05-01 08:53:57','',0,'admin');
/*!40000 ALTER TABLE `rr9d_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'i755997_rr9d1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-17 13:57:48
