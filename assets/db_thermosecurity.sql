-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 19, 2022 at 05:56 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_thermosecurity`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_avail`
--

CREATE TABLE `tbl_avail` (
  `avail_id` tinyint(3) UNSIGNED NOT NULL,
  `avail_platform` varchar(50) NOT NULL,
  `avail_location` varchar(50) NOT NULL,
  `avail_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_avail`
--

INSERT INTO `tbl_avail` (`avail_id`, `avail_platform`, `avail_location`, `avail_desc`) VALUES
(1, 'Wall Unit', 'HouseCom™ ThermoSecurity™ System', 'All HouseCom™ ThermoSecurity™ System\'s communications with the central system are accessible and controlled through the wall unit on the HouseCom™ ThermoSecurity™ System.'),
(2, 'Apple\'s IOS Device', 'The HouseCom™ ThermoSecurity™ System App', 'All HouseCom™ ThermoSecurity™ System\'s communications with the central system are accessible and controlled through The HouseCom™ ThermoSecurity™ System App on Apple\'s IOS System.'),
(3, 'Android Device', 'The HouseCom™ ThermoSecurity™ System App', 'All HouseCom™ ThermoSecurity™ System\'s communications with the central system are accessible and controlled through The HouseCom™ ThermoSecurity™ System App on Android System.'),
(4, 'Parent Website', 'Secured Portal', 'All HouseCom™ ThermoSecurity™ System\'s communications with the central system are accessible and controlled through The Parent Website on Secured Portal.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_components`
--

CREATE TABLE `tbl_components` (
  `components_id` smallint(5) UNSIGNED NOT NULL,
  `components_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_components`
--

INSERT INTO `tbl_components` (`components_id`, `components_name`) VALUES
(1, 'Glass'),
(2, 'Plastic Bezel'),
(3, 'OLG screen'),
(4, 'Metal Bezel'),
(5, 'Plastic Case');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_connections`
--

CREATE TABLE `tbl_connections` (
  `connections_id` tinyint(3) UNSIGNED NOT NULL,
  `connection_type` varchar(50) NOT NULL,
  `connection_version` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_connections`
--

INSERT INTO `tbl_connections` (`connections_id`, `connection_type`, `connection_version`) VALUES
(1, 'Hardwired', 'Hardwired'),
(2, 'Wifi', 'Wireless'),
(3, 'Bluetooth', 'Wireless');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `features_id` smallint(5) UNSIGNED NOT NULL,
  `features_name` varchar(200) NOT NULL,
  `features_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`features_id`, `features_name`, `features_desc`) VALUES
(1, 'Proximity sensor', 'Proximity sensor actives system to on state when the viewer is close'),
(2, 'Facial recognition camera', 'The facial recognition camera allows admin users to manipulate settings '),
(3, 'Built in GUI', 'GUI included the ability to view the current indoor temperature, outdoor temperature, daily forecast, weekly forecast'),
(4, 'Built-in Amazon Alexa Voice Service ', 'Built-in Amazon Alexa Voice Service helps regulates indoor humidity to prevent frost buildup on outside windows'),
(5, 'HouseCom™ ThermoSecurity™ System App', 'Watch or access the home security system on your phone to check in on the house occupancy through the remote, portable\r\ncameras. You may wish to look for independent room temperatures, smoke and carbon monoxide status or just open windows and unlocked doors for your return home.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media`
--

CREATE TABLE `tbl_media` (
  `media_id` smallint(5) UNSIGNED NOT NULL,
  `media_name` varchar(100) NOT NULL,
  `media_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_media`
--

INSERT INTO `tbl_media` (`media_id`, `media_name`, `media_type`) VALUES
(1, 'placeholder', 'image'),
(2, 'placeholder', 'video');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_models`
--

CREATE TABLE `tbl_models` (
  `model_id` smallint(5) UNSIGNED NOT NULL,
  `model_name` varchar(50) NOT NULL,
  `model_type` varchar(50) NOT NULL,
  `model_price` varchar(50) NOT NULL,
  `model_year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_models`
--

INSERT INTO `tbl_models` (`model_id`, `model_name`, `model_type`, `model_price`, `model_year`) VALUES
(1, 'HouseCom™ ThermoSecurity™ System Original', 'Original Version', 'CA$329', '2022'),
(2, 'HouseCom™ ThermoSecurity™ System Black', 'Black Version', 'CA$329', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shops`
--

CREATE TABLE `tbl_shops` (
  `shops_id` smallint(5) UNSIGNED NOT NULL,
  `shops_name` varchar(150) NOT NULL,
  `shops_addy` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_shops`
--

INSERT INTO `tbl_shops` (`shops_id`, `shops_name`, `shops_addy`) VALUES
(1, 'Best Buy', 'U.S., Mexico, and Canada'),
(2, 'Amazon ', 'Global Shipping '),
(3, 'Walmart', 'U.S., Mexico, and Canada');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subs`
--

CREATE TABLE `tbl_subs` (
  `sub_id` tinyint(3) UNSIGNED NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  `sub_desc` text NOT NULL,
  `sub_price` varchar(50) NOT NULL,
  `sub_contract` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subs`
--

INSERT INTO `tbl_subs` (`sub_id`, `sub_name`, `sub_desc`, `sub_price`, `sub_contract`) VALUES
(1, '1 Years Protection', 'Offering coverage for unexpected product issues, including defects, malfunctions, and accidents, for time periods longer than standard manufacturer warranties for 1 year.', 'CAD$100', 1),
(2, '2 Years Protection', 'Offering coverage for unexpected product issues, including defects, malfunctions, and accidents, for time periods longer than standard manufacturer warranties for 2 years.', 'CAD$150', 2),
(3, '3 Years Protection', 'Offering coverage for unexpected product issues, including defects, malfunctions, and accidents, for time periods longer than standard manufacturer warranties for 3 years.', 'CAD$200', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_avail`
--
ALTER TABLE `tbl_avail`
  ADD PRIMARY KEY (`avail_id`);

--
-- Indexes for table `tbl_components`
--
ALTER TABLE `tbl_components`
  ADD PRIMARY KEY (`components_id`);

--
-- Indexes for table `tbl_connections`
--
ALTER TABLE `tbl_connections`
  ADD PRIMARY KEY (`connections_id`);

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`features_id`);

--
-- Indexes for table `tbl_media`
--
ALTER TABLE `tbl_media`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `tbl_models`
--
ALTER TABLE `tbl_models`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `tbl_shops`
--
ALTER TABLE `tbl_shops`
  ADD PRIMARY KEY (`shops_id`);

--
-- Indexes for table `tbl_subs`
--
ALTER TABLE `tbl_subs`
  ADD PRIMARY KEY (`sub_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_avail`
--
ALTER TABLE `tbl_avail`
  MODIFY `avail_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_components`
--
ALTER TABLE `tbl_components`
  MODIFY `components_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_connections`
--
ALTER TABLE `tbl_connections`
  MODIFY `connections_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `features_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_media`
--
ALTER TABLE `tbl_media`
  MODIFY `media_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_shops`
--
ALTER TABLE `tbl_shops`
  MODIFY `shops_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_subs`
--
ALTER TABLE `tbl_subs`
  MODIFY `sub_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
