-- MySQL dump 10.13  Distrib 5.6.22, for osx10.8 (x86_64)
--
-- Host: localhost    Database: kunan
-- ------------------------------------------------------
-- Server version	5.6.22

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
-- Table structure for table `exp_accessories`
--

DROP TABLE IF EXISTS `exp_accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_accessories` (
  `accessory_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(75) NOT NULL DEFAULT '',
  `member_groups` varchar(255) NOT NULL DEFAULT 'all',
  `controllers` text,
  `accessory_version` varchar(12) NOT NULL,
  PRIMARY KEY (`accessory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_accessories`
--

LOCK TABLES `exp_accessories` WRITE;
/*!40000 ALTER TABLE `exp_accessories` DISABLE KEYS */;
INSERT INTO `exp_accessories` VALUES (1,'Expressionengine_info_acc','1|5','addons|addons_accessories|addons_extensions|addons_fieldtypes|addons_modules|addons_plugins|admin_content|admin_system|content|content_edit|content_files|content_files_modal|content_publish|design|homepage|members|myaccount|tools|tools_communicate|tools_data|tools_logs|tools_utilities','1.0'),(2,'Nsm_morphine_theme_acc','1|5','addons|addons_accessories|addons_extensions|addons_fieldtypes|addons_modules|addons_plugins|admin_content|admin_system|content|content_edit|content_files|content_files_modal|content_publish|design|homepage|members|myaccount|tools|tools_communicate|tools_data|tools_logs|tools_utilities','2.0.4'),(3,'Freeform_acc','1|5','addons|addons_accessories|addons_extensions|addons_fieldtypes|addons_modules|addons_plugins|admin_content|admin_system|content|content_edit|content_files|content_files_modal|content_publish|design|homepage|members|myaccount|tools|tools_communicate|tools_data|tools_logs|tools_utilities','4.2.2');
/*!40000 ALTER TABLE `exp_accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_actions`
--

DROP TABLE IF EXISTS `exp_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_actions` (
  `action_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `csrf_exempt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_actions`
--

LOCK TABLES `exp_actions` WRITE;
/*!40000 ALTER TABLE `exp_actions` DISABLE KEYS */;
INSERT INTO `exp_actions` VALUES (1,'Comment','insert_new_comment',0),(2,'Comment_mcp','delete_comment_notification',0),(3,'Comment','comment_subscribe',0),(4,'Comment','edit_comment',0),(5,'Email','send_email',0),(6,'Search','do_search',1),(7,'Channel','submit_entry',0),(8,'Channel','filemanager_endpoint',0),(9,'Channel','smiley_pop',0),(10,'Channel','combo_loader',0),(11,'Member','registration_form',0),(12,'Member','register_member',0),(13,'Member','activate_member',0),(14,'Member','member_login',0),(15,'Member','member_logout',0),(16,'Member','send_reset_token',0),(17,'Member','process_reset_password',0),(18,'Member','send_member_email',0),(19,'Member','update_un_pw',0),(20,'Member','member_search',0),(21,'Member','member_delete',0),(22,'Rte','get_js',0),(23,'Freeform','save_form',0),(24,'Channel_images','channel_images_router',1),(25,'Channel_images','locked_image_url',0),(26,'Channel_images','simple_image_url',0),(27,'Fbc','account_sync',0),(28,'Fbc','activate_member',0),(29,'Fbc','email_sync',0),(30,'Fbc','facebook_post_authorize_callback',0),(31,'Fbc','facebook_post_remove_callback',0),(32,'Fbc','facebook_login',0),(33,'Fbc','facebook_logout',0),(34,'Fbc','register',0),(35,'User','group_edit',0),(36,'User','edit_profile',0),(37,'User','reg',0),(38,'User','reassign_jump',0),(39,'User','retrieve_password',0),(40,'User','do_logout',0),(41,'User','do_search',0),(42,'User','delete_account',0),(43,'User','activate_member',0),(44,'User','retrieve_username',0),(45,'User','create_key',0),(46,'User','process_reset_password',0);
/*!40000 ALTER TABLE `exp_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_captcha`
--

DROP TABLE IF EXISTS `exp_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_captcha`
--

LOCK TABLES `exp_captcha` WRITE;
/*!40000 ALTER TABLE `exp_captcha` DISABLE KEYS */;
INSERT INTO `exp_captcha` VALUES (39,1435175307,'127.0.0.1','numbers27'),(38,1435175035,'127.0.0.1','dead69'),(37,1435173386,'127.0.0.1','ways38'),(36,1435107877,'127.0.0.1','some36'),(35,1435104007,'127.0.0.1','average91'),(34,1435103989,'127.0.0.1','moment28'),(31,1435103923,'127.0.0.1','line55'),(32,1435103940,'127.0.0.1','middle75'),(33,1435103981,'127.0.0.1','terms34');
/*!40000 ALTER TABLE `exp_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_categories`
--

DROP TABLE IF EXISTS `exp_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_categories` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `parent_id` int(4) unsigned NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_url_title` varchar(75) NOT NULL,
  `cat_description` text,
  `cat_image` varchar(120) DEFAULT NULL,
  `cat_order` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `group_id` (`group_id`),
  KEY `cat_name` (`cat_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_categories`
--

LOCK TABLES `exp_categories` WRITE;
/*!40000 ALTER TABLE `exp_categories` DISABLE KEYS */;
INSERT INTO `exp_categories` VALUES (18,1,4,0,'Medio Ambiente','medio_ambiente','','',3),(17,1,4,0,'Educación','educacion','','',2),(16,1,4,0,'Conservación','conservacion','','',1),(15,1,3,0,'Videos','videos','','',4),(14,1,3,0,'Estudios','estudios','','',1),(13,1,3,0,'Eventos','eventos','','',2),(12,1,3,0,'Noticias','noticias','','',3),(19,1,4,0,'Salud','salud','','',4),(20,1,5,0,'Lima','lima','','',4),(21,1,5,0,'Cuzco','cuzco','','',2),(22,1,5,0,'Ica','ica','','',3),(23,1,5,0,'Trujillo','trujillo','','',6),(24,1,5,0,'Chiclayo','chiclayo','','',1),(25,1,6,0,'Integrante','integrante','','',1),(26,1,6,0,'Participante','participante','','',2),(27,1,5,0,'Loreto','loreto','','',5);
/*!40000 ALTER TABLE `exp_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_field_data`
--

DROP TABLE IF EXISTS `exp_category_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_field_data` (
  `cat_id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_field_data`
--

LOCK TABLES `exp_category_field_data` WRITE;
/*!40000 ALTER TABLE `exp_category_field_data` DISABLE KEYS */;
INSERT INTO `exp_category_field_data` VALUES (22,1,5),(21,1,5),(20,1,5),(19,1,4),(18,1,4),(17,1,4),(16,1,4),(15,1,3),(14,1,3),(13,1,3),(12,1,3),(23,1,5),(24,1,5),(25,1,6),(26,1,6),(27,1,5);
/*!40000 ALTER TABLE `exp_category_field_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_fields`
--

DROP TABLE IF EXISTS `exp_category_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `field_label` varchar(50) NOT NULL DEFAULT '',
  `field_type` varchar(12) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_maxl` smallint(3) NOT NULL DEFAULT '128',
  `field_ta_rows` tinyint(2) NOT NULL DEFAULT '8',
  `field_default_fmt` varchar(40) NOT NULL DEFAULT 'none',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`field_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_fields`
--

LOCK TABLES `exp_category_fields` WRITE;
/*!40000 ALTER TABLE `exp_category_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_category_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_groups`
--

DROP TABLE IF EXISTS `exp_category_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `sort_order` char(1) NOT NULL DEFAULT 'a',
  `exclude_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `can_edit_categories` text,
  `can_delete_categories` text,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_groups`
--

LOCK TABLES `exp_category_groups` WRITE;
/*!40000 ALTER TABLE `exp_category_groups` DISABLE KEYS */;
INSERT INTO `exp_category_groups` VALUES (4,1,'Proyectos','a',0,'all','',''),(3,1,'La Bitacora','a',0,'all','',''),(5,1,'Ubicacion','a',0,'all','',''),(6,1,'Comunidad','a',0,'all','','');
/*!40000 ALTER TABLE `exp_category_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_posts`
--

DROP TABLE IF EXISTS `exp_category_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_posts` (
  `entry_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_posts`
--

LOCK TABLES `exp_category_posts` WRITE;
/*!40000 ALTER TABLE `exp_category_posts` DISABLE KEYS */;
INSERT INTO `exp_category_posts` VALUES (14,13),(16,13),(17,13),(18,17),(18,20),(18,25),(19,17),(19,20),(19,25),(21,18),(21,25),(21,27);
/*!40000 ALTER TABLE `exp_category_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_data`
--

DROP TABLE IF EXISTS `exp_channel_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_data` (
  `entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `field_id_3` text,
  `field_ft_3` tinytext,
  `field_id_4` text,
  `field_ft_4` tinytext,
  `field_id_6` text,
  `field_ft_6` tinytext,
  `field_id_8` text,
  `field_ft_8` tinytext,
  `field_id_9` varchar(8) DEFAULT NULL,
  `field_ft_9` tinytext,
  `field_id_10` text,
  `field_ft_10` tinytext,
  `field_id_11` text,
  `field_ft_11` tinytext,
  `field_id_12` text,
  `field_ft_12` tinytext,
  `field_id_13` text,
  `field_ft_13` tinytext,
  `field_id_14` text,
  `field_ft_14` tinytext,
  `field_id_15` text,
  `field_ft_15` tinytext,
  `field_id_16` text,
  `field_ft_16` tinytext,
  `field_id_17` text,
  `field_ft_17` tinytext,
  `field_id_18` text,
  `field_ft_18` tinytext,
  `field_id_19` text,
  `field_ft_19` tinytext,
  `field_id_20` int(10) DEFAULT '0',
  `field_dt_20` varchar(50) DEFAULT NULL,
  `field_ft_20` tinytext,
  `field_id_21` text,
  `field_ft_21` tinytext,
  `field_id_22` text,
  `field_ft_22` tinytext,
  `field_id_23` text,
  `field_ft_23` tinytext,
  `field_id_24` text,
  `field_ft_24` tinytext,
  `field_id_25` text,
  `field_ft_25` tinytext,
  `field_id_26` text,
  `field_ft_26` tinytext,
  `field_id_27` text,
  `field_ft_27` tinytext,
  `field_id_28` text,
  `field_ft_28` tinytext,
  `field_id_29` text,
  `field_ft_29` tinytext,
  `field_id_30` text,
  `field_ft_30` tinytext,
  `field_id_31` text,
  `field_ft_31` tinytext,
  `field_id_32` text,
  `field_ft_32` tinytext,
  `field_id_33` text,
  `field_ft_33` tinytext,
  `field_id_34` text,
  `field_ft_34` tinytext,
  `field_id_35` text,
  `field_ft_35` tinytext,
  `field_id_36` text,
  `field_ft_36` tinytext,
  `field_id_37` text,
  `field_ft_37` tinytext,
  `field_id_38` text,
  `field_ft_38` tinytext,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_data`
--

LOCK TABLES `exp_channel_data` WRITE;
/*!40000 ALTER TABLE `exp_channel_data` DISABLE KEYS */;
INSERT INTO `exp_channel_data` VALUES (16,1,3,'Compartimos un poco de la historia, la experiencia y los sueños que han hecho de la escuela de D1 de Vania Masias un emprendimiento social de éxito.','none','Compartimos un poco de la historia, la experiencia y los sueños que han hecho de la escuela de D1 de Vania Masias un emprendimiento social de éxito.','xhtml','','xhtml',NULL,NULL,'','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'FtZiHNWhcjM','none','','none','','none','','none','','none','','xhtml','','xhtml','','none'),(17,1,3,'Intercambio de experiencias, conocimientos e información: L.O.O.P., Laboratoria, Pachayoung, Voluntades, Yaqua y Ankay','none','Gracias a cada uno de los miembros de la #ComunidadKunan por participar de este intercambio de experiencias, conocimientos e información: L.O.O.P., Laboratoria, Pachayoung, Voluntades, Yaqua y Ankay','xhtml','','xhtml',NULL,NULL,'','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P0kmlO_kBbw','none','','none','','none','','none','','none','','xhtml','','xhtml','','none'),(18,1,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Laboratoria ayuda a la inserción laboral de mujeres entre 18 y 25 años en situación de exclusión formándolas para ser desarrolladoras web front-end y conectándolas posteriormente con empresas que buscan sus perfiles, impulsándolas en el comienzo de su carrera laboral.','none','<table>\n <tbody>\n    <tr><td> Laboratoria ayuda a la inserción laboral de mujeres entre 18 y 25 años en situación de exclusión formándolas para ser desarrolladoras web front-end y conectándolas posteriormente con empresas que buscan sus perfiles, impulsándolas en el comienzo de su carrera laboral. </td></tr>\n</tbody>\n </table>','xhtml','Educación','none','Lima','none','mariana@laboratoria.la','none','ChannelImages','xhtml','ChannelImages','xhtml','Laboratoria','none',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','https://www.facebook.com/laboratoria.la','none','https://twitter.com/LaboratoriaLA','none','','xhtml','','xhtml','http://laboratoria.la','none'),(2,1,4,NULL,NULL,NULL,NULL,NULL,NULL,'Laboratoria','none',NULL,NULL,'http://laboratoria.la','none','{filedir_2}herman.png','none','','none','','xhtml','','none','','none','','none','','xhtml','','xhtml','','none',0,'','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none'),(4,1,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1435206720,'','none','￼24 de Junio al 26 de agosto','none','Conoce las bases','none','http://kunan.dev/app/assets/documentos/bases_kunan_premio_2015.pdf','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none'),(5,1,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1435356180,'','none','En esta reunion presentaremos a los nuevos participantes del premio Kunan.','none','Confirma tu asistencia','none','http://google.com','none','','none','','none','','xhtml','','xhtml','','xhtml','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none'),(6,1,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Chef','none','It was a humorously perilous business for both of us. For, before we proceed further, it must be said that the monkey-rope was fast at both ends.','none','ChannelImages','xhtml','ChannelImages','xhtml','At sit reque dolore abhorreant. Quo eu probo munere libris. Duo ad exerci populo, vim te ullum voluptatum. Ea illud ceteros eloquentiam vim, meis velit aeterno sed at, ex vix mucius salutatus euripidis.\n\n  Id vix hinc prima accusata, vim simul rationibus id, nominavi signiferumque ea est. Autem verterem salutatus te usu. Tation copiosae vel no, ut sed amet omnium aeterno, cu tibique indoctum his. Velit solet consulatu per ea, ad usu solum qualisque. Liber fierent gubergren qui cu.\n\n  Epicuri placerat constituto vel ei. Brute nonumy sed in, mea id eros ubique. Sed augue tritani adipiscing ea. Ut eos probo ipsum quando, ut cum dissentiet definitiones. Errem bonorum lucilius mei ad, an falli incorrupte usu.\n\n  Eos ad tation utamur. Per id pericula maluisset, mea ne nibh mnesarchum. Adhuc minim iudico id eos, ad cum labore nostrud. Pri menandri delicatissimi at, tollit expetendis id ius. Mel ut definiebas quaerendum. Choro convenire duo ad, ius et quod illud laboramus, eu nec singulis constituam. Nam mutat sapientem consulatu cu, cum id tamquam vulputate.\n\n  In sit natum suscipiantur. Ne mei pericula incorrupte. No dicunt lucilius suscipiantur sed, ei eam zril evertitur. Ei usu doming facete, id cum congue voluptua pertinacia. Sea ad denique quaerendum mediocritatem, his sonet viderer maiorum ex. Quo in virtute dolores, vis at ceteros propriae, et pro sumo falli iracundia.\n\n  \n\n  Officiis scribentur eum in, ad sea adhuc homero. In tota graecis conceptam eos, in mel adhuc minim. Mel eu oratio consul electram. Vel cu nonumy civibus. Ex eam dico debet, soluta invidunt incorrupte est et. Libris eleifend ne mel, pri te delectus pertinax argumentum.','xhtml','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none'),(7,1,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Global Shaper','none','Est an noluisse petentium temporibus, tation recusabo consequuntur ei eam. Id pro summo feugait pertinax.','none','ChannelImages','xhtml','ChannelImages','xhtml','Suas noster tibique id has, no oratio sapientem dissentiunt eum, consul altera appetere est cu. Et usu duis omnes efficiantur. Ad mel harum causae, mei ea omnes cetero. Doctus omnesque at mel, ea eos facilisi dissentias, ea exerci discere tractatos vis.\n\n  Est an noluisse petentium temporibus, tation recusabo consequuntur ei eam. Id pro summo feugait pertinax. Autem tollit delicatissimi cu his. Sed an facete salutatus.\n\n  At sit reque dolore abhorreant. Quo eu probo munere libris. Duo ad exerci populo, vim te ullum voluptatum. Ea illud ceteros eloquentiam vim, meis velit aeterno sed at, ex vix mucius salutatus euripidis.\n\n  Id vix hinc prima accusata, vim simul rationibus id, nominavi signiferumque ea est. Autem verterem salutatus te usu. Tation copiosae vel no, ut sed amet omnium aeterno, cu tibique indoctum his. Velit solet consulatu per ea, ad usu solum qualisque. Liber fierent gubergren qui cu.\n\n  Epicuri placerat constituto vel ei. Brute nonumy sed in, mea id eros ubique. Sed augue tritani adipiscing ea. Ut eos probo ipsum quando, ut cum dissentiet definitiones. Errem bonorum lucilius mei ad, an falli incorrupte usu.\n\n  Eos ad tation utamur. Per id pericula maluisset, mea ne nibh mnesarchum. Adhuc minim iudico id eos, ad cum labore nostrud. Pri menandri delicatissimi at, tollit expetendis id ius. Mel ut definiebas quaerendum. Choro convenire duo ad, ius et quod illud laboramus, eu nec singulis constituam. Nam mutat sapientem consulatu cu, cum id tamquam vulputate.\n\n  In sit natum suscipiantur. Ne mei pericula incorrupte. No dicunt lucilius suscipiantur sed, ei eam zril evertitur. Ei usu doming facete, id cum congue voluptua pertinacia. Sea ad denique quaerendum mediocritatem, his sonet viderer maiorum ex. Quo in virtute dolores, vis at ceteros propriae, et pro sumo falli iracundia.\n\n  Officiis scribentur eum in, ad sea adhuc homero. In tota graecis conceptam eos, in mel adhuc minim. Mel eu oratio consul electram. Vel cu nonumy civibus. Ex eam dico debet, soluta invidunt incorrupte est et. Libris eleifend ne mel, pri te delectus pertinax argumentum.\n\n  Mel legere nostro quodsi id. Sea te quem tollit audire, nam ea vidit quidam, erat feugait facilisis vim eu. An mea ancillae quaestio elaboraret, cu sit congue equidem disputando. Mel ei melius dolores iudicabit, an graeci alterum accommodare nam. Ut inani patrioque omittantur eum.\n\n  Et eos minimum deserunt sensibus, vis verterem assentior et, no eros platonem mea. Eu sit fastidii deserunt, usu bonorum constituto ad. Cum recteque gloriatur expetendis an, aliquid fabulas reformidans vim id. Saperet pericula pri ne, eum nobis primis intellegebat te. Ex putant posidonium duo.\n\n  \n\n  ','xhtml','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none'),(8,1,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Bailarina','none','Suas noster tibique id has, no oratio sapientem dissentiunt eum, consul altera appetere est cu.','none','ChannelImages','xhtml','ChannelImages','xhtml','Suas noster tibique id has, no oratio sapientem dissentiunt eum, consul altera appetere est cu. Et usu duis omnes efficiantur. Ad mel harum causae, mei ea omnes cetero. Doctus omnesque at mel, ea eos facilisi dissentias, ea exerci discere tractatos vis.\n\n Est an noluisse petentium temporibus, tation recusabo consequuntur ei eam. Id pro summo feugait pertinax. Autem tollit delicatissimi cu his. Sed an facete salutatus.\n\n At sit reque dolore abhorreant. Quo eu probo munere libris. Duo ad exerci populo, vim te ullum voluptatum. Ea illud ceteros eloquentiam vim, meis velit aeterno sed at, ex vix mucius salutatus euripidis.\n\n Id vix hinc prima accusata, vim simul rationibus id, nominavi signiferumque ea est. Autem verterem salutatus te usu. Tation copiosae vel no, ut sed amet omnium aeterno, cu tibique indoctum his. Velit solet consulatu per ea, ad usu solum qualisque. Liber fierent gubergren qui cu.\n\n Epicuri placerat constituto vel ei. Brute nonumy sed in, mea id eros ubique. Sed augue tritani adipiscing ea. Ut eos probo ipsum quando, ut cum dissentiet definitiones. Errem bonorum lucilius mei ad, an falli incorrupte usu.\n\n Eos ad tation utamur. Per id pericula maluisset, mea ne nibh mnesarchum. Adhuc minim iudico id eos, ad cum labore nostrud. Pri menandri delicatissimi at, tollit expetendis id ius. Mel ut definiebas quaerendum. Choro convenire duo ad, ius et quod illud laboramus, eu nec singulis constituam. Nam mutat sapientem consulatu cu, cum id tamquam vulputate.\n\n In sit natum suscipiantur. Ne mei pericula incorrupte. No dicunt lucilius suscipiantur sed, ei eam zril evertitur. Ei usu doming facete, id cum congue voluptua pertinacia. Sea ad denique quaerendum mediocritatem, his sonet viderer maiorum ex. Quo in virtute dolores, vis at ceteros propriae, et pro sumo falli iracundia.\n\n Officiis scribentur eum in, ad sea adhuc homero. In tota graecis conceptam eos, in mel adhuc minim. Mel eu oratio consul electram. Vel cu nonumy civibus. Ex eam dico debet, soluta invidunt incorrupte est et. Libris eleifend ne mel, pri te delectus pertinax argumentum.\n\n Mel legere nostro quodsi id. Sea te quem tollit audire, nam ea vidit quidam, erat feugait facilisis vim eu. An mea ancillae quaestio elaboraret, cu sit congue equidem disputando. Mel ei melius dolores iudicabit, an graeci alterum accommodare nam. Ut inani patrioque omittantur eum.\n\n Et eos minimum deserunt sensibus, vis verterem assentior et, no eros platonem mea. Eu sit fastidii deserunt, usu bonorum constituto ad. Cum recteque gloriatur expetendis an, aliquid fabulas reformidans vim id. Saperet pericula pri ne, eum nobis primis intellegebat te. Ex putant posidonium duo.\n\n  \n\n &nbsp; &nbsp; &nbsp;&nbsp;','xhtml','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none'),(9,1,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Director Fundación Telefónica','none','Suas noster tibique id has, no oratio sapientem dissentiunt eum, consul altera appetere est cu.','none','ChannelImages','xhtml','ChannelImages','xhtml','Suas noster tibique id has, no oratio sapientem dissentiunt eum, consul altera appetere est cu. Et usu duis omnes efficiantur. Ad mel harum causae, mei ea omnes cetero. Doctus omnesque at mel, ea eos facilisi dissentias, ea exerci discere tractatos vis.\n\n Est an noluisse petentium temporibus, tation recusabo consequuntur ei eam. Id pro summo feugait pertinax. Autem tollit delicatissimi cu his. Sed an facete salutatus.\n\n At sit reque dolore abhorreant. Quo eu probo munere libris. Duo ad exerci populo, vim te ullum voluptatum. Ea illud ceteros eloquentiam vim, meis velit aeterno sed at, ex vix mucius salutatus euripidis.\n\n Id vix hinc prima accusata, vim simul rationibus id, nominavi signiferumque ea est. Autem verterem salutatus te usu. Tation copiosae vel no, ut sed amet omnium aeterno, cu tibique indoctum his. Velit solet consulatu per ea, ad usu solum qualisque. Liber fierent gubergren qui cu.\n\n Epicuri placerat constituto vel ei. Brute nonumy sed in, mea id eros ubique. Sed augue tritani adipiscing ea. Ut eos probo ipsum quando, ut cum dissentiet definitiones. Errem bonorum lucilius mei ad, an falli incorrupte usu.\n\n Eos ad tation utamur. Per id pericula maluisset, mea ne nibh mnesarchum. Adhuc minim iudico id eos, ad cum labore nostrud. Pri menandri delicatissimi at, tollit expetendis id ius. Mel ut definiebas quaerendum. Choro convenire duo ad, ius et quod illud laboramus, eu nec singulis constituam. Nam mutat sapientem consulatu cu, cum id tamquam vulputate.\n\n In sit natum suscipiantur. Ne mei pericula incorrupte. No dicunt lucilius suscipiantur sed, ei eam zril evertitur. Ei usu doming facete, id cum congue voluptua pertinacia. Sea ad denique quaerendum mediocritatem, his sonet viderer maiorum ex. Quo in virtute dolores, vis at ceteros propriae, et pro sumo falli iracundia.\n\n Officiis scribentur eum in, ad sea adhuc homero. In tota graecis conceptam eos, in mel adhuc minim. Mel eu oratio consul electram. Vel cu nonumy civibus. Ex eam dico debet, soluta invidunt incorrupte est et. Libris eleifend ne mel, pri te delectus pertinax argumentum.\n\n Mel legere nostro quodsi id. Sea te quem tollit audire, nam ea vidit quidam, erat feugait facilisis vim eu. An mea ancillae quaestio elaboraret, cu sit congue equidem disputando. Mel ei melius dolores iudicabit, an graeci alterum accommodare nam. Ut inani patrioque omittantur eum.\n\n Et eos minimum deserunt sensibus, vis verterem assentior et, no eros platonem mea. Eu sit fastidii deserunt, usu bonorum constituto ad. Cum recteque gloriatur expetendis an, aliquid fabulas reformidans vim id. Saperet pericula pri ne, eum nobis primis intellegebat te. Ex putant posidonium duo.\n\n  \n\n &nbsp; &nbsp; &nbsp;&nbsp;','xhtml','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none'),(10,1,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'iniciativas de impacto identificadas','none','170','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none'),(11,1,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'regiones del país participando','none','24','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none'),(12,1,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'votos registrados en 8 días','none','38K','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none'),(13,1,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mprendimientos forman la comunidad','none','+60','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none'),(15,1,4,NULL,NULL,NULL,NULL,NULL,NULL,'Kunan','none',NULL,NULL,'http://kunan.com.pe','none','{filedir_2}Kunan_Bitacora2.png','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','none','','xhtml','','xhtml','','none'),(14,1,3,'Una noche para reunir talento, todos los miembros de la Comunidad Kunan compartieron experiencias y desafíos.','none','Una noche para reunir talento, todos los miembros de la Comunidad Kunan compartieron experiencias y desafíos.','xhtml','','xhtml',NULL,NULL,'','xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ex8keiGV6L8','none','','none','','none','','none','','none','','xhtml','','xhtml','','none'),(19,1,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Crea+ busca fomentar la Responsabilidad Social Individual en los jóvenes a través de un voluntariado profesional. Asimismo, busca descubrir y potenciar talentos en los niños, ampliando sus horizontes de referencia y llevándolos a confiar en sí mismos y en el logro de sus sueños. Ofrecen un programa integral educativo con actividades como Divertimate, Refrigerios y Talleres Multidisciplinares.','none','<table>\n <tbody>\n    <tr><td> Crea+ busca fomentar la Responsabilidad Social Individual en los jóvenes a través de un voluntariado profesional. Asimismo, busca descubrir y potenciar talentos en los niños, ampliando sus horizontes de referencia y llevándolos a confiar en sí mismos y en el logro de sus sueños. Ofrecen un programa integral educativo con actividades como Divertimate, Refrigerios y Talleres Multidisciplinares. </td></tr>\n</tbody>\n </table>','xhtml','Educación','none','Lima y Piura','none','lstarke@creamas.org','none','ChannelImages','xhtml','ChannelImages','xhtml','Crea+','none',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','https://www.facebook.com/Creamasperu','none','https://twitter.com/Creamas','none','','xhtml','','xhtml','','none'),(20,1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<ol>\n    <li><i>Emprendimiento social: Para Kunan, un emprendimiento social es una iniciativa que presenta un modelo innovador, escalable y sostenible que contribuye con la solución de desafíos relevantes y genera oportunidades para el país en ámbitos como: educación, salud, medio ambiente, inclusión social, género, institucionalidad, turismo, cultura, arte, gastronomía, deporte, transporte, entre otros. Puede adoptar la figura jurídica que mejor le sirva para alcanzar su objetivo (organización con o sin fines de lucro), pero tiene como objetivo principal la construcción de una sociedad más inclusiva y con oportunidades para todos.</i>\n</li>\n    <li><i>Componente de innovación: La innovación supone la incorporación o transformación de un componente en el modelo de operación y gestión del emprendimiento, en sus estrategias, soluciones o métodos que modifican su modo de operar y generan cambios sistémicos que les permiten cumplir sus objetivos.&nbsp;</i>\n</li>\n    <li><i>Etapa de desarrollo temprana: Aquellos emprendimientos que han obtenido algún financiamiento mayor a </i><i>xxxxxx</i><i>. Entendemos “etapa de desarrollo temprana” como la fase en la que se encuentran aquellos emprendimientos que han identificado un problema claro, tienen planteada una solución, han desarrollado un modelo para implementarla, han conformado un equipo de trabajo y obtenido resultados de sus primeras intervenciones con su público objetivo. Asimismo, son aquellos emprendimientos que mejor pueden aprovechar el apoyo integral que ofrece Kunan para escalar y multiplicar el impacto de sus emprendimientos.</i>\n</li>\n    <li><i>Público Objetivo Directo e Indirecto: Directo: Grupo de personas que enfrentan la problemática por la cual se creó su iniciativa. Indirecto: Grupo de personas que no enfrentan la problemática por la cual se creó su iniciativa, sin embargo son parte importante para generar el impacto para el público objetivo directo.</i>\n</li>\n    <li><i>Propósito: Motivación por la cual creó su iniciativa y qué busca conseguir con ella.</i>\n</li>\n    <li><i>Desafío: Circunstancias que van generando obstáculos en la gestión de su iniciativa.</i>\n</li>\n    <li><i>Indicadores de Impacto Social: Unidad de medida que da cuenta del impacto social que genera su iniciativa.</i>\n</li>\n    <li><i>Fondos Administrados: Monto neto total de dinero utilizado para la implementación de su iniciativa en el 2014.</i>\n</li>\n</ol>\n\n  ','xhtml','','xhtml','','none'),(21,1,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CREA tiene la misión de conservar las especies amazónicas, especialmente los manatíes, y sus ecosistemas a través del rescate, rehabilitación y liberación de especies amenazadas y la aplicación permanente de programas de educación ambiental e investigación.','none','CREA tiene la misión de conservar las especies amazónicas, especialmente los manatíes, y sus ecosistemas a través del rescate, rehabilitación y liberación de especies amenazadas y la aplicación permanente de programas de educación ambiental e investigación.\n\n  El proyecto se financia mediante actividades de turismo vivencial orientado de forma particular a niños y niñas.','xhtml','Conservación','none','Loreto','none','javi_vv@hotmail.com','none','ChannelImages','xhtml','ChannelImages','xhtml','Centro de Rescate Amazónico','none',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.facebook.com/CentroRescateAmazonicoCREA','none','','none',NULL,NULL,NULL,NULL,'http://www.centroderescateamazonico.com/','none'),(22,1,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1440736440,'','none','27 de agosto al  2 de setiembre','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,1,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1441341300,'','none','3 de setiembre al 16 de setiembre','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,1,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1442550960,'','none','17 de setiembre al 30 de setiembre','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,1,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1445574960,'','none','22 de octubre','none','','none','','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `exp_channel_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_entries_autosave`
--

DROP TABLE IF EXISTS `exp_channel_entries_autosave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_entries_autosave` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `original_entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  `entry_data` text,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_entries_autosave`
--

LOCK TABLES `exp_channel_entries_autosave` WRITE;
/*!40000 ALTER TABLE `exp_channel_entries_autosave` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_channel_entries_autosave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_fields`
--

DROP TABLE IF EXISTS `exp_channel_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_label` varchar(50) NOT NULL,
  `field_instructions` text,
  `field_type` varchar(50) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_pre_populate` char(1) NOT NULL DEFAULT 'n',
  `field_pre_channel_id` int(6) unsigned DEFAULT NULL,
  `field_pre_field_id` int(6) unsigned DEFAULT NULL,
  `field_ta_rows` tinyint(2) DEFAULT '8',
  `field_maxl` smallint(3) DEFAULT NULL,
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_search` char(1) NOT NULL DEFAULT 'n',
  `field_is_hidden` char(1) NOT NULL DEFAULT 'n',
  `field_fmt` varchar(40) NOT NULL DEFAULT 'xhtml',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_order` int(3) unsigned NOT NULL,
  `field_content_type` varchar(20) NOT NULL DEFAULT 'any',
  `field_settings` text,
  PRIMARY KEY (`field_id`),
  KEY `group_id` (`group_id`),
  KEY `field_type` (`field_type`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_fields`
--

LOCK TABLES `exp_channel_fields` WRITE;
/*!40000 ALTER TABLE `exp_channel_fields` DISABLE KEYS */;
INSERT INTO `exp_channel_fields` VALUES (9,1,2,'bitacora-autor','Autor','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',4,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI0Ijt9czo3OiJleHBpcmVkIjtpOjA7czo2OiJmdXR1cmUiO2k6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MTp7aTowO3M6NDoib3BlbiI7fXM6NToibGltaXQiO3M6MzoiMTAwIjtzOjExOiJvcmRlcl9maWVsZCI7czo1OiJ0aXRsZSI7czo5OiJvcmRlcl9kaXIiO3M6MzoiYXNjIjtzOjE0OiJhbGxvd19tdWx0aXBsZSI7aTowO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),(8,1,3,'autor-organizacion','Organización','','text','','0',0,0,6,128,'n','ltr','n','n','none','y',1,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(3,1,2,'bitacora-descripcion','Descripción','','textarea','','0',0,0,6,128,'n','ltr','y','n','none','n',1,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToieSI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(4,1,2,'bitacora-contenido','Contenido','','rte','','0',0,0,20,128,'n','ltr','n','n','xhtml','n',2,'any','YTo4OntzOjI0OiJydGVfZmllbGRfdGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjtzOjExOiJydGVfdGFfcm93cyI7czoyOiIyMCI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),(10,1,3,'autor-link-organizacion','Link Organización','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(11,1,3,'autor-imagen','Imágen','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjIiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(14,1,4,'proyecto-sector','Sector','','select','Conservación\nEducación\nMedio Ambiente\nSalud\n\n','n',0,0,6,128,'n','ltr','n','n','none','y',3,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(15,1,4,'proyecto-ciudad','Ciudad','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',4,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(16,1,4,'proyecto-correoelectrnico','Correo Electrónico','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',5,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(17,1,4,'proyecto-imagen-bg','Imágen Background','','channel_images','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',6,'any','YTo3OntzOjE0OiJjaGFubmVsX2ltYWdlcyI7YTozMzp7czo5OiJ2aWV3X21vZGUiO3M6NToidGlsZXMiO3M6MTM6ImFjdGlvbl9ncm91cHMiO2E6Mjp7aToxO2E6NTp7czoxMDoiZ3JvdXBfbmFtZSI7czo1OiJsYXJnZSI7czo3OiJ3eXNpd3lnIjtzOjM6InllcyI7czo3OiJhY3Rpb25zIjthOjE6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjQ6IjE0NDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjUwNCI7czo3OiJxdWFsaXR5IjtzOjI6IjkwIjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fX1zOjEwOiJmaW5hbF9zaXplIjthOjU6e3M6NToid2lkdGgiO3M6NDoiMTQ0MCI7czo2OiJoZWlnaHQiO3M6MzoiNTA0IjtzOjc6InF1YWxpdHkiO3M6MjoiOTAiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9czo4OiJlZGl0YWJsZSI7czoyOiJubyI7fWk6MjthOjU6e3M6MTA6Imdyb3VwX25hbWUiO3M6NToic21hbGwiO3M6NzoiYWN0aW9ucyI7YToxOntzOjE1OiJyZXNpemVfYWRhcHRpdmUiO2E6NTp7czo1OiJ3aWR0aCI7czozOiIzNDkiO3M6NjoiaGVpZ2h0IjtzOjM6IjIzMiI7czo3OiJxdWFsaXR5IjtzOjM6IjEwMCI7czo4OiJ1cHNpemluZyI7czoyOiJubyI7czo0OiJzdGVwIjtzOjE6IjEiO319czoxMDoiZmluYWxfc2l6ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjM0OSI7czo2OiJoZWlnaHQiO3M6MzoiMjMyIjtzOjc6InF1YWxpdHkiO3M6MzoiMTAwIjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fXM6Nzoid3lzaXd5ZyI7czoyOiJubyI7czo4OiJlZGl0YWJsZSI7czoyOiJubyI7fX1zOjEzOiJzbWFsbF9wcmV2aWV3IjtzOjU6ImxhcmdlIjtzOjExOiJiaWdfcHJldmlldyI7czo1OiJsYXJnZSI7czoxMzoia2VlcF9vcmlnaW5hbCI7czozOiJ5ZXMiO3M6MTU6InVwbG9hZF9sb2NhdGlvbiI7czo1OiJsb2NhbCI7czo5OiJsb2NhdGlvbnMiO2E6Mzp7czo1OiJsb2NhbCI7YToxOntzOjg6ImxvY2F0aW9uIjtzOjE6IjIiO31zOjI6InMzIjthOjg6e3M6Mzoia2V5IjtzOjA6IiI7czoxMDoic2VjcmV0X2tleSI7czowOiIiO3M6NjoiYnVja2V0IjtzOjA6IiI7czo2OiJyZWdpb24iO3M6OToidXMtZWFzdC0xIjtzOjM6ImFjbCI7czoxMToicHVibGljLXJlYWQiO3M6Nzoic3RvcmFnZSI7czo4OiJzdGFuZGFyZCI7czo5OiJkaXJlY3RvcnkiO3M6MDoiIjtzOjE3OiJjbG91ZGZyb250X2RvbWFpbiI7czowOiIiO31zOjEwOiJjbG91ZGZpbGVzIjthOjU6e3M6ODoidXNlcm5hbWUiO3M6MDoiIjtzOjM6ImFwaSI7czowOiIiO3M6OToiY29udGFpbmVyIjtzOjA6IiI7czo2OiJyZWdpb24iO3M6MjoidXMiO3M6NzoiY2RuX3VyaSI7czowOiIiO319czoxMDoiY2F0ZWdvcmllcyI7YTowOnt9czoxNjoiZGVmYXVsdF9jYXRlZ29yeSI7czowOiIiO3M6MTg6InNob3dfc3RvcmVkX2ltYWdlcyI7czoyOiJubyI7czoyMzoic3RvcmVkX2ltYWdlc19ieV9hdXRob3IiO3M6Mjoibm8iO3M6MjU6InN0b3JlZF9pbWFnZXNfc2VhcmNoX3R5cGUiO3M6NToiZW50cnkiO3M6MTc6InNob3dfaW1wb3J0X2ZpbGVzIjtzOjI6Im5vIjtzOjExOiJpbXBvcnRfcGF0aCI7czoxOiIvIjtzOjE1OiJzaG93X2ltYWdlX2VkaXQiO3M6MzoieWVzIjtzOjE4OiJzaG93X2ltYWdlX3JlcGxhY2UiO3M6MzoieWVzIjtzOjIyOiJhbGxvd19wZXJfaW1hZ2VfYWN0aW9uIjtzOjI6Im5vIjtzOjExOiJpbWFnZV9saW1pdCI7czowOiIiO3M6MTM6Imh5YnJpZF91cGxvYWQiO3M6MzoieWVzIjtzOjE2OiJwcm9ncmVzc2l2ZV9qcGVnIjtzOjI6Im5vIjtzOjE2OiJ3eXNpd3lnX29yaWdpbmFsIjtzOjM6InllcyI7czoxODoic2F2ZV9kYXRhX2luX2ZpZWxkIjtzOjI6Im5vIjtzOjEzOiJkaXNhYmxlX2NvdmVyIjtzOjI6Im5vIjtzOjExOiJjb252ZXJ0X2pwZyI7czoyOiJubyI7czoxMToiY292ZXJfZmlyc3QiO3M6MzoieWVzIjtzOjE0OiJ3eXNpd3lnX291dHB1dCI7czo5OiJpbWFnZV91cmwiO3M6MTA6ImRpcmVjdF91cmwiO3M6MzoieWVzIjtzOjEyOiJtYXhfZmlsZXNpemUiO3M6MDoiIjtzOjEwOiJwYXJzZV9pcHRjIjtzOjI6Im5vIjtzOjEwOiJwYXJzZV9leGlmIjtzOjI6Im5vIjtzOjk6InBhcnNlX3htcCI7czoyOiJubyI7czo3OiJjb2x1bW5zIjthOjEzOntzOjc6InJvd19udW0iO3M6MToiIyI7czoyOiJpZCI7czoyOiJJRCI7czo1OiJpbWFnZSI7czo1OiJJbWFnZSI7czo4OiJmaWxlbmFtZSI7czowOiIiO3M6NToidGl0bGUiO3M6NToiVGl0bGUiO3M6OToidXJsX3RpdGxlIjtzOjA6IiI7czo0OiJkZXNjIjtzOjExOiJEZXNjcmlwdGlvbiI7czo4OiJjYXRlZ29yeSI7czowOiIiO3M6OToiY2lmaWVsZF8xIjtzOjA6IiI7czo5OiJjaWZpZWxkXzIiO3M6MDoiIjtzOjk6ImNpZmllbGRfMyI7czowOiIiO3M6OToiY2lmaWVsZF80IjtzOjA6IiI7czo5OiJjaWZpZWxkXzUiO3M6MDoiIjt9czoxNToiY29sdW1uc19kZWZhdWx0IjthOjk6e3M6NToidGl0bGUiO3M6MDoiIjtzOjk6InVybF90aXRsZSI7czowOiIiO3M6NDoiZGVzYyI7czowOiIiO3M6ODoiY2F0ZWdvcnkiO3M6MDoiIjtzOjk6ImNpZmllbGRfMSI7czowOiIiO3M6OToiY2lmaWVsZF8yIjtzOjA6IiI7czo5OiJjaWZpZWxkXzMiO3M6MDoiIjtzOjk6ImNpZmllbGRfNCI7czowOiIiO3M6OToiY2lmaWVsZF81IjtzOjA6IiI7fX1zOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(6,1,2,'bitacora-imagen','Imágen','','channel_images','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',3,'any','YTo3OntzOjE0OiJjaGFubmVsX2ltYWdlcyI7YTozMzp7czo5OiJ2aWV3X21vZGUiO3M6NToidGFibGUiO3M6MTM6ImFjdGlvbl9ncm91cHMiO2E6Mzp7aToxO2E6NTp7czoxMDoiZ3JvdXBfbmFtZSI7czo1OiJzbWFsbCI7czo3OiJ3eXNpd3lnIjtzOjM6InllcyI7czo3OiJhY3Rpb25zIjthOjE6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjI4MyI7czo2OiJoZWlnaHQiO3M6MzoiMTgwIjtzOjc6InF1YWxpdHkiO3M6MzoiMTAwIjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fX1zOjEwOiJmaW5hbF9zaXplIjthOjU6e3M6NToid2lkdGgiO3M6MzoiMjgzIjtzOjY6ImhlaWdodCI7czozOiIxODAiO3M6NzoicXVhbGl0eSI7czozOiIxMDAiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9czo4OiJlZGl0YWJsZSI7czoyOiJubyI7fWk6MjthOjU6e3M6MTA6Imdyb3VwX25hbWUiO3M6NjoibWVkaXVtIjtzOjc6Ind5c2l3eWciO3M6MzoieWVzIjtzOjc6ImFjdGlvbnMiO2E6MTp7czoxNToicmVzaXplX2FkYXB0aXZlIjthOjU6e3M6NToid2lkdGgiO3M6MzoiNjk4IjtzOjY6ImhlaWdodCI7czozOiIzMDIiO3M6NzoicXVhbGl0eSI7czozOiIxMDAiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9fXM6MTA6ImZpbmFsX3NpemUiO2E6NTp7czo1OiJ3aWR0aCI7czozOiI2OTgiO3M6NjoiaGVpZ2h0IjtzOjM6IjMwMiI7czo3OiJxdWFsaXR5IjtzOjM6IjEwMCI7czo4OiJ1cHNpemluZyI7czoyOiJubyI7czo0OiJzdGVwIjtzOjE6IjEiO31zOjg6ImVkaXRhYmxlIjtzOjI6Im5vIjt9aTozO2E6NTp7czoxMDoiZ3JvdXBfbmFtZSI7czo1OiJsYXJnZSI7czo3OiJ3eXNpd3lnIjtzOjM6InllcyI7czo3OiJhY3Rpb25zIjthOjE6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjgwMCI7czo2OiJoZWlnaHQiO3M6MzoiNjAwIjtzOjc6InF1YWxpdHkiO3M6MjoiNzUiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9fXM6MTA6ImZpbmFsX3NpemUiO2E6NTp7czo1OiJ3aWR0aCI7czozOiI4MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjYwMCI7czo3OiJxdWFsaXR5IjtzOjI6Ijc1IjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fXM6ODoiZWRpdGFibGUiO3M6Mjoibm8iO319czoxMzoic21hbGxfcHJldmlldyI7czo1OiJzbWFsbCI7czoxMToiYmlnX3ByZXZpZXciO3M6NToic21hbGwiO3M6MTM6ImtlZXBfb3JpZ2luYWwiO3M6MzoieWVzIjtzOjE1OiJ1cGxvYWRfbG9jYXRpb24iO3M6NToibG9jYWwiO3M6OToibG9jYXRpb25zIjthOjM6e3M6NToibG9jYWwiO2E6MTp7czo4OiJsb2NhdGlvbiI7czoxOiIxIjt9czoyOiJzMyI7YTo4OntzOjM6ImtleSI7czowOiIiO3M6MTA6InNlY3JldF9rZXkiO3M6MDoiIjtzOjY6ImJ1Y2tldCI7czowOiIiO3M6NjoicmVnaW9uIjtzOjk6InVzLWVhc3QtMSI7czozOiJhY2wiO3M6MTE6InB1YmxpYy1yZWFkIjtzOjc6InN0b3JhZ2UiO3M6ODoic3RhbmRhcmQiO3M6OToiZGlyZWN0b3J5IjtzOjA6IiI7czoxNzoiY2xvdWRmcm9udF9kb21haW4iO3M6MDoiIjt9czoxMDoiY2xvdWRmaWxlcyI7YTo1OntzOjg6InVzZXJuYW1lIjtzOjA6IiI7czozOiJhcGkiO3M6MDoiIjtzOjk6ImNvbnRhaW5lciI7czowOiIiO3M6NjoicmVnaW9uIjtzOjI6InVzIjtzOjc6ImNkbl91cmkiO3M6MDoiIjt9fXM6MTA6ImNhdGVnb3JpZXMiO2E6MDp7fXM6MTY6ImRlZmF1bHRfY2F0ZWdvcnkiO3M6MDoiIjtzOjE4OiJzaG93X3N0b3JlZF9pbWFnZXMiO3M6Mjoibm8iO3M6MjM6InN0b3JlZF9pbWFnZXNfYnlfYXV0aG9yIjtzOjI6Im5vIjtzOjI1OiJzdG9yZWRfaW1hZ2VzX3NlYXJjaF90eXBlIjtzOjU6ImVudHJ5IjtzOjE3OiJzaG93X2ltcG9ydF9maWxlcyI7czoyOiJubyI7czoxMToiaW1wb3J0X3BhdGgiO3M6MToiLyI7czoxNToic2hvd19pbWFnZV9lZGl0IjtzOjM6InllcyI7czoxODoic2hvd19pbWFnZV9yZXBsYWNlIjtzOjM6InllcyI7czoyMjoiYWxsb3dfcGVyX2ltYWdlX2FjdGlvbiI7czoyOiJubyI7czoxMToiaW1hZ2VfbGltaXQiO3M6MDoiIjtzOjEzOiJoeWJyaWRfdXBsb2FkIjtzOjM6InllcyI7czoxNjoicHJvZ3Jlc3NpdmVfanBlZyI7czoyOiJubyI7czoxNjoid3lzaXd5Z19vcmlnaW5hbCI7czozOiJ5ZXMiO3M6MTg6InNhdmVfZGF0YV9pbl9maWVsZCI7czoyOiJubyI7czoxMzoiZGlzYWJsZV9jb3ZlciI7czoyOiJubyI7czoxMToiY29udmVydF9qcGciO3M6Mjoibm8iO3M6MTE6ImNvdmVyX2ZpcnN0IjtzOjM6InllcyI7czoxNDoid3lzaXd5Z19vdXRwdXQiO3M6OToiaW1hZ2VfdXJsIjtzOjEwOiJkaXJlY3RfdXJsIjtzOjM6InllcyI7czoxMjoibWF4X2ZpbGVzaXplIjtzOjA6IiI7czoxMDoicGFyc2VfaXB0YyI7czoyOiJubyI7czoxMDoicGFyc2VfZXhpZiI7czoyOiJubyI7czo5OiJwYXJzZV94bXAiO3M6Mjoibm8iO3M6NzoiY29sdW1ucyI7YToxMzp7czo3OiJyb3dfbnVtIjtzOjE6IiMiO3M6MjoiaWQiO3M6MjoiSUQiO3M6NToiaW1hZ2UiO3M6NToiSW1hZ2UiO3M6ODoiZmlsZW5hbWUiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjU6IlRpdGxlIjtzOjk6InVybF90aXRsZSI7czowOiIiO3M6NDoiZGVzYyI7czoxMToiRGVzY3JpcHRpb24iO3M6ODoiY2F0ZWdvcnkiO3M6MDoiIjtzOjk6ImNpZmllbGRfMSI7czowOiIiO3M6OToiY2lmaWVsZF8yIjtzOjA6IiI7czo5OiJjaWZpZWxkXzMiO3M6MDoiIjtzOjk6ImNpZmllbGRfNCI7czowOiIiO3M6OToiY2lmaWVsZF81IjtzOjA6IiI7fXM6MTU6ImNvbHVtbnNfZGVmYXVsdCI7YTo5OntzOjU6InRpdGxlIjtzOjA6IiI7czo5OiJ1cmxfdGl0bGUiO3M6MDoiIjtzOjQ6ImRlc2MiO3M6MDoiIjtzOjg6ImNhdGVnb3J5IjtzOjA6IiI7czo5OiJjaWZpZWxkXzEiO3M6MDoiIjtzOjk6ImNpZmllbGRfMiI7czowOiIiO3M6OToiY2lmaWVsZF8zIjtzOjA6IiI7czo5OiJjaWZpZWxkXzQiO3M6MDoiIjtzOjk6ImNpZmllbGRfNSI7czowOiIiO319czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),(12,1,4,'proyecto-introduccion','Introducción','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToieSI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(13,1,4,'proyecto-contenido','Contenido','','rte','','0',0,0,20,128,'n','ltr','n','n','xhtml','n',2,'any','YTo4OntzOjI0OiJydGVfZmllbGRfdGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjtzOjExOiJydGVfdGFfcm93cyI7czoyOiIyMCI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),(18,1,4,'proyecto-imagen-organizacion','Imágen Organización','','channel_images','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',7,'any','YTo3OntzOjE0OiJjaGFubmVsX2ltYWdlcyI7YTozMzp7czo5OiJ2aWV3X21vZGUiO3M6NToidGlsZXMiO3M6MTM6ImFjdGlvbl9ncm91cHMiO2E6Mjp7aToxO2E6NTp7czoxMDoiZ3JvdXBfbmFtZSI7czo1OiJzbWFsbCI7czo3OiJ3eXNpd3lnIjtzOjM6InllcyI7czo3OiJhY3Rpb25zIjthOjE6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjIxNCI7czo2OiJoZWlnaHQiO3M6MzoiMjE0IjtzOjc6InF1YWxpdHkiO3M6MzoiMTAwIjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fX1zOjEwOiJmaW5hbF9zaXplIjthOjU6e3M6NToid2lkdGgiO3M6MzoiMjE0IjtzOjY6ImhlaWdodCI7czozOiIyMTQiO3M6NzoicXVhbGl0eSI7czozOiIxMDAiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9czo4OiJlZGl0YWJsZSI7czoyOiJubyI7fWk6MjthOjU6e3M6MTA6Imdyb3VwX25hbWUiO3M6NDoibG9nbyI7czo3OiJhY3Rpb25zIjthOjE6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjEzNSI7czo2OiJoZWlnaHQiO3M6MzoiMTM1IjtzOjc6InF1YWxpdHkiO3M6MzoiMTAwIjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fX1zOjEwOiJmaW5hbF9zaXplIjthOjU6e3M6NToid2lkdGgiO3M6MzoiMTM1IjtzOjY6ImhlaWdodCI7czozOiIxMzUiO3M6NzoicXVhbGl0eSI7czozOiIxMDAiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9czo3OiJ3eXNpd3lnIjtzOjI6Im5vIjtzOjg6ImVkaXRhYmxlIjtzOjI6Im5vIjt9fXM6MTM6InNtYWxsX3ByZXZpZXciO3M6NToic21hbGwiO3M6MTE6ImJpZ19wcmV2aWV3IjtzOjU6InNtYWxsIjtzOjEzOiJrZWVwX29yaWdpbmFsIjtzOjM6InllcyI7czoxNToidXBsb2FkX2xvY2F0aW9uIjtzOjU6ImxvY2FsIjtzOjk6ImxvY2F0aW9ucyI7YTozOntzOjU6ImxvY2FsIjthOjE6e3M6ODoibG9jYXRpb24iO3M6MToiMiI7fXM6MjoiczMiO2E6ODp7czozOiJrZXkiO3M6MDoiIjtzOjEwOiJzZWNyZXRfa2V5IjtzOjA6IiI7czo2OiJidWNrZXQiO3M6MDoiIjtzOjY6InJlZ2lvbiI7czo5OiJ1cy1lYXN0LTEiO3M6MzoiYWNsIjtzOjExOiJwdWJsaWMtcmVhZCI7czo3OiJzdG9yYWdlIjtzOjg6InN0YW5kYXJkIjtzOjk6ImRpcmVjdG9yeSI7czowOiIiO3M6MTc6ImNsb3VkZnJvbnRfZG9tYWluIjtzOjA6IiI7fXM6MTA6ImNsb3VkZmlsZXMiO2E6NTp7czo4OiJ1c2VybmFtZSI7czowOiIiO3M6MzoiYXBpIjtzOjA6IiI7czo5OiJjb250YWluZXIiO3M6MDoiIjtzOjY6InJlZ2lvbiI7czoyOiJ1cyI7czo3OiJjZG5fdXJpIjtzOjA6IiI7fX1zOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjE2OiJkZWZhdWx0X2NhdGVnb3J5IjtzOjA6IiI7czoxODoic2hvd19zdG9yZWRfaW1hZ2VzIjtzOjI6Im5vIjtzOjIzOiJzdG9yZWRfaW1hZ2VzX2J5X2F1dGhvciI7czoyOiJubyI7czoyNToic3RvcmVkX2ltYWdlc19zZWFyY2hfdHlwZSI7czo1OiJlbnRyeSI7czoxNzoic2hvd19pbXBvcnRfZmlsZXMiO3M6Mjoibm8iO3M6MTE6ImltcG9ydF9wYXRoIjtzOjE6Ii8iO3M6MTU6InNob3dfaW1hZ2VfZWRpdCI7czozOiJ5ZXMiO3M6MTg6InNob3dfaW1hZ2VfcmVwbGFjZSI7czozOiJ5ZXMiO3M6MjI6ImFsbG93X3Blcl9pbWFnZV9hY3Rpb24iO3M6Mjoibm8iO3M6MTE6ImltYWdlX2xpbWl0IjtzOjA6IiI7czoxMzoiaHlicmlkX3VwbG9hZCI7czozOiJ5ZXMiO3M6MTY6InByb2dyZXNzaXZlX2pwZWciO3M6Mjoibm8iO3M6MTY6Ind5c2l3eWdfb3JpZ2luYWwiO3M6MzoieWVzIjtzOjE4OiJzYXZlX2RhdGFfaW5fZmllbGQiO3M6Mjoibm8iO3M6MTM6ImRpc2FibGVfY292ZXIiO3M6Mjoibm8iO3M6MTE6ImNvbnZlcnRfanBnIjtzOjI6Im5vIjtzOjExOiJjb3Zlcl9maXJzdCI7czozOiJ5ZXMiO3M6MTQ6Ind5c2l3eWdfb3V0cHV0IjtzOjk6ImltYWdlX3VybCI7czoxMDoiZGlyZWN0X3VybCI7czozOiJ5ZXMiO3M6MTI6Im1heF9maWxlc2l6ZSI7czowOiIiO3M6MTA6InBhcnNlX2lwdGMiO3M6Mjoibm8iO3M6MTA6InBhcnNlX2V4aWYiO3M6Mjoibm8iO3M6OToicGFyc2VfeG1wIjtzOjI6Im5vIjtzOjc6ImNvbHVtbnMiO2E6MTM6e3M6Nzoicm93X251bSI7czoxOiIjIjtzOjI6ImlkIjtzOjI6IklEIjtzOjU6ImltYWdlIjtzOjU6IkltYWdlIjtzOjg6ImZpbGVuYW1lIjtzOjA6IiI7czo1OiJ0aXRsZSI7czo1OiJUaXRsZSI7czo5OiJ1cmxfdGl0bGUiO3M6MDoiIjtzOjQ6ImRlc2MiO3M6MTE6IkRlc2NyaXB0aW9uIjtzOjg6ImNhdGVnb3J5IjtzOjA6IiI7czo5OiJjaWZpZWxkXzEiO3M6MDoiIjtzOjk6ImNpZmllbGRfMiI7czowOiIiO3M6OToiY2lmaWVsZF8zIjtzOjA6IiI7czo5OiJjaWZpZWxkXzQiO3M6MDoiIjtzOjk6ImNpZmllbGRfNSI7czowOiIiO31zOjE1OiJjb2x1bW5zX2RlZmF1bHQiO2E6OTp7czo1OiJ0aXRsZSI7czowOiIiO3M6OToidXJsX3RpdGxlIjtzOjA6IiI7czo0OiJkZXNjIjtzOjA6IiI7czo4OiJjYXRlZ29yeSI7czowOiIiO3M6OToiY2lmaWVsZF8xIjtzOjA6IiI7czo5OiJjaWZpZWxkXzIiO3M6MDoiIjtzOjk6ImNpZmllbGRfMyI7czowOiIiO3M6OToiY2lmaWVsZF80IjtzOjA6IiI7czo5OiJjaWZpZWxkXzUiO3M6MDoiIjt9fXM6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),(19,1,4,'proyecto-titulo-proyecto','Título del proyecto','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',9,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(20,1,5,'cronograma-fecha-evento','Fecha de Evento','','date','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(21,1,5,'cronograma-descripcion-evento','Descripción del Evento','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToieSI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(22,1,5,'cronograma-link-texto','Link Texto','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(23,1,5,'cronograma-link-url','Link url','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',4,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(24,1,6,'jurado-cargo','Cargo','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(25,1,6,'jurado-introduccion','Introducción','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToieSI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(26,1,6,'imgen-jurado','Imágen del Jurado','','channel_images','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',3,'any','YTo3OntzOjE0OiJjaGFubmVsX2ltYWdlcyI7YTozMzp7czo5OiJ2aWV3X21vZGUiO3M6NToidGlsZXMiO3M6MTM6ImFjdGlvbl9ncm91cHMiO2E6Mzp7aToxO2E6NTp7czoxMDoiZ3JvdXBfbmFtZSI7czo1OiJzbWFsbCI7czo3OiJ3eXNpd3lnIjtzOjM6InllcyI7czo3OiJhY3Rpb25zIjthOjE6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjIxNCI7czo2OiJoZWlnaHQiO3M6MzoiMjE0IjtzOjc6InF1YWxpdHkiO3M6MzoiMTAwIjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fX1zOjEwOiJmaW5hbF9zaXplIjthOjU6e3M6NToid2lkdGgiO3M6MzoiMjE0IjtzOjY6ImhlaWdodCI7czozOiIyMTQiO3M6NzoicXVhbGl0eSI7czozOiIxMDAiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9czo4OiJlZGl0YWJsZSI7czoyOiJubyI7fWk6MjthOjU6e3M6MTA6Imdyb3VwX25hbWUiO3M6NjoibWVkaXVtIjtzOjc6Ind5c2l3eWciO3M6MzoieWVzIjtzOjc6ImFjdGlvbnMiO2E6MTp7czoxNToicmVzaXplX2FkYXB0aXZlIjthOjU6e3M6NToid2lkdGgiO3M6MzoiNDUwIjtzOjY6ImhlaWdodCI7czozOiIzMDAiO3M6NzoicXVhbGl0eSI7czoyOiI3NSI7czo4OiJ1cHNpemluZyI7czoyOiJubyI7czo0OiJzdGVwIjtzOjE6IjEiO319czoxMDoiZmluYWxfc2l6ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjQ1MCI7czo2OiJoZWlnaHQiO3M6MzoiMzAwIjtzOjc6InF1YWxpdHkiO3M6MjoiNzUiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9czo4OiJlZGl0YWJsZSI7czoyOiJubyI7fWk6MzthOjU6e3M6MTA6Imdyb3VwX25hbWUiO3M6NToibGFyZ2UiO3M6Nzoid3lzaXd5ZyI7czozOiJ5ZXMiO3M6NzoiYWN0aW9ucyI7YToxOntzOjE1OiJyZXNpemVfYWRhcHRpdmUiO2E6NTp7czo1OiJ3aWR0aCI7czozOiI4MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjYwMCI7czo3OiJxdWFsaXR5IjtzOjI6Ijc1IjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fX1zOjEwOiJmaW5hbF9zaXplIjthOjU6e3M6NToid2lkdGgiO3M6MzoiODAwIjtzOjY6ImhlaWdodCI7czozOiI2MDAiO3M6NzoicXVhbGl0eSI7czoyOiI3NSI7czo4OiJ1cHNpemluZyI7czoyOiJubyI7czo0OiJzdGVwIjtzOjE6IjEiO31zOjg6ImVkaXRhYmxlIjtzOjI6Im5vIjt9fXM6MTM6InNtYWxsX3ByZXZpZXciO3M6NToic21hbGwiO3M6MTE6ImJpZ19wcmV2aWV3IjtzOjU6InNtYWxsIjtzOjEzOiJrZWVwX29yaWdpbmFsIjtzOjM6InllcyI7czoxNToidXBsb2FkX2xvY2F0aW9uIjtzOjU6ImxvY2FsIjtzOjk6ImxvY2F0aW9ucyI7YTozOntzOjU6ImxvY2FsIjthOjE6e3M6ODoibG9jYXRpb24iO3M6MToiMyI7fXM6MjoiczMiO2E6ODp7czozOiJrZXkiO3M6MDoiIjtzOjEwOiJzZWNyZXRfa2V5IjtzOjA6IiI7czo2OiJidWNrZXQiO3M6MDoiIjtzOjY6InJlZ2lvbiI7czo5OiJ1cy1lYXN0LTEiO3M6MzoiYWNsIjtzOjExOiJwdWJsaWMtcmVhZCI7czo3OiJzdG9yYWdlIjtzOjg6InN0YW5kYXJkIjtzOjk6ImRpcmVjdG9yeSI7czowOiIiO3M6MTc6ImNsb3VkZnJvbnRfZG9tYWluIjtzOjA6IiI7fXM6MTA6ImNsb3VkZmlsZXMiO2E6NTp7czo4OiJ1c2VybmFtZSI7czowOiIiO3M6MzoiYXBpIjtzOjA6IiI7czo5OiJjb250YWluZXIiO3M6MDoiIjtzOjY6InJlZ2lvbiI7czoyOiJ1cyI7czo3OiJjZG5fdXJpIjtzOjA6IiI7fX1zOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjE2OiJkZWZhdWx0X2NhdGVnb3J5IjtzOjA6IiI7czoxODoic2hvd19zdG9yZWRfaW1hZ2VzIjtzOjI6Im5vIjtzOjIzOiJzdG9yZWRfaW1hZ2VzX2J5X2F1dGhvciI7czoyOiJubyI7czoyNToic3RvcmVkX2ltYWdlc19zZWFyY2hfdHlwZSI7czo1OiJlbnRyeSI7czoxNzoic2hvd19pbXBvcnRfZmlsZXMiO3M6Mjoibm8iO3M6MTE6ImltcG9ydF9wYXRoIjtzOjE6Ii8iO3M6MTU6InNob3dfaW1hZ2VfZWRpdCI7czozOiJ5ZXMiO3M6MTg6InNob3dfaW1hZ2VfcmVwbGFjZSI7czozOiJ5ZXMiO3M6MjI6ImFsbG93X3Blcl9pbWFnZV9hY3Rpb24iO3M6Mjoibm8iO3M6MTE6ImltYWdlX2xpbWl0IjtzOjA6IiI7czoxMzoiaHlicmlkX3VwbG9hZCI7czozOiJ5ZXMiO3M6MTY6InByb2dyZXNzaXZlX2pwZWciO3M6Mjoibm8iO3M6MTY6Ind5c2l3eWdfb3JpZ2luYWwiO3M6MzoieWVzIjtzOjE4OiJzYXZlX2RhdGFfaW5fZmllbGQiO3M6Mjoibm8iO3M6MTM6ImRpc2FibGVfY292ZXIiO3M6Mjoibm8iO3M6MTE6ImNvbnZlcnRfanBnIjtzOjI6Im5vIjtzOjExOiJjb3Zlcl9maXJzdCI7czozOiJ5ZXMiO3M6MTQ6Ind5c2l3eWdfb3V0cHV0IjtzOjk6ImltYWdlX3VybCI7czoxMDoiZGlyZWN0X3VybCI7czozOiJ5ZXMiO3M6MTI6Im1heF9maWxlc2l6ZSI7czowOiIiO3M6MTA6InBhcnNlX2lwdGMiO3M6Mjoibm8iO3M6MTA6InBhcnNlX2V4aWYiO3M6Mjoibm8iO3M6OToicGFyc2VfeG1wIjtzOjI6Im5vIjtzOjc6ImNvbHVtbnMiO2E6MTM6e3M6Nzoicm93X251bSI7czoxOiIjIjtzOjI6ImlkIjtzOjI6IklEIjtzOjU6ImltYWdlIjtzOjU6IkltYWdlIjtzOjg6ImZpbGVuYW1lIjtzOjA6IiI7czo1OiJ0aXRsZSI7czo1OiJUaXRsZSI7czo5OiJ1cmxfdGl0bGUiO3M6MDoiIjtzOjQ6ImRlc2MiO3M6MTE6IkRlc2NyaXB0aW9uIjtzOjg6ImNhdGVnb3J5IjtzOjA6IiI7czo5OiJjaWZpZWxkXzEiO3M6MDoiIjtzOjk6ImNpZmllbGRfMiI7czowOiIiO3M6OToiY2lmaWVsZF8zIjtzOjA6IiI7czo5OiJjaWZpZWxkXzQiO3M6MDoiIjtzOjk6ImNpZmllbGRfNSI7czowOiIiO31zOjE1OiJjb2x1bW5zX2RlZmF1bHQiO2E6OTp7czo1OiJ0aXRsZSI7czowOiIiO3M6OToidXJsX3RpdGxlIjtzOjA6IiI7czo0OiJkZXNjIjtzOjA6IiI7czo4OiJjYXRlZ29yeSI7czowOiIiO3M6OToiY2lmaWVsZF8xIjtzOjA6IiI7czo5OiJjaWZpZWxkXzIiO3M6MDoiIjtzOjk6ImNpZmllbGRfMyI7czowOiIiO3M6OToiY2lmaWVsZF80IjtzOjA6IiI7czo5OiJjaWZpZWxkXzUiO3M6MDoiIjt9fXM6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),(27,1,6,'jurado-imagen-interna','Imágen Interna','','channel_images','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',4,'any','YTo3OntzOjE0OiJjaGFubmVsX2ltYWdlcyI7YTozMzp7czo5OiJ2aWV3X21vZGUiO3M6NToidGlsZXMiO3M6MTM6ImFjdGlvbl9ncm91cHMiO2E6Mzp7aToxO2E6NTp7czoxMDoiZ3JvdXBfbmFtZSI7czo1OiJzbWFsbCI7czo3OiJ3eXNpd3lnIjtzOjM6InllcyI7czo3OiJhY3Rpb25zIjthOjE6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjEwMCI7czo2OiJoZWlnaHQiO3M6MzoiMTAwIjtzOjc6InF1YWxpdHkiO3M6MjoiODAiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9fXM6MTA6ImZpbmFsX3NpemUiO2E6NTp7czo1OiJ3aWR0aCI7czozOiIxMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjEwMCI7czo3OiJxdWFsaXR5IjtzOjI6IjgwIjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fXM6ODoiZWRpdGFibGUiO3M6Mjoibm8iO31pOjI7YTo1OntzOjEwOiJncm91cF9uYW1lIjtzOjY6Im1lZGl1bSI7czo3OiJ3eXNpd3lnIjtzOjM6InllcyI7czo3OiJhY3Rpb25zIjthOjE6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjQ1MCI7czo2OiJoZWlnaHQiO3M6MzoiMzAwIjtzOjc6InF1YWxpdHkiO3M6MjoiNzUiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9fXM6MTA6ImZpbmFsX3NpemUiO2E6NTp7czo1OiJ3aWR0aCI7czozOiI0NTAiO3M6NjoiaGVpZ2h0IjtzOjM6IjMwMCI7czo3OiJxdWFsaXR5IjtzOjI6Ijc1IjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fXM6ODoiZWRpdGFibGUiO3M6Mjoibm8iO31pOjM7YTo1OntzOjEwOiJncm91cF9uYW1lIjtzOjU6ImxhcmdlIjtzOjc6Ind5c2l3eWciO3M6MzoieWVzIjtzOjc6ImFjdGlvbnMiO2E6MTp7czoxNToicmVzaXplX2FkYXB0aXZlIjthOjU6e3M6NToid2lkdGgiO3M6MzoiNjk4IjtzOjY6ImhlaWdodCI7czozOiIzMDIiO3M6NzoicXVhbGl0eSI7czozOiIxMDAiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9fXM6MTA6ImZpbmFsX3NpemUiO2E6NTp7czo1OiJ3aWR0aCI7czozOiI2OTgiO3M6NjoiaGVpZ2h0IjtzOjM6IjMwMiI7czo3OiJxdWFsaXR5IjtzOjM6IjEwMCI7czo4OiJ1cHNpemluZyI7czoyOiJubyI7czo0OiJzdGVwIjtzOjE6IjEiO31zOjg6ImVkaXRhYmxlIjtzOjI6Im5vIjt9fXM6MTM6InNtYWxsX3ByZXZpZXciO3M6NToic21hbGwiO3M6MTE6ImJpZ19wcmV2aWV3IjtzOjU6InNtYWxsIjtzOjEzOiJrZWVwX29yaWdpbmFsIjtzOjM6InllcyI7czoxNToidXBsb2FkX2xvY2F0aW9uIjtzOjU6ImxvY2FsIjtzOjk6ImxvY2F0aW9ucyI7YTozOntzOjU6ImxvY2FsIjthOjE6e3M6ODoibG9jYXRpb24iO3M6MToiMyI7fXM6MjoiczMiO2E6ODp7czozOiJrZXkiO3M6MDoiIjtzOjEwOiJzZWNyZXRfa2V5IjtzOjA6IiI7czo2OiJidWNrZXQiO3M6MDoiIjtzOjY6InJlZ2lvbiI7czo5OiJ1cy1lYXN0LTEiO3M6MzoiYWNsIjtzOjExOiJwdWJsaWMtcmVhZCI7czo3OiJzdG9yYWdlIjtzOjg6InN0YW5kYXJkIjtzOjk6ImRpcmVjdG9yeSI7czowOiIiO3M6MTc6ImNsb3VkZnJvbnRfZG9tYWluIjtzOjA6IiI7fXM6MTA6ImNsb3VkZmlsZXMiO2E6NTp7czo4OiJ1c2VybmFtZSI7czowOiIiO3M6MzoiYXBpIjtzOjA6IiI7czo5OiJjb250YWluZXIiO3M6MDoiIjtzOjY6InJlZ2lvbiI7czoyOiJ1cyI7czo3OiJjZG5fdXJpIjtzOjA6IiI7fX1zOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjE2OiJkZWZhdWx0X2NhdGVnb3J5IjtzOjA6IiI7czoxODoic2hvd19zdG9yZWRfaW1hZ2VzIjtzOjI6Im5vIjtzOjIzOiJzdG9yZWRfaW1hZ2VzX2J5X2F1dGhvciI7czoyOiJubyI7czoyNToic3RvcmVkX2ltYWdlc19zZWFyY2hfdHlwZSI7czo1OiJlbnRyeSI7czoxNzoic2hvd19pbXBvcnRfZmlsZXMiO3M6Mjoibm8iO3M6MTE6ImltcG9ydF9wYXRoIjtzOjE6Ii8iO3M6MTU6InNob3dfaW1hZ2VfZWRpdCI7czozOiJ5ZXMiO3M6MTg6InNob3dfaW1hZ2VfcmVwbGFjZSI7czozOiJ5ZXMiO3M6MjI6ImFsbG93X3Blcl9pbWFnZV9hY3Rpb24iO3M6Mjoibm8iO3M6MTE6ImltYWdlX2xpbWl0IjtzOjA6IiI7czoxMzoiaHlicmlkX3VwbG9hZCI7czozOiJ5ZXMiO3M6MTY6InByb2dyZXNzaXZlX2pwZWciO3M6Mjoibm8iO3M6MTY6Ind5c2l3eWdfb3JpZ2luYWwiO3M6MzoieWVzIjtzOjE4OiJzYXZlX2RhdGFfaW5fZmllbGQiO3M6Mjoibm8iO3M6MTM6ImRpc2FibGVfY292ZXIiO3M6Mjoibm8iO3M6MTE6ImNvbnZlcnRfanBnIjtzOjI6Im5vIjtzOjExOiJjb3Zlcl9maXJzdCI7czozOiJ5ZXMiO3M6MTQ6Ind5c2l3eWdfb3V0cHV0IjtzOjk6ImltYWdlX3VybCI7czoxMDoiZGlyZWN0X3VybCI7czozOiJ5ZXMiO3M6MTI6Im1heF9maWxlc2l6ZSI7czowOiIiO3M6MTA6InBhcnNlX2lwdGMiO3M6Mjoibm8iO3M6MTA6InBhcnNlX2V4aWYiO3M6Mjoibm8iO3M6OToicGFyc2VfeG1wIjtzOjI6Im5vIjtzOjc6ImNvbHVtbnMiO2E6MTM6e3M6Nzoicm93X251bSI7czoxOiIjIjtzOjI6ImlkIjtzOjI6IklEIjtzOjU6ImltYWdlIjtzOjU6IkltYWdlIjtzOjg6ImZpbGVuYW1lIjtzOjA6IiI7czo1OiJ0aXRsZSI7czo1OiJUaXRsZSI7czo5OiJ1cmxfdGl0bGUiO3M6MDoiIjtzOjQ6ImRlc2MiO3M6MTE6IkRlc2NyaXB0aW9uIjtzOjg6ImNhdGVnb3J5IjtzOjA6IiI7czo5OiJjaWZpZWxkXzEiO3M6MDoiIjtzOjk6ImNpZmllbGRfMiI7czowOiIiO3M6OToiY2lmaWVsZF8zIjtzOjA6IiI7czo5OiJjaWZpZWxkXzQiO3M6MDoiIjtzOjk6ImNpZmllbGRfNSI7czowOiIiO31zOjE1OiJjb2x1bW5zX2RlZmF1bHQiO2E6OTp7czo1OiJ0aXRsZSI7czowOiIiO3M6OToidXJsX3RpdGxlIjtzOjA6IiI7czo0OiJkZXNjIjtzOjA6IiI7czo4OiJjYXRlZ29yeSI7czowOiIiO3M6OToiY2lmaWVsZF8xIjtzOjA6IiI7czo5OiJjaWZpZWxkXzIiO3M6MDoiIjtzOjk6ImNpZmllbGRfMyI7czowOiIiO3M6OToiY2lmaWVsZF80IjtzOjA6IiI7czo5OiJjaWZpZWxkXzUiO3M6MDoiIjt9fXM6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),(28,1,6,'jurado-contenido','Contenido','','rte','','0',0,0,20,128,'n','ltr','n','n','xhtml','n',5,'any','YTo4OntzOjI0OiJydGVfZmllbGRfdGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjtzOjExOiJydGVfdGFfcm93cyI7czoyOiIyMCI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),(29,1,7,'estadistica-descripcion','Descripción','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(30,1,7,'estadistica-numero','Número','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(31,1,2,'bitacora-video','Video','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',5,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(32,1,2,'bitacora_facebook','Facebook','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',6,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(33,1,2,'bitacora_twitter','Twitter','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',7,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(34,1,4,'proyecto-facebook','Facebook','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',9,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(35,1,4,'proyecto-twitter','Twitter','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',10,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(36,1,8,'general_contenido','Contenido','','rte','','0',0,0,20,128,'n','ltr','n','n','xhtml','n',1,'any','YTo4OntzOjI0OiJydGVfZmllbGRfdGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjtzOjExOiJydGVfdGFfcm93cyI7czoyOiIyMCI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),(37,1,8,'general-imagen','Imágen ','','channel_images','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',2,'any','YTo3OntzOjE0OiJjaGFubmVsX2ltYWdlcyI7YTozMzp7czo5OiJ2aWV3X21vZGUiO3M6NToidGlsZXMiO3M6MTM6ImFjdGlvbl9ncm91cHMiO2E6Mzp7aToxO2E6NTp7czoxMDoiZ3JvdXBfbmFtZSI7czo1OiJzbWFsbCI7czo3OiJ3eXNpd3lnIjtzOjM6InllcyI7czo3OiJhY3Rpb25zIjthOjE6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjEwMCI7czo2OiJoZWlnaHQiO3M6MzoiMTAwIjtzOjc6InF1YWxpdHkiO3M6MjoiODAiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9fXM6MTA6ImZpbmFsX3NpemUiO2E6NTp7czo1OiJ3aWR0aCI7czozOiIxMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjEwMCI7czo3OiJxdWFsaXR5IjtzOjI6IjgwIjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fXM6ODoiZWRpdGFibGUiO3M6Mjoibm8iO31pOjI7YTo1OntzOjEwOiJncm91cF9uYW1lIjtzOjY6Im1lZGl1bSI7czo3OiJ3eXNpd3lnIjtzOjM6InllcyI7czo3OiJhY3Rpb25zIjthOjE6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjY5OCI7czo2OiJoZWlnaHQiO3M6MzoiMzAyIjtzOjc6InF1YWxpdHkiO3M6MzoiMTAwIjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fX1zOjEwOiJmaW5hbF9zaXplIjthOjU6e3M6NToid2lkdGgiO3M6MzoiNjk4IjtzOjY6ImhlaWdodCI7czozOiIzMDIiO3M6NzoicXVhbGl0eSI7czozOiIxMDAiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9czo4OiJlZGl0YWJsZSI7czoyOiJubyI7fWk6MzthOjU6e3M6MTA6Imdyb3VwX25hbWUiO3M6NToibGFyZ2UiO3M6Nzoid3lzaXd5ZyI7czozOiJ5ZXMiO3M6NzoiYWN0aW9ucyI7YToxOntzOjE1OiJyZXNpemVfYWRhcHRpdmUiO2E6NTp7czo1OiJ3aWR0aCI7czozOiI4MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjYwMCI7czo3OiJxdWFsaXR5IjtzOjI6Ijc1IjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fX1zOjEwOiJmaW5hbF9zaXplIjthOjU6e3M6NToid2lkdGgiO3M6MzoiODAwIjtzOjY6ImhlaWdodCI7czozOiI2MDAiO3M6NzoicXVhbGl0eSI7czoyOiI3NSI7czo4OiJ1cHNpemluZyI7czoyOiJubyI7czo0OiJzdGVwIjtzOjE6IjEiO31zOjg6ImVkaXRhYmxlIjtzOjI6Im5vIjt9fXM6MTM6InNtYWxsX3ByZXZpZXciO3M6NToic21hbGwiO3M6MTE6ImJpZ19wcmV2aWV3IjtzOjU6InNtYWxsIjtzOjEzOiJrZWVwX29yaWdpbmFsIjtzOjM6InllcyI7czoxNToidXBsb2FkX2xvY2F0aW9uIjtzOjU6ImxvY2FsIjtzOjk6ImxvY2F0aW9ucyI7YTozOntzOjU6ImxvY2FsIjthOjE6e3M6ODoibG9jYXRpb24iO3M6MToiNCI7fXM6MjoiczMiO2E6ODp7czozOiJrZXkiO3M6MDoiIjtzOjEwOiJzZWNyZXRfa2V5IjtzOjA6IiI7czo2OiJidWNrZXQiO3M6MDoiIjtzOjY6InJlZ2lvbiI7czo5OiJ1cy1lYXN0LTEiO3M6MzoiYWNsIjtzOjExOiJwdWJsaWMtcmVhZCI7czo3OiJzdG9yYWdlIjtzOjg6InN0YW5kYXJkIjtzOjk6ImRpcmVjdG9yeSI7czowOiIiO3M6MTc6ImNsb3VkZnJvbnRfZG9tYWluIjtzOjA6IiI7fXM6MTA6ImNsb3VkZmlsZXMiO2E6NTp7czo4OiJ1c2VybmFtZSI7czowOiIiO3M6MzoiYXBpIjtzOjA6IiI7czo5OiJjb250YWluZXIiO3M6MDoiIjtzOjY6InJlZ2lvbiI7czoyOiJ1cyI7czo3OiJjZG5fdXJpIjtzOjA6IiI7fX1zOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjE2OiJkZWZhdWx0X2NhdGVnb3J5IjtzOjA6IiI7czoxODoic2hvd19zdG9yZWRfaW1hZ2VzIjtzOjI6Im5vIjtzOjIzOiJzdG9yZWRfaW1hZ2VzX2J5X2F1dGhvciI7czoyOiJubyI7czoyNToic3RvcmVkX2ltYWdlc19zZWFyY2hfdHlwZSI7czo1OiJlbnRyeSI7czoxNzoic2hvd19pbXBvcnRfZmlsZXMiO3M6Mjoibm8iO3M6MTE6ImltcG9ydF9wYXRoIjtzOjE6Ii8iO3M6MTU6InNob3dfaW1hZ2VfZWRpdCI7czozOiJ5ZXMiO3M6MTg6InNob3dfaW1hZ2VfcmVwbGFjZSI7czozOiJ5ZXMiO3M6MjI6ImFsbG93X3Blcl9pbWFnZV9hY3Rpb24iO3M6Mjoibm8iO3M6MTE6ImltYWdlX2xpbWl0IjtzOjA6IiI7czoxMzoiaHlicmlkX3VwbG9hZCI7czozOiJ5ZXMiO3M6MTY6InByb2dyZXNzaXZlX2pwZWciO3M6Mjoibm8iO3M6MTY6Ind5c2l3eWdfb3JpZ2luYWwiO3M6MzoieWVzIjtzOjE4OiJzYXZlX2RhdGFfaW5fZmllbGQiO3M6Mjoibm8iO3M6MTM6ImRpc2FibGVfY292ZXIiO3M6Mjoibm8iO3M6MTE6ImNvbnZlcnRfanBnIjtzOjI6Im5vIjtzOjExOiJjb3Zlcl9maXJzdCI7czozOiJ5ZXMiO3M6MTQ6Ind5c2l3eWdfb3V0cHV0IjtzOjk6ImltYWdlX3VybCI7czoxMDoiZGlyZWN0X3VybCI7czozOiJ5ZXMiO3M6MTI6Im1heF9maWxlc2l6ZSI7czowOiIiO3M6MTA6InBhcnNlX2lwdGMiO3M6Mjoibm8iO3M6MTA6InBhcnNlX2V4aWYiO3M6Mjoibm8iO3M6OToicGFyc2VfeG1wIjtzOjI6Im5vIjtzOjc6ImNvbHVtbnMiO2E6MTM6e3M6Nzoicm93X251bSI7czoxOiIjIjtzOjI6ImlkIjtzOjI6IklEIjtzOjU6ImltYWdlIjtzOjU6IkltYWdlIjtzOjg6ImZpbGVuYW1lIjtzOjA6IiI7czo1OiJ0aXRsZSI7czo1OiJUaXRsZSI7czo5OiJ1cmxfdGl0bGUiO3M6MDoiIjtzOjQ6ImRlc2MiO3M6MTE6IkRlc2NyaXB0aW9uIjtzOjg6ImNhdGVnb3J5IjtzOjA6IiI7czo5OiJjaWZpZWxkXzEiO3M6MDoiIjtzOjk6ImNpZmllbGRfMiI7czowOiIiO3M6OToiY2lmaWVsZF8zIjtzOjA6IiI7czo5OiJjaWZpZWxkXzQiO3M6MDoiIjtzOjk6ImNpZmllbGRfNSI7czowOiIiO31zOjE1OiJjb2x1bW5zX2RlZmF1bHQiO2E6OTp7czo1OiJ0aXRsZSI7czowOiIiO3M6OToidXJsX3RpdGxlIjtzOjA6IiI7czo0OiJkZXNjIjtzOjA6IiI7czo4OiJjYXRlZ29yeSI7czowOiIiO3M6OToiY2lmaWVsZF8xIjtzOjA6IiI7czo5OiJjaWZpZWxkXzIiO3M6MDoiIjtzOjk6ImNpZmllbGRfMyI7czowOiIiO3M6OToiY2lmaWVsZF80IjtzOjA6IiI7czo5OiJjaWZpZWxkXzUiO3M6MDoiIjt9fXM6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),(38,1,4,'proyecto-website','Website','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',11,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30=');
/*!40000 ALTER TABLE `exp_channel_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_form_settings`
--

DROP TABLE IF EXISTS `exp_channel_form_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_form_settings` (
  `channel_form_settings_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(6) unsigned NOT NULL DEFAULT '0',
  `default_status` varchar(50) NOT NULL DEFAULT 'open',
  `require_captcha` char(1) NOT NULL DEFAULT 'n',
  `allow_guest_posts` char(1) NOT NULL DEFAULT 'n',
  `default_author` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_form_settings_id`),
  KEY `site_id` (`site_id`),
  KEY `channel_id` (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_form_settings`
--

LOCK TABLES `exp_channel_form_settings` WRITE;
/*!40000 ALTER TABLE `exp_channel_form_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_channel_form_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_images`
--

DROP TABLE IF EXISTS `exp_channel_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_images` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` tinyint(3) unsigned DEFAULT '1',
  `entry_id` int(10) unsigned DEFAULT '0',
  `field_id` mediumint(8) unsigned DEFAULT '0',
  `channel_id` tinyint(3) unsigned DEFAULT '0',
  `member_id` int(10) unsigned DEFAULT '0',
  `is_draft` tinyint(3) unsigned DEFAULT '0',
  `link_image_id` int(10) unsigned DEFAULT '0',
  `link_entry_id` int(10) unsigned DEFAULT '0',
  `link_channel_id` int(10) unsigned DEFAULT '0',
  `link_field_id` int(10) unsigned DEFAULT '0',
  `upload_date` int(10) unsigned DEFAULT '0',
  `cover` tinyint(1) unsigned DEFAULT '0',
  `image_order` smallint(5) unsigned DEFAULT '1',
  `filename` varchar(250) DEFAULT '',
  `extension` varchar(20) DEFAULT '',
  `filesize` int(10) unsigned DEFAULT '0',
  `mime` varchar(20) DEFAULT '',
  `width` smallint(6) DEFAULT '0',
  `height` smallint(6) DEFAULT '0',
  `title` varchar(250) DEFAULT '',
  `url_title` varchar(250) DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `category` varchar(250) DEFAULT '',
  `cifield_1` varchar(250) DEFAULT '',
  `cifield_2` varchar(250) DEFAULT '',
  `cifield_3` varchar(250) DEFAULT '',
  `cifield_4` varchar(250) DEFAULT '',
  `cifield_5` varchar(250) DEFAULT '',
  `sizes_metadata` varchar(250) DEFAULT '',
  `iptc` text,
  `exif` text,
  `xmp` text,
  PRIMARY KEY (`image_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_images`
--

LOCK TABLES `exp_channel_images` WRITE;
/*!40000 ALTER TABLE `exp_channel_images` DISABLE KEYS */;
INSERT INTO `exp_channel_images` VALUES (4,1,6,26,8,1,0,0,0,0,0,1434918991,0,1,'gaston.png','png',97143,'image/png',228,228,'Gaston','','','','','','','','','small|214|214|72620/medium|228|228|84446/large|228|228|84446/','YTowOnt9','YTowOnt9',''),(5,1,6,27,8,1,0,0,0,0,0,1434918991,0,1,'gastoncocinando.png','png',482411,'image/png',743,321,'Gastoncocinando','','','','','','','','','small|100|100|24700/medium|450|300|254594/large|698|302|390268/','YTowOnt9','YTowOnt9',''),(6,1,7,26,8,1,0,0,0,0,0,1434921811,0,1,'mariel.png','png',98190,'image/png',228,228,'Mariel','','','','','','','','','small|214|214|74662/medium|228|228|86402/large|228|228|86402/','YTowOnt9','YTowOnt9',''),(7,1,7,27,8,1,0,0,0,0,0,1434921811,0,1,'voluntades-slide.png','png',1477162,'image/png',1440,500,'Voluntades-slide','','','','','','','','','small|100|100|26358/medium|450|300|283720/large|698|302|442559/','YTowOnt9','YTowOnt9',''),(8,1,8,26,8,1,0,0,0,0,0,1434922253,0,1,'vania.png','png',95782,'image/png',228,228,'Vania','vania','','','','','','','','small|214|214|70578/medium|228|228|82161/large|228|228|82161/','YTowOnt9','YTowOnt9',''),(9,1,8,27,8,1,0,0,0,0,0,1434922253,0,1,'voluntades-slide.png','png',1477162,'image/png',1440,500,'Voluntades-slide','voluntades-slide','','','','','','','','small|100|100|26358/medium|450|300|283720/large|698|302|442559/','YTowOnt9','YTowOnt9',''),(10,1,9,26,8,1,0,0,0,0,0,1434922486,0,1,'alvaro.png','png',96485,'image/png',228,228,'Alvaro','alvaro','','','','','','','','small|214|214|68967/medium|228|228|83494/large|228|228|83494/','YTowOnt9','YTowOnt9',''),(11,1,9,27,8,1,0,0,0,0,0,1434922486,0,1,'kunan_main.png','png',1376394,'image/png',1440,650,'Kunan main','kunan-main','','','','','','','','small|100|100|19846/medium|450|300|190092/large|698|302|296096/','YTowOnt9','YTowOnt9',''),(12,1,18,17,5,3,0,0,0,0,0,1435097256,0,1,'laboratoria.jpg','jpg',203537,'image/jpeg',2392,1589,'Laboratoria','laboratoria','','','','','','','','large|1440|504|128545/small|349|232|67220/','YTowOnt9','YTowOnt9',''),(13,1,18,18,5,3,0,0,0,0,0,1435097256,0,1,'logo_cuadrado_laboratoria.png','png',42300,'image/png',734,731,'Logo cuadrado laboratoria','logo-cuadrado-laboratoria','','','','','','','','small|214|214|37353/logo|135|135|14496/','YTowOnt9','YTowOnt9',''),(14,1,19,17,5,3,0,0,0,0,0,1435099714,0,1,'crea.jpg','jpg',364504,'image/jpeg',2392,1595,'Crea','crea','','','','','','','','large|1440|504|195528/small|348|232|100311/','YTowOnt9','YTowOnt9',''),(15,1,19,18,5,3,0,0,0,0,0,1435099714,0,1,'crea.png','png',8041,'image/png',180,180,'Crea','crea','','','','','','','','small|180|180|8318/logo|135|135|7276/','YTowOnt9','YTowOnt9',''),(16,1,21,17,5,3,0,0,0,0,0,1435113558,0,1,'crea.jpg','jpg',364504,'image/jpeg',2392,1595,'Crea','','','','','','','','','large|1440|504|195528/small|348|232|100311/','YTowOnt9','YTowOnt9',''),(17,1,21,18,5,3,0,0,0,0,0,1435113558,0,1,'crealogo.png','png',58907,'image/png',189,189,'Crealogo','','','','','','','','','small|189|189|60129/logo|135|135|32778/','YTowOnt9','YTowOnt9','');
/*!40000 ALTER TABLE `exp_channel_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_member_groups`
--

DROP TABLE IF EXISTS `exp_channel_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `channel_id` int(6) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_member_groups`
--

LOCK TABLES `exp_channel_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_channel_member_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_channel_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_titles`
--

DROP TABLE IF EXISTS `exp_channel_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_titles` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_titles`
--

LOCK TABLES `exp_channel_titles` WRITE;
/*!40000 ALTER TABLE `exp_channel_titles` DISABLE KEYS */;
INSERT INTO `exp_channel_titles` VALUES (15,1,4,3,NULL,'127.0.0.1','Comunidad','comunidad','open','y',0,0,0,0,'y','n',1435008720,'2015','06','22',0,0,20150623234653,0,0),(2,1,4,1,NULL,'127.0.0.1','Herman Marin','herman_marin','open','y',0,0,0,0,'y','n',1434894780,'2015','06','21',0,0,20150621141416,0,0),(20,1,10,3,NULL,'127.0.0.1','Glosario de términos','glosario_de_terminos','open','y',0,0,0,0,'y','n',1435103700,'2015','06','23',0,0,20150623235550,0,0),(4,1,6,1,NULL,'127.0.0.1','￼￼Recepción de postulaciones','recepcion_de_postulaciones','open','y',0,0,0,0,'y','n',1434861480,'2015','06','20',0,0,20150624043855,0,0),(5,1,7,1,NULL,'127.0.0.1','Reunion mensual de miembros','reunion_mensual_de_miembros','open','y',0,0,0,0,'y','n',1434916980,'2015','06','21',0,0,20150621200533,0,0),(6,1,8,1,NULL,'127.0.0.1','Gastón Acurio','gaston_acurio','open','y',0,0,0,0,'y','n',1434918780,'2015','06','21',0,0,20150621205203,0,0),(7,1,8,1,NULL,'127.0.0.1','Mariel Rentería','mariel_renteria','open','y',0,0,0,0,'y','n',1434921720,'2015','06','21',0,0,20150621212544,0,0),(8,1,8,1,NULL,'127.0.0.1','Vania Masías','vania_masias','open','y',0,0,0,0,'y','n',1434922140,'2015','06','21',0,0,20150621213053,0,0),(9,1,8,1,NULL,'127.0.0.1','Alvaro Valdez','alvaro_valdez','open','y',0,0,0,0,'y','n',1434922380,'2015','06','21',0,0,20150621213446,0,0),(10,1,9,1,NULL,'127.0.0.1','Impacto','impacto','open','y',0,0,0,0,'y','n',1434844680,'2015','06','20',0,0,20150621215846,0,0),(11,1,9,1,NULL,'127.0.0.1','Regiones','regiones','open','y',0,0,0,0,'y','n',1434671880,'2015','06','18',0,0,20150621215846,0,0),(12,1,9,1,NULL,'127.0.0.1','Votos registrados','votos_registrados','closed','y',0,0,0,0,'y','n',1434758280,'2015','06','19',0,0,20150624025106,0,0),(13,1,9,1,NULL,'127.0.0.1','Mercado','mercado','open','y',0,0,0,0,'y','n',1434585480,'2015','06','17',0,0,20150624025135,0,0),(14,1,3,3,NULL,'127.0.0.1','Lanzamiento Comunidad Kunan - Meet the Leader Gastón','lanzamiento_comunidad_kunan_meet_the_leader_gaston','open','y',0,0,0,0,'y','n',1435008420,'2015','06','22',0,0,20150622213345,0,0),(16,1,3,3,NULL,'127.0.0.1','Meet the leader Vania Masias','meet_the_leader_vania_masias','open','y',0,0,0,0,'y','n',1435009080,'2015','06','22',0,0,20150622213852,0,0),(17,1,3,3,NULL,'127.0.0.1','Encuentro Comunidad Kunan - compartiendo aprendizajes','encuentro_comunidad_kunan_compartiendo_aprendizajes','open','y',0,0,0,0,'y','n',1435009260,'2015','06','22',0,0,20150622214910,0,0),(18,1,5,3,NULL,'127.0.0.1','Laboratoria','laboratoria','open','y',0,0,0,0,'y','n',1435095120,'2015','06','23',0,0,20150624023723,0,0),(19,1,5,3,NULL,'127.0.0.1','Crea+','crea-mas','closed','y',0,0,0,0,'y','n',1435095300,'2015','06','23',0,0,20150624023934,0,0),(21,1,5,3,NULL,'127.0.0.1','CREA','asociacion_para_la_conservacion_de_la_biodiversidad_amazonica','open','y',0,0,0,0,'y','n',1435113180,'2015','06','23',0,0,20150624044922,0,0),(22,1,6,3,NULL,'127.0.0.1','Fase 1: 20 seleccionados','fase_1_20_seleccionados','open','y',0,0,0,0,'y','n',1434775080,'2015','06','19',0,0,20150624043855,0,0),(23,1,6,3,NULL,'127.0.0.1','Fase 2: 10 semifinalistas','fase_2_10_semifinalistas','open','y',0,0,0,0,'y','n',1434688680,'2015','06','18',0,0,20150624043855,0,0),(24,1,6,3,NULL,'127.0.0.1','Fase 3: 5 finalistas','fase_3_5_finalistas','open','y',0,0,0,0,'y','n',1434602400,'2015','06','17',0,0,20150624044024,0,0),(25,1,6,3,NULL,'127.0.0.1','Fase 4: premiación','fase_4_premiacion','open','y',0,0,0,0,'y','n',1434516000,'2015','06','16',0,0,20150624044024,0,0);
/*!40000 ALTER TABLE `exp_channel_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channels`
--

DROP TABLE IF EXISTS `exp_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channels` (
  `channel_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_name` varchar(40) NOT NULL,
  `channel_title` varchar(100) NOT NULL,
  `channel_url` varchar(100) NOT NULL,
  `channel_description` varchar(255) DEFAULT NULL,
  `channel_lang` varchar(12) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_group` varchar(255) DEFAULT NULL,
  `status_group` int(4) unsigned DEFAULT NULL,
  `deft_status` varchar(50) NOT NULL DEFAULT 'open',
  `field_group` int(4) unsigned DEFAULT NULL,
  `search_excerpt` int(4) unsigned DEFAULT NULL,
  `deft_category` varchar(60) DEFAULT NULL,
  `deft_comments` char(1) NOT NULL DEFAULT 'y',
  `channel_require_membership` char(1) NOT NULL DEFAULT 'y',
  `channel_max_chars` int(5) unsigned DEFAULT NULL,
  `channel_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `channel_allow_img_urls` char(1) NOT NULL DEFAULT 'y',
  `channel_auto_link_urls` char(1) NOT NULL DEFAULT 'n',
  `channel_notify` char(1) NOT NULL DEFAULT 'n',
  `channel_notify_emails` varchar(255) DEFAULT NULL,
  `comment_url` varchar(80) DEFAULT NULL,
  `comment_system_enabled` char(1) NOT NULL DEFAULT 'y',
  `comment_require_membership` char(1) NOT NULL DEFAULT 'n',
  `comment_use_captcha` char(1) NOT NULL DEFAULT 'n',
  `comment_moderate` char(1) NOT NULL DEFAULT 'n',
  `comment_max_chars` int(5) unsigned DEFAULT '5000',
  `comment_timelock` int(5) unsigned NOT NULL DEFAULT '0',
  `comment_require_email` char(1) NOT NULL DEFAULT 'y',
  `comment_text_formatting` char(5) NOT NULL DEFAULT 'xhtml',
  `comment_html_formatting` char(4) NOT NULL DEFAULT 'safe',
  `comment_allow_img_urls` char(1) NOT NULL DEFAULT 'n',
  `comment_auto_link_urls` char(1) NOT NULL DEFAULT 'y',
  `comment_notify` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_authors` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_emails` varchar(255) DEFAULT NULL,
  `comment_expiration` int(4) unsigned NOT NULL DEFAULT '0',
  `search_results_url` varchar(80) DEFAULT NULL,
  `show_button_cluster` char(1) NOT NULL DEFAULT 'y',
  `rss_url` varchar(80) DEFAULT NULL,
  `enable_versioning` char(1) NOT NULL DEFAULT 'n',
  `max_revisions` smallint(4) unsigned NOT NULL DEFAULT '10',
  `default_entry_title` varchar(100) DEFAULT NULL,
  `url_title_prefix` varchar(80) DEFAULT NULL,
  `live_look_template` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_id`),
  KEY `cat_group` (`cat_group`),
  KEY `status_group` (`status_group`),
  KEY `field_group` (`field_group`),
  KEY `channel_name` (`channel_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channels`
--

LOCK TABLES `exp_channels` WRITE;
/*!40000 ALTER TABLE `exp_channels` DISABLE KEYS */;
INSERT INTO `exp_channels` VALUES (4,1,'autor','Autor','http://kunan.dev/',NULL,'en',2,0,1435008720,0,'',1,'open',3,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),(5,1,'proyecto','Proyectos','http://kunan.dev/','','en',2,0,1435113180,0,'6|4|5',1,'open',4,14,'','y','y',NULL,'all','y','n','n','','','y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n','',0,'','y','','n',10,'','',0),(3,1,'la_bitacora','La Bitacora','http://kunan.dev/',NULL,'en',3,0,1435009260,0,'3',1,'open',2,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),(6,1,'crongrama_premio','Crongrama Premio','http://kunan.dev/',NULL,'en',5,0,1434861480,0,'',1,'open',5,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),(7,1,'cronograma_comunidad','Cronograma Comunidad','http://kunan.dev/',NULL,'en',1,0,1434916980,0,'',1,'open',5,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),(8,1,'jurado','Jurado','http://kunan.dev/',NULL,'en',4,0,1434922380,0,'',1,'open',6,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),(9,1,'estadistica','Estadistica','http://kunan.dev/',NULL,'en',3,0,1434844680,0,'',1,'open',7,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),(10,1,'paginas_generales','Paginas Generales','http://kunan.dev/',NULL,'en',1,0,1435103700,0,'',1,'open',8,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0);
/*!40000 ALTER TABLE `exp_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_comment_subscriptions`
--

DROP TABLE IF EXISTS `exp_comment_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_comment_subscriptions` (
  `subscription_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `member_id` int(10) DEFAULT '0',
  `email` varchar(75) DEFAULT NULL,
  `subscription_date` varchar(10) DEFAULT NULL,
  `notification_sent` char(1) DEFAULT 'n',
  `hash` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`subscription_id`),
  KEY `entry_id` (`entry_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_comment_subscriptions`
--

LOCK TABLES `exp_comment_subscriptions` WRITE;
/*!40000 ALTER TABLE `exp_comment_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_comment_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_comments`
--

DROP TABLE IF EXISTS `exp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) DEFAULT '1',
  `entry_id` int(10) unsigned DEFAULT '0',
  `channel_id` int(4) unsigned DEFAULT '1',
  `author_id` int(10) unsigned DEFAULT '0',
  `status` char(1) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(75) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `comment_date` int(10) DEFAULT NULL,
  `edit_date` int(10) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`comment_id`),
  KEY `entry_id` (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `status` (`status`),
  KEY `site_id` (`site_id`),
  KEY `comment_date_idx` (`comment_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_comments`
--

LOCK TABLES `exp_comments` WRITE;
/*!40000 ALTER TABLE `exp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_content_types`
--

DROP TABLE IF EXISTS `exp_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_content_types` (
  `content_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_type_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_content_types`
--

LOCK TABLES `exp_content_types` WRITE;
/*!40000 ALTER TABLE `exp_content_types` DISABLE KEYS */;
INSERT INTO `exp_content_types` VALUES (1,'grid'),(2,'channel');
/*!40000 ALTER TABLE `exp_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_cp_log`
--

DROP TABLE IF EXISTS `exp_cp_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_cp_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `username` varchar(32) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `act_date` int(10) NOT NULL,
  `action` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_cp_log`
--

LOCK TABLES `exp_cp_log` WRITE;
/*!40000 ALTER TABLE `exp_cp_log` DISABLE KEYS */;
INSERT INTO `exp_cp_log` VALUES (1,1,1,'admin','::1',1429833583,'Logged in'),(2,1,1,'admin','::1',1430240051,'Logged in'),(3,1,1,'admin','::1',1430242446,'Logged in'),(4,1,1,'admin','::1',1430250073,'Logged in'),(5,1,1,'admin','::1',1430250623,'Field Group Created:&nbsp;User'),(6,1,1,'admin','::1',1430256230,'Logged in'),(7,1,1,'admin','::1',1430261154,'Logged in'),(8,1,1,'admin','::1',1430262805,'Status Group Created:&nbsp;Drafts'),(9,1,1,'admin','::1',1430263052,'Category Group Created:&nbsp;&nbsp;Staff'),(10,1,1,'admin','::1',1430263071,'Category Group Created:&nbsp;&nbsp;News'),(11,1,1,'admin','::1',1430264041,'Channel Created:&nbsp;&nbsp;News'),(12,1,1,'admin','::1',1430264164,'Channel Created:&nbsp;&nbsp;Page'),(13,1,1,'admin','127.0.0.1',1434806297,'Logged in'),(14,1,1,'admin','127.0.0.1',1434806510,'Logged in'),(15,1,1,'admin','127.0.0.1',1434806710,'Logged in'),(16,1,1,'admin','127.0.0.1',1434836129,'Logged in'),(17,1,1,'admin','127.0.0.1',1434837426,'Field Group Created:&nbsp;La Bitacora'),(18,1,1,'admin','127.0.0.1',1434837970,'Channel Created:&nbsp;&nbsp;La Bitacora'),(19,1,1,'admin','127.0.0.1',1434839864,'Logged in'),(20,1,1,'admin','127.0.0.1',1434840101,'Custom Field Deleted:&nbsp;Imágenes'),(21,1,1,'admin','127.0.0.1',1434892762,'Logged in'),(22,1,1,'admin','127.0.0.1',1434892829,'Custom Field Deleted:&nbsp;Image'),(23,1,1,'admin','127.0.0.1',1434894645,'Field Group Created:&nbsp;Autor'),(24,1,1,'admin','127.0.0.1',1434894651,'Field group Deleted:&nbsp;&nbsp;User'),(25,1,1,'admin','127.0.0.1',1434894735,'Channel Deleted:&nbsp;&nbsp;Page'),(26,1,1,'admin','127.0.0.1',1434894738,'Channel Deleted:&nbsp;&nbsp;News'),(27,1,1,'admin','127.0.0.1',1434894757,'Channel Created:&nbsp;&nbsp;Autor'),(28,1,1,'admin','127.0.0.1',1434896299,'Category Group Deleted:&nbsp;&nbsp;Staff'),(29,1,1,'admin','127.0.0.1',1434896302,'Category Group Deleted:&nbsp;&nbsp;News'),(30,1,1,'admin','127.0.0.1',1434896309,'Category Group Created:&nbsp;&nbsp;Noticias'),(31,1,1,'admin','127.0.0.1',1434898982,'Logged in'),(32,1,1,'admin','127.0.0.1',1434903713,'Logged in'),(33,1,1,'admin','127.0.0.1',1434904089,'Field Group Created:&nbsp;Proyecto'),(34,1,1,'admin','127.0.0.1',1434909862,'Logged in'),(35,1,1,'admin','127.0.0.1',1434910221,'Channel Created:&nbsp;&nbsp;Proyecto'),(36,1,1,'admin','127.0.0.1',1434911065,'Category Group Created:&nbsp;&nbsp;Proyectos'),(37,1,1,'admin','127.0.0.1',1434911320,'Category Group Created:&nbsp;&nbsp;Ubicacion'),(38,1,1,'admin','127.0.0.1',1434915825,'Logged in'),(39,1,1,'admin','127.0.0.1',1434915835,'Field Group Created:&nbsp;Cronograma'),(40,1,1,'admin','127.0.0.1',1434915993,'Channel Created:&nbsp;&nbsp;Crongrama Premio'),(41,1,1,'admin','127.0.0.1',1434916144,'Channel Created:&nbsp;&nbsp;Cronograma Comunidad'),(42,1,1,'admin','127.0.0.1',1434917167,'Category Group Created:&nbsp;&nbsp;Comunidad'),(43,1,1,'admin','127.0.0.1',1434918324,'Field Group Created:&nbsp;Jurado'),(44,1,1,'admin','127.0.0.1',1434918774,'Channel Created:&nbsp;&nbsp;Jurado'),(45,1,1,'admin','127.0.0.1',1434923404,'Field Group Created:&nbsp;Estadistica'),(46,1,1,'admin','127.0.0.1',1434923455,'Channel Created:&nbsp;&nbsp;Estadistica'),(47,1,1,'admin','127.0.0.1',1434932267,'Logged in'),(48,1,1,'admin','127.0.0.1',1434934045,'Member profile created:&nbsp;&nbsp;test'),(49,1,1,'admin','127.0.0.1',1434934263,'Member profile created:&nbsp;&nbsp;herman.marin'),(50,1,1,'admin','127.0.0.1',1434980019,'Logged in'),(51,1,3,'herman.marin','127.0.0.1',1434991480,'Logged in'),(52,1,1,'admin','127.0.0.1',1434995734,'Logged in'),(53,1,3,'herman.marin','127.0.0.1',1435002185,'Logged in'),(54,1,3,'herman.marin','127.0.0.1',1435019899,'Logged in'),(55,1,3,'herman.marin','127.0.0.1',1435074139,'Logged in'),(56,1,3,'herman.marin','127.0.0.1',1435086398,'Logged in'),(57,1,3,'herman.marin','127.0.0.1',1435095154,'Logged in'),(58,1,3,'herman.marin','127.0.0.1',1435096160,'Logged in'),(59,1,3,'herman.marin','127.0.0.1',1435100482,'Field Group Created:&nbsp;General'),(60,1,3,'herman.marin','127.0.0.1',1435100499,'Channel Created:&nbsp;&nbsp;Paginas Generales'),(61,1,3,'herman.marin','127.0.0.1',1435103525,'Logged in'),(62,1,3,'herman.marin','127.0.0.1',1435107521,'Logged in'),(63,1,3,'herman.marin','127.0.0.1',1435109564,'Logged in'),(64,1,3,'herman.marin','127.0.0.1',1435113175,'Logged in'),(65,1,3,'herman.marin','127.0.0.1',1435113471,'Screen name was changed to:&nbsp;&nbsp;Administrador'),(66,1,3,'herman.marin','127.0.0.1',1435120279,'Logged in'),(67,1,3,'herman.marin','127.0.0.1',1435172103,'Logged in'),(68,1,3,'herman.marin','127.0.0.1',1435172458,'Logged in'),(69,1,3,'herman.marin','127.0.0.1',1435173717,'Logged in'),(70,1,3,'herman.marin','127.0.0.1',1435180246,'Logged in');
/*!40000 ALTER TABLE `exp_cp_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_cp_search_index`
--

DROP TABLE IF EXISTS `exp_cp_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_cp_search_index` (
  `search_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(20) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `access` varchar(50) DEFAULT NULL,
  `keywords` text,
  PRIMARY KEY (`search_id`),
  FULLTEXT KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_cp_search_index`
--

LOCK TABLES `exp_cp_search_index` WRITE;
/*!40000 ALTER TABLE `exp_cp_search_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_cp_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_developer_log`
--

DROP TABLE IF EXISTS `exp_developer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_developer_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int(10) unsigned NOT NULL,
  `viewed` char(1) NOT NULL DEFAULT 'n',
  `description` text,
  `function` varchar(100) DEFAULT NULL,
  `line` int(10) unsigned DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `deprecated_since` varchar(10) DEFAULT NULL,
  `use_instead` varchar(100) DEFAULT NULL,
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `template_name` varchar(100) DEFAULT NULL,
  `template_group` varchar(100) DEFAULT NULL,
  `addon_module` varchar(100) DEFAULT NULL,
  `addon_method` varchar(100) DEFAULT NULL,
  `snippets` text,
  `hash` char(32) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_developer_log`
--

LOCK TABLES `exp_developer_log` WRITE;
/*!40000 ALTER TABLE `exp_developer_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_developer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_cache`
--

DROP TABLE IF EXISTS `exp_email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `total_sent` int(6) unsigned NOT NULL,
  `from_name` varchar(70) NOT NULL,
  `from_email` varchar(75) NOT NULL,
  `recipient` text NOT NULL,
  `cc` text NOT NULL,
  `bcc` text NOT NULL,
  `recipient_array` mediumtext NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  `plaintext_alt` mediumtext NOT NULL,
  `mailinglist` char(1) NOT NULL DEFAULT 'n',
  `mailtype` varchar(6) NOT NULL,
  `text_fmt` varchar(40) NOT NULL,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `priority` char(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_cache`
--

LOCK TABLES `exp_email_cache` WRITE;
/*!40000 ALTER TABLE `exp_email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_cache_mg`
--

DROP TABLE IF EXISTS `exp_email_cache_mg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_cache_mg` (
  `cache_id` int(6) unsigned NOT NULL,
  `group_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_cache_mg`
--

LOCK TABLES `exp_email_cache_mg` WRITE;
/*!40000 ALTER TABLE `exp_email_cache_mg` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_cache_mg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_cache_ml`
--

DROP TABLE IF EXISTS `exp_email_cache_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_cache_ml` (
  `cache_id` int(6) unsigned NOT NULL,
  `list_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_cache_ml`
--

LOCK TABLES `exp_email_cache_ml` WRITE;
/*!40000 ALTER TABLE `exp_email_cache_ml` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_cache_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_console_cache`
--

DROP TABLE IF EXISTS `exp_email_console_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_console_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `recipient` varchar(75) NOT NULL,
  `recipient_name` varchar(50) NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_console_cache`
--

LOCK TABLES `exp_email_console_cache` WRITE;
/*!40000 ALTER TABLE `exp_email_console_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_console_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_tracker`
--

DROP TABLE IF EXISTS `exp_email_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_tracker` (
  `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email_date` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_ip` varchar(45) NOT NULL,
  `sender_email` varchar(75) NOT NULL,
  `sender_username` varchar(50) NOT NULL,
  `number_recipients` int(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_tracker`
--

LOCK TABLES `exp_email_tracker` WRITE;
/*!40000 ALTER TABLE `exp_email_tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_entry_versioning`
--

DROP TABLE IF EXISTS `exp_entry_versioning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_entry_versioning` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `version_date` int(10) NOT NULL,
  `version_data` mediumtext NOT NULL,
  PRIMARY KEY (`version_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_entry_versioning`
--

LOCK TABLES `exp_entry_versioning` WRITE;
/*!40000 ALTER TABLE `exp_entry_versioning` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_entry_versioning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_extensions`
--

DROP TABLE IF EXISTS `exp_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_extensions` (
  `extension_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL DEFAULT '',
  `method` varchar(50) NOT NULL DEFAULT '',
  `hook` varchar(50) NOT NULL DEFAULT '',
  `settings` text NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '10',
  `version` varchar(10) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_extensions`
--

LOCK TABLES `exp_extensions` WRITE;
/*!40000 ALTER TABLE `exp_extensions` DISABLE KEYS */;
INSERT INTO `exp_extensions` VALUES (1,'Rte_ext','myaccount_nav_setup','myaccount_nav_setup','',10,'1.0.1','y'),(2,'Rte_ext','cp_menu_array','cp_menu_array','',10,'1.0.1','y'),(3,'Nsm_htaccess_generator_ext','entry_submission_end','entry_submission_end','a:0:{}',10,'1.1.6','y'),(4,'Nsm_htaccess_generator_ext','update_template_end','update_template_end','a:0:{}',10,'1.1.6','y'),(5,'Channel_images_ext','wygwam_config','wygwam_config','a:0:{}',100,'5.4.19','y'),(6,'Channel_images_ext','wygwam_tb_groups','wygwam_tb_groups','a:0:{}',100,'5.4.19','y'),(7,'Channel_images_ext','wygwam_before_display','wygwam_before_display','a:0:{}',100,'5.4.19','y'),(8,'Channel_images_ext','wygwam_before_save','wygwam_before_save','a:0:{}',100,'5.4.19','y'),(9,'Channel_images_ext','wygwam_before_replace','wygwam_before_replace','a:0:{}',100,'5.4.19','y'),(10,'Channel_images_ext','editor_before_display','editor_before_display','a:0:{}',100,'5.4.19','y'),(11,'Channel_images_ext','editor_before_save','editor_before_save','a:0:{}',100,'5.4.19','y'),(12,'Channel_images_ext','editor_before_replace','editor_before_replace','a:0:{}',100,'5.4.19','y'),(13,'Low_seg2cat_ext','sessions_end','sessions_end','a:7:{s:9:\"all_sites\";s:1:\"n\";s:15:\"category_groups\";a:0:{}s:11:\"uri_pattern\";s:0:\"\";s:16:\"set_all_segments\";s:1:\"y\";s:17:\"ignore_pagination\";s:1:\"n\";s:16:\"parse_file_paths\";s:1:\"n\";i:1;a:6:{s:9:\"all_sites\";s:1:\"y\";s:15:\"category_groups\";a:0:{}s:11:\"uri_pattern\";s:0:\"\";s:16:\"set_all_segments\";s:1:\"y\";s:17:\"ignore_pagination\";s:1:\"n\";s:16:\"parse_file_paths\";s:1:\"n\";}}',5,'2.8.1','y'),(14,'Low_seg2cat_ext','template_fetch_template','template_fetch_template','a:7:{s:9:\"all_sites\";s:1:\"n\";s:15:\"category_groups\";a:0:{}s:11:\"uri_pattern\";s:0:\"\";s:16:\"set_all_segments\";s:1:\"y\";s:17:\"ignore_pagination\";s:1:\"n\";s:16:\"parse_file_paths\";s:1:\"n\";i:1;a:6:{s:9:\"all_sites\";s:1:\"y\";s:15:\"category_groups\";a:0:{}s:11:\"uri_pattern\";s:0:\"\";s:16:\"set_all_segments\";s:1:\"y\";s:17:\"ignore_pagination\";s:1:\"n\";s:16:\"parse_file_paths\";s:1:\"n\";}}',5,'2.8.1','y'),(15,'Fbc_ext','insert_comment_end','insert_comment_end','a:0:{}',10,'3.0.0','y'),(16,'Fbc_ext','insert_rating_end','insert_rating_end','a:0:{}',10,'3.0.0','y'),(17,'Fbc_ext','status_update','friends_status_update_status','a:0:{}',10,'3.0.0','y'),(18,'User_ext','insert_comment_start','insert_comment_start','a:0:{}',5,'3.5.3','y'),(19,'User_ext','insert_rating_start','insert_rating_start','a:0:{}',5,'3.5.3','y'),(20,'User_ext','paypalpro_payment_start','paypalpro_payment_start','a:0:{}',5,'3.5.3','y'),(21,'User_ext','cp_members_validate_members','cp_members_validate_members','a:0:{}',1,'3.5.3','y'),(22,'User_ext','delete_entries_start','delete_entries_start','a:0:{}',5,'3.5.3','y');
/*!40000 ALTER TABLE `exp_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_fbc_params`
--

DROP TABLE IF EXISTS `exp_fbc_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_fbc_params` (
  `params_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `entry_date` int(10) NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`params_id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_fbc_params`
--

LOCK TABLES `exp_fbc_params` WRITE;
/*!40000 ALTER TABLE `exp_fbc_params` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_fbc_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_field_formatting`
--

DROP TABLE IF EXISTS `exp_field_formatting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_field_formatting` (
  `formatting_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned NOT NULL,
  `field_fmt` varchar(40) NOT NULL,
  PRIMARY KEY (`formatting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_field_formatting`
--

LOCK TABLES `exp_field_formatting` WRITE;
/*!40000 ALTER TABLE `exp_field_formatting` DISABLE KEYS */;
INSERT INTO `exp_field_formatting` VALUES (35,9,'markdown'),(34,9,'br'),(33,9,'none'),(32,8,'xhtml'),(31,8,'markdown'),(30,8,'br'),(29,8,'none'),(9,3,'none'),(10,3,'br'),(11,3,'markdown'),(12,3,'xhtml'),(13,4,'none'),(14,4,'br'),(15,4,'markdown'),(16,4,'xhtml'),(23,6,'markdown'),(22,6,'br'),(21,6,'none'),(24,6,'xhtml'),(38,10,'br'),(37,10,'none'),(36,9,'xhtml'),(39,10,'markdown'),(40,10,'xhtml'),(41,11,'none'),(42,11,'br'),(43,11,'markdown'),(44,11,'xhtml'),(45,12,'none'),(46,12,'br'),(47,12,'markdown'),(48,12,'xhtml'),(49,13,'none'),(50,13,'br'),(51,13,'markdown'),(52,13,'xhtml'),(53,14,'none'),(54,14,'br'),(55,14,'markdown'),(56,14,'xhtml'),(57,15,'none'),(58,15,'br'),(59,15,'markdown'),(60,15,'xhtml'),(61,16,'none'),(62,16,'br'),(63,16,'markdown'),(64,16,'xhtml'),(65,17,'none'),(66,17,'br'),(67,17,'markdown'),(68,17,'xhtml'),(69,18,'none'),(70,18,'br'),(71,18,'markdown'),(72,18,'xhtml'),(73,19,'none'),(74,19,'br'),(75,19,'markdown'),(76,19,'xhtml'),(77,20,'none'),(78,20,'br'),(79,20,'markdown'),(80,20,'xhtml'),(81,21,'none'),(82,21,'br'),(83,21,'markdown'),(84,21,'xhtml'),(85,22,'none'),(86,22,'br'),(87,22,'markdown'),(88,22,'xhtml'),(89,23,'none'),(90,23,'br'),(91,23,'markdown'),(92,23,'xhtml'),(93,24,'none'),(94,24,'br'),(95,24,'markdown'),(96,24,'xhtml'),(97,25,'none'),(98,25,'br'),(99,25,'markdown'),(100,25,'xhtml'),(101,26,'none'),(102,26,'br'),(103,26,'markdown'),(104,26,'xhtml'),(105,27,'none'),(106,27,'br'),(107,27,'markdown'),(108,27,'xhtml'),(109,28,'none'),(110,28,'br'),(111,28,'markdown'),(112,28,'xhtml'),(113,29,'none'),(114,29,'br'),(115,29,'markdown'),(116,29,'xhtml'),(117,30,'none'),(118,30,'br'),(119,30,'markdown'),(120,30,'xhtml'),(121,31,'none'),(122,31,'br'),(123,31,'markdown'),(124,31,'xhtml'),(125,32,'none'),(126,32,'br'),(127,32,'markdown'),(128,32,'xhtml'),(129,33,'none'),(130,33,'br'),(131,33,'markdown'),(132,33,'xhtml'),(133,34,'none'),(134,34,'br'),(135,34,'markdown'),(136,34,'xhtml'),(137,35,'none'),(138,35,'br'),(139,35,'markdown'),(140,35,'xhtml'),(141,36,'none'),(142,36,'br'),(143,36,'markdown'),(144,36,'xhtml'),(145,37,'none'),(146,37,'br'),(147,37,'markdown'),(148,37,'xhtml'),(149,38,'none'),(150,38,'br'),(151,38,'markdown'),(152,38,'xhtml');
/*!40000 ALTER TABLE `exp_field_formatting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_field_groups`
--

DROP TABLE IF EXISTS `exp_field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_field_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_field_groups`
--

LOCK TABLES `exp_field_groups` WRITE;
/*!40000 ALTER TABLE `exp_field_groups` DISABLE KEYS */;
INSERT INTO `exp_field_groups` VALUES (4,1,'Proyecto'),(2,1,'La Bitacora'),(3,1,'Autor'),(5,1,'Cronograma'),(6,1,'Jurado'),(7,1,'Estadistica'),(8,1,'General');
/*!40000 ALTER TABLE `exp_field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_fieldtypes`
--

DROP TABLE IF EXISTS `exp_fieldtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_fieldtypes` (
  `fieldtype_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `version` varchar(12) NOT NULL,
  `settings` text,
  `has_global_settings` char(1) DEFAULT 'n',
  PRIMARY KEY (`fieldtype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_fieldtypes`
--

LOCK TABLES `exp_fieldtypes` WRITE;
/*!40000 ALTER TABLE `exp_fieldtypes` DISABLE KEYS */;
INSERT INTO `exp_fieldtypes` VALUES (1,'select','1.0','YTowOnt9','n'),(2,'text','1.0','YTowOnt9','n'),(3,'textarea','1.0','YTowOnt9','n'),(4,'date','1.0','YTowOnt9','n'),(5,'file','1.0','YTowOnt9','n'),(6,'grid','1.0','YTowOnt9','n'),(7,'multi_select','1.0','YTowOnt9','n'),(8,'checkboxes','1.0','YTowOnt9','n'),(9,'radio','1.0','YTowOnt9','n'),(10,'relationship','1.0','YTowOnt9','n'),(11,'rte','1.0','YTowOnt9','n'),(12,'freeform','4.2.2','YTowOnt9','n'),(13,'channel_images','5.4.19','YTowOnt9','n');
/*!40000 ALTER TABLE `exp_fieldtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_categories`
--

DROP TABLE IF EXISTS `exp_file_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_file_categories` (
  `file_id` int(10) unsigned DEFAULT NULL,
  `cat_id` int(10) unsigned DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `is_cover` char(1) DEFAULT 'n',
  KEY `file_id` (`file_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_categories`
--

LOCK TABLES `exp_file_categories` WRITE;
/*!40000 ALTER TABLE `exp_file_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_dimensions`
--

DROP TABLE IF EXISTS `exp_file_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_file_dimensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `upload_location_id` int(4) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `short_name` varchar(255) DEFAULT '',
  `resize_type` varchar(50) DEFAULT '',
  `width` int(10) DEFAULT '0',
  `height` int(10) DEFAULT '0',
  `watermark_id` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_location_id` (`upload_location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_dimensions`
--

LOCK TABLES `exp_file_dimensions` WRITE;
/*!40000 ALTER TABLE `exp_file_dimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_dimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_watermarks`
--

DROP TABLE IF EXISTS `exp_file_watermarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_file_watermarks` (
  `wm_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `wm_name` varchar(80) DEFAULT NULL,
  `wm_type` varchar(10) DEFAULT 'text',
  `wm_image_path` varchar(100) DEFAULT NULL,
  `wm_test_image_path` varchar(100) DEFAULT NULL,
  `wm_use_font` char(1) DEFAULT 'y',
  `wm_font` varchar(30) DEFAULT NULL,
  `wm_font_size` int(3) unsigned DEFAULT NULL,
  `wm_text` varchar(100) DEFAULT NULL,
  `wm_vrt_alignment` varchar(10) DEFAULT 'top',
  `wm_hor_alignment` varchar(10) DEFAULT 'left',
  `wm_padding` int(3) unsigned DEFAULT NULL,
  `wm_opacity` int(3) unsigned DEFAULT NULL,
  `wm_hor_offset` int(4) unsigned DEFAULT NULL,
  `wm_vrt_offset` int(4) unsigned DEFAULT NULL,
  `wm_x_transp` int(4) DEFAULT NULL,
  `wm_y_transp` int(4) DEFAULT NULL,
  `wm_font_color` varchar(7) DEFAULT NULL,
  `wm_use_drop_shadow` char(1) DEFAULT 'y',
  `wm_shadow_distance` int(3) unsigned DEFAULT NULL,
  `wm_shadow_color` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`wm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_watermarks`
--

LOCK TABLES `exp_file_watermarks` WRITE;
/*!40000 ALTER TABLE `exp_file_watermarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_watermarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_files`
--

DROP TABLE IF EXISTS `exp_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_files` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `upload_location_id` int(4) unsigned DEFAULT '0',
  `rel_path` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int(10) DEFAULT '0',
  `description` text,
  `credit` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `uploaded_by_member_id` int(10) unsigned DEFAULT '0',
  `upload_date` int(10) DEFAULT NULL,
  `modified_by_member_id` int(10) unsigned DEFAULT '0',
  `modified_date` int(10) DEFAULT NULL,
  `file_hw_original` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_id`),
  KEY `upload_location_id` (`upload_location_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_files`
--

LOCK TABLES `exp_files` WRITE;
/*!40000 ALTER TABLE `exp_files` DISABLE KEYS */;
INSERT INTO `exp_files` VALUES (1,1,'ey.jpg',1,'/Users/hermanmarin/Documents/websites/kunan/images/bitacora/ey.jpg','image/jpeg','ey.jpg',4147,NULL,NULL,NULL,1,1434840484,1,1434840484,'137 218'),(2,1,'gaston.jpg',1,'/Users/hermanmarin/Documents/websites/kunan/images/bitacora/gaston.jpg','image/jpeg','gaston.jpg',14561,NULL,NULL,NULL,1,1434840508,1,1434840508,'171 196'),(3,1,'herman.png',2,'/Users/hermanmarin/Documents/websites/kunan/images/autor/herman.png','image/png','herman.png',8991,NULL,NULL,NULL,1,1434896053,1,1434896053,'58 58'),(4,1,'logo.png',2,'/Users/hermanmarin/Documents/websites/kunan/images/autor/logo.png','image/png','logo.png',9656,NULL,NULL,NULL,3,1435008806,3,1435008806,'163 142'),(5,1,'Kunan_Bitacora2.png',2,'/Users/hermanmarin/Documents/websites/kunan/images/autor/Kunan_Bitacora2.png','image/png','Kunan_Bitacora2.png',2406,NULL,NULL,NULL,3,1435103209,3,1435103209,'129 129');
/*!40000 ALTER TABLE `exp_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_composer_layouts`
--

DROP TABLE IF EXISTS `exp_freeform_composer_layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_composer_layouts` (
  `composer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `composer_data` text,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `preview` char(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`composer_id`),
  KEY `preview` (`preview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_composer_layouts`
--

LOCK TABLES `exp_freeform_composer_layouts` WRITE;
/*!40000 ALTER TABLE `exp_freeform_composer_layouts` DISABLE KEYS */;
INSERT INTO `exp_freeform_composer_layouts` VALUES (1,'{\"rows\":[[[{\"required\":\"no\",\"type\":\"nonfield_title\"}]],[[{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<h3>Datos del representante de la entidad postulante<\\/h3>\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"2\"}],[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"1\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"7\"}],[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"8\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"6\"}],[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"5\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"9\"}],[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"10\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"11\"}],[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"12\"}]],[[{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<h3> Datos de la entidad postulante <\\/h3>\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"13\"}],[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"14\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"15\"}],[{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"Si responde \\u201cS\\u00cd\\u201d, llena las siguientes opciones:\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"16\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"17\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"18\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"19\"}],[{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"\\u00c1mbito de intervenci\\u00f3n:<br>\\n\\u00bfCu\\u00e1les son las regiones, provincia y distritos donde se sit\\u00faan sus operaciones a lo largo de toda la cadena del negocio?\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"20\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"21\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"22\"}]],[[{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<h3>Informaci\\u00f3n estrat\\u00e9gica de la entidad postulante<\\/h3>\\n<p><em>Esta informaci\\u00f3n es confidencial y no ser\\u00e1 p\\u00fablica en ninguna etapa del proceso de evaluaci\\u00f3n.<\\/em><\\/p>\"}]],[[{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<h4> Conocimiento sobre el entorno y la problem\\u00e1tica:  <\\/h4>\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"23\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"24\"},{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<h4>Claridad sobre la propuesta de valor<\\/h4>\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"25\"},{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<h4>Detalle c\\u00f3mo funciona su organizaci\\u00f3n considerando toda la cadena del negocio.<\\/h4>\\n<p>Ejemplo:<br> \\n<em>\\u201cMi modelo consiste en convocar mujeres recicladoras entre 20 y 45 a\\u00f1os. Las capacito en artesan\\u00eda elaborada a base de pl\\u00e1sticos. Luego, las contrato por 4 horas diarias de trabajo para elaborar los productos. Empezamos la venta on-line de productos. Cuando completamos el capital de 3mil soles de utilidad por artesana, pasamos a un contrato de tiempo completo y las recicladoras se convierten en ser artistas y empresarias. A partir de este momento, el 25% de las ventas de sus productos se reinvierten en nuestra organizaci\\u00f3n, para sostenerla y convocar a una nueva promoci\\u00f3n de recicladoras\\u201d.<\\/em><\\/p>\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"26\"},{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<h4>Detalle la cualidad de los servicios o productos que ofrece y c\\u00f3mo destacan en el mercado.<\\/h4>\\n<p><em>En base al ejemplo anterior: \\u201cMi organizaci\\u00f3n ofrece el servicio de capacitaci\\u00f3n a recicladoras con un m\\u00e9todo efectivo que las prepara en s\\u00f3lo 3 meses. Tambi\\u00e9n ofrezco artesan\\u00eda hecha a base de pl\\u00e1stico que se distinguen por usar dise\\u00f1os contempor\\u00e1neos en empaques tambi\\u00e9n reusables\\u201d.<\\/em><\\/p>\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"27\"},{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<h4>\\u00bfC\\u00f3mo miden el impacto social de su iniciativa?<\\/h4>\\n<p>Describa el mecanismo, los 2 principales indicadores y la medici\\u00f3n actual de los mismos.<\\/p>\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"28\"},{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<h4>Exponga c\\u00f3mo su organizaci\\u00f3n innova, qu\\u00e9 procesos y elementos de su modelo son diferentes y competitivos en el mercado.<\\/h4>\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"29\"},{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<h4> Recursos humanos<\\/h4>\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"30\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"31\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"34\"}],[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"32\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"33\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"35\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"36\"}]],[[{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<h4> Seleccione una o m\\u00e1s opciones que describan c\\u00f3mo est\\u00e1 financiando su organizaci\\u00f3n. <\\/h4>\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"37\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"38\"}],[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"39\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"40\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"41\"}]],[[{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<h3> Sobre el futuro de la organizaci\\u00f3n postulante <\\/h3>\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"42\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"43\"}]],[[{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<h3> Informaci\\u00f3n complementaria <\\/h3>\"}]],[[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"44\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"45\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"46\"},{\"required\":\"yes\",\"type\":\"field\",\"fieldId\":\"47\"},{\"required\":\"yes\",\"type\":\"field\",\"fieldId\":\"48\"},{\"required\":\"yes\",\"type\":\"field\",\"fieldId\":\"3\"}],[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"49\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"50\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"51\"}]],[[{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<h4>Sube video a youtube de dos minutos y de producci\\u00f3n simple en el que respondas a las siguientes preguntas:<\\/h4>\\n<ul>\\n<li>\\u00bfCu\\u00e1l es el sue\\u00f1o que quieres hacer realidad con tu iniciativa?<\\/li>\\n<li>\\u00bfCu\\u00e1l es el principal desaf\\u00edo del modelo de tu emprendimiento?<\\/li>\\n<li>\\u00bfDe qu\\u00e9 manera el premio Kunan puede ayudarte a superar ese desaf\\u00edo?<\\/li>\\n<\\/ul>\"},{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"52\"},{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<p>\\n*Este video ser\\u00e1 p\\u00fablico en una de las etapas de selecci\\u00f3n.<br>\\n*La Edici\\u00f3n y Formato, no ser\\u00e1n parte del criterio de evaluaci\\u00f3n.<br>\\n*El excedente a los 2 minutos no ser\\u00e1 visto.\\n<\\/p>\"}]],[[{\"required\":\"no\",\"type\":\"nonfield_paragraph\",\"html\":\"<h3>Declaraci\\u00f3n Jurada<\\/h3> \\n<p>Por medio del presente formulario declaro a t\\u00edtulo personal y en representaci\\u00f3n de la organizaci\\u00f3n que represento ante este Premio, que toda la informaci\\u00f3n proporcionada para el Premio Kunan, es oficial, cierta y fidedigna.  En tal sentido, autorizo a los organizadores del Premio para que en cualquier etapa del mismo extiendan cualquier consulta acerca de la informaci\\u00f3n prove\\u00edda y\\/o realicen la acci\\u00f3n que estimen conveniente para la correcta verificaci\\u00f3n de los datos y antecedentes presentados. De presumirse de manera suficiente o se compruebe la falsedad y\\/o inexactitud de la informaci\\u00f3n prove\\u00edda por parte de nuestra Organizaci\\u00f3n y\\/o de su representante oficial ante el Premio, se aceptamos que se proceda a la descalificaci\\u00f3n inmediata y a la anulaci\\u00f3n total de la postulaci\\u00f3n presentada. Dejamos expresa constancia que conocemos, respetamos y aceptamos las Bases y lineamientos del Premio Kunan organizado por Telef\\u00f3nica del Per\\u00fa y Global Shapers Lima Hub.<\\/p>\"},{\"required\":\"yes\",\"type\":\"field\",\"fieldId\":\"53\"},{\"required\":\"no\",\"type\":\"nonfield_submit\",\"html\":\"Guardar\"}]]],\"fields\":[\"2\",\"1\",\"7\",\"8\",\"6\",\"5\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"34\",\"32\",\"33\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"3\",\"49\",\"50\",\"51\",\"52\",\"53\"]}',1,'n',1434996455,1435184832),(2,'{\"rows\":[[[{\"required\":\"no\",\"type\":\"nonfield_title\"}],[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"54\"}],[{\"required\":\"no\",\"type\":\"field\",\"fieldId\":\"55\"}],[{\"required\":\"no\",\"type\":\"nonfield_submit\",\"html\":\"Enviar\"}]]],\"fields\":[\"54\",\"55\"]}',1,'n',1435121084,0);
/*!40000 ALTER TABLE `exp_freeform_composer_layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_composer_templates`
--

DROP TABLE IF EXISTS `exp_freeform_composer_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_composer_templates` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `template_name` varchar(150) NOT NULL DEFAULT 'default',
  `template_label` varchar(150) NOT NULL DEFAULT 'default',
  `template_description` text,
  `enable_template` char(1) NOT NULL DEFAULT 'y',
  `template_data` text,
  `param_data` text,
  PRIMARY KEY (`template_id`),
  KEY `template_name` (`template_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_composer_templates`
--

LOCK TABLES `exp_freeform_composer_templates` WRITE;
/*!40000 ALTER TABLE `exp_freeform_composer_templates` DISABLE KEYS */;
INSERT INTO `exp_freeform_composer_templates` VALUES (1,1,'composer_formulario_registro','Formulario de Registro','','y','<style type=\"text/css\">\n	.ff_composer * {\n		-webkit-box-sizing	: border-box;\n		-moz-box-sizing		: border-box;\n		box-sizing			: border-box;\n	}\n	.ff_composer .line,\n	.ff_composer .line:last-child,\n	.ff_composer .last_unit{overflow:hidden;}\n	.ff_composer .unit{float:left; padding:10px;}\n	.ff_composer .unit_right{float:right;}\n	.ff_composer .size1of1{float:none;}\n	.ff_composer .size1of2{width:50%;}\n	.ff_composer .size1of3{width:33.33333%;}\n	.ff_composer .size2of3{width:66.66666%;}\n	.ff_composer .size1of4{width:25%;}\n	.ff_composer .size3of4{width:75%;}\n	.ff_composer .line:last-child,\n	.ff_composer .last_unit{float:none;width:auto;}\n	.ff_composer p,\n	.ff_composer h1 { color:#3E3F40;},\n	.ff_composer h2,\n	.ff_composer h3,\n	.ff_composer h4,\n	.ff_composer h5,\n	.ff_composer h6 {margin-top: 0;}\n	.ff_composer .required_item {margin-left: 4px; color:red;}\n	.ff_composer textarea,\n	.ff_composer input[type=\"text\"],\n	.ff_composer input[type=\"email\"],\n	.ff_composer input[type=\"url\"],\n	.ff_composer input[type=\"number\"],\n	.ff_composer input[type=\"password\"],\n	.ff_composer input[type=\"search\"] {width: 75%;}\n	.ff_composer ul.dynamic_recipients {list-style: none; padding:0;}\n	.ff_composer .field_label {font-weight: bold;}\n</style>\n<div class=\"ff_composer\">\n{composer:page}\n	{composer:rows}\n			<div class=\"line\">\n		{composer:columns}\n				<div class=\"unit size1of{composer:column_total}\">\n				{if composer:field_total == 0}\n					 \n				{/if}\n			{composer:fields}\n				{if composer:field_label}\n					{if composer:field_type == \'nonfield_captcha\'}\n						{if freeform:captcha}\n						<p>\n							<strong>{composer:field_label}</strong>\n						</p>\n						{/if}\n					{if:else}\n						<label class=\"field_label\" {if composer:field_name != \'\'}for=\"freeform_{composer:field_name}\"{/if}>\n							{composer:field_label}{if composer:field_required}<span class=\"required_item\">*</span>{/if}\n						</label>\n					{/if}\n				{/if}\n				{if composer:field_output}\n					{if composer:field_type == \'nonfield_title\'}\n						<h2>{composer:field_output}</h2>\n					{if:elseif composer:field_type == \'nonfield_captcha\'}\n						{if freeform:captcha}\n								{freeform:captcha}<br />\n								<input type=\"text\" name=\"captcha\" value=\"\"\n									   size=\"20\"   maxlength=\"20\" style=\"width:140px;\" />\n						{/if}\n					{if:else}\n						<p>{composer:field_output}</p>\n					{/if}\n				{/if}\n			{/composer:fields}\n				</div>\n		{/composer:columns}\n			</div>\n	{/composer:rows}\n{/composer:page}\n</div>\n','{\"max-length\":\"200\"}'),(2,1,'sumate','Sumate','','y','<style type=\"text/css\">\n	.ff_composer * {\n		-webkit-box-sizing	: border-box;\n		-moz-box-sizing		: border-box;\n		box-sizing			: border-box;\n	}\n	.ff_composer .line,\n	.ff_composer .line:last-child,\n	.ff_composer .last_unit{overflow:hidden;}\n	.ff_composer .unit{float:left; padding:10px;}\n	.ff_composer .unit_right{float:right;}\n	.ff_composer .size1of1{float:none;}\n	.ff_composer .size1of2{width:50%;}\n	.ff_composer .size1of3{width:33.33333%;}\n	.ff_composer .size2of3{width:66.66666%;}\n	.ff_composer .size1of4{width:25%;}\n	.ff_composer .size3of4{width:75%;}\n	.ff_composer .line:last-child,\n	.ff_composer .last_unit{float:none;width:auto;}\n	.ff_composer p,\n	.ff_composer h1,\n	.ff_composer h2,\n	.ff_composer h3,\n	.ff_composer h4,\n	.ff_composer h5,\n	.ff_composer h6 {margin-top: 0;}\n	.ff_composer .required_item {margin-left: 4px; color:red;}\n	.ff_composer textarea,\n	.ff_composer input[type=\"text\"],\n	.ff_composer input[type=\"email\"],\n	.ff_composer input[type=\"url\"],\n	.ff_composer input[type=\"number\"],\n	.ff_composer input[type=\"password\"],\n	.ff_composer input[type=\"search\"] {width: 75%;}\n	.ff_composer ul.dynamic_recipients {list-style: none; padding:0;}\n	.ff_composer .field_label {font-weight: bold;}\n</style>\n<div class=\"ff_composer\">\n{composer:page}\n	{composer:rows}\n			<div class=\"line\">\n		{composer:columns}\n				<div class=\"unit size1of{composer:column_total}\">\n				{if composer:field_total == 0}\n					 \n				{/if}\n			{composer:fields}\n				{if composer:field_label}\n					{if composer:field_type == \'nonfield_captcha\'}\n						{if freeform:captcha}\n						<p>\n							<strong>{composer:field_label}</strong>\n						</p>\n						{/if}\n					{if:else}\n						<label class=\"field_label\" {if composer:field_name != \'\'}for=\"freeform_{composer:field_name}\"{/if}>\n							{composer:field_label}{if composer:field_required}<span class=\"required_item\">*</span>{/if}\n						</label>\n					{/if}\n				{/if}\n				{if composer:field_output}\n					{if composer:field_type == \'nonfield_title\'}\n						<h2>{composer:field_output}</h2>\n					{if:elseif composer:field_type == \'nonfield_captcha\'}\n						{if freeform:captcha}\n								{freeform:captcha}<br />\n								<input type=\"text\" name=\"captcha\" value=\"\"\n									   size=\"20\"   maxlength=\"20\" style=\"width:140px;\" />\n						{/if}\n					{if:else}\n						<p>{composer:field_output}</p>\n					{/if}\n				{/if}\n			{/composer:fields}\n				</div>\n		{/composer:columns}\n			</div>\n	{/composer:rows}\n{/composer:page}\n</div>\n','[]');
/*!40000 ALTER TABLE `exp_freeform_composer_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_email_logs`
--

DROP TABLE IF EXISTS `exp_freeform_email_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_email_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(250) NOT NULL DEFAULT 'user',
  `success` char(1) NOT NULL DEFAULT 'y',
  `from` text,
  `from_name` text,
  `to` text,
  `subject` text,
  `message` text,
  `debug_info` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_email_logs`
--

LOCK TABLES `exp_freeform_email_logs` WRITE;
/*!40000 ALTER TABLE `exp_freeform_email_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_freeform_email_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_fields`
--

DROP TABLE IF EXISTS `exp_freeform_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_fields` (
  `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `field_name` varchar(150) NOT NULL DEFAULT 'default',
  `field_label` varchar(150) NOT NULL DEFAULT 'default',
  `field_type` varchar(50) NOT NULL DEFAULT 'text',
  `settings` text,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `required` char(1) NOT NULL DEFAULT 'n',
  `submissions_page` char(1) NOT NULL DEFAULT 'y',
  `moderation_page` char(1) NOT NULL DEFAULT 'y',
  `composer_use` char(1) NOT NULL DEFAULT 'y',
  `field_description` text,
  PRIMARY KEY (`field_id`),
  KEY `field_name` (`field_name`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_fields`
--

LOCK TABLES `exp_freeform_fields` WRITE;
/*!40000 ALTER TABLE `exp_freeform_fields` DISABLE KEYS */;
INSERT INTO `exp_freeform_fields` VALUES (1,1,'nombres','Nombres','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1434808921,1434996628,'n','y','y','y','This field contains the user\'s first name.'),(2,1,'apellidos','Apellidos','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1434808921,1434996585,'n','y','y','y','This field contains the user\'s last name.'),(3,1,'email','Correo Electrónico','text','{\"field_length\":\"150\",\"field_content_type\":\"email\",\"disallow_html_rendering\":\"y\"}',1,1434808921,1435077783,'n','y','y','y','A basic email field for collecting stuff like an email address.'),(4,1,'user_message','Message','textarea','{\"field_ta_rows\":6}',1,1434808921,0,'n','y','y','y','This field contains the user\'s message.'),(5,1,'genero','Género','radio','{\"list_type\":\"list\",\"field_list_items\":[\"Masculino\",\"Femenino\"]}',1,1434996682,0,'n','y','y','y',''),(6,1,'region_de_nacimiento','Región de nacimiento','select','{\"list_type\":\"list\",\"field_list_items\":[\"Amazonas\",\"\\u00c1ncash\",\"Apur\\u00edmac\",\"Arequipa\",\"Ayacucho\",\"Cajamarca\",\"Callao\",\"Cuzco\",\"Huancavelica\",\"Hu\\u00e1nuco\",\"Ica\",\"Jun\\u00edn\",\"La Libertad\",\"Lambayeque\",\"Lima\",\"Loreto\",\"Madre de Dios\",\"Moquegua\",\"Pasco\",\"Piura\",\"Puno\",\"San Mart\\u00edn\",\"Tacna\",\"Tumbes\",\"Ucayali\"]}',1,1434997073,0,'n','y','y','y',''),(7,1,'fecha_nacimiento','Fecha de Nacimiento (dd/mm/yyyy)','text','{\"field_length\":\"10\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435002340,1435002377,'n','y','y','y',''),(8,1,'edad','Edad','select','{\"list_type\":\"list\",\"field_list_items\":[\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\"]}',3,1435002429,0,'n','y','y','y',''),(9,1,'profesion','Profesión','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435002455,0,'n','y','y','y',''),(10,1,'cargo_organizacion','Cargo en la organización','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435002476,0,'n','y','y','y',''),(11,1,'tiempo_en_dicho_cargo_en_cantidad_de_meses','Tiempo en dicho cargo en cantidad de meses','text','{\"field_length\":\"10\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',3,1435002512,0,'n','y','y','y',''),(12,1,'tiempo_en_la_organizacion_en_cantidad_de_meses','Tiempo en la organización en cantidad de meses','text','{\"field_length\":\"10\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',3,1435002688,0,'n','y','y','y',''),(13,1,'nombre_de_la_entidad','Nombre de la Entidad','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435003230,0,'n','y','y','y',''),(14,1,'cuando_comenzaron_a_operar_dd_mm_yyyy','¿Cuándo comenzaron a operar? (dd/mm/yyyy)','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435003362,0,'n','y','y','y',''),(15,1,'esta_inscrita_en_registros_publicos','¿Está inscrita en Registros Públicos?','radio','{\"list_type\":\"list\",\"field_list_items\":[\"Si\",\"No\"]}',3,1435003388,0,'n','y','y','y',''),(16,1,'ruc','RUC','text','{\"field_length\":\"150\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',3,1435003468,0,'n','y','y','y',''),(17,1,'cuando_se_constituyeron_dd_mm_yyyy','¿Cuándo se constituyeron? (dd/mm/yyyy)','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435003498,0,'n','y','y','y',''),(18,1,'tipo_de_organizacion','Tipo de organización','multiselect','{\"list_type\":\"list\",\"field_list_items\":[\"ONG\",\"Fundaciones\",\"Asociaci\\u00f3n Civil\",\"Empresa\",\"Persona Natural\",\"Otros\"]}',3,1435003568,0,'n','y','y','y',''),(19,1,'tipo_de_organizacion_otros','Otros','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435003608,0,'n','y','y','y',''),(20,1,'regiones','Regiones','multiselect','{\"list_type\":\"list\",\"field_list_items\":[\"Amazonas\",\"\\u00c1ncash\",\"Apur\\u00edmac\",\"Arequipa\",\"Ayacucho\",\"Cajamarca\",\"Callao\",\"Cuzco\",\"Huancavelica\",\"Hu\\u00e1nuco\",\"Ica\",\"Jun\\u00edn\",\"La Libertad\",\"Lambayeque\",\"Lima\",\"Loreto\",\"Madre de Dios\",\"Moquegua\",\"Pasco\",\"Piura\",\"Puno\",\"San Mart\\u00edn\",\"Tacna\",\"Tumbes\",\"Ucayali\"]}',3,1435006489,0,'n','y','y','y',''),(21,1,'provincia','Provincia','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435006610,0,'n','y','y','y',''),(22,1,'distrito','Distrito','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435006624,0,'n','y','y','y',''),(23,1,'describa_el_principal_problema_social','Describa el principal problema social que busca resolver su organización. Recomendamos usar datos precisos y evidenciar citando estudios, investigacio','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',3,1435075280,0,'n','y','y','y',''),(24,1,'cual_es_el_publico_objetivo_directo_e_indirecto','¿Cuál es el público objetivo directo e indirecto?','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',3,1435075306,0,'n','y','y','y',''),(25,1,'enuncie_como_su_organizacion_aporta','Enuncie cómo su organización aporta a la solución del problema y que beneficios concretos ofrece a sus públicos objetivo.','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',3,1435075364,0,'n','y','y','y',''),(26,1,'efectividad_del_modelo','Efectividad del modelo','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',3,1435075509,0,'n','y','y','y',''),(27,1,'calidad_del_servicio_y_o_producto','Calidad del servicio y/o producto','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',3,1435076239,0,'n','y','y','y',''),(28,1,'impacto_social','Impacto social','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',3,1435076309,0,'n','y','y','y',''),(29,1,'innovacion','Innovación','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',3,1435076353,0,'n','y','y','y',''),(30,1,'cuanta_gente_se_encarga_de_dirigir_y_gestionar_la_iniciativa','¿Cuánta gente se encarga de dirigir y gestionar la iniciativa?','text','{\"field_length\":\"10\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',3,1435076501,0,'n','y','y','y',''),(31,1,'cantidad_de_remunerados_a_tiempo_completo','Cantidad de Remunerados a tiempo completo ','text','{\"field_length\":\"10\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',3,1435076538,0,'n','y','y','y',''),(32,1,'cantidad_de_remunerados_a_tiempo_parcial','Cantidad de Remunerados a tiempo parcial','text','{\"field_length\":\"10\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',3,1435076559,0,'n','y','y','y',''),(33,1,'cantidad_de_talento_voluntario','Cantidad de Talento Voluntario','text','{\"field_length\":\"10\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',3,1435076585,0,'n','y','y','y',''),(34,1,'otro_recursos_humanos','Otro','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435076613,0,'n','y','y','y',''),(35,1,'si_llenas_otros_ingresa_la_cantidad','Si llenas otros ingresa la cantidad','text','{\"field_length\":\"150\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',3,1435076645,0,'n','y','y','y',''),(36,1,'aliados_estrategicos','Aliados estratégicos','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',3,1435077125,0,'n','y','y','y',''),(37,1,'fuente_de_financiamiento','Fuente de Financiamiento','checkbox_group','{\"list_type\":\"list\",\"field_list_items\":[\"He ganado uno o varios grants y\\/o capitales semilla\",\"Cuento con inversionistas privados\",\"Hago campa\\u00f1as de Crowdfunding\",\"He sido o estoy siendo incubado por una organizaci\\u00f3n\",\"Una parte o todo es por la venta de mis productos o servicios\"]}',3,1435077313,0,'n','y','y','y',''),(38,1,'otras_fuentes_de_financiamiento','Otras Fuentes de Financiamiento','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435077336,0,'n','y','y','y',''),(39,1,'fondos_administrados_durante_el_ano_2014','Fondos administrados durante el año 2014','radio','{\"list_type\":\"list\",\"field_list_items\":[\"<= S\\/. 100,000\",\"S\\/. 100,001 \\u2013 200,000\",\"S\\/. 200,001 \\u2013 300,000\",\"S\\/. 300,001 \\u2013 400,000\",\"S\\/. 400,001 \\u2013 500,000\",\">=S\\/. 500,001\"]}',3,1435077417,0,'n','y','y','y',''),(40,1,'monto_exacto_s','Monto Exacto: S/.','text','{\"field_length\":\"30\",\"field_content_type\":\"decimal\",\"disallow_html_rendering\":\"y\"}',3,1435077446,1435184823,'n','y','y','y',''),(41,1,'la_organizacion_ha_sido_premiada_antes_dentro_o_fuera_de_peru','¿La organización ha sido premiada antes, dentro o fuera de Perú? Si la respuesta es sí, ¿qué premios ha recibido?','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',3,1435077501,0,'n','y','y','y',''),(42,1,'cual_es_el_principal_desafio_que_debe_afrontar_para_alcanzar_el_proposito_que_persigue_su_iniciativa_y_como_lo_resolvera','¿Cuál es el principal desafío que debe afrontar para alcanzar el propósito que persigue su iniciativa y cómo lo resolverá ?','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',3,1435077578,0,'n','y','y','y',''),(43,1,'como_considera_que_el_apoyo_integral_de_kunan_podra_ayudarlo_a_superar_sus_desafios_y_crecer','¿Cómo considera que el apoyo integral de Kunan podrá ayudarlo a superar sus desafíos y crecer? (max 300 caracteres).','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',3,1435077595,1435082249,'n','y','y','y',''),(44,1,'pagina_web_link','Página web (link)','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435077659,0,'n','y','y','y',''),(45,1,'fanpage_link','Fanpage (link):','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435077675,0,'n','y','y','y',''),(46,1,'twitter','Twitter: ','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435077689,0,'n','y','y','y',''),(47,1,'telefono_fijo','Teléfono Fijo','text','{\"field_length\":\"20\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',3,1435077713,0,'n','y','y','y',''),(48,1,'telefono_celular','Teléfono Celular','text','{\"field_length\":\"20\",\"field_content_type\":\"number\",\"disallow_html_rendering\":\"y\"}',3,1435077746,0,'n','y','y','y',''),(49,1,'fotos_de_tu_iniciativa','Fotos de tu iniciativa','file_upload','{\"allowed_file_types\":\"jpg|png|gif\",\"file_upload_location\":\"4\",\"allowed_upload_count\":\"5\",\"overwrite_on_edit\":\"n\",\"disable_xss_clean\":\"y\"}',3,1435077861,1435078014,'n','y','y','y',''),(50,1,'por_que_medio_te_enteraste_de_la_convocatoria','¿Por qué medio te enteraste de la convocatoria?','multiselect','{\"list_type\":\"list\",\"field_list_items\":[\"Amigo\",\"Web \",\"Redes sociales\",\"Radio\\/ TV  \",\"Peri\\u00f3dico\\/Revista\",\"Charla \",\"Organizaci\\u00f3n \",\"Universidad\\/Instituto\",\"Otro \"]}',3,1435078080,0,'n','y','y','y',''),(51,1,'si_selecciono_otros_medios','Si seleccionó otros medios','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435078117,0,'n','y','y','y',''),(52,1,'link_video','Link Video','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435078219,0,'n','y','y','y',''),(53,1,'acepto_la_declaracion','Acepto la declaración','checkbox','[]',3,1435078565,0,'n','y','y','y',''),(54,1,'nombre_sumate','NOMBRE','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',3,1435121033,0,'n','y','y','y',''),(55,1,'correo_electronico_sumate','CORREO ELECTRÓNICO','text','{\"field_length\":\"150\",\"field_content_type\":\"email\",\"disallow_html_rendering\":\"y\"}',3,1435121066,0,'n','y','y','y','');
/*!40000 ALTER TABLE `exp_freeform_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_fieldtypes`
--

DROP TABLE IF EXISTS `exp_freeform_fieldtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_fieldtypes` (
  `fieldtype_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fieldtype_name` varchar(250) DEFAULT NULL,
  `settings` text,
  `default_field` char(1) NOT NULL DEFAULT 'n',
  `version` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`fieldtype_id`),
  KEY `fieldtype_name` (`fieldtype_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_fieldtypes`
--

LOCK TABLES `exp_freeform_fieldtypes` WRITE;
/*!40000 ALTER TABLE `exp_freeform_fieldtypes` DISABLE KEYS */;
INSERT INTO `exp_freeform_fieldtypes` VALUES (1,'checkbox','[]','n','4.2.2'),(2,'checkbox_group','[]','n','4.2.2'),(3,'country_select','[]','n','4.2.2'),(4,'file_upload','[]','n','4.2.2'),(5,'hidden','[]','n','4.2.2'),(6,'mailinglist','[]','n','4.2.2'),(7,'multiselect','[]','n','4.2.2'),(8,'province_select','[]','n','4.2.2'),(9,'radio','[]','n','4.2.2'),(10,'select','[]','n','4.2.2'),(11,'state_select','[]','n','4.2.2'),(12,'text','[]','n','4.2.2'),(13,'textarea','[]','n','4.2.2');
/*!40000 ALTER TABLE `exp_freeform_fieldtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_file_uploads`
--

DROP TABLE IF EXISTS `exp_freeform_file_uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_file_uploads` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_path` varchar(750) DEFAULT NULL,
  `filename` varchar(250) DEFAULT NULL,
  `extension` varchar(20) DEFAULT NULL,
  `filesize` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`),
  KEY `entry_id` (`entry_id`),
  KEY `field_id` (`field_id`),
  KEY `extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_file_uploads`
--

LOCK TABLES `exp_freeform_file_uploads` WRITE;
/*!40000 ALTER TABLE `exp_freeform_file_uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_freeform_file_uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_form_entries_1`
--

DROP TABLE IF EXISTS `exp_freeform_form_entries_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_form_entries_1` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_1` text,
  `form_field_2` text,
  `form_field_3` text,
  `form_field_4` text,
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_form_entries_1`
--

LOCK TABLES `exp_freeform_form_entries_1` WRITE;
/*!40000 ALTER TABLE `exp_freeform_form_entries_1` DISABLE KEYS */;
INSERT INTO `exp_freeform_form_entries_1` VALUES (1,1,0,'y','127.0.0.1',1434808921,0,'pending','Jake','Solspace','support@solspace.com','Welcome to Freeform. We hope that you will enjoy Solspace software.');
/*!40000 ALTER TABLE `exp_freeform_form_entries_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_form_entries_2`
--

DROP TABLE IF EXISTS `exp_freeform_form_entries_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_form_entries_2` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_1` text,
  `form_field_2` text,
  `form_field_5` text,
  `form_field_6` text,
  `form_field_7` text,
  `form_field_8` text,
  `form_field_9` text,
  `form_field_10` text,
  `form_field_11` text,
  `form_field_12` text,
  `form_field_13` text,
  `form_field_14` text,
  `form_field_15` text,
  `form_field_16` text,
  `form_field_17` text,
  `form_field_18` text,
  `form_field_19` text,
  `form_field_20` text,
  `form_field_21` text,
  `form_field_22` text,
  `form_field_23` text,
  `form_field_24` text,
  `form_field_25` text,
  `form_field_26` text,
  `form_field_27` text,
  `form_field_28` text,
  `form_field_29` text,
  `form_field_30` text,
  `form_field_31` text,
  `form_field_32` text,
  `form_field_33` text,
  `form_field_34` text,
  `form_field_35` text,
  `form_field_36` text,
  `form_field_37` text,
  `form_field_38` text,
  `form_field_39` text,
  `form_field_40` text,
  `form_field_41` text,
  `form_field_3` text,
  `form_field_42` text,
  `form_field_43` text,
  `form_field_44` text,
  `form_field_45` text,
  `form_field_46` text,
  `form_field_47` text,
  `form_field_48` text,
  `form_field_49` text,
  `form_field_50` text,
  `form_field_51` text,
  `form_field_52` text,
  `form_field_53` text,
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_form_entries_2`
--

LOCK TABLES `exp_freeform_form_entries_2` WRITE;
/*!40000 ALTER TABLE `exp_freeform_form_entries_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_freeform_form_entries_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_form_entries_3`
--

DROP TABLE IF EXISTS `exp_freeform_form_entries_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_form_entries_3` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_54` text,
  `form_field_55` text,
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_form_entries_3`
--

LOCK TABLES `exp_freeform_form_entries_3` WRITE;
/*!40000 ALTER TABLE `exp_freeform_form_entries_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_freeform_form_entries_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_forms`
--

DROP TABLE IF EXISTS `exp_freeform_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_forms` (
  `form_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `form_name` varchar(150) NOT NULL DEFAULT 'default',
  `form_label` varchar(150) NOT NULL DEFAULT 'default',
  `default_status` varchar(150) NOT NULL DEFAULT 'default',
  `notify_user` char(1) NOT NULL DEFAULT 'n',
  `notify_admin` char(1) NOT NULL DEFAULT 'n',
  `user_email_field` varchar(150) NOT NULL DEFAULT '',
  `user_notification_id` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_notification_id` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_notification_email` text,
  `form_description` text,
  `field_ids` text,
  `field_order` text,
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `composer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `settings` text,
  PRIMARY KEY (`form_id`),
  KEY `form_name` (`form_name`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_forms`
--

LOCK TABLES `exp_freeform_forms` WRITE;
/*!40000 ALTER TABLE `exp_freeform_forms` DISABLE KEYS */;
INSERT INTO `exp_freeform_forms` VALUES (1,1,'contact','Contact','pending','n','y','',0,1,'jose.lee@ayuinc.com','This is a basic contact form.','1|2|3|4',NULL,0,0,1,1434808921,0,NULL),(2,1,'formulario_registro','Formulario de Registro','pending','y','y','3',0,0,'jose.lee@ayuinc.com|herman@laboratoria.la','','1|2|3|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53',NULL,0,1,1,1434996038,1435078585,NULL),(3,1,'sumate','SÚMATE','pending','y','y','3',0,0,'jose.lee@ayuinc.com|herman@laboratoria.la','','54|55',NULL,0,2,3,1435120965,1435121145,NULL);
/*!40000 ALTER TABLE `exp_freeform_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_multipage_hashes`
--

DROP TABLE IF EXISTS `exp_freeform_multipage_hashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_multipage_hashes` (
  `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit` char(1) NOT NULL DEFAULT 'n',
  `data` text,
  PRIMARY KEY (`hash_id`),
  KEY `hash` (`hash`),
  KEY `ip_address` (`ip_address`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_multipage_hashes`
--

LOCK TABLES `exp_freeform_multipage_hashes` WRITE;
/*!40000 ALTER TABLE `exp_freeform_multipage_hashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_freeform_multipage_hashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_notification_templates`
--

DROP TABLE IF EXISTS `exp_freeform_notification_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_notification_templates` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `notification_name` varchar(150) NOT NULL DEFAULT 'default',
  `notification_label` varchar(150) NOT NULL DEFAULT 'default',
  `notification_description` text,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `allow_html` char(1) NOT NULL DEFAULT 'n',
  `from_name` varchar(150) NOT NULL DEFAULT '',
  `from_email` varchar(250) NOT NULL DEFAULT '',
  `reply_to_email` varchar(250) NOT NULL DEFAULT '',
  `email_subject` varchar(128) NOT NULL DEFAULT 'default',
  `include_attachments` char(1) NOT NULL DEFAULT 'n',
  `template_data` text,
  PRIMARY KEY (`notification_id`),
  KEY `notification_name` (`notification_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_notification_templates`
--

LOCK TABLES `exp_freeform_notification_templates` WRITE;
/*!40000 ALTER TABLE `exp_freeform_notification_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_freeform_notification_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_params`
--

DROP TABLE IF EXISTS `exp_freeform_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_params` (
  `params_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`params_id`),
  KEY `entry_date` (`entry_date`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_params`
--

LOCK TABLES `exp_freeform_params` WRITE;
/*!40000 ALTER TABLE `exp_freeform_params` DISABLE KEYS */;
INSERT INTO `exp_freeform_params` VALUES (60,1435171985,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(61,1435172228,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"gracias\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(62,1435172416,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(63,1435172466,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(64,1435172472,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(65,1435173379,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(66,1435173386,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"login\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(67,1435174186,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"formulario\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"telefono_fijo|telefono_celular|email|acepto_la_declaracion\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"email\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"max-length\":\"200\",\"form_id\":\"2\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(68,1435174956,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(69,1435174960,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"formulario\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"telefono_fijo|telefono_celular|email|acepto_la_declaracion\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"email\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"max-length\":\"200\",\"form_id\":\"2\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(70,1435174973,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(71,1435175034,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"login\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(72,1435175088,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"komunicacion\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(73,1435175090,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(74,1435175303,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(75,1435175307,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"login\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(76,1435175324,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(77,1435175328,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"content\\/index\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}'),(78,1435175333,'{\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"gracias\\/index\",\"inline_error_return\":\"premio\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jose.lee@ayuinc.com|herman@laboratoria.la\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":true,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":false,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"form_id\":\"3\",\"edit\":false,\"entry_id\":0,\"recipients_list\":[]}');
/*!40000 ALTER TABLE `exp_freeform_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_preferences`
--

DROP TABLE IF EXISTS `exp_freeform_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_preferences` (
  `preference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `preference_name` varchar(80) DEFAULT NULL,
  `preference_value` text,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`preference_id`),
  KEY `preference_name` (`preference_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_preferences`
--

LOCK TABLES `exp_freeform_preferences` WRITE;
/*!40000 ALTER TABLE `exp_freeform_preferences` DISABLE KEYS */;
INSERT INTO `exp_freeform_preferences` VALUES (1,'ffp','y',0);
/*!40000 ALTER TABLE `exp_freeform_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_freeform_user_email`
--

DROP TABLE IF EXISTS `exp_freeform_user_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_freeform_user_email` (
  `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email_count` int(10) unsigned NOT NULL DEFAULT '0',
  `email_addresses` text,
  PRIMARY KEY (`email_id`),
  KEY `ip_address` (`ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_freeform_user_email`
--

LOCK TABLES `exp_freeform_user_email` WRITE;
/*!40000 ALTER TABLE `exp_freeform_user_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_freeform_user_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_global_variables`
--

DROP TABLE IF EXISTS `exp_global_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_global_variables` (
  `variable_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `variable_name` varchar(50) NOT NULL,
  `variable_data` text NOT NULL,
  PRIMARY KEY (`variable_id`),
  KEY `variable_name` (`variable_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_global_variables`
--

LOCK TABLES `exp_global_variables` WRITE;
/*!40000 ALTER TABLE `exp_global_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_global_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_grid_columns`
--

DROP TABLE IF EXISTS `exp_grid_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_grid_columns` (
  `col_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `col_order` int(3) unsigned DEFAULT NULL,
  `col_type` varchar(50) DEFAULT NULL,
  `col_label` varchar(50) DEFAULT NULL,
  `col_name` varchar(32) DEFAULT NULL,
  `col_instructions` text,
  `col_required` char(1) DEFAULT NULL,
  `col_search` char(1) DEFAULT NULL,
  `col_width` int(3) unsigned DEFAULT NULL,
  `col_settings` text,
  PRIMARY KEY (`col_id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_grid_columns`
--

LOCK TABLES `exp_grid_columns` WRITE;
/*!40000 ALTER TABLE `exp_grid_columns` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_grid_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_html_buttons`
--

DROP TABLE IF EXISTS `exp_html_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_html_buttons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `tag_name` varchar(32) NOT NULL,
  `tag_open` varchar(120) NOT NULL,
  `tag_close` varchar(120) NOT NULL,
  `accesskey` varchar(32) NOT NULL,
  `tag_order` int(3) unsigned NOT NULL,
  `tag_row` char(1) NOT NULL DEFAULT '1',
  `classname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_html_buttons`
--

LOCK TABLES `exp_html_buttons` WRITE;
/*!40000 ALTER TABLE `exp_html_buttons` DISABLE KEYS */;
INSERT INTO `exp_html_buttons` VALUES (1,1,0,'b','<strong>','</strong>','b',1,'1','btn_b'),(2,1,0,'i','<em>','</em>','i',2,'1','btn_i'),(3,1,0,'blockquote','<blockquote>','</blockquote>','q',3,'1','btn_blockquote'),(4,1,0,'a','<a href=\"[![Link:!:http://]!]\"(!( title=\"[![Title]!]\")!)>','</a>','a',4,'1','btn_a'),(5,1,0,'img','<img src=\"[![Link:!:http://]!]\" alt=\"[![Alternative text]!]\" />','','',5,'1','btn_img');
/*!40000 ALTER TABLE `exp_html_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_layout_publish`
--

DROP TABLE IF EXISTS `exp_layout_publish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_layout_publish` (
  `layout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_group` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(4) unsigned NOT NULL DEFAULT '0',
  `field_layout` text,
  PRIMARY KEY (`layout_id`),
  KEY `site_id` (`site_id`),
  KEY `member_group` (`member_group`),
  KEY `channel_id` (`channel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_layout_publish`
--

LOCK TABLES `exp_layout_publish` WRITE;
/*!40000 ALTER TABLE `exp_layout_publish` DISABLE KEYS */;
INSERT INTO `exp_layout_publish` VALUES (2,1,1,3,'a:4:{s:7:\"publish\";a:10:{s:10:\"_tab_label\";s:7:\"publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:9;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:6;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:3;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:4;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:31;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:32;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:33;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:4:{s:10:\"_tab_label\";s:4:\"date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:23:\"comment_expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:5:{s:10:\"_tab_label\";s:7:\"options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(3,1,1,4,'a:4:{s:7:\"publish\";a:6:{s:10:\"_tab_label\";s:7:\"publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:11;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:8;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:10;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:4:{s:10:\"_tab_label\";s:4:\"date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:23:\"comment_expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:5:{s:10:\"_tab_label\";s:7:\"options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(4,1,1,5,'a:4:{s:7:\"publish\";a:14:{s:10:\"_tab_label\";s:7:\"publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:12;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:19;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:13;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:14;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:15;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:16;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:17;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:18;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:34;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:35;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:38;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:4:{s:10:\"_tab_label\";s:4:\"date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:23:\"comment_expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:5:{s:10:\"_tab_label\";s:7:\"options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(5,1,1,6,'a:4:{s:7:\"publish\";a:7:{s:10:\"_tab_label\";s:7:\"publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:20;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:21;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:22;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:23;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:4:{s:10:\"_tab_label\";s:4:\"date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:23:\"comment_expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:5:{s:10:\"_tab_label\";s:7:\"options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(7,1,1,9,'a:4:{s:7:\"publish\";a:5:{s:10:\"_tab_label\";s:7:\"publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:30;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:29;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:4:{s:10:\"_tab_label\";s:4:\"date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:23:\"comment_expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:5:{s:10:\"_tab_label\";s:7:\"options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}');
/*!40000 ALTER TABLE `exp_layout_publish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_bulletin_board`
--

DROP TABLE IF EXISTS `exp_member_bulletin_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_bulletin_board` (
  `bulletin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL,
  `bulletin_group` int(8) unsigned NOT NULL,
  `bulletin_date` int(10) unsigned NOT NULL,
  `hash` varchar(10) NOT NULL DEFAULT '',
  `bulletin_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `bulletin_message` text NOT NULL,
  PRIMARY KEY (`bulletin_id`),
  KEY `sender_id` (`sender_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_bulletin_board`
--

LOCK TABLES `exp_member_bulletin_board` WRITE;
/*!40000 ALTER TABLE `exp_member_bulletin_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_member_bulletin_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_data`
--

DROP TABLE IF EXISTS `exp_member_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_data` (
  `member_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_data`
--

LOCK TABLES `exp_member_data` WRITE;
/*!40000 ALTER TABLE `exp_member_data` DISABLE KEYS */;
INSERT INTO `exp_member_data` VALUES (1),(3),(6);
/*!40000 ALTER TABLE `exp_member_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_fields`
--

DROP TABLE IF EXISTS `exp_member_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_fields` (
  `m_field_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `m_field_name` varchar(32) NOT NULL,
  `m_field_label` varchar(50) NOT NULL,
  `m_field_description` text NOT NULL,
  `m_field_type` varchar(12) NOT NULL DEFAULT 'text',
  `m_field_list_items` text NOT NULL,
  `m_field_ta_rows` tinyint(2) DEFAULT '8',
  `m_field_maxl` smallint(3) NOT NULL,
  `m_field_width` varchar(6) NOT NULL,
  `m_field_search` char(1) NOT NULL DEFAULT 'y',
  `m_field_required` char(1) NOT NULL DEFAULT 'n',
  `m_field_public` char(1) NOT NULL DEFAULT 'y',
  `m_field_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_cp_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_fmt` char(5) NOT NULL DEFAULT 'none',
  `m_field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`m_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_fields`
--

LOCK TABLES `exp_member_fields` WRITE;
/*!40000 ALTER TABLE `exp_member_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_member_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_groups`
--

DROP TABLE IF EXISTS `exp_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_title` varchar(100) NOT NULL,
  `group_description` text NOT NULL,
  `is_locked` char(1) NOT NULL DEFAULT 'y',
  `can_view_offline_system` char(1) NOT NULL DEFAULT 'n',
  `can_view_online_system` char(1) NOT NULL DEFAULT 'y',
  `can_access_cp` char(1) NOT NULL DEFAULT 'y',
  `can_access_content` char(1) NOT NULL DEFAULT 'n',
  `can_access_publish` char(1) NOT NULL DEFAULT 'n',
  `can_access_edit` char(1) NOT NULL DEFAULT 'n',
  `can_access_files` char(1) NOT NULL DEFAULT 'n',
  `can_access_fieldtypes` char(1) NOT NULL DEFAULT 'n',
  `can_access_design` char(1) NOT NULL DEFAULT 'n',
  `can_access_addons` char(1) NOT NULL DEFAULT 'n',
  `can_access_modules` char(1) NOT NULL DEFAULT 'n',
  `can_access_extensions` char(1) NOT NULL DEFAULT 'n',
  `can_access_accessories` char(1) NOT NULL DEFAULT 'n',
  `can_access_plugins` char(1) NOT NULL DEFAULT 'n',
  `can_access_members` char(1) NOT NULL DEFAULT 'n',
  `can_access_admin` char(1) NOT NULL DEFAULT 'n',
  `can_access_sys_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_content_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_tools` char(1) NOT NULL DEFAULT 'n',
  `can_access_comm` char(1) NOT NULL DEFAULT 'n',
  `can_access_utilities` char(1) NOT NULL DEFAULT 'n',
  `can_access_data` char(1) NOT NULL DEFAULT 'n',
  `can_access_logs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_channels` char(1) NOT NULL DEFAULT 'n',
  `can_admin_upload_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_design` char(1) NOT NULL DEFAULT 'n',
  `can_admin_members` char(1) NOT NULL DEFAULT 'n',
  `can_delete_members` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_groups` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_templates` char(1) NOT NULL DEFAULT 'n',
  `can_ban_users` char(1) NOT NULL DEFAULT 'n',
  `can_admin_modules` char(1) NOT NULL DEFAULT 'n',
  `can_admin_templates` char(1) NOT NULL DEFAULT 'n',
  `can_edit_categories` char(1) NOT NULL DEFAULT 'n',
  `can_delete_categories` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_edit_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_assign_post_authors` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self_entries` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_entries` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_moderate_comments` char(1) NOT NULL DEFAULT 'n',
  `can_send_email` char(1) NOT NULL DEFAULT 'n',
  `can_send_cached_email` char(1) NOT NULL DEFAULT 'n',
  `can_email_member_groups` char(1) NOT NULL DEFAULT 'n',
  `can_email_mailinglist` char(1) NOT NULL DEFAULT 'n',
  `can_email_from_profile` char(1) NOT NULL DEFAULT 'n',
  `can_view_profiles` char(1) NOT NULL DEFAULT 'n',
  `can_edit_html_buttons` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self` char(1) NOT NULL DEFAULT 'n',
  `mbr_delete_notify_emails` varchar(255) DEFAULT NULL,
  `can_post_comments` char(1) NOT NULL DEFAULT 'n',
  `exclude_from_moderation` char(1) NOT NULL DEFAULT 'n',
  `can_search` char(1) NOT NULL DEFAULT 'n',
  `search_flood_control` mediumint(5) unsigned NOT NULL,
  `can_send_private_messages` char(1) NOT NULL DEFAULT 'n',
  `prv_msg_send_limit` smallint(5) unsigned NOT NULL DEFAULT '20',
  `prv_msg_storage_limit` smallint(5) unsigned NOT NULL DEFAULT '60',
  `can_attach_in_private_messages` char(1) NOT NULL DEFAULT 'n',
  `can_send_bulletins` char(1) NOT NULL DEFAULT 'n',
  `include_in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `include_in_memberlist` char(1) NOT NULL DEFAULT 'y',
  `include_in_mailinglists` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`group_id`,`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_groups`
--

LOCK TABLES `exp_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_member_groups` DISABLE KEYS */;
INSERT INTO `exp_member_groups` VALUES (1,1,'Super Admins','','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','','y','y','y',0,'y',20,60,'y','y','y','y','y'),(2,1,'Banned','','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','','n','n','n',60,'n',20,60,'n','n','n','n','n'),(3,1,'Guests','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),(4,1,'Pending','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),(5,1,'Members','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','y','y','n','','y','n','y',10,'y',20,60,'y','n','n','y','y');
/*!40000 ALTER TABLE `exp_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_homepage`
--

DROP TABLE IF EXISTS `exp_member_homepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_homepage` (
  `member_id` int(10) unsigned NOT NULL,
  `recent_entries` char(1) NOT NULL DEFAULT 'l',
  `recent_entries_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_comments` char(1) NOT NULL DEFAULT 'l',
  `recent_comments_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_members` char(1) NOT NULL DEFAULT 'n',
  `recent_members_order` int(3) unsigned NOT NULL DEFAULT '0',
  `site_statistics` char(1) NOT NULL DEFAULT 'r',
  `site_statistics_order` int(3) unsigned NOT NULL DEFAULT '0',
  `member_search_form` char(1) NOT NULL DEFAULT 'n',
  `member_search_form_order` int(3) unsigned NOT NULL DEFAULT '0',
  `notepad` char(1) NOT NULL DEFAULT 'r',
  `notepad_order` int(3) unsigned NOT NULL DEFAULT '0',
  `bulletin_board` char(1) NOT NULL DEFAULT 'r',
  `bulletin_board_order` int(3) unsigned NOT NULL DEFAULT '0',
  `pmachine_news_feed` char(1) NOT NULL DEFAULT 'n',
  `pmachine_news_feed_order` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_homepage`
--

LOCK TABLES `exp_member_homepage` WRITE;
/*!40000 ALTER TABLE `exp_member_homepage` DISABLE KEYS */;
INSERT INTO `exp_member_homepage` VALUES (1,'l',1,'l',2,'n',0,'r',1,'n',0,'r',2,'r',0,'l',0),(3,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),(6,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0);
/*!40000 ALTER TABLE `exp_member_homepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_search`
--

DROP TABLE IF EXISTS `exp_member_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `search_date` int(10) unsigned NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `fields` varchar(200) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `total_results` int(8) unsigned NOT NULL,
  `query` text NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `member_id` (`member_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_search`
--

LOCK TABLES `exp_member_search` WRITE;
/*!40000 ALTER TABLE `exp_member_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_member_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_members`
--

DROP TABLE IF EXISTS `exp_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_members` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `facebook_connect_user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `group_id` smallint(4) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `salt` varchar(128) NOT NULL DEFAULT '',
  `unique_id` varchar(40) NOT NULL,
  `crypt_key` varchar(40) DEFAULT NULL,
  `authcode` varchar(10) DEFAULT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(150) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `occupation` varchar(80) DEFAULT NULL,
  `interests` varchar(120) DEFAULT NULL,
  `bday_d` int(2) DEFAULT NULL,
  `bday_m` int(2) DEFAULT NULL,
  `bday_y` int(4) DEFAULT NULL,
  `aol_im` varchar(50) DEFAULT NULL,
  `yahoo_im` varchar(50) DEFAULT NULL,
  `msn_im` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `bio` text,
  `signature` text,
  `avatar_filename` varchar(120) DEFAULT NULL,
  `avatar_width` int(4) unsigned DEFAULT NULL,
  `avatar_height` int(4) unsigned DEFAULT NULL,
  `photo_filename` varchar(120) DEFAULT NULL,
  `photo_width` int(4) unsigned DEFAULT NULL,
  `photo_height` int(4) unsigned DEFAULT NULL,
  `sig_img_filename` varchar(120) DEFAULT NULL,
  `sig_img_width` int(4) unsigned DEFAULT NULL,
  `sig_img_height` int(4) unsigned DEFAULT NULL,
  `ignore_list` text,
  `private_messages` int(4) unsigned NOT NULL DEFAULT '0',
  `accept_messages` char(1) NOT NULL DEFAULT 'y',
  `last_view_bulletins` int(10) NOT NULL DEFAULT '0',
  `last_bulletin_date` int(10) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `join_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `total_entries` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_email_date` int(10) unsigned NOT NULL DEFAULT '0',
  `in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `accept_admin_email` char(1) NOT NULL DEFAULT 'y',
  `accept_user_email` char(1) NOT NULL DEFAULT 'y',
  `notify_by_default` char(1) NOT NULL DEFAULT 'y',
  `notify_of_pm` char(1) NOT NULL DEFAULT 'y',
  `display_avatars` char(1) NOT NULL DEFAULT 'y',
  `display_signatures` char(1) NOT NULL DEFAULT 'y',
  `parse_smileys` char(1) NOT NULL DEFAULT 'y',
  `smart_notifications` char(1) NOT NULL DEFAULT 'y',
  `language` varchar(50) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `time_format` char(2) NOT NULL DEFAULT '12',
  `date_format` varchar(8) NOT NULL DEFAULT '%n/%j/%y',
  `include_seconds` char(1) NOT NULL DEFAULT 'n',
  `cp_theme` varchar(32) DEFAULT NULL,
  `profile_theme` varchar(32) DEFAULT NULL,
  `forum_theme` varchar(32) DEFAULT NULL,
  `tracker` text,
  `template_size` varchar(2) NOT NULL DEFAULT '28',
  `notepad` text,
  `notepad_size` varchar(2) NOT NULL DEFAULT '18',
  `quick_links` text,
  `quick_tabs` text,
  `show_sidebar` char(1) NOT NULL DEFAULT 'n',
  `pmember_id` int(10) NOT NULL DEFAULT '0',
  `rte_enabled` char(1) NOT NULL DEFAULT 'y',
  `rte_toolset_id` int(10) NOT NULL DEFAULT '0',
  `profile_views` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`),
  KEY `group_id` (`group_id`),
  KEY `unique_id` (`unique_id`),
  KEY `password` (`password`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_members`
--

LOCK TABLES `exp_members` WRITE;
/*!40000 ALTER TABLE `exp_members` DISABLE KEYS */;
INSERT INTO `exp_members` VALUES (1,0,1,'admin','Administrador','66f5ebd94f1b5452401bb28933caf6230c187a8555b2fbeda3891098248d6eef63b60ab30e075817150d5a8f3359cf4895d3975374b2b9c8b5b05f5bebfb7638','14sW8G3\'@5ur2\\)n<ilV\"`0sEf=X4jOUbcA`BO5AzRXp%k9a[+YDzR&1VCQIW2j$~4/c^/V_(Ef<P}.DY@6uSg[]y/4(<I\\nqP]1GDh|-tfsiI69Y5>%Zb*VtJxLstJ{','c14fc8a60a1349b265d2e4c09a7cc4c8ab7618db','11ac985338bac30814dd68b19620b2d004352cd8',NULL,'jose.lee@ayuinc.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'::1',1429833350,1434982721,1435002159,11,0,0,0,1434923701,0,0,0,'n','y','y','y','y','y','y','y','y','english','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18','Vista publica|http://localhost/ee_trainning/|1','View Email Console Log|C=tools_logs&M=view_email_log|1','n',0,'y',0,0),(6,0,5,'coloradomarin@gmail.com','David Marin','bb6e57a367313650915abb14e5e3b04332254dc69563bd1177aeabfaa2d8bba098b63902a96a5d59be2a3e8cd477b84f567713de08fe170ebc5d93f6c4e0d620','!bQ\\#=63n(?brs\'/Yb?RN%Iids([\'b@!86ai#4BWRDHN!sGV+nI,4lAi?XGs*@,;,G,2*\'orU\"T\'9CDaYS$#$nV,ixFr#&5jhyi)1S&CNQ<e`;_X6o.1Nco)r7MTTI;z','2e4bdac9a305b7aabf5963664f4f1a7aaf0adfee','62c5443a3ffbee9157c7d5a48b64c1574c7ad848',NULL,'coloradomarin@gmail.com','','','','',0,0,0,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'127.0.0.1',1434936865,1434937482,1435106863,0,0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','','','','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0),(3,0,1,'herman.marin','Herman Marin','481f488bc1410e9567fe7361f0ebd14a8645c99dd17ff39b3c6f015938cd0a577ab15ffd1c8b48eae6fa8d993a64c1d27132d6962e992dac3c9515eebc818c28','a=Kx;PBn/1-5ok\",:*(:/M4<rg0tXs\"^M\\W{8&c:*tWkZP4o:zFhjK-Lb2m9gdaOz&G_S$t@%D:vKro^H!.K-!]dH,G5c263P8L!t3Ni|LH\\9$4a7*x|9KK/x~\\3a*!}','fed53ff9c3400f9dcfe0ab7c5088abfb624ab86f','688db3e71a94efda749c4447bab2fad0ebc0155f',NULL,'herman@laboratoria.la','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'127.0.0.1',1434934263,1435174956,1435184809,12,0,0,0,1435120626,0,0,0,'n','y','y','y','y','y','y','y','y','english','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,NULL,'n',0,'y',0,0);
/*!40000 ALTER TABLE `exp_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_attachments`
--

DROP TABLE IF EXISTS `exp_message_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_attachments` (
  `attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_name` varchar(50) NOT NULL DEFAULT '',
  `attachment_hash` varchar(40) NOT NULL DEFAULT '',
  `attachment_extension` varchar(20) NOT NULL DEFAULT '',
  `attachment_location` varchar(150) NOT NULL DEFAULT '',
  `attachment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_size` int(10) unsigned NOT NULL DEFAULT '0',
  `is_temp` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`attachment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_attachments`
--

LOCK TABLES `exp_message_attachments` WRITE;
/*!40000 ALTER TABLE `exp_message_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_copies`
--

DROP TABLE IF EXISTS `exp_message_copies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_copies` (
  `copy_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recipient_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_received` char(1) NOT NULL DEFAULT 'n',
  `message_read` char(1) NOT NULL DEFAULT 'n',
  `message_time_read` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_downloaded` char(1) NOT NULL DEFAULT 'n',
  `message_folder` int(10) unsigned NOT NULL DEFAULT '1',
  `message_authcode` varchar(10) NOT NULL DEFAULT '',
  `message_deleted` char(1) NOT NULL DEFAULT 'n',
  `message_status` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`copy_id`),
  KEY `message_id` (`message_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_copies`
--

LOCK TABLES `exp_message_copies` WRITE;
/*!40000 ALTER TABLE `exp_message_copies` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_copies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_data`
--

DROP TABLE IF EXISTS `exp_message_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_data` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_date` int(10) unsigned NOT NULL DEFAULT '0',
  `message_subject` varchar(255) NOT NULL DEFAULT '',
  `message_body` text NOT NULL,
  `message_tracking` char(1) NOT NULL DEFAULT 'y',
  `message_attachments` char(1) NOT NULL DEFAULT 'n',
  `message_recipients` varchar(200) NOT NULL DEFAULT '',
  `message_cc` varchar(200) NOT NULL DEFAULT '',
  `message_hide_cc` char(1) NOT NULL DEFAULT 'n',
  `message_sent_copy` char(1) NOT NULL DEFAULT 'n',
  `total_recipients` int(5) unsigned NOT NULL DEFAULT '0',
  `message_status` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_data`
--

LOCK TABLES `exp_message_data` WRITE;
/*!40000 ALTER TABLE `exp_message_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_folders`
--

DROP TABLE IF EXISTS `exp_message_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_folders` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `folder1_name` varchar(50) NOT NULL DEFAULT 'InBox',
  `folder2_name` varchar(50) NOT NULL DEFAULT 'Sent',
  `folder3_name` varchar(50) NOT NULL DEFAULT '',
  `folder4_name` varchar(50) NOT NULL DEFAULT '',
  `folder5_name` varchar(50) NOT NULL DEFAULT '',
  `folder6_name` varchar(50) NOT NULL DEFAULT '',
  `folder7_name` varchar(50) NOT NULL DEFAULT '',
  `folder8_name` varchar(50) NOT NULL DEFAULT '',
  `folder9_name` varchar(50) NOT NULL DEFAULT '',
  `folder10_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_folders`
--

LOCK TABLES `exp_message_folders` WRITE;
/*!40000 ALTER TABLE `exp_message_folders` DISABLE KEYS */;
INSERT INTO `exp_message_folders` VALUES (1,'InBox','Sent','','','','','','','','');
/*!40000 ALTER TABLE `exp_message_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_listed`
--

DROP TABLE IF EXISTS `exp_message_listed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_listed` (
  `listed_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_member` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_description` varchar(100) NOT NULL DEFAULT '',
  `listed_type` varchar(10) NOT NULL DEFAULT 'blocked',
  PRIMARY KEY (`listed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_listed`
--

LOCK TABLES `exp_message_listed` WRITE;
/*!40000 ALTER TABLE `exp_message_listed` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_listed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_module_member_groups`
--

DROP TABLE IF EXISTS `exp_module_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_module_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `module_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_module_member_groups`
--

LOCK TABLES `exp_module_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_module_member_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_module_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_modules`
--

DROP TABLE IF EXISTS `exp_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_modules` (
  `module_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `module_version` varchar(12) NOT NULL,
  `has_cp_backend` char(1) NOT NULL DEFAULT 'n',
  `has_publish_fields` char(1) NOT NULL DEFAULT 'n',
  `settings` text,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_modules`
--

LOCK TABLES `exp_modules` WRITE;
/*!40000 ALTER TABLE `exp_modules` DISABLE KEYS */;
INSERT INTO `exp_modules` VALUES (1,'Comment','2.3.2','y','n',NULL),(2,'Email','2.0','n','n',NULL),(3,'Emoticon','2.0','n','n',NULL),(4,'Jquery','1.0','n','n',NULL),(5,'Rss','2.0','n','n',NULL),(6,'Search','2.2.2','n','n',NULL),(7,'Channel','2.0.1','n','n',NULL),(8,'Member','2.1','n','n',NULL),(9,'Stats','2.0','n','n',NULL),(10,'Rte','1.0.1','y','n',NULL),(11,'Freeform','4.2.2','y','n',NULL),(12,'Channel_images','5.4.19','y','n',NULL),(13,'Fbc','3.0.0','y','n',NULL),(14,'User','3.5.3','y','y',NULL),(15,'Query','2.0','n','n',NULL);
/*!40000 ALTER TABLE `exp_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_nsm_addon_settings`
--

DROP TABLE IF EXISTS `exp_nsm_addon_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_nsm_addon_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) unsigned NOT NULL DEFAULT '1',
  `addon_id` varchar(255) NOT NULL,
  `settings` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_nsm_addon_settings`
--

LOCK TABLES `exp_nsm_addon_settings` WRITE;
/*!40000 ALTER TABLE `exp_nsm_addon_settings` DISABLE KEYS */;
INSERT INTO `exp_nsm_addon_settings` VALUES (1,1,'nsm_htaccess_generator','{\"enabled\":\"1\",\"path\":[\"\\/Users\\/hermanmarin\\/Documents\\/websites\\/kunan\\/.htaccess\"],\"template\":\"# For more awesome .htaccess rules and optimisations\\n# checkout the HTML5 Boilerplate .htaccess files\\n# https:\\/\\/github.com\\/paulirish\\/html5-boilerplate\\/blob\\/master\\/.htaccess\\n\\n# Although highly unlikely, your host may have +FollowSymLinks enabled at the root level,\\n# yet disallow its addition in .htaccess; in which case, \\n# adding +FollowSymLinks will break your setup (probably a 500 error), \\n# so just remove it, and your rules should work fine.\\nOptions +FollowSymlinks\\n\\n# EE 404 page for missing pages\\nErrorDocument 404 \\/index.php\\/{ee:404}\\n\\n# Simple 404 for missing files\\n<FilesMatch \\\"(\\\\.jpe?g|gif|png|bmp|css|js|flv)$\\\">\\n  ErrorDocument 404 \\\"File Not Found\\\"\\n<\\/FilesMatch>\\n\\n# Rewriting will likely already be on, uncomment if it isnt\\n# <IfModule mod_rewrite.c>\\n# RewriteEngine On\\n# RewriteBase \\/\\n# <\\/IfModule>\\n\\n# Block access to \\\"hidden\\\" directories whose names begin with a period. This\\n# includes directories used by version control systems such as Subversion or Git.\\n<IfModule mod_rewrite.c>\\n  RewriteRule \\\"(^|\\/)\\\\.\\\" - [F]\\n<\\/IfModule>\\n\\n# remove the www - Uncomment to activate\\n<IfModule mod_rewrite.c>\\n  RewriteCond %{HTTPS} !=on\\n  RewriteCond %{HTTP_HOST} ^www\\\\.(.+)$ [NC]\\n  RewriteRule ^(.*)$ http:\\/\\/%1\\/$1 [R=301,L]\\n<\\/IfModule>\\n\\n# Remove the trailing slash to paths without an extension\\n# Uncomment to activate\\n# <IfModule mod_rewrite.c>\\n#   RewriteRule ^(.*)\\/$ \\/$1 [R=301,L]\\n# <\\/IfModule>\\n\\n# Remove index.php\\n# Uses the \\\"include method\\\"\\n# http:\\/\\/expressionengine.com\\/wiki\\/Remove_index.php_From_URLs\\/#Include_List_Method\\n# <IfModule mod_rewrite.c>\\nRewriteCond %{QUERY_STRING} !^(ACT=.*)$ [NC]\\nRewriteCond %{REQUEST_URI} !(\\\\.[a-zA-Z0-9]{1,5})$\\nRewriteCond %{REQUEST_FILENAME} !-f\\nRewriteCond %{REQUEST_FILENAME} !-d\\nRewriteCond %{REQUEST_URI} ^\\/({ee:template_groups}{ee:pages}members|P[0-9]{2,8}) [NC]\\nRewriteRule (.*) \\/index.php\\/$1 [L]\"}');
/*!40000 ALTER TABLE `exp_nsm_addon_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_online_users`
--

DROP TABLE IF EXISTS `exp_online_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_online_users` (
  `online_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `in_forum` char(1) NOT NULL DEFAULT 'n',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `anon` char(1) NOT NULL,
  PRIMARY KEY (`online_id`),
  KEY `date` (`date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_online_users`
--

LOCK TABLES `exp_online_users` WRITE;
/*!40000 ALTER TABLE `exp_online_users` DISABLE KEYS */;
INSERT INTO `exp_online_users` VALUES (68,1,0,'n','','127.0.0.1',1435175333,''),(71,1,0,'n','','127.0.0.1',1435175333,''),(73,1,0,'n','','127.0.0.1',1435175333,'');
/*!40000 ALTER TABLE `exp_online_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_password_lockout`
--

DROP TABLE IF EXISTS `exp_password_lockout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_password_lockout` (
  `lockout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`lockout_id`),
  KEY `login_date` (`login_date`),
  KEY `ip_address` (`ip_address`),
  KEY `user_agent` (`user_agent`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_password_lockout`
--

LOCK TABLES `exp_password_lockout` WRITE;
/*!40000 ALTER TABLE `exp_password_lockout` DISABLE KEYS */;
INSERT INTO `exp_password_lockout` VALUES (3,1435103523,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.3','herman.marin');
/*!40000 ALTER TABLE `exp_password_lockout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_relationships`
--

DROP TABLE IF EXISTS `exp_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_relationships` (
  `relationship_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `child_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_col_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_row_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`relationship_id`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `field_id` (`field_id`),
  KEY `grid_row_id` (`grid_row_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_relationships`
--

LOCK TABLES `exp_relationships` WRITE;
/*!40000 ALTER TABLE `exp_relationships` DISABLE KEYS */;
INSERT INTO `exp_relationships` VALUES (3,14,15,9,0,0,0,0),(5,16,15,9,0,0,0,0),(10,17,15,9,0,0,0,0);
/*!40000 ALTER TABLE `exp_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_remember_me`
--

DROP TABLE IF EXISTS `exp_remember_me`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_remember_me` (
  `remember_me_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) DEFAULT '0',
  `ip_address` varchar(45) DEFAULT '0',
  `user_agent` varchar(120) DEFAULT '',
  `admin_sess` tinyint(1) DEFAULT '0',
  `site_id` int(4) DEFAULT '1',
  `expiration` int(10) DEFAULT '0',
  `last_refresh` int(10) DEFAULT '0',
  PRIMARY KEY (`remember_me_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_remember_me`
--

LOCK TABLES `exp_remember_me` WRITE;
/*!40000 ALTER TABLE `exp_remember_me` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_remember_me` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_reset_password`
--

DROP TABLE IF EXISTS `exp_reset_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_reset_password` (
  `reset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `resetcode` varchar(12) NOT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`reset_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_reset_password`
--

LOCK TABLES `exp_reset_password` WRITE;
/*!40000 ALTER TABLE `exp_reset_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_reset_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_revision_tracker`
--

DROP TABLE IF EXISTS `exp_revision_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_revision_tracker` (
  `tracker_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `item_table` varchar(20) NOT NULL,
  `item_field` varchar(20) NOT NULL,
  `item_date` int(10) NOT NULL,
  `item_author_id` int(10) unsigned NOT NULL,
  `item_data` mediumtext NOT NULL,
  PRIMARY KEY (`tracker_id`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_revision_tracker`
--

LOCK TABLES `exp_revision_tracker` WRITE;
/*!40000 ALTER TABLE `exp_revision_tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_revision_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_rte_tools`
--

DROP TABLE IF EXISTS `exp_rte_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_rte_tools` (
  `tool_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(75) DEFAULT NULL,
  `class` varchar(75) DEFAULT NULL,
  `enabled` char(1) DEFAULT 'y',
  PRIMARY KEY (`tool_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_rte_tools`
--

LOCK TABLES `exp_rte_tools` WRITE;
/*!40000 ALTER TABLE `exp_rte_tools` DISABLE KEYS */;
INSERT INTO `exp_rte_tools` VALUES (1,'Blockquote','Blockquote_rte','y'),(2,'Bold','Bold_rte','y'),(3,'Headings','Headings_rte','y'),(4,'Image','Image_rte','y'),(5,'Italic','Italic_rte','y'),(6,'Link','Link_rte','y'),(7,'Ordered List','Ordered_list_rte','y'),(8,'Underline','Underline_rte','y'),(9,'Unordered List','Unordered_list_rte','y'),(10,'View Source','View_source_rte','y'),(11,'Channel_images','Channel_images_rte','y');
/*!40000 ALTER TABLE `exp_rte_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_rte_toolsets`
--

DROP TABLE IF EXISTS `exp_rte_toolsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_rte_toolsets` (
  `toolset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `tools` text,
  `enabled` char(1) DEFAULT 'y',
  PRIMARY KEY (`toolset_id`),
  KEY `member_id` (`member_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_rte_toolsets`
--

LOCK TABLES `exp_rte_toolsets` WRITE;
/*!40000 ALTER TABLE `exp_rte_toolsets` DISABLE KEYS */;
INSERT INTO `exp_rte_toolsets` VALUES (1,0,'Default','3|2|5|1|9|7|6|4|10','y');
/*!40000 ALTER TABLE `exp_rte_toolsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_search`
--

DROP TABLE IF EXISTS `exp_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) NOT NULL DEFAULT '1',
  `search_date` int(10) NOT NULL,
  `keywords` varchar(60) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `total_results` int(6) NOT NULL,
  `per_page` tinyint(3) unsigned NOT NULL,
  `query` mediumtext,
  `custom_fields` mediumtext,
  `result_page` varchar(70) NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_search`
--

LOCK TABLES `exp_search` WRITE;
/*!40000 ALTER TABLE `exp_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_search_log`
--

DROP TABLE IF EXISTS `exp_search_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_search_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `search_date` int(10) NOT NULL,
  `search_type` varchar(32) NOT NULL,
  `search_terms` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_search_log`
--

LOCK TABLES `exp_search_log` WRITE;
/*!40000 ALTER TABLE `exp_search_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_search_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_security_hashes`
--

DROP TABLE IF EXISTS `exp_security_hashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_security_hashes` (
  `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL,
  PRIMARY KEY (`hash_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_security_hashes`
--

LOCK TABLES `exp_security_hashes` WRITE;
/*!40000 ALTER TABLE `exp_security_hashes` DISABLE KEYS */;
INSERT INTO `exp_security_hashes` VALUES (46,1435113175,'f98fd97c2b697ba46ae8115585ceb17f47d45292','26f442081d84c951bdbd51b5022ade8c41d3a4b9'),(45,1435109565,'fcbfe9954f3d3d8266f1c019b3784f0fc3d69b69','9ff89e5845a31b74a146db3220893646a0c57285'),(44,1435107521,'f2bf888816554f68d5a9a02188aa384cf611a0f0','11b6465464c83f4988c67bfb2f11711687f68719'),(43,1435104028,'c12b4de84fa9b9520e54ffccb549ae3851653f71','3632cff3fc2b257a52914886878bb5290a9b707d'),(42,1435103912,'1b2e133caa0ed2c0e9b54c89de99173ce6fb1594','6c696be50344a4f9bb7230ef9471698587d14d7f'),(40,1435103505,'cb87bf6a9ba17637993b235ec06445b7cf107b30','145b743be7976964c2d90cfa144ac8eed85db139'),(38,1435095154,'8658c0006ad770e71643aba2cbbf2b2b20a83499','bfeb7cbf707bb6bb86a9ccdf6b5db2e4740dc6ac'),(37,1435086398,'35d21aa52007d24a13a649c5edbf95b6a161825d','66448f516c432aada0d09c19eba415098f58d05b'),(36,1435086147,'614b12241286bebb86850749c3f3c83b0b1bab55','f11302274f509e3039799bc6b7c8a59b298c1328'),(35,1435074139,'1620bbd9a0fe5bac47a7095b0a89d2e92ea3c870','b68ea989dec782739ec6b9b5b03a4b5c48ac00bc'),(33,1435025128,'ddb3e1ddbfd03ff77fcc92542cbfd1b81f0aafcd','6ca67a6ced4ac4a72ba908e85fa456d4842c3cf0'),(34,1435025672,'458a89dcf63d0bad7c2858f4736bd1ba8d3845bf','7bb87688a1b7c6aa426793eb9f68343a12f4e213'),(31,1435013070,'02f70864f903638b5064c929d37a6ee118ec5c25','2c5cafaa8fe18f83c3975def07e882d38b284066'),(30,1435002185,'6ac6f49bfb8f61c25e5b21c66409e23bb22a3a7d','68a26748ed3b9b5f6878a04b9a99b6dbf6b78d50'),(29,1434995734,'62f07ff27f90caef28cb56e58e091f1af89a7095','0fa8a9daecb7404edc22995af796576a2b132d93'),(28,1434991709,'1b717dbc801659feedc714bb33b6fd365dc4093d','d8e9cf110b90cc04f6c95ad06fcadaa86061e5bb'),(26,1434980019,'8e0b759ec8cb966f6bf1c80ff15c949d0d136e7e','b89d6f89cc210be7bf16faf526cd39bd3416c774'),(47,1435116997,'f7640fdaa143dd18f6bb07eb97ffc8f797d1148f','b2e7ec1ff06f1780b402c88564db8f7fad96c759'),(48,1435120279,'f3592c9172a4a37106fc298c046f717ea6856645','3e9c3bedd85940b6e8fef21190efb004660723cc'),(50,1435172407,'e77b015e627e47b9b94cdc306045475282819d80','384fc6625b3612171582681bff7fba8e4fa6b0c8'),(52,1435172470,'aac86719a3bbd92f35eed0dfb73d6e06873fc937','8fd8ef05dcf076ce7566fc42b8127f6d5a36b569'),(54,1435174971,'9724010c3706750920ace57c7b857211edf88c52','689d79f0f9f7641997c35d7d701ab30500b0d9c8'),(55,1435180246,'a0ae6cab9ae0ad2500b2f56f8396ac37c36372a9','ee58a2253d1d60f8e1f29f330416705c6191354b');
/*!40000 ALTER TABLE `exp_security_hashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_sessions`
--

DROP TABLE IF EXISTS `exp_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `admin_sess` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `fingerprint` varchar(40) NOT NULL,
  `sess_start` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `member_id` (`member_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_sessions`
--

LOCK TABLES `exp_sessions` WRITE;
/*!40000 ALTER TABLE `exp_sessions` DISABLE KEYS */;
INSERT INTO `exp_sessions` VALUES ('a0ae6cab9ae0ad2500b2f56f8396ac37c36372a9',3,1,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.3','0a6f56b9e1617465f20502c8b7bcf314',1435184809,1435184832);
/*!40000 ALTER TABLE `exp_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_sites`
--

DROP TABLE IF EXISTS `exp_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_sites` (
  `site_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `site_label` varchar(100) NOT NULL DEFAULT '',
  `site_name` varchar(50) NOT NULL DEFAULT '',
  `site_description` text,
  `site_system_preferences` mediumtext NOT NULL,
  `site_mailinglist_preferences` text NOT NULL,
  `site_member_preferences` text NOT NULL,
  `site_template_preferences` text NOT NULL,
  `site_channel_preferences` text NOT NULL,
  `site_bootstrap_checksums` text NOT NULL,
  PRIMARY KEY (`site_id`),
  KEY `site_name` (`site_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_sites`
--

LOCK TABLES `exp_sites` WRITE;
/*!40000 ALTER TABLE `exp_sites` DISABLE KEYS */;
INSERT INTO `exp_sites` VALUES (1,'ee_trainning','default_site',NULL,'YTo5Njp7czoxMDoic2l0ZV9pbmRleCI7czowOiIiO3M6ODoic2l0ZV91cmwiO3M6MTc6Imh0dHA6Ly9rdW5hbi5kZXYvIjtzOjE2OiJ0aGVtZV9mb2xkZXJfdXJsIjtzOjI0OiJodHRwOi8va3VuYW4uZGV2L3RoZW1lcy8iO3M6MTU6IndlYm1hc3Rlcl9lbWFpbCI7czoxOToiam9zZS5sZWVAYXl1aW5jLmNvbSI7czoxNDoid2VibWFzdGVyX25hbWUiO3M6MDoiIjtzOjIwOiJjaGFubmVsX25vbWVuY2xhdHVyZSI7czo3OiJjaGFubmVsIjtzOjEwOiJtYXhfY2FjaGVzIjtzOjM6IjE1MCI7czoxMToiY2FwdGNoYV91cmwiO3M6MzM6Imh0dHA6Ly9rdW5hbi5kZXYvaW1hZ2VzL2NhcHRjaGFzLyI7czoxMjoiY2FwdGNoYV9wYXRoIjtzOjYwOiIvVXNlcnMvaGVybWFubWFyaW4vRG9jdW1lbnRzL3dlYnNpdGVzL2t1bmFuL2ltYWdlcy9jYXB0Y2hhcy8iO3M6MTI6ImNhcHRjaGFfZm9udCI7czoxOiJ5IjtzOjEyOiJjYXB0Y2hhX3JhbmQiO3M6MToieSI7czoyMzoiY2FwdGNoYV9yZXF1aXJlX21lbWJlcnMiO3M6MToibiI7czoxNzoiZW5hYmxlX2RiX2NhY2hpbmciO3M6MToibiI7czoxODoiZW5hYmxlX3NxbF9jYWNoaW5nIjtzOjE6Im4iO3M6MTg6ImZvcmNlX3F1ZXJ5X3N0cmluZyI7czoxOiJuIjtzOjEzOiJzaG93X3Byb2ZpbGVyIjtzOjE6Im4iO3M6MTg6InRlbXBsYXRlX2RlYnVnZ2luZyI7czoxOiJuIjtzOjE1OiJpbmNsdWRlX3NlY29uZHMiO3M6MToibiI7czoxMzoiY29va2llX2RvbWFpbiI7czowOiIiO3M6MTE6ImNvb2tpZV9wYXRoIjtzOjA6IiI7czoyMDoid2Vic2l0ZV9zZXNzaW9uX3R5cGUiO3M6MToiYyI7czoxNToiY3Bfc2Vzc2lvbl90eXBlIjtzOjI6ImNzIjtzOjIxOiJhbGxvd191c2VybmFtZV9jaGFuZ2UiO3M6MToieSI7czoxODoiYWxsb3dfbXVsdGlfbG9naW5zIjtzOjE6InkiO3M6MTY6InBhc3N3b3JkX2xvY2tvdXQiO3M6MToieSI7czoyNToicGFzc3dvcmRfbG9ja291dF9pbnRlcnZhbCI7czoxOiIxIjtzOjIwOiJyZXF1aXJlX2lwX2Zvcl9sb2dpbiI7czoxOiJ5IjtzOjIyOiJyZXF1aXJlX2lwX2Zvcl9wb3N0aW5nIjtzOjE6InkiO3M6MjQ6InJlcXVpcmVfc2VjdXJlX3Bhc3N3b3JkcyI7czoxOiJuIjtzOjE5OiJhbGxvd19kaWN0aW9uYXJ5X3B3IjtzOjE6InkiO3M6MjM6Im5hbWVfb2ZfZGljdGlvbmFyeV9maWxlIjtzOjA6IiI7czoxNzoieHNzX2NsZWFuX3VwbG9hZHMiO3M6MToieSI7czoxNToicmVkaXJlY3RfbWV0aG9kIjtzOjc6InJlZnJlc2giO3M6OToiZGVmdF9sYW5nIjtzOjc6ImVuZ2xpc2giO3M6ODoieG1sX2xhbmciO3M6MjoiZW4iO3M6MTI6InNlbmRfaGVhZGVycyI7czoxOiJ5IjtzOjExOiJnemlwX291dHB1dCI7czoxOiJuIjtzOjEzOiJsb2dfcmVmZXJyZXJzIjtzOjE6Im4iO3M6MTM6Im1heF9yZWZlcnJlcnMiO3M6MzoiNTAwIjtzOjExOiJkYXRlX2Zvcm1hdCI7czo4OiIlbi8lai8leSI7czoxMToidGltZV9mb3JtYXQiO3M6MjoiMTIiO3M6MTM6InNlcnZlcl9vZmZzZXQiO3M6MDoiIjtzOjIxOiJkZWZhdWx0X3NpdGVfdGltZXpvbmUiO3M6MTI6IkFtZXJpY2EvTGltYSI7czoxMzoibWFpbF9wcm90b2NvbCI7czo0OiJtYWlsIjtzOjExOiJzbXRwX3NlcnZlciI7czowOiIiO3M6MTM6InNtdHBfdXNlcm5hbWUiO3M6MDoiIjtzOjEzOiJzbXRwX3Bhc3N3b3JkIjtzOjA6IiI7czoxMToiZW1haWxfZGVidWciO3M6MToibiI7czoxMzoiZW1haWxfY2hhcnNldCI7czo1OiJ1dGYtOCI7czoxNToiZW1haWxfYmF0Y2htb2RlIjtzOjE6Im4iO3M6MTY6ImVtYWlsX2JhdGNoX3NpemUiO3M6MDoiIjtzOjExOiJtYWlsX2Zvcm1hdCI7czo1OiJwbGFpbiI7czo5OiJ3b3JkX3dyYXAiO3M6MToieSI7czoyMjoiZW1haWxfY29uc29sZV90aW1lbG9jayI7czoxOiI1IjtzOjIyOiJsb2dfZW1haWxfY29uc29sZV9tc2dzIjtzOjE6InkiO3M6ODoiY3BfdGhlbWUiO3M6NzoiZGVmYXVsdCI7czoyMToiZW1haWxfbW9kdWxlX2NhcHRjaGFzIjtzOjE6Im4iO3M6MTY6ImxvZ19zZWFyY2hfdGVybXMiO3M6MToieSI7czoxOToiZGVueV9kdXBsaWNhdGVfZGF0YSI7czoxOiJ5IjtzOjI0OiJyZWRpcmVjdF9zdWJtaXR0ZWRfbGlua3MiO3M6MToibiI7czoxNjoiZW5hYmxlX2NlbnNvcmluZyI7czoxOiJuIjtzOjE0OiJjZW5zb3JlZF93b3JkcyI7czowOiIiO3M6MTg6ImNlbnNvcl9yZXBsYWNlbWVudCI7czowOiIiO3M6MTA6ImJhbm5lZF9pcHMiO3M6MDoiIjtzOjEzOiJiYW5uZWRfZW1haWxzIjtzOjA6IiI7czoxNjoiYmFubmVkX3VzZXJuYW1lcyI7czowOiIiO3M6MTk6ImJhbm5lZF9zY3JlZW5fbmFtZXMiO3M6MDoiIjtzOjEwOiJiYW5fYWN0aW9uIjtzOjg6InJlc3RyaWN0IjtzOjExOiJiYW5fbWVzc2FnZSI7czozNDoiVGhpcyBzaXRlIGlzIGN1cnJlbnRseSB1bmF2YWlsYWJsZSI7czoxNToiYmFuX2Rlc3RpbmF0aW9uIjtzOjIxOiJodHRwOi8vd3d3LnlhaG9vLmNvbS8iO3M6MTY6ImVuYWJsZV9lbW90aWNvbnMiO3M6MToieSI7czoxMjoiZW1vdGljb25fdXJsIjtzOjQ1OiJodHRwOi8vbG9jYWxob3N0L2VlX3RyYWlubmluZy9pbWFnZXMvc21pbGV5cy8iO3M6MTk6InJlY291bnRfYmF0Y2hfdG90YWwiO3M6NDoiMTAwMCI7czoxNzoibmV3X3ZlcnNpb25fY2hlY2siO3M6MToieSI7czoxNzoiZW5hYmxlX3Rocm90dGxpbmciO3M6MToibiI7czoxNzoiYmFuaXNoX21hc2tlZF9pcHMiO3M6MToieSI7czoxNDoibWF4X3BhZ2VfbG9hZHMiO3M6MjoiMTAiO3M6MTM6InRpbWVfaW50ZXJ2YWwiO3M6MToiOCI7czoxMjoibG9ja291dF90aW1lIjtzOjI6IjMwIjtzOjE1OiJiYW5pc2htZW50X3R5cGUiO3M6NzoibWVzc2FnZSI7czoxNDoiYmFuaXNobWVudF91cmwiO3M6MDoiIjtzOjE4OiJiYW5pc2htZW50X21lc3NhZ2UiO3M6NTA6IllvdSBoYXZlIGV4Y2VlZGVkIHRoZSBhbGxvd2VkIHBhZ2UgbG9hZCBmcmVxdWVuY3kuIjtzOjE3OiJlbmFibGVfc2VhcmNoX2xvZyI7czoxOiJ5IjtzOjE5OiJtYXhfbG9nZ2VkX3NlYXJjaGVzIjtzOjM6IjUwMCI7czoxNzoidGhlbWVfZm9sZGVyX3BhdGgiO3M6NTA6Ii9Vc2Vycy9oZXJtYW5tYXJpbi9Eb2N1bWVudHMvd2Vic2l0ZXMva3VuYW4vdGhlbWVzIjtzOjEwOiJpc19zaXRlX29uIjtzOjE6InkiO3M6MTE6InJ0ZV9lbmFibGVkIjtzOjE6InkiO3M6MjI6InJ0ZV9kZWZhdWx0X3Rvb2xzZXRfaWQiO3M6MToiMSI7czoxMDoiZmJjX2FwcF9pZCI7czoxNjoiMTYwMTAwOTg0MDE4MjIzNyI7czoxMDoiZmJjX3NlY3JldCI7czozMjoiZGI4MjlkYjRlOGI2MjZlN2YxMDAzM2I2YjhhOTFiNWIiO3M6MjY6ImZiY19lbGlnaWJsZV9tZW1iZXJfZ3JvdXBzIjtzOjE6IjUiO3M6MTY6ImZiY19tZW1iZXJfZ3JvdXAiO3M6MToiNSI7czoyMjoiZmJjX2FjY291bnRfYWN0aXZhdGlvbiI7czoxNzoiZmJjX25vX2FjdGl2YXRpb24iO3M6MjQ6ImZiY19wYXNzaXZlX3JlZ2lzdHJhdGlvbiI7czoxOiJ5IjtzOjI0OiJmYmNfY29uZmlybV9hY2NvdW50X3N5bmMiO3M6MToibiI7czoxNToiZmJjX2Nvbm5lY3RfdXJsIjtzOjQxOiJodHRwOi8va3VuYW4uZGV2Ly90aGVtZXMvdGhpcmRfcGFydHkvZmJjLyI7fQ==','YTozOntzOjE5OiJtYWlsaW5nbGlzdF9lbmFibGVkIjtzOjE6InkiO3M6MTg6Im1haWxpbmdsaXN0X25vdGlmeSI7czoxOiJuIjtzOjI1OiJtYWlsaW5nbGlzdF9ub3RpZnlfZW1haWxzIjtzOjA6IiI7fQ==','YTo0NDp7czoxMDoidW5fbWluX2xlbiI7czoxOiI0IjtzOjEwOiJwd19taW5fbGVuIjtzOjE6IjUiO3M6MjU6ImFsbG93X21lbWJlcl9yZWdpc3RyYXRpb24iO3M6MToieSI7czoyNToiYWxsb3dfbWVtYmVyX2xvY2FsaXphdGlvbiI7czoxOiJ5IjtzOjE4OiJyZXFfbWJyX2FjdGl2YXRpb24iO3M6NDoibm9uZSI7czoyMzoibmV3X21lbWJlcl9ub3RpZmljYXRpb24iO3M6MToibiI7czoyMzoibWJyX25vdGlmaWNhdGlvbl9lbWFpbHMiO3M6MDoiIjtzOjI0OiJyZXF1aXJlX3Rlcm1zX29mX3NlcnZpY2UiO3M6MToieSI7czoyMjoidXNlX21lbWJlcnNoaXBfY2FwdGNoYSI7czoxOiJ5IjtzOjIwOiJkZWZhdWx0X21lbWJlcl9ncm91cCI7czoxOiI1IjtzOjE1OiJwcm9maWxlX3RyaWdnZXIiO3M6NjoibWVtYmVyIjtzOjEyOiJtZW1iZXJfdGhlbWUiO3M6NzoiZGVmYXVsdCI7czoxNDoiZW5hYmxlX2F2YXRhcnMiO3M6MToieSI7czoyMDoiYWxsb3dfYXZhdGFyX3VwbG9hZHMiO3M6MToibiI7czoxMDoiYXZhdGFyX3VybCI7czozMzoiaHR0cDovL2t1bmFuLmRldi8vaW1hZ2VzL2F2YXRhcnMvIjtzOjExOiJhdmF0YXJfcGF0aCI7czo1OToiL1VzZXJzL2hlcm1hbm1hcmluL0RvY3VtZW50cy93ZWJzaXRlcy9rdW5hbi9pbWFnZXMvYXZhdGFycy8iO3M6MTY6ImF2YXRhcl9tYXhfd2lkdGgiO3M6MzoiMTAwIjtzOjE3OiJhdmF0YXJfbWF4X2hlaWdodCI7czozOiIxMDAiO3M6MTM6ImF2YXRhcl9tYXhfa2IiO3M6MjoiNTAiO3M6MTM6ImVuYWJsZV9waG90b3MiO3M6MToibiI7czo5OiJwaG90b191cmwiO3M6Mzk6Imh0dHA6Ly9rdW5hbi5kZXYvL2ltYWdlcy9tZW1iZXJfcGhvdG9zLyI7czoxMDoicGhvdG9fcGF0aCI7czo2NToiL1VzZXJzL2hlcm1hbm1hcmluL0RvY3VtZW50cy93ZWJzaXRlcy9rdW5hbi9pbWFnZXMvbWVtYmVyX3Bob3Rvcy8iO3M6MTU6InBob3RvX21heF93aWR0aCI7czozOiIxMDAiO3M6MTY6InBob3RvX21heF9oZWlnaHQiO3M6MzoiMTAwIjtzOjEyOiJwaG90b19tYXhfa2IiO3M6MjoiNTAiO3M6MTY6ImFsbG93X3NpZ25hdHVyZXMiO3M6MToieSI7czoxMzoic2lnX21heGxlbmd0aCI7czozOiI1MDAiO3M6MjE6InNpZ19hbGxvd19pbWdfaG90bGluayI7czoxOiJuIjtzOjIwOiJzaWdfYWxsb3dfaW1nX3VwbG9hZCI7czoxOiJuIjtzOjExOiJzaWdfaW1nX3VybCI7czo0NzoiaHR0cDovL2t1bmFuLmRldi8vaW1hZ2VzL3NpZ25hdHVyZV9hdHRhY2htZW50cy8iO3M6MTI6InNpZ19pbWdfcGF0aCI7czo3MzoiL1VzZXJzL2hlcm1hbm1hcmluL0RvY3VtZW50cy93ZWJzaXRlcy9rdW5hbi9pbWFnZXMvc2lnbmF0dXJlX2F0dGFjaG1lbnRzLyI7czoxNzoic2lnX2ltZ19tYXhfd2lkdGgiO3M6MzoiNDgwIjtzOjE4OiJzaWdfaW1nX21heF9oZWlnaHQiO3M6MjoiODAiO3M6MTQ6InNpZ19pbWdfbWF4X2tiIjtzOjI6IjMwIjtzOjE5OiJwcnZfbXNnX3VwbG9hZF9wYXRoIjtzOjY2OiIvVXNlcnMvaGVybWFubWFyaW4vRG9jdW1lbnRzL3dlYnNpdGVzL2t1bmFuL2ltYWdlcy9wbV9hdHRhY2htZW50cy8iO3M6MjM6InBydl9tc2dfbWF4X2F0dGFjaG1lbnRzIjtzOjE6IjMiO3M6MjI6InBydl9tc2dfYXR0YWNoX21heHNpemUiO3M6MzoiMjUwIjtzOjIwOiJwcnZfbXNnX2F0dGFjaF90b3RhbCI7czozOiIxMDAiO3M6MTk6InBydl9tc2dfaHRtbF9mb3JtYXQiO3M6NDoic2FmZSI7czoxODoicHJ2X21zZ19hdXRvX2xpbmtzIjtzOjE6InkiO3M6MTc6InBydl9tc2dfbWF4X2NoYXJzIjtzOjQ6IjYwMDAiO3M6MTk6Im1lbWJlcmxpc3Rfb3JkZXJfYnkiO3M6MTc6InRvdGFsX2ZvcnVtX3Bvc3RzIjtzOjIxOiJtZW1iZXJsaXN0X3NvcnRfb3JkZXIiO3M6NDoiZGVzYyI7czoyMDoibWVtYmVybGlzdF9yb3dfbGltaXQiO3M6MjoiMjAiO30=','YTo3OntzOjIyOiJlbmFibGVfdGVtcGxhdGVfcm91dGVzIjtzOjE6InkiO3M6MTE6InN0cmljdF91cmxzIjtzOjE6InkiO3M6ODoic2l0ZV80MDQiO3M6MDoiIjtzOjE5OiJzYXZlX3RtcGxfcmV2aXNpb25zIjtzOjE6Im4iO3M6MTg6Im1heF90bXBsX3JldmlzaW9ucyI7czoxOiI1IjtzOjE1OiJzYXZlX3RtcGxfZmlsZXMiO3M6MToieSI7czoxODoidG1wbF9maWxlX2Jhc2VwYXRoIjtzOjUzOiIvVXNlcnMvaGVybWFubWFyaW4vRG9jdW1lbnRzL3dlYnNpdGVzL2t1bmFuL3RlbXBsYXRlcyI7fQ==','YTo5OntzOjIxOiJpbWFnZV9yZXNpemVfcHJvdG9jb2wiO3M6MzoiZ2QyIjtzOjE4OiJpbWFnZV9saWJyYXJ5X3BhdGgiO3M6MDoiIjtzOjE2OiJ0aHVtYm5haWxfcHJlZml4IjtzOjU6InRodW1iIjtzOjE0OiJ3b3JkX3NlcGFyYXRvciI7czoxMDoidW5kZXJzY29yZSI7czoxNzoidXNlX2NhdGVnb3J5X25hbWUiO3M6MToieSI7czoyMjoicmVzZXJ2ZWRfY2F0ZWdvcnlfd29yZCI7czo4OiJjYXRlZ29yeSI7czoyMzoiYXV0b19jb252ZXJ0X2hpZ2hfYXNjaWkiO3M6MToibiI7czoyMjoibmV3X3Bvc3RzX2NsZWFyX2NhY2hlcyI7czoxOiJ5IjtzOjIzOiJhdXRvX2Fzc2lnbl9jYXRfcGFyZW50cyI7czoxOiJ5Ijt9','YToyOntzOjUzOiIvVXNlcnMvaGVybWFubWFyaW4vRG9jdW1lbnRzL3dlYnNpdGVzL2t1bmFuL2luZGV4LnBocCI7czozMjoiYzQwNmNkYzdjNDIyZjAxYWZhOTcwZDgwMzZhNDBmOWMiO3M6NzoiZW1haWxlZCI7YTowOnt9fQ==');
/*!40000 ALTER TABLE `exp_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_snippets`
--

DROP TABLE IF EXISTS `exp_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_snippets` (
  `snippet_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) NOT NULL,
  `snippet_name` varchar(75) NOT NULL,
  `snippet_contents` text,
  PRIMARY KEY (`snippet_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_snippets`
--

LOCK TABLES `exp_snippets` WRITE;
/*!40000 ALTER TABLE `exp_snippets` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_specialty_templates`
--

DROP TABLE IF EXISTS `exp_specialty_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_specialty_templates` (
  `template_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `enable_template` char(1) NOT NULL DEFAULT 'y',
  `template_name` varchar(50) NOT NULL,
  `data_title` varchar(80) NOT NULL,
  `template_data` text NOT NULL,
  PRIMARY KEY (`template_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_specialty_templates`
--

LOCK TABLES `exp_specialty_templates` WRITE;
/*!40000 ALTER TABLE `exp_specialty_templates` DISABLE KEYS */;
INSERT INTO `exp_specialty_templates` VALUES (1,1,'y','offline_template','','<html>\n<head>\n\n<title>System Offline</title>\n\n<style type=\"text/css\">\n\nbody {\nbackground-color:	#ffffff;\nmargin:				50px;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n\na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#999999 1px solid;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n</style>\n\n</head>\n\n<body>\n\n<div id=\"content\">\n\n<h1>System Offline</h1>\n\n<p>This site is currently offline</p>\n\n</div>\n\n</body>\n\n</html>'),(2,1,'y','message_template','','<!doctype html>\n<html lang=\"en\">\n  <meta charset=\"utf-8\">\n  <title>{title}</title>\n  {meta_refresh}\n  <meta name=\"description\" content=\"\">\n  <meta name=\"keywords\" content=\"\"> \n  <meta name=\"author\" content=\"@MadeByGus\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\">\n  <link rel=\"shortcut icon\" href=\"http://kunan.dev/app/assets/img/favicon_kunan.png\">\n  <link href=\"http://kunan.dev/app/assets/css/style.css\" rel=\"stylesheet\"> <!-- App styles -->\n  <link href=\"http://kunan.dev/app/assets/css/ebm.css\" rel=\"stylesheet\">\n  <link href=\'http://fonts.googleapis.com/css?family=Roboto:400,300,100,500\' rel=\'stylesheet\' type=\'text/css\'>\n  <script src=\"//use.typekit.net/cit1oun.js\"></script>\n  <script>try{Typekit.load();}catch(e){}</script>\n  <style>\n	.error_designado ul {\n		padding-left:0px;\n	}  \n	</style>  \n  <div class=\"site-wrapper\"> <!-- Body -->\n	  <!-- HEADER -->\n	    <header class=\"site-menu\">\n	      <div id=\"menu-vistas\" class=\"vistas hidden-xs container-fluid text-center\">\n				  <div class=\"container-md p-0 row\">\n				    <div class=\"header-left text-left col-md-1 p-0\" >\n				      <a href=\"http://kunan.dev/\"><img class=\"ml-14\" src=\"http://kunan.dev/app/assets/img/logo.png\"></a>\n				    </div>\n				    <div class=\"header-center col-md-9 pr-0 text-center\">\n				      <nav class=\"text-white text-uppercase\" >\n				        <a href=\"http://kunan.dev/content/index#porqueestamos\"><span>¿Por qué estamos aquí?</span></a>|\n				        <a href=\"http://kunan.dev/content/index#nuestroreto\"><span>Nuestro reto</span></a>|\n				        <a href=\"http://kunan.dev/content/index#lineasdeaccion\"><span>Líneas de acción</span></a>|\n				        <a href=\"http://kunan.dev/komunicacion\"><span>Komunicación</span></a> |\n				        <a href=\"http://kunan.dev/content/index#unete\"><span>Súmate</span></a>\n				      </nav>\n				    </div>\n				    <div class=\"header-right col-md-2 pt-14 pr-21 text-right\">\n				    \n				    	<a class=\"btn btn-outline small text-uppercase btn-primary pv-7\" href=\"http://kunan.dev/?ACT=15&amp;csrf_token=d8b63a976e5c3cd78df8bdc06acd6bf65c5ea593\">Herman Marin (salir)</a>\n				    \n				    </div>    \n				  </div>\n				</div>\n				<div class=\"menu-section hidden-lg\">\n	        <img class=\"logo-responsive\" src=\"http://kunan.dev/app/assets/img/logo-kunan-responsive.png\">\n	        <div class=\"menu-toggle\">\n	          <div class=\"one\"></div>\n	          <div class=\"two\"></div>\n	          <div class=\"three\"></div>\n	        </div>\n	        <nav>\n	          <ul role=\"navigation\" class=\"hidden\">\n	            <li><a href=\"http://kunan.dev/content/index#porqueestamos\"><h3 class=\"text-uppercase text-white\">Por que estamos aquí</h3></a></li>\n	            <li><a href=\"http://kunan.dev/content/index#nuestroreto\"><h3 class=\"text-uppercase text-white\">Nuestro reto</h3></a></li>\n	            <li><a href=\"http://kunan.dev/content/index#lineasdeaccion\"><h3 class=\"text-uppercase text-white\">Linea de acción</h3></a></li>\n	            <li><a href=\"http://kunan.dev/komunicacion\"><h3 class=\"text-uppercase text-white\">Komunicación</h3></a></li>\n	            <a href=\"#\" class=\"mt-14 col-xs-5 btn btn-primary borderless\"><h4 class=\"m-0 text-uppercase text-white\">Vota</h4></a>\n	          </ul>\n	        </nav>\n	      </div>\n	    </header>\n	  <!-- END: HEADER -->\n    <main class=\"site-content\">\n      <section class=\"minh-70\"></section>\n      <!-- DESCRIPTION -->\n      <section class=\"text-left minhp-100\" id=\"description\">\n        <div class=\"minh-70\"></div>\n        <div class=\"container-sm pv-70 text-center text-black\">\n          <h1 class=\"text-uppercase h2 light\">{heading}</h1>\n          <div class=\"row\">\n	          <div class=\"col-md-8 col-md-offset-2 light text-gray text-left error_designado\">\n			        {content}\n			        <p class=\"text-primary\">{link} ›</p>\n		        </div>   \n          </div>\n        </div>\n      </section>\n      <!-- END: DESCRIPTION -->\n    </main>\n    <!-- FOOTER -->\n    <footer class=\"footer pv-70 minh-280 bg-gray-darker\">\n      <div class=\"container-md text-white\">\n        <div class=\"row\">\n          <div class=\"col-md-4 hidden-xs thin pl-28\">\n            <h3 class=\"pb-7 h4\">Kunan</h3>\n            <a href=\"http://kunan.dev/premio\" class=\"text-hover-gray-lighter\"><p class=\"small mb-0\">Premio</p></a>\n            <a href=\"http://kunan.dev/comunidad\" class=\"text-hover-gray-lighter\"><p class=\"small mb-0\">Comunidad</p></a>\n            <a href=\"http://kunan.dev/komunicacion\" class=\"text-hover-gray-lighter\"><p class=\"small mb-0\">Komunicación</p></a>\n          </div>\n          <div class=\"col-md-4 hidden-xs thin \">\n            <h3 class=\"pb-7 h4\">Aplíca</h3>\n            <a href=\"\" class=\"text-hover-gray-lighter\"><p class=\"small mb-0\">Formulario de Postulante</p></a>\n          </div>\n          <div class=\"col-md-4 col-xs-12 text-center\">\n            <h3 class=\"pb-7 h4\">Siguenos</h3>\n            <a href=\"https://www.facebook.com/premiokunan\" target=\"_blank\"><img class=\"mh-7 pl-42-lg\" src=\"http://kunan.dev/app/assets/img/Facebook.png\"></a>\n            <a href=\"https://instagram.com/kunan_es_ahora/\" target=\"_blank\"><img class=\"mh-7 ml-56-xs mr-42-xs\" src=\"http://kunan.dev/app/assets/img/Instagram.png\"></a>\n            <!--<a href=\"https://www.youtube.com/channel/UCZd7zr6fMrJTR_kz1CV3BqQ\" target=\"_blank\"><img class=\"mh-7\" src=\"http://kunan.dev/app/assets/img/LinkedIn.png\"></a>-->\n          </div>\n        </div>\n      </div>\n    </footer>\n    <!-- END: FOOTER -->\n  </div>\n  <script src=\"http://kunan.dev/app/assets/js/jquery.min.js\"></script> <!-- App scripts -->\n  <script src=\"http://kunan.dev/app/assets/js/scripts.min.js\"></script>\n  <script src=\"http://kunan.dev/app/assets/js/menu-control.js\"></script>\n	\n  <!-- Go to www.addthis.com/dashboard to customize your tools -->\n	<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-558a3b7841972204\" async=\"async\"></script>\n	<script>\n	  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n	  })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\n	\n	  ga(\'create\', \'UA-64449296-1\', \'auto\');\n	  ga(\'send\', \'pageview\');\n	\n	</script>	\n\n</html> '),(3,1,'y','admin_notify_reg','Notification of new member registration','New member registration site: {site_name}\n\nScreen name: {name}\nUser name: {username}\nEmail: {email}\n\nYour control panel URL: {control_panel_url}'),(4,1,'y','admin_notify_entry','A new channel entry has been posted','A new entry has been posted in the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nPosted by: {name}\nEmail: {email}\n\nTo read the entry please visit:\n{entry_url}\n'),(5,1,'y','admin_notify_mailinglist','Someone has subscribed to your mailing list','A new mailing list subscription has been accepted.\n\nEmail Address: {email}\nMailing List: {mailing_list}'),(6,1,'y','admin_notify_comment','You have just received a comment','You have just received a comment for the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nLocated at:\n{comment_url}\n\nPosted by: {name}\nEmail: {email}\nURL: {url}\nLocation: {location}\n\n{comment}'),(7,1,'y','mbr_activation_instructions','Enclosed is your activation code','Thank you for your new member registration.\n\nTo activate your new account, please visit the following URL:\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}\n\n{site_url}'),(8,1,'y','forgot_password_instructions','Login information','{name},\n\nTo reset your password, please go to the following page:\n\n{reset_url}\n\nThen log in with your username: {username}\n\nIf you do not wish to reset your password, ignore this message. It will expire in 24 hours.\n\n{site_name}\n{site_url}'),(9,1,'y','validated_member_notify','Your membership account has been activated','{name},\n\nYour membership account has been activated and is ready for use.\n\nThank You!\n\n{site_name}\n{site_url}'),(10,1,'y','decline_member_validation','Your membership account has been declined','{name},\n\nWe\'re sorry but our staff has decided not to validate your membership.\n\n{site_name}\n{site_url}'),(11,1,'y','mailinglist_activation_instructions','Email Confirmation','Thank you for joining the \"{mailing_list}\" mailing list!\n\nPlease click the link below to confirm your email.\n\nIf you do not want to be added to our list, ignore this email.\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}'),(12,1,'y','comment_notification','Someone just responded to your comment','{name_of_commenter} just responded to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comment at the following URL:\n{comment_url}\n\n{comment}\n\nTo stop receiving notifications for this comment, click here:\n{notification_removal_url}'),(13,1,'y','comments_opened_notification','New comments have been added','Responses have been added to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comments at the following URL:\n{comment_url}\n\n{comments}\n{comment}\n{/comments}\n\nTo stop receiving notifications for this entry, click here:\n{notification_removal_url}'),(14,1,'y','private_message_notification','Someone has sent you a Private Message','\n{recipient_name},\n\n{sender_name} has just sent you a Private Message titled ‘{message_subject}’.\n\nYou can see the Private Message by logging in and viewing your inbox at:\n{site_url}\n\nContent:\n\n{message_content}\n\nTo stop receiving notifications of Private Messages, turn the option off in your Email Settings.\n\n{site_name}\n{site_url}'),(15,1,'y','pm_inbox_full','Your private message mailbox is full','{recipient_name},\n\n{sender_name} has just attempted to send you a Private Message,\nbut your inbox is full, exceeding the maximum of {pm_storage_limit}.\n\nPlease log in and remove unwanted messages from your inbox at:\n{site_url}');
/*!40000 ALTER TABLE `exp_specialty_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_stats`
--

DROP TABLE IF EXISTS `exp_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_stats` (
  `stat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `total_members` mediumint(7) NOT NULL DEFAULT '0',
  `recent_member_id` int(10) NOT NULL DEFAULT '0',
  `recent_member` varchar(50) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `most_visitors` mediumint(7) NOT NULL DEFAULT '0',
  `most_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_cache_clear` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stat_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_stats`
--

LOCK TABLES `exp_stats` WRITE;
/*!40000 ALTER TABLE `exp_stats` DISABLE KEYS */;
INSERT INTO `exp_stats` VALUES (1,1,2,3,'Herman Marin',21,0,0,0,1435113180,0,0,1435175333,15,1435079346,1435411070);
/*!40000 ALTER TABLE `exp_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_status_groups`
--

DROP TABLE IF EXISTS `exp_status_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_status_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_status_groups`
--

LOCK TABLES `exp_status_groups` WRITE;
/*!40000 ALTER TABLE `exp_status_groups` DISABLE KEYS */;
INSERT INTO `exp_status_groups` VALUES (1,1,'Statuses'),(2,1,'Drafts');
/*!40000 ALTER TABLE `exp_status_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_status_no_access`
--

DROP TABLE IF EXISTS `exp_status_no_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_status_no_access` (
  `status_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`status_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_status_no_access`
--

LOCK TABLES `exp_status_no_access` WRITE;
/*!40000 ALTER TABLE `exp_status_no_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_status_no_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_statuses`
--

DROP TABLE IF EXISTS `exp_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_statuses` (
  `status_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_order` int(3) unsigned NOT NULL,
  `highlight` varchar(30) NOT NULL,
  PRIMARY KEY (`status_id`),
  KEY `group_id` (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_statuses`
--

LOCK TABLES `exp_statuses` WRITE;
/*!40000 ALTER TABLE `exp_statuses` DISABLE KEYS */;
INSERT INTO `exp_statuses` VALUES (1,1,1,'open',1,'009933'),(2,1,1,'closed',2,'990000'),(3,1,1,'Featured',3,'000000'),(4,1,2,'open',1,'009933'),(5,1,2,'closed',2,'990000'),(6,1,2,'First Draft',3,'000000'),(7,1,2,'Second Draft',4,'122B70'),(8,1,2,'In review',5,'000000'),(9,1,2,'Final',6,'000000');
/*!40000 ALTER TABLE `exp_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_groups`
--

DROP TABLE IF EXISTS `exp_template_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_template_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `group_order` int(3) unsigned NOT NULL,
  `is_site_default` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`),
  KEY `group_name_idx` (`group_name`),
  KEY `group_order_idx` (`group_order`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_groups`
--

LOCK TABLES `exp_template_groups` WRITE;
/*!40000 ALTER TABLE `exp_template_groups` DISABLE KEYS */;
INSERT INTO `exp_template_groups` VALUES (1,1,'content',1,'y'),(2,1,'includes',2,'n'),(3,1,'komunicacion',3,'n'),(4,1,'comunidad',4,'n'),(5,1,'jurado',5,'n'),(6,1,'gracias',6,'n'),(7,1,'login',7,'n'),(8,1,'premio',8,'n'),(9,1,'emprendedores-sociales',9,'n'),(10,1,'formulario',10,'n'),(11,1,'lanzamiento',11,'n'),(12,1,'general',12,'n');
/*!40000 ALTER TABLE `exp_template_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_member_groups`
--

DROP TABLE IF EXISTS `exp_template_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_template_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `template_group_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`template_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_member_groups`
--

LOCK TABLES `exp_template_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_template_member_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_template_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_no_access`
--

DROP TABLE IF EXISTS `exp_template_no_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_template_no_access` (
  `template_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`template_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_no_access`
--

LOCK TABLES `exp_template_no_access` WRITE;
/*!40000 ALTER TABLE `exp_template_no_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_template_no_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_routes`
--

DROP TABLE IF EXISTS `exp_template_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_template_routes` (
  `route_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `route` varchar(512) DEFAULT NULL,
  `route_parsed` varchar(512) DEFAULT NULL,
  `route_required` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`route_id`),
  KEY `template_id` (`template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_routes`
--

LOCK TABLES `exp_template_routes` WRITE;
/*!40000 ALTER TABLE `exp_template_routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_template_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_templates`
--

DROP TABLE IF EXISTS `exp_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_templates` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `save_template_file` char(1) NOT NULL DEFAULT 'n',
  `template_type` varchar(16) NOT NULL DEFAULT 'webpage',
  `template_data` mediumtext,
  `template_notes` text,
  `edit_date` int(10) NOT NULL DEFAULT '0',
  `last_author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cache` char(1) NOT NULL DEFAULT 'n',
  `refresh` int(6) unsigned NOT NULL DEFAULT '0',
  `no_auth_bounce` varchar(50) NOT NULL DEFAULT '',
  `enable_http_auth` char(1) NOT NULL DEFAULT 'n',
  `allow_php` char(1) NOT NULL DEFAULT 'n',
  `php_parse_location` char(1) NOT NULL DEFAULT 'o',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `protect_javascript` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`template_id`),
  KEY `group_id` (`group_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_templates`
--

LOCK TABLES `exp_templates` WRITE;
/*!40000 ALTER TABLE `exp_templates` DISABLE KEYS */;
INSERT INTO `exp_templates` VALUES (1,1,1,'index','y','webpage','<!DOCTYPE html>\n<html lang=\"en\">\n      <head>\n              <meta charset=\"UTF-8\">\n              <title>Hello, World!</title>\n      </head>\n\n      <body>\n              <h1>Hello, World!</h1>\n              <p>\n              This is an excellent way to see our work.\n              </p>\n      </body>\n</html>','',1434807036,1,'n',0,'','n','n','o',399,'n'),(2,1,2,'index','n','webpage','',NULL,1434806775,0,'n',0,'','n','n','o',0,'n'),(3,1,2,'header','y','webpage','','',1434806786,1,'n',0,'','n','n','o',0,'n'),(4,1,2,'footer','y','webpage','','',1434806796,1,'n',0,'','n','n','o',0,'n'),(5,1,2,'navegacion','y','webpage','','',1434807003,1,'n',0,'','n','n','o',0,'n'),(6,1,3,'index','y','webpage','    <main class=\"site-content\">\n      <section class=\"minh-70\"></section>\n      <!-- DESCRIPTION -->\n      <section class=\"text-left\" id=\"description\">\n        <div class=\"container-md pv-70\">\n          <div class=\"row\">\n            <div class=\"col-md-3 text-gray-darker light\">\n              <h4 class=\"pt-21 mb-21\">Categorías</h4>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Noticias</p></a>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Eventos</p></a>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Estudios</p></a>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Videos</p></a>\n              <h4 class=\"pt-21 mb-21\">Las populares</h4>\n              <p class=\"h6 light mb-0\">Título de la historia más popular de la vitacora.</p>\n              <a href=\"\" class=\"h6 m-0 mb-14 light text-gray-light\"><dfn>Lee más</dfn></a>\n              <p class=\"h6 light mb-0\">Título de la historia más popular de la vitacora.</p>\n              <a href=\"\" class=\"h6 m-0 mb-14 light text-gray-light\"><dfn>Lee más</dfn></a>\n              <p class=\"h6 light mb-0\">Título de la historia más popular de la vitacora.</p>\n              <a href=\"\" class=\"h6 m-0 mb-14 light text-gray-light\"><dfn>Lee más</dfn></a>\n            </div>\n            <div class=\"col-md-9 light text-left text-gray-darker\">\n              <h2 class=\"pb-28 text-center\">Bitacora</h2>\n              <div class=\"row pb-21\">\n                <div class=\"col-md-1 pr-0 text-left\">\n                  <img class=\"img-responsive\" src=\"assets/img/herman.png\">\n                </div>\n                <div class=\"col-md-11 pl-14 text-left\">\n                  <p class=\"h5 m-0 pt-7\">Herman Marin</p>\n                  <p class=\"h6 m-0 light\">Laboratoria - 15 de Mayo 2015</p>\n                </div>\n              </div>\n              <img class=\"img-responsive\" src=\"assets/img/kunan1.png\">\n              <h3>Título de artículo</h3>\n              <p class=\"h4 lh-lg light text-gray\">Eam esse commodo ocurreret ad, per dico phaedrum et, te debet numquam eloquentiam est. Nihil nostrud ea sos. Omnis habemus est id, homero doctus eripuit eu quo. At labitur sensibus eos, per utinam platonem cu.</p>\n              <a href=\"\" class=\"text-hover-primary h5\">\n                <p class=\"text-primary pv-7 light\">Leer más</p>\n              </a>\n\n              <div class=\"text-center\">\n                <img class=\"pv-28\"src=\"assets/img/linea-separadora.png\">\n              </div>\n\n              <div class=\"row pb-21\">\n                <div class=\"col-md-1 pr-0 text-left\">\n                  <img class=\"img-responsive\" src=\"assets/img/herman.png\">\n                </div>\n                <div class=\"col-md-11 pl-14 text-left\">\n                  <p class=\"h5 m-0 pt-7\">Herman Marin</p>\n                  <p class=\"h6 m-0 light\">Laboratoria - 15 de Mayo 2015</p>\n                </div>\n              </div>\n              <img class=\"img-responsive\" src=\"assets/img/kunan1.png\">\n              <h3>Título de artículo</h3>\n              <p class=\"h4 lh-lg light text-gray\">Eam esse commodo ocurreret ad, per dico phaedrum et, te debet numquam eloquentiam est. Nihil nostrud ea sos. Omnis habemus est id, homero doctus eripuit eu quo. At labitur sensibus eos, per utinam platonem cu.</p>\n              <a href=\"\" class=\"text-hover-primary h5\">\n                <p class=\"text-primary pv-7 light\">Leer más</p>\n              </a>\n\n              <div class=\"text-center\">\n                <img class=\"pv-28\"src=\"assets/img/linea-separadora.png\">\n              </div>\n\n              <div class=\"row pb-21\">\n                <div class=\"col-md-1 pr-0 text-left\">\n                  <img class=\"img-responsive\" src=\"assets/img/herman.png\">\n                </div>\n                <div class=\"col-md-11 pl-14 text-left\">\n                  <p class=\"h5 m-0 pt-7\">Herman Marin</p>\n                  <p class=\"h6 m-0 light\">Laboratoria - 15 de Mayo 2015</p>\n                </div>\n              </div>\n              <img class=\"img-responsive\" src=\"assets/img/kunan1.png\">\n              <h3>Título de artículo</h3>\n              <p class=\"h4 lh-lg light text-gray\">Eam esse commodo ocurreret ad, per dico phaedrum et, te debet numquam eloquentiam est. Nihil nostrud ea sos. Omnis habemus est id, homero doctus eripuit eu quo. At labitur sensibus eos, per utinam platonem cu.</p>\n              <a href=\"\" class=\"text-hover-primary h5\">\n                <p class=\"text-primary pv-7 light\">Leer más</p>\n              </a>\n\n              <div class=\"text-center\">\n                <img class=\"pv-28\"src=\"assets/img/linea-separadora.png\">\n              </div>\n              \n\n\n\n\n\n\n              <div class=\"text-gray-dark text-left\">\n                <a href=\"\"><span class=\"pr-14\">Primero</span></a>\n                <a href=\"\"><span>1</span></a>,\n                <a href=\"\"><span>2</span></a>,\n                <a href=\"\"><span>3</span></a>,\n                <a href=\"\"><span>4</span></a>,\n                <a href=\"\"><span>5</span></a>,\n                <a href=\"\"><span>6</span></a>,\n                <a href=\"\"><span>7</span></a>,\n                <a href=\"\"><span>8</span></a>,\n                <a href=\"\"><span>9</span></a>\n                <a href=\"\"><span class=\"pl-14\">Siguiente</span></a>\n              </div>\n              \n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: DESCRIPTION -->\n\n      <!-- FORMULARIO -->\n      <section class=\"text-center\" style=\"background:url(assets/img/completa-el-formulario.png)\">\n        <div class=\"container-md pv-70 text-white\">\n          <h2>Completa el formulario</h2>\n          <p class=\"lead\">Es importante que consideres que para poder concursar, debes estar de acuerdo con los términos y condiciones y haber leído las bases del concurso.</p>\n          <p>Cierre el 27 de Julio</p>\n          <a href=\"\" class=\"btn btn-white\">\n            <span class=\"text-blue-banner ph-7\">COMPLETA</span>\n          </a>\n        </div>\n      </section>\n      <!-- END: FORMULARIO -->\n      <!-- ESTADISTICAS -->\n      <section class=\"bg-gray-lighter\" id=\"estadisticas\">\n        <div class=\"container-md pv-70 text-gray-darker\">\n          <div class=\"row pb-21\">\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">170</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">iniciativa de impacto identificadas</p>\n            </div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">24</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">regiones del país</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">38K</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">votos registrados en la web en 8 días</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">2,2MM</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">de usuarios potenciales en todo el país</p>\n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: ESTADISTICAS -->\n    </main>','',1434807454,1,'n',0,'','n','n','o',63,'n'),(7,1,2,'estadistica','y','webpage','','',1434807620,1,'n',0,'','n','n','o',0,'n'),(8,1,3,'articulo','y','webpage','    <main class=\"site-content\">\n      <section class=\"minh-70\"></section>\n      <!-- DESCRIPTION -->\n      <section class=\"text-left\" id=\"description\">\n        <div class=\"container-md pv-70\">\n          <div class=\"row\">\n            <div class=\"col-md-3 text-gray-darker light\"></div>\n            <div class=\"col-md-9 light text-left text-gray-darker\">\n              <h2 class=\"pb-21 text-black\">Bases del concurso</h2>\n              <p class=\"h4 light lh-lg mt-7 mb-56 text-left\">It was a humorously perilous business for both of us. For, before we proceed further, it must be said that the monkey-rope was fast at both ends; fast to Queequeg\'s broad canvas belt, and fast to my narrow leather one. So that for better or for worse, we two, for the time, were wedded; and should poor Queequeg\'s sink to rise no more, then both usage and honour demanded, that instead of cutting the cord, it should drag me down in his wake. So, then, an elingated Siamese ligature united us. Queequeg was my own inseparable twin brother.</p>\n\n              <h3 class=\"pb-21 text-black\">I. Base número uno</h3>\n              <p class=\"h4 light lh-lg mt-7 mb-56 text-left\">It was a humorously perilous business for both of us. For, before we proceed further, it must be said that the monkey-rope was fast at both ends; fast to Queequeg\'s broad canvas belt, and fast to my narrow leather one. So that for better or for worse, we two, for the time, were wedded; and should poor Queequeg\'s sink to rise no more, then both usage and honour demanded, that instead of cutting the cord, it should drag me down in his wake. So, then, an elingated Siamese ligature united us. Queequeg was my own inseparable twin brother.\n              So that for better or for worse, we two, for the time, were wedded; and should poor Queequeg\'s sink to rise no more, then both usage and honour demanded, that instead of cutting the cord, it should drag me down in his wake. So, then, an elingated Siamese ligature united us. Queequeg was my own inseparable twin brother.\n              </p>\n\n              <div class=\"text-center\">\n                <img class=\"pv-28\"src=\"assets/img/linea-separadora.png\">\n              </div>\n              \n              \n              \n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: DESCRIPTION -->\n\n      <!-- FORMULARIO -->\n      <section class=\"text-center\" style=\"background:url(assets/img/completa-el-formulario.png)\">\n        <div class=\"container-md pv-70 text-white\">\n          <h2>Completa el formulario</h2>\n          <p class=\"lead\">Es importante que consideres que para poder concursar, debes estar de acuerdo con los términos y condiciones y haber leído las bases del concurso.</p>\n          <p>Cierre el 27 de Julio</p>\n          <a href=\"\" class=\"btn btn-white\">\n            <span class=\"text-blue-banner ph-7\">COMPLETA</span>\n          </a>\n        </div>\n      </section>\n      <!-- END: FORMULARIO -->\n      <!-- ESTADISTICAS -->\n      <section class=\"bg-gray-lighter\" id=\"estadisticas\">\n        <div class=\"container-md pv-70 text-gray-darker\">\n          <div class=\"row pb-21\">\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">170</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">iniciativa de impacto identificadas</p>\n            </div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">24</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">regiones del país</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">38K</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">votos registrados en la web en 8 días</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">2,2MM</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">de usuarios potenciales en todo el país</p>\n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: ESTADISTICAS -->\n    </main>','',1434807883,1,'n',0,'','n','n','o',63,'n'),(9,1,2,'formulario','y','webpage','      <!-- FORMULARIO -->\n      <section class=\"text-center\" style=\"background:url(assets/img/completa-el-formulario.png)\">\n        <div class=\"container-md pv-70 text-white\">\n          <h2>Completa el formulario</h2>\n          <p class=\"lead\">Es importante que consideres que para poder concursar, debes estar de acuerdo con los términos y condiciones y haber leído las bases del concurso.</p>\n          <p>Cierre el 27 de Julio</p>\n          <a href=\"\" class=\"btn btn-white\">\n            <span class=\"text-blue-banner ph-7\">COMPLETA</span>\n          </a>\n        </div>\n      </section>\n      <!-- END: FORMULARIO -->','',1434808038,1,'n',0,'','n','n','o',0,'n'),(10,1,2,'bitacora-navegacion','y','webpage','              <h4 class=\"pt-21 mb-21\">Categorías</h4>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Noticias</p></a>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Eventos</p></a>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Estudios</p></a>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Videos</p></a>\n              <h4 class=\"pt-21 mb-21\">Las populares</h4>\n              <p class=\"h6 light mb-0\">Título de la historia más popular de la vitacora.</p>\n              <a href=\"\" class=\"h6 m-0 mb-14 light text-gray-light\"><dfn>Lee más</dfn></a>\n              <p class=\"h6 light mb-0\">Título de la historia más popular de la vitacora.</p>\n              <a href=\"\" class=\"h6 m-0 mb-14 light text-gray-light\"><dfn>Lee más</dfn></a>\n              <p class=\"h6 light mb-0\">Título de la historia más popular de la vitacora.</p>\n              <a href=\"\" class=\"h6 m-0 mb-14 light text-gray-light\"><dfn>Lee más</dfn></a>','',1434808314,1,'n',0,'','n','n','o',0,'n'),(11,1,4,'index','y','webpage','    <main class=\"site-content\">\n      <section id=\"hero-image\" class=\"minhp-80\" style=\"background:url(assets/img/comunidad.png)\">\n        <div class=\"bg-hero-image minhp-80\">\n          <div class=\"container-sm minh-210\"></div>  \n          <div class=\"container-sm text-white text-center\">\n            <h1 class=\"text-uppercase m-0 pv-14\">Comunidad</h1>\n            <p class=\"lead thin pb-70 mb-28\">Kunan quiere consolidad un ecosistema de apoya a la innovación y emprendimiento social de los jóvenes</p>\n            \n            <a href=\"\"><img class=\"pt-14\" src=\"assets/img/triangulo-bajada.png\" alt=\"\"></a>\n          </div>\n        </div>\n      </section>\n      <!-- DESCRIPTION -->\n      <section class=\"text-center\" id=\"description\">\n        <div class=\"container-md pv-35 text-black\">\n          <h3 class=\"pt-28\">Qué hacemos</h3>\n          <p class=\"h4 lh-lg text-gray-darker light\">Cada vez son más los jóvenes que motivados por su optimismo, creatividad y sensibilidad anes los problemas sociales inician proyectos para transformas su entorno.</p>\n          \n          <img class=\"pv-35\"src=\"assets/img/linea-separadora.png\">\n\n          <h3 class=\"pt-28\">Quienes la integran</h3>\n          <p class=\"h4 lh-lg text-gray-darker light\">Cada vez son más los jóvenes que motivados por su optimismo, creatividad y sensibilidad anes los problemas sociales inician proyectos para transformas su entorno.</p>\n\n          <div class=\"row container-sm pb-14\">\n            <div class=\"col-md-3\">\n              <img src=\"assets/img/kani1.png\">\n            </div>\n            <div class=\"col-md-3\">\n              <img src=\"assets/img/evea.png\">\n            </div>\n            <div class=\"col-md-3\">\n              <img src=\"assets/img/llamapack.png\">\n            </div>\n            <div class=\"col-md-3\">\n              <img src=\"assets/img/artesana.png\">\n            </div>\n          </div>\n          <div class=\"row container-sm pb-14\">\n            <div class=\"col-md-3\">\n              <img src=\"assets/img/kani1.png\">\n            </div>\n            <div class=\"col-md-3\">\n              <img src=\"assets/img/evea.png\">\n            </div>\n            <div class=\"col-md-3\">\n              <img src=\"assets/img/llamapack.png\">\n            </div>\n            <div class=\"col-md-3\">\n              <img src=\"assets/img/artesana.png\">\n            </div>\n          </div>\n          <div class=\"row container-sm pb-14\">\n            <div class=\"col-md-3\">\n              <img src=\"assets/img/kani1.png\">\n            </div>\n            <div class=\"col-md-3\">\n              <img src=\"assets/img/evea.png\">\n            </div>\n            <div class=\"col-md-3\">\n              <img src=\"assets/img/llamapack.png\">\n            </div>\n            <div class=\"col-md-3\">\n              <img src=\"assets/img/artesana.png\">\n            </div>\n          </div>\n\n          <img class=\"pv-56\"src=\"assets/img/linea-separadora.png\">\n\n          \n          <h2 class=\"pb-35\">Cronograma</h2>\n          <div class=\"container-xs\">\n            <div class=\"row text-gray-darker mb-14\">\n              <div class=\"col-md-2 text-right border-right-gray\">\n                <h1 class=\"m-0\">17</h1>\n                <h4 class=\"m-0 mb-7\">Julio</h4>\n              </div>\n              <div class=\"col-md-10 text-left lh-sm\">\n                <p class=\"text-gray-light light mb-7\">Inicia la convocatoria y cierra el 20 de agosto, está atento.</p>\n                <p class=\"text-black light\">Conoce las bases</p>\n              </div>\n            </div>\n            <div class=\"row text-gray-darker mb-14\">\n              <div class=\"col-md-2 text-right border-right-gray\">\n                <h1 class=\"m-0\">17</h1>\n                <h4 class=\"m-0 mb-7\">Julio</h4>\n              </div>\n              <div class=\"col-md-10 text-left lh-sm\">\n                <p class=\"text-gray-light light mb-7\">Inicia la convocatoria y cierra el 20 de agosto, está atento.</p>\n                <p class=\"text-black light\">Conoce las bases</p>\n              </div>\n            </div>\n            <div class=\"row text-gray-darker mb-14\">\n              <div class=\"col-md-2 text-right border-right-gray\">\n                <h1 class=\"m-0\">17</h1>\n                <h4 class=\"m-0 mb-7\">Julio</h4>\n              </div>\n              <div class=\"col-md-10 text-left lh-sm\">\n                <p class=\"text-gray-light light mb-7\">Inicia la convocatoria y cierra el 20 de agosto, está atento.</p>\n                <p class=\"text-black light\">Conoce las bases</p>\n              </div>\n            </div>\n            <div class=\"row text-gray-darker mb-14\">\n              <div class=\"col-md-2 text-right border-right-gray\">\n                <h1 class=\"m-0\">17</h1>\n                <h4 class=\"m-0 mb-7\">Julio</h4>\n              </div>\n              <div class=\"col-md-10 text-left lh-sm\">\n                <p class=\"text-gray-light light mb-7\">Inicia la convocatoria y cierra el 20 de agosto, está atento.</p>\n                <p class=\"text-black light\">Conoce las bases</p>\n              </div>\n            </div>\n\n          </div>\n\n          <img class=\"pv-56\"src=\"assets/img/linea-separadora.png\">\n          <!-- LA BITACORA -->\n          <h2 class=\"pb-14\">La bitácora</h2>\n          <p class=\"h4 light m-0 pb-21\">Omnis habemus est id, homero doctus eripuit eu quo.</p>\n          <ul class=\"grid-list grid-list-3 grid-list-1-xs text-gray-darker text-left\">\n            <li class=\"grid-list-item\">\n              <a href=\"\"><img class=\"img-responsive\" src=\"assets/img/1.png\"></a>\n              <a href=\"\"><p class=\"h5 mt-21 mb-7\">Titulo de la vivencia</p></a>\n              <p class=\"h6 m-0 light\"><dfn>15 de Mayo 2015</dfn></p>\n              <p class=\"lh-sm h6 m-0 pt-14 light\">Eam esse commodo ocurreret ad, per dico phaedrum et, te debet numquam eloquentiam est. Nihil nostrud ea sos. Omnis habemus est id, homero doctus eripuit eu quo. At labitur sensibus eos, per utinam platonem cu.</p>\n              <div class=\"row pt-28\">\n                <div class=\"col-md-2 pr-0\">\n                  <img src=\"assets/img/wendy.png\">\n                </div>\n                <div class=\"col-md-10 light\">\n                  <p class=\"h6 m-0 light pt-7\">Wendy Ramos</p>\n                  <p class=\"h6 m-0 light\"><dfn>Aquales</dfn></p>\n                </div>\n              </div>\n            </li>\n            <li class=\"grid-list-item\">\n              <a href=\"\"><img class=\"img-responsive\" src=\"assets/img/2.png\"></a>\n              <a href=\"\"><p class=\"h5 mt-21 mb-7\">Titulo de la vivencia</p></a>\n              <p class=\"h6 m-0 light\"><dfn>15 de Mayo 2015</dfn></p>\n              <p class=\"lh-sm h6 m-0 pt-14 light\">Eam esse commodo ocurreret ad, per dico phaedrum et, te debet numquam eloquentiam est. Nihil nostrud ea sos. Omnis habemus est id, homero doctus eripuit eu quo. At labitur sensibus eos, per utinam platonem cu.</p>\n              <div class=\"row pt-28\">\n                <div class=\"col-md-2 pr-0\">\n                  <img src=\"assets/img/mariana.png\">\n                </div>\n                <div class=\"col-md-10 light\">\n                  <p class=\"h6 m-0 light pt-7\">Mariana Costa</p>\n                  <p class=\"h6 m-0 light\"><dfn>Laboratoria</dfn></p>\n                </div>\n              </div>\n            </li>\n            <li class=\"grid-list-item\">\n              <a href=\"\"><img class=\"img-responsive\" src=\"assets/img/1.png\"></a>\n              <a href=\"\"><p class=\"h5 mt-21 mb-7\">Titulo de la vivencia</p></a>\n              <p class=\"h6 m-0 light\"><dfn>15 de Mayo 2015</dfn></p>\n              <p class=\"lh-sm h6 m-0 pt-14 light\">Eam esse commodo ocurreret ad, per dico phaedrum et, te debet numquam eloquentiam est. Nihil nostrud ea sos. Omnis habemus est id, homero doctus eripuit eu quo. At labitur sensibus eos, per utinam platonem cu.</p>\n              <div class=\"row pt-28\">\n                <div class=\"col-md-2 pr-0\">\n                  <img src=\"assets/img/rodulfo.png\">\n                </div>\n                <div class=\"col-md-10 light\">\n                  <p class=\"h6 m-0 light pt-7\">Rodulfo Prieto</p>\n                  <p class=\"h6 m-0 light\"><dfn>Clean Energy</dfn></p>\n                </div>\n              </div>\n            </li>\n          </ul>\n          <div class=\"pv-42 text-center\">\n            <a href=\"\" class=\"btn btn-gray btn-outline text-gray\">\n              <span class=\"small ph-21\">LEE TODOS</span>\n            </a>\n          </div> \n          <!-- END: LA BITACORA -->\n          <img class=\"pv-56\"src=\"assets/img/linea-separadora.png\">\n          <!-- SOCIOS ESTRATEGICOS-->\n          <h2 class=\"pb-14\">Socios estratégicos</h2>\n          <div class=\"row pt-56\">\n            <div class=\"col-md-4\"></div>\n            <div class=\"col-md-4\">\n              <div class=\"col-md-6\">\n                <img class=\"img-responsive\" src=\"assets/img/global.jpg\">\n              </div>\n              <div class=\"col-md-6\">\n                <img class=\"img-responsive\" src=\"assets/img/gaston.jpg\">\n              </div>\n            </div>\n            <div class=\"col-md-4\"></div>\n          </div>\n          <div class=\"row pv-35\">\n            <div class=\"col-md-2\">\n              <img class=\"img-responsive\" src=\"assets/img/ey.jpg\">\n            </div>\n            <div class=\"col-md-2\">\n              <img class=\"img-responsive\" src=\"assets/img/echecopar.jpg\">\n            </div>\n            <div class=\"col-md-2\">\n              <img class=\"img-responsive\" src=\"assets/img/ipae.jpg\">\n            </div>\n            <div class=\"col-md-2\">\n              <img class=\"img-responsive\" src=\"assets/img/ey.jpg\">\n            </div>\n            <div class=\"col-md-2\">\n              <img class=\"img-responsive\" src=\"assets/img/echecopar.jpg\">\n            </div>\n            <div class=\"col-md-2\">\n              <img class=\"img-responsive\" src=\"assets/img/ipae.jpg\">\n            </div>\n          </div>\n          <!-- END: SOCIOS ESTRATEGICOS-->\n        </div>\n      </section>\n      <!-- END: DESCRIPTION -->\n      <!-- FORMULARIO -->\n      <section class=\"text-center\" style=\"background:url(assets/img/completa-el-formulario.png)\">\n        <div class=\"container-md pv-70 text-white\">\n          <h2>Completa el formulario</h2>\n          <p class=\"lead\">Es importante que consideres que para poder concursar, debes estar de acuerdo con los términos y condiciones y haber leído las bases del concurso.</p>\n          <p>Cierre el 27 de Julio</p>\n          <a href=\"\" class=\"btn btn-white\">\n            <span class=\"text-blue-banner ph-7\">COMPLETA</span>\n          </a>\n        </div>\n      </section>\n      <!-- END: FORMULARIO -->\n      <!-- ESTADISTICAS -->\n      <section class=\"bg-gray-lighter\" id=\"estadisticas\">\n        <div class=\"container-md pv-70 text-gray-darker\">\n          <div class=\"row pb-21\">\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">170</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">iniciativa de impacto identificadas</p>\n            </div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">24</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">regiones del país</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">38K</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">votos registrados en la web en 8 días</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">2,2MM</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">de usuarios potenciales en todo el país</p>\n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: ESTADISTICAS -->\n    </main>','',1434808459,1,'n',0,'','n','n','o',62,'n'),(12,1,5,'index','y','webpage','    <main class=\"site-content\">\n      <section class=\"minh-70\"></section>\n      <!-- DESCRIPTION -->\n      <section class=\"text-left\" id=\"description\">\n        <div class=\"container-md pv-70\">\n          <div class=\"row\">\n            <div class=\"col-md-3 pt-35 light\">\n              <img class=\"img-responsive\" src=\"assets/img/gaston.png\">\n              <h3 class=\"mb-0 text-gray-darker\">Gaston Acurio</h3>\n              <p class=\"h6 light text-gray-light mt-0 pt-7\">Cheff</p>\n            </div>\n            <div class=\"col-md-9 light mt-21 text-gray-darker\">\n              <p class=\"h4 light lh-lg mt-7 mb-56\">It was a humorously perilous business for both of us. For, before we proceed further, it must be said that the monkey-rope was fast at both ends; fast to Queequeg\'s broad canvas belt, and fast to my narrow leather one. So that for better or for worse, we two, for the time, were wedded; and should poor Queequeg\'s sink to rise no more, then both usage and honour demanded, that instead of cutting the cord, it should drag me down in his wake. So, then, an elingated Siamese ligature united us. Queequeg was my own inseparable twin brother, nor could I any way get rid of the dangerous liabilities which the hempen bond entailed.</p>\n              <img class=\"img-responsive\" src=\"assets/img/gastoncocinando.png\">\n              <p class=\"h4 light lh-lg mt-56\">It was a humorously perilous business for both of us. For, before we proceed further, it must be said that the monkey-rope was fast at both ends; fast to Queequeg\'s broad canvas belt, and fast to my narrow leather one. So that for better or for worse, we two, for the time, were wedded; and should poor Queequeg\'s sink to rise no more, then both usage and honour demanded, that instead of cutting the cord, it should drag me down in his wake.</p>\n              <div class=\"text-center\">\n                <img class=\"pv-56\"src=\"assets/img/linea-separadora.png\">\n              </div>\n              <h3 class=\"text-left pb-14\">Otros Jurados</h3>\n              <div class=\"row\">\n                <div class=\"col-md-4\">\n                  <img class=\"img-responsive\" src=\"assets/img/vania.png\">\n                  <h3 class=\"mb-7\">Vania Masías</h3>\n                  <p class=\"h6 mt-0 light text-gray\">Bailarina</p>\n                </div>\n                <div class=\"col-md-4\">\n                  <img class=\"img-responsive\" src=\"assets/img/alvaro.png\">\n                  <h3 class=\"mb-7\">Alvaro Valdez</h3>\n                  <p class=\"h6 mt-0 light text-gray\">Sponsor de Wayra</p>\n                </div>\n                <div class=\"col-md-4\">\n                  <img class=\"img-responsive\" src=\"assets/img/mariel.png\">\n                  <h3 class=\"mb-7\">Mariel Rentería</h3>\n                  <p class=\"h6 mt-0 light text-gray\">Global Shaper</p>\n                </div>\n              </div>\n\n              \n              \n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: DESCRIPTION -->\n\n      <!-- FORMULARIO -->\n      <section class=\"text-center\" style=\"background:url(assets/img/completa-el-formulario.png)\">\n        <div class=\"container-md pv-70 text-white\">\n          <h2>Completa el formulario</h2>\n          <p class=\"lead\">Es importante que consideres que para poder concursar, debes estar de acuerdo con los términos y condiciones y haber leído las bases del concurso.</p>\n          <p>Cierre el 27 de Julio</p>\n          <a href=\"\" class=\"btn btn-white\">\n            <span class=\"text-blue-banner ph-7\">COMPLETA</span>\n          </a>\n        </div>\n      </section>\n      <!-- END: FORMULARIO -->\n      <!-- ESTADISTICAS -->\n      <section class=\"bg-gray-lighter\" id=\"estadisticas\">\n        <div class=\"container-md pv-70 text-gray-darker\">\n          <div class=\"row pb-21\">\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">170</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">iniciativa de impacto identificadas</p>\n            </div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">24</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">regiones del país</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">38K</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">votos registrados en la web en 8 días</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">2,2MM</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">de usuarios potenciales en todo el país</p>\n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: ESTADISTICAS -->\n    </main>','',1434808599,1,'n',0,'','n','n','o',27,'n'),(13,1,2,'otros-jurados','y','webpage','              <h3 class=\"text-left pb-14\">Otros Jurados</h3>\n              <div class=\"row\">\n                <div class=\"col-md-4\">\n                  <img class=\"img-responsive\" src=\"{site_url}app/assets/img/vania.png\">\n                  <h3 class=\"mb-7\">Vania Masías</h3>\n                  <p class=\"h6 mt-0 light text-gray\">Bailarina</p>\n                </div>\n                <div class=\"col-md-4\">\n                  <img class=\"img-responsive\" src=\"{site_url}app/assets/img/alvaro.png\">\n                  <h3 class=\"mb-7\">Alvaro Valdez</h3>\n                  <p class=\"h6 mt-0 light text-gray\">Sponsor de Wayra</p>\n                </div>\n                <div class=\"col-md-4\">\n                  <img class=\"img-responsive\" src=\"{site_url}app/assets/img/mariel.png\">\n                  <h3 class=\"mb-7\">Mariel Rentería</h3>\n                  <p class=\"h6 mt-0 light text-gray\">Global Shaper</p>\n                </div>\n              </div>\n\n              \n              ','',1434808794,1,'n',0,'','n','n','o',0,'n'),(14,1,6,'index','y','webpage','    <main class=\"site-content\">\n      <section class=\"minh-70\"></section>\n      <!-- DESCRIPTION -->\n      <section class=\"text-left minhp-100\" id=\"description\">\n        <div class=\"minh-70\"></div>\n        <div class=\"container-sm pv-70 text-center text-black\">\n          <h1>Gracias por registrarte</h1>\n          <p class=\"text-gray light h4 lh-lg mb-42\">It was a humorously perilous business for both of us. For, before we proceed further, it must be said that the monkey-rope was fast at both ends; fast to Queequeg\'s broad canvas belt, and fast to my narrow leather one.</p>   \n          \n          \n        </div>\n      </section>\n      <!-- END: DESCRIPTION -->\n      <!-- ESTADISTICAS -->\n      <section class=\"bg-gray-lighter\" id=\"estadisticas\">\n        <div class=\"container-md pv-70 text-gray-darker\">\n          <div class=\"row pb-21\">\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">170</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">iniciativa de impacto identificadas</p>\n            </div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">24</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">regiones del país</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">38K</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">votos registrados en la web en 8 días</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">2,2MM</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">de usuarios potenciales en todo el país</p>\n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: ESTADISTICAS -->\n    </main>','',1434836202,1,'n',0,'','n','n','o',3,'n'),(15,1,7,'index','y','webpage','    <main class=\"site-content\">\n      <section class=\"minh-70\"></section>\n      <!-- DESCRIPTION -->\n      <section class=\"text-left minhp-100\" id=\"description\">\n        <div class=\"minh-70\"></div>\n        <div class=\"container-sm pv-70 text-center\">\n          <h1 class=\"text-gray-darker\">Regístrate o ingresa para votar</h1>\n          <p class=\"light h4 lh-lg mb-42\">It was a humorously perilous business for both of us. For, before we proceed further, it must be said that the monkey-rope was fast at both ends; fast to Queequeg\'s broad canvas belt, and fast to my narrow leather one.</p>   \n          \n          <a href=\"\"><img class=\"mh-7\" src=\"assets/img/facebook-login.png\"></a>\n          <a href=\"\"><img class=\"mh-7\" src=\"assets/img/twitter-login.png\"></a>\n          <a href=\"\"><img class=\"mh-7\" src=\"assets/img/instagram-login.png\"></a>\n          \n        </div>\n      </section>\n      <!-- END: DESCRIPTION -->\n\n      <!-- FORMULARIO -->\n      <section class=\"text-center\" style=\"background:url(assets/img/completa-el-formulario.png)\">\n        <div class=\"container-md pv-70 text-white\">\n          <h2>Completa el formulario</h2>\n          <p class=\"lead\">Es importante que consideres que para poder concursar, debes estar de acuerdo con los términos y condiciones y haber leído las bases del concurso.</p>\n          <p>Cierre el 27 de Julio</p>\n          <a href=\"\" class=\"btn btn-white\">\n            <span class=\"text-blue-banner ph-7\">COMPLETA</span>\n          </a>\n        </div>\n      </section>\n      <!-- END: FORMULARIO -->\n      <!-- ESTADISTICAS -->\n      <section class=\"bg-gray-lighter\" id=\"estadisticas\">\n        <div class=\"container-md pv-70 text-gray-darker\">\n          <div class=\"row pb-21\">\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">170</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">iniciativa de impacto identificadas</p>\n            </div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">24</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">regiones del país</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">38K</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">votos registrados en la web en 8 días</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">2,2MM</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">de usuarios potenciales en todo el país</p>\n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: ESTADISTICAS -->\n    </main>','',1434836352,1,'n',0,'','n','n','o',70,'n'),(16,1,8,'index','y','webpage','    <main class=\"site-content\">\n      <section id=\"hero-image\" class=\"minhp-80\" style=\"background:url(assets/img/premio.png)\">\n        <div class=\"bg-hero-image minhp-80\">\n          <div class=\"container-sm minh-210\"></div>  \n          <div class=\"container-sm text-white text-center\">\n            <h1 class=\"text-uppercase m-0 pv-14\">Premio</h1>\n            <p class=\"lead thin\">Kunan quiere consolidad un ecosistema de apoya a la innovación y emprendimiento social de los jóvenes</p>\n            \n            <a href=\"\"><img src=\"assets/img/triangulo-bajada.png\" alt=\"\"></a>\n          </div>\n        </div>\n      </section>\n      <!-- DESCRIPTION -->\n      <section class=\"text-center\" id=\"description\">\n        <div class=\"container-md pv-35 text-black\">\n\n          <!-- COMO FUNCIONA -->\n          <h3 class=\"pt-28\">Como funciona</h3>\n          <p class=\"h4 lh-lg text-gray-darker light\">Son más jovenes que motivados por su optimismo, creatividad y sensibilidad ante los problemas sociales, forman sus propias organizaciones, con o sin fines de lucro, e inician proyectos para transformar su entorno. Kunan quiere ser el impulso de todos ellos. Te contamos como funciona.</p>\n          <ul class=\"grid-list grid-list-5 grid-list-1-xs text-center pt-28\">\n            <li class=\"grid-list-item text-gray-darker\">\n              <img src=\"assets/img/triangle1.png\">\n              <h4 class=\"mt-14\">Revisa las bases</h4>\n              <p class=\"lh-sm small m-0 light\">Informate sobre los requisitos para participar en el Premio</p>\n            </li>\n            <li class=\"grid-list-item\">\n              <img src=\"assets/img/triangle2.png\">\n              <h4 class=\"mt-14\">Completa el formulario</h4>\n              <p class=\"lh-sm small m-0 light\">Y carga un video de dos minutos presentando tu iniciativa.</p>\n            </li>\n            <li class=\"grid-list-item\">\n              <img src=\"assets/img/triangle3.png\">\n              <h4 class=\"mt-14\">Espera el resultado</h4>\n              <p class=\"lh-sm small m-0 light\">Publicaremos los 20 proyectos para una votación publica online.</p>\n            </li>\n            <li class=\"grid-list-item\">\n              <img src=\"assets/img/triangle4.png\">\n              <h4 class=\"mt-14\">Invita a votar online</h4>\n              <p class=\"lh-sm small m-0 light\">La votación es online y un comité evaluador definirá las 5 mejores iniciativas.</p>\n            </li>\n            <li class=\"grid-list-item ph -7\">\n              <img src=\"assets/img/triangle5.png\">\n              <h4 class=\"mt-14\">Espera el anuncio</h4>\n              <p class=\"lh-sm small m-0 light\">Un jurado evaluara las propuestas y seleccionará a un ganador.</p>\n            </li>\n          </ul>\n          <!-- END: COMO FUNCIONA -->\n          \n          <img class=\"pv-35\"src=\"assets/img/linea-separadora.png\">\n\n          <!-- QUE OFRECEMOS -->\n          <h3 class=\"pt-28\">¿Qué ofrecemos?</h3>\n          <p class=\"h4 lh-lg text-gray-darker light pb-21\">Cada vez son más los jóvenes que motivados por su optimismo, creatividad y sensibilidad anes los problemas sociales inician proyectos para transformas su entorno.</p>\n          <div class=\"row\">\n            <div class=\"col-md-12 m-ch-0 pb-21\">\n              <h4>Asesoría estatégica</h4>\n              <span class=\"light\">Gestión eficiente</span>\n            </div>\n            <div class=\"col-md-4 pr-0 pt-56 m-ch-0 text-right\">\n              <h4>Red de jovenes innovadores</h4>\n              <span class=\"light\">Comunidad Kunan</span>\n              <div class=\"minh-70\"></div>  \n              <h4 class=\"pt-35\">Asesoría legal y tributaria</h4>\n              <span class=\"light\">20 horas</span>\n            </div>\n            <div class=\"col-md-4\">\n              <img src=\"assets/img/poligono.png\">\n            </div>\n            <div class=\"col-md-4 pl-0 pt-56 m-ch-0 text-left\">\n              <h4>Capacitación</h4>\n              <span class=\"light\">Liderazgo, innovación y Desing Thinking</span>\n              <div class=\"minh-70\"></div>  \n              <h4 class=\"pt-35\">Apoyo económico</h4>\n              <span class=\"light\">S/. 40,000</span>\n            </div>\n            <div class=\"col-md-12 m-ch-0 pt-21\">\n              <h4>Difusión</h4>\n              <span class=\"light\">Exposición de medios</span>\n            </div>\n          </div>\n          <!-- END: QUE OFRECEMOS -->\n          \n          <img class=\"pv-56\"src=\"assets/img/linea-separadora.png\">\n\n          <!-- CRONOGRAMA -->\n          <h2 class=\"pb-35\">Cronograma kunan</h2>\n          <div class=\"container-xs\">\n            <div class=\"row text-gray-darker mb-14\">\n              <div class=\"col-md-2 text-right border-right-gray\">\n                <h1 class=\"m-0\">17</h1>\n                <h4 class=\"m-0 mb-7\">Julio</h4>\n              </div>\n              <div class=\"col-md-10 m-ch-0 mt-ch-7 text-left lh-sm\">\n                <p class=\"text-gray-light light\">Inicia la convocatoria y cierra el 20 de agosto, está atento.</p>\n                <p class=\"text-black light\">Conoce las bases</p>\n              </div>\n            </div>\n            <div class=\"row text-gray-darker mb-14\">\n              <div class=\"col-md-2 text-right border-right-gray\">\n                <h1 class=\"m-0\">17</h1>\n                <h4 class=\"m-0 mb-7\">Julio</h4>\n              </div>\n              <div class=\"col-md-10 m-ch-0 mt-ch-7 text-left lh-sm\">\n                <p class=\"text-gray-light light\">Inicia la convocatoria y cierra el 20 de agosto, está atento.</p>\n                <p class=\"text-black light\">Conoce las bases</p>\n              </div>\n            </div>\n            <div class=\"row text-gray-darker mb-14\">\n              <div class=\"col-md-2 text-right border-right-gray\">\n                <h1 class=\"m-0\">17</h1>\n                <h4 class=\"m-0 mb-7\">Julio</h4>\n              </div>\n              <div class=\"col-md-10 m-ch-0 mt-ch-7 text-left lh-sm\">\n                <p class=\"text-gray-light light\">Inicia la convocatoria y cierra el 20 de agosto, está atento.</p>\n                <p class=\"text-black light\">Conoce las bases</p>\n              </div>\n            </div>\n            <div class=\"row text-gray-darker mb-14\">\n              <div class=\"col-md-2 text-right border-right-gray\">\n                <h1 class=\"m-0\">17</h1>\n                <h4 class=\"m-0 mb-7\">Julio</h4>\n              </div>\n              <div class=\"col-md-10 m-ch-0 mt-ch-7 text-left lh-sm\">\n                <p class=\"text-gray-light light\">Inicia la convocatoria y cierra el 20 de agosto, está atento.</p>\n                <p class=\"text-black light\">Conoce las bases</p>\n              </div>\n            </div>\n          </div>\n          <!-- END: CRONOGRAMA -->\n\n          <img class=\"pv-56\"src=\"assets/img/linea-separadora.png\">\n\n          <!-- JURADO -->\n          <h2 class=\"pb-35\">El jurado</h2>\n          <div class=\"row\">\n            <div class=\"col-md-6\">\n              <div class=\"row pb-14 text-right\">\n                <img src=\"assets/img/gaston.png\">\n              </div>\n              <div class=\"row pb-14 text-right \">\n                <div class=\"col-md-6 pb-14 pr-0\">\n                  <h3 class=\"mv-7\">Mariel Rentería</h3>\n                  <p class=\"text-gray text-uppercase\">Cheff</p>\n                  <p class=\"small lh-sm text-gray\">Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n                </div>\n                <div class=\"col-md-1 mt-14\">\n                  <img src=\"assets/img/flecha-mariel.png\">\n                </div>\n                <div class=\"col-md-5 pr-0\">\n                  <img class=\"img-responsive\" src=\"assets/img/mariel.png\">\n                </div>\n              </div>\n              <div class=\"row text-right\">\n                <div class=\"col-md-4\"></div>\n                <div class=\"col-md-7 pr-0\">\n                  <h3 class=\"mv-7\">Alvaro Valdez</h3>\n                  <p class=\"text-gray text-uppercase\">Empresario</p>\n                  <p class=\"small lh-sm text-gray\">Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n                </div>\n                <div class=\"col-md-1 mt-14\">\n                  <img src=\"assets/img/flecha-alvaro.png\">\n                </div>  \n              </div>\n            </div>\n            <div class=\"col-md-6 text-left\">\n              <div class=\"row pb-14\">\n                <div class=\"col-md-1 mt-14\">\n                  <img src=\"assets/img/flecha-gaston.png\">\n                </div>\n                <div class=\"col-md-7 pl-0\">\n                  <h3 class=\"mv-7\">Gastón Acurio</h3>\n                  <p class=\"text-gray text-uppercase\">Cheff</p>\n                  <p class=\"small lh-sm text-gray\">Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n                </div>\n              </div>\n              <div class=\"row pb-14\">\n                <div class=\"col-md-5 pr-0\">\n                  <img class=\"img-responsive\" src=\"assets/img/vania.png\">\n                </div>\n                <div class=\"col-md-1 mt-14\">\n                  <img src=\"assets/img/flecha-vania.png\">\n                </div>\n                <div class=\"col-md-6 pr-0 pl-0\">\n                  <h3 class=\"mv-7\">Vania Macías</h3>\n                  <p class=\"text-gray text-uppercase\">Cheff</p>\n                  <p class=\"small lh-sm text-gray\">Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n                </div>\n              </div>\n              <div class=\"row text-left\">\n                <div class=\"col-md-12\">\n                  <img class=\"img-responsive\" src=\"assets/img/alvaro.png\">\n                </div>\n              </div>\n            </div>\n          </div>\n\n          \n          <!-- END: JURADO -->\n\n          <img class=\"pv-56\"src=\"assets/img/linea-separadora.png\">\n\n          <!-- LA BITACORA -->\n          <h2 class=\"pb-14\">La bitácora</h2>\n          <p class=\"h4 light m-0 pb-21\">Omnis habemus est id, homero doctus eripuit eu quo.</p>\n          <ul class=\"grid-list grid-list-3 grid-list-1-xs text-gray-darker text-left\">\n            <li class=\"grid-list-item\">\n              <a href=\"\"><img class=\"img-responsive\" src=\"assets/img/1.png\"></a>\n              <a href=\"\"><p class=\"h5 mt-21 mb-7\">Titulo de la vivencia</p></a>\n              <p class=\"h6 m-0 light\"><dfn>15 de Mayo 2015</dfn></p>\n              <p class=\"lh-sm h6 m-0 pt-14 light\">Eam esse commodo ocurreret ad, per dico phaedrum et, te debet numquam eloquentiam est. Nihil nostrud ea sos. Omnis habemus est id, homero doctus eripuit eu quo. At labitur sensibus eos, per utinam platonem cu.</p>\n              <div class=\"row pt-28\">\n                <div class=\"col-md-2 pr-0\">\n                  <img src=\"assets/img/wendy.png\">\n                </div>\n                <div class=\"col-md-10 light\">\n                  <p class=\"h6 m-0 light pt-7\">Wendy Ramos</p>\n                  <p class=\"h6 m-0 light\"><dfn>Aquales</dfn></p>\n                </div>\n              </div>\n            </li>\n            <li class=\"grid-list-item\">\n              <a href=\"\"><img class=\"img-responsive\" src=\"assets/img/2.png\"></a>\n              <a href=\"\"><p class=\"h5 mt-21 mb-7\">Titulo de la vivencia</p></a>\n              <p class=\"h6 m-0 light\"><dfn>15 de Mayo 2015</dfn></p>\n              <p class=\"lh-sm h6 m-0 pt-14 light\">Eam esse commodo ocurreret ad, per dico phaedrum et, te debet numquam eloquentiam est. Nihil nostrud ea sos. Omnis habemus est id, homero doctus eripuit eu quo. At labitur sensibus eos, per utinam platonem cu.</p>\n              <div class=\"row pt-28\">\n                <div class=\"col-md-2 pr-0\">\n                  <img src=\"assets/img/mariana.png\">\n                </div>\n                <div class=\"col-md-10 light\">\n                  <p class=\"h6 m-0 light pt-7\">Mariana Costa</p>\n                  <p class=\"h6 m-0 light\"><dfn>Laboratoria</dfn></p>\n                </div>\n              </div>\n            </li>\n            <li class=\"grid-list-item\">\n              <a href=\"\"><img class=\"img-responsive\" src=\"assets/img/1.png\"></a>\n              <a href=\"\"><p class=\"h5 mt-21 mb-7\">Titulo de la vivencia</p></a>\n              <p class=\"h6 m-0 light\"><dfn>15 de Mayo 2015</dfn></p>\n              <p class=\"lh-sm h6 m-0 pt-14 light\">Eam esse commodo ocurreret ad, per dico phaedrum et, te debet numquam eloquentiam est. Nihil nostrud ea sos. Omnis habemus est id, homero doctus eripuit eu quo. At labitur sensibus eos, per utinam platonem cu.</p>\n              <div class=\"row pt-28\">\n                <div class=\"col-md-2 pr-0\">\n                  <img src=\"assets/img/rodulfo.png\">\n                </div>\n                <div class=\"col-md-10 light\">\n                  <p class=\"h6 m-0 light pt-7\">Rodulfo Prieto</p>\n                  <p class=\"h6 m-0 light\"><dfn>Clean Energy</dfn></p>\n                </div>\n              </div>\n            </li>\n          </ul>\n          <div class=\"pv-42 text-center\">\n            <a href=\"\" class=\"btn btn-gray btn-outline text-gray\">\n              <span class=\"small ph-21\">LEE TODOS</span>\n            </a>\n          </div> \n          <!-- END: LA BITACORA -->\n\n          <img class=\"pv-56\"src=\"assets/img/linea-separadora.png\">\n          \n          <!-- SOCIOS ESTRATEGICOS-->\n          <h2 class=\"pb-14\">Socios estratégicos</h2>\n          <div class=\"row pt-56\">\n            <div class=\"col-md-4\"></div>\n            <div class=\"col-md-4\">\n              <div class=\"col-md-6\">\n                <img class=\"img-responsive\" src=\"assets/img/global.jpg\">\n              </div>\n              <div class=\"col-md-6\">\n                <img class=\"img-responsive\" src=\"assets/img/gaston.jpg\">\n              </div>\n            </div>\n            <div class=\"col-md-4\"></div>\n          </div>\n          <div class=\"row pv-35\">\n            <div class=\"col-md-2\">\n              <img class=\"img-responsive\" src=\"assets/img/ey.jpg\">\n            </div>\n            <div class=\"col-md-2\">\n              <img class=\"img-responsive\" src=\"assets/img/echecopar.jpg\">\n            </div>\n            <div class=\"col-md-2\">\n              <img class=\"img-responsive\" src=\"assets/img/ipae.jpg\">\n            </div>\n            <div class=\"col-md-2\">\n              <img class=\"img-responsive\" src=\"assets/img/ey.jpg\">\n            </div>\n            <div class=\"col-md-2\">\n              <img class=\"img-responsive\" src=\"assets/img/echecopar.jpg\">\n            </div>\n            <div class=\"col-md-2\">\n              <img class=\"img-responsive\" src=\"assets/img/ipae.jpg\">\n            </div>\n          </div>\n          <!-- END: SOCIOS ESTRATEGICOS-->\n        </div>\n      </section>\n      <!-- END: DESCRIPTION -->\n      <!-- FORMULARIO -->\n      <section class=\"text-center\" style=\"background:url(assets/img/completa-el-formulario.png)\">\n        <div class=\"container-md pv-70 text-white\">\n          <h2>Completa el formulario</h2>\n          <p class=\"lead\">Es importante que consideres que para poder concursar, debes estar de acuerdo con los términos y condiciones y haber leído las bases del concurso.</p>\n          <p>Cierre el 27 de Julio</p>\n          <a href=\"\" class=\"btn btn-white\">\n            <span class=\"text-blue-banner ph-7\">COMPLETA</span>\n          </a>\n        </div>\n      </section>\n      <!-- END: FORMULARIO -->\n      <!-- ESTADISTICAS -->\n      <section class=\"bg-gray-lighter\" id=\"estadisticas\">\n        <div class=\"container-md pv-70 text-gray-darker\">\n          <div class=\"row pb-21\">\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">170</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">iniciativa de impacto identificadas</p>\n            </div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">24</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">regiones del país</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">38K</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">votos registrados en la web en 8 días</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">2,2MM</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">de usuarios potenciales en todo el país</p>\n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: ESTADISTICAS -->\n    </main>','',1434836595,1,'n',0,'','n','n','o',133,'n'),(17,1,9,'index','y','webpage','    <main class=\"site-content\">\n      <section class=\"minh-70\"></section>\n      <!-- DESCRIPTION -->\n      <section class=\"text-left\" id=\"description\">\n        <div class=\"container-md pv-70\">\n          <div class=\"row\">\n            <div class=\"col-md-3 light\">\n              <h4 class=\"pt-21 mb-21 text-gray-darker\">Sectores</h4>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Inclusión social</p></a>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Cultura</p></a>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Gastronomía</p></a>\n              <h4 class=\"mt-35 mb-21 text-gray-darker\">Ubicación</h4>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Inclusión social</p></a>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Cultura</p></a>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Gastronomía</p></a>\n            </div>\n            <div class=\"col-md-9 light text-center\">\n              <h2 class=\"pb-28 text-gray-darker\">Comunidad Kunan</h2>\n              <div class=\"row text-left pb-42\">\n                <div class=\"col-md-4 ph-7 pb-14\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"assets/img/rojo.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Construye identidad</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales que desplazan las tradicionales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n                <div class=\"col-md-4 ph-7 pb-14\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"assets/img/vasos.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Con los pies en la tierra</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales que desplazan las tradicionales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n                <div class=\"col-md-4 ph-7 pb-14\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"assets/img/uvas.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Asociación de líderes de educación verde</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n                <div class=\"col-md-4 ph-7 pb-14\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"assets/img/rojo.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Construye identidad</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales que desplazan las tradicionales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n                <div class=\"col-md-4 ph-7 pb-14\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"assets/img/vasos.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Con los pies en la tierra</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales que desplazan las tradicionales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n                <div class=\"col-md-4 ph-7 pb-14\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"assets/img/uvas.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Asociación de líderes de educación verde</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n                <div class=\"col-md-4 ph-7 pb-14\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"assets/img/rojo.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Construye identidad</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales que desplazan las tradicionales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n                <div class=\"col-md-4 ph-7 pb-14\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"assets/img/vasos.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Con los pies en la tierra</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales que desplazan las tradicionales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n                <div class=\"col-md-4 ph-7 pb-14\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"assets/img/uvas.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Asociación de líderes de educación verde</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n              </div>\n              <div class=\"text-gray-dark text-left\">\n                <a href=\"\"><span class=\"pr-14\">Primero</span></a>\n                <a href=\"\"><span>1</span></a>,\n                <a href=\"\"><span>2</span></a>,\n                <a href=\"\"><span>3</span></a>,\n                <a href=\"\"><span>4</span></a>,\n                <a href=\"\"><span>5</span></a>,\n                <a href=\"\"><span>6</span></a>,\n                <a href=\"\"><span>7</span></a>,\n                <a href=\"\"><span>8</span></a>,\n                <a href=\"\"><span>9</span></a>\n                <a href=\"\"><span class=\"pl-14\">Siguiente</span></a>\n              </div>\n              \n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: DESCRIPTION -->\n\n      <!-- FORMULARIO -->\n      <section class=\"text-center\" style=\"background:url(assets/img/completa-el-formulario.png)\">\n        <div class=\"container-md pv-70 text-white\">\n          <h2>Completa el formulario</h2>\n          <p class=\"lead\">Es importante que consideres que para poder concursar, debes estar de acuerdo con los términos y condiciones y haber leído las bases del concurso.</p>\n          <p>Cierre el 27 de Julio</p>\n          <a href=\"\" class=\"btn btn-white\">\n            <span class=\"text-blue-banner ph-7\">COMPLETA</span>\n          </a>\n        </div>\n      </section>\n      <!-- END: FORMULARIO -->\n      <!-- ESTADISTICAS -->\n      <section class=\"bg-gray-lighter\" id=\"estadisticas\">\n        <div class=\"container-md pv-70 text-gray-darker\">\n          <div class=\"row pb-21\">\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">170</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">iniciativa de impacto identificadas</p>\n            </div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">24</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">regiones del país</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">38K</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">votos registrados en la web en 8 días</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">2,2MM</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">de usuarios potenciales en todo el país</p>\n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: ESTADISTICAS -->\n    </main>','',1434836744,1,'n',0,'','n','n','o',15,'n'),(18,1,9,'proyecto','y','webpage','    <main class=\"site-content\">\n      <section class=\"minh-70\"></section>\n      <section id=\"hero-image\" class=\"minhp-70 mt-56\" style=\"background:url(assets/img/voluntades-slide.png)\">\n        <div class=\"bg-hero-image minhp-70\">\n          <div class=\"container-md minh-350\"></div>  \n          <div class=\"container-md text-white pb-21\">\n            <div class=\"row\">\n              <div class=\"col-md-3\">\n                <img class=\"absolute border-top-gray-dark border-bottom-gray-dark border-left-gray-dark border-right-gray-dark\" src=\"assets/img/voluntades.png\">\n              </div>\n              <div class=\"col-md-9 light\">\n                <h2 class=\"text-uppercase m-0 pv-14\">Construye identidad</h2>\n                <p>It was a humorously perilous business for both of us. For, before we proceed further, it must be said that the monkey-rope was fast at both ends; fast to Queequeg\'s broad canvas belt, and fast.</p>\n              </div>\n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- DESCRIPTION -->\n      <section class=\"text-left\" id=\"description\">\n        <div class=\"container-md pv-70\">\n          <div class=\"row\">\n            <div class=\"col-md-3 minh-280 light text-gray\">\n              <h2 class=\"m-0 mb-7 text-gray-darker\">Voluntades</h2>\n              <p class=\"small m-0\"><dfn>Medio Ambiente</dfn></p>\n              <p class=\"small m-0\"><dfn>Lima</dfn></p>\n              <p class=\"small m-0\"><dfn>email@gmail.com</dfn></p>\n              <div class=\"row pl-14 mt-28 text-center\">\n                <div class=\"col-md-8 border-left-primary border-top-primary border-bottom-primary border-right-primary border-radius ph-0\">\n                  <div class=\"bg-primary \">\n                    <div class=\"col-md-4 bg-white\">\n                      <p class=\"text-primary mv-7\">24</p>\n                    </div>\n                    <div class=\"col-md-8 bg-primary\">\n                      <p class=\"text-white mv-7\">VOTOS</p>\n                    </div>\n                  </div>\n                </div>\n              </div>\n            </div>\n\n            \n\n            <div class=\"col-md-9 minh-280 light text-center\">\n\n              <div class=\"text-left text-gray\">\n                <p class=\"h4 light lh-lg mt-7 mb-56\">It was a humorously perilous business for both of us. For, before we proceed further, it must be said that the monkey-rope was fast at both ends; fast to Queequeg\'s broad canvas belt, and fast to my narrow leather one. So that for better or for worse, we two, for the time, were wedded; and should poor Queequeg\'s sink to rise no more, then both usage and honour demanded, that instead of cutting the cord, it should drag me down in his wake. So, then, an elingated Siamese ligature united us. Queequeg was my own inseparable twin brother, nor could I any way get rid of the dangerous liabilities which the hempen bond entailed.</p>\n\n                <h2 class=\"mb-21 text-gray-darker\">Subtítulo</h2>\n\n                <p class=\"h4 light lh-lg\">It was a humorously perilous business for both of us. For, before we proceed further, it must be said that the monkey-rope was fast at both ends; fast to Queequeg\'s broad canvas belt, and fast to my narrow leather one. So that for better or for worse, we two, for the time, were wedded; and should poor Queequeg\'s sink to rise no more.</p>\n              </div>\n              \n              <img class=\"pv-56\"src=\"assets/img/linea-separadora.png\">\n              <h2 class=\"pb-28 text-gray-darker\">Otros proyectos que te recomendamos</h2>\n              <div class=\"row text-left pb-42\">\n                <div class=\"col-md-4 ph-7\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"assets/img/rojo.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Construye identidad</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales que desplazan las tradicionales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n                <div class=\"col-md-4 ph-7\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"assets/img/vasos.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Con los pies en la tierra</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales que desplazan las tradicionales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n                <div class=\"col-md-4 ph-7\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"assets/img/uvas.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Asociación de líderes de educación verde</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n              </div>\n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: DESCRIPTION -->\n\n      <!-- FORMULARIO -->\n      <section class=\"text-center\" style=\"background:url(assets/img/completa-el-formulario.png)\">\n        <div class=\"container-md pv-70 text-white\">\n          <h2>Completa el formulario</h2>\n          <p class=\"lead\">Es importante que consideres que para poder concursar, debes estar de acuerdo con los términos y condiciones y haber leído las bases del concurso.</p>\n          <p>Cierre el 27 de Julio</p>\n          <a href=\"\" class=\"btn btn-white\">\n            <span class=\"text-blue-banner ph-7\">COMPLETA</span>\n          </a>\n        </div>\n      </section>\n      <!-- END: FORMULARIO -->\n      <!-- ESTADISTICAS -->\n      <section class=\"bg-gray-lighter\" id=\"estadisticas\">\n        <div class=\"container-md pv-70 text-gray-darker\">\n          <div class=\"row pb-21\">\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">170</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">iniciativa de impacto identificadas</p>\n            </div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">24</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">regiones del país</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-2\">\n              <h1 class=\"numbers mt-0\">38K</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">votos registrados en la web en 8 días</p>\n            </div>\n            <div class=\"col-md-1\"></div>\n            <div class=\"col-md-3\">\n              <h1 class=\"numbers mt-0\">2,2MM</h1>\n              <p class=\"light small m-0 lh-sm pl-14 text-left\">de usuarios potenciales en todo el país</p>\n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: ESTADISTICAS -->\n    </main>','',1434836934,1,'n',0,'','n','n','o',66,'n'),(19,1,2,'otros-proyectos','y','webpage','              <h2 class=\"pb-28 text-gray-darker\">Otros proyectos que te recomendamos</h2>\n              <div class=\"row text-left pb-42\">\n                <div class=\"col-md-4 ph-7\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"{site_url}app/assets/img/rojo.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Construye identidad</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales que desplazan las tradicionales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n                <div class=\"col-md-4 ph-7\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"{site_url}app/assets/img/vasos.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Con los pies en la tierra</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales que desplazan las tradicionales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n                <div class=\"col-md-4 ph-7\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"{site_url}app/assets/img/uvas.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Asociación de líderes de educación verde</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n              </div>','',1434837056,1,'n',0,'','n','n','o',0,'n'),(20,1,3,'categoria','y','webpage','{embed=\"includes/header\"}\n{embed=\"includes/navegacion\"}\n    <main class=\"site-content\">\n      <section class=\"minh-70\"></section>\n      <!-- DESCRIPTION -->\n      <section class=\"text-left\" id=\"description\">\n        <div class=\"container-md pv-70\">\n          <div class=\"row\">\n            <div class=\"col-md-3 text-gray-darker light\">\n              {embed=\"includes/bitacora-navegacion\"}\n            </div>\n            <div class=\"col-md-9 light text-left text-gray-darker\">\n              <h2 class=\"pb-28 text-center\">Bitacora</h2>              \n              {exp:channel:entries channel=\"la_bitacora\" limit=\"10\" disable=\"member_data\"}\n	            {bitacora-autor}\n              <div class=\"row pb-21\">\n                <div class=\"col-md-1 pr-0 text-left\">\n                  <img class=\"img-responsive\" src=\"{bitacora-autor:autor-imagen}\">\n                </div>\n                <div class=\"col-md-11 pl-14 text-left\">\n                  <p class=\"h5 m-0 pt-7\">{bitacora-autor:title}</p>\n                  <p class=\"h6 m-0 light text-gray-light\"><a href=\"{bitacora-autor:autor-link-organizacion}\" target=\"_blank\">{bitacora-autor:autor-organizacion}</a> - {entry_date format=\"%d-%m-%Y\"}</p>\n                </div>\n              </div>\n              {/bitacora-autor}\n              {bitacora-imagen}\n              <img class=\"img-responsive\" src=\"{image:url:medium}\">\n              {/bitacora-imagen}\n              <h3>{title}</h3>\n              <p class=\"h4 lh-lg light text-gray\">{bitacora-descripcion}</p>\n              <a href=\"{site_url}la-bitacora/articulo/{url_title}\" class=\"text-hover-primary h5\">\n                <p class=\"text-primary pv-7 light\">Leer más</p>\n              </a>\n              <div class=\"text-center\">\n                <img class=\"pv-28\"src=\"{site_url}app/assets/img/linea-separadora.png\">\n              </div>\n              <div class=\"text-gray-dark text-left\">\n              {paginate}\n					        <p>Página {current_page} de {total_pages} páginas {pagination_links}</p>\n					    {/paginate}\n					    </div>\n							{/exp:channel:entries}\n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: DESCRIPTION -->\n			{embed=\"includes/formulario\"}\n			{embed=\"includes/estadistica\"}\n    </main>\n{embed=\"includes/footer\"}     ','',1434896656,1,'n',0,'','n','n','o',20,'n'),(21,1,2,'modulo-bitacora','y','webpage','          <h2 class=\"pb-14\">La bitácora</h2>\n          <p class=\"h4 light m-0 pb-21\">Omnis habemus est id, homero doctus eripuit eu quo.</p>\n          <ul class=\"grid-list grid-list-3 grid-list-1-xs text-left\">\n            <li class=\"grid-list-item\">\n              <a href=\"\"><img class=\"img-responsive\" src=\"{site_url}app/assets/img/1.png\"></a>\n              <a href=\"\"><p class=\"h5 mt-21 mb-0\">Titulo de la vivencia</p></a>\n              <p class=\"small m-0 light\"><dfn>15 de Mayo 2015</dfn></p>\n              <p class=\"lh-sm small m-0 pt-14 light\">Eam esse commodo ocurreret ad, per dico phaedrum et, te debet numquam eloquentiam est. Nihil nostrud ea sos. Omnis habemus est id, homero doctus eripuit eu quo. At labitur sensibus eos, per utinam platonem cu.</p>\n              <div class=\"row pt-28\">\n                <div class=\"col-md-2 col-xs-2 pr-0\">\n                  <img src=\"{site_url}app/assets/img/wendy.png\">\n                </div>\n                <div class=\"col-md-10 col-xs-10\">\n                  <p class=\"h6 m-0 light pt-7\">Wendy Ramos</p>\n                  <p class=\"h6 m-0 light\"><dfn>Aquales</dfn></p>\n                </div>\n              </div>\n            </li>\n            <li class=\"grid-list-item\">\n              <a href=\"\"><img class=\"img-responsive\" src=\"{site_url}app/assets/img/2.png\"></a>\n              <a href=\"\"><p class=\"h5 mt-21 mb-0\">Titulo de la vivencia</p></a>\n              <p class=\"small m-0 light\"><dfn>15 de Mayo 2015</dfn></p>\n              <p class=\"lh-sm small m-0 pt-14 light\">Eam esse commodo ocurreret ad, per dico phaedrum et, te debet numquam eloquentiam est. Nihil nostrud ea sos. Omnis habemus est id, homero doctus eripuit eu quo. At labitur sensibus eos, per utinam platonem cu.</p>\n              <div class=\"row pt-28\">\n                <div class=\"col-md-2 col-xs-2 pr-0\">\n                  <img src=\"{site_url}app/assets/img/mariana.png\">\n                </div>\n                <div class=\"col-md-10 col-xs-10 light\">\n                  <p class=\"h6 m-0 light pt-7\">Mariana Costa</p>\n                  <p class=\"h6 m-0 light\"><dfn>Laboratoria</dfn></p>\n                </div>\n              </div>\n            </li>\n            <li class=\"grid-list-item\">\n              <a href=\"\"><img class=\"img-responsive\" src=\"{site_url}app/assets/img/1.png\"></a>\n              <a href=\"\"><p class=\"h5 mt-21 mb-0\">Titulo de la vivencia</p></a>\n              <p class=\"small m-0 light\"><dfn>15 de Mayo 2015</dfn></p>\n              <p class=\"lh-sm small m-0 pt-14 light\">Eam esse commodo ocurreret ad, per dico phaedrum et, te debet numquam eloquentiam est. Nihil nostrud ea sos. Omnis habemus est id, homero doctus eripuit eu quo. At labitur sensibus eos, per utinam platonem cu.</p>\n              <div class=\"row pt-28\">\n                <div class=\"col-md-2 col-xs-2 pr-0\">\n                  <img src=\"{site_url}app/assets/img/rodulfo.png\">\n                </div>\n                <div class=\"col-md-10 col-xs-10 light\">\n                  <p class=\"h6 m-0 light pt-7\">Rodulfo Prieto</p>\n                  <p class=\"h6 m-0 light\"><dfn>Clean Energy</dfn></p>\n                </div>\n              </div>\n            </li>\n          </ul>\n          <div class=\"pv-42 text-center\">\n            <a href=\"\" class=\"btn btn-gray btn-outline text-gray\">\n              <p class=\"small ph-21 mb-0\">LEE TODOS</p>\n            </a>\n          </div> ','',1434899092,1,'n',0,'','n','n','o',0,'n'),(22,1,2,'proyecto-navegacion','y','webpage','              <h4 class=\"pt-21 mb-21 text-gray-darker\">Sectores</h4>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Inclusión social</p></a>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Cultura</p></a>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Gastronomía</p></a>\n              <h4 class=\"mt-35 mb-21 text-gray-darker\">Ubicación</h4>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Inclusión social</p></a>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Cultura</p></a>\n              <a href=\"\" class=\"mv-7 light h6\"><p>Gastronomía</p></a>','',1434911239,1,'n',0,'','n','n','o',0,'n'),(23,1,9,'categoria','y','webpage','{embed=\"includes/header\"}\n{embed=\"includes/navegacion\"}\n    <main class=\"site-content\">\n      <section class=\"minh-70\"></section>\n      <!-- DESCRIPTION -->\n      <section class=\"text-left\" id=\"description\">\n        <div class=\"container-md pv-70\">\n          <div class=\"row\">\n            <div class=\"col-md-3 light\">\n							{embed=\"includes/proyecto-navegacion\"}\n            </div>\n            <div class=\"col-md-9 light text-center\">\n              <h2 class=\"pb-28 text-gray-darker\">Comunidad Kunan</h2>\n              <div class=\"row text-left pb-42\">\n	              \n                <div class=\"col-md-4 ph-7 pb-14\">\n                  <div class=\"bg-gray-lighter \">\n                    <img class=\"img-responsive\" src=\"{site_url}app/assets/img/rojo.png\">\n                    <div class=\"p-14 minh-280\">\n                      <h4 class=\"m-0 pt-14 text-gray-darker\">Construye identidad</h4>\n                      <p class=\"text-gray-light small\">nombre@gmail.com</p>\n                      <p class=\"mt-21 lh-sm h6 m-0 light\">Como reacción ante el uso de nuevas técnicas constructivas industriales que desplazan las tradicionales.</p>\n                      <div class=\"row\">\n                        <div class=\"col-md-7\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Sector</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Inclusión social</p>\n                        </div>\n                        <div class=\"col-md-5 pl-0\">\n                          <h5 class=\"m-0 pt-14 text-gray-darker\">Ubicación</h5>\n                          <p class=\"text-gray-light h6 m-0 mt-7 light small\">Lima</p>\n                        </div>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n                \n              </div>\n              <div class=\"text-gray-dark text-left\">\n                <a href=\"\"><span class=\"pr-14\">Primero</span></a>\n                <a href=\"\"><span>1</span></a>,\n                <a href=\"\"><span>2</span></a>,\n                <a href=\"\"><span>3</span></a>,\n                <a href=\"\"><span>4</span></a>,\n                <a href=\"\"><span>5</span></a>,\n                <a href=\"\"><span>6</span></a>,\n                <a href=\"\"><span>7</span></a>,\n                <a href=\"\"><span>8</span></a>,\n                <a href=\"\"><span>9</span></a>\n                <a href=\"\"><span class=\"pl-14\">Siguiente</span></a>\n              </div>\n              \n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: DESCRIPTION -->\n			{embed=\"includes/formulario\"}\n      {embed=\"includes/estadistica\"}\n    </main>\n{embed=\"includes/footer\"} ','',1434911544,1,'n',0,'','n','n','o',11,'n'),(24,1,2,'cronograma-premios','y','webpage','          <!-- CRONOGRAMA -->\n          <h2 class=\"pb-35\">Cronograma kunan</h2>\n          <div class=\"container-xs\">\n            <div class=\"row text-gray-darker mb-14\">\n              <div class=\"col-md-2 text-right border-right-gray\">\n                <h1 class=\"m-0\">17</h1>\n                <h4 class=\"m-0 mb-7\">Julio</h4>\n              </div>\n              <div class=\"col-md-10 m-ch-0 mt-ch-7 text-left lh-sm\">\n                <p class=\"text-gray-light light\">Inicia la convocatoria y cierra el 20 de agosto, está atento.</p>\n                <p class=\"text-black light\">Conoce las bases</p>\n              </div>\n            </div>\n            <div class=\"row text-gray-darker mb-14\">\n              <div class=\"col-md-2 text-right border-right-gray\">\n                <h1 class=\"m-0\">17</h1>\n                <h4 class=\"m-0 mb-7\">Julio</h4>\n              </div>\n              <div class=\"col-md-10 m-ch-0 mt-ch-7 text-left lh-sm\">\n                <p class=\"text-gray-light light\">Inicia la convocatoria y cierra el 20 de agosto, está atento.</p>\n                <p class=\"text-black light\">Conoce las bases</p>\n              </div>\n            </div>\n            <div class=\"row text-gray-darker mb-14\">\n              <div class=\"col-md-2 text-right border-right-gray\">\n                <h1 class=\"m-0\">17</h1>\n                <h4 class=\"m-0 mb-7\">Julio</h4>\n              </div>\n              <div class=\"col-md-10 m-ch-0 mt-ch-7 text-left lh-sm\">\n                <p class=\"text-gray-light light\">Inicia la convocatoria y cierra el 20 de agosto, está atento.</p>\n                <p class=\"text-black light\">Conoce las bases</p>\n              </div>\n            </div>\n            <div class=\"row text-gray-darker mb-14\">\n              <div class=\"col-md-2 text-right border-right-gray\">\n                <h1 class=\"m-0\">17</h1>\n                <h4 class=\"m-0 mb-7\">Julio</h4>\n              </div>\n              <div class=\"col-md-10 m-ch-0 mt-ch-7 text-left lh-sm\">\n                <p class=\"text-gray-light light\">Inicia la convocatoria y cierra el 20 de agosto, está atento.</p>\n                <p class=\"text-black light\">Conoce las bases</p>\n              </div>\n            </div>\n          </div>\n          <!-- END: CRONOGRAMA -->','',1434916232,1,'n',0,'','n','n','o',0,'n'),(25,1,2,'cronograma-comunidad','y','webpage','          <!-- CRONOGRAMA -->\n          <h2 class=\"pb-35\">Cronograma del Premio</h2>\n          <div class=\"container-sm\">\n	          {exp:channel:entries channel=\"crongrama_comunidad\" limit=\"10\" disable=\"member_data\"}\n            <div class=\"row text-gray-darker mb-14\">\n              <div class=\"col-md-2 text-right border-right-gray\">\n                <h1 class=\"m-0\">{cronograma-fecha-evento format=\"%d\"}</h1>\n                <h4 class=\"m-0 mb-7\">{cronograma-fecha-evento format=\"%M\"}</h4>\n              </div>\n              <div class=\"col-md-10 m-ch-0 mt-ch-7 text-left lh-sm\">\n	              <h3>{title}</h3>\n                <p class=\"text-gray-light light pb-7\">{cronograma-descripcion-evento}</p>\n                <small><a href=\"{cronograma-link-url}\">{cronograma-link-texto}</a></small>\n              </div>\n            </div>\n            {/exp:channel:entries}\n          </div>\n          <!-- END: CRONOGRAMA -->','',1434916953,1,'n',0,'','n','n','o',0,'n'),(26,1,2,'integrantes-comunidad','y','webpage','          <div class=\"row container-sm pb-14\">\n            <div class=\"col-md-3\">\n              <img src=\"{site_url}app/assets/img/kani1.png\">\n            </div>\n            <div class=\"col-md-3\">\n              <img src=\"{site_url}app/assets/img/evea.png\">\n            </div>\n            <div class=\"col-md-3\">\n              <img src=\"{site_url}app/assets/img/llamapack.png\">\n            </div>\n            <div class=\"col-md-3\">\n              <img src=\"{site_url}app/assets/img/artesana.png\">\n            </div>\n          </div>','',1434917246,1,'n',0,'','n','n','o',0,'n'),(27,1,10,'index','y','webpage','{exp:channel:entries channel=\"la_bitacora\" limit=\"10\" disable=\"member_data|pagination\"}\n{embed=\"includes/header\"}\n{embed=\"includes/navegacion\"}\n    <main class=\"site-content\">\n      <section class=\"minh-70\"></section>\n      <!-- DESCRIPTION -->\n      <section class=\"text-left\" id=\"description\">\n        <div class=\"container-md pv-70\">\n          <div class=\"row\">\n            <div class=\"col-md-3 text-gray-darker light\">\n							{embed=\"includes/bitacora-navegacion\"}\n            </div>\n            <div class=\"col-md-9 light text-left text-gray-darker\">\n	            {bitacora-autor}\n              <div class=\"row pb-21\">\n                <div class=\"col-md-1 pr-0 text-left\">\n                  <img class=\"img-responsive\" src=\"{bitacora-autor:autor-imagen}\">\n                </div>\n                <div class=\"col-md-11 pl-14 text-left\">\n                  <p class=\"h5 m-0 pt-7\">{bitacora-autor:title}</p>\n                  <p class=\"h6 m-0 light text-gray-light\"><a href=\"{bitacora-autor:autor-link-organizacion}\" target=\"_blank\">{bitacora-autor:autor-organizacion}</a> - {entry_date format=\"%d-%m-%Y\"}</p>\n                </div>\n              </div>\n              {/bitacora-autor}\n              {bitacora-imagen}\n              <img class=\"img-responsive\" src=\"{image:url:medium}\">\n              {/bitacora-imagen}	            \n              <h2 class=\"pb-21 text-black\">{title}</h2>\n              {bitacora-contenido}\n            </div>\n          </div>\n	        <div class=\"row\">\n	        	<div class=\"col-md-9 col-md-offset-3\">\n		        	<h3 class=\"pv-35 text-left text-gray-darker\">Comentarios</h3>\n		        	<div id=\"disqus_thread\"></div>\n		        	<div class=\"text-center\">\n                <img class=\"pv-28\"src=\"{site_url}app/assets/img/linea-separadora.png\">\n              </div>\n	        	</div>\n	        </div>\n        </div>\n      </section>\n      <!-- END: DESCRIPTION -->\n{/exp:channel:entries}      \n			{embed=\"includes/formulario\"}\n      {embed=\"includes/estadistica\"}\n    </main>\n{embed=\"includes/footer\"}    ','',1434936608,1,'n',0,'','n','n','o',42,'n'),(28,1,2,'socios-estrategicos','y','webpage','          <h2 class=\"pb-14 text-gray-darker h3 light text-uppercase\">Socios estratégicos</h2>\n          <div class=\"row pt-56\">\n            <div class=\"col-md-4 hidden-xs\"></div>\n            <div class=\"col-md-4 col-xs-12\">\n              <div class=\"col-md-6 col-xs-6\">\n                <img class=\"img-responsive\" src=\"{site_url}app/assets/img/global.jpg\">\n              </div>\n              <div class=\"col-md-6 col-xs-6\">\n                <img class=\"img-responsive\" src=\"{site_url}app/assets/img/gaston.jpg\">\n              </div>\n            </div>\n            <div class=\"col-md-4 hidden-xs\"></div>\n          </div>\n          <div class=\"row pv-56\">\n            <div class=\"col-md-2 col-xs-4\">\n              <img class=\"img-responsive\" src=\"{site_url}app/assets/img/ey.jpg\">\n            </div>\n            <div class=\"col-md-2 col-xs-4\">\n              <img class=\"img-responsive\" src=\"{site_url}app/assets/img/echecopar.jpg\">\n            </div>\n            <div class=\"col-md-2 col-xs-4\">\n              <img class=\"img-responsive\" src=\"{site_url}app/assets/img/ipae.jpg\">\n            </div>\n            <div class=\"col-md-2 col-xs-4\">\n              <img class=\"img-responsive\" src=\"{site_url}app/assets/img/ey.jpg\">\n            </div>\n            <div class=\"col-md-2 col-xs-4\">\n              <img class=\"img-responsive\" src=\"{site_url}app/assets/img/echecopar.jpg\">\n            </div>\n            <div class=\"col-md-2 col-xs-4\">\n              <img class=\"img-responsive\" src=\"{site_url}app/assets/img/ipae.jpg\">\n            </div>\n          </div>','',1435019918,3,'n',0,'','n','n','o',0,'n'),(29,1,11,'index','n','webpage','',NULL,1435095726,0,'n',0,'','n','n','o',25,'n'),(30,1,2,'navegacion-vistas','y','webpage','	  <!-- HEADER -->\n	    <header class=\"site-menu\">\n	      <div id=\"menu-vistas\" class=\"vistas container-fluid text-center\">\n		      <nav class=\"text-gray-darker text-uppercase\">\n		        <a href=\"{site_url}\"><img src=\"{site_url}app/assets/img/logo.png\" alt=\"\"></a>\n		        <a href=\"{site_url}porqueestamos\"><span class=\"ml-70 pl-42 pr-7\">¿Por qué estamos aquí?</span></a>|\n		        <a href=\"{site_url}nuestroreto\"><span class=\"ph-7\">Nuestro reto</span></a>|\n		        <a href=\"{site_url}lineasdeaccion\"><span class=\"ph-7\">Líneas de acción</span></a>|\n		        <a href=\"{site_url}la-bitacora\"><span class=\"pl-7 pr-14 \">La bitácora</span></a>\n		        <a href=\"{site_url}\" class=\"btn btn-primary pv-7\"><span class=\"ph-21\">VOTA</span></a>\n		      </nav>\n		    </div>\n	    </header>\n	  <!-- END: HEADER -->  ',NULL,1435096334,1,'n',0,'','n','n','o',0,'n'),(31,1,10,'editar','y','webpage','{embed=\"includes/header\"}\n{embed=\"includes/navegacion-vistas\"}\n    <main class=\"site-content\">\n      <section class=\"minh-70\"></section>\n      <!-- DESCRIPTION -->\n      <section class=\"text-left\">\n        <div class=\"container-md pv-70\">\n          <div class=\"row\">\n            <div class=\"col-md-12\">\n							{exp:freeform:composer\n							    form_name=\"formulario_registro\"\n							    composer_template_name=\"composer_formulario_registro\"\n							    return=\"gracias/index\"\n							}\n            </div>\n          </div>\n        </div>\n      </section>\n      <!-- END: DESCRIPTION -->\n    </main>\n{embed=\"includes/footer\"}    ','',1435096827,3,'n',0,'','n','n','o',0,'n'),(32,1,12,'index','y','webpage','{exp:channel:entries channel=\"la_bitacora\" limit=\"10\" disable=\"member_data|pagination\"}\n{embed=\"includes/header\"}\n{embed=\"includes/navegacion-vistas\"}\n    <main class=\"site-content\">\n      <section class=\"minh-70\"></section>\n      <!-- DESCRIPTION -->\n      <section class=\"text-left\" id=\"description\">\n        <div class=\"container-md pv-70\">\n          <div class=\"row\">\n            <div class=\"col-md-3 text-gray-darker light\">\n							{embed=\"includes/bitacora-navegacion\"}\n            </div>\n            <div class=\"col-md-9 light text-left text-gray-darker\">\n	            <h2 class=\"text-uppercase light h3 pb-21 text-gray-darker\">{title}</h2>\n	            {bitacora-autor}\n              <div class=\"row pb-21\">\n                <div class=\"col-md-1 pr-0 text-left\">\n                  <img class=\"img-responsive\" src=\"{bitacora-autor:autor-imagen}\">\n                </div>\n                <div class=\"col-md-11 pl-14 text-left\">\n                  <p class=\"h5 m-0 pt-7\">{bitacora-autor:title}</p>\n                  <p class=\"h6 m-0 light text-gray-light\"><a href=\"{bitacora-autor:autor-link-organizacion}\" target=\"_blank\">{bitacora-autor:autor-organizacion}</a> - {entry_date format=\"%d-%m-%Y\"}</p>\n                </div>\n              </div>\n              {/bitacora-autor}\n              {if bitacora-imagen!=\'\'}\n	              {bitacora-imagen}\n	              	<img class=\"img-responsive\" src=\"{image:url:medium}\">\n	              {/bitacora-imagen}	 \n              {if:else} \n              	<iframe width=\"698\" height=\"424\" src=\"https://www.youtube.com/embed/{bitacora-video}\" frameborder=\"0\" allowfullscreen></iframe>\n              {/if}\n              <div class=\"pv-28\">\n              {bitacora-contenido}\n              </div>\n            </div>\n          </div>\n	        <div class=\"row\">\n	        	<div class=\"col-md-9 col-md-offset-3\">\n		        	<h3 class=\"pv-35 text-left text-gray-darker\">Comentarios</h3>\n		        	<div id=\"disqus_thread\"></div>\n		        	<div class=\"text-center\">\n                <img class=\"pv-28 separador\"src=\"{site_url}app/assets/img/linea-separadora.png\">\n              </div>\n	        	</div>\n	        </div>\n        </div>\n      </section>\n      <!-- END: DESCRIPTION -->\n{/exp:channel:entries}      \n			{embed=\"includes/formulario\"}\n      {embed=\"includes/estadistica\"}\n    </main>\n{embed=\"includes/footer\"}    ','',1435103584,3,'n',0,'','n','n','o',2,'n');
/*!40000 ALTER TABLE `exp_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_throttle`
--

DROP TABLE IF EXISTS `exp_throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_throttle` (
  `throttle_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL,
  `locked_out` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`throttle_id`),
  KEY `ip_address` (`ip_address`),
  KEY `last_activity` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_throttle`
--

LOCK TABLES `exp_throttle` WRITE;
/*!40000 ALTER TABLE `exp_throttle` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_update_log`
--

DROP TABLE IF EXISTS `exp_update_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_update_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int(10) unsigned DEFAULT NULL,
  `message` text,
  `method` varchar(100) DEFAULT NULL,
  `line` int(10) unsigned DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_update_log`
--

LOCK TABLES `exp_update_log` WRITE;
/*!40000 ALTER TABLE `exp_update_log` DISABLE KEYS */;
INSERT INTO `exp_update_log` VALUES (1,1429833534,'Update complete. Now running version 2.9.3.',NULL,NULL,NULL);
/*!40000 ALTER TABLE `exp_update_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_update_notices`
--

DROP TABLE IF EXISTS `exp_update_notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_update_notices` (
  `notice_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` text,
  `version` varchar(20) NOT NULL,
  `is_header` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_update_notices`
--

LOCK TABLES `exp_update_notices` WRITE;
/*!40000 ALTER TABLE `exp_update_notices` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_update_notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_upload_no_access`
--

DROP TABLE IF EXISTS `exp_upload_no_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_upload_no_access` (
  `upload_id` int(6) unsigned NOT NULL,
  `upload_loc` varchar(3) NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`upload_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_upload_no_access`
--

LOCK TABLES `exp_upload_no_access` WRITE;
/*!40000 ALTER TABLE `exp_upload_no_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_upload_no_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_upload_prefs`
--

DROP TABLE IF EXISTS `exp_upload_prefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_upload_prefs` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `server_path` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL,
  `allowed_types` varchar(3) NOT NULL DEFAULT 'img',
  `max_size` varchar(16) DEFAULT NULL,
  `max_height` varchar(6) DEFAULT NULL,
  `max_width` varchar(6) DEFAULT NULL,
  `properties` varchar(120) DEFAULT NULL,
  `pre_format` varchar(120) DEFAULT NULL,
  `post_format` varchar(120) DEFAULT NULL,
  `file_properties` varchar(120) DEFAULT NULL,
  `file_pre_format` varchar(120) DEFAULT NULL,
  `file_post_format` varchar(120) DEFAULT NULL,
  `cat_group` varchar(255) DEFAULT NULL,
  `batch_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_upload_prefs`
--

LOCK TABLES `exp_upload_prefs` WRITE;
/*!40000 ALTER TABLE `exp_upload_prefs` DISABLE KEYS */;
INSERT INTO `exp_upload_prefs` VALUES (1,1,'La Bitacora','/Users/hermanmarin/Documents/websites/kunan/images/bitacora/','http://kunan.dev/images/bitacora/','img','','','','','','','','','','',NULL),(2,1,'Imagenes Autor','/Users/hermanmarin/Documents/websites/kunan/images/autor/','http://kunan.dev/images/autor/','img','','','','','','','','','','',NULL),(3,1,'Imagenes del Jurado','/Users/hermanmarin/Documents/websites/kunan/images/jurado/','http://kunan.dev/images/jurado/','img','','','','','','','','','','',NULL),(4,1,'Fotos de Iniciativas','/Users/hermanmarin/Documents/websites/kunan/images/iniciativas/','http://kunan.dev/images/iniciativas/','img','','','','','','','','','','',NULL),(5,1,'Imagen Generales','/Users/hermanmarin/Documents/websites/kunan/images/general/','http://kunan.dev/images/general/','img','','','','','','','','','','',NULL);
/*!40000 ALTER TABLE `exp_upload_prefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_activation_group`
--

DROP TABLE IF EXISTS `exp_user_activation_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_activation_group` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `member_id` (`member_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_activation_group`
--

LOCK TABLES `exp_user_activation_group` WRITE;
/*!40000 ALTER TABLE `exp_user_activation_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_user_activation_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_authors`
--

DROP TABLE IF EXISTS `exp_user_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_authors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `principal` char(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_authors`
--

LOCK TABLES `exp_user_authors` WRITE;
/*!40000 ALTER TABLE `exp_user_authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_user_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_cache`
--

DROP TABLE IF EXISTS `exp_user_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_cache` (
  `cache_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(150) NOT NULL DEFAULT '',
  `entry_date` int(10) NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`cache_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_cache`
--

LOCK TABLES `exp_user_cache` WRITE;
/*!40000 ALTER TABLE `exp_user_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_user_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_category_posts`
--

DROP TABLE IF EXISTS `exp_user_category_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_category_posts` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `member_id` (`member_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_category_posts`
--

LOCK TABLES `exp_user_category_posts` WRITE;
/*!40000 ALTER TABLE `exp_user_category_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_user_category_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_keys`
--

DROP TABLE IF EXISTS `exp_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_keys` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date` int(10) NOT NULL DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '',
  `hash` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`key_id`),
  KEY `email` (`email`),
  KEY `hash` (`hash`),
  KEY `author_id` (`author_id`),
  KEY `member_id` (`member_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_keys`
--

LOCK TABLES `exp_user_keys` WRITE;
/*!40000 ALTER TABLE `exp_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_params`
--

DROP TABLE IF EXISTS `exp_user_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_params` (
  `params_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(25) NOT NULL DEFAULT '',
  `entry_date` int(10) NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`params_id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_params`
--

LOCK TABLES `exp_user_params` WRITE;
/*!40000 ALTER TABLE `exp_user_params` DISABLE KEYS */;
INSERT INTO `exp_user_params` VALUES (44,'koSjpWpOyNMlejvsAFEZUhNRQ',1435173386,'a:10:{s:8:\"group_id\";s:0:\"\";s:6:\"notify\";s:0:\"\";s:20:\"screen_name_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:11:\"require_key\";s:0:\"\";s:15:\"key_email_match\";s:0:\"\";s:3:\"key\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:14:\"admin_register\";s:2:\"no\";s:8:\"required\";s:0:\"\";}'),(45,'oyoXkEDzcCLMglLeJDYwZXgfb',1435175034,'a:10:{s:8:\"group_id\";s:0:\"\";s:6:\"notify\";s:0:\"\";s:20:\"screen_name_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:11:\"require_key\";s:0:\"\";s:15:\"key_email_match\";s:0:\"\";s:3:\"key\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:14:\"admin_register\";s:2:\"no\";s:8:\"required\";s:0:\"\";}'),(46,'kBYHpxGGmHzjmAlbFgnfFCOVF',1435175307,'a:10:{s:8:\"group_id\";s:0:\"\";s:6:\"notify\";s:0:\"\";s:20:\"screen_name_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:11:\"require_key\";s:0:\"\";s:15:\"key_email_match\";s:0:\"\";s:3:\"key\";s:0:\"\";s:13:\"secure_action\";s:2:\"no\";s:14:\"admin_register\";s:2:\"no\";s:8:\"required\";s:0:\"\";}');
/*!40000 ALTER TABLE `exp_user_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_preferences`
--

DROP TABLE IF EXISTS `exp_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_preferences` (
  `preference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `preference_name` varchar(50) NOT NULL DEFAULT '',
  `preference_value` text,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`preference_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_preferences`
--

LOCK TABLES `exp_user_preferences` WRITE;
/*!40000 ALTER TABLE `exp_user_preferences` DISABLE KEYS */;
INSERT INTO `exp_user_preferences` VALUES (11,'email_is_username','y',1),(12,'screen_name_override','',1),(13,'category_groups','',1),(14,'welcome_email_subject','Bienvenido al sistema de aplicación',1),(15,'welcome_email_content','{screen_name}, Kunan te da la bienvenida al sistema de aplicación.\nIngresa tus datos a través del formulario, y participa en el concurso de emprendedores sociales más importante del Perú.\n\nTe saluda, \nTeam Kunan',1),(16,'user_forgot_username_message','{screen_name},\n\nPor su petición, le hemos enviado un correo electrónico su nombre de usuario para {site_name} site_name ubicado en {site_url}.\n\nEmail: {username}',1),(17,'member_update_admin_notification_template','Una nueva persona a creado una cuenta para la aplicación.',1),(18,'member_update_admin_notification_emails','herman@laboratoria.la',1),(19,'key_expiration','7',1),(20,'channel_ids','a:0:{}',1);
/*!40000 ALTER TABLE `exp_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_search`
--

DROP TABLE IF EXISTS `exp_user_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_search` (
  `search_id` varchar(32) NOT NULL DEFAULT '',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `ip_address` varchar(16) NOT NULL DEFAULT '',
  `search_date` int(10) unsigned NOT NULL DEFAULT '0',
  `total_results` int(8) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `categories` text,
  `member_ids` text,
  `fields` text,
  `cfields` text,
  `query` text,
  PRIMARY KEY (`search_id`),
  KEY `member_id` (`member_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_search`
--

LOCK TABLES `exp_user_search` WRITE;
/*!40000 ALTER TABLE `exp_user_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_user_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_user_welcome_email_list`
--

DROP TABLE IF EXISTS `exp_user_welcome_email_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_user_welcome_email_list` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email_sent` char(1) NOT NULL DEFAULT 'n',
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_user_welcome_email_list`
--

LOCK TABLES `exp_user_welcome_email_list` WRITE;
/*!40000 ALTER TABLE `exp_user_welcome_email_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_user_welcome_email_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-24 17:27:24
