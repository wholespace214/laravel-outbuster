/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.7.33 : Database - outbuster
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`outbuster` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;

USE `outbuster`;

/*Table structure for table `action_events` */

DROP TABLE IF EXISTS `action_events`;

CREATE TABLE `action_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_id` bigint(20) unsigned NOT NULL,
  `target_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'running',
  `exception` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original` mediumtext COLLATE utf8mb4_unicode_ci,
  `changes` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),
  KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),
  KEY `action_events_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `action_events` */

insert  into `action_events`(`id`,`batch_id`,`user_id`,`name`,`actionable_type`,`actionable_id`,`target_type`,`target_id`,`model_type`,`model_id`,`fields`,`status`,`exception`,`created_at`,`updated_at`,`original`,`changes`) values 
(1,'96e1226c-534a-45ce-92ea-df5e104482da',1,'Update','App\\Models\\FilmCastMember',1,'App\\Models\\FilmCastMember',1,'App\\Models\\FilmCastMember',1,'','finished','','2022-07-27 15:48:13','2022-07-27 15:48:13','[]','[]'),
(2,'96e1226d-062f-42af-a7ab-39f401b7afdc',1,'Update','App\\Models\\FilmCastMember',2,'App\\Models\\FilmCastMember',2,'App\\Models\\FilmCastMember',2,'','finished','','2022-07-27 15:48:13','2022-07-27 15:48:13','[]','[]'),
(3,'96e1226d-0af0-4459-a2dd-2ad8cf65ed91',1,'Update','App\\Models\\FilmCastMember',3,'App\\Models\\FilmCastMember',3,'App\\Models\\FilmCastMember',3,'','finished','','2022-07-27 15:48:13','2022-07-27 15:48:13','[]','[]'),
(4,'96e1226d-102f-4ce4-9963-4e075b452839',1,'Update','App\\Models\\FilmCrewMember',1,'App\\Models\\FilmCrewMember',1,'App\\Models\\FilmCrewMember',1,'','finished','','2022-07-27 15:48:13','2022-07-27 15:48:13','[]','[]'),
(5,'96e1226d-1738-4a7c-9946-139f0267df69',1,'Update','App\\Models\\FilmCritic',1,'App\\Models\\FilmCritic',1,'App\\Models\\FilmCritic',1,'','finished','','2022-07-27 15:48:13','2022-07-27 15:48:13','[]','[]'),
(6,'96e1226d-17d2-4aea-b364-6bfd7c1622fb',1,'Update','App\\Models\\Film',1,'App\\Models\\Film',1,'App\\Models\\Film',1,'','finished','','2022-07-27 15:48:13','2022-07-27 15:48:13','{\"film_original_title\":\"The love witch\"}','{\"film_original_title\":\"The love witch1\"}'),
(7,'96e12272-e9d1-4651-ab4b-45fc4618b9bd',1,'Update','App\\Models\\FilmCastMember',1,'App\\Models\\FilmCastMember',1,'App\\Models\\FilmCastMember',1,'','finished','','2022-07-27 15:48:17','2022-07-27 15:48:17','[]','[]'),
(8,'96e12272-f1da-4d94-819e-203eeb4ebe42',1,'Update','App\\Models\\FilmCastMember',2,'App\\Models\\FilmCastMember',2,'App\\Models\\FilmCastMember',2,'','finished','','2022-07-27 15:48:17','2022-07-27 15:48:17','[]','[]'),
(9,'96e12272-f676-41a7-ab0c-2b0d74a2d9b4',1,'Update','App\\Models\\FilmCastMember',3,'App\\Models\\FilmCastMember',3,'App\\Models\\FilmCastMember',3,'','finished','','2022-07-27 15:48:17','2022-07-27 15:48:17','[]','[]'),
(10,'96e12272-fb80-4836-b629-00a76e85c6a8',1,'Update','App\\Models\\FilmCrewMember',1,'App\\Models\\FilmCrewMember',1,'App\\Models\\FilmCrewMember',1,'','finished','','2022-07-27 15:48:17','2022-07-27 15:48:17','[]','[]'),
(11,'96e12273-0330-4f7e-885c-94b4ecbd15c3',1,'Update','App\\Models\\FilmCritic',1,'App\\Models\\FilmCritic',1,'App\\Models\\FilmCritic',1,'','finished','','2022-07-27 15:48:17','2022-07-27 15:48:17','[]','[]'),
(12,'96e12273-03d6-414c-a57c-5236af33fdf1',1,'Update','App\\Models\\Film',1,'App\\Models\\Film',1,'App\\Models\\Film',1,'','finished','','2022-07-27 15:48:17','2022-07-27 15:48:17','{\"film_original_title\":\"The love witch1\"}','{\"film_original_title\":\"The love witch\"}'),
(13,'96e14a61-de5b-4a92-94bb-52e76fc33b6f',1,'Update','App\\Models\\User',18,'App\\Models\\User',18,'App\\Models\\User',18,'','finished','','2022-07-27 17:39:57','2022-07-27 17:39:57','{\"first_name\":null,\"last_name\":null,\"avatar\":\"\",\"newsletter_subscription\":\"\"}','{\"first_name\":\"Whole\",\"last_name\":\"Space\",\"avatar\":\"media\\/parameters\\/user\\/avatars\\/WholeSpace.jpg\",\"newsletter_subscription\":null}'),
(14,'96e15314-a6d8-4ae3-9bb2-2e1541242121',1,'Update','App\\Models\\User',18,'App\\Models\\User',18,'App\\Models\\User',18,'','finished','','2022-07-27 18:04:16','2022-07-27 18:04:16','[]','[]'),
(15,'96e15bb0-5aa5-4dbb-b1e4-2c05c6d4a6ab',1,'Update','App\\Models\\User',18,'App\\Models\\User',18,'App\\Models\\User',18,'','finished','','2022-07-27 18:28:20','2022-07-27 18:28:20','{\"zip_code\":\"0023\"}','{\"zip_code\":null}');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `feedback_user_id` int(11) DEFAULT NULL,
  `feedback_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci,
  `feedback_resolution_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `feedback` */

insert  into `feedback`(`id`,`feedback_user_id`,`feedback_type`,`feedback`,`feedback_resolution_date`,`feedback_status`,`created_at`,`updated_at`) values 
(1,1,'Probl??me technique','Message','2022-01-01','Nouveau','2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `film_cast_members` */

DROP TABLE IF EXISTS `film_cast_members`;

CREATE TABLE `film_cast_members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `film_id` int(11) DEFAULT NULL,
  `film_cast_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `film_cast_character` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `film_cast_members` */

insert  into `film_cast_members`(`id`,`film_id`,`film_cast_name`,`film_cast_character`,`created_at`,`updated_at`) values 
(1,1,'Samantha Robinson','Elaine Parks','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(2,1,'Elle Evans','Star','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(3,1,'Jeffrey Vincent Parise','Wayne Peters','2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `film_crew_members` */

DROP TABLE IF EXISTS `film_crew_members`;

CREATE TABLE `film_crew_members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `film_id` int(11) DEFAULT NULL,
  `film_crew_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `film_crew_occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `film_crew_members` */

