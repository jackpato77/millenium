-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.0.67-community-nt - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2013-02-16 14:55:40
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for dbmillenium
DROP DATABASE IF EXISTS `dbmillenium`;
CREATE DATABASE IF NOT EXISTS `dbmillenium` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbmillenium`;


-- Dumping structure for table dbmillenium.cajas
DROP TABLE IF EXISTS `cajas`;
CREATE TABLE IF NOT EXISTS `cajas` (
  `idcaja` int(11) NOT NULL auto_increment,
  `fecha` datetime default NULL,
  `idcliente` int(11) default NULL,
  `idconcepto` int(11) default NULL,
  `importe` decimal(8,2) default NULL,
  `idtipo` int(11) default NULL,
  `observaciones` varchar(255) default NULL,
  `tipomov` char(1) default NULL,
  PRIMARY KEY  (`idcaja`),
  UNIQUE KEY `fecha_UNIQUE` (`fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table dbmillenium.cajas: ~4 rows (approximately)
/*!40000 ALTER TABLE `cajas` DISABLE KEYS */;
INSERT INTO `cajas` (`idcaja`, `fecha`, `idcliente`, `idconcepto`, `importe`, `idtipo`, `observaciones`, `tipomov`) VALUES
	(1, '2013-02-06 00:00:00', NULL, NULL, 100.00, NULL, NULL, NULL),
	(2, '2013-02-06 20:06:15', NULL, NULL, 50.00, NULL, NULL, NULL),
	(3, '2013-02-07 19:40:34', 2, NULL, 75.00, NULL, NULL, 'D'),
	(4, '2013-02-07 20:16:29', 2, NULL, 75.00, NULL, NULL, 'H');
/*!40000 ALTER TABLE `cajas` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
