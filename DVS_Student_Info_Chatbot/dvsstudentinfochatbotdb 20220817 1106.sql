-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema studentinfochatbot
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ studentinfochatbot;
USE studentinfochatbot;

--
-- Table structure for table `studentinfochatbot`.`adminnotice`
--

DROP TABLE IF EXISTS `adminnotice`;
CREATE TABLE `adminnotice` (
  `subject` varchar(50) DEFAULT NULL,
  `matter` text,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `studentinfochatbot`.`adminnotice`
--

/*!40000 ALTER TABLE `adminnotice` DISABLE KEYS */;
INSERT INTO `adminnotice` (`subject`,`matter`,`date`,`id`) VALUES 
 ('about college fest','we are celebrating college fest on saturday','2022-07-17 12:16:17',5),
 ('Sports day','tomorrow there will be sports day come with sports material','2022-07-19 18:03:55',6),
 ('project demo','Tomorrow there will be  project demo for sixth sem','2022-08-10 12:00:50',7);
/*!40000 ALTER TABLE `adminnotice` ENABLE KEYS */;


--
-- Table structure for table `studentinfochatbot`.`classroom`
--

DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `classstatus` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentinfochatbot`.`classroom`
--

/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;


--
-- Table structure for table `studentinfochatbot`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentinfochatbot`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`username`,`password`) VALUES 
 ('admin','password');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `studentinfochatbot`.`posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `message` varchar(100) NOT NULL,
  PRIMARY KEY (`message`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentinfochatbot`.`posts`
--

/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;


--
-- Table structure for table `studentinfochatbot`.`registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `dept` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `studentinfochatbot`.`registration`
--

/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` (`firstname`,`lastname`,`designation`,`phone`,`username`,`password`,`dept`,`status`,`id`) VALUES 
 ('Shivu','kumar','Faculty','9965866858','shivu@gmail.com','shivu123','CSE','Accepted',7);
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;


--
-- Table structure for table `studentinfochatbot`.`reply`
--

DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `question` varchar(50) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentinfochatbot`.`reply`
--

/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;


--
-- Table structure for table `studentinfochatbot`.`staffnotice`
--

DROP TABLE IF EXISTS `staffnotice`;
CREATE TABLE `staffnotice` (
  `subject` varchar(50) DEFAULT NULL,
  `matter` text,
  `dept` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) DEFAULT 'pending',
  UNIQUE KEY `Column 5` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `studentinfochatbot`.`staffnotice`
--

/*!40000 ALTER TABLE `staffnotice` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffnotice` ENABLE KEYS */;


--
-- Table structure for table `studentinfochatbot`.`student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `name` varchar(50) DEFAULT NULL,
  `dept` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentinfochatbot`.`student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`name`,`dept`,`phone`,`username`,`password`,`id`) VALUES 
 ('ravish','ravish123','BCA','9964069857','ravish',4),
 ('\"+s1+\"','\"+s2+\"','\"+s3+\"','\"+s4+\"','\"+s5+\"',5),
 ('ravish','BCA','9964069857','ravish','ravish123',6),
 ('santhosh','BCA','9964069857','santhosh','santhosh123',7);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
