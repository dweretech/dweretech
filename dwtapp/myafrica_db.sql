-- Database: `myafrica_db`
-- 
 
-- --------------------------------------------------------
 
-- 
-- Table structure for table `products`
-- 
 
CREATE TABLE `products` (
  `id` int(11) NOT NULL auto_increment,
  `pcode` int(11) default NULL,
  `name` varchar(30) default NULL,
  `ptype` varchar(50) default NULL,
  `pcost` int(11) default NULL,
  `pclimate` varchar(50) default NULL,
  `pdetails` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
 
-- 
-- Dumping data for table `products`
-- 
 

-- --------------------------------------------------------
 
-- 
-- Table structure for table `state`
-- 
 
CREATE TABLE `state` (
  `id` int(11) NOT NULL auto_increment,
  `code` int(11) default NULL,
  `name` varchar(30) default NULL,
  `capital` varchar(50) default NULL,
  `url` varchar(50) default NULL,
  `currency` int(11) default NULL,
  `rate` int(11) default NULL,
  `population` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
 
-- 
-- Dumping data for table `state`
-- 
 

-- --------------------------------------------------------
 
-- 
-- Table structure for table `users`
-- 
 
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `email` varchar(50) default NULL,
  `country` varchar(50) default NULL,
  `age` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
 
-- 
-- Dumping data for table `users`
-- 
 

-- --------------------------------------------------------
 
-- 
-- Table structure for table `webuser`
-- 
 
CREATE TABLE `webuser` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `email` varchar(50) default NULL,
  `country` varchar(50) default NULL,
  `age` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1005 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1005 ;
 
-- 
-- Dumping data for table `webuser`
-- 
 
INSERT INTO `webuser` VALUES (1001, 'Kitara Lagony', 'klagony@dwere.net', 'Uganda', 38);
INSERT INTO `webuser` VALUES (1002, 'Monica Lamunu', 'monica@dwere.net', 'Uganda', 34);
INSERT INTO `webuser` VALUES (1003, 'Patrick Okot', 'plagony@dwere.net', 'Kenya', 38);
INSERT INTO `webuser` VALUES (1004, 'Kilama Tom', 'kilama@dwere.net', 'Uganda', 34);
