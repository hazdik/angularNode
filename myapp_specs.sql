-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2019 at 12:46 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `myapp_specs`
--

-- --------------------------------------------------------

--
-- Table structure for table `notification_system`
--

CREATE TABLE IF NOT EXISTS `notification_system` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `related_to` varchar(255) NOT NULL,
  `related_id` int(100) NOT NULL,
  `message` text NOT NULL,
  `notify_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view_status` tinyint(1) NOT NULL DEFAULT '0',
  `extra_1` varchar(255) NOT NULL,
  `extra_2` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `passport_details`
--

CREATE TABLE IF NOT EXISTS `passport_details` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `passport_origin` varchar(255) NOT NULL,
  `passport_accept` tinyint(1) NOT NULL DEFAULT '0',
  `passport_extra` varchar(255) NOT NULL,
  `login` tinyint(1) NOT NULL DEFAULT '0',
  `add_option` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `season_details`
--

CREATE TABLE IF NOT EXISTS `season_details` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `season_id` int(100) NOT NULL,
  `season_year` varchar(255) NOT NULL,
  `season_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plan`
--

CREATE TABLE IF NOT EXISTS `subscription_plan` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `plan_short` varchar(255) NOT NULL,
  `plan_title` varchar(255) NOT NULL,
  `plan_description` text NOT NULL,
  `plan_price` int(10) NOT NULL,
  `plan_offer` int(10) NOT NULL,
  `plan_active` tinyint(1) NOT NULL DEFAULT '0',
  `plan_extra_1` varchar(255) NOT NULL,
  `plan_extra_2` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `third_party_api`
--

CREATE TABLE IF NOT EXISTS `third_party_api` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `access_key` varchar(255) NOT NULL,
  `secret_key` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `village` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pin` int(6) NOT NULL,
  `aadhar` int(12) NOT NULL,
  `aadhar_verify` tinyint(1) NOT NULL DEFAULT '0',
  `pan` varchar(255) NOT NULL,
  `pan_verify` tinyint(1) NOT NULL DEFAULT '0',
  `passport` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_payment`
--

CREATE TABLE IF NOT EXISTS `user_payment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `subscription_id` int(100) NOT NULL,
  `refference_no` varchar(255) NOT NULL,
  `payment_option` varchar(255) NOT NULL,
  `payment_date` date NOT NULL,
  `plan_start_date` date NOT NULL,
  `plan_expire_date` date NOT NULL,
  `mail_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `sms_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `plan_extra` varchar(255) NOT NULL,
  `plan_expire_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `refer_short` varchar(10) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `mail_verify` tinyint(1) NOT NULL DEFAULT '0',
  `mail_verify_link` varchar(1000) NOT NULL,
  `mobile` int(10) NOT NULL,
  `mobile_verify` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `subscription` varchar(10) NOT NULL,
  `subscription_date` date NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
