-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.9-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for mcsk
DROP DATABASE IF EXISTS `mcsk`;
CREATE DATABASE IF NOT EXISTS `mcsk` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mcsk`;


-- Dumping structure for table mcsk.applicants
DROP TABLE IF EXISTS `applicants`;
CREATE TABLE IF NOT EXISTS `applicants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_type` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `bank_id` int(11) NOT NULL DEFAULT '0',
  `stage_name` varchar(250) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `nationality` varchar(250) NOT NULL,
  `country_of_birth` varchar(250) NOT NULL,
  `marital_status` varchar(250) NOT NULL,
  `dob` date NOT NULL,
  `identification` varchar(50) NOT NULL,
  `kin_name` varchar(250) NOT NULL,
  `relationship` varchar(250) NOT NULL,
  `number` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mcsk.applicants: ~0 rows (approximately)
/*!40000 ALTER TABLE `applicants` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicants` ENABLE KEYS */;


-- Dumping structure for table mcsk.attachments
DROP TABLE IF EXISTS `attachments`;
CREATE TABLE IF NOT EXISTS `attachments` (
  `id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `attachment_url` varchar(150) DEFAULT NULL,
  `attachment_name` varchar(150) DEFAULT NULL,
  `attachment_description` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mcsk.attachments: ~0 rows (approximately)
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;


-- Dumping structure for table mcsk.bank
DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(50) NOT NULL,
  `acc_name` varchar(50) NOT NULL,
  `acc_number` varchar(50) NOT NULL,
  `swift_code` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mcsk.bank: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;


-- Dumping structure for table mcsk.contacts
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '0',
  `city` varchar(50) NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL DEFAULT '0',
  `mobile` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mcsk.contacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;


-- Dumping structure for table mcsk.directors
DROP TABLE IF EXISTS `directors`;
CREATE TABLE IF NOT EXISTS `directors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publisher_id` int(11) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `identification` varchar(150) NOT NULL,
  `pin_number` varchar(150) NOT NULL,
  `nationality` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mcsk.directors: ~0 rows (approximately)
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;


-- Dumping structure for table mcsk.member_type
DROP TABLE IF EXISTS `member_type`;
CREATE TABLE IF NOT EXISTS `member_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL DEFAULT '0',
  `description` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mcsk.member_type: ~0 rows (approximately)
/*!40000 ALTER TABLE `member_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_type` ENABLE KEYS */;


-- Dumping structure for table mcsk.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mcsk.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`migration`, `batch`) VALUES
	('2014_10_12_000000_create_users_table', 1),
	('2014_10_12_100000_create_password_resets_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Dumping structure for table mcsk.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mcsk.password_resets: ~1 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('larrykip91@gmail.com', '36f991cf3f6a2ccd60f438cab39638ac28ecedc2b878eb1c9681d585f86d41a4', '2016-06-23 12:41:00');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


-- Dumping structure for table mcsk.publisher
DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(150) NOT NULL DEFAULT '0',
  `b_number` varchar(150) NOT NULL DEFAULT '0',
  `b_country` varchar(150) NOT NULL DEFAULT '0',
  `c_first_name` varchar(150) NOT NULL DEFAULT '0',
  `c_last_name` varchar(150) NOT NULL DEFAULT '0',
  `c_identification` varchar(150) NOT NULL DEFAULT '0',
  `c_copy_id` varchar(150) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `attachment_id` int(11) NOT NULL DEFAULT '0',
  `director_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mcsk.publisher: ~0 rows (approximately)
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;


-- Dumping structure for table mcsk.publisher_attachment
DROP TABLE IF EXISTS `publisher_attachment`;
CREATE TABLE IF NOT EXISTS `publisher_attachment` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `attachment_url` varchar(150) DEFAULT NULL,
  `attachment_name` varchar(150) DEFAULT NULL,
  `attachment_description` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table mcsk.publisher_attachment: ~0 rows (approximately)
/*!40000 ALTER TABLE `publisher_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `publisher_attachment` ENABLE KEYS */;


-- Dumping structure for table mcsk.reasons
DROP TABLE IF EXISTS `reasons`;
CREATE TABLE IF NOT EXISTS `reasons` (
  `id` int(11) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `descriptions` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mcsk.reasons: ~0 rows (approximately)
/*!40000 ALTER TABLE `reasons` DISABLE KEYS */;
/*!40000 ALTER TABLE `reasons` ENABLE KEYS */;


-- Dumping structure for table mcsk.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'assets/avatars/larry.jpg',
  `confirmed` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mcsk.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `first_name`, `last_name`, `mobile`, `email`, `password`, `confirmation_code`, `about`, `avatar`, `confirmed`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Larry', 'Kiprop', '0729629423', 'larrykip91@gmail.com', '$2y$10$cBNeS3ObLrvqgBwCi0csYeeVOq7VTiPtMXm1RWaD2MRqBVoyc5mhC', NULL, 'I am a passionate Software Developer', 'assets/avatars/larry.jpg', 0, 'CUjmsaTPFkVpgICw5Xa1gDgIKmaf2nLqtzExEIYpUOIJe3MHGIA9aB9ruOnG', '2016-06-23 07:59:49', '2016-06-27 10:59:49'),
	(2, 'Larry', 'moses', '0729629423', 'janekizito@gmail.com', '$2y$10$2NS377j8JxR.r6hlI3zaOuz3btiNuQrkPWTpdas3WLus.epJ0fpIW', NULL, NULL, 'assets/avatars/larry.jpg', 0, NULL, '2016-06-24 08:02:44', '2016-06-24 08:02:44'),
	(3, 'Jane', 'Litunda', '0729629423', 'jaynelitunda@gmail.com', '$2y$10$609R5/YrJXgwlORqv3Pg4OqAFFWogzNVNd4tphpCuF/2SldEGLuqu', NULL, NULL, 'assets/avatars/larry.jpg', 0, 'mcZ0RmJsJ4Wi83S0kaRCe3CnWGf6hoHkfUuejZHMdz8FgH9w0BkbPNyPDOdX', '2016-06-27 07:32:37', '2016-06-27 09:22:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
