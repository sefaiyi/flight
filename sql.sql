/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `manage` (
  `manage_id` int(11) NOT NULL AUTO_INCREMENT,
  `manage_user` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `manage_pass` varchar(16) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`manage_id`),
  KEY `id` (`manage_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
INSERT INTO `manage` (`manage_id`, `manage_user`, `manage_pass`) VALUES
	(14, 'deneme', '123123'),
	(13, 'deneme', '123123'),
	(12, 'deneme', '123123'),
	(11, 'deneme', '123123'),
	(10, 'deneme', '123123'),
	(15, 'deneme', '123123'),
	(16, 'deneme', '123123'),
	(17, 'deneme', '123123'),
	(18, 'deneme', '123123'),
	(19, 'deneme', '123123'),
	(20, 'deneme', '123123'),
	(21, 'deneme', '123123'),
	(22, 'deneme', '123123'),
	(23, 'deneme', '123123'),
	(24, 'deneme', '123123'),
	(25, 'deneme', '123123'),
	(26, 'deneme', '123123'),
	(27, 'deneme', '123123'),
	(28, 'deneme', '123123'),
	(29, 'deneme', '123123'),
	(30, 'deneme', '123123'),
	(31, 'deneme', '123123'),
	(32, 'deneme', '123123'),
	(33, 'deneme', '123123'),
	(34, 'deneme', '123123'),
	(35, 'deneme', '123123'),
	(36, 'deneme', '123123'),
	(37, 'deneme', '123123'),
	(38, 'deneme', '123123'),
	(39, 'deneme', '123123'),
	(40, 'deneme', '123123'),
	(41, 'deneme', '123123'),
	(42, 'deneme', '123123'),
	(43, 'deneme', '123123'),
	(44, 'deneme', '123123'),
	(45, 'deneme', '123123'),
	(46, 'deneme', '123123'),
	(47, 'deneme', '123123'),
	(48, 'sefa', 'İYİ');
/*!40000 ALTER TABLE `manage` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