insert  into `film_crew_members`(`id`,`film_id`,`film_crew_name`,`film_crew_occupation`,`created_at`,`updated_at`) values 
(1,1,'Anna Biller','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `film_critics` */

DROP TABLE IF EXISTS `film_critics`;

CREATE TABLE `film_critics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `film_id` int(11) DEFAULT NULL,
  `film_critic_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `film_critic_name_id` int(11) DEFAULT NULL,
  `film_criticism` text COLLATE utf8mb4_unicode_ci,
  `film_complete_criticism` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `film_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `film_critics` */

insert  into `film_critics`(`id`,`film_id`,`film_critic_title`,`film_critic_name_id`,`film_criticism`,`film_complete_criticism`,`film_description`,`created_at`,`updated_at`) values 
(1,1,'Ce qu\'on en pense sur',1,'C\'est le style qui fait le charme du film ! Les effets sont kitsch assum??s et c\'est sympa de voir un film de sorci??re moderne aussi assum??. Le discours sur la reappropriation du pouvoir et le feminisme est tr??s clairement int??gr??. Le film ne se moque pas de son fond mais est tr??s parodique.','Lire la critique compl??te de Lys sur SensCritique','Voir la fiche du film sur SensCritique','2022-06-02 16:15:47','2022-06-02 16:15:47');

/*Table structure for table `film_rating_systems` */

DROP TABLE IF EXISTS `film_rating_systems`;

CREATE TABLE `film_rating_systems` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `film_id` int(11) DEFAULT NULL,
  `certification_country_id` int(11) DEFAULT NULL,
  `certification_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certification_letter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `film_rating_systems` */

/*Table structure for table `films` */

DROP TABLE IF EXISTS `films`;

CREATE TABLE `films` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `film_original_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `film_country_of_origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `film_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `film_running_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `film_tagline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `film_synopsis` text COLLATE utf8mb4_unicode_ci,
  `film_category` text COLLATE utf8mb4_unicode_ci,
  `film_genre` text COLLATE utf8mb4_unicode_ci,
  `film_tag` text COLLATE utf8mb4_unicode_ci,
  `film_pros` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `film_cons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `film_cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `film_trailer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `film_master_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `films` */

insert  into `films`(`id`,`film_original_title`,`film_country_of_origin`,`film_version`,`film_running_time`,`film_tagline`,`film_synopsis`,`film_category`,`film_genre`,`film_tag`,`film_pros`,`film_cons`,`film_cover`,`film_trailer`,`film_master_file`,`created_at`,`updated_at`,`home`) values 
(1,'The love witch','Film am??ricain','Film en VOST','120','Ma sorci??re mal aim??e','Elaine, une jeune et belle sorci??re, est d??termin??e ?? trouver l???homme de sa vie. Disposant pour ce faire d\'un physique des plus avantageux, comme de potions et autres formules magiques, elle attire de nombreux hommes???Mais semble les rendre tous malheureux, voire d??c??d??s.','3,5,6,7','8,10,11,15,23','4,3,13,18,22,17','Les sortil??ges, Les films de genre, Le rouge','Le mani??risme, Le spiritisme, Les trucs en \"-isme\"',NULL,NULL,NULL,'2022-01-01 00:00:00','2022-07-27 15:48:17',0),
(2,'The love witch1','Film am??ricain','Film en VOST','120','Ma sorci??re mal aim??e','Elaine, une jeune et belle sorci??re, est d??termin??e ?? trouver l???homme de sa vie. Disposant pour ce faire d\'un physique des plus avantageux, comme de potions et autres formules magiques, elle attire de nombreux hommes???Mais semble les rendre tous malheureux, voire d??c??d??s.','3,5,6,7','8,10,11,15,23','4,3,13,18,22,17','Les sortil??ges, Les films de genre, Le rouge','Le mani??risme, Le spiritisme, Les trucs en \"-isme\"',NULL,NULL,NULL,'2022-01-01 00:00:00','2022-07-27 15:48:17',NULL),
(3,'The love witch3','Film am??ricain','Film en VOST','120','Ma sorci??re mal aim??e','Elaine, une jeune et belle sorci??re, est d??termin??e ?? trouver l???homme de sa vie. Disposant pour ce faire d\'un physique des plus avantageux, comme de potions et autres formules magiques, elle attire de nombreux hommes???Mais semble les rendre tous malheureux, voire d??c??d??s.','3,5,6,7','8,10,11,15,23','4,3,13,18,22,17','Les sortil??ges, Les films de genre, Le rouge','Le mani??risme, Le spiritisme, Les trucs en \"-isme\"',NULL,NULL,NULL,'2022-01-01 00:00:00','2022-07-27 15:48:17',NULL),
(4,'The love witch4','Film am??ricain','Film en VOST','120','Ma sorci??re mal aim??e','Elaine, une jeune et belle sorci??re, est d??termin??e ?? trouver l???homme de sa vie. Disposant pour ce faire d\'un physique des plus avantageux, comme de potions et autres formules magiques, elle attire de nombreux hommes???Mais semble les rendre tous malheureux, voire d??c??d??s.','3,5,6,7','8,10,11,15,23','4,3,13,18,22,17','Les sortil??ges, Les films de genre, Le rouge','Le mani??risme, Le spiritisme, Les trucs en \"-isme\"',NULL,NULL,NULL,'2022-01-01 00:00:00','2022-07-27 15:48:17',NULL),
(5,'The love witch5','Film am??ricain','Film en VOST','120','Ma sorci??re mal aim??e','Elaine, une jeune et belle sorci??re, est d??termin??e ?? trouver l???homme de sa vie. Disposant pour ce faire d\'un physique des plus avantageux, comme de potions et autres formules magiques, elle attire de nombreux hommes???Mais semble les rendre tous malheureux, voire d??c??d??s.','3,5,6,7','8,10,11,15,23','4,3,13,18,22,17','Les sortil??ges, Les films de genre, Le rouge','Le mani??risme, Le spiritisme, Les trucs en \"-isme\"',NULL,NULL,NULL,'2022-01-01 00:00:00','2022-07-27 15:48:17',1);

/*Table structure for table `gp_countries` */

DROP TABLE IF EXISTS `gp_countries`;

CREATE TABLE `gp_countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `gp_countries` */

insert  into `gp_countries`(`id`,`country_flag`,`country_name`,`created_at`,`updated_at`) values 
(1,'media/parameters/country/flags/af.svg','Afghanistan','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(2,'media/parameters/country/flags/za.svg','Afrique du Sud','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(3,'media/parameters/country/flags/al.svg','Albanie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(4,'media/parameters/country/flags/dz.svg','Alg??rie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(5,'media/parameters/country/flags/de.svg','Allemagne','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(6,'media/parameters/country/flags/ad.svg','Andorre','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(7,'media/parameters/country/flags/ao.svg','Angola','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(8,'media/parameters/country/flags/ag.svg','Antigua-et-Barbuda','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(9,'media/parameters/country/flags/sa.svg','Arabie saoudite','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(10,'media/parameters/country/flags/ar.svg','Argentine','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(11,'media/parameters/country/flags/am.svg','Arm??nie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(12,'media/parameters/country/flags/au.svg','Australie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(13,'media/parameters/country/flags/at.svg','Autriche','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(14,'media/parameters/country/flags/az.svg','Azerba??djan','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(15,'media/parameters/country/flags/bs.svg','Bahamas','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(16,'media/parameters/country/flags/bh.svg','Bahre??n','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(17,'media/parameters/country/flags/bd.svg','Bangladesh','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(18,'media/parameters/country/flags/bb.svg','Barbade','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(19,'media/parameters/country/flags/be.svg','Belgique','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(20,'media/parameters/country/flags/bz.svg','B??lize','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(21,'media/parameters/country/flags/bj.svg','B??nin','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(22,'media/parameters/country/flags/bt.svg','Bhoutan','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(23,'media/parameters/country/flags/by.svg','Bi??lorussie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(24,'media/parameters/country/flags/bo.svg','Bolivie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(25,'media/parameters/country/flags/ba.svg','Bosnie-Herz??govine','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(26,'media/parameters/country/flags/bw.svg','Botswana','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(27,'media/parameters/country/flags/br.svg','Br??sil','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(28,'media/parameters/country/flags/bn.svg','Brun??i Darussalam','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(29,'media/parameters/country/flags/bg.svg','Bulgarie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(30,'media/parameters/country/flags/bf.svg','Burkina Faso','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(31,'media/parameters/country/flags/bi.svg','Burundi','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(32,'media/parameters/country/flags/kh.svg','Cambodge','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(33,'media/parameters/country/flags/cm.svg','Cameroun','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(34,'media/parameters/country/flags/ca.svg','Canada','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(35,'media/parameters/country/flags/cv.svg','Cap-Vert','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(36,'media/parameters/country/flags/cl.svg','Chili','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(37,'media/parameters/country/flags/cn.svg','Chine','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(38,'media/parameters/country/flags/cy.svg','Chypre','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(39,'media/parameters/country/flags/co.svg','Colombie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(40,'media/parameters/country/flags/km.svg','Comores','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(41,'media/parameters/country/flags/kp.svg','Cor??e du Nord','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(42,'media/parameters/country/flags/kr.svg','Cor??e du Sud','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(43,'media/parameters/country/flags/cr.svg','Costa Rica','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(44,'media/parameters/country/flags/ci.svg','C??te d\'Ivoire','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(45,'media/parameters/country/flags/hr.svg','Croatie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(46,'media/parameters/country/flags/cu.svg','Cuba','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(47,'media/parameters/country/flags/dk.svg','Danemark','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(48,'media/parameters/country/flags/dj.svg','Djibouti','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(49,'media/parameters/country/flags/dm.svg','Dominique','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(50,'media/parameters/country/flags/eg.svg','??gypte','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(51,'media/parameters/country/flags/ae.svg','??mirats arabes unis','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(52,'media/parameters/country/flags/ec.svg','??quateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(53,'media/parameters/country/flags/er.svg','??rythr??e','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(54,'media/parameters/country/flags/es.svg','Espagne','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(55,'media/parameters/country/flags/ee.svg','Estonie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(56,'media/parameters/country/flags/sz.svg','Eswatini','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(57,'media/parameters/country/flags/us.svg','??tats-Unis','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(58,'media/parameters/country/flags/et.svg','??thiopie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(59,'media/parameters/country/flags/fj.svg','Fidji','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(60,'media/parameters/country/flags/fi.svg','Finlande','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(61,'media/parameters/country/flags/fr.svg','France','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(62,'media/parameters/country/flags/ga.svg','Gabon','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(63,'media/parameters/country/flags/gm.svg','Gambie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(64,'media/parameters/country/flags/ge.svg','G??orgie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(65,'media/parameters/country/flags/gh.svg','Ghana','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(66,'media/parameters/country/flags/gr.svg','Gr??ce','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(67,'media/parameters/country/flags/gd.svg','Grenade','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(68,'media/parameters/country/flags/gt.svg','Guatemala','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(69,'media/parameters/country/flags/gn.svg','Guin??e','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(70,'media/parameters/country/flags/gq.svg','Guin??e ??quatoriale','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(71,'media/parameters/country/flags/gw.svg','Guin??e-Bissau','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(72,'media/parameters/country/flags/gy.svg','Guyana','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(73,'media/parameters/country/flags/ht.svg','Ha??ti','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(74,'media/parameters/country/flags/hn.svg','Honduras','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(75,'media/parameters/country/flags/hu.svg','Hongrie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(76,'media/parameters/country/flags/ck.svg','??les Cook','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(77,'media/parameters/country/flags/mh.svg','??les Marshall','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(78,'media/parameters/country/flags/sb.svg','??les Salomon','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(79,'media/parameters/country/flags/in.svg','Inde','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(80,'media/parameters/country/flags/id.svg','Indon??sie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(81,'media/parameters/country/flags/iq.svg','Irak','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(82,'media/parameters/country/flags/ir.svg','Iran','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(83,'media/parameters/country/flags/ie.svg','Irlande','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(84,'media/parameters/country/flags/is.svg','Islande','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(85,'media/parameters/country/flags/il.svg','Isra??l','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(86,'media/parameters/country/flags/it.svg','Italie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(87,'media/parameters/country/flags/jm.svg','Jama??que','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(88,'media/parameters/country/flags/jp.svg','Japon','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(89,'media/parameters/country/flags/jo.svg','Jordanie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(90,'media/parameters/country/flags/kz.svg','Kazakhstan','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(91,'media/parameters/country/flags/ke.svg','Kenya','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(92,'media/parameters/country/flags/kg.svg','Kirghizistan','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(93,'media/parameters/country/flags/ki.svg','Kiribati','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(94,'media/parameters/country/flags/kw.svg','Kowe??t','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(95,'media/parameters/country/flags/la.svg','Laos','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(96,'media/parameters/country/flags/ls.svg','Lesotho','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(97,'media/parameters/country/flags/lv.svg','Lettonie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(98,'media/parameters/country/flags/lb.svg','Liban','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(99,'media/parameters/country/flags/lr.svg','Lib??ria','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(100,'media/parameters/country/flags/ly.svg','Libye','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(101,'media/parameters/country/flags/li.svg','Liechtenstein','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(102,'media/parameters/country/flags/lt.svg','Lituanie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(103,'media/parameters/country/flags/lu.svg','Luxembourg','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(104,'media/parameters/country/flags/mk.svg','Mac??doine du Nord','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(105,'media/parameters/country/flags/mg.svg','Madagascar','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(106,'media/parameters/country/flags/my.svg','Malaisie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(107,'media/parameters/country/flags/mw.svg','Malawi','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(108,'media/parameters/country/flags/mv.svg','Maldives','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(109,'media/parameters/country/flags/ml.svg','Mali','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(110,'media/parameters/country/flags/mt.svg','Malte','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(111,'media/parameters/country/flags/ma.svg','Maroc','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(112,'media/parameters/country/flags/mu.svg','Maurice','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(113,'media/parameters/country/flags/mr.svg','Mauritanie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(114,'media/parameters/country/flags/mx.svg','Mexique','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(115,'media/parameters/country/flags/fm.svg','Micron??sie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(116,'media/parameters/country/flags/md.svg','Moldavie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(117,'media/parameters/country/flags/mc.svg','Monaco','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(118,'media/parameters/country/flags/mn.svg','Mongolie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(119,'media/parameters/country/flags/me.svg','Mont??n??gro','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(120,'media/parameters/country/flags/mz.svg','Mozambique','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(121,'media/parameters/country/flags/mm.svg','Myanmar (Birmanie)','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(122,'media/parameters/country/flags/na.svg','Namibie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(123,'media/parameters/country/flags/nr.svg','Nauru','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(124,'media/parameters/country/flags/np.svg','N??pal','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(125,'media/parameters/country/flags/ni.svg','Nicaragua','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(126,'media/parameters/country/flags/ne.svg','Niger','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(127,'media/parameters/country/flags/ng.svg','Nigeria','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(128,'media/parameters/country/flags/nu.svg','Niu??','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(129,'media/parameters/country/flags/no.svg','Norv??ge','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(130,'media/parameters/country/flags/nz.svg','Nouvelle-Z??lande','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(131,'media/parameters/country/flags/om.svg','Oman','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(132,'media/parameters/country/flags/ug.svg','Ouganda','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(133,'media/parameters/country/flags/uz.svg','Ouzb??kistan','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(134,'media/parameters/country/flags/pk.svg','Pakistan','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(135,'media/parameters/country/flags/pw.svg','Palaos','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(136,'media/parameters/country/flags/ps.svg','Palestine','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(137,'media/parameters/country/flags/pa.svg','Panama','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(138,'media/parameters/country/flags/pg.svg','Papouasie-Nouvelle-Guin??e','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(139,'media/parameters/country/flags/py.svg','Paraguay','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(140,'media/parameters/country/flags/nl.svg','Pays-Bas','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(141,'media/parameters/country/flags/pe.svg','P??rou','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(142,'media/parameters/country/flags/ph.svg','Philippines','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(143,'media/parameters/country/flags/pl.svg','Pologne','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(144,'media/parameters/country/flags/pt.svg','Portugal','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(145,'media/parameters/country/flags/qa.svg','Qatar','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(146,'media/parameters/country/flags/cf.svg','R??publique centrafricaine','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(147,'media/parameters/country/flags/cd.svg','R??publique d??mocratique du Congo','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(148,'media/parameters/country/flags/do.svg','R??publique dominicaine','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(149,'media/parameters/country/flags/cg.svg','R??publique du Congo','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(150,'media/parameters/country/flags/ro.svg','Roumanie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(151,'media/parameters/country/flags/gb.svg','Royaume-Uni','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(152,'media/parameters/country/flags/ru.svg','Russie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(153,'media/parameters/country/flags/rw.svg','Rwanda','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(154,'media/parameters/country/flags/kn.svg','Saint-Christophe-et-Ni??v??s','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(155,'media/parameters/country/flags/sm.svg','Saint-Marin','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(156,'media/parameters/country/flags/vc.svg','Saint-Vincent-et-les-Grenadines','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(157,'media/parameters/country/flags/lc.svg','Sainte-Lucie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(158,'media/parameters/country/flags/sv.svg','Salvador','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(159,'media/parameters/country/flags/ws.svg','Samoa','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(160,'media/parameters/country/flags/st.svg','Sao Tom??-et-Principe','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(161,'media/parameters/country/flags/sn.svg','S??n??gal','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(162,'media/parameters/country/flags/rs.svg','Serbie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(163,'media/parameters/country/flags/sc.svg','Seychelles','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(164,'media/parameters/country/flags/sl.svg','Sierra Leone','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(165,'media/parameters/country/flags/sg.svg','Singapour','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(166,'media/parameters/country/flags/sk.svg','Slovaquie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(167,'media/parameters/country/flags/si.svg','Slov??nie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(168,'media/parameters/country/flags/so.svg','Somalie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(169,'media/parameters/country/flags/sd.svg','Soudan','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(170,'media/parameters/country/flags/ss.svg','Soudan du Sud','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(171,'media/parameters/country/flags/lk.svg','Sri Lanka','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(172,'media/parameters/country/flags/se.svg','Su??de','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(173,'media/parameters/country/flags/ch.svg','Suisse','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(174,'media/parameters/country/flags/sr.svg','Suriname','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(175,'media/parameters/country/flags/sy.svg','Syrie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(176,'media/parameters/country/flags/tj.svg','Tadjikistan','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(177,'media/parameters/country/flags/tz.svg','Tanzanie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(178,'media/parameters/country/flags/td.svg','Tchad','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(179,'media/parameters/country/flags/cz.svg','Tch??quie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(180,'media/parameters/country/flags/th.svg','Tha??lande','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(181,'media/parameters/country/flags/tl.svg','Timor oriental','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(182,'media/parameters/country/flags/tg.svg','Togo','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(183,'media/parameters/country/flags/to.svg','Tonga','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(184,'media/parameters/country/flags/tt.svg','Trinit??-et-Tobago','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(185,'media/parameters/country/flags/tn.svg','Tunisie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(186,'media/parameters/country/flags/tm.svg','Turkm??nistan','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(187,'media/parameters/country/flags/tr.svg','Turquie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(188,'media/parameters/country/flags/tv.svg','Tuvalu','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(189,'media/parameters/country/flags/ua.svg','Ukraine','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(190,'media/parameters/country/flags/uy.svg','Uruguay','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(191,'media/parameters/country/flags/vu.svg','Vanuatu','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(192,'media/parameters/country/flags/va.svg','Vatican','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(193,'media/parameters/country/flags/ve.svg','Venezuela','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(194,'media/parameters/country/flags/vn.svg','Vi??t Nam','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(195,'media/parameters/country/flags/ye.svg','Y??men','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(196,'media/parameters/country/flags/zm.svg','Zambie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(197,'media/parameters/country/flags/zw.svg','Zimbabwe','2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2018_01_01_000000_create_action_events_table',1),
(4,'2019_05_10_000000_add_fields_to_action_events_table',1),
(5,'2019_08_19_000000_create_failed_jobs_table',1),
(6,'2019_12_14_000001_create_personal_access_tokens_table',1),
(7,'2022_01_01_000000_create_feedback',1),
(8,'2022_01_01_000000_create_films',1),
(9,'2022_01_01_000000_create_film_cast_members',1),
(10,'2022_01_01_000000_create_film_crew_members',1),
(11,'2022_01_01_000000_create_film_critics',1),
(12,'2022_01_01_000000_create_film_rating_systems',1),
(13,'2022_01_01_000000_create_gp_countries',1),
(14,'2022_01_01_000000_create_mp_artwork_categories',1),
(15,'2022_01_01_000000_create_mp_artwork_critics',1),
(16,'2022_01_01_000000_create_mp_artwork_genres',1),
(17,'2022_01_01_000000_create_mp_artwork_tags',1),
(18,'2022_01_01_000000_create_mp_artwork_warnings',1),
(19,'2022_01_01_000000_create_plans',1),
(20,'2022_01_01_000000_create_series',1),
(21,'2022_01_01_000000_create_serie_cast_members',1),
(22,'2022_01_01_000000_create_serie_crew_members',1),
(23,'2022_01_01_000000_create_serie_critics',1),
(24,'2022_01_01_000000_create_serie_episodes',1),
(25,'2022_01_01_000000_create_serie_rating_systems',1),
(26,'2022_01_01_000000_create_subscriptions',1);

/*Table structure for table `mp_artwork_categories` */

DROP TABLE IF EXISTS `mp_artwork_categories`;

CREATE TABLE `mp_artwork_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `mp_artwork_categories` */

insert  into `mp_artwork_categories`(`id`,`category`,`created_at`,`updated_at`) values 
(1,'Compl??tement ?? l\'Est','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(2,'Documenteurs','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(3,'Entre fesses','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(4,'Entre potes','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(5,'FEFFS','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(6,'Le doigt dans le culte','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(7,'Palm??s (ou presque)','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(8,'Raison et sentiments','2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `mp_artwork_critics` */

DROP TABLE IF EXISTS `mp_artwork_critics`;

CREATE TABLE `mp_artwork_critics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `artwork_critic_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `artwork_critic_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `artwork_critic_logotype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `mp_artwork_critics` */

insert  into `mp_artwork_critics`(`id`,`artwork_critic_name`,`artwork_critic_website`,`artwork_critic_logotype`,`created_at`,`updated_at`) values 
(1,'SensCritique','https://www.senscritique.com/','media/parameters/artwork/critic/logotypes/senscritique.png','2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `mp_artwork_genres` */

DROP TABLE IF EXISTS `mp_artwork_genres`;

CREATE TABLE `mp_artwork_genres` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `mp_artwork_genres` */

insert  into `mp_artwork_genres`(`id`,`genre`,`created_at`,`updated_at`) values 
(1,'Action','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(2,'Animation','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(3,'Anime','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(4,'Art','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(5,'Aventure','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(6,'Biographie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(7,'Comedie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(8,'Crime','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(9,'Documentaire','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(10,'Drame','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(11,'??rotique','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(12,'Fantastique','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(13,'Guerre','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(14,'Historique','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(15,'Horreur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(16,'Musical','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(17,'Nature','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(18,'P??plum','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(19,'Pornographique','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(20,'Romance','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(21,'Science-fiction','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(22,'Sport','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(23,'Thriller','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(24,'Western','2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `mp_artwork_tags` */

DROP TABLE IF EXISTS `mp_artwork_tags`;

CREATE TABLE `mp_artwork_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `mp_artwork_tags` */

insert  into `mp_artwork_tags`(`id`,`tag`,`created_at`,`updated_at`) values 
(1,'#au-del?? du r??el','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(2,'#bourpifs','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(3,'#??a fait peur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(4,'#??a fait r??fl??chir','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(5,'#??a va saigner','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(6,'#cartooneries','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(7,'#crise d\'ados','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(8,'#docs en stock','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(9,'#dramakif','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(10,'#feelgood','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(11,'#french connection','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(12,'#gangstermania','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(13,'#halloween','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(14,'#heartbeat','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(15,'#intellokif','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(16,'#keufs&cie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(17,'#kiss&cry','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(18,'#kiss&love','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(19,'#monstres&cie','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(20,'#nanarschisme','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(21,'#no brain no pain','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(22,'#petit cochon','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(23,'#punks not dead','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(24,'#welcome','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(25,'#zik en fond','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(26,'#zombies nation','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(27,'#zygomatik','2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `mp_artwork_warnings` */

DROP TABLE IF EXISTS `mp_artwork_warnings`;

CREATE TABLE `mp_artwork_warnings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `artwork_warning_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `artwork_warning_logotype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `mp_artwork_warnings` */

insert  into `mp_artwork_warnings`(`id`,`artwork_warning_type`,`artwork_warning_logotype`,`created_at`,`updated_at`) values 
(1,'Drogue','media/parameters/artwork/warning/logotypes/drug.png','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(2,'Sexe','media/parameters/artwork/warning/logotypes/sex.png','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(3,'Violence','media/parameters/artwork/warning/logotypes/violence.png','2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

insert  into `password_resets`(`email`,`token`,`created_at`) values 
('wholespace.214@gmail.com','$2y$10$ZGgflyyVmvL.zzZctktB9uWcIMBJnWjpDIEkTVo2kNB6W3vbicpjG','2022-07-29 01:53:34');

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `plans` */

DROP TABLE IF EXISTS `plans`;

CREATE TABLE `plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `plan_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_free_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_payment_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_payment_recurring` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `plans` */

insert  into `plans`(`id`,`plan_type`,`plan_amount`,`plan_free_period`,`plan_payment_period`,`plan_payment_recurring`,`plan_status`,`created_at`,`updated_at`) values 
(1,'Abonnement mensuel de 30 jours','6','0','30','Actif','Actif','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(2,'Abonnement annuel de 365 jours','60','0','365','Actif','Actif','2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `serie_cast_members` */

DROP TABLE IF EXISTS `serie_cast_members`;

CREATE TABLE `serie_cast_members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `serie_id` int(11) DEFAULT NULL,
  `serie_cast_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_cast_character` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `serie_cast_members` */

insert  into `serie_cast_members`(`id`,`serie_id`,`serie_cast_name`,`serie_cast_character`,`created_at`,`updated_at`) values 
(1,1,'Peter Dinklage','Tyrion Lannister','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(2,1,'Emilia Clarke','Daenerys Targaryen','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(3,1,'Kit Harington','Jon Snow','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(4,1,'Lena Headey','Cersei Lannister','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(5,1,'Maisie Williams','Arya Stark','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(6,1,'Sophie Turner','Sansa Stark','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(7,1,'Nikolaj Coster-Waldau','Jaime Lannister','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(8,1,'Iain Glen','Jorah Mormont','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(9,1,'John Bradley','Samwell Tarly','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(10,1,'Alfie Allen','Theon Greyjoy','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(11,1,'Conleth Hill','Lord Varys','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(12,1,'Gwendoline Christie','Brienne of Tarth','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(13,1,'Liam Cunningham','Davos Seaworth','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(14,1,'Aidan Gillen','Petyr \'Littlefinger\' Baelish','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(15,1,'Isaac Hempstead Wright','Bran Stark','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(16,1,'Nathalie Emmanuel','Missandei','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(17,1,'Rory McCann','Sandor \'The Hound\' Clegane','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(18,1,'Jerome Flynn','Bronn','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(19,1,'Daniel Portman','Podrick Payne','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(20,1,'Ben Crompton','Eddison Tollett','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(21,1,'Jacob Anderson','Grey Worm','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(22,1,'Kristofer Hivju','Tormund Giantsbane','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(23,1,'Julian Glover','Grand Maester Pycelle','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(24,1,'Carice van Houten','Melisandre','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(25,1,'Charles Dance','Tywin Lannister','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(26,1,'Hannah Murray','Gilly','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(27,1,'Jack Gleeson','Joffrey Baratheon','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(28,1,'Natalie Dormer','Margaery Tyrell','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(29,1,'Ian McElhinney','Barristan Selmy','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(30,1,'Michelle Fairley','Catelyn Stark','2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `serie_crew_members` */

DROP TABLE IF EXISTS `serie_crew_members`;

CREATE TABLE `serie_crew_members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `serie_id` int(11) DEFAULT NULL,
  `serie_crew_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_crew_occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `serie_crew_members` */

insert  into `serie_crew_members`(`id`,`serie_id`,`serie_crew_name`,`serie_crew_occupation`,`created_at`,`updated_at`) values 
(1,1,'David Nutter','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(2,1,'Alan Taylor','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(3,1,'Alex Graves','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(4,1,'Miguel Sapochnik','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(5,1,'Mark Mylod','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(6,1,'Jeremy Podeswa','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(7,1,'Daniel Minahan','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(8,1,'Alik Sakharov','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(9,1,'Michelle MacLaren','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(10,1,'Brian Kirk','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(11,1,'David Benioff','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(12,1,'D.B. Weiss','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(13,1,'Timothy Van Patten','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(14,1,'Neil Marshall','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(15,1,'David Petrarca','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(16,1,'Michael Slovis','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(17,1,'Jack Bender','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(18,1,'Daniel Sackheim','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(19,1,'Matt Shakman','R??alisateur','2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `serie_critics` */

DROP TABLE IF EXISTS `serie_critics`;

CREATE TABLE `serie_critics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `serie_id` int(11) DEFAULT NULL,
  `serie_critic_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_critic_name_id` int(11) DEFAULT NULL,
  `serie_criticism` text COLLATE utf8mb4_unicode_ci,
  `serie_complete_criticism` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `serie_critics` */

insert  into `serie_critics`(`id`,`serie_id`,`serie_critic_title`,`serie_critic_name_id`,`serie_criticism`,`serie_complete_criticism`,`serie_description`,`created_at`,`updated_at`) values 
(1,1,'Ce qu\'on en pense sur',1,'Superbe retranscription visuelle de l\'univers de G.R.R. Martin, malgr?? un budget parfois limite (On parle quand m??me de 6 millions de dollars par ??pisode), la s??rie Game of Thrones gagne par rapport au livres en clart?? dans l\'intrigue ce qu\'elle perd n??cessairement en d??tail du fait du format t??l??visuel.','Lire la critique compl??te de Hyp??rion sur SensCritique','Voir la fiche du film sur SensCritique','2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `serie_episodes` */

DROP TABLE IF EXISTS `serie_episodes`;

CREATE TABLE `serie_episodes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `serie_id` int(11) DEFAULT NULL,
  `serie_season_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_episode_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_episode_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_episode_synopsis` text COLLATE utf8mb4_unicode_ci,
  `serie_episode_running_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_episode_cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_episode_trailer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_episode_master_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `serie_episodes` */

insert  into `serie_episodes`(`id`,`serie_id`,`serie_season_number`,`serie_episode_number`,`serie_episode_title`,`serie_episode_synopsis`,`serie_episode_running_time`,`serie_episode_cover`,`serie_episode_trailer`,`serie_episode_master_file`,`created_at`,`updated_at`) values 
(1,1,'Saison 1','??pisode 1','L\'hiver vient','Sur le continent de Westeros, un jeune patrouilleur de la Garde de Nuit, charg??e de veiller sur le Mur, est condamn?? ?? mort pour d??sertion par Eddard Stark, seigneur de Winterfell et Gardien du Nord. Mais de sombres nouvelles arrivent de Port-R??al, la capitale des Sept Couronnes : Jon Arryn, ami intime d\'Eddard et Main du roi Robert Baratheon, vient de mourir. Le roi Robert et sa cour entreprennent alors un voyage vers Winterfell, pour gratifier son ami Eddard de la charge de Main du roi. Pendant ce temps, les descendants des rois Targaryen en exil, renvers??s par Robert, fomentent leur retour en Westeros par un jeu d\'alliance avec les Dothrakis, une tribu de guerriers nomades. Alors qu\'?? Winterfell les festivit??s vont bon train durant le s??jour du roi, Brandon, l\'un des fils d\'Eddard Stark, fait une d??couverte qui lui attire les foudres de la famille royale???','62',NULL,NULL,NULL,'2022-01-01 00:00:00','2022-01-01 00:00:00'),
(2,1,'Saison 1','??pisode 2','La Route royale','Daenerys Targaryen, fra??chement mari??e au Khal Drogo, entreprend avec les Dothrakis et son fr??re le long voyage vers Vaes Dothrak. ?? Winterfell, alors que Bran est toujours dans le coma suite ?? sa chute, Ned pr??pare son d??part pour Port-R??al. Catelyn, d??vast??e par l\'??tat de Bran, ne prend pas part aux adieux ?? sa famille : Arya et Sansa accompagnent leur p??re, Jon part vers le nord, sur le Mur, accompagn?? de son oncle Benjen et de Tyrion Lannister. Seuls restent ?? Winterfell Robb, Rickon et Bran. Lorsqu\'un assassin tente de s\'en prendre ?? Bran, toujours dans le coma, Catelyn d??cide de mener l\'enqu??te et de partir ?? Port-R??al pr??venir son mari des dangers qui le guettent. Sur la longue route qui s??pare Winterfell de la capitale des sept couronnes, les deux filles Stark et leurs loups vont se retrouver m??l??es ?? un incident aux cons??quences inattendues.','55',NULL,NULL,NULL,'2022-01-01 00:00:00','2022-01-01 00:00:00'),
(3,1,'Saison 1','??pisode 3','Lord Snow','?? peine arriv?? ?? Port-R??al, Eddard Stark est convoqu?? ?? une session du Conseil Restreint et d??couvre alors que le Royaume est fortement endett?? et doit beaucoup d\'argent aux Lannister. ?? Winterfell, Bran, conscient depuis peu, essaie d\'accepter son amn??sie et son handicap ; pendant que sur le Mur, Jon Snow fait face ?? sa difficile condition de b??tard parmi ses futurs fr??res de la Garde de Nuit. Sur le continent est, chevauchant la longue route qui les emm??ne elle et son Khal vers Vaes Dothrak, Daenerys Targaryen commence ?? assumer son r??le de Khaleesi.','57',NULL,NULL,NULL,'2022-01-01 00:00:00','2022-01-01 00:00:00'),
(4,1,'Saison 1','??pisode 4','Infirmes, B??tards et Choses bris??es','?? Port-R??al, Eddard Stark commence son enqu??te pour savoir qui est impliqu?? dans la mort subite de son pr??d??cesseur. Un tournoi est organis?? en l\'honneur de la nouvelle Main du Roi. Au Nord, Jon Snow se prend de sympathie pour Samwell Tarly, une nouvelle recrue de la Garde de Nuit. De son c??t??, Tyrion Lannister, ayant quitt?? le Mur, se retrouve au mauvais endroit, au mauvais moment. Sur l\'autre continent, Viserys Targaryen est de plus en plus frustr?????','55',NULL,NULL,NULL,'2022-01-01 00:00:00','2022-01-01 00:00:00'),
(5,1,'Saison 1','??pisode 5','Le Loup et le Lion','?? Port-R??al, les affaires politiques reprennent de plus belle. Quand le roi apprend que les Targaryen se sont alli??s au peuple Dothraki, son sang ne fait qu\'un tour. En r??action, il ordonne un assassinat, contre l\'avis d\'Eddard. De son c??t??, ayant captur?? Tyrion Lannister, Catelyn Stark l\'emm??ne chez sa s??ur. Arya Stark, quant ?? elle, surprend une conversation qui menace la vie de son p??re???','54',NULL,NULL,NULL,'2022-01-01 00:00:00','2022-01-01 00:00:00'),
(6,1,'Saison 1','??pisode 6','Une couronne d???or','Apr??s avoir rendu public son profond d??saccord avec le roi Robert Baratheon au sujet de l\'organisation de l\'assassinat de Daenerys Targaryen, Eddard Stark est attaqu?? par Jaime Lannister. L\'atmosph??re ?? Port-R??al est plus que tendue et Eddard doit maintenant g??rer de nouveaux probl??mes. De son c??t??, ?? Eyrie, Tyrion Lannister est jug?? pour un crime qu\'il est cens?? avoir commis ?? Winterfell. Enfin, ?? Vaes Dothrak, Viserys Targaryen entrevoit le fruit de ses efforts et sa r??compense pour avoir donn?? la main de sa soeur ?? Khal Drogo???','53',NULL,NULL,NULL,'2022-01-01 00:00:00','2022-01-01 00:00:00'),
(7,1,'Saison 1','??pisode 7','Vaincre ou mourir','Eddard d??cide qu\'il est temps d\'annoncer l\'identit?? du v??ritable p??re du prince Joffrey. Mourant, le souverain exige que Ned assure la r??gence en attendant la majorit?? de Joffrey. De son c??t??, Cersei l??ve une arm??e pour reconqu??rir le rang auquel son fils peut pr??tendre???','58',NULL,NULL,NULL,'2022-01-01 00:00:00','2022-01-01 00:00:00'),
(8,1,'Saison 1','??pisode 8','Frapper d\'estoc','Alors que Lord Eddard Stark vient d\'??tre envoy?? aux cachots, Cersei Lannister ordonne l\'assassinat de l\'ensemble du clan Stark. Pr??venu de l\'arrestation de son p??re, Robb Stark met en branle les arm??es du nord et d??cide de marcher sur Port-R??al, laissant la garde de Winterfell ?? son fr??re Bran. Tyrion Lannister rejoint les arm??es de Lord Tywin, aid?? de Bronn et des membres des Clans de la Lune rencontr??s lors de sa fuite des Eyri??.','58',NULL,NULL,NULL,'2022-01-01 00:00:00','2022-01-01 00:00:00'),
(9,1,'Saison 1','??pisode 9','Baelor','Robb Stark poursuit son avanc??e vers Port-R??al et d??cide de cr??er une diversion avec un plan pour le moins surprenant. De l\'autre c??t?? du D??troit, la blessure de Khal Drogo s\'infecte et le pire est ?? craindre. Seule la magie semble encore capable de le sauver. ?? Port-R??al, lord Eddard Stark accepte de confesser ses fautes sur la place publique afin de sauver sa famille.','56',NULL,NULL,NULL,'2022-01-01 00:00:00','2022-01-01 00:00:00'),
(10,1,'Saison 1','??pisode 10','De feu et de sang','La terrible nouvelle se propage ?? travers les Sept Royaumes. Catelyn interroge Jaime Lannister ?? propos de la chute de son fils Bran alors que les seigneurs du Nord choisissent Robb comme nouveau roi et Jon Snow, dans la garnison de la Garde de Nuit, veut le rejoindre. Sur l\'autre continent, Daenerys doit faire face ?? un nouveau drame???','53',NULL,NULL,NULL,'2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `serie_rating_systems` */

DROP TABLE IF EXISTS `serie_rating_systems`;

CREATE TABLE `serie_rating_systems` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `serie_id` int(11) DEFAULT NULL,
  `certification_country_id` int(11) DEFAULT NULL,
  `certification_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certification_letter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `serie_rating_systems` */

/*Table structure for table `series` */

DROP TABLE IF EXISTS `series`;

CREATE TABLE `series` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `serie_original_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_country_of_origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_tagline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_synopsis` text COLLATE utf8mb4_unicode_ci,
  `serie_category` text COLLATE utf8mb4_unicode_ci,
  `serie_genre` text COLLATE utf8mb4_unicode_ci,
  `serie_tag` text COLLATE utf8mb4_unicode_ci,
  `serie_pros` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_cons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie_trailer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `series` */

insert  into `series`(`id`,`serie_original_title`,`serie_country_of_origin`,`serie_version`,`serie_tagline`,`serie_synopsis`,`serie_category`,`serie_genre`,`serie_tag`,`serie_pros`,`serie_cons`,`serie_cover`,`serie_trailer`,`created_at`,`updated_at`) values 
(1,'Game of Thrones','S??rie am??ricaine','S??rie en VOST','L\'hiver arrive.','Il y a tr??s longtemps, ?? une ??poque oubli??e, une force a d??truit l\'??quilibre des saisons. Dans un pays o?? l\'??t?? peut durer plusieurs ann??es et l\'hiver toute une vie, des forces sinistres et surnaturelles se pressent aux portes du Royaume des Sept Couronnes. La confr??rie de la Garde de Nuit, prot??geant le Royaume de toute cr??ature pouvant provenir d\'au-del?? du Mur protecteur, n\'a plus les ressources n??cessaires pour assurer la s??curit?? de tous. Apr??s un ??t?? de dix ann??es, un hiver rigoureux s\'abat sur le Royaume avec la promesse d\'un avenir des plus sombres. Pendant ce temps, complots et rivalit??s se jouent sur le continent pour s\'emparer du Tr??ne de fer, le symbole du pouvoir absolu.','4,3,6,7','1,5,12,10','3,4,5,1,22,19,18,17','Aventure, Intrigue, Dragons','Sexe, Violence',NULL,NULL,'2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `subscriptions` */

DROP TABLE IF EXISTS `subscriptions`;

CREATE TABLE `subscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subscription_user_id` int(11) DEFAULT NULL,
  `subscription_plan_id` int(11) DEFAULT NULL,
  `subscription_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_expiration_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `subscriptions` */

insert  into `subscriptions`(`id`,`subscription_user_id`,`subscription_plan_id`,`subscription_date`,`subscription_expiration_date`,`subscription_status`,`created_at`,`updated_at`) values 
(1,1,2,'2022-01-01','2022-12-31','Actif','2022-01-01 00:00:00','2022-01-01 00:00:00');

/*Table structure for table `user_playlists` */

DROP TABLE IF EXISTS `user_playlists`;

CREATE TABLE `user_playlists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `user_playlists` */

insert  into `user_playlists`(`id`,`user_id`,`film_id`) values 
(1,18,1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_subscription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`email`,`email_verified_at`,`password`,`first_name`,`last_name`,`date_of_birth`,`gender`,`avatar`,`country_id`,`address`,`zip_code`,`city`,`newsletter_subscription`,`remember_token`,`created_at`,`updated_at`) values 
(1,'admin','appdevxxx@gmail.com',NULL,'$2y$10$RGgjJU9B4NW8JkdvVgjEGey/mD4PU9TcmY.b6U0ZNiDwzjWnHIdo.','S??bastien','DE SMET','1984-06-09','Homme','media/parameters/user/avatars/admin.jpg',61,'28 avenue Foch','75016','Paris','Oui','vVAzfc8s8Hx82euUSIyMbWT9W6jMVHQcpcTBSj0EI8nqA7AAsWCr9zeC1YZA','2022-01-01 00:00:00','2022-01-01 00:00:00'),
(18,'wholespace','wholespace.214@gmail.com',NULL,'$2y$10$OrYvYitB8iZRro1sjWfyKOEVDjRofTyPtlg4KaGsJ17TZ0KnT1WSC','Whole','Space','09-06-1984','Homme','media/parameters/user/avatars/WholeSpace.jpg',88,'2-6-3 Nakajima','0056','Tokyo','Non',NULL,'2022-07-25 16:58:03','2022-07-29 02:07:21'),
(20,'wholespace','wholespace.2141@gmail.com',NULL,'$2y$10$kTJ/iTsyNNimvWmhorYK1OHuwgu2c0SLQMe5OAbxpMjkSy.ricwH.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-07-29 01:50:11','2022-07-29 01:50:11'),
(21,'sdfsdf','wholespace.21433@gmail.com',NULL,'$2y$10$tGwDd8qoZ3PKlVQuWyKejOBygrl9vvyQtzwSiNKMzUWfVZDFiwkjq',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-07-29 01:51:16','2022-07-29 01:51:16');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
