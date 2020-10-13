# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: crud_react_php
# ------------------------------------------------------
# Server version 5.5.27

#
# Table structure for table frameworks
#

CREATE TABLE `frameworks` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `lanzamiento` int(4) DEFAULT NULL,
  `desarrollador` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
INSERT INTO `frameworks` VALUES (1,'Angular',2012,'Google');
INSERT INTO `frameworks` VALUES (2,'ReactJS',2015,'Facebook');
INSERT INTO `frameworks` VALUES (3,'VueJS',2015,'Mark Rufalo');
INSERT INTO `frameworks` VALUES (4,'EmberJS',2009,'Yahuda Kats');
INSERT INTO `frameworks` VALUES (5,'NodeJS',2009,'Ryan Dalh');
INSERT INTO `frameworks` VALUES (6,'Polymer JS',2011,'Paul Doe');
INSERT INTO `frameworks` VALUES (7,'Angular JS',2012,'Google');
INSERT INTO `frameworks` VALUES (8,'Meteor JS',2014,'Mark Lopez');
/*!40000 ALTER TABLE `frameworks` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
